@isTest
private class IBMWatsonConfigBasedAuthFactoryTest {
  static testMethod void testCreateNoauth() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROPNAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTHTYPE_NOAUTH);

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonNoauthAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateBasic() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROPNAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTHTYPE_BASIC);
    props.put(IBMWatsonCredentialUtils.PROPNAME_USERNAME, 'username');
    props.put(IBMWatsonCredentialUtils.PROPNAME_PASSWORD, 'password');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonBasicAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateIAM() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROPNAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTHTYPE_IAM);
    props.put(IBMWatsonCredentialUtils.PROPNAME_APIKEY, 'apikey');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonIAMAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateCP4D() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROPNAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTHTYPE_CP4D);
    props.put(IBMWatsonCredentialUtils.PROPNAME_URL, 'url');
    props.put(IBMWatsonCredentialUtils.PROPNAME_USERNAME, 'username');
    props.put(IBMWatsonCredentialUtils.PROPNAME_PASSWORD, 'password');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonCloudPakForDataAuthenticator);
    Test.stopTest();
  }

  static testMethod void testCreateBearerToken() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROPNAME_AUTH_TYPE, IBMWatsonCredentialUtils.AUTHTYPE_BEARER_TOKEN);
    props.put(IBMWatsonCredentialUtils.PROPNAME_BEARER_TOKEN, 'token');

    IBMWatsonAuthenticator authenticator = IBMWatsonConfigBasedAuthenticatorFactory.createAuthenticator(props);
    System.assert(authenticator instanceof IBMWatsonBearerTokenAuthenticator);
    Test.stopTest();
  }
}
