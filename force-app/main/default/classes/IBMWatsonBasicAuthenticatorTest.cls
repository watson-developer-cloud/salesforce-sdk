@isTest
private class IBMWatsonBasicAuthenticatorTest {
  static testMethod void testAuthenticate() {
    Test.startTest();
    String username = 'test-username';
    String password = 'test-password';

    IBMWatsonBasicAuthConfig config = new IBMWatsonBasicAuthConfig.Builder()
      .username(username)
      .password(password)
      .build();
    IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator(config);

    IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder().url('https://test.com');
    authenticator.authenticate(builder);
    IBMWatsonRequest request = builder.build();

    String authHeader = request.header(IBMWatsonHttpHeaders.AUTHORIZATION);
    System.assert(authHeader != null);
    System.assertEquals('Basic ' + EncodingUtil.base64Encode(Blob.valueOf(username + ':' + password)), authHeader);
    Test.stopTest();
  }
}
