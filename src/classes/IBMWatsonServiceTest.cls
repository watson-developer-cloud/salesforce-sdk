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
    *  Test Successfully creating a new environment.
    *
    */
	static testMethod void testCreateEnvironment() {
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseSuccess');
		mock.setStatusCode(200);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		Map<String,String> headers=new Map<String,String>{'test'=>'testvalue'};
		IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
        discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
        discovery.setUsernameAndPassword('username', 'password');
        discovery.setDefaultHeaders(headers);
     /*   String customHeaderValue=discovery.request.header('test');
        List<String> headervalues=discovery.request.getHeadersByName('test');
        IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder();
        builder.addHeader('test','testvalue');
        builder.removeHeader('test');
        builder.refresh_headers(headers);
        Map<String,String> cHeaders=builder.getHeaders();*/
        
        
  	IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			discovery.CreateEnvironmentRequest('test', 'test');
		
		system.assertEquals(resp.name,'test_environment');
		Test.stopTest();
  }
  
  
  /**
   *  Test bad request exception scenario.
   *
   */
  static testMethod void testBadRequestException() {
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(400);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(409);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(403);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(406);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(500);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(404);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(413);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(519);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(503);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(429);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(401);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
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
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseError');
		mock.setStatusCode(415);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		try {
			IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
    	discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    	discovery.setUsernameAndPassword('username', 'password');
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('test', 'test');
		}
		catch(IBMWatsonServiceExceptions.UnsupportedException exptn) {
			system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.UNSUPPORTED_MEDIA_TYPE);
			
		}
		Test.stopTest();
  }
}