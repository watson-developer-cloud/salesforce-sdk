public class IBMWatsonAuthenticatorFactory {
  private IBMWatsonAuthenticatorFactory() {}

  public static IBMWatsonAuthenticator getAuthenticator(IBMWatsonAuthenticatorConfig config) {
    config.validate();

    String authType = config.authenticationType();
    if (authType.equals(IBMWatsonCredentialUtils.AUTHTYPE_IAM)) {
      return new IBMWatsonIAMTokenManager((IBMWatsonIAMOptions) config);
    } else if (authType.equals(IBMWatsonCredentialUtils.AUTHTYPE_ICP4D)) {
      return new IBMWatsonICP4DAuthenticator((IBMWatsonICP4DConfig) config);
    } else if (authType.equals(IBMWatsonCredentialUtils.AUTHTYPE_BASIC)) {
      return new IBMWatsonBasicAuthenticator((IBMWatsonBasicAuthConfig) config);
    } else if (authType.equals(IBMWatsonCredentialUtils.AUTHTYPE_NOAUTH)) {
      return new IBMWatsonNoauthAuthenticator((IBMWatsonNoauthConfig) config);
    } else {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('Unrecognized AuthenticatorConfig type');
    }
  }
}
