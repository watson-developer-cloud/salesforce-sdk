@isTest
private class IBMWatsonBasicAuthConfigTest {
  static testMethod void testBuildSuccess() {
    Test.startTest();
    String username = 'test-username';
    String password = 'test-password';

    IBMWatsonBasicAuthConfig config = new IBMWatsonBasicAuthConfig.Builder()
      .username(username)
      .password(password)
      .build();

    System.assertEquals(username, config.getUsername());
    System.assertEquals(password, config.getPassword());
    System.assertEquals(IBMWatsonCredentialUtils.AUTHTYPE_BASIC, config.authenticationType());
    Test.stopTest();
  }

  static testMethod void testBuildInvalid() {
    Test.startTest();
    String username = '{test-username}'; 
    String password = 'test-password';

    try {
      IBMWatsonBasicAuthConfig config = new IBMWatsonBasicAuthConfig.Builder()
        .username(username)
        .password(password)
        .build();
    } catch (Exception e) {
      System.assert(e instanceof IBMWatsonServiceExceptions.IllegalArgumentException);
    }
    Test.stopTest();
  }
}
