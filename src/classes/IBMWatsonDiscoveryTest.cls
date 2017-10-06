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
private class IBMWatsonDiscoveryTest {

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
		
		IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryCreateEnvironment('test', 'test');
		
		system.assertEquals(resp.name,'test_environment');
		Test.stopTest();
  }
  
  
  /**
   *  Test listing the environments.
   *
   */
  static testMethod void testListEnvironment() {
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonListEnvironmentResponseSuccess');
		mock.setStatusCode(200);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		
		IBMWatsonDiscoveryV1Models.ListEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryListEnvironment('test');
		
		system.assertEquals(resp.environments.size(),2);
		Test.stopTest();
  }
  
  
  /**
   *  Test deleting an environment.
   *
   * Use environment id as parameter to delete environment
   */
  static testMethod void testDeleteEnvironment() {
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonDeleteEnvironmentResponseSuccess');
		mock.setStatusCode(200);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		
		IBMWatsonDiscoveryV1Models.DeleteEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryDeleteEnvironment('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
		
		system.assertEquals(resp.status,'deleted');
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
		IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryCreateEnvironment('test', 'test');
		}
		catch(IBMWatsonBadRequestException exptn) {
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
		IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryCreateEnvironment('test', 'test');
		}
		catch(IBMWatsonConflictException exptn) {
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
		IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryCreateEnvironment('test', 'test');
		}
		catch(IBMWatsonForbiddenException exptn) {
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
		IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryCreateEnvironment('test', 'test');
		}
		catch(IBMWatsonInternalServerErrorException exptn) {
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
		IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			IBMWatsonGateway.DiscoveryCreateEnvironment('test', 'test');
		}
		catch(IBMWatsonNotFoundException exptn) {
			system.assertEquals(exptn.getStatusCode(),IBMWatsonHttpStatus.NOT_FOUND);
			
		}
		Test.stopTest();
  }
}