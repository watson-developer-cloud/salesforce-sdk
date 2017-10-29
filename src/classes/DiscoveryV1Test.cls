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
    system.assertEquals(resp.getIndexCapacity().getDocuments().getIndexed(),0);
    system.assertEquals(resp.getIndexCapacity().getDocuments().getMaximumAllowed(),1000000);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getUsedBytes(),0);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getMaximumAllowedBytes(),99345920);
    resp.setName('test');
    resp.setDescription('test');
    resp.setSize(100);
    DiscoveryV1Models.IndexCapacity indexCapacity = new DiscoveryV1Models.IndexCapacity();
    DiscoveryV1Models.EnvironmentDocuments environmentDocuments = new DiscoveryV1Models.EnvironmentDocuments();
    indexCapacity.setDocuments(environmentDocuments);
    DiscoveryV1Models.DiskUsage diskUsage = new DiscoveryV1Models.DiskUsage();
    indexCapacity.setDiskUsage(diskUsage);
    DiscoveryV1Models.MemoryUsage memoryUsage = new DiscoveryV1Models.MemoryUsage();
    indexCapacity.setMemoryUsage(memoryUsage);
    resp.setIndexCapacity(indexCapacity);
    system.assertEquals(resp.getDescription(),'test');
    system.assertEquals(resp.getSize(),100);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getTotalBytes(),null);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getUsed(),null);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getTotal(),null);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getPercentUsed(),null);
    system.assertEquals(resp.getIndexCapacity().getMemoryUsage().getUsedBytes(),null);
    system.assertEquals(resp.getIndexCapacity().getMemoryUsage().getTotalBytes(),null);
    system.assertEquals(resp.getIndexCapacity().getMemoryUsage().getUsed(),null);
    system.assertEquals(resp.getIndexCapacity().getMemoryUsage().getTotal(),null);
    system.assertEquals(resp.getIndexCapacity().getMemoryUsage().getPercentUsed(),null);

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
      system.assertEquals(exptn.getMessage(),'environment_id_serialized_name cannot be empty');

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
    DiscoveryV1Models.Enrichment enrichment =new DiscoveryV1Models.Enrichment();
    enrichment.setDescription('test Description');
    DiscoveryV1Models.NormalizationOperation normalizationOperation =new DiscoveryV1Models.NormalizationOperation();
    normalizationOperation.setOperation('test operation');
    DiscoveryV1Models.Conversions conversions =new DiscoveryV1Models.Conversions();
    DiscoveryV1Models.PdfSettings pdfSettings =new DiscoveryV1Models.PdfSettings();
    DiscoveryV1Models.PdfHeadingDetection pdfHeadingDetection =new DiscoveryV1Models.PdfHeadingDetection();
    DiscoveryV1Models.FontSetting fontSetting =new DiscoveryV1Models.FontSetting();
    fontSetting.setLevel(1);
    fontSetting.setMinSize(4);
    fontSetting.setMaxSize(10);
    fontSetting.setBold(true);
    fontSetting.setItalic(true);
    fontSetting.setName('ariel');
    List<DiscoveryV1Models.FontSetting> fontSettings=new List<DiscoveryV1Models.FontSetting>{fontSetting};
    pdfHeadingDetection.setFonts(fontSettings);
    pdfSettings.setHeading(pdfHeadingDetection);
    conversions.setPdf(pdfSettings);
    DiscoveryV1Models.CreateConfigurationOptions options = new DiscoveryV1Models.CreateConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .addEnrichments(enrichment)
      .enrichments(new List<DiscoveryV1Models.Enrichment>{enrichment})
      .addNormalizations(normalizationOperation)
      .normalizations(new List<DiscoveryV1Models.NormalizationOperation>{normalizationOperation})
      .conversions(conversions)
      .build();
    DiscoveryV1Models.Configuration resp =
      discovery.createConfiguration(options);
    system.assertEquals(resp.getName(),'IBM News');
    system.assertEquals(resp.getConfigurationId(),'448e3545-51ca-4530-a03b-6ff282ceac2e');
    system.assertEquals(resp.getCreated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    system.assertEquals(resp.getUpdated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
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
      system.assertEquals(exptn.getMessage(),'environment_id_serialized_name cannot be empty');
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
    DiscoveryV1Models.DeleteConfigurationOptions options = new DiscoveryV1Models.DeleteConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
      system.assertEquals(exptn.getMessage(),'configuration_id_serialized_name cannot be empty');
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
    DiscoveryV1Models.CreateCollectionOptions options = new DiscoveryV1Models.CreateCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .language('de')
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
    DiscoveryV1Models.DeleteCollectionOptions options = new DiscoveryV1Models.DeleteCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
      system.assertEquals(exptn.getMessage(),'collection_id_serialized_name cannot be empty');
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
    DiscoveryV1Models.DeleteDocumentOptions options = new DiscoveryV1Models.DeleteDocumentOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    system.assertEquals(resp.getDocumentId(),'f1360220-ea2d-4271-9d62-89a910b13c37');
    system.assertEquals(resp.getConfigurationId(),'e8b9d793-b163-452a-9373-bce07efb510b');
    system.assertEquals(resp.getCreated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    system.assertEquals(resp.getUpdated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    system.assertEquals(resp.getStatusDescription(),'Document is successfully ingested but was indexed with warnings');
    system.assertEquals(resp.getFilename(),'instructions.html');
    system.assertEquals(resp.getFileType(),'html');
    system.assertEquals(resp.getSha1(),'de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3');
    system.assertEquals(resp.getNotices()[0].getNoticeId(),'index_342');
    system.assertEquals(resp.getNotices()[0].getSeverity(),'warning');
    system.assertEquals(resp.getNotices()[0].getStep(),'indexing');
    system.assertEquals(resp.getNotices()[0].getDescription(),'something bad happened');
    system.assertEquals(resp.getNotices()[0].getDocumentId(),'f1360220-ea2d-4271-9d62-89a910b13c37');
    system.assertEquals(resp.getNotices()[0].getCreated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    resp.setFilename('instructions1.html');
    resp.setFileType('html');
    resp.setSha1('de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3');
    DiscoveryV1Models.Notice notice=new DiscoveryV1Models.Notice();
    resp.setNotices(new List<DiscoveryV1Models.Notice>{notice});
    system.assertEquals(resp.getFilename(),'instructions1.html');
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
      .returnField(collectionIds)
      .sortField(collectionIds)
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
      .addCollectionIds('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionIds(collectionIds)
      .addReturn('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .addSort('asc')
      .filter('test')
      .query('test')
      .naturalLanguageQuery('test')
      .aggregation('test')
      .count(10)
      .returnField(new List<String>{'test'})
      .offset(10)
      .sortField(new List<String>{'test'})
      .highlight(true)
      .deduplicateField('test')
      .build();
    DiscoveryV1Models.QueryNoticesResponse resp =
      discovery.federatedQueryNotices(options);
    system.assertEquals(resp.getResults().size(),1);
  //  system.assertEquals(resp.getResults()[0].getId(),'030ba125-29db-43f2-8552-f941ae30a7a8');
    resp.setMatchingResults(4);
    DiscoveryV1Models.QueryNoticesResult queryNoticesResult=new DiscoveryV1Models.QueryNoticesResult();
    queryNoticesResult.setId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    queryNoticesResult.setScore(2);
    queryNoticesResult.setMetadata(new Map<String, String>{'key'=>'value'});
    queryNoticesResult.setCollectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    resp.setResults(new List<DiscoveryV1Models.QueryNoticesResult>{queryNoticesResult});
    DiscoveryV1Models.QueryAggregation queryAggregation=new DiscoveryV1Models.QueryAggregation();
    queryAggregation.setType('test');
    queryAggregation.setField('test');
    queryAggregation.setMatch('test');
    queryAggregation.setMatchingResults(4);
    DiscoveryV1Models.AggregationResult aggregationResult=new DiscoveryV1Models.AggregationResult();
    aggregationResult.setKey('test');
    aggregationResult.setMatchingResults(3);
    aggregationResult.setAggregations(null);//new List<DiscoveryV1Models.QueryAggregation>{queryAggregation});
    queryAggregation.setResults(new List<DiscoveryV1Models.AggregationResult>{aggregationResult});
    resp.setAggregations(new List<DiscoveryV1Models.QueryAggregation>{queryAggregation});
    DiscoveryV1Models.QueryPassages queryPassages=new DiscoveryV1Models.QueryPassages();
    queryPassages.setDocumentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    queryPassages.setPassageText('test');
    queryPassages.setField('test');
    queryPassages.setPassageScore(2);
    queryPassages.setStartOffset(2);
    queryPassages.setEndOffset(2);
    resp.setPassages(new List<DiscoveryV1Models.QueryPassages>{queryPassages});
    resp.setDuplicatesRemoved(2);
    system.assertEquals(resp.getMatchingResults(),4);
    system.assertEquals(resp.getResults()[0].getCollectionId(),'5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    system.assertEquals(resp.getAggregations()[0].getType(),'test');
    system.assertEquals(resp.getPassages()[0].getField(),'test');
    system.assertEquals(resp.getDuplicatesRemoved(),2);
    system.assertEquals(queryNoticesResult.getId(),'5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    system.assertEquals(queryNoticesResult.getScore(),2);
    system.assertEquals(queryNoticesResult.getMetadata().get('key'),'value');
    system.assertEquals(queryNoticesResult.getCollectionId(),'5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    system.assertEquals(queryAggregation.getResults()[0].getKey(),'test');
    system.assertEquals(aggregationResult.getMatchingResults(),3);
    system.assertEquals(aggregationResult.getAggregations(),null);
    system.assertEquals(queryAggregation.getType(),'test');
    system.assertEquals(queryAggregation.getField(),'test');
    system.assertEquals(queryAggregation.getMatch(),'test');
    system.assertEquals(queryAggregation.getMatchingResults(),4);
    system.assertEquals(queryPassages.getDocumentId(),'5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    system.assertEquals(queryPassages.getPassageText(),'test');
    system.assertEquals(queryPassages.getField(),'test');
    system.assertEquals(queryPassages.getPassageScore(),2);
    system.assertEquals(queryPassages.getStartOffset(),2);
    system.assertEquals(queryPassages.getEndOffset(),2);
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
      .returnField(collectionIds)
      .sortField(collectionIds)
      .passagesFields(collectionIds)
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
      .returnField(collectionIds)
      .sortField(collectionIds)
      .passagesFields(collectionIds)
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
    DiscoveryV1Models.TrainingExample te=new DiscoveryV1Models.TrainingExample();
    te.setDocumentId('string');
    te.setCrossReference('string');
    te.setRelevance(0);
    DiscoveryV1Models.AddTrainingDataOptions options = new DiscoveryV1Models.AddTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .naturalLanguageQuery('en')
      .filter('test')
      .addExamples(te)
      .examples(new List<DiscoveryV1Models.TrainingExample>{te})
      .build();
    DiscoveryV1Models.TrainingQuery resp =
      discovery.addTrainingData(options);
    system.assertEquals(resp.getExamples().size(),1);
    system.assertEquals(resp.getExamples()[0].getDocumentId(),'string');
    system.assertEquals(resp.getExamples()[0].getCrossReference(),'string');
    system.assertEquals(resp.getExamples()[0].getRelevance(),0);

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
    DiscoveryV1Models.TrainingExample te=new DiscoveryV1Models.TrainingExample();
    te.setDocumentId('string');
    te.setCrossReference('string');
    te.setRelevance(0);
    DiscoveryV1Models.CreateTrainingExampleOptions options = new DiscoveryV1Models.CreateTrainingExampleOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('en')
      .training_example(te)
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
    DiscoveryV1Models.DeleteAllTrainingDataOptions options = new DiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    DiscoveryV1Models.DeleteTrainingDataOptions options = new DiscoveryV1Models.DeleteTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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

  /**
   *  Test  collection model
   *
   */
  static testMethod void testCollectionModel() {
    Test.startTest();
    DiscoveryV1Models.Collection resp =new DiscoveryV1Models.Collection();
    //set the value
    resp.setName('test-collection');
    resp.setConfigurationId('3c4fff84-1500-455c-b125-eaa2d319f6d3');
    resp.setLanguage('de');
    resp.setDescription('A test collection to show as an example');
    DiscoveryV1Models.DocumentCounts dc=new DiscoveryV1Models.DocumentCounts();
    resp.setDocumentCounts(dc);
    DiscoveryV1Models.CollectionDiskUsage cdu=new DiscoveryV1Models.CollectionDiskUsage();
    resp.setDiskUsage(cdu);
    DiscoveryV1Models.TrainingStatus ts=new DiscoveryV1Models.TrainingStatus();
    ts.setTotalExamples(0);
    ts.setAvailable(false);
    ts.setProcessing(false);
    ts.setMinimumQueriesAdded(false);
    ts.setMinimumExamplesAdded(false);
    ts.setSufficientLabelDiversity(false);
    ts.setNotices(0);
    ts.setSuccessfullyTrained(null);
    ts.setDataUpdated(null);
    resp.setTrainingStatus(ts);
    //test the returned values
    system.assertEquals(resp.getName(),'test-collection');
    system.assertEquals(resp.getConfigurationId(),'3c4fff84-1500-455c-b125-eaa2d319f6d3');
    system.assertEquals(resp.getLanguage(),'de');
    system.assertEquals(resp.getDescription(),'A test collection to show as an example');
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
   *  Test  configuration model
   *
   */
  static testMethod void testConfigurationModel() {
    String body=IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1Models.Configuration configuration =new DiscoveryV1Models.Configuration();
    //set the value
    configuration.setName('test-collection');
    configuration.setDescription('A test collection to show as an example');
    DiscoveryV1Models.Conversions conversions =new DiscoveryV1Models.Conversions();
    DiscoveryV1Models.PdfSettings pdfSettings =new DiscoveryV1Models.PdfSettings();
    DiscoveryV1Models.PdfHeadingDetection pdfHeadingDetection =new DiscoveryV1Models.PdfHeadingDetection();
    DiscoveryV1Models.FontSetting fontSetting =new DiscoveryV1Models.FontSetting();
    fontSetting.setLevel(1);
    fontSetting.setMinSize(4);
    fontSetting.setMaxSize(10);
    fontSetting.setBold(true);
    fontSetting.setItalic(true);
    fontSetting.setName('ariel');
    List<DiscoveryV1Models.FontSetting> fontSettings=new List<DiscoveryV1Models.FontSetting>{fontSetting};
    pdfHeadingDetection.setFonts(fontSettings);
    pdfSettings.setHeading(pdfHeadingDetection);
    conversions.setPdf(pdfSettings);
    DiscoveryV1Models.WordSettings wordSettings =new DiscoveryV1Models.WordSettings();
    DiscoveryV1Models.WordHeadingDetection wordHeadingDetection =new DiscoveryV1Models.WordHeadingDetection();
    DiscoveryV1Models.WordStyle wordStyle =new DiscoveryV1Models.WordStyle();
    wordStyle.setLevel(1);
    wordStyle.setNames(new List<String>{'Style1','Style2'});
    List<DiscoveryV1Models.WordStyle> wordStyles=new List<DiscoveryV1Models.WordStyle>{wordStyle};
    wordHeadingDetection.setFonts(fontSettings);
    wordHeadingDetection.setStyles(wordStyles);
    wordSettings.setHeading(wordHeadingDetection);
    conversions.setWord(wordSettings);
    DiscoveryV1Models.HtmlSettings htmlSettings =new DiscoveryV1Models.HtmlSettings();
    htmlSettings.setExcludeTagsCompletely(new List<String>{'Tag1','Tag2'});
    htmlSettings.setExcludeTagsKeepContent(new List<String>{'KeepCntent1','KeepCntent2'});
    htmlSettings.setKeepTagAttributes(new List<String>{'ExAtt1'});
    htmlSettings.setExcludeTagAttributes(new List<String>{'KeepAtt'});
    DiscoveryV1Models.XPathPatterns xPathPatterns =new DiscoveryV1Models.XPathPatterns();
    xPathPatterns.setXpaths(new List<String>{'xpath1'});
    htmlSettings.setKeepContent(xPathPatterns);
    htmlSettings.setExcludeContent(xPathPatterns);
    conversions.setHtml(htmlSettings);
    DiscoveryV1Models.NormalizationOperation normalizationOperation =new DiscoveryV1Models.NormalizationOperation();
    normalizationOperation.setOperation('test operation');
    normalizationOperation.setSourceField('test source');
    normalizationOperation.setDestinationField('test destination');
    conversions.setJsonNormalizations(new List<DiscoveryV1Models.NormalizationOperation>{normalizationOperation});
    configuration.setConversions(conversions);
    DiscoveryV1Models.Enrichment enrichment =new DiscoveryV1Models.Enrichment();
    enrichment.setDescription('test Description');
    enrichment.setDestinationField('test Description');
    enrichment.setSourceField('test Description');
    enrichment.setOverwrite(true);
    enrichment.setEnrichment('test Description');
    enrichment.setIgnoreDownstreamErrors(true);
    DiscoveryV1Models.EnrichmentOptions enrichmentOptions =new DiscoveryV1Models.EnrichmentOptions();
    enrichmentOptions.setExtract(new List<String>{'Extract1','Extract2'});
    enrichmentOptions.setSentiment(true);
    enrichmentOptions.setQuotations(true);
    enrichmentOptions.setShowSourceText(true);
    enrichmentOptions.setHierarchicalTypedRelations(true);
    enrichmentOptions.setModel('test');
    enrichmentOptions.setLanguage('test');
    enrichment.setOptions(enrichmentOptions);
    configuration.setEnrichments(new List<DiscoveryV1Models.Enrichment>{enrichment});
    configuration.setNormalizations(new List<DiscoveryV1Models.NormalizationOperation>{normalizationOperation});
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    DiscoveryV1Models.CreateConfigurationOptions options = new DiscoveryV1Models.CreateConfigurationOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .configuration(configuration)
      .build();
    DiscoveryV1Models.Configuration resp =
      discovery.createConfiguration(options);
    system.assertEquals(resp.getName(),'IBM News');
    system.assertEquals(configuration.getName(),'test-collection');
    system.assertEquals(configuration.getDescription(),'A test collection to show as an example');
    system.assertEquals(configuration.getConversions().getPdf().getHeading().getFonts()[0].getLevel(),1);
    system.assertEquals(fontSetting.getMinSize(),4);
    system.assertEquals(fontSetting.getMaxSize(),10);
    system.assertEquals(fontSetting.getBold(),true);
    system.assertEquals(fontSetting.getItalic(),true);
    system.assertEquals(fontSetting.getName(),'ariel');
    system.assertEquals(configuration.getConversions().getWord().getHeading().getFonts()[0].getLevel(),1);
    system.assertEquals(configuration.getConversions().getWord().getHeading().getStyles()[0].getLevel(),1);
    system.assertEquals(configuration.getConversions().getWord().getHeading().getStyles()[0].getNames()[0],'Style1');
    system.assertEquals(configuration.getConversions().getHtml().getExcludeTagsCompletely()[0],'Tag1');
    system.assertEquals(configuration.getConversions().getHtml().getExcludeTagsKeepContent()[0],'KeepCntent1');
    system.assertEquals(configuration.getConversions().getHtml().getKeepTagAttributes()[0],'ExAtt1');
    system.assertEquals(configuration.getConversions().getHtml().getExcludeTagAttributes()[0],'KeepAtt');
    system.assertEquals(configuration.getConversions().getHtml().getKeepContent().getXpaths()[0],'xpath1');
    system.assertEquals(configuration.getConversions().getHtml().getExcludeContent().getXpaths()[0],'xpath1');
    system.assertEquals(configuration.getConversions().getJsonNormalizations()[0].getOperation(),'test operation');
    system.assertEquals(normalizationOperation.getSourceField(),'test source');
    system.assertEquals(normalizationOperation.getDestinationField(),'test destination');
    system.assertEquals(configuration.getNormalizations()[0].getOperation(),'test operation');
    system.assertEquals(configuration.getEnrichments()[0].getDescription(),'test Description');
    system.assertEquals(enrichment.getDestinationField(),'test Description');
    system.assertEquals(enrichment.getSourceField(),'test Description');
    system.assertEquals(enrichment.getOverwrite(),true);
    system.assertEquals(enrichment.getEnrichment(),'test Description');
    system.assertEquals(enrichment.getIgnoreDownstreamErrors(),true);
    system.assertEquals(enrichmentOptions.getSentiment(),true);
    system.assertEquals(enrichmentOptions.getQuotations(),true);
    system.assertEquals(enrichmentOptions.getShowSourceText(),true);
    system.assertEquals(enrichmentOptions.getHierarchicalTypedRelations(),true);
    system.assertEquals(enrichmentOptions.getModel(),'test');
    system.assertEquals(enrichmentOptions.getLanguage(),'test');
    system.assertEquals(enrichment.getOptions().getExtract()[0],'Extract1');
    Test.stopTest();
  }

  /**
   *  Test deleting the example with the given ID for the training data query.
   */
  static testMethod void testDeleteTrainingExample() {
    String body='';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    DiscoveryV1Models.DeleteTrainingExampleOptions options = new DiscoveryV1Models.DeleteTrainingExampleOptionsBuilder('test','test','test','test')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    discovery.deleteTrainingExample(options);
  //  system.assertEquals(resp.status,'deleted');
    Test.stopTest();
  }

}