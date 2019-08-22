@isTest
private class IBMWatsonBasicAuthenticatorTest {
  static testMethod void testSuccess() {
    Test.startTest();
    String username = 'test-username';
    String password = 'test-password';

    IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator(username, password);
    System.assertEquals(IBMWatsonCredentialUtils.AUTH_TYPE_BASIC, authenticator.authenticationType());
    System.assertEquals(username, authenticator.getUsername());
    System.assertEquals(password, authenticator.getPassword());

    IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder().url('https://test.com');
    authenticator.authenticate(builder);
    IBMWatsonRequest request = builder.build();

    String authHeader = request.header(IBMWatsonHttpHeaders.AUTHORIZATION);
    System.assert(authHeader != null);
    System.assertEquals('Basic ' + EncodingUtil.base64Encode(Blob.valueOf(username + ':' + password)), authHeader);
    Test.stopTest();
  }

  static testMethod void testInvalidUsername() {
    Test.startTest();
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator('{bad-username}', 'good-password');
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testInvalidPassword() {
    Test.startTest();
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator('good-username', '{bad-password}');
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testMissingUsername() {
    Test.startTest();
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator(null, 'good-password');
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testMissingPassword() {
    Test.startTest();
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator('good-username', null);
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testEmptyUsername() {
    Test.startTest();
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator('', 'good-password');
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testEmptyPassword() {
    Test.startTest();
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator('good-username', '');
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testMissingUsernameMap() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_PASSWORD, 'good-password');
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator(props);
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testInvalidUsernameMap() {
    Test.startTest();
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_USERNAME, '{bad-username}');
    props.put(IBMWatsonCredentialUtils.PROP_NAME_PASSWORD, 'good-password');
    try {
      IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator(props);
    } catch (IBMWatsonServiceExceptions.IllegalArgumentException e) {
      System.assert(e != null);
    }
    Test.stopTest();
  }

  static testMethod void testGoodMapConfig() {
    Test.startTest();
    String username = 'good-username';
    String password = 'good-password';
    Map<String, String> props = new Map<String, String>();
    props.put(IBMWatsonCredentialUtils.PROP_NAME_USERNAME, username);
    props.put(IBMWatsonCredentialUtils.PROP_NAME_PASSWORD, password);
    IBMWatsonBasicAuthenticator authenticator = new IBMWatsonBasicAuthenticator(props);
    System.assertEquals(IBMWatsonCredentialUtils.AUTH_TYPE_BASIC, authenticator.authenticationType());
    System.assertEquals(username, authenticator.getUsername());
    System.assertEquals(password, authenticator.getPassword());
    Test.stopTest();
  }
}
