@isTest
private class IBMWatsonBearerTokenAuthenticatorTest {
  static testMethod void testSuccess() {
    Test.startTest();
    String token = 'abc-123';

    IBMWatsonBearerTokenAuthenticator authenticator = new IBMWatsonBearerTokenAuthenticator(token);
    System.assertEquals(IBMWatsonCredentialUtils.AUTHTYPE_BEARER_TOKEN, authenticator.authenticationType());
    System.assertEquals(token, authenticator.getBearerToken());

    IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder().url('https://test.com');
    authenticator.authenticate(builder);
    IBMWatsonRequest request = builder.build();

    String authHeader = request.header(IBMWatsonHttpHeaders.AUTHORIZATION);
    System.assert(authHeader != null);
    System.assertEquals('Bearer ' + token, authHeader);

    // change token and verify again
    token = 'xyz-789';
    authenticator.setBearerToken(token);
    builder = new IBMWatsonRequest.Builder().url('https://test.com');
    authenticator.authenticate(builder);
    request = builder.build();
    authHeader = request.header(IBMWatsonHttpHeaders.AUTHORIZATION);
    System.assert(authHeader != null);
    System.assertEquals('Bearer ' + token, authHeader);
    Test.stopTest();
  }

  static testMethod void testMissingBearerToken() {
    Test.startTest();
    try {
      IBMWatsonBearerTokenAuthenticator authenticator = new IBMWatsonBearerTokenAuthenticator((String) null);
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testEmptyBearerToken() {
    Test.startTest();
    try {
      IBMWatsonBearerTokenAuthenticator authenticator = new IBMWatsonBearerTokenAuthenticator('');
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testMissingBearerTokenMap() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    try {
      IBMWatsonBearerTokenAuthenticator authenticator = new IBMWatsonBearerTokenAuthenticator(props);
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testEmptyBearerTokenMap() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROPNAME_BEARER_TOKEN, '');
    try {
      IBMWatsonBearerTokenAuthenticator authenticator = new IBMWatsonBearerTokenAuthenticator(props);
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testGoodMapConfig() {
    Test.startTest();
    String token = 'abc-123';
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROPNAME_BEARER_TOKEN, token);
    IBMWatsonBearerTokenAuthenticator authenticator = new IBMWatsonBearerTokenAuthenticator(props);
    System.assertEquals(IBMWatsonCredentialUtils.AUTHTYPE_BEARER_TOKEN, authenticator.authenticationType());
    System.assertEquals(token, authenticator.getBearerToken());
    Test.stopTest();
  }
}
