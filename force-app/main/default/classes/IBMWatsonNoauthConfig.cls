public class IBMWatsonNoauthConfig implements IBMWatsonAuthenticatorConfig {
  public IBMWatsonNoauthConfig() { }

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_NOAUTH;
  }

  public void validate() { }
}
