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
private class IBMDiscoveryV1Test {

  /**
   *  Test Successfully creating a new environment.
   *
   */
  static testMethod void testCreateEnvironment() {
    String body=IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    String text = 'test_environment';
    IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder()
      .name(text)
      .description('test_environment description')
      .build();
    IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    system.assertEquals(resp.getName(),'test_environment');
    system.assertEquals(resp.getIndexCapacity().getDocuments().getIndexed(),0);
    system.assertEquals(resp.getIndexCapacity().getDocuments().getMaximumAllowed(),1000000);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getUsedBytes(),0);
    system.assertEquals(resp.getIndexCapacity().getDiskUsage().getMaximumAllowedBytes(),99345920);
    resp.setName('test');
    resp.setDescription('test');
    resp.setSize(100);
    IBMDiscoveryV1Models.IndexCapacity indexCapacity = new IBMDiscoveryV1Models.IndexCapacity();
    IBMDiscoveryV1Models.EnvironmentDocuments environmentDocuments = new IBMDiscoveryV1Models.EnvironmentDocuments();
    indexCapacity.setDocuments(environmentDocuments);
    IBMDiscoveryV1Models.DiskUsage diskUsage = new IBMDiscoveryV1Models.DiskUsage();
    indexCapacity.setDiskUsage(diskUsage);
    IBMDiscoveryV1Models.MemoryUsage memoryUsage = new IBMDiscoveryV1Models.MemoryUsage();
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    try {
      String text = '';
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder()
        .name(text)
        .description('test_environment description')
        .build();
      IBMDiscoveryV1Models.Environment resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    String text = 'test_environment';
    IBMDiscoveryV1Models.ListEnvironmentsOptions options = new IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder()
      .name(text)
      .build();
    IBMDiscoveryV1Models.ListEnvironmentsResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    IBMDiscoveryV1Models.DeleteEnvironmentOptions options = new IBMDiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    try {
      String text = '';
      IBMDiscoveryV1Models.DeleteEnvironmentOptions options = new IBMDiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    IBMDiscoveryV1Models.GetEnvironmentOptions options = new IBMDiscoveryV1Models.GetEnvironmentOptionsBuilder()
      .environmentId(text)
      .build();
    IBMDiscoveryV1Models.Environment resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    try {
      IBMDiscoveryV1Models.GetEnvironmentOptions options = new IBMDiscoveryV1Models.GetEnvironmentOptionsBuilder()
        .environmentId(text)
        .build();
      IBMDiscoveryV1Models.Environment resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    //String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    IBMDiscoveryV1Models.UpdateEnvironmentOptions options = new IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .build();
    IBMDiscoveryV1Models.Environment resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    try{
      IBMDiscoveryV1Models.UpdateEnvironmentOptions options = new IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
        .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
        .name('')
        .description('test_environment description')
        .build();
      IBMDiscoveryV1Models.Environment resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.ListFieldsOptions options = new IBMDiscoveryV1Models.ListFieldsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionIds(collectionIds)
      .build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.Enrichment enrichment =new IBMDiscoveryV1Models.Enrichment();
    enrichment.setDescription('test Description');
    IBMDiscoveryV1Models.NormalizationOperation normalizationOperation =new IBMDiscoveryV1Models.NormalizationOperation();
    normalizationOperation.setOperation('test operation');
    IBMDiscoveryV1Models.Conversions conversions =new IBMDiscoveryV1Models.Conversions();
    IBMDiscoveryV1Models.PdfSettings pdfSettings =new IBMDiscoveryV1Models.PdfSettings();
    IBMDiscoveryV1Models.PdfHeadingDetection pdfHeadingDetection =new IBMDiscoveryV1Models.PdfHeadingDetection();
    IBMDiscoveryV1Models.FontSetting fontSetting =new IBMDiscoveryV1Models.FontSetting();
    fontSetting.setLevel(1);
    fontSetting.setMinSize(4);
    fontSetting.setMaxSize(10);
    fontSetting.setBold(true);
    fontSetting.setItalic(true);
    fontSetting.setName('ariel');
    List<IBMDiscoveryV1Models.FontSetting> fontSettings=new List<IBMDiscoveryV1Models.FontSetting>{fontSetting};
    pdfHeadingDetection.setFonts(fontSettings);
    pdfSettings.setHeading(pdfHeadingDetection);
    conversions.setPdf(pdfSettings);
    IBMDiscoveryV1Models.CreateConfigurationOptions options = new IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .addEnrichments(enrichment)
      .enrichments(new List<IBMDiscoveryV1Models.Enrichment>{enrichment})
      .addNormalizations(normalizationOperation)
      .normalizations(new List<IBMDiscoveryV1Models.NormalizationOperation>{normalizationOperation})
      .conversions(conversions)
      .build();
    IBMDiscoveryV1Models.Configuration resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    try {
      IBMDiscoveryV1Models.CreateConfigurationOptions options = new IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder()
        .name('test_environment')
        .description('test_environment description')
        .build();
      IBMDiscoveryV1Models.Configuration resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.DeleteConfigurationOptions options = new IBMDiscoveryV1Models.DeleteConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.GetConfigurationOptions options = new IBMDiscoveryV1Models.GetConfigurationOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.Configuration resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.ListConfigurationsOptions options = new IBMDiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.ListConfigurationsResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.UpdateConfigurationOptions options = new IBMDiscoveryV1Models.UpdateConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.Configuration resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    try {
      IBMDiscoveryV1Models.UpdateConfigurationOptions options = new IBMDiscoveryV1Models.UpdateConfigurationOptionsBuilder()
        .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
        .name('test_environment')
        .description('test_environment description')
        .build();
      IBMDiscoveryV1Models.Configuration resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.CreateCollectionOptions options = new IBMDiscoveryV1Models.CreateCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .language('de')
      .build();
    IBMDiscoveryV1Models.Collection resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.DeleteCollectionOptions options = new IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.GetCollectionOptions options = new IBMDiscoveryV1Models.GetCollectionOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.Collection resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.ListCollectionsOptions options = new IBMDiscoveryV1Models.ListCollectionsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.ListCollectionsResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.UpdateCollectionOptions options = new IBMDiscoveryV1Models.UpdateCollectionOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .build();
    IBMDiscoveryV1Models.Collection resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    try {
      IBMDiscoveryV1Models.UpdateCollectionOptions options = new IBMDiscoveryV1Models.UpdateCollectionOptionsBuilder()
        .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
        .name('test_environment')
        .description('test_environment description')
        .build();
      IBMDiscoveryV1Models.Collection resp =
        discovery.updateCollection(options);
    }
    catch(Exception exptn) {
      system.assertEquals(exptn.getMessage(),'collection_id_serialized_name cannot be empty');
    }
    Test.stopTest();
  }

  /**
   *  Test list fields in a single collection. (IBMDiscoveryV1.listCollectionFields)
   *
   */
  static testMethod void testListCollectionFields() {
    String body=IBMWatsonMockResponses.listCollectionFieldsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.ListCollectionFieldsOptions options = new IBMDiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.DeleteDocumentOptions options = new IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.GetDocumentStatusOptions options = new IBMDiscoveryV1Models.GetDocumentStatusOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .documentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.DocumentStatus resp =
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
    IBMDiscoveryV1Models.Notice notice=new IBMDiscoveryV1Models.Notice();
    resp.setNotices(new List<IBMDiscoveryV1Models.Notice>{notice});
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.FederatedQueryOptions options = new IBMDiscoveryV1Models.FederatedQueryOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionIds(collectionIds)
      .returnField(collectionIds)
      .sortField(collectionIds)
      .build();
    IBMDiscoveryV1Models.QueryResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.FederatedQueryNoticesOptions options = new IBMDiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
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
    IBMDiscoveryV1Models.QueryNoticesResponse resp =
      discovery.federatedQueryNotices(options);
    system.assertEquals(resp.getResults().size(),1);
  //  system.assertEquals(resp.getResults()[0].getId(),'030ba125-29db-43f2-8552-f941ae30a7a8');
    resp.setMatchingResults(4);
    IBMDiscoveryV1Models.QueryNoticesResult queryNoticesResult=new IBMDiscoveryV1Models.QueryNoticesResult();
    queryNoticesResult.setId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    queryNoticesResult.setScore(2);
    IBMWatsonMapModel mapModel=new IBMWatsonMapModel();
    mapModel.put('key','value');
    queryNoticesResult.setMetadata(mapModel);
    queryNoticesResult.setCollectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    resp.setResults(new List<IBMDiscoveryV1Models.QueryNoticesResult>{queryNoticesResult});
    IBMDiscoveryV1Models.QueryAggregation queryAggregation=new IBMDiscoveryV1Models.QueryAggregation();
    queryAggregation.setType('test');
    queryAggregation.setField('test');
    queryAggregation.setMatch('test');
    queryAggregation.setMatchingResults(4);
    IBMDiscoveryV1Models.AggregationResult aggregationResult=new IBMDiscoveryV1Models.AggregationResult();
    aggregationResult.setKey('test');
    aggregationResult.setMatchingResults(3);
    aggregationResult.setAggregations(null);//new List<IBMDiscoveryV1Models.QueryAggregation>{queryAggregation});
    queryAggregation.setResults(new List<IBMDiscoveryV1Models.AggregationResult>{aggregationResult});
    resp.setAggregations(new List<IBMDiscoveryV1Models.QueryAggregation>{queryAggregation});
    IBMDiscoveryV1Models.QueryPassages queryPassages=new IBMDiscoveryV1Models.QueryPassages();
    queryPassages.setDocumentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    queryPassages.setPassageText('test');
    queryPassages.setField('test');
    queryPassages.setPassageScore(2);
    queryPassages.setStartOffset(2);
    queryPassages.setEndOffset(2);
    resp.setPassages(new List<IBMDiscoveryV1Models.QueryPassages>{queryPassages});
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.QueryOptions options = new IBMDiscoveryV1Models.QueryOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .returnField(collectionIds)
      .sortField(collectionIds)
      .passagesFields(collectionIds)
      .build();
    IBMDiscoveryV1Models.QueryResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.QueryNoticesOptions options = new IBMDiscoveryV1Models.QueryNoticesOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .returnField(collectionIds)
      .sortField(collectionIds)
      .passagesFields(collectionIds)
      .build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.TrainingExample te=new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('string');
    te.setCrossReference('string');
    te.setRelevance(0);
    IBMDiscoveryV1Models.AddTrainingDataOptions options = new IBMDiscoveryV1Models.AddTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .naturalLanguageQuery('en')
      .filter('test')
      .addExamples(te)
      .examples(new List<IBMDiscoveryV1Models.TrainingExample>{te})
      .build();
    IBMDiscoveryV1Models.TrainingQuery resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.TrainingExample te=new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('string');
    te.setCrossReference('string');
    te.setRelevance(0);
    IBMDiscoveryV1Models.CreateTrainingExampleOptions options = new IBMDiscoveryV1Models.CreateTrainingExampleOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('en')
      .training_example(te)
      .documentId('test')
      .relevance(2)
      .crossReference('test')
      .build();
    IBMDiscoveryV1Models.TrainingExample resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.DeleteAllTrainingDataOptions options = new IBMDiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.DeleteTrainingDataOptions options = new IBMDiscoveryV1Models.DeleteTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.GetTrainingDataOptions options = new IBMDiscoveryV1Models.GetTrainingDataOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.TrainingQuery resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.GetTrainingExampleOptions options = new IBMDiscoveryV1Models.GetTrainingExampleOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.TrainingExample resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.ListTrainingDataOptions options = new IBMDiscoveryV1Models.ListTrainingDataOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    IBMDiscoveryV1Models.TrainingDataSet resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.UpdateTrainingExampleOptions options = new IBMDiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('en')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .relevance(2)
      .crossReference('test')
      .build();
    IBMDiscoveryV1Models.TrainingExample resp =
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
    IBMDiscoveryV1Models.Collection resp =new IBMDiscoveryV1Models.Collection();
    //set the value
    resp.setName('test-collection');
    resp.setConfigurationId('3c4fff84-1500-455c-b125-eaa2d319f6d3');
    resp.setLanguage('de');
    resp.setDescription('A test collection to show as an example');
    IBMDiscoveryV1Models.DocumentCounts dc=new IBMDiscoveryV1Models.DocumentCounts();
    resp.setDocumentCounts(dc);
    IBMDiscoveryV1Models.CollectionDiskUsage cdu=new IBMDiscoveryV1Models.CollectionDiskUsage();
    resp.setDiskUsage(cdu);
    IBMDiscoveryV1Models.TrainingStatus ts=new IBMDiscoveryV1Models.TrainingStatus();
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
    IBMDiscoveryV1Models.Configuration configuration =new IBMDiscoveryV1Models.Configuration();
    //set the value
    configuration.setName('test-collection');
    configuration.setDescription('A test collection to show as an example');
    IBMDiscoveryV1Models.Conversions conversions =new IBMDiscoveryV1Models.Conversions();
    IBMDiscoveryV1Models.PdfSettings pdfSettings =new IBMDiscoveryV1Models.PdfSettings();
    IBMDiscoveryV1Models.PdfHeadingDetection pdfHeadingDetection =new IBMDiscoveryV1Models.PdfHeadingDetection();
    IBMDiscoveryV1Models.FontSetting fontSetting =new IBMDiscoveryV1Models.FontSetting();
    fontSetting.setLevel(1);
    fontSetting.setMinSize(4);
    fontSetting.setMaxSize(10);
    fontSetting.setBold(true);
    fontSetting.setItalic(true);
    fontSetting.setName('ariel');
    List<IBMDiscoveryV1Models.FontSetting> fontSettings=new List<IBMDiscoveryV1Models.FontSetting>{fontSetting};
    pdfHeadingDetection.setFonts(fontSettings);
    pdfSettings.setHeading(pdfHeadingDetection);
    conversions.setPdf(pdfSettings);
    IBMDiscoveryV1Models.WordSettings wordSettings =new IBMDiscoveryV1Models.WordSettings();
    IBMDiscoveryV1Models.WordHeadingDetection wordHeadingDetection =new IBMDiscoveryV1Models.WordHeadingDetection();
    IBMDiscoveryV1Models.WordStyle wordStyle =new IBMDiscoveryV1Models.WordStyle();
    wordStyle.setLevel(1);
    wordStyle.setNames(new List<String>{'Style1','Style2'});
    List<IBMDiscoveryV1Models.WordStyle> wordStyles=new List<IBMDiscoveryV1Models.WordStyle>{wordStyle};
    wordHeadingDetection.setFonts(fontSettings);
    wordHeadingDetection.setStyles(wordStyles);
    wordSettings.setHeading(wordHeadingDetection);
    conversions.setWord(wordSettings);
    IBMDiscoveryV1Models.HtmlSettings htmlSettings =new IBMDiscoveryV1Models.HtmlSettings();
    htmlSettings.setExcludeTagsCompletely(new List<String>{'Tag1','Tag2'});
    htmlSettings.setExcludeTagsKeepContent(new List<String>{'KeepCntent1','KeepCntent2'});
    htmlSettings.setKeepTagAttributes(new List<String>{'ExAtt1'});
    htmlSettings.setExcludeTagAttributes(new List<String>{'KeepAtt'});
    IBMDiscoveryV1Models.XPathPatterns xPathPatterns =new IBMDiscoveryV1Models.XPathPatterns();
    xPathPatterns.setXpaths(new List<String>{'xpath1'});
    htmlSettings.setKeepContent(xPathPatterns);
    htmlSettings.setExcludeContent(xPathPatterns);
    conversions.setHtml(htmlSettings);
    IBMDiscoveryV1Models.NormalizationOperation normalizationOperation =new IBMDiscoveryV1Models.NormalizationOperation();
    normalizationOperation.setOperation('test operation');
    normalizationOperation.setSourceField('test source');
    normalizationOperation.setDestinationField('test destination');
    conversions.setJsonNormalizations(new List<IBMDiscoveryV1Models.NormalizationOperation>{normalizationOperation});
    configuration.setConversions(conversions);
    IBMDiscoveryV1Models.Enrichment enrichment =new IBMDiscoveryV1Models.Enrichment();
    enrichment.setDescription('test Description');
    enrichment.setDestinationField('test Description');
    enrichment.setSourceField('test Description');
    enrichment.setOverwrite(true);
    enrichment.setEnrichment('test Description');
    enrichment.setIgnoreDownstreamErrors(true);
    IBMDiscoveryV1Models.EnrichmentOptions enrichmentOptions =new IBMDiscoveryV1Models.EnrichmentOptions();
    enrichmentOptions.setExtract(new List<String>{'Extract1','Extract2'});
    enrichmentOptions.setSentiment(true);
    enrichmentOptions.setQuotations(true);
    enrichmentOptions.setShowSourceText(true);
    enrichmentOptions.setHierarchicalTypedRelations(true);
    enrichmentOptions.setModel('test');
    enrichmentOptions.setLanguage('test');
    enrichment.setOptions(enrichmentOptions);
    configuration.setEnrichments(new List<IBMDiscoveryV1Models.Enrichment>{enrichment});
    configuration.setNormalizations(new List<IBMDiscoveryV1Models.NormalizationOperation>{normalizationOperation});
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.CreateConfigurationOptions options = new IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .configuration(configuration)
      .build();
    IBMDiscoveryV1Models.Configuration resp =
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
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    IBMDiscoveryV1Models.DeleteTrainingExampleOptions options = new IBMDiscoveryV1Models.DeleteTrainingExampleOptionsBuilder('test','test','test','test')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    discovery.deleteTrainingExample(options);
  //  system.assertEquals(resp.status,'deleted');
    Test.stopTest();
  }
  
  /**
   *  Add a document.
   *
   * then test using testGetDocumentStatus if document is loaded successfully 
   */
  /*static testMethod void testAddDocument() {
    String body=IBMWatsonMockResponses.documentAccepted();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    //EncodingUtil.base64Encode(B)
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
      .body(Blob.valueOf('test string'))
      .name('test.txt')
      .description('test description')
      .contentType('text/plain')
      .build();
    IBMDiscoveryV1Models.AddDocumentOptions options = new IBMDiscoveryV1Models.AddDocumentOptionsBuilder()
      .environmentId('environment_id')
      .collectionId('collection_id')
      .file(testfile)
      .filename('test.txt')
      .fileContentType('text/plain')
      .build();
    IBMDiscoveryV1Models.DocumentAccepted resp =
      discovery.addDocument(options);
    system.assertEquals(resp.getDocumentId(),'f1360220-ea2d-4271-9d62-89a910b13c37');
    system.assertEquals(resp.getStatus(),'processing');
    Test.stopTest();
  }*/
}