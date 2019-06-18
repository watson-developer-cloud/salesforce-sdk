public class IBMWatsonICP4DAuthenticator implements IBMWatsonAuthenticator {
  // This is the suffix we'll need to add to the user-supplied URL to retrieve an access token.
  private static final String URL_SUFFIX = '/v1/preauth/validateAuth';
  private static final String DEFAULT_ERROR_MESSAGE = 'Error while retrieving access token from ICP4D token service';

  // Configuration properties for this authenticator.
  private IBMWatsonICP4DConfig config;

  // This field holds an access token and its expiration time.
  private IBMWatsonICP4DToken tokenData;

  public IBMWatsonICP4DAuthenticator(IBMWatsonICP4DConfig config) {
    this.config = config;
  }

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_ICP4D;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    requestBuilder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, 'Bearer ' + getToken());
  }

  /**
   * This function returns an access token. The source of the token is determined by the following logic:
   * 1. If user provides their own managed access token, assume it is valid and send it
   * 2. If this class is managing tokens and does not yet have one, or the token is expired, make a request
   * for one
   * 3. If this class is managing tokens and has a valid token stored, send it
   *
   * @return the valid access token
   */
  public String getToken() {
    String token;

    if (!String.isBlank(config.getUserManagedAccessToken())) {
      // If the user set their own access token, then use it.
      token = config.getUserManagedAccessToken();
    } else {
      // Request a new token if necessary.
      if (this.tokenData == null || !this.tokenData.isTokenValid()) {
        this.tokenData = requestToken();
      }

      // Return the access token from our IBMWatsonICP4DToken object.
      token = this.tokenData.accessToken;
    }

    return token;
  }

  /**
   * Obtains an ICP4D access token for the username/password combination using the configured URL.
   * @return an IBMWatsonICP4DToken instance that contains the access token
   */
  private IBMWatsonICP4DToken requestToken() {
    // Form a GET request to retrieve the access token.
    String requestUrl = config.getUrl() + URL_SUFFIX;
    requestUrl = requestUrl.replace('//', '/');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(requestUrl);
    builder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, buildBasicAuthHeader());

    // Invoke the GET request.
    IBMWatsonICP4DTokenResponse response = invokeRequest(builder.build());

    // Construct a new IBMWatsonICP4DToken object from the response and return it.
    return new IBMWatsonICP4DToken(response);
  }

  private String buildBasicAuthHeader() {
    Blob authBlob = Blob.valueOf(this.config.getUsername() + ':' + this.config.getPassword());
    return 'Basic ' + EncodingUtil.base64Encode(authBlob);
  }

  /**
   * Executes the specified request and returns the response object containing the ICP4D token.
   *
   * @param request the request for obtaining an ICP4D access token
   * @return an IBMWatsonICP4DTokenResponse instance that contains the requested access token and related info
   */
  private IBMWatsonICP4DTokenResponse invokeRequest(IBMWatsonRequest request) {
    IBMWatsonResponse response = IBMWatsonClient.executeRequest(request);

    if (response.isSuccessful() && String.isNotBlank(response.getBody())) {
      Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
      Map<String, Object> safeJsonMap = IBMWatsonJSONUtil.prepareResponse(jsonMap);
      String jsonString = JSON.serialize(safeJsonMap);
      return (IBMWatsonICP4DTokenResponse)JSON.deserialize(jsonString, IBMWatsonICP4DTokenResponse.class);
    } else {
      Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
      String errorMessage = responseMap.get('errorMessage').toString();
      if (errorMessage == null) {
        errorMessage = DEFAULT_ERROR_MESSAGE;
      }
      Integer statusCode = response.getStatusCode();
      throw new IBMWatsonServiceExceptions.ResponseException(statusCode, errorMessage, response);
    }
  }
}
