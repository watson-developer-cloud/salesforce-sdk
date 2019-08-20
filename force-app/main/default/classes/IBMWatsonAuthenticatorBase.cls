/**
 * This is a common base class used with the various IBMWatsonAuthenticator implementations.
 */
public virtual class IBMWatsonAuthenticatorBase {

  /**
   * Common error messages.
   */
  public static final String ERRORMSG_PROP_MISSING = 'The {0} property is required but was not specified.';
  public static final String ERRORMSG_PROP_INVALID =
      'The {0} property is invalid. Please remove any surrounding {, }, or \" characters.';
  public static final String ERRORMSG_REQ_FAILED = 'Error while fetching access token from token service.';

  /**
   * Returns a "Basic" Authorization header value for the specified username and password.
   * @param username the username
   * @param password the password
   * @return the Authorization header value in the form "Basic &lt;encoded username and password&gt;"
   */
  public static String constructBasicAuthHeader(String username, String password) {
    if (String.isNotBlank(username) && String.isNotBlank(password)) {
      Blob authBlob = Blob.valueOf(username + ':' + password);
      return 'Basic ' + EncodingUtil.base64Encode(authBlob);
    }
    return null;
  }

  /**
   * Returns a "Bearer" Authorization header value for the specified bearer token.
   * @param bearerToken the token value to be included in the header
   * @return the Authorization header value in the form "Bearer &lt;bearerToken&gt;"
   */
  public static String constructBearerTokenAuthHeader(String bearerToken) {
    if (String.isNotBlank(bearerToken)) {
      return 'Bearer ' + bearerToken;
    }
    return null;
  }
}
