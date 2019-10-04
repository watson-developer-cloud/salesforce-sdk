public class IBMWatsonNoAuthAuthenticator implements IBMWatsonAuthenticator {
  public IBMWatsonNoAuthAuthenticator() {}

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTH_TYPE_NO_AUTH;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    // do nothing
  }

  public void validate() {}
}
