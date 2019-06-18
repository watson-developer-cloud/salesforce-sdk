@isTest
private class IBMWatsonICP4DConfigTest {
  static testMethod void testBuildSuccess() {
    Test.startTest();
    String url = 'https://test.com';
    String username = 'test-username';
    String password = 'test-password';
    String accessToken = 'test-token';

    IBMWatsonICP4DConfig config = new IBMWatsonICP4DConfig.Builder()
      .url(url)
      .username(username)
      .password(password)
      .userManagedAccessToken(accessToken)
      .build();

    System.assertEquals(url, config.getUrl());
    System.assertEquals(username, config.getUsername());
    System.assertEquals(password, config.getPassword());
    System.assertEquals(accessToken, config.getUserManagedAccessToken());
    System.assertEquals(IBMWatsonCredentialUtils.AUTHTYPE_ICP4D, config.authenticationType());
    Test.stopTest();
  }

  static testMethod void testBuildInvalid() {
    Test.startTest();
    try {
      IBMWatsonICP4DConfig config = new IBMWatsonICP4DConfig.Builder()
        .username('test-username')
        .build();
    } catch (Exception e) {
      System.assert(e instanceof IBMWatsonServiceExceptions.IllegalArgumentException);
    }
    Test.stopTest();
  }
}
