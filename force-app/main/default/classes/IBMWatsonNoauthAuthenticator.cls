public class IBMWatsonNoauthAuthenticator implements IBMWatsonAuthenticator {
  public IBMWatsonNoauthAuthenticator(IBMWatsonNoauthConfig config) { }

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_NOAUTH;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    // do nothing
  }

  public void validate() {}
}
