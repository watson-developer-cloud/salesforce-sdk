public class IBMWatsonNoauthAuthenticator implements IBMWatsonAuthenticator {
  public IBMWatsonNoauthAuthenticator() {}

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_NOAUTH;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    // do nothing
  }

  public void validate() {}
}
