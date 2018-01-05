@isTest
private class IBMDiscoveryV1Test {

  /**
   *  Test Successfully creating a new environment.
   *
   */
  static testMethod void testCreateEnvironment() {
    String body = IBMWatsonMockResponses.environment();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Environment resp =
      discovery.createEnvironment(options);
    System.assertEquals(resp.getName(), 'test_environment');
    System.assertEquals(resp.getIndexCapacity().getDocuments().getIndexed(), 0);
    System.assertEquals(resp.getIndexCapacity().getDocuments().getMaximumAllowed(), 1000000);
    System.assertEquals(resp.getIndexCapacity().getDiskUsage().getUsedBytes(), 0);
    System.assertEquals(resp.getIndexCapacity().getDiskUsage().getMaximumAllowedBytes(), 99345920);
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
    System.assertEquals(resp.getDescription(), 'test');
    System.assertEquals(resp.getSize(), 100);
    System.assertEquals(resp.getIndexCapacity().getDiskUsage().getTotalBytes(), null);
    System.assertEquals(resp.getIndexCapacity().getDiskUsage().getUsed(), null);
    System.assertEquals(resp.getIndexCapacity().getDiskUsage().getTotal(), null);
    System.assertEquals(resp.getIndexCapacity().getDiskUsage().getPercentUsed(), null);
    System.assertEquals(resp.getIndexCapacity().getMemoryUsage().getUsedBytes(), null);
    System.assertEquals(resp.getIndexCapacity().getMemoryUsage().getTotalBytes(), null);
    System.assertEquals(resp.getIndexCapacity().getMemoryUsage().getUsed(), null);
    System.assertEquals(resp.getIndexCapacity().getMemoryUsage().getTotal(), null);
    System.assertEquals(resp.getIndexCapacity().getMemoryUsage().getPercentUsed(), null);

    Test.stopTest();
  }


  /**
    *  Test error while creating a new environment with empty name.
    *
    */
  static testMethod void testCreateEnvironmentEmpty() {

    String body = IBMWatsonMockResponses.environment();
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
      System.assertEquals(exptn.getMessage(), 'createEnvironmentOptions cannot be null');

    }
    Test.stopTest();
  }


  /**
   *  Test listing the environments.
   *
   */
  static testMethod void testListEnvironment() {
    String body = IBMWatsonMockResponses.listEnvironmentsResponse();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.ListEnvironmentsResponse resp =
      discovery.listEnvironments(options);

    System.assertEquals(resp.getEnvironments().size(), 2);
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    discovery.deleteEnvironment(options);
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
      System.assertEquals(exptn.getMessage(), 'environment_id_serialized_name cannot be empty');

    }
    Test.stopTest();
  }

  /**
   *  Test get the environment.
   *
   */
  static testMethod void testGetEnvironment() {
    String body = IBMWatsonMockResponses.environment();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Environment resp =
      discovery.getEnvironment(options);

    System.assertEquals(resp.getName(), 'test_environment');
    Test.stopTest();
  }

  /**
   *  Test get the environment error.
   *
   */
  static testMethod void testGetEnvironmentEmpty() {
    String body = IBMWatsonMockResponses.environment();
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
      System.assertEquals(exptn.getMessage(), 'getEnvironmentOptions cannot be null');
    }
    Test.stopTest();
  }

   /**
   *  Test update the environment.
   *
   */
  static testMethod void testUpdateEnvironment() {
    String body = IBMWatsonMockResponses.environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.UpdateEnvironmentOptions options = new IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Environment resp =
      discovery.updateEnvironment(options);
    System.assertEquals(resp.getName(), 'test_environment');
    Test.stopTest();
  }
  /**
   *  Test update the environment error.
   *
   */
  static testMethod void testUpdateEnvironmentEmpty() {
    String body = IBMWatsonMockResponses.environment();
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
      System.assertEquals(exptn.getMessage(), 'updateEnvironmentOptions cannot be null');
    }
    Test.stopTest();
  }

  /**
   *  Test list fields in a collection.
   *
   */
  static testMethod void testListCollectionsFields() {
    String body = IBMWatsonMockResponses.listCollectionFieldsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.ListFieldsOptions options = new IBMDiscoveryV1Models.ListFieldsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionIds(collectionIds)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp =
      discovery.listFields(options);
    System.assertEquals(resp.getFields().size(), 4);
    Test.stopTest();
  }

  /**
   *  Test create configuration
   *
   */
  static testMethod void testCreateConfiguration() {
    String body = IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.Enrichment enrichment = new IBMDiscoveryV1Models.Enrichment();
    enrichment.setDescription('test Description');
    IBMDiscoveryV1Models.NormalizationOperation normalizationOperation = new IBMDiscoveryV1Models.NormalizationOperation();
    normalizationOperation.setOperation('test operation');
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.Conversions();
    IBMDiscoveryV1Models.PdfSettings pdfSettings = new IBMDiscoveryV1Models.PdfSettings();
    IBMDiscoveryV1Models.PdfHeadingDetection pdfHeadingDetection = new IBMDiscoveryV1Models.PdfHeadingDetection();
    IBMDiscoveryV1Models.FontSetting fontSetting = new IBMDiscoveryV1Models.FontSetting();
    fontSetting.setLevel(1);
    fontSetting.setMinSize(4);
    fontSetting.setMaxSize(10);
    fontSetting.setBold(true);
    fontSetting.setItalic(true);
    fontSetting.setName('ariel');
    List<IBMDiscoveryV1Models.FontSetting> fontSettings= new List<IBMDiscoveryV1Models.FontSetting>{fontSetting};
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Configuration resp =
      discovery.createConfiguration(options);
    System.assertEquals(resp.getName(), 'IBM News');
    System.assertEquals(resp.getConfigurationId(), '448e3545-51ca-4530-a03b-6ff282ceac2e');
    System.assertEquals(resp.getCreated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    System.assertEquals(resp.getUpdated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    Test.stopTest();
  }

  /**
   *  Test create configuration validator error
   *
   */
  static testMethod void testCreateConfigurationEmpty() {
    String body = IBMWatsonMockResponses.configuration();
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
      System.assertEquals(exptn.getMessage(), 'environment_id_serialized_name cannot be empty');
    }
    Test.stopTest();
  }

  /**
   *  Test delete configuration
   *
   */
  static testMethod void testDeleteConfiguration() {
    String body = IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.DeleteConfigurationOptions options = new IBMDiscoveryV1Models.DeleteConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    discovery.deleteConfiguration(options);
    Test.stopTest();
  }

  /**
   *  Test get configuration
   *
   */
  static testMethod void testGetConfiguration() {
    String body = IBMWatsonMockResponses.configuration();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Configuration resp =
      discovery.getConfiguration(options);
    System.assertEquals(resp.getName(), 'IBM News');
    Test.stopTest();
  }

  /**
   *  Test list configurations
   *
   */
  static testMethod void testListConfigurations() {
    String body = IBMWatsonMockResponses.listConfigurationsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.ListConfigurationsOptions options = new IBMDiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.ListConfigurationsResponse resp =
      discovery.listConfigurations(options);
    System.assertEquals(resp.getConfigurations().size(), 1);
    Test.stopTest();
  }

  /**
   *  Test update configuration
   *
   */
  static testMethod void testUpdateConfiguration() {
    String body = IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.UpdateConfigurationOptions options = new IBMDiscoveryV1Models.UpdateConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Configuration resp =
      discovery.updateConfiguration(options);
    System.assertEquals(resp.getName(), 'IBM News');
    Test.stopTest();
  }

  /**
   *  Test update configuration validator error
   *
   */
  static testMethod void testUpdateConfigurationEmpty() {
    String body = IBMWatsonMockResponses.configuration();
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
      System.assertEquals(exptn.getMessage(), 'configuration_id_serialized_name cannot be empty');
    }
    Test.stopTest();
  }

  /**
   *  Test create collection
   *
   */
  static testMethod void testCreateCollection() {
    String body = IBMWatsonMockResponses.collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.CreateCollectionOptions options = new IBMDiscoveryV1Models.CreateCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .name('test_environment')
      .description('test_environment description')
      .language('de')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Collection resp =
      discovery.createCollection(options);
    System.assertEquals(resp.getName(), 'test-collection');
    Test.stopTest();
  }

  /**
   *  Test delete collection
   *
   */
  static testMethod void testDeleteCollection() {
    String body = IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.DeleteCollectionOptions options = new IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    discovery.deleteCollection(options);
    Test.stopTest();
  }

  /**
   *  Test get collection
   *
   */
  static testMethod void testGetCollection() {
    String body = IBMWatsonMockResponses.collection();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Collection resp =
      discovery.getCollection(options);
    System.assertEquals(resp.getName(), 'test-collection');
    System.assertEquals(resp.getCollectionId(), '800e58e4-198d-45eb-be87-74e1d6df4e96');
    System.assertEquals(resp.getCreated(),(DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    System.assertEquals(resp.getUpdated(),(DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    System.assertEquals(resp.getStatus(), 'active');
    System.assertEquals(resp.getConfigurationId(), '3c4fff84-1500-455c-b125-eaa2d319f6d3');
    System.assertEquals(resp.getLanguage(), 'de');
    System.assertEquals(resp.getDescription(), 'A test collection to show as an example');
    System.assertEquals(resp.getDocumentCounts().getAvailable(), 0);
    System.assertEquals(resp.getDocumentCounts().getProcessing(), 0);
    System.assertEquals(resp.getDocumentCounts().getFailed(), 0);
    System.assertEquals(resp.getDiskUsage().getUsedBytes(), 260);
    System.assertEquals(resp.getTrainingStatus().getTotalExamples(), 0);
    System.assertEquals(resp.getTrainingStatus().getAvailable(), false);
    System.assertEquals(resp.getTrainingStatus().getProcessing(), false);
    System.assertEquals(resp.getTrainingStatus().getMinimumQueriesAdded(), false);
    System.assertEquals(resp.getTrainingStatus().getMinimumExamplesAdded(), false);
    System.assertEquals(resp.getTrainingStatus().getSufficientLabelDiversity(), false);
    System.assertEquals(resp.getTrainingStatus().getNotices(), 0);
    System.assertEquals(resp.getTrainingStatus().getSuccessfullyTrained(), null);
    System.assertEquals(resp.getTrainingStatus().getDataUpdated(), null);
    Test.stopTest();
  }

  /**
   *  Test get trained collection
   *
   */
  static testMethod void testGetCollectionTrained() {
    String body = IBMWatsonMockResponses.collectionTrained();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Collection resp =
      discovery.getCollection(options);
    System.assertEquals(resp.getName(), 'test-collection');
    System.assertEquals(resp.getCollectionId(), '800e58e4-198d-45eb-be87-74e1d6df4e96');
    System.assertEquals(resp.getCreated(),(DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    System.assertEquals(resp.getUpdated(),(DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    System.assertEquals(resp.getStatus(), 'active');
    System.assertEquals(resp.getConfigurationId(), '3c4fff84-1500-455c-b125-eaa2d319f6d3');
    System.assertEquals(resp.getLanguage(), 'de');
    System.assertEquals(resp.getDescription(), 'A trained test collection to show as an example');
    System.assertEquals(resp.getDocumentCounts().getAvailable(), 0);
    System.assertEquals(resp.getDocumentCounts().getProcessing(), 0);
    System.assertEquals(resp.getDocumentCounts().getFailed(), 0);
    System.assertEquals(resp.getDiskUsage().getUsedBytes(), 260);
    System.assertEquals(resp.getTrainingStatus().getTotalExamples(), 10);
    System.assertEquals(resp.getTrainingStatus().getAvailable(), true);
    System.assertEquals(resp.getTrainingStatus().getProcessing(), false);
    System.assertEquals(resp.getTrainingStatus().getMinimumQueriesAdded(), true);
    System.assertEquals(resp.getTrainingStatus().getMinimumExamplesAdded(), true);
    System.assertEquals(resp.getTrainingStatus().getSufficientLabelDiversity(), true);
    System.assertEquals(resp.getTrainingStatus().getNotices(), 0);
    System.assertEquals(resp.getTrainingStatus().getSuccessfullyTrained(), (DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    System.assertEquals(resp.getTrainingStatus().getDataUpdated(), (DateTime)JSON.deserialize('"2017-07-14T12:55:40.652Z"',DateTime.class));
    Test.stopTest();
  }

  /**
   *  Test list collections
   *
   */
  static testMethod void testListCollections() {
    String body = IBMWatsonMockResponses.listCollectionsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMDiscoveryV1Models.ListCollectionsOptions options = new IBMDiscoveryV1Models.ListCollectionsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.ListCollectionsResponse resp =
      discovery.listCollections(options);
    System.assertEquals(resp.getCollections().size(), 1);
    Test.stopTest();
  }
  /**
   *  Test update collection
   *
   */
  static testMethod void testUpdateCollection() {
    String body = IBMWatsonMockResponses.collection();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Collection resp =
      discovery.updateCollection(options);
    System.assertEquals(resp.getName(), 'test-collection');
    Test.stopTest();
  }

  /**
   *  Test update collection validator error
   *
   */
  static testMethod void testUpdateCollectionEmpty() {
    String body = IBMWatsonMockResponses.collection();
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
      System.assertEquals(exptn.getMessage(), 'collection_id_serialized_name cannot be empty');
    }
    Test.stopTest();
  }

  /**
   *  Test list fields in a single collection. (IBMDiscoveryV1.listCollectionFields)
   *
   */
  static testMethod void testListCollectionFields() {
    String body = IBMWatsonMockResponses.listCollectionFieldsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.ListCollectionFieldsOptions options = new IBMDiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp =
      discovery.listCollectionFields(options);
    System.assertEquals(resp.getFields().size(), 4);
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
    IBMDiscoveryV1Models.DeleteDocumentOptions options = new IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .documentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    discovery.deleteDocument(options);
    Test.stopTest();
  }

  /**
   *  Test get document
   *
   */
  static testMethod void testGetDocumentStatus() {
    String body = IBMWatsonMockResponses.documentStatus();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.DocumentStatus resp =
      discovery.getDocumentStatus(options);
    System.assertEquals(resp.getStatus(), 'available with notices');
    System.assertEquals(resp.getDocumentId(), 'f1360220-ea2d-4271-9d62-89a910b13c37');
    System.assertEquals(resp.getConfigurationId(), 'e8b9d793-b163-452a-9373-bce07efb510b');
    System.assertEquals(resp.getCreated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    System.assertEquals(resp.getUpdated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    System.assertEquals(resp.getStatusDescription(), 'Document is successfully ingested but was indexed with warnings');
    System.assertEquals(resp.getFilename(), 'instructions.html');
    System.assertEquals(resp.getFileType(), 'html');
    System.assertEquals(resp.getSha1(), 'de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3');
    System.assertEquals(resp.getNotices()[0].getNoticeId(), 'index_342');
    System.assertEquals(resp.getNotices()[0].getSeverity(), 'warning');
    System.assertEquals(resp.getNotices()[0].getStep(), 'indexing');
    System.assertEquals(resp.getNotices()[0].getDescription(), 'something bad happened');
    System.assertEquals(resp.getNotices()[0].getDocumentId(), 'f1360220-ea2d-4271-9d62-89a910b13c37');
    System.assertEquals(resp.getNotices()[0].getCreated(),(DateTime)JSON.deserialize('"2015-08-24T18:42:25.324Z"',DateTime.class));
    resp.setFilename('instructions1.html');
    resp.setFileType('html');
    resp.setSha1('de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3');
    IBMDiscoveryV1Models.Notice notice= new IBMDiscoveryV1Models.Notice();
    resp.setNotices(new List<IBMDiscoveryV1Models.Notice>{notice});
    System.assertEquals(resp.getFilename(), 'instructions1.html');
    Test.stopTest();
  }

  /**
   *  Test Query documents in multiple collections.
   *
   */
  static testMethod void testFederatedQuery() {
    String body = IBMWatsonMockResponses.queryResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.FederatedQueryOptions options = new IBMDiscoveryV1Models.FederatedQueryOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionIds(collectionIds)
      .returnField(collectionIds)
      .sortField(collectionIds)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.QueryResponse resp =
      discovery.federatedQuery(options);
    System.assertEquals(resp.getResults().size(), 1);
    Test.stopTest();
  }

  /**
   *  Test query multiple collection system notices
   *
   */
  static testMethod void testFederatedQueryNotices() {
    String body = IBMWatsonMockResponses.queryNoticesResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp =
      discovery.federatedQueryNotices(options);
    System.assertEquals(resp.getResults().size(), 1);
    resp.setMatchingResults(4);
    IBMDiscoveryV1Models.QueryNoticesResult queryNoticesResult= new IBMDiscoveryV1Models.QueryNoticesResult();
    queryNoticesResult.setId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    queryNoticesResult.setScore(2);
    IBMWatsonMapModel mapModel= new IBMWatsonMapModel();
    mapModel.put('key', 'value');
    queryNoticesResult.setMetadata(mapModel);
    queryNoticesResult.setCollectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    resp.setResults(new List<IBMDiscoveryV1Models.QueryNoticesResult>{queryNoticesResult});
    IBMDiscoveryV1Models.QueryAggregation queryAggregation= new IBMDiscoveryV1Models.QueryAggregation();
    queryAggregation.setType('test');
    queryAggregation.setField('test');
    queryAggregation.setMatch('test');
    queryAggregation.setMatchingResults(4);
    IBMDiscoveryV1Models.AggregationResult aggregationResult= new IBMDiscoveryV1Models.AggregationResult();
    aggregationResult.setKey('test');
    aggregationResult.setMatchingResults(3);
    aggregationResult.setAggregations(null);
    queryAggregation.setResults(new List<IBMDiscoveryV1Models.AggregationResult>{aggregationResult});
    resp.setAggregations(new List<IBMDiscoveryV1Models.QueryAggregation>{queryAggregation});
    IBMDiscoveryV1Models.QueryPassages queryPassages= new IBMDiscoveryV1Models.QueryPassages();
    queryPassages.setDocumentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    queryPassages.setPassageText('test');
    queryPassages.setField('test');
    queryPassages.setPassageScore(2);
    queryPassages.setStartOffset(2);
    queryPassages.setEndOffset(2);
    resp.setPassages(new List<IBMDiscoveryV1Models.QueryPassages>{queryPassages});
    resp.setDuplicatesRemoved(2);
    System.assertEquals(resp.getMatchingResults(), 4);
    System.assertEquals(resp.getResults()[0].getCollectionId(), '5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    System.assertEquals(resp.getAggregations()[0].getType(), 'test');
    System.assertEquals(resp.getPassages()[0].getField(), 'test');
    System.assertEquals(resp.getDuplicatesRemoved(), 2);
    System.assertEquals(queryNoticesResult.getId(), '5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    System.assertEquals(queryNoticesResult.getScore(), 2);
    System.assertEquals(queryNoticesResult.getMetadata().get('key'), 'value');
    System.assertEquals(queryNoticesResult.getCollectionId(), '5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    System.assertEquals(queryAggregation.getResults()[0].getKey(), 'test');
    System.assertEquals(aggregationResult.getMatchingResults(), 3);
    System.assertEquals(aggregationResult.getAggregations(), null);
    System.assertEquals(queryAggregation.getType(), 'test');
    System.assertEquals(queryAggregation.getField(), 'test');
    System.assertEquals(queryAggregation.getMatch(), 'test');
    System.assertEquals(queryAggregation.getMatchingResults(), 4);
    System.assertEquals(queryPassages.getDocumentId(), '5ae96bb9-80e5-43ea-916e-1f3412fbc283');
    System.assertEquals(queryPassages.getPassageText(), 'test');
    System.assertEquals(queryPassages.getField(), 'test');
    System.assertEquals(queryPassages.getPassageScore(), 2);
    System.assertEquals(queryPassages.getStartOffset(), 2);
    System.assertEquals(queryPassages.getEndOffset(), 2);
    Test.stopTest();
  }

  /**
   *  Test Query documents in single collection.
   *
   */
  static testMethod void testQuery() {
    String body = IBMWatsonMockResponses.queryResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.QueryOptions options = new IBMDiscoveryV1Models.QueryOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .returnField(collectionIds)
      .sortField(collectionIds)
      .passagesFields(collectionIds)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.QueryResponse resp =
      discovery.query(options);
    System.assertEquals(resp.getResults().size(), 1);
    Test.stopTest();
  }

  /**
   *  Test query collection system notices
   *
   */
  static testMethod void testQueryNotices() {
    String body = IBMWatsonMockResponses.queryNoticesResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.QueryNoticesOptions options = new IBMDiscoveryV1Models.QueryNoticesOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .returnField(collectionIds)
      .sortField(collectionIds)
      .passagesFields(collectionIds)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp =
      discovery.queryNotices(options);
    System.assertEquals(resp.getResults().size(), 1);
    Test.stopTest();
  }


  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  static testMethod void testAddTrainingData() {
    String body = IBMWatsonMockResponses.trainingQuery();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.TrainingExample te= new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('string');
    te.setCrossReference('string');
    te.setRelevance(0);
    IBMDiscoveryV1Models.AddTrainingDataOptions options = new IBMDiscoveryV1Models.AddTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .naturalLanguageQuery('en')
      .filter('test')
      .addExamples(te)
      .examples(new List<IBMDiscoveryV1Models.TrainingExample>{te})
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.TrainingQuery resp =
      discovery.addTrainingData(options);
    System.assertEquals(resp.getExamples().size(), 1);
    System.assertEquals(resp.getExamples()[0].getDocumentId(), 'string');
    System.assertEquals(resp.getExamples()[0].getCrossReference(), 'string');
    System.assertEquals(resp.getExamples()[0].getRelevance(), 0);

    Test.stopTest();
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  static testMethod void testCreateTrainingExample() {
    String body = IBMWatsonMockResponses.trainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.TrainingExample te= new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('string');
    te.setCrossReference('string');
    te.setRelevance(0);
    IBMDiscoveryV1Models.CreateTrainingExampleOptions options = new IBMDiscoveryV1Models.CreateTrainingExampleOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('en')
      .trainingExample(te)
      .documentId('test')
      .relevance(2)
      .crossReference('test')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.TrainingExample resp =
      discovery.createTrainingExample(options);
    System.assertEquals(resp.getRelevance(), 2);
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
    IBMDiscoveryV1Models.DeleteAllTrainingDataOptions options = new IBMDiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
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
    IBMDiscoveryV1Models.DeleteTrainingDataOptions options = new IBMDiscoveryV1Models.DeleteTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    discovery.deleteTrainingData(options);
    Test.stopTest();
  }

   /**
   *  Test get training data
   *
   */
  static testMethod void testGetTrainingData() {
    String body = IBMWatsonMockResponses.trainingQuery();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.TrainingQuery resp =
      discovery.getTrainingData(options);

    System.assertEquals(resp.getExamples().size(), 1);
    System.assertEquals(resp.getFilter(), 'string');
    Test.stopTest();
  }

  /**
   *  Test get training example
   *
   */
  static testMethod void testGetTrainingExample() {
    String body = IBMWatsonMockResponses.trainingExample();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.TrainingExample resp =
      discovery.getTrainingExample(options);

    System.assertEquals(resp.getRelevance(), 2);
    Test.stopTest();
  }

  /**
   *  Test list training data
   *
   */
  static testMethod void testListTrainingData() {
    String body = IBMWatsonMockResponses.trainingDataSet();
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.TrainingDataSet resp =
      discovery.listTrainingData(options);

    System.assertEquals(resp.getQueries()[0].getExamples().size(), 1);
    System.assertEquals(resp.getQueries()[0].getFilter(), 'string');
    Test.stopTest();
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  static testMethod void testUpdateTrainingExample() {
    String body = IBMWatsonMockResponses.trainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    List<String> collectionIds= new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.UpdateTrainingExampleOptions options = new IBMDiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('en')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .relevance(2)
      .crossReference('test')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.TrainingExample resp =
      discovery.updateTrainingExample(options);
    System.assertEquals(resp.getRelevance(), 2);
    Test.stopTest();
  }

  /**
   *  Test  collection model
   *
   */
  static testMethod void testCollectionModel() {
    Test.startTest();
    IBMDiscoveryV1Models.Collection resp = new IBMDiscoveryV1Models.Collection();
    //set the value
    resp.setName('test-collection');
    resp.setConfigurationId('3c4fff84-1500-455c-b125-eaa2d319f6d3');
    resp.setLanguage('de');
    resp.setDescription('A test collection to show as an example');
    IBMDiscoveryV1Models.DocumentCounts dc= new IBMDiscoveryV1Models.DocumentCounts();
    resp.setDocumentCounts(dc);
    IBMDiscoveryV1Models.CollectionDiskUsage cdu= new IBMDiscoveryV1Models.CollectionDiskUsage();
    resp.setDiskUsage(cdu);
    IBMDiscoveryV1Models.TrainingStatus ts= new IBMDiscoveryV1Models.TrainingStatus();
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
    System.assertEquals(resp.getName(), 'test-collection');
    System.assertEquals(resp.getConfigurationId(), '3c4fff84-1500-455c-b125-eaa2d319f6d3');
    System.assertEquals(resp.getLanguage(), 'de');
    System.assertEquals(resp.getDescription(), 'A test collection to show as an example');
    System.assertEquals(resp.getTrainingStatus().getTotalExamples(), 0);
    System.assertEquals(resp.getTrainingStatus().getAvailable(), false);
    System.assertEquals(resp.getTrainingStatus().getProcessing(), false);
    System.assertEquals(resp.getTrainingStatus().getMinimumQueriesAdded(), false);
    System.assertEquals(resp.getTrainingStatus().getMinimumExamplesAdded(), false);
    System.assertEquals(resp.getTrainingStatus().getSufficientLabelDiversity(), false);
    System.assertEquals(resp.getTrainingStatus().getNotices(), 0);
    System.assertEquals(resp.getTrainingStatus().getSuccessfullyTrained(), null);
    System.assertEquals(resp.getTrainingStatus().getDataUpdated(), null);
    Test.stopTest();
  }

   /**
   *  Test  configuration model
   *
   */
  static testMethod void testConfigurationModel() {
    String body = IBMWatsonMockResponses.configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1Models.Configuration configuration = new IBMDiscoveryV1Models.Configuration();
    //set the value
    configuration.setName('test-collection');
    configuration.setDescription('A test collection to show as an example');
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.Conversions();
    IBMDiscoveryV1Models.PdfSettings pdfSettings = new IBMDiscoveryV1Models.PdfSettings();
    IBMDiscoveryV1Models.PdfHeadingDetection pdfHeadingDetection = new IBMDiscoveryV1Models.PdfHeadingDetection();
    IBMDiscoveryV1Models.FontSetting fontSetting = new IBMDiscoveryV1Models.FontSetting();
    fontSetting.setLevel(1);
    fontSetting.setMinSize(4);
    fontSetting.setMaxSize(10);
    fontSetting.setBold(true);
    fontSetting.setItalic(true);
    fontSetting.setName('ariel');
    List<IBMDiscoveryV1Models.FontSetting> fontSettings= new List<IBMDiscoveryV1Models.FontSetting>{fontSetting};
    pdfHeadingDetection.setFonts(fontSettings);
    pdfSettings.setHeading(pdfHeadingDetection);
    conversions.setPdf(pdfSettings);
    IBMDiscoveryV1Models.WordSettings wordSettings = new IBMDiscoveryV1Models.WordSettings();
    IBMDiscoveryV1Models.WordHeadingDetection wordHeadingDetection = new IBMDiscoveryV1Models.WordHeadingDetection();
    IBMDiscoveryV1Models.WordStyle wordStyle = new IBMDiscoveryV1Models.WordStyle();
    wordStyle.setLevel(1);
    wordStyle.setNames(new List<String>{'Style1', 'Style2'});
    List<IBMDiscoveryV1Models.WordStyle> wordStyles= new List<IBMDiscoveryV1Models.WordStyle>{wordStyle};
    wordHeadingDetection.setFonts(fontSettings);
    wordHeadingDetection.setStyles(wordStyles);
    wordSettings.setHeading(wordHeadingDetection);
    conversions.setWord(wordSettings);
    IBMDiscoveryV1Models.HtmlSettings htmlSettings = new IBMDiscoveryV1Models.HtmlSettings();
    htmlSettings.setExcludeTagsCompletely(new List<String>{'Tag1', 'Tag2'});
    htmlSettings.setExcludeTagsKeepContent(new List<String>{'KeepCntent1', 'KeepCntent2'});
    htmlSettings.setKeepTagAttributes(new List<String>{'ExAtt1'});
    htmlSettings.setExcludeTagAttributes(new List<String>{'KeepAtt'});
    IBMDiscoveryV1Models.XPathPatterns xPathPatterns = new IBMDiscoveryV1Models.XPathPatterns();
    xPathPatterns.setXpaths(new List<String>{'xpath1'});
    htmlSettings.setKeepContent(xPathPatterns);
    htmlSettings.setExcludeContent(xPathPatterns);
    conversions.setHtml(htmlSettings);
    IBMDiscoveryV1Models.NormalizationOperation normalizationOperation = new IBMDiscoveryV1Models.NormalizationOperation();
    normalizationOperation.setOperation('test operation');
    normalizationOperation.setSourceField('test source');
    normalizationOperation.setDestinationField('test destination');
    conversions.setJsonNormalizations(new List<IBMDiscoveryV1Models.NormalizationOperation>{normalizationOperation});
    configuration.setConversions(conversions);
    IBMDiscoveryV1Models.Enrichment enrichment = new IBMDiscoveryV1Models.Enrichment();
    enrichment.setDescription('test Description');
    enrichment.setDestinationField('test Description');
    enrichment.setSourceField('test Description');
    enrichment.setOverwrite(true);
    enrichment.setEnrichment('test Description');
    enrichment.setIgnoreDownstreamErrors(true);
    IBMDiscoveryV1Models.EnrichmentOptions enrichmentOptions = new IBMDiscoveryV1Models.EnrichmentOptions();
    IBMDiscoveryV1Models.NluEnrichmentFeatures enrichmentFeatures = new IBMDiscoveryV1Models.NluEnrichmentFeatures();
    IBMDiscoveryV1Models.NluEnrichmentEmotion enrichmentEmotion = new IBMDiscoveryV1Models.NluEnrichmentEmotion();
    enrichmentEmotion.setDocument(true);
    enrichmentEmotion.setTargets(new List<String>{'Target1', 'Target2'});
    enrichmentFeatures.setEmotion(enrichmentEmotion);
    IBMDiscoveryV1Models.NluEnrichmentEntities enrichmentEntities = new IBMDiscoveryV1Models.NluEnrichmentEntities();
    enrichmentEntities.setEmotion(true);
    enrichmentEntities.setLimit(5);
    enrichmentEntities.setMentions(true);
    enrichmentEntities.setMentionTypes(true);
    enrichmentEntities.setModel('test');
    enrichmentEntities.setSentenceLocation(true);
    enrichmentEntities.setSentiment(true);
    enrichmentFeatures.setEntities(enrichmentEntities);
    IBMDiscoveryV1Models.NluEnrichmentKeywords enrichmentKeywords = new IBMDiscoveryV1Models.NluEnrichmentKeywords();
    enrichmentKeywords.setEmotion(true);
    enrichmentKeywords.setLimit(5);
    enrichmentKeywords.setSentiment(true);
    enrichmentFeatures.setKeywords(enrichmentKeywords);
    IBMDiscoveryV1Models.NluEnrichmentRelations enrichmentRelations = new IBMDiscoveryV1Models.NluEnrichmentRelations();
    enrichmentRelations.setModel('test');
    enrichmentFeatures.setRelations(enrichmentRelations);
    IBMDiscoveryV1Models.NluEnrichmentSemanticRoles enrichmentSemanticRoles = new IBMDiscoveryV1Models.NluEnrichmentSemanticRoles();
    enrichmentSemanticRoles.setEntities(true);
    enrichmentSemanticRoles.setKeywords(true);
    enrichmentSemanticRoles.setLimit(5);
    enrichmentFeatures.setSemanticRoles(enrichmentSemanticRoles);
    IBMDiscoveryV1Models.NluEnrichmentSentiment enrichmentSentiment = new IBMDiscoveryV1Models.NluEnrichmentSentiment();
    enrichmentSentiment.setDocument(true);
    enrichmentSentiment.setTargets(new List<String>{'Target1', 'Target2'});
    enrichmentFeatures.setSentiment(enrichmentSentiment);
    enrichmentOptions.setFeatures(enrichmentFeatures);
    enrichmentOptions.setModel('test');
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
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.Configuration resp =
      discovery.createConfiguration(options);
    System.assertEquals(resp.getName(), 'IBM News');
    System.assertEquals(configuration.getName(), 'test-collection');
    System.assertEquals(configuration.getDescription(), 'A test collection to show as an example');
    System.assertEquals(configuration.getConversions().getPdf().getHeading().getFonts()[0].getLevel(), 1);
    System.assertEquals(fontSetting.getMinSize(), 4);
    System.assertEquals(fontSetting.getMaxSize(), 10);
    System.assertEquals(fontSetting.getBold(), true);
    System.assertEquals(fontSetting.getItalic(), true);
    System.assertEquals(fontSetting.getName(), 'ariel');
    System.assertEquals(configuration.getConversions().getWord().getHeading().getFonts()[0].getLevel(), 1);
    System.assertEquals(configuration.getConversions().getWord().getHeading().getStyles()[0].getLevel(), 1);
    System.assertEquals(configuration.getConversions().getWord().getHeading().getStyles()[0].getNames()[0], 'Style1');
    System.assertEquals(configuration.getConversions().getHtml().getExcludeTagsCompletely()[0], 'Tag1');
    System.assertEquals(configuration.getConversions().getHtml().getExcludeTagsKeepContent()[0], 'KeepCntent1');
    System.assertEquals(configuration.getConversions().getHtml().getKeepTagAttributes()[0], 'ExAtt1');
    System.assertEquals(configuration.getConversions().getHtml().getExcludeTagAttributes()[0], 'KeepAtt');
    System.assertEquals(configuration.getConversions().getHtml().getKeepContent().getXpaths()[0], 'xpath1');
    System.assertEquals(configuration.getConversions().getHtml().getExcludeContent().getXpaths()[0], 'xpath1');
    System.assertEquals(configuration.getConversions().getJsonNormalizations()[0].getOperation(), 'test operation');
    System.assertEquals(normalizationOperation.getSourceField(), 'test source');
    System.assertEquals(normalizationOperation.getDestinationField(), 'test destination');
    System.assertEquals(configuration.getNormalizations()[0].getOperation(), 'test operation');
    System.assertEquals(configuration.getEnrichments()[0].getDescription(), 'test Description');
    System.assertEquals(enrichment.getDestinationField(), 'test Description');
    System.assertEquals(enrichment.getSourceField(), 'test Description');
    System.assertEquals(enrichment.getOverwrite(), true);
    System.assertEquals(enrichment.getEnrichment(), 'test Description');
    System.assertEquals(enrichment.getIgnoreDownstreamErrors(), true);
    System.assertEquals(enrichmentOptions.getModel(), 'test');
    System.assertEquals(enrichmentOptions.getFeatures().getEmotion().getDocument(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getEmotion().getTargets()[0], 'Target1');
    System.assertEquals(enrichmentOptions.getFeatures().getEntities().getEmotion(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getEntities().getLimit(), 5);
    System.assertEquals(enrichmentOptions.getFeatures().getEntities().getMentions(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getEntities().getMentionTypes(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getEntities().getModel(), 'test');
    System.assertEquals(enrichmentOptions.getFeatures().getEntities().getSentenceLocation(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getEntities().getSentiment(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getKeywords().getEmotion(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getKeywords().getLimit(), 5);
    System.assertEquals(enrichmentOptions.getFeatures().getKeywords().getSentiment(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getRelations().getModel(), 'test');
    System.assertEquals(enrichmentOptions.getFeatures().getSemanticRoles().getEntities(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getSemanticRoles().getKeywords(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getSemanticRoles().getLimit(), 5);
    System.assertEquals(enrichmentOptions.getFeatures().getSentiment().getDocument(), true);
    System.assertEquals(enrichmentOptions.getFeatures().getSentiment().getTargets()[0], 'Target1');
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
    IBMDiscoveryV1Models.DeleteTrainingExampleOptions options = new IBMDiscoveryV1Models.DeleteTrainingExampleOptionsBuilder('test', 'test', 'test', 'test')
      .environmentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .collectionId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .queryId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .exampleId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    discovery.deleteTrainingExample(options);
    Test.stopTest();
  }

  /**
   *  Add a document.
   *
   * then test using testGetDocumentStatus if document is loaded successfully
   */
  static testMethod void testAddDocument() {
    String body = IBMWatsonMockResponses.documentAccepted();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    Attachment att = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .attachment(att)
      .build();

    IBMDiscoveryV1Models.AddDocumentOptions options = new IBMDiscoveryV1Models.AddDocumentOptionsBuilder()
      .environmentId('environment_id')
      .collectionId('collection_id')
      .file(testfile)
      .filename('test.txt')
      .fileContentType('text/plain')
      .build();
     //you can add more attributes using following builder method. This step is not necessary
     options = options.newBuilder().build();
    IBMDiscoveryV1Models.DocumentAccepted resp =
      discovery.addDocument(options);
    System.assertEquals(resp.getDocumentId(), 'f1360220-ea2d-4271-9d62-89a910b13c37');
    System.assertEquals(resp.getStatus(), 'processing');
    Test.stopTest();
  }

  /**
   *  Test configuration
   */
  static testMethod void testConfigurationInEnvironment() {
    String body = IBMWatsonMockResponses.testDocument();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .body(Blob.valueOf('test string'))
      .name('test.txt')
      .description('test description')
      .contentType('text/plain')
      .build();
    IBMDiscoveryV1Models.TestConfigurationInEnvironmentOptions options = new IBMDiscoveryV1Models.TestConfigurationInEnvironmentOptionsBuilder()
      .environmentId('environment_id')
      .configurationId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .file(testfile)
      .filename('test.txt')
      .fileContentType('text/plain')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.TestDocument resp =
      discovery.testConfigurationInEnvironment(options);
    Test.stopTest();
  }

  /**
   *  Update a document.
   *
   */
  static testMethod void testUpdateDocument() {
    String body = IBMWatsonMockResponses.documentAccepted();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword('username', 'password');
    IBMWatsonFile testfile= new IBMWatsonFile.FileBuilder()
      .body(Blob.valueOf('test string'))
      .name('test.txt')
      .description('test description')
      .contentType('text/plain')
      .build();
    IBMDiscoveryV1Models.UpdateDocumentOptions options = new IBMDiscoveryV1Models.UpdateDocumentOptionsBuilder()
      .environmentId('environment_id')
      .collectionId('collection_id')
      .documentId('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .file(testfile)
      .filename('test.txt')
      .fileContentType('text/plain')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMDiscoveryV1Models.DocumentAccepted resp =
      discovery.updateDocument(options);
    System.assertEquals(resp.getDocumentId(), 'f1360220-ea2d-4271-9d62-89a910b13c37');
    System.assertEquals(resp.getStatus(), 'processing');
    Test.stopTest();
  }
}
