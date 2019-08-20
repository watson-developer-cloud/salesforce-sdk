/**
 * This class serves as a common base class for IBMWatsonAuthenticator implementations that interact with a Token Server
 * via a REST interface.
 * This base class allows for the configuration of the following properties:
 * username/password - if specified, these values will be used to build a basic auth Authorization header
 * to be sent with requests to the Token Server.
 * headers - a Map of keys/values that will be set as headers on requests sent to the Token Server.
 */
public abstract class IBMWatsonTokenRequestBasedAuthenticator extends IBMWatsonAuthenticatorBase implements IBMWatsonAuthenticator {
  private String username;
  private String password;
  private Map<String, String> headers;

  // The cached value of the Authorization header.
  private String authHeader;

  public void setBasicAuthInfo(String username, String password) {
    this.username = username;
    this.password = password;
    this.authHeader = constructBasicAuthHeader(this.username, this.password);
  }

  /**
   * @return the basic auth username configured for this IBMWatsonAuthenticator
   */
  public String getUsername() {
    return this.username;
  }

  /**
   * @return the basic auth password configured for this IBMWatsonAuthenticator
   */
  public String getPassword() {
    return this.password;
  }

  /**
   * Returns the set of user-supplied headers configured for this IBMWatsonAuthenticator.
   *
   * @return a Map containing the configured headers
   */
  public Map<String, String> getHeaders() {
    return headers;
  }

  /**
   * Sets a Map of key/value pairs which will be sent as HTTP headers in any interactions with the Token Server.
   *
   * @param headers the user-supplied headers to be included in Token Server interactions
   */
  public void setHeaders(Map<String, String> headers) {
    this.headers = headers;
  }

  public abstract String authenticationType();
  public abstract void authenticate(IBMWatsonRequest.Builder requestBuilder);
  public abstract void validate();

  public IBMWatsonTokenServerResponse invokeRequest(IBMWatsonRequest request, Type targetTokenType) {
    IBMWatsonRequest.Builder requestBuilder = request.newBuilder();

    // If present, set the Authorization header to be sent to the token server.
    if (String.isNotBlank(this.authHeader)) {
      requestBuilder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, this.authHeader);
    }

    // Now add any user-supplied headers to the request.
    if (this.headers != null && !this.headers.isEmpty()) {
      for (String headerKey : this.headers.keySet()) {
        requestBuilder.addHeader(headerKey, this.headers.get(headerKey));
      }
    }

    // Send request
    IBMWatsonResponse response = IBMWatsonClient.executeRequest(requestBuilder.build());

    if (response.isSuccessful() && String.isNotBlank(response.getBody())) {
      Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
      Map<String, Object> safeJsonMap = IBMWatsonJSONUtil.prepareResponse(jsonMap);
      String jsonString = JSON.serialize(safeJsonMap);
      return (IBMWatsonTokenServerResponse) JSON.deserialize(jsonString, targetTokenType);
    } else {
      Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
      String errorMessage = responseMap.get('errorMessage').toString();
      if (errorMessage == null) {
        errorMessage = IBMWatsonAuthenticatorBase.ERRORMSG_REQ_FAILED;
      }
      Integer statusCode = response.getStatusCode();
      throw new IBMWatsonServiceExceptions.ResponseException(statusCode, errorMessage, response);
    }
  }
}
