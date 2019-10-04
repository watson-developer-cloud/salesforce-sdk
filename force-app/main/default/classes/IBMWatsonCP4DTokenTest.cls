@isTest
private class IBMWatsonCP4DTokenTest {
  static testMethod void testConstructorAccessToken() {
    Test.startTest();
    String accessToken = 'access-token';
    IBMWatsonCP4DToken tokenModel = new IBMWatsonCP4DToken(accessToken);
    System.assert(tokenModel.isTokenValid());
    Test.stopTest();
  }
}
