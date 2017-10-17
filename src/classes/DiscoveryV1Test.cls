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
@isTest
private class DiscoveryV1Test {

	 /**
    *  Test Successfully creating a new environment.
    *
    */
	static testMethod void testCreateEnvironment() {
		String body=IBMWatsonMockResponses.singleEnvironment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		String text = 'test_environment';
		DiscoveryV1Models.CreateEnvironmentOptions options = new DiscoveryV1Models.CreateEnvironmentOptionsBuilder()
    	.name(text)
    	.description('test_environment description')
	    .build();
		DiscoveryV1Models.Environment resp = 
			discovery.createEnvironment(options);
		system.assertEquals(resp.getName(),'test_environment');
		Test.stopTest();
  }
  
  
  /**
    *  Test error while creating a new environment with empty name.
    *
    */
	static testMethod void testCreateEnvironmentEmpty() {
		
		String body=IBMWatsonMockResponses.singleEnvironment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
    Test.setMock(HttpCalloutMock.class, mockResponse);                                             
		Test.startTest();
		
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		
		
		try {
			String text = '';
			DiscoveryV1Models.CreateEnvironmentOptions options = new DiscoveryV1Models.CreateEnvironmentOptionsBuilder()
	    	.name(text)
	    	.description('test_environment description')
		    .build();
			DiscoveryV1Models.Environment resp = 
				discovery.createEnvironment(options);
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'createEnvironmentOptions cannot be null');
			
		}
		Test.stopTest();
  }
  
  
  /**
   *  Test listing the environments.
   *
   */
  static testMethod void testListEnvironment() {
  	String body=IBMWatsonMockResponses.environmentsList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		String text = 'test_environment';
		DiscoveryV1Models.ListEnvironmentsOptions options = new DiscoveryV1Models.ListEnvironmentsOptionsBuilder()
    	.name(text)
	    .build();
		DiscoveryV1Models.ListEnvironmentsResponse resp = 
			discovery.listEnvironments(options);
		
		system.assertEquals(resp.getEnvironments().size(),2);
		Test.stopTest();
  }
  
  
  /**
   *  Test deleting an environment.
   *
   * Use environment id as parameter to delete environment
   */
  static testMethod void testDeleteEnvironment() {
		String body='';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
		DiscoveryV1Models.DeleteEnvironmentOptions options = new DiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
    	.environmentId(text)
	    .build();
		discovery.deleteEnvironment(options);
	//	system.assertEquals(resp.status,'deleted');
		Test.stopTest();
  }
  
  /**
   *  Test deleting an environment error with empty environment id.
   */
  static testMethod void testDeleteEnvironmentEmpty() {
		String body='';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		try {
			String text = '';
			DiscoveryV1Models.DeleteEnvironmentOptions options = new DiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
    		.environmentId(text)
	    	.build();
			discovery.deleteEnvironment(options);
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'environmentId cannot be empty');
			
		}
		Test.stopTest();
  }
  
  /**
   *  Test get the environment.
   *
   */
  static testMethod void testGetEnvironment() {
		String body=IBMWatsonMockResponses.singleEnvironment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
		DiscoveryV1Models.GetEnvironmentOptions options = new DiscoveryV1Models.GetEnvironmentOptionsBuilder()
    	.environmentId(text)
	    .build();
		DiscoveryV1Models.Environment resp = 
			discovery.getEnvironment(options);
		
		system.assertEquals(resp.getName(),'test_environment');
		Test.stopTest();
  }
  
  /**
   *  Test get the environment error.
   *
   */
  static testMethod void testGetEnvironmentEmpty() {
		String body=IBMWatsonMockResponses.singleEnvironment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
		try {
			DiscoveryV1Models.GetEnvironmentOptions options = new DiscoveryV1Models.GetEnvironmentOptionsBuilder()
	    	.environmentId(text)
		    .build();
			DiscoveryV1Models.Environment resp = 
				discovery.getEnvironment(options);
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'getEnvironmentOptions cannot be null');
		}
		Test.stopTest();
  }
  
   /**
   *  Test update the environment.
   *
   */
  static testMethod void testUpdateEnvironment() {
		String body=IBMWatsonMockResponses.singleEnvironment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		//String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
		DiscoveryV1Models.UpdateEnvironmentOptions options = new DiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.name('test_environment')
    	.description('test_environment description')
	    .build();
		DiscoveryV1Models.Environment resp = 
			discovery.updateEnvironment(options);
		
		system.assertEquals(resp.getName(),'test_environment');
		Test.stopTest();
  }
  /**
   *  Test update the environment error.
   *
   */
  static testMethod void testUpdateEnvironmentEmpty() {
		String body=IBMWatsonMockResponses.singleEnvironment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		try{
			DiscoveryV1Models.UpdateEnvironmentOptions options = new DiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
	    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
	    	.name('')
	    	.description('test_environment description')
		    .build();
			DiscoveryV1Models.Environment resp = 
				discovery.updateEnvironment(options);
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'updateEnvironmentOptions cannot be null');
		}
		Test.stopTest();
  }
  
  /**
   *  Test list fields in a collection.
   *
   */
  static testMethod void testListCollectionFields() {
		String body=IBMWatsonMockResponses.collectionFieldsList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		List<String> collectionIds=new List<String>{'Collection1','Collection2'};
		DiscoveryV1Models.ListFieldsOptions options = new DiscoveryV1Models.ListFieldsOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.collectionIds(collectionIds)
    	.build();
		DiscoveryV1Models.ListCollectionFieldsResponse resp = 
			discovery.listFields(options);
		
		system.assertEquals(resp.getFields().size(),4);
		Test.stopTest();
  }
  
  /**
   *  Test create configuration
   *
   */
  static testMethod void testCreateConfiguration() {
		String body=IBMWatsonMockResponses.IBMWatsonCreateConfigurationResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.CreateConfigurationOptions options = new DiscoveryV1Models.CreateConfigurationOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.name('test_environment')
    	.description('test_environment description')
    	.build();
		DiscoveryV1Models.Configuration resp = 
			discovery.createConfiguration(options);
		system.assertEquals(resp.getName(),'IBM News');
		Test.stopTest();
  }
  
  /**
   *  Test create configuration validator error
   *
   */
  static testMethod void testCreateConfigurationEmpty() {
		String body=IBMWatsonMockResponses.IBMWatsonCreateConfigurationResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		try {
			DiscoveryV1Models.CreateConfigurationOptions options = new DiscoveryV1Models.CreateConfigurationOptionsBuilder()
	    	.name('test_environment')
	    	.description('test_environment description')
	    	.build();
			DiscoveryV1Models.Configuration resp = 
				discovery.createConfiguration(options);
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'environmentId cannot be empty');
		}
		Test.stopTest();
  }
  
  /**
   *  Test delete configuration
   *
   */
  static testMethod void testDeleteConfiguration() {
		String body=IBMWatsonMockResponses.IBMWatsonCreateConfigurationResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.DeleteConfigurationOptions options = new DiscoveryV1Models.DeleteConfigurationOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.build();
		discovery.deleteConfiguration(options);
		
	//	system.assertEquals(resp.getName(),'IBM News');
		Test.stopTest();
  }
  
  /**
   *  Test get configuration
   *
   */
  static testMethod void testGetConfiguration() {
		String body=IBMWatsonMockResponses.IBMWatsonCreateConfigurationResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.GetConfigurationOptions options = new DiscoveryV1Models.GetConfigurationOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.build();
		DiscoveryV1Models.Configuration resp = 
			discovery.getConfiguration(options);
		
		system.assertEquals(resp.getName(),'IBM News');
		Test.stopTest();
  }
  
  /**
   *  Test list configurations
   *
   */
  static testMethod void testListConfigurations() {
		String body=IBMWatsonMockResponses.configurationsList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.ListConfigurationsOptions options = new DiscoveryV1Models.ListConfigurationsOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.build();
		DiscoveryV1Models.ListConfigurationsResponse resp = 
			discovery.listConfigurations(options);
		
		system.assertEquals(resp.getConfigurations().size(),1);
		Test.stopTest();
  }
  
  /**
   *  Test update configuration
   *
   */
  static testMethod void testUpdateConfiguration() {
		String body=IBMWatsonMockResponses.IBMWatsonCreateConfigurationResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.UpdateConfigurationOptions options = new DiscoveryV1Models.UpdateConfigurationOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.name('test_environment')
    	.description('test_environment description')
    	.build();
		DiscoveryV1Models.Configuration resp = 
			discovery.updateConfiguration(options);
		
		system.assertEquals(resp.getName(),'IBM News');
		Test.stopTest();
  }
  
  /**
   *  Test update configuration validator error
   *
   */
  static testMethod void testUpdateConfigurationEmpty() {
		String body=IBMWatsonMockResponses.IBMWatsonCreateConfigurationResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		try {
			DiscoveryV1Models.UpdateConfigurationOptions options = new DiscoveryV1Models.UpdateConfigurationOptionsBuilder()
	    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
	    	.name('test_environment')
	    	.description('test_environment description')
	    	.build();
			DiscoveryV1Models.Configuration resp = 
				discovery.updateConfiguration(options);
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'configurationId cannot be empty');
		}
		Test.stopTest();
  }
  
  /**
   *  Test create collection
   *
   */
  static testMethod void testCreateCollection() {
		String body=IBMWatsonMockResponses.collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.CreateCollectionOptions options = new DiscoveryV1Models.CreateCollectionOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.name('test_environment')
    	.description('test_environment description')
    	.build();
		DiscoveryV1Models.Collection resp = 
			discovery.createCollection(options);
		
		system.assertEquals(resp.getName(),'test-collection');
		Test.stopTest();
  }
  
  /**
   *  Test delete collection
   *
   */
  static testMethod void testDeleteCollection() {
		String body=IBMWatsonMockResponses.IBMWatsonCreateConfigurationResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.DeleteCollectionOptions options = new DiscoveryV1Models.DeleteCollectionOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.build();
		discovery.deleteCollection(options);
		
	//	system.assertEquals(resp.getName(),'IBM News');
		Test.stopTest();
  }
  
  /**
   *  Test get collection
   *
   */
  static testMethod void testGetCollection() {
		String body=IBMWatsonMockResponses.collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.GetCollectionOptions options = new DiscoveryV1Models.GetCollectionOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.build();
		DiscoveryV1Models.Collection resp = 
			discovery.getCollection(options);
		
		system.assertEquals(resp.getName(),'test-collection');
		Test.stopTest();
  }
  
  /**
   *  Test list collections
   *
   */
  static testMethod void testListCollections() {
		String body=IBMWatsonMockResponses.collectionsList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.ListCollectionsOptions options = new DiscoveryV1Models.ListCollectionsOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.build();
		DiscoveryV1Models.ListCollectionsResponse resp = 
			discovery.listCollections(options);
		
		system.assertEquals(resp.getCollections().size(),1);
		Test.stopTest();
  }
  /**
   *  Test update collection
   *
   */
  static testMethod void testUpdateCollection() {
		String body=IBMWatsonMockResponses.collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		DiscoveryV1Models.UpdateCollectionOptions options = new DiscoveryV1Models.UpdateCollectionOptionsBuilder()
    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
    	.name('test_environment')
    	.description('test_environment description')
    	.build();
		DiscoveryV1Models.Collection resp = 
			discovery.updateCollection(options);
		
		system.assertEquals(resp.getName(),'test-collection');
		Test.stopTest();
  }
  
  /**
   *  Test update collection validator error
   *
   */
  static testMethod void testUpdateCollectionEmpty() {
		String body=IBMWatsonMockResponses.collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200,
                                                 'Success',
                                                 body,
                                                 null);
		Test.setMock(HttpCalloutMock.class, mockResponse);
		Test.startTest();
		DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
		discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
		discovery.setUsernameAndPassword('username', 'password');
		try {
			DiscoveryV1Models.UpdateCollectionOptions options = new DiscoveryV1Models.UpdateCollectionOptionsBuilder()
	    	.environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
	    	.name('test_environment')
	    	.description('test_environment description')
	    	.build();
			DiscoveryV1Models.Collection resp = 
				discovery.updateCollection(options);
		}
		catch(Exception exptn) {
			system.assertEquals(exptn.getMessage(),'collectionId cannot be empty');
		}
		Test.stopTest();
  }
}