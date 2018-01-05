@isTest
private class IBMWatsonServiceTest {
  /**
    *  Test available Request methods that are not used in example but available for developers.
    *
    */
  static testMethod void testIBMWatsonRequest() {
    Test.startTest();
    Map<String, String> headers = new Map<String, String>{'test' => 'testvalue'};
    IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder();
    builder.addHeader('test', 'testvalue');
    Test.stopTest();
  }

  /**
   *  Test bad request exception scenario.
   *
   */
  static testMethod void testBadRequestException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(400, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.BadRequestException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.BAD_REQUEST);
    }
    Test.stopTest();
  }

  /**
   *  Test conflict exception scenario.
   *
   */
  static testMethod void testConflictException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(409, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.ConflictException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.CONFLICT);
    }
    Test.stopTest();
  }

  /**
   *  Test forbidden exception scenario.
   *
   */
  static testMethod void testForbiddenException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(403, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.ForbiddenException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.FORBIDDEN);
    }
    Test.stopTest();
  }

  /**
   *  Test forbidden exception scenario 406.
   *
   */
  static testMethod void testNotAcceptableException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(406, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.ForbiddenException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.FORBIDDEN);
    }
    Test.stopTest();
  }

  /**
   *  Test internal server error exception scenario.
   *
   */
  static testMethod void testInternalServerErrorException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(500, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.InternalServerErrorException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.INTERNAL_SERVER_ERROR);
    }
    Test.stopTest();
  }

  /**
   *  Test not found exception scenario.
   *
   */
  static testMethod void testNotFoundException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(404, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.NotFoundException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.NOT_FOUND);
    }
    Test.stopTest();
  }

  /**
   *  Test request too large exception scenario.
   *
   */
  static testMethod void testRequestTooLargeException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(413, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.RequestTooLargeException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.REQUEST_TOO_LONG);
    }
    Test.stopTest();
  }

  /**
   *  Test response exception scenario.
   *
   */
  static testMethod void testResponseException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(519, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.ResponseException ex) {
      System.assertEquals(ex.getStatusCode(), 519);
    }
    Test.stopTest();
  }

  /**
   *  Test service unavailable exception scenario.
   *
   */
  static testMethod void testServiceUnavailableException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(503, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.ServiceUnavailableException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.SERVICE_UNAVAILABLE);
    }
    Test.stopTest();
  }

  /**
   *  Test too many requests exception scenario.
   *
   */
  static testMethod void testTooManyRequestsException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(429, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.TooManyRequestsException ex) {
      System.assertEquals(ex.getStatusCode(), 429);
    }
    Test.stopTest();
  }

  /**
   *  Test unauthorized exception scenario.
   *
   */
  static testMethod void testUnauthorizedException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(401, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.UnauthorizedException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.UNAUTHORIZED);
    }
    Test.stopTest();
  }
  /**
   *  Test unsupported exception scenario.
   *
   */
  static testMethod void testUnsupportedExceptionException() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(415, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    try {
      IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
      discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
      discovery.setUsernameAndPassword('username', 'password');
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder().name('test').description('test description').build();
      IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    }
    catch(IBMWatsonServiceExceptions.UnsupportedException ex) {
      System.assertEquals(ex.getStatusCode(), IBMWatsonHttpStatus.UNSUPPORTED_MEDIA_TYPE);
    }
    Test.stopTest();
  }
  /**
   *  Test IBMWatsonValidator.
   *
   */
  static testMethod void testIBMWatsonValidator() {
    Test.startTest();
    try {
      Object obj = null;
      IBMWatsonValidator.notNull(obj, 'test message');
    }
    catch(Exception ex) {
      System.assertEquals(ex.getMessage(), 'test message');
    }
    try {
      IBMWatsonValidator.isNull('test', 'test message');
    }
    catch(Exception ex) {
      System.assertEquals(ex.getMessage(), 'test message');
    }
    try {
      List<String> strlist= new List<String>();
      IBMWatsonValidator.notEmpty(strlist, 'test message');
    }
    catch(Exception ex) {
      System.assertEquals(ex.getMessage(), 'test message');
    }
    Test.stopTest();
  }

  /**
   *  Test IBMWatsonResponse.
   *
   */
  static testMethod void testIBMWatsonResponse() {
    Test.startTest();
    HttpResponse resp = new HttpResponse();
    resp.setStatusCode(200);
    resp.setStatus('Success');
    resp.setBodyAsBlob(Blob.valueOf('test string'));
    resp.setHeader('key', 'value');
    resp.setHeader('Content-Type', 'text/plain');
    IBMWatsonResponse response= new IBMWatsonResponse('url', resp);
    System.assertEquals(response.getStatus(), 'Success');
    System.assertEquals(response.getHeaderKeys()[1], 'Content-Type');
    System.assertEquals(response.getBodyAsBlob(), Blob.valueOf('test string'));
    Test.stopTest();
  }

  /**
   *  Test IBMWatsonRequest.
   *
   */
  static testMethod void testIBMWatsonRequestBuild() {
    Test.startTest();
    IBMWatsonRequest request = new IBMWatsonRequest.builder()
      .url('https://watson-api-explorer.mybluemix.net')
      .method('POST', IBMWatsonRequestBody.create())
      .addHeader('key', 'value')
      .build();
    System.assertEquals(request.header('key'), 'value');
    System.assertEquals(request.getMethod(), 'POST');
    System.assertEquals(request.getHeadersByName('key').size(), 1);
    System.assert(request.toString().contains('POST'));

    Test.stopTest();
  }

  /**
   *  Test IBMWatsonMediaType.
   *
   */
  static testMethod void testIBMWatsonMediaType() {
    Test.startTest();
    IBMWatsonMediaType mediaType=IBMWatsonMediaType.Parse('text/plain');
    System.assertEquals(mediaType.toString(), 'text/plain');
    Object obj = null;
    System.assertEquals(IBMWatsonHttpMediaType.createAudioRaw(5), IBMWatsonHttpMediaType.AUDIO_RAW + '; rate=5');
    System.assertEquals(mediaType.equals(obj), false);
    System.assertEquals(mediaType.hashCode(), 817335912);

    Test.stopTest();
  }

   /**
   *  Test IBMWatsonMultipartBody.
   *
   */
  static testMethod void testIBMWatsonMultipartBody() {
    Test.startTest();
    IBMWatsonMultipartBody multipartBody = new IBMWatsonMultipartBody.Builder()
      .setType(IBMWatsonMultipartBody.FORM)
      .addPart(new Map<String, String>{'test' => 'test', 'Content-Disposition'=>'Content-Disposition'}, IBMWatsonRequestBody.create())
      .addFormDataPart('key', 'value')
      .build();
    System.assertEquals(IBMWatsonMultipartBody.safelyPad('test', 'test=test=', 'test'), EncodingUtil.base64Encode(blob.valueOf('test test')));
    System.assertEquals(multipartBody.writeBodyParameter('test', 'test', false), 'Q29udGVudC1EaXNwb3NpdGlvbjogdGVzdCANCg0KdGVzdA0K');
    System.assertEquals(multipartBody.parts().size(), 2);
    System.assert(multipartBody.getAllHeaders().get('Content-Type').contains('multipart/form-data; boundary'));
    System.assert(multipartBody.form64().contains(multipartBody.writeBoundary()));
    Test.stopTest();
  }
}