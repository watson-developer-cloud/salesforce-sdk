public class IBMWatsonBasicAuthenticator implements IBMWatsonAuthenticator {
  private String authHeader;

  public IBMWatsonBasicAuthenticator(IBMWatsonBasicAuthConfig config) {
    Blob authBlob = Blob.valueOf(config.getUsername() + ':' + config.getPassword());
    this.authHeader = 'Basic ' + EncodingUtil.base64Encode(authBlob);
  }

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_BASIC;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    requestBuilder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, this.authHeader);
  }
}
