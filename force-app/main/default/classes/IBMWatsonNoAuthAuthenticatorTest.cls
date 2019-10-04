@isTest
private class IBMWatsonNoAuthAuthenticatorTest {
  static testMethod void testAuthenticationType() {
    Test.startTest();
    IBMWatsonNoauthAuthenticator authenticator = new IBMWatsonNoauthAuthenticator();
    authenticator.authenticate(new IBMWatsonRequest.Builder());
    System.assertEquals(IBMWatsonCredentialUtils.AUTH_TYPE_NO_AUTH, authenticator.authenticationType());
    Test.stopTest();
  }
}
