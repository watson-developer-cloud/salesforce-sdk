/**
 * This class implements support for Basic Authentication.
 * The main purpose of this authenticator is to construct the Authorization header,
 * and then add it to each outgoing REST API request.
 */
public class IBMWatsonBasicAuthenticator extends IBMWatsonAuthenticatorBase implements IBMWatsonAuthenticator {
  private String username;
  private String password;

  // The cached value of the Authorization header.
  private String authHeader;

  // Force the use of non-default constructors
  private IBMWatsonBasicAuthenticator() {}

  /**
   * Construct an IBMWatsonBasicAuthenticator instance with the specified username and password.
   * These values are used to construct an Authorization header value that will be included
   * in outgoing REST API requests.
   *
   * @param username the basic auth username
   * @param password the basic auth password
   */
  public IBMWatsonBasicAuthenticator(String username, String password) {
    init(username, password);
  }

  /**
   * Construct a BasicAuthenticator using properties retrieved from the specified Map.
   *
   * @param config a map containing the username and password values
   */
  public IBMWatsonBasicAuthenticator(Map<String, String> config) {
    init(config.get(IBMWatsonCredentialUtils.PROPNAME_USERNAME), config.get(IBMWatsonCredentialUtils.PROPNAME_PASSWORD));
  }

  private void init(String username, String password) {
    this.username = username;
    this.password = password;
    this.validate();

    this.authHeader = constructBasicAuthHeader(username, password);
  }

  public String getUsername() {
    return this.username;
  }

  public String getPassword() {
    return this.password;
  }

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_BASIC;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    requestBuilder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, this.authHeader);
  }

  public void validate() {
    if (String.isBlank(username)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(String.format(ERRORMSG_PROP_MISSING, new String[]{ 'username' }));
    }

    if (String.isBlank(password)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(String.format(ERRORMSG_PROP_MISSING, new String[]{ 'password' }));
    }

    if (IBMWatsonCredentialUtils.hasBadStartOrEndChar(username)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(String.format(ERRORMSG_PROP_INVALID, new String[]{ 'username' }));
    }

    if (IBMWatsonCredentialUtils.hasBadStartOrEndChar(password)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(String.format(ERRORMSG_PROP_INVALID, new String[]{ 'password' }));
    }
  }
}
