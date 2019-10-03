@isTest
private class IBMWatsonICP4DTokenTest {
  static testMethod void testConstructorAccessToken() {
    Test.startTest();
    String accessToken = 'access-token';
    IBMWatsonICP4DToken tokenModel = new IBMWatsonICP4DToken(accessToken);
    System.assert(tokenModel.isTokenValid());
    Test.stopTest();
  }
}
