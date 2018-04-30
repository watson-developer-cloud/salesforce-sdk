public with sharing class IBMDiscoveryV1FTests {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_discovery_v1';
  private static String URL = 'https://gateway.watsonplatform.net/discovery/api';
  private static String ENVIRONMENT_ID ='20ab41e1-1f5f-4b3f-8745-4173319ad611';
  private static String CONFIGURATION_ID ='8a813a61-3b2d-4d43-b4e0-3d70d8d4e260';
  private static String COLLECTION_ID ='895392cd-a81b-4ba1-b2d8-34c0536f79e6';
  private static String DOCUMENT_ID ='008948a1-d9b5-432e-88ba-f744b60b49e0';
  private static String QUERY_ID ='3f684b69d307bce0bfc3a6c4d3e8ba570bb5dc4a';
  private static String EXAMPLE_ID ='008948a1-d9b5-432e-88ba-f744b60b49e0';

  /**
   *  Test run functional tests.
   */
  public static void runAllTests(String username, String password) {
    testListEnvironment(username, password);
    testGetEnvironment(ENVIRONMENT_ID, username, password);
    testListConfigurations(ENVIRONMENT_ID, username, password);
    testGetConfiguration(ENVIRONMENT_ID, CONFIGURATION_ID, username, password);
    testListCollections(ENVIRONMENT_ID, username, password);
    testGetCollection(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testListCollectionFields(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testListCollectionsFields(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testFederatedQuery(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testGetDocumentStatus(ENVIRONMENT_ID, COLLECTION_ID, DOCUMENT_ID, username, password);
    testQuery(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testQueryNotices(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testGetTrainingExample(ENVIRONMENT_ID, COLLECTION_ID, QUERY_ID,EXAMPLE_ID, username, password);
    testGetTrainingData(ENVIRONMENT_ID, COLLECTION_ID, QUERY_ID, username, password);
    testListTrainingData(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testFederatedQueryNotices(ENVIRONMENT_ID, COLLECTION_ID, username, password);
    testAddAndDeleteDocument(environmentId, collectionId, username, password);
  }

  /**
   *  Test Successfully creating a new environment.
   */
  public static String testCreateEnvironment(String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    String text = 'test_environment2';
    try {
     IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder()
        .name(text)
        .description('test_environment description')
        .build();
     IBMDiscoveryV1Models.Environment resp = discovery.createEnvironment(options);
     return resp.getEnvironmentId();
    }
    catch(Exception ex) {
     return ex.getMessage();
    }
    return 'Process Failed';
  }

  /**
   *  Test listing the environments.
   *
   */
  public static IBMDiscoveryV1Models.ListEnvironmentsResponse testListEnvironment(String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    String text = 'test_environment';
    IBMDiscoveryV1Models.ListEnvironmentsOptions options = new IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder()
      .build();
    IBMDiscoveryV1Models.ListEnvironmentsResponse resp = discovery.listEnvironments(options);
    System.debug('IBMDiscoveryV1FTests.testListEnvironment():' + resp);
    return resp;
  }


  /**
   *  Test deleting an environment.
   *
   * Use environment id as parameter to delete environment
   */
  public static void testDeleteEnvironment(String environmentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.DeleteEnvironmentOptions options = new IBMDiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    discovery.deleteEnvironment(options);
  }

   /**
   *  Test get the environment.
   *
   */
  public static IBMDiscoveryV1Models.Environment testGetEnvironment(String environmentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.GetEnvironmentOptions options = new IBMDiscoveryV1Models.GetEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    IBMDiscoveryV1Models.Environment resp = discovery.getEnvironment(options);
    System.debug('IBMDiscoveryV1FTests.testGetEnvironment: ' + resp);
    return resp;
  }

   /**
   *  Test update the environment.
   *
   */
  public static IBMDiscoveryV1Models.Environment testUpdateEnvironment(String environmentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.UpdateEnvironmentOptions options = new IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .name('PRFT New Environment')
      .description('PRFT New Environment updated')
      .build();

    IBMDiscoveryV1Models.Environment resp = discovery.updateEnvironment(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateEnvironment: ' + resp);
    return resp;
  }

  /**
   *  Test list configurations
   *
   */
  public static IBMDiscoveryV1Models.ListConfigurationsResponse testListConfigurations(String environmentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.ListConfigurationsOptions options = new IBMDiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId(environmentId)
      .build();

    IBMDiscoveryV1Models.ListConfigurationsResponse resp = discovery.listConfigurations(options);
    System.debug('IBMDiscoveryV1FTests.testListConfigurations : ' + resp);
    return resp;
  }

  /**
   *  Test create configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testCreateConfiguration(String environmentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

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
    IBMDiscoveryV1Models.CreateConfigurationOptions options = new
      IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .name('test_config')
      .description('test_config description')
      .addEnrichments(enrichment)
      .addNormalizations(normalizationOperation)
      .conversions(conversions)
      .build();
    IBMDiscoveryV1Models.Configuration resp = discovery.createConfiguration(options);
    System.debug('IBMDiscoveryV1FTests.testCreateConfiguration: ' + resp);
    return resp;
  }

  /**
   *  Test delete configuration
   *
   */
  public static void testDeleteConfiguration(String environmentId, String configurationId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.DeleteConfigurationOptions options = new
      IBMDiscoveryV1Models.DeleteConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    discovery.deleteConfiguration(options);
  }

  /**
   *  Test get configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testGetConfiguration(String environmentId, String configurationId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.GetConfigurationOptions options = new
      IBMDiscoveryV1Models.GetConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    IBMDiscoveryV1Models.Configuration resp = discovery.getConfiguration(options);
    System.debug('IBMDiscoveryV1FTests.testGetConfiguration: ' + resp);
    return resp;
  }

   /**
   *  Test update configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testUpdateConfiguration(String environmentId, String configurationId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.UpdateConfigurationOptions options = new
      IBMDiscoveryV1Models.UpdateConfigurationOptionsBuilder()
      .name('test_environment')
      .description('test_environment description')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();

    IBMDiscoveryV1Models.Configuration resp = discovery.updateConfiguration(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateConfiguration: ' + resp);
    return resp;
  }

  /**
   *  Test list collections
   *
   */
  public static IBMDiscoveryV1Models.ListCollectionsResponse testListCollections(String environmentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');

    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.ListCollectionsOptions options = new
      IBMDiscoveryV1Models.ListCollectionsOptionsBuilder()
      .environmentId(environmentId)
      .build();
    IBMDiscoveryV1Models.ListCollectionsResponse resp = discovery.listCollections(options);
    System.debug('IBMDiscoveryV1FTests.testListCollections: ' + resp);
    return resp;
  }

  /**
   *  Test create collection
   *
   */
  public static IBMDiscoveryV1Models.Collection testCreateCollection(String environmentId, String configurationId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.CreateCollectionOptions options = new
     IBMDiscoveryV1Models.CreateCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .configurationId(configurationId)
     .name('test_collection1')
     .description('test_collection description')
     .language('en')
     .build();
    IBMDiscoveryV1Models.Collection resp = discovery.createCollection(options);
    System.debug('IBMDiscoveryV1FTests.testCreateCollection: ' + resp);
    return resp;
  }


  /**
   *  Test get collection
   *
   */
  public static IBMDiscoveryV1Models.Collection testGetCollection(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.GetCollectionOptions options = new
      IBMDiscoveryV1Models.GetCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    IBMDiscoveryV1Models.Collection resp = discovery.getCollection(options);
    System.debug('IBMDiscoveryV1FTests.testGetCollection: ' + resp);
    return resp;
  }

  /**
   *  Test delete collection
   *
   */
  public static void testDeleteCollection(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.DeleteCollectionOptions options = new
     IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    discovery.deleteCollection(options);
  }

  /**
   *  Test update collection
   *
   */
  public static IBMDiscoveryV1Models.Collection testUpdateCollection(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.UpdateCollectionOptions options = new
     IBMDiscoveryV1Models.UpdateCollectionOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .name('test_coll')
     .description('test_coll description')
     .build();
    IBMDiscoveryV1Models.Collection resp = discovery.updateCollection(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateCollection: ' + resp);
    return resp;
  }

  /**
   *  Test list fields in a single collection. (IBMDiscoveryV1.listCollectionFields)
   *
   */
  public static IBMDiscoveryV1Models.ListCollectionFieldsResponse testListCollectionFields(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.ListCollectionFieldsOptions options = new
     IBMDiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp = discovery.listCollectionFields(options);
    System.debug('IBMDiscoveryV1FTests.testListCollectionFields: ' + resp);
    return resp;
  }

  /**
   *  Test list fields in multiple collections.
   *
   */
  public static IBMDiscoveryV1Models.ListCollectionFieldsResponse testListCollectionsFields(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    List<String> collectionIds=new List<String>{collectionId};
    IBMDiscoveryV1Models.ListFieldsOptions options = new
     IBMDiscoveryV1Models.ListFieldsOptionsBuilder()
     .environmentId(environmentId)
     .collectionIds(collectionIds)
     .build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp = discovery.listFields(options);
    System.debug('IBMDiscoveryV1FTests.testListCollectionsFields: ' + resp);
    return resp;
  }

  /**
   *  Test Query documents in multiple collections.
   *
   */
  public static IBMDiscoveryV1Models.QueryResponse testFederatedQuery(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    List<String> collectionIds=new List<String>{collectionId};
    IBMDiscoveryV1Models.FederatedQueryOptions options = new
     IBMDiscoveryV1Models.FederatedQueryOptionsBuilder()
     .environmentId(environmentId)
     .collectionIds(collectionIds)
     .build();
    IBMDiscoveryV1Models.QueryResponse resp = discovery.federatedQuery(options);
    System.debug('IBMDiscoveryV1FTests.testFederatedQuery: ' + resp);
    return resp;
  }

  /**
   *  Test get document
   *
   */
  public static IBMDiscoveryV1Models.DocumentStatus testGetDocumentStatus(String environmentId, String collectionId, String documentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.GetDocumentStatusOptions options = new
     IBMDiscoveryV1Models.GetDocumentStatusOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .documentId(documentId)
     .build();
    IBMDiscoveryV1Models.DocumentStatus resp = discovery.getDocumentStatus(options);
    System.debug('IBMDiscoveryV1FTests.testGetDocumentStatus: ' + resp);
    return resp;
  }
   /**
   *  Test Query documents in single collection.
   *
   */
  public static IBMDiscoveryV1Models.QueryResponse testQuery(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.QueryOptions options = new
     IBMDiscoveryV1Models.QueryOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.QueryResponse resp = discovery.query(options);
    System.debug('IBMDiscoveryV1FTests.testQuery: ' + resp);
    return resp;
  }

  /**
   *  Test query collection system notices
   *
   */
  public static IBMDiscoveryV1Models.QueryNoticesResponse testQueryNotices(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.QueryNoticesOptions options = new
     IBMDiscoveryV1Models.QueryNoticesOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp = discovery.queryNotices(options);
    System.debug('IBMDiscoveryV1FTests.testQueryNotices: ' + resp);
    return resp;
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static IBMDiscoveryV1Models.TrainingQuery testAddTrainingData(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.TrainingExample te=new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('008948a1-d9b5-432e-88ba-f744b60b49e0');
    te.setRelevance(0);
    IBMDiscoveryV1Models.AddTrainingDataOptions options = new
     IBMDiscoveryV1Models.AddTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .naturalLanguageQuery('en')
     .filter('test')
     .addExamples(te)
     .build();
    IBMDiscoveryV1Models.TrainingQuery resp = discovery.addTrainingData(options);
    System.debug('IBMDiscoveryV1FTests.testAddTrainingData: ' + resp);
    return resp;
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static IBMDiscoveryV1Models.TrainingExample testCreateTrainingExample(String environmentId, String collectionId, String queryId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    List<String> collectionIds=new List<String>{'Collection1', 'Collection2'};
    IBMDiscoveryV1Models.TrainingExample te=new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('008948a1-d9b5-432e-88ba-f744b60b49e0');
    te.setRelevance(0);
    IBMDiscoveryV1Models.CreateTrainingExampleOptions options = new
     IBMDiscoveryV1Models.CreateTrainingExampleOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .trainingExample(te)
     .relevance(0)
     .build();
    IBMDiscoveryV1Models.TrainingExample resp = discovery.createTrainingExample(options);
    System.debug('IBMDiscoveryV1FTests.testCreateTrainingExample: ' + resp);
    return resp;
  }

  /**
   *  Test get training example
   *
   */
  public static IBMDiscoveryV1Models.TrainingExample testGetTrainingExample(String environmentId, String collectionId, String queryId, String exampleId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.GetTrainingExampleOptions options = new
     IBMDiscoveryV1Models.GetTrainingExampleOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .exampleId(exampleId)
     .build();
    IBMDiscoveryV1Models.TrainingExample resp = discovery.getTrainingExample(options);

    System.debug('IBMDiscoveryV1FTests.TrainingExample: ' + resp);
    return resp;
  }
  /**
   *  Test get training data
   *
   */
  public static IBMDiscoveryV1Models.TrainingQuery testGetTrainingData(String environmentId, String collectionId, String queryId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.GetTrainingDataOptions options = new
     IBMDiscoveryV1Models.GetTrainingDataOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .build();
    IBMDiscoveryV1Models.TrainingQuery resp = discovery.getTrainingData(options);

    System.debug('IBMDiscoveryV1FTests.testGetTrainingData: ' + resp);
    return resp;
  }

   /**
   *  Test list training data
   *
   */
  public static IBMDiscoveryV1Models.TrainingDataSet testListTrainingData(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.ListTrainingDataOptions options = new
     IBMDiscoveryV1Models.ListTrainingDataOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.TrainingDataSet resp = discovery.listTrainingData(options);

    System.debug('IBMDiscoveryV1FTests.testListTrainingData: ' + resp);
    return resp;
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static IBMDiscoveryV1Models.TrainingExample testUpdateTrainingExample(String environmentId, String collectionId, String queryId, String exampleId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.UpdateTrainingExampleOptions options = new
     IBMDiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .exampleId(exampleId)
     .relevance(2)
     .build();
    IBMDiscoveryV1Models.TrainingExample resp = discovery.updateTrainingExample(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateTrainingExample: ' + resp);
    return resp;
  }

  /**
   *  Test deleting the example with the given ID for the training data query.
   */
  public static void testDeleteTrainingExample(String environmentId, String collectionId,String queryId, String exampleId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.DeleteTrainingExampleOptions options = new
     IBMDiscoveryV1Models.DeleteTrainingExampleOptionsBuilder('test', 'test', 'test', 'test')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .exampleId(exampleId)
     .build();
    discovery.deleteTrainingExample(options);
  }

   /**
   *  Test delete training data for a collection
   *
   */
  public static void testDeleteAllTrainingData(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.DeleteAllTrainingDataOptions options = new
     IBMDiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    discovery.deleteAllTrainingData(options);
   }

  /**
   *  Test delete training data and all associated examples from the training data set
   *
   */
  public static void testDeleteTrainingData(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.DeleteTrainingDataOptions options = new
     IBMDiscoveryV1Models.DeleteTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
     .build();
    discovery.deleteTrainingData(options);
  }

  /**
   *  Test delete document
   * used explorer to upload document
   *
   */
  public static void testDeleteDocument(String environmentId, String collectionId,String documentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    IBMDiscoveryV1Models.DeleteDocumentOptions options = new
     IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .documentId(documentId)
     .build();
    discovery.deleteDocument(options);
  }

  /**
   *  Test query multiple collection system notices
   *
   * Used List fields to get fields
   */
  public static IBMDiscoveryV1Models.QueryNoticesResponse testFederatedQueryNotices(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    List<String> collectionIds=new List<String>{collectionId};
    IBMDiscoveryV1Models.FederatedQueryNoticesOptions options = new
     IBMDiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
     .environmentId(environmentId)
     .collectionIds(collectionIds)
     .returnField(new List<String>{'extracted_metadata.title', 'enriched_text.sentiment.document.label'})
     .sortField(new List<String>{'extracted_metadata.title', 'enriched_text.sentiment.document.label'})
     .build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp = discovery.federatedQueryNotices(options);
    System.debug('IBMDiscoveryV1FTests.testFederatedQueryNotices: ' + resp);
    return resp;
  }

  /**
   *  Add and delete a document.
   */
  public static Boolean testAddAndDeleteDocument(String environmentId, String collectionId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }

    Attachment att=createFile();
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
      .attachment(att)
      .build();
    IBMDiscoveryV1Models.AddDocumentOptions addOptions = new IBMDiscoveryV1Models.AddDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .file(testfile)
      .filename(att.Name)
      .fileContentType(att.ContentType)
      .build();
    IBMDiscoveryV1Models.DocumentAccepted resp = discovery.addDocument(addOptions);
    String documentId = resp.getDocumentId();
    System.debug('IBMDiscoveryV1FTests.testAddAndDeleteDocument (add): ' + resp);

    IBMDiscoveryV1Models.GetDocumentStatusOptions getOptions = new IBMDiscoveryV1Models.GetDocumentStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();

    String status = discovery.getDocumentStatus(getOptions).getStatus();
    while (!status.equals('available')) {
      status = discovery.getDocumentStatus(getOptions).getStatus();
    }

    IBMDiscoveryV1Models.DeleteDocumentOptions options = new IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();
    discovery.deleteDocument(options);

    System.debug('Document successfully deleted');
    return true;
  }

   public static IBMDiscoveryV1Models.TestDocument testConfigurationInEnvironment(String environmentId, String configurationId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }
    Attachment att=createFile();
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
     .body(att.Body)
     .name(att.Name)
     .description(att.Description)
     .contentType(att.ContentType)
     .build();
    IBMDiscoveryV1Models.TestConfigurationInEnvironmentOptions options = new IBMDiscoveryV1Models.TestConfigurationInEnvironmentOptionsBuilder()
     .environmentId(environmentId)
     .configurationId(configurationId)
     .file(testfile)
     .filename(att.Name)
     .fileContentType(att.ContentType)
     .build();
    IBMDiscoveryV1Models.TestDocument resp =
     discovery.testConfigurationInEnvironment(options);
    System.debug('IBMDiscoveryV1FTests.testConfigurationInEnvironment: ' + resp);
    return resp;
  }

  /**
   *  Update a document.
   *
   */
  public static IBMDiscoveryV1Models.DocumentAccepted testUpdateDocument(String environmentId, String collectionId, String documentId, String username, String password) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    //discovery.setEndPoint(NAMED_CREDENTIALS);
    if (username != null && password != null) {
      discovery.setEndPoint(URL);
      discovery.setUsernameAndPassword(username, password);
    }
    Attachment att=createFile();
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
     .body(att.Body)
     .name(att.Name)
     .description(att.Description)
     .contentType(att.ContentType)
     .build();
    IBMDiscoveryV1Models.UpdateDocumentOptions options = new IBMDiscoveryV1Models.UpdateDocumentOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .documentId(documentId)
     .file(testfile)
     .filename(att.Name)
     .fileContentType(att.ContentType)
     .build();
    IBMDiscoveryV1Models.DocumentAccepted resp =
     discovery.updateDocument(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateDocument: ' + resp);
    return resp;
  }

  public static void testExpansionsOperations(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2017-11-07');
    List<String> expansion1InputTerms = new List<String> { 'weekday', 'week day' };
    List<String> expansion1ExpandedTerms = new List<String> { 'monday', 'tuesday', 'wednesday', 'thursday', 'friday' };
    List<String> expansion2InputTerms = new List<String> { 'weekend', 'week end' };
    List<String> expansion2ExpandedTerms = new List<String> { 'saturday', 'sunday' };
    IBMDiscoveryV1Models.Expansion expansion1 = new IBMDiscoveryV1Models.Expansion();
    expansion1.setInputTerms(expansion1InputTerms);
    expansion1.setExpandedTerms(expansion1ExpandedTerms);
    IBMDiscoveryV1Models.Expansion expansion2 = new IBMDiscoveryV1Models.Expansion();
    expansion2.setInputTerms(expansion2InputTerms);
    expansion2.setExpandedTerms(expansion2ExpandedTerms);
    IBMDiscoveryV1Models.Expansions expansions = new IBMDiscoveryV1Models.Expansions();
    expansions.setExpansions(new List<IBMDiscoveryV1Models.Expansion> { expansion1, expansion2 });
    IBMDiscoveryV1Models.CreateExpansionsOptions createOptions = new IBMDiscoveryV1Models.CreateExpansionsOptionsBuilder()
        .environmentId(environmentId)
        .collectionId(collectionId)
        .expansions(expansions)
        .build();
    IBMDiscoveryV1Models.Expansions createResults = discovery.createExpansions(createOptions);

    System.assertEquals(createResults.getExpansions().size(), 2);
    System.assertEquals(createResults.getExpansions().get(0).getInputTerms(), expansion1InputTerms);
    System.assertEquals(createResults.getExpansions().get(0).getExpandedTerms(), expansion1ExpandedTerms);
    System.assertEquals(createResults.getExpansions().get(1).getInputTerms(), expansion2InputTerms);
    System.assertEquals(createResults.getExpansions().get(1).getExpandedTerms(), expansion2ExpandedTerms);

    IBMDiscoveryV1Models.ListExpansionsOptions listOptions = new IBMDiscoveryV1Models.ListExpansionsOptionsBuilder()
        .environmentId(environmentId)
        .collectionId(collectionId)
        .build();
    IBMDiscoveryV1Models.Expansions listResults = discovery.listExpansions(listOptions);

    System.assertEquals(listResults.getExpansions().size(), 2);

    IBMDiscoveryV1Models.DeleteExpansionsOptions deleteOptions = new IBMDiscoveryV1Models.DeleteExpansionsOptionsBuilder()
        .environmentId(environmentId)
        .collectionId(collectionId)
        .build();
    discovery.deleteExpansions(deleteOptions);

    IBMDiscoveryV1Models.Expansions emptyListResults = discovery.listExpansions(listOptions);
  }

  public static Attachment createFile()
  {
    String DocumentContentStr = '<html><body>This blog will cover how to integrate a conversational interface with your Salesforce customer database. '
      + 'Conversational interfaces allow for a much more natural interaction, especially over a fairly large dataset. This is ideal for users '
      + 'who are not familiar with how to use various systems, or who need to quickly get access to a variety of information in a small amount '
      + 'of time, like while on site with a customer during a meeting. This blog will cover some basic use cases as well as provide information '
      + 'on how to connect a conversational system, like IBM Watson Conversation Service (WCS), with your Salesforce database.</body></html>';
    blob DocumentContentBlob = Blob.valueOf(DocumentContentStr);
    return new Attachment(Body = DocumentContentBlob,
      Name='myPageDocument.html',
      Description='My discovery page blog',
      ContentType='text/html');
  }
}