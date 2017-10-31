public with sharing class IBMDiscoveryV1FTests {
  private static String VERSION_2017_09_01 = '2017-09-01';
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_discovery_v1';
  
  /**
   *  Test Successfully creating a new environment.
   */
  public static String testCreateEnvironment() {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    String text = 'test_environment';
    try {
      IBMDiscoveryV1Models.CreateEnvironmentOptions options = new
        IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder()
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
  public static IBMDiscoveryV1Models.ListEnvironmentsResponse testListEnvironment() {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    String text = 'test_environment';
    IBMDiscoveryV1Models.ListEnvironmentsOptions options = new
      IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder()
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
  public static void testDeleteEnvironment(String environmentId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.DeleteEnvironmentOptions options = new
      IBMDiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    discovery.deleteEnvironment(options);
  }

   /**
   *  Test get the environment.
   *
   */
  public static IBMDiscoveryV1Models.Environment testGetEnvironment(String environmentId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.GetEnvironmentOptions options = new
      IBMDiscoveryV1Models.GetEnvironmentOptionsBuilder()
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
  public static IBMDiscoveryV1Models.Environment testUpdateEnvironment(String environmentId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    //String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    IBMDiscoveryV1Models.UpdateEnvironmentOptions options = new
      IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
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
  public static IBMDiscoveryV1Models.ListConfigurationsResponse testListConfigurations(String environmentId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.ListConfigurationsOptions options = new
      IBMDiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId(environmentId)
      .build();
    IBMDiscoveryV1Models.ListConfigurationsResponse resp = discovery.listConfigurations(options);
    System.debug('IBMDiscoveryV1FTests.testListConfigurations : ==>' + resp);
    return resp;
  }

  /**
   *  Test create configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testCreateConfiguration(String environmentId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
      IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
  public static void testDeleteConfiguration(String environmentId, String configurationId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.DeleteConfigurationOptions options = new
      IBMDiscoveryV1Models.DeleteConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    discovery.deleteConfiguration(options);
  }

  /**
   *  Test get configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testGetConfiguration(String environmentId, String configurationId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.Configuration testUpdateConfiguration(String environmentId, String configurationId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.ListCollectionsResponse testListCollections(String environmentId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.Collection testCreateCollection(String environmentId, String configurationId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.CreateCollectionOptions options = new
      IBMDiscoveryV1Models.CreateCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .name('test_collection')
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
  public static IBMDiscoveryV1Models.Collection testGetCollection(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static void testDeleteCollection(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.DeleteCollectionOptions options = new
      IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    discovery.deleteCollection(options);
  }

  /**
   *  Test update collection
   *
   */
  public static IBMDiscoveryV1Models.Collection testUpdateCollection(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.ListCollectionFieldsResponse testListCollectionFields(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.ListCollectionFieldsResponse testListCollectionsFields(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.QueryResponse testFederatedQuery(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.DocumentStatus testGetDocumentStatus(String environmentId, String collectionId, String documentId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.QueryResponse testQuery(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.QueryNoticesResponse testQueryNotices(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.TrainingQuery testAddTrainingData(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.TrainingExample te=new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('0c0ee07b-952a-450e-b20f-95c36916f9b0');
    te.setRelevance(0);
    IBMDiscoveryV1Models.AddTrainingDataOptions options = new
      IBMDiscoveryV1Models.AddTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
  public static IBMDiscoveryV1Models.TrainingExample testCreateTrainingExample(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    IBMDiscoveryV1Models.TrainingExample te=new IBMDiscoveryV1Models.TrainingExample();
    te.setDocumentId('20ab41e1-1f5f-4b3f-8745-4173319ad611');
    te.setRelevance(0);
    IBMDiscoveryV1Models.CreateTrainingExampleOptions options = new
      IBMDiscoveryV1Models.CreateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .training_example(te)
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
  public static IBMDiscoveryV1Models.TrainingExample testGetTrainingExample(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.GetTrainingExampleOptions options = new
      IBMDiscoveryV1Models.GetTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .exampleId('20ab41e1-1f5f-4b3f-8745-4173319ad611')
      .build();
    IBMDiscoveryV1Models.TrainingExample resp = discovery.getTrainingExample(options);

    System.debug('IBMDiscoveryV1FTests.TrainingExample: ' + resp);
    return resp;
  }
  /**
   *  Test get training data
   *
   */
  public static IBMDiscoveryV1Models.TrainingQuery testGetTrainingData(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.GetTrainingDataOptions options = new
      IBMDiscoveryV1Models.GetTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .build();
    IBMDiscoveryV1Models.TrainingQuery resp = discovery.getTrainingData(options);

    System.debug('IBMDiscoveryV1FTests.testGetTrainingData: ' + resp);
    return resp;
  }

   /**
   *  Test list training data
   *
   */
  public static IBMDiscoveryV1Models.TrainingDataSet testListTrainingData(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

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
  public static IBMDiscoveryV1Models.TrainingExample testUpdateTrainingExample(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.UpdateTrainingExampleOptions options = new
      IBMDiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .exampleId('20ab41e1-1f5f-4b3f-8745-4173319ad611')
      .relevance(2)
      .build();
    IBMDiscoveryV1Models.TrainingExample resp = discovery.updateTrainingExample(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateTrainingExample: ' + resp);
    return resp;
  }

  /**
   *  Test deleting the example with the given ID for the training data query.
   */
  public static void testDeleteTrainingExample(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.DeleteTrainingExampleOptions options = new
      IBMDiscoveryV1Models.DeleteTrainingExampleOptionsBuilder('test','test','test','test')
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .exampleId('20ab41e1-1f5f-4b3f-8745-4173319ad611')
      .build();
    discovery.deleteTrainingExample(options);
  }

   /**
   *  Test delete training data for a collection
   *
   */
  public static void testDeleteAllTrainingData(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.DeleteAllTrainingDataOptions options = new
      IBMDiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    discovery.deleteAllTrainingData(options);
   }

  /**
   *  Test delete training data and all associated examples from the training data set
   *
   */
  public static void testDeleteTrainingData(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.DeleteTrainingDataOptions options = new
      IBMDiscoveryV1Models.DeleteTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
  public static void testDeleteDocument(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    IBMDiscoveryV1Models.DeleteDocumentOptions options = new
      IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId('1154b0a3-3f9d-4370-a28a-7c3a68d8cc14')
      .build();
    discovery.deleteDocument(options);
  }

  /**
   *  Test query multiple collection system notices
   *
   * Used List fields to get fields
   */
  public static IBMDiscoveryV1Models.QueryNoticesResponse testFederatedQueryNotices(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    List<String> collectionIds=new List<String>{collectionId};
    IBMDiscoveryV1Models.FederatedQueryNoticesOptions options = new
      IBMDiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .returnField(new List<String>{'extracted_metadata.title','enriched_text.sentiment.document.label'})
      .sortField(new List<String>{'extracted_metadata.title','enriched_text.sentiment.document.label'})
      .build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp = discovery.federatedQueryNotices(options);
    System.debug('IBMDiscoveryV1FTests.testFederatedQueryNotices: ' + resp);
    return resp;
  }

  /**
   *  Add a document.
   *
   * then test using testGetDocumentStatus if document is loaded successfully
   */
  public static IBMDiscoveryV1Models.DocumentAccepted testAddDocument(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1(VERSION_2017_09_01);
    discovery.setEndPoint(NAMED_CREDENTIALS);

    Attachment att=[Select Id,Body,BodyLength,ContentType,Name,Description From Attachment where Id='00P1I000000ZEcP'];
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    IBMDiscoveryV1Models.AddDocumentOptions options = new
      IBMDiscoveryV1Models.AddDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .file(testfile)
      .filename(att.Name)
      .fileContentType(att.ContentType)
      .build();
    IBMDiscoveryV1Models.DocumentAccepted resp = discovery.addDocument(options);
    System.debug('IBMDiscoveryV1FTests.testAddDocument: ' + resp);
    return resp;
  }
}