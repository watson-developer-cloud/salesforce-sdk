@isTest
private class IBMWatsonIAMTokenManagerTest {
  private String url;

  private static final String USER_ACCESS_TOKEN = 'abcd-1234';
  private static final String VALID_ACCESS_TOKEN = 'aaaa-1111';
  private static final String API_KEY = '123456789';
  private static final String URL = 'https://test.url';

  /**
   * Tests that if a user passes in an access token during initial IAM setup, that access token is passed back
   * during later retrieval.
   */
  static testMethod void getUserManagedTokenFromConstructor() {
    Test.startTest();
    IBMWatsonIAMOptions options = new IBMWatsonIAMOptions.Builder()
      .accessToken(USER_ACCESS_TOKEN)
      .url(URL)
      .build();
    IBMWatsonIAMTokenManager manager = new IBMWatsonIAMTokenManager(options);

    String token = manager.getToken();
    System.assertEquals(USER_ACCESS_TOKEN, token);
    Test.stopTest();
  }

  /**
   * Tests that if only an API key is stored, the user can get back a valid access token.
   */
  static testMethod void getTokenFromApiKey() {
    String body = IBMWatsonMockResponses.validTokenData();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions options = new IBMWatsonIAMOptions.Builder()
      .apiKey(API_KEY)
      .url(URL)
      .build();
    IBMWatsonIAMTokenManager manager = new IBMWatsonIAMTokenManager(options);

    String token = manager.getToken();
    System.assertEquals(VALID_ACCESS_TOKEN, token);
    Test.stopTest();
  }

  /**
   * Tests that if the stored access token is expired, it can be refreshed properly.
   */
  static testMethod void getTokenAfterRefresh() {
    String expiredTokenDataBody = '{' +
      '"access_token": "wxyz-9876",' +
      '"refresh_token": "00000000",' +
      '"token_type": "Bearer",' +
      '"expires_in": 3600,' +
      '"expiration": ' + Math.floor(System.now().getTime() / 1000) +
    '}';

    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      expiredTokenDataBody,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions options = new IBMWatsonIAMOptions.Builder()
      .apiKey(API_KEY)
      .url(URL)
      .build();
    IBMWatsonIAMTokenManager manager = new IBMWatsonIAMTokenManager(options);

    // setting expired token
    manager.getToken();

    // getting valid token
    String newBody = IBMWatsonMockResponses.validTokenData();
    IBMWatsonMockHttpResponse newMockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      newBody,
      null);
    Test.setMock(HttpCalloutMock.class, newMockResponse);
    String newToken = manager.getToken();

    System.assertEquals(VALID_ACCESS_TOKEN, newToken);
    Test.stopTest();
  }
}
