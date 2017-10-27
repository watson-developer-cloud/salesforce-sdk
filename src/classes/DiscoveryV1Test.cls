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
    String body=IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    
    String body=IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.listEnvironmentsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
  //  system.assertEquals(resp.status,'deleted');
    Test.stopTest();
  }
  
  /**
   *  Test deleting an environment error with empty environment id.
   */
  static testMethod void testDeleteEnvironmentEmpty() {
    String body='';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
      system.assertEquals(exptn.getMessage(),'environment_id cannot be empty');
      
    }
    Test.stopTest();
  }
  
  /**
   *  Test get the environment.
   *
   */
  static testMethod void testGetEnvironment() {
    String body=IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
  static testMethod void testListCollectionsFields() {
    String body=IBMWatsonMockResponses.listCollectionFieldsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
      system.assertEquals(exptn.getMessage(),'environment_id cannot be empty');
    }
    Test.stopTest();
  }
  
  /**
   *  Test delete configuration
   *
   */
  static testMethod void testDeleteConfiguration() {
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    Test.stopTest();
  }
  
  /**
   *  Test get configuration
   *
   */
  static testMethod void testGetConfiguration() {
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.listConfigurationsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.UpdateConfigurationOptions options = new DiscoveryV1Models.UpdateConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
      system.assertEquals(exptn.getMessage(),'configuration_id cannot be empty');
    }
    Test.stopTest();
  }
  
  /**
   *  Test create collection
   *
   */
  static testMethod void testCreateCollection() {
    String body=IBMWatsonMockResponses.collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    Test.stopTest();
  }
  
  /**
   *  Test get collection
   *
   */
  static testMethod void testGetCollection() {
    String body=IBMWatsonMockResponses.collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    system.assertEquals(resp.getCollectionId(),'800e58e4-198d-45eb-be87-74e1d6df4e96');
    system.assertEquals(resp.getCreated(),(DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    system.assertEquals(resp.getUpdated(),(DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    system.assertEquals(resp.getStatus(),'active');
    system.assertEquals(resp.getConfigurationId(),'3c4fff84-1500-455c-b125-eaa2d319f6d3');
    system.assertEquals(resp.getLanguage(),'de');
    system.assertEquals(resp.getDescription(),'A test collection to show as an example');
    system.assertEquals(resp.getDocumentCounts().getAvailable(),0);
    system.assertEquals(resp.getDocumentCounts().getProcessing(),0);
    system.assertEquals(resp.getDocumentCounts().getFailed(),0);
    system.assertEquals(resp.getDiskUsage().getUsedBytes(),260);
    system.assertEquals(resp.getTrainingStatus().getTotalExamples(),0);
    system.assertEquals(resp.getTrainingStatus().getAvailable(),false);
    system.assertEquals(resp.getTrainingStatus().getProcessing(),false);
    system.assertEquals(resp.getTrainingStatus().getMinimumQueriesAdded(),false);
    system.assertEquals(resp.getTrainingStatus().getMinimumExamplesAdded(),false);
    system.assertEquals(resp.getTrainingStatus().getSufficientLabelDiversity(),false);
    system.assertEquals(resp.getTrainingStatus().getNotices(),0);
    system.assertEquals(resp.getTrainingStatus().getSuccessfullyTrained(),null);
    system.assertEquals(resp.getTrainingStatus().getDataUpdated(),null);
    Test.stopTest();
  }
  
  /**
   *  Test list collections
   *
   */
  static testMethod void testListCollections() {
    String body=IBMWatsonMockResponses.listCollectionsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
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
      system.assertEquals(exptn.getMessage(),'collection_id cannot be empty');
    }
    Test.stopTest();
  }
  
  /**
   *  Test list fields in a single collection. (DiscoveryV1.listCollectionFields)
   *
   */
  static testMethod void testListCollectionFields() {
    String body=IBMWatsonMockResponses.listCollectionFieldsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.ListCollectionFieldsOptions options = new DiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    DiscoveryV1Models.ListCollectionFieldsResponse resp = 
      discovery.listCollectionFields(options);
    system.assertEquals(resp.getFields().size(),4);
    Test.stopTest();
  }
  
  /**
   *  Test delete document
   *
   */
  static testMethod void testDeleteDocument() {
    String body='';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.DeleteDocumentOptions options = new DiscoveryV1Models.DeleteDocumentOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .documentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    discovery.deleteDocument(options);
    Test.stopTest();
  }
  
  /**
   *  Test get document
   *
   */
  static testMethod void testGetDocumentStatus() {
    String body=IBMWatsonMockResponses.documentStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.GetDocumentStatusOptions options = new DiscoveryV1Models.GetDocumentStatusOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .documentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    DiscoveryV1Models.DocumentStatus resp = 
      discovery.getDocumentStatus(options);
    system.assertEquals(resp.getStatus(),'available with notices');
    Test.stopTest();
  }
  
  /**
   *  Test Query documents in multiple collections.
   *
   */
  static testMethod void testFederatedQuery() {
    String body=IBMWatsonMockResponses.queryResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.FederatedQueryOptions options = new DiscoveryV1Models.FederatedQueryOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionIds(collectionIds)
      .build();
    DiscoveryV1Models.QueryResponse resp = 
      discovery.federatedQuery(options);
    system.assertEquals(resp.getResults().size(),1);
    Test.stopTest();
  }
  
  /**
   *  Test query multiple collection system notices
   *
   */
  static testMethod void testFederatedQueryNotices() {
    String body=IBMWatsonMockResponses.queryNoticesResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.FederatedQueryNoticesOptions options = new DiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionIds(collectionIds)
      .build();
    DiscoveryV1Models.QueryNoticesResponse resp = 
      discovery.federatedQueryNotices(options);
    system.assertEquals(resp.getResults().size(),1);
    Test.stopTest();
  }
  
  /**
   *  Test Query documents in single collection.
   *
   */
  static testMethod void testQuery() {
    String body=IBMWatsonMockResponses.queryResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.QueryOptions options = new DiscoveryV1Models.QueryOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    DiscoveryV1Models.QueryResponse resp = 
      discovery.query(options);
    system.assertEquals(resp.getResults().size(),1);
    Test.stopTest();
  }
  
  /**
   *  Test query collection system notices
   *
   */
  static testMethod void testQueryNotices() {
    String body=IBMWatsonMockResponses.queryNoticesResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.QueryNoticesOptions options = new DiscoveryV1Models.QueryNoticesOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    DiscoveryV1Models.QueryNoticesResponse resp = 
      discovery.queryNotices(options);
    system.assertEquals(resp.getResults().size(),1);
    Test.stopTest();
  }
  
  
  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  static testMethod void testAddTrainingData() {
    String body=IBMWatsonMockResponses.trainingQuery();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.AddTrainingDataOptions options = new DiscoveryV1Models.AddTrainingDataOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .naturalLanguageQuery('en')
      .filter('test')
      .build();
    DiscoveryV1Models.TrainingQuery resp = 
      discovery.addTrainingData(options);
    system.assertEquals(resp.getExamples().size(),1);
    Test.stopTest();
  }
  
  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  static testMethod void testCreateTrainingExample() {
    String body=IBMWatsonMockResponses.trainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.CreateTrainingExampleOptions options = new DiscoveryV1Models.CreateTrainingExampleOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('en')
      .documentId('test')
      .relevance(2)
      .crossReference('test')
      .build();
    DiscoveryV1Models.TrainingExample resp = 
      discovery.createTrainingExample(options);
    system.assertEquals(resp.getRelevance(),2);
    Test.stopTest();
  }
  
   /**
   *  Test delete training data for a collection
   *
   */
  static testMethod void testDeleteAllTrainingData() {
    String body='';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.DeleteAllTrainingDataOptions options = new DiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    discovery.deleteAllTrainingData(options);
    Test.stopTest();
  }
  
  /**
   *  Test delete training data and all associated examples from the training data set
   *
   */
  static testMethod void testDeleteTrainingData() {
    String body='';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.DeleteTrainingDataOptions options = new DiscoveryV1Models.DeleteTrainingDataOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    discovery.deleteTrainingData(options);
    Test.stopTest();
  }
  
   /**
   *  Test get training data
   *
   */
  static testMethod void testGetTrainingData() {
    String body=IBMWatsonMockResponses.trainingQuery();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null); 
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.GetTrainingDataOptions options = new DiscoveryV1Models.GetTrainingDataOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    DiscoveryV1Models.TrainingQuery resp = 
      discovery.getTrainingData(options);
    
    system.assertEquals(resp.getExamples().size(),1);
    system.assertEquals(resp.getFilter(),'string');
    Test.stopTest();
  }
  
  /**
   *  Test get training example
   *
   */
  static testMethod void testGetTrainingExample() {
    String body=IBMWatsonMockResponses.trainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.GetTrainingExampleOptions options = new DiscoveryV1Models.GetTrainingExampleOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    DiscoveryV1Models.TrainingExample resp = 
      discovery.getTrainingExample(options);
    
    system.assertEquals(resp.getRelevance(),2);
    Test.stopTest();
  }
  
  /**
   *  Test list training data
   *
   */
  static testMethod void testListTrainingData() {
    String body=IBMWatsonMockResponses.trainingDataSet();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null); 
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.ListTrainingDataOptions options = new DiscoveryV1Models.ListTrainingDataOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    DiscoveryV1Models.TrainingDataSet resp = 
      discovery.listTrainingData(options);
    
    system.assertEquals(resp.getQueries()[0].getExamples().size(),1);
    system.assertEquals(resp.getQueries()[0].getFilter(),'string');
    Test.stopTest();
  }
  
  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  static testMethod void testUpdateTrainingExample() {
    String body=IBMWatsonMockResponses.trainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.UpdateTrainingExampleOptions options = new DiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('en')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .relevance(2)
      .crossReference('test')
      .build();
    DiscoveryV1Models.TrainingExample resp = 
      discovery.updateTrainingExample(options);
    system.assertEquals(resp.getRelevance(),2);
    Test.stopTest();
  }
}