@isTest
private class IBMWatsonAuthenticatorFactoryTest {
  private class UnknownConfig implements IBMWatsonAuthenticatorConfig {
    public String authenticationType() {
      return 'unknown';
    }

    public void validate() { }
  }

  static testMethod void testGetAuthenticatorIam() {
    Test.startTest();
    IBMWatsonIAMOptions config = new IBMWatsonIAMOptions.Builder()
      .apiKey('test-key')
      .build();
    IBMWatsonAuthenticator authenticator = IBMWatsonAuthenticatorFactory.getAuthenticator(config);
    System.assert(authenticator instanceof IBMWatsonIAMTokenManager);
    Test.stopTest();
  }

  static testMethod void testGetAuthenticatorIcp4d() {
    Test.startTest();
    IBMWatsonICP4DConfig config = new IBMWatsonICP4DConfig.Builder()
      .url('https://test.com')
      .userManagedAccessToken('test-token')
      .build();
    IBMWatsonAuthenticator authenticator = IBMWatsonAuthenticatorFactory.getAuthenticator(config);
    System.assert(authenticator instanceof IBMWatsonICP4DAuthenticator);
    Test.stopTest();
  }

  static testMethod void testGetAuthenticatorBasic() {
    Test.startTest();
    IBMWatsonBasicAuthConfig config = new IBMWatsonBasicAuthConfig.Builder()
      .username('test-username')
      .password('test-password')
      .build();
    IBMWatsonAuthenticator authenticator = IBMWatsonAuthenticatorFactory.getAuthenticator(config);
    System.assert(authenticator instanceof IBMWatsonBasicAuthenticator);
    Test.stopTest();
  }

  static testMethod void testGetAuthenticatorNoauth() {
    Test.startTest();
    IBMWatsonAuthenticator authenticator = IBMWatsonAuthenticatorFactory.getAuthenticator(new IBMWatsonNoauthConfig());
    System.assert(authenticator instanceof IBMWatsonNoauthAuthenticator);
    Test.stopTest();
  }

  static testMethod void testGetAuthenticatorUnknown() {
    Test.startTest();
    try {
      IBMWatsonAuthenticatorFactory.getAuthenticator(new UnknownConfig());
    } catch (Exception e) {
      System.assert(e.getMessage().contains('Unrecognized AuthenticatorConfig type'));
    }
    Test.stopTest();
  }
}
