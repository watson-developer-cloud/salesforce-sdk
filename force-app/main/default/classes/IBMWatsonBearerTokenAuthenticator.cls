/**
 * This class provides an IBMWatsonAuthenticator implementation that supports a user-supplied Bearer Token value.
 * The main purpose of this authenticator is to construct the Authorization header with the user-supplied
 * token, then add the header to each outgoing REST API request.
 */
public class IBMWatsonBearerTokenAuthenticator extends IBMWatsonAuthenticatorBase implements IBMWatsonAuthenticator {
  private String bearerToken;

  // The cached value of the Authorization header.
  private String authHeader;

  // Force the use of non-default constructors
  private IBMWatsonBearerTokenAuthenticator() {}

  /**
   * Construct an IBMWatsonBearerTokenAuthenticator instance with the specified access token.
   * The token value will be used to construct an Authorization header that will be included
   * in outgoing REST API requests.
   *
   * @param bearerToken the access token value
   */
  public IBMWatsonBearerTokenAuthenticator(String bearerToken) {
    this.setBearerToken(bearerToken);
  }

  /**
   * Construct an IBMWatsonBearerTokenAuthenticator using properties retrieved from the specified Map.
   *
   * @param config a map containing the access token value
   */
  public IBMWatsonBearerTokenAuthenticator(Map<String, String> config) {
    this.setBearerToken(config.get(IBMWatsonCredentialUtils.PROP_NAME_BEARER_TOKEN));
  }

  /**
   * @return the access token configured for this authenticator
   */
  public String getBearerToken() {
    return this.bearerToken;
  }

  /**
   * Sets the bearer token value to be used by this authenticator.
   * @param bearerToken the new bearer token value
   */
  public void setBearerToken(String bearerToken) {
    this.bearerToken = bearerToken;
    this.validate();

    // Cache the Authorization header value.
    this.authHeader = constructBearerTokenAuthHeader(this.bearerToken);
  }

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTH_TYPE_BEARER_TOKEN;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    requestBuilder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, this.authHeader);
  }

  public void validate() {
    if (String.isBlank(bearerToken)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(String.format(ERRORMSG_PROP_MISSING, new String[]{ 'bearerToken' }));
    }
  }
}
