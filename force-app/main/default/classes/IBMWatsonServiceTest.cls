/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
 
/**
 * Using mock response to callout as actual callout is not supporte in unit tests
 *
 * Unit test of exception and all scenarios is important to make sure that exceptions are working as expected
 *
 * Static resources are used to return mock response copied from Watson API explorer
 */
  
@isTest
private class IBMWatsonServiceTest {
	/**
    *  Test available Request methods that are not used in example but available for developers.
    *
    */
  static testMethod void testIBMWatsonRequest() {
    Test.startTest();
    Map<String,String> headers=new Map<String,String>{'test'=>'testvalue'};
    IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder();
    builder.addHeader('test','testvalue');
    Test.stopTest();
  }
  
  /**
   *  Test bad request exception scenario.
   *
   */
  static testMethod void testBadRequestException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.BadRequestException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.BAD_REQUEST);
    }
    Test.stopTest();
  }
  
  /**
   *  Test conflict exception scenario.
   *
   */
  static testMethod void testConflictException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.ConflictException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.CONFLICT);
    }
    Test.stopTest();
  }
  
  /**
   *  Test forbidden exception scenario.
   *
   */
  static testMethod void testForbiddenException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.ForbiddenException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.FORBIDDEN);
    }
    Test.stopTest();
  }
  
  /**
   *  Test forbidden exception scenario 406.
   *
   */
  static testMethod void testNotAcceptableException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.ForbiddenException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.FORBIDDEN);
    }
    Test.stopTest();
  }
  
  /**
   *  Test internal server error exception scenario.
   *
   */
  static testMethod void testInternalServerErrorException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.InternalServerErrorException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.INTERNAL_SERVER_ERROR);
    }
    Test.stopTest();
  }
  
  /**
   *  Test not found exception scenario.
   *
   */
  static testMethod void testNotFoundException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.NotFoundException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.NOT_FOUND);
    }
    Test.stopTest();
  }
  
  /**
   *  Test request too large exception scenario.
   *
   */
  static testMethod void testRequestTooLargeException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.RequestTooLargeException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.REQUEST_TOO_LONG);
    }
    Test.stopTest();
  }
  
  /**
   *  Test response exception scenario.
   *
   */
  static testMethod void testResponseException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.ResponseException exptn) {
      system.assertEquals(exptn.getStatusCode(),519);
    }
    Test.stopTest();
  }
  
  /**
   *  Test service unavailable exception scenario.
   *
   */
  static testMethod void testServiceUnavailableException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.ServiceUnavailableException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.SERVICE_UNAVAILABLE);
    }
    Test.stopTest();
  }
  
  /**
   *  Test too many requests exception scenario.
   *
   */
  static testMethod void testTooManyRequestsException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.TooManyRequestsException exptn) {
      system.assertEquals(exptn.getStatusCode(),429);
    }
    Test.stopTest();
  }
  
  /**
   *  Test unauthorized exception scenario.
   *
   */
  static testMethod void testUnauthorizedException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.UnauthorizedException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.UNAUTHORIZED);
    }
    Test.stopTest();
  }
  /**
   *  Test unsupported exception scenario.
   *
   */
  static testMethod void testUnsupportedExceptionException() {
    String body=IBMWatsonMockResponses.environment();
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
    catch(IBMWatsonServiceExceptions.UnsupportedException exptn) {
      system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.UNSUPPORTED_MEDIA_TYPE);
    }
    Test.stopTest();
  }
  /**
   *  Test IBMWatsonValidator.
   *
   */
  static testMethod void testIBMWatsonValidator() {
    Test.startTest();
   // IBMWatsonValidator validator=new IBMWatsonValidator();
    try {
      Object obj=null;
      IBMWatsonValidator.notNull(obj,'test message');
    }
    catch(Exception exptn) {
      system.assertEquals(exptn.getMessage(),'test message');
    }
    try {
      IBMWatsonValidator.isNull('test','test message');
    }
    catch(Exception exptn) {
      system.assertEquals(exptn.getMessage(),'test message');
    }
    try {
      List<String> strlist=new List<String>();
      IBMWatsonValidator.notEmpty(strlist,'test message');
    }
    catch(Exception exptn) {
      system.assertEquals(exptn.getMessage(),'test message');
    }
    Test.stopTest();
  }
  
  /**
   *  Test IBMWatsonResponse.
   *
   */
  static testMethod void testIBMWatsonResponse() {
    Test.startTest();
   // IBMWatsonValidator validator=new IBMWatsonValidator();
    HttpResponse resp = new HttpResponse();
    resp.setStatusCode(200);
    resp.setStatus('Success');
    resp.setBodyAsBlob(Blob.valueOf('test string'));
    resp.setHeader('key','value');
    resp.setHeader('Content-Type','text/plain');
    IBMWatsonResponse response=new IBMWatsonResponse('url',resp);
    System.assertEquals(response.getStatus(),'Success');
    System.assertEquals(response.getHeaderKeys()[1],'Content-Type');
    System.assertEquals(response.getBodyAsBlob(),Blob.valueOf('test string'));
    Test.stopTest();   
  }
  
  /**
   *  Test IBMWatsonRequest.
   *
   */
  static testMethod void testIBMWatsonRequestBuild() {
    Test.startTest();
    IBMWatsonRequest request=new IBMWatsonRequest.builder()
      .url('https://watson-api-explorer.mybluemix.net')
      .method('POST',IBMWatsonRequestBody.create())
      .addHeader('key','value')
      .build();
    System.assertEquals(request.header('key'),'value');
    System.assertEquals(request.getMethod(),'POST');
    System.assertEquals(request.getHeadersByName('key').size(),1);
    System.assert(request.toString().contains('POST'));
    
    Test.stopTest();  
  }
  
  /**
   *  Test IBMWatsonMediaType.
   *
   */
  static testMethod void testIBMWatsonMediaType() {
    Test.startTest();
    IBMWatsonMediaType mediaType=IBMWatsonMediaType.Parse('text/plain; charset=utf-8');
    //System.assertEquals(mediaType.toString(),'text/plain');
    Object obj=null;
    System.assertEquals(IBMWatsonHttpMediaType.createAudioRaw(5),IBMWatsonHttpMediaType.AUDIO_RAW + '; rate=5');
  //  System.assertEquals(mediaType.equals(obj),false);
  //  System.assertEquals(mediaType.hashCode(),817335912);
    
    Test.stopTest();  
  }
}