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
		
		IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
			discovery.CreateEnvironmentRequest('test', 'test');
		
		system.assertEquals(resp.name,'test_environment');
		Test.stopTest();
  }
  
  
  /**
    *  Test error while creating a new environment with empty name.
    *
    */
	static testMethod void testCreateEnvironmentEmpty() {
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonCreateEnvironmentResponseSuccess');
		mock.setStatusCode(200);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		
		IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		
		
		try {
			IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse resp = 
				discovery.CreateEnvironmentRequest('', 'test');
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'Environment name and description cannot be empty.');
			
		}
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
		IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		IBMWatsonDiscoveryV1Models.ListEnvironmentResponse resp = 
			discovery.ListEnvironmentRequest('test');
		
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
		IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		IBMWatsonDiscoveryV1Models.DeleteEnvironmentResponse resp = 
			discovery.deleteEnvironment('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
		
		system.assertEquals(resp.status,'deleted');
		Test.stopTest();
  }
  
  /**
   *  Test deleting an environment error with empty environment id.
   */
  static testMethod void testDeleteEnvironmentEmpty() {
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('IBMWatsonDeleteEnvironmentResponseSuccess');
		mock.setStatusCode(200);
		mock.setHeader('Content-Type', 'application/json');
		Test.setMock(HttpCalloutMock.class, mock);
		Test.startTest();
		IBMWatsonDiscoveryV1 discovery = new IBMWatsonDiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		try {
			IBMWatsonDiscoveryV1Models.DeleteEnvironmentResponse resp = 
				discovery.deleteEnvironment('');
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'Environment Id cannot be empty.');
			
		}
		Test.stopTest();
  }
}