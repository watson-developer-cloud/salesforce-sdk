@isTest
private class IBMWatsonNoauthAuthenticatorTest {
  static testMethod void testAuthenticationType() {
    Test.startTest();
    IBMWatsonNoauthAuthenticator authenticator = new IBMWatsonNoauthAuthenticator(new IBMWatsonNoauthConfig());
    authenticator.authenticate(new IBMWatsonRequest.Builder());
    System.assertEquals(IBMWatsonCredentialUtils.AUTHTYPE_NOAUTH, authenticator.authenticationType());
    Test.stopTest();
  }
}
