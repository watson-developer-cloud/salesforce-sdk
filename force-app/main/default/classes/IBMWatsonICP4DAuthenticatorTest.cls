@isTest
private class IBMWatsonICP4DAuthenticatorTest {
  private String url;

  private static final String ACCESS_TOKEN = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicm9sZSI6IkFkbWluIiwicGVybWlzc2lvbnMiOlsiYWRtaW5pc3RyYXRvciIsIm1hbmFnZV9jYXRhbG9nIiwiYWNjZXNzX2NhdGFsb2ciLCJtYW5hZ2VfcG9saWNpZXMiLCJhY2Nlc3NfcG9saWNpZXMiLCJ2aXJ0dWFsaXplX3RyYW5zZm9ybSIsImNhbl9wcm92aXNpb24iLCJkZXBsb3ltZW50X2FkbWluIl0sInN1YiI6ImFkbWluIiwiaXNzIjoiS05PWFNTTyIsImF1ZCI6IkRTWCIsInVpZCI6Ijk5OSIsImlhdCI6MTU1OTMyODk1NSwiZXhwIjo5OTk5OTk5OTk5OTk5OTk5OTl9.GE-ML3JWmI3oB0z5mjMG3jFtYVVA5bQCsOTOOj9ab7PcgJc1mA5hn1sONkO0JAFADhUoAgpG4KgQef5tjnCSrtl1tbnDuhaP1DH4QKMCZOkWrKyfQ2X8P1jhyJmV-KpE4wuTrGdMoMVj4wVRZwnxMRSK6LhV6pIzyOLLYR21zcW_2KcKWxCYfIC7tiM1d2PSM5nWa_5Vb068F8PtdiFUElEYHYKrvmwpV57_k2jpXoY6zw8PDcIiWQe3g20w6vCB6zWhxbcFWyjMg1tPOZHgTNNskPShHQBbtZFsSrc7rkNPzttKF70m7_JqrRYUZDNN8TmuR9uyitwxEFkr2L0WDQ';
  private static final String USERNAME = '123456789';
  private static final String PASSWORD = 'password';
  private static final String URL = 'https://test.url';

  static testMethod void testAuthenticateUserManagedToken() {
    Test.startTest();
    IBMWatsonICP4DConfig config = new IBMWatsonICP4DConfig.Builder()
      .userManagedAccessToken(ACCESS_TOKEN)
      .url(URL)
      .build();
    IBMWatsonICP4DAuthenticator authenticator = new IBMWatsonICP4DAuthenticator(config);

    IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder().url(URL);
    authenticator.authenticate(builder);
    IBMWatsonRequest request = builder.build();

    String authHeader = request.header(IBMWatsonHttpHeaders.AUTHORIZATION);
    System.assert(authHeader != null);
    System.assertEquals('Bearer ' + ACCESS_TOKEN, authHeader);
    Test.stopTest();
  }

  static testMethod void getTokenFromUsernameAndPassword() {
    String body = IBMWatsonMockResponses.validICP4DToken();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonICP4DConfig config = new IBMWatsonICP4DConfig.Builder()
      .username(USERNAME)
      .password(PASSWORD)
      .url(URL)
      .build();
    IBMWatsonICP4DAuthenticator authenticator = new IBMWatsonICP4DAuthenticator(config);

    String token = authenticator.getToken();
    System.assertEquals(ACCESS_TOKEN, token);
    Test.stopTest();
  }

  /**
   * Tests that if the stored access token is expired, it can be refreshed properly.
   */
  static testMethod void getTokenAfterRefresh() {
    String body = IBMWatsonMockResponses.expiredICP4DToken();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonICP4DConfig config = new IBMWatsonICP4DConfig.Builder()
      .username(USERNAME)
      .password(PASSWORD)
      .url(URL)
      .build();
    IBMWatsonICP4DAuthenticator authenticator = new IBMWatsonICP4DAuthenticator(config);

    // setting expired token
    authenticator.getToken();

    // getting valid token
    String newBody = IBMWatsonMockResponses.validICP4DToken();
    IBMWatsonMockHttpResponse newMockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      newBody,
      null);
    Test.setMock(HttpCalloutMock.class, newMockResponse);
    String newToken = authenticator.getToken();

    System.assertEquals(ACCESS_TOKEN, newToken);
    Test.stopTest();
  }
}
