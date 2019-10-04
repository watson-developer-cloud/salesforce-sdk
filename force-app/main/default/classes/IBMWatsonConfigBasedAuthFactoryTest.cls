@isTest
private class IBMWatsonConfigBasedAuthFactoryTest {
  static testMethod void testCreateNoauth() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTH_TYPE_NO_AUTH);

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonNoAuthAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateBasic() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTH_TYPE_BASIC);
    props.put(IBMWatsonCredentialUtils.PROP_NAME_USERNAME, 'username');
    props.put(IBMWatsonCredentialUtils.PROP_NAME_PASSWORD, 'password');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonBasicAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateIAM() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTH_TYPE_IAM);
    props.put(IBMWatsonCredentialUtils.PROP_NAME_APIKEY, 'apikey');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonIAMAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateCP4D() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTH_TYPE_CP4D);
    props.put(IBMWatsonCredentialUtils.PROP_NAME_URL, 'url');
    props.put(IBMWatsonCredentialUtils.PROP_NAME_USERNAME, 'username');
    props.put(IBMWatsonCredentialUtils.PROP_NAME_PASSWORD, 'password');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonCloudPakForDataAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateBearerToken() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTH_TYPE_BEARER_TOKEN);
    props.put(IBMWatsonCredentialUtils.PROP_NAME_BEARER_TOKEN, 'token');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonBearerTokenAuthenticator);
    Test.stopTest();
  }
}
