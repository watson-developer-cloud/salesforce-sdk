public with sharing class IBMDiscoveryV1FTests {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_discovery_v1';
  private static String URL = 'https://gateway.watsonplatform.net/discovery/api';
  private static String VERSION = '2018-08-01';

  /**
   *  Test run functional tests.
   */
  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMDiscoveryV1 service = new IBMDiscoveryV1(VERSION, authenticator);
    service.setServiceURL(URL);

    IBMDiscoveryV1Models.ListEnvironmentsResponse listEnvResponse = testListEnvironment(service);

    // store environment ID for later
    String environmentId = null;
    for (IBMDiscoveryV1Models.Environment environment : listEnvResponse.getEnvironments()) {
      if (!environment.getEnvironmentId().equals('system')) {
        environmentId = environment.getEnvironmentId();
        break;
      }
    }

    testGetEnvironment(service, environmentId);
    IBMDiscoveryV1Models.ListConfigurationsResponse listConfResponse = testListConfigurations(service, environmentId);

    // store configuration ID for later
    String configurationId = listConfResponse.getConfigurations().get(0).getConfigurationId();

    testGetConfiguration(service, environmentId, configurationId);
    IBMDiscoveryV1Models.ListCollectionsResponse listCollResponse = testListCollections(service, environmentId);

    // store collection ID for later
    String collectionId = listCollResponse.getCollections().get(0).getCollectionId();

    testGetCollection(service, environmentId, collectionId);
    testListCollectionFields(service, environmentId, collectionId);
    testListCollectionsFields(service, environmentId, collectionId);
    IBMDiscoveryV1Models.QueryResponse queryResponse = testFederatedQuery(service, environmentId, collectionId);

    // save document ID for later
    String documentId = queryResponse.getResults().get(0).getId();

    testGetDocumentStatus(service, environmentId, collectionId, documentId);
    testQuery(service, environmentId, collectionId);
    testQueryNotices(service, environmentId, collectionId);
    IBMDiscoveryV1Models.TrainingQuery addTrainingDataResponse = testAddTrainingData(service, environmentId, collectionId, documentId);

    // save query ID for later
    String queryId = addTrainingDataResponse.getQueryId();

    testGetTrainingExample(service, environmentId, collectionId, queryId, documentId);
    testGetTrainingData(service, environmentId, collectionId, queryId);

    // delete training data that we don't need anymore
    testDeleteAllTrainingData(service, environmentId, collectionId);

    testListTrainingData(service, environmentId, collectionId);
    testFederatedQueryNotices(service, environmentId, collectionId);
    testAddAndDeleteDocument(service, environmentId, collectionId);
    testCredentialsOperations(service, environmentId);
    testQueryLog(service);
    testGetMetricsEventRate(service);
    testGetMetricsQuery(service);
    testGetMetricsQueryEvent(service);
    testGetMetricsQueryNoResults(service);
    testGetMetricsQueryTokenEvent(service);
    testGatewayOperations(service, environmentId);
  }

  /**
   *  Test Successfully creating a new environment.
   */
  public static String testCreateEnvironment(IBMDiscoveryV1 service) {
    String text = 'test_environment2';
    try {
     IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder()
        .name(text)
        .description('test_environment description')
        .build();
     IBMDiscoveryV1Models.Environment resp = service.createEnvironment(options);
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
  public static IBMDiscoveryV1Models.ListEnvironmentsResponse testListEnvironment(IBMDiscoveryV1 service) {
    String text = 'test_environment';
    IBMDiscoveryV1Models.ListEnvironmentsOptions options = new IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder()
      .build();
    IBMDiscoveryV1Models.ListEnvironmentsResponse resp = service.listEnvironments(options);
    System.debug('IBMDiscoveryV1FTests.testListEnvironment():' + resp);
    return resp;
  }


  /**
   *  Test deleting an environment.
   *
   * Use environment id as parameter to delete environment
   */
  public static void testDeleteEnvironment(IBMDiscoveryV1 service, String environmentId) {
    IBMDiscoveryV1Models.DeleteEnvironmentOptions options = new IBMDiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    service.deleteEnvironment(options);
  }

   /**
   *  Test get the environment.
   *
   */
  public static IBMDiscoveryV1Models.Environment testGetEnvironment(IBMDiscoveryV1 service, String environmentId) {
    IBMDiscoveryV1Models.GetEnvironmentOptions options = new IBMDiscoveryV1Models.GetEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    IBMDiscoveryV1Models.Environment resp = service.getEnvironment(options);
    System.debug('IBMDiscoveryV1FTests.testGetEnvironment: ' + resp);
    return resp;
  }

   /**
   *  Test update the environment.
   *
   */
  public static IBMDiscoveryV1Models.Environment testUpdateEnvironment(IBMDiscoveryV1 service, String environmentId) {
    IBMDiscoveryV1Models.UpdateEnvironmentOptions options = new IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .name('PRFT New Environment')
      .description('PRFT New Environment updated')
      .build();

    IBMDiscoveryV1Models.Environment resp = service.updateEnvironment(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateEnvironment: ' + resp);
    return resp;
  }

  /**
   *  Test list configurations
   *
   */
  public static IBMDiscoveryV1Models.ListConfigurationsResponse testListConfigurations(IBMDiscoveryV1 service, String environmentId) {
    IBMDiscoveryV1Models.ListConfigurationsOptions options = new IBMDiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId(environmentId)
      .build();

    IBMDiscoveryV1Models.ListConfigurationsResponse resp = service.listConfigurations(options);
    System.debug('IBMDiscoveryV1FTests.testListConfigurations : ' + resp);
    return resp;
  }

  /**
   *  Test create configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testCreateConfiguration(IBMDiscoveryV1 service, String environmentId) {
    IBMDiscoveryV1Models.Enrichment enrichment = new IBMDiscoveryV1Models.EnrichmentBuilder()
      .description('test Description')
      .build();
    IBMDiscoveryV1Models.NormalizationOperation normalizationOperation = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .operation('test operation')
      .build();
    IBMDiscoveryV1Models.FontSetting fontSetting = new IBMDiscoveryV1Models.FontSettingBuilder()
      .level(1)
      .minSize(4)
      .maxSize(10)
      .bold(true)
      .italic(true)
      .name('ariel')
      .build();
    List<IBMDiscoveryV1Models.FontSetting> fontSettings = new List<IBMDiscoveryV1Models.FontSetting> { fontSetting };
    IBMDiscoveryV1Models.PdfHeadingDetection pdfHeadingDetection = new IBMDiscoveryV1Models.PdfHeadingDetectionBuilder()
      .fonts(fontSettings)
      .build();
    IBMDiscoveryV1Models.PdfSettings pdfSettings = new IBMDiscoveryV1Models.PdfSettingsBuilder()
      .heading(pdfHeadingDetection)
      .build();
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.ConversionsBuilder()
      .pdf(pdfSettings)
      .build();
    IBMDiscoveryV1Models.CreateConfigurationOptions options = new
      IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .name('test_config')
      .description('test_config description')
      .addEnrichments(enrichment)
      .addNormalizations(normalizationOperation)
      .conversions(conversions)
      .build();
    IBMDiscoveryV1Models.Configuration resp = service.createConfiguration(options);
    System.debug('IBMDiscoveryV1FTests.testCreateConfiguration: ' + resp);
    return resp;
  }

  /**
   *  Test delete configuration
   *
   */
  public static void testDeleteConfiguration(IBMDiscoveryV1 service, String environmentId, String configurationId) {
    IBMDiscoveryV1Models.DeleteConfigurationOptions options = new
      IBMDiscoveryV1Models.DeleteConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    service.deleteConfiguration(options);
  }

  /**
   *  Test get configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testGetConfiguration(IBMDiscoveryV1 service, String environmentId, String configurationId) {
    IBMDiscoveryV1Models.GetConfigurationOptions options = new
      IBMDiscoveryV1Models.GetConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    IBMDiscoveryV1Models.Configuration resp = service.getConfiguration(options);
    System.debug('IBMDiscoveryV1FTests.testGetConfiguration: ' + resp);
    return resp;
  }

   /**
   *  Test update configuration
   *
   */
  public static IBMDiscoveryV1Models.Configuration testUpdateConfiguration(IBMDiscoveryV1 service, String environmentId, String configurationId) {
    IBMDiscoveryV1Models.UpdateConfigurationOptions options = new
      IBMDiscoveryV1Models.UpdateConfigurationOptionsBuilder()
      .name('test_environment')
      .description('test_environment description')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();

    IBMDiscoveryV1Models.Configuration resp = service.updateConfiguration(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateConfiguration: ' + resp);
    return resp;
  }

  /**
   *  Test list collections
   *
   */
  public static IBMDiscoveryV1Models.ListCollectionsResponse testListCollections(IBMDiscoveryV1 service, String environmentId) {
    IBMDiscoveryV1Models.ListCollectionsOptions options = new
      IBMDiscoveryV1Models.ListCollectionsOptionsBuilder()
      .environmentId(environmentId)
      .build();
    IBMDiscoveryV1Models.ListCollectionsResponse resp = service.listCollections(options);
    System.debug('IBMDiscoveryV1FTests.testListCollections: ' + resp);
    return resp;
  }

  /**
   *  Test create collection
   *
   */
  public static IBMDiscoveryV1Models.Collection testCreateCollection(IBMDiscoveryV1 service, String environmentId, String configurationId) {
    IBMDiscoveryV1Models.CreateCollectionOptions options = new
     IBMDiscoveryV1Models.CreateCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .configurationId(configurationId)
     .name('test_collection1')
     .description('test_collection description')
     .language('en')
     .build();
    IBMDiscoveryV1Models.Collection resp = service.createCollection(options);
    System.debug('IBMDiscoveryV1FTests.testCreateCollection: ' + resp);
    return resp;
  }


  /**
   *  Test get collection
   *
   */
  public static IBMDiscoveryV1Models.Collection testGetCollection(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.GetCollectionOptions options = new
      IBMDiscoveryV1Models.GetCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    IBMDiscoveryV1Models.Collection resp = service.getCollection(options);
    System.debug('IBMDiscoveryV1FTests.testGetCollection: ' + resp);
    return resp;
  }

  /**
   *  Test delete collection
   *
   */
  public static void testDeleteCollection(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.DeleteCollectionOptions options = new
     IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    service.deleteCollection(options);
  }

  /**
   *  Test update collection
   *
   */
  public static IBMDiscoveryV1Models.Collection testUpdateCollection(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.UpdateCollectionOptions options = new
     IBMDiscoveryV1Models.UpdateCollectionOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .name('test_coll')
     .description('test_coll description')
     .build();
    IBMDiscoveryV1Models.Collection resp = service.updateCollection(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateCollection: ' + resp);
    return resp;
  }

  /**
   *  Test list fields in a single collection. (IBMDiscoveryV1.listCollectionFields)
   *
   */
  public static IBMDiscoveryV1Models.ListCollectionFieldsResponse testListCollectionFields(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.ListCollectionFieldsOptions options = new
     IBMDiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp = service.listCollectionFields(options);
    System.debug('IBMDiscoveryV1FTests.testListCollectionFields: ' + resp);
    return resp;
  }

  /**
   *  Test list fields in multiple collections.
   *
   */
  public static IBMDiscoveryV1Models.ListCollectionFieldsResponse testListCollectionsFields(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    List<String> collectionIds=new List<String>{collectionId};
    IBMDiscoveryV1Models.ListFieldsOptions options = new
     IBMDiscoveryV1Models.ListFieldsOptionsBuilder()
     .environmentId(environmentId)
     .collectionIds(collectionIds)
     .build();
    IBMDiscoveryV1Models.ListCollectionFieldsResponse resp = service.listFields(options);
    System.debug('IBMDiscoveryV1FTests.testListCollectionsFields: ' + resp);
    return resp;
  }

  /**
   *  Test Query documents in multiple collections.
   *
   */
  public static IBMDiscoveryV1Models.QueryResponse testFederatedQuery(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.FederatedQueryOptions options = new
     IBMDiscoveryV1Models.FederatedQueryOptionsBuilder()
     .environmentId(environmentId)
     .collectionIds(collectionId)
     .build();
    IBMDiscoveryV1Models.QueryResponse resp = service.federatedQuery(options);
    System.debug('IBMDiscoveryV1FTests.testFederatedQuery: ' + resp);
    return resp;
  }

  /**
   *  Test get document
   *
   */
  public static IBMDiscoveryV1Models.DocumentStatus testGetDocumentStatus(IBMDiscoveryV1 service, String environmentId, String collectionId, String documentId) {
    IBMDiscoveryV1Models.GetDocumentStatusOptions options = new
     IBMDiscoveryV1Models.GetDocumentStatusOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .documentId(documentId)
     .build();
    IBMDiscoveryV1Models.DocumentStatus resp = service.getDocumentStatus(options);
    System.debug('IBMDiscoveryV1FTests.testGetDocumentStatus: ' + resp);
    return resp;
  }
   /**
   *  Test Query documents in single collection.
   *
   */
  public static IBMDiscoveryV1Models.QueryResponse testQuery(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.QueryOptions options = new
     IBMDiscoveryV1Models.QueryOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.QueryResponse resp = service.query(options);
    System.debug('IBMDiscoveryV1FTests.testQuery: ' + resp);
    return resp;
  }

  /**
   *  Test query collection system notices
   *
   */
  public static IBMDiscoveryV1Models.QueryNoticesResponse testQueryNotices(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.QueryNoticesOptions options = new
     IBMDiscoveryV1Models.QueryNoticesOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp = service.queryNotices(options);
    System.debug('IBMDiscoveryV1FTests.testQueryNotices: ' + resp);
    return resp;
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static IBMDiscoveryV1Models.TrainingQuery testAddTrainingData(IBMDiscoveryV1 service, String environmentId, String collectionId, String documentId) {
    IBMDiscoveryV1Models.TrainingExample trainingExample = new IBMDiscoveryV1Models.TrainingExampleBuilder()
      .documentId(documentId)
      .relevance(0)
      .build();
    IBMDiscoveryV1Models.AddTrainingDataOptions options = new IBMDiscoveryV1Models.AddTrainingDataOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .naturalLanguageQuery('test query')
     .addExamples(trainingExample)
     .build();
    IBMDiscoveryV1Models.TrainingQuery resp = service.addTrainingData(options);
    System.debug('IBMDiscoveryV1FTests.testAddTrainingData: ' + resp);
    return resp;
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static IBMDiscoveryV1Models.TrainingExample testCreateTrainingExample(IBMDiscoveryV1 service, String environmentId, String collectionId, String queryId) {
    IBMDiscoveryV1Models.TrainingExample te = new IBMDiscoveryV1Models.TrainingExampleBuilder()
      .documentId('008948a1-d9b5-432e-88ba-f744b60b49e0')
      .relevance(0)
      .build();
    IBMDiscoveryV1Models.CreateTrainingExampleOptions options = new
     IBMDiscoveryV1Models.CreateTrainingExampleOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .trainingExample(te)
     .relevance(0)
     .build();
    IBMDiscoveryV1Models.TrainingExample resp = service.createTrainingExample(options);
    System.debug('IBMDiscoveryV1FTests.testCreateTrainingExample: ' + resp);
    return resp;
  }

  /**
   *  Test get training example
   *
   */
  public static IBMDiscoveryV1Models.TrainingExample testGetTrainingExample(IBMDiscoveryV1 service, String environmentId, String collectionId, String queryId, String exampleId) {
    IBMDiscoveryV1Models.GetTrainingExampleOptions options = new
     IBMDiscoveryV1Models.GetTrainingExampleOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .exampleId(exampleId)
     .build();
    IBMDiscoveryV1Models.TrainingExample resp = service.getTrainingExample(options);

    System.debug('IBMDiscoveryV1FTests.TrainingExample: ' + resp);
    return resp;
  }
  /**
   *  Test get training data
   *
   */
  public static IBMDiscoveryV1Models.TrainingQuery testGetTrainingData(IBMDiscoveryV1 service, String environmentId, String collectionId, String queryId) {
    IBMDiscoveryV1Models.GetTrainingDataOptions options = new
     IBMDiscoveryV1Models.GetTrainingDataOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .build();
    IBMDiscoveryV1Models.TrainingQuery resp = service.getTrainingData(options);

    System.debug('IBMDiscoveryV1FTests.testGetTrainingData: ' + resp);
    return resp;
  }

   /**
   *  Test list training data
   *
   */
  public static IBMDiscoveryV1Models.TrainingDataSet testListTrainingData(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.ListTrainingDataOptions options = new
     IBMDiscoveryV1Models.ListTrainingDataOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .build();
    IBMDiscoveryV1Models.TrainingDataSet resp = service.listTrainingData(options);

    System.debug('IBMDiscoveryV1FTests.testListTrainingData: ' + resp);
    return resp;
  }

  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static IBMDiscoveryV1Models.TrainingExample testUpdateTrainingExample(IBMDiscoveryV1 service, String environmentId, String collectionId, String queryId, String exampleId) {
    IBMDiscoveryV1Models.UpdateTrainingExampleOptions options = new
     IBMDiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .exampleId(exampleId)
     .relevance(2)
     .build();
    IBMDiscoveryV1Models.TrainingExample resp = service.updateTrainingExample(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateTrainingExample: ' + resp);
    return resp;
  }

  /**
   *  Test deleting the example with the given ID for the training data query.
   */
  public static void testDeleteTrainingExample(IBMDiscoveryV1 service, String environmentId, String collectionId, String queryId, String exampleId) {
    IBMDiscoveryV1Models.DeleteTrainingExampleOptions options = new
     IBMDiscoveryV1Models.DeleteTrainingExampleOptionsBuilder('test', 'test', 'test', 'test')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId(queryId)
     .exampleId(exampleId)
     .build();
    service.deleteTrainingExample(options);
  }

   /**
   *  Test delete training data for a collection
   *
   */
  public static void testDeleteAllTrainingData(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.DeleteAllTrainingDataOptions options = new IBMDiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    service.deleteAllTrainingData(options);
   }

  /**
   *  Test delete training data and all associated examples from the training data set
   *
   */
  public static void testDeleteTrainingData(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    IBMDiscoveryV1Models.DeleteTrainingDataOptions options = new
     IBMDiscoveryV1Models.DeleteTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283', '5ae96bb9-80e5-43ea-916e-1f3412fbc283')
     .environmentId(environmentId)
     .collectionId(collectionId)
     .queryId('query-id')
     .build();
    service.deleteTrainingData(options);
  }

  /**
   *  Test delete document
   * used explorer to upload document
   *
   */
  public static void testDeleteDocument(IBMDiscoveryV1 service, String environmentId, String collectionId, String documentId) {
    IBMDiscoveryV1Models.DeleteDocumentOptions options = new
     IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder()
     .environmentId(environmentId)
     .collectionId(collectionId)
     .documentId(documentId)
     .build();
    service.deleteDocument(options);
  }

  /**
   *  Test query multiple collection system notices
   *
   * Used List fields to get fields
   */
  public static IBMDiscoveryV1Models.QueryNoticesResponse testFederatedQueryNotices(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    List<String> collectionIds=new List<String>{collectionId};
    IBMDiscoveryV1Models.FederatedQueryNoticesOptions options = new
     IBMDiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
     .environmentId(environmentId)
     .collectionIds(collectionIds)
     .xReturn(new List<String>{'extracted_metadata.title', 'enriched_text.sentiment.document.label'})
     .xsort(new List<String>{'extracted_metadata.title', 'enriched_text.sentiment.document.label'})
     .build();
    IBMDiscoveryV1Models.QueryNoticesResponse resp = service.federatedQueryNotices(options);
    System.debug('IBMDiscoveryV1FTests.testFederatedQueryNotices: ' + resp);
    return resp;
  }

  /**
   *  Add and delete a document.
   */
  public static Boolean testAddAndDeleteDocument(IBMDiscoveryV1 service, String environmentId, String collectionId) {
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
    IBMDiscoveryV1Models.DocumentAccepted resp = service.addDocument(addOptions);
    String documentId = resp.getDocumentId();
    System.debug('IBMDiscoveryV1FTests.testAddAndDeleteDocument (add): ' + resp);

    IBMDiscoveryV1Models.GetDocumentStatusOptions getOptions = new IBMDiscoveryV1Models.GetDocumentStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();

    String status = service.getDocumentStatus(getOptions).getStatus();
    while (!status.equals('available')) {
      status = service.getDocumentStatus(getOptions).getStatus();
    }

    IBMDiscoveryV1Models.DeleteDocumentOptions options = new IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();
    service.deleteDocument(options);

    System.debug('Document successfully deleted');
    return true;
  }

  /**
   *  Update a document.
   *
   */
  public static IBMDiscoveryV1Models.DocumentAccepted testUpdateDocument(IBMDiscoveryV1 service, String environmentId, String collectionId, String documentId) {
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
     service.updateDocument(options);
    System.debug('IBMDiscoveryV1FTests.testUpdateDocument: ' + resp);
    return resp;
  }

  public static void testExpansionsOperations(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    List<String> expansion1InputTerms = new List<String> { 'weekday', 'week day' };
    List<String> expansion1ExpandedTerms = new List<String> { 'monday', 'tuesday', 'wednesday', 'thursday', 'friday' };
    List<String> expansion2InputTerms = new List<String> { 'weekend', 'week end' };
    List<String> expansion2ExpandedTerms = new List<String> { 'saturday', 'sunday' };
    IBMDiscoveryV1Models.Expansion expansion1 = new IBMDiscoveryV1Models.ExpansionBuilder()
      .inputTerms(expansion1InputTerms)
      .expandedTerms(expansion1ExpandedTerms)
      .build();
    IBMDiscoveryV1Models.Expansion expansion2 = new IBMDiscoveryV1Models.ExpansionBuilder()
      .inputTerms(expansion2InputTerms)
      .expandedTerms(expansion2ExpandedTerms)
      .build();
    IBMDiscoveryV1Models.Expansions expansions = new IBMDiscoveryV1Models.ExpansionsBuilder()
      .expansions(new List<IBMDiscoveryV1Models.Expansion> { expansion1, expansion2 })
      .build();
    IBMDiscoveryV1Models.CreateExpansionsOptions createOptions = new IBMDiscoveryV1Models.CreateExpansionsOptionsBuilder()
        .environmentId(environmentId)
        .collectionId(collectionId)
        .expansions(expansions)
        .build();
    IBMDiscoveryV1Models.Expansions createResults = service.createExpansions(createOptions);

    System.assertEquals(createResults.getExpansions().size(), 2);
    System.assertEquals(createResults.getExpansions().get(0).getInputTerms(), expansion1InputTerms);
    System.assertEquals(createResults.getExpansions().get(0).getExpandedTerms(), expansion1ExpandedTerms);
    System.assertEquals(createResults.getExpansions().get(1).getInputTerms(), expansion2InputTerms);
    System.assertEquals(createResults.getExpansions().get(1).getExpandedTerms(), expansion2ExpandedTerms);

    IBMDiscoveryV1Models.ListExpansionsOptions listOptions = new IBMDiscoveryV1Models.ListExpansionsOptionsBuilder()
        .environmentId(environmentId)
        .collectionId(collectionId)
        .build();
    IBMDiscoveryV1Models.Expansions listResults = service.listExpansions(listOptions);

    System.assertEquals(listResults.getExpansions().size(), 2);

    IBMDiscoveryV1Models.DeleteExpansionsOptions deleteOptions = new IBMDiscoveryV1Models.DeleteExpansionsOptionsBuilder()
        .environmentId(environmentId)
        .collectionId(collectionId)
        .build();
    service.deleteExpansions(deleteOptions);

    IBMDiscoveryV1Models.Expansions emptyListResults = service.listExpansions(listOptions);
  }

  public static void testCredentialsOperations(IBMDiscoveryV1 service, String environmentId) {
    String sourceType = 'salesforce';
    String credentialType = 'username_password';
    String url = 'https://login.salesforce.com';
    String credentialsUsername = 'test@username.com';
    String credentialsPassword = 'test_password';

    IBMDiscoveryV1Models.CredentialDetails credentialDetails = new IBMDiscoveryV1Models.CredentialDetailsBuilder()
      .credentialType(credentialType)
      .url(url)
      .username(credentialsUsername)
      .password(credentialsPassword)
      .build();
    IBMDiscoveryV1Models.Credentials credentials = new IBMDiscoveryV1Models.CredentialsBuilder()
      .sourceType(sourceType)
      .credentialDetails(credentialDetails)
      .build();

    IBMDiscoveryV1Models.CreateCredentialsOptions createOptions = new IBMDiscoveryV1Models.CreateCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentials(credentials)
      .build();
    IBMDiscoveryV1Models.Credentials createdCredentials = service.createCredentials(createOptions);
    String credentialId = createdCredentials.getCredentialId();

    String newUrl = 'https://newlogin.salesforce.com';
    IBMDiscoveryV1Models.CredentialDetails updatedDetails = credentialDetails.newBuilder()
      .url(newUrl)
      .build();

    IBMDiscoveryV1Models.UpdateCredentialsOptions updateOptions = new IBMDiscoveryV1Models.UpdateCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .sourceType(sourceType)
      .credentialDetails(updatedDetails)
      .build();
    IBMDiscoveryV1Models.Credentials updatedCredentials = service.updateCredentials(updateOptions);

    IBMDiscoveryV1Models.GetCredentialsOptions getOptions = new IBMDiscoveryV1Models.GetCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .build();
    IBMDiscoveryV1Models.Credentials retrievedCredentials = service.getCredentials(getOptions);

    IBMDiscoveryV1Models.ListCredentialsOptions listOptions = new IBMDiscoveryV1Models.ListCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .build();
    IBMDiscoveryV1Models.CredentialsList credentialsList = service.listCredentials(listOptions);

    IBMDiscoveryV1Models.DeleteCredentialsOptions deleteOptions = new IBMDiscoveryV1Models.DeleteCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .build();
    service.deleteCredentials(deleteOptions);
  }

  public static void testCreateEvent(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    // create test document
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
    IBMDiscoveryV1Models.DocumentAccepted accepted = service.addDocument(addOptions);

    // make query to get session token
    IBMDiscoveryV1Models.QueryOptions queryOptions = new IBMDiscoveryV1Models.QueryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .naturalLanguageQuery('test query')
      .build();
    IBMDiscoveryV1Models.QueryResponse queryResponse = service.query(queryOptions);
    String sessionToken = queryResponse.getSessionToken();

    // make createEvent call
    IBMDiscoveryV1Models.EventData eventData = new IBMDiscoveryV1Models.EventDataBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(accepted.getDocumentId())
      .sessionToken(sessionToken)
      .build();
    IBMDiscoveryV1Models.CreateEventOptions createEventOptions = new IBMDiscoveryV1Models.CreateEventOptionsBuilder()
      .xtype('click')
      .data(eventData)
      .build();
    IBMDiscoveryV1Models.CreateEventResponse eventResponse = service.createEvent(createEventOptions);

    System.debug('IBMDiscoveryV1FTests.testCreateEvent: ' + eventResponse);
  }

  public static void testQueryLog(IBMDiscoveryV1 service) {
    IBMDiscoveryV1Models.LogQueryResponse response = service.queryLog(null);
    System.debug('IBMDiscoveryV1FTests.testQueryLog: ' + response);
  }

  public static void testGetMetricsEventRate(IBMDiscoveryV1 service) {
    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsEventRate(null);
    System.debug('IBMDiscoveryV1FTests.testGetMetricsEventRate: ' + response);
  }

  public static void testGetMetricsQuery(IBMDiscoveryV1 service) {
    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsQuery(null);
    System.debug('IBMDiscoveryV1FTests.testGetMetricsQuery: ' + response);
  }

  public static void testGetMetricsQueryEvent(IBMDiscoveryV1 service) {
    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsQueryEvent(null);
    System.debug('IBMDiscoveryV1FTests.testGetMetricsQueryEvent: ' + response);
  }

  public static void testGetMetricsQueryNoResults(IBMDiscoveryV1 service) {
    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsQueryNoResults(null);
    System.debug('IBMDiscoveryV1FTests.testGetMetricsQueryNoResults: ' + response);
  }

  public static void testGetMetricsQueryTokenEvent(IBMDiscoveryV1 service) {
    IBMDiscoveryV1Models.MetricTokenResponse response = service.getMetricsQueryTokenEvent(null);
    System.debug('IBMDiscoveryV1FTests.testGetMetricsQueryTokenEvent: ' + response);
  }

  public static void testTokenizationDictionaryOperations(IBMDiscoveryV1 service, String environmentId, String collectionId) {
    // create collection first because creating a tokenization dictionary currently is only supported in Japanese
    // collections
    IBMDiscoveryV1Models.CreateCollectionOptions createCollectionOptions = new IBMDiscoveryV1Models.CreateCollectionOptionsBuilder()
        .environmentId(environmentId)
        .name('tokenization-dict-testing-collection')
        .language('ja')
        .build();
    IBMDiscoveryV1Models.Collection tokenDictTestCollection = service.createCollection(createCollectionOptions);
    String testCollectionId = tokenDictTestCollection.getCollectionId();

    try {
      IBMDiscoveryV1Models.TokenDictRule tokenDictRule = new IBMDiscoveryV1Models.TokenDictRuleBuilder()
        .text('token')
        .partOfSpeech('noun')
        .readings(new List<String> { 'reading 1', 'reading 2' })
        .tokens(new List<String> { 'token 1', 'token 2' })
        .build();

      // test creating tokenization dictionary
      IBMDiscoveryV1Models.CreateTokenizationDictionaryOptions createOptions = new IBMDiscoveryV1Models.CreateTokenizationDictionaryOptionsBuilder()
          .environmentId(environmentId)
          .collectionId(testCollectionId)
          .addTokenizationRules(tokenDictRule)
          .build();
      IBMDiscoveryV1Models.TokenDictStatusResponse createResponse = service.createTokenizationDictionary(createOptions);
      System.assert(createResponse != null);

      // test getting tokenization dictionary
      IBMDiscoveryV1Models.GetTokenizationDictionaryStatusOptions getOptions = new IBMDiscoveryV1Models.GetTokenizationDictionaryStatusOptionsBuilder()
          .environmentId(environmentId)
          .collectionId(testCollectionId)
          .build();
      IBMDiscoveryV1Models.TokenDictStatusResponse getResponse = service.getTokenizationDictionaryStatus(getOptions);
      System.assert(getResponse != null);

      // test deleting tokenization dictionary
      IBMDiscoveryV1Models.DeleteTokenizationDictionaryOptions deleteOptions = new IBMDiscoveryV1Models.DeleteTokenizationDictionaryOptionsBuilder()
          .environmentId(environmentId)
          .collectionId(testCollectionId)
          .build();
      service.deleteTokenizationDictionary(deleteOptions);
    } catch(Exception e) {
      // this most likely means the service wasn't ready to handle another tokenization file - this is fine
      System.debug('Service wasn\'t ready yet! Error: ' + e.getMessage());
    } finally {
      // delete test collection
      IBMDiscoveryV1Models.DeleteCollectionOptions deleteCollectionOptions = new IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder()
          .environmentId(environmentId)
          .collectionId(testCollectionId)
          .build();
      service.deleteCollection(deleteCollectionOptions);
    }
  }

  public static void testGatewayOperations(IBMDiscoveryV1 service, String environmentId) {
    IBMDiscoveryV1Models.ListGatewaysOptions listGatewaysOptions = new IBMDiscoveryV1Models.ListGatewaysOptionsBuilder()
        .environmentId(environmentId)
        .build();
    Long originalListSize = service.listGateways(listGatewaysOptions).getGateways().size();

    String gatewayName = 'salesforce-sdk-test-gateway';

    IBMDiscoveryV1Models.CreateGatewayOptions createGatewayOptions = new IBMDiscoveryV1Models.CreateGatewayOptionsBuilder()
        .environmentId(environmentId)
        .name(gatewayName)
        .build();
    IBMDiscoveryV1Models.Gateway gatewayResponse = service.createGateway(createGatewayOptions);
    System.assert(gatewayResponse != null);
    System.assertEquals(gatewayName, gatewayResponse.getName());
    String testGatewayId = gatewayResponse.getGatewayId();

    IBMDiscoveryV1Models.GatewayList listAfterCreate = service.listGateways(listGatewaysOptions);
    System.assert(listAfterCreate != null);
    System.assert(listAfterCreate.getGateways().size() > originalListSize);

    IBMDiscoveryV1Models.GetGatewayOptions getGatewayOptions = new IBMDiscoveryV1Models.GetGatewayOptionsBuilder()
        .environmentId(environmentId)
        .gatewayId(testGatewayId)
        .build();
    IBMDiscoveryV1Models.Gateway getGatewayResponse = service.getGateway(getGatewayOptions);
    System.assert(getGatewayResponse != null);
    System.assertEquals(gatewayName, getGatewayResponse.getName());

    IBMDiscoveryV1Models.DeleteGatewayOptions deleteGatewayOptions = new IBMDiscoveryV1Models.DeleteGatewayOptionsBuilder()
        .environmentId(environmentId)
        .gatewayId(testGatewayId)
        .build();
    service.deleteGateway(deleteGatewayOptions);

    IBMDiscoveryV1Models.GatewayList listAfterDelete = service.listGateways(listGatewaysOptions);
    System.assertEquals(originalListSize, listAfterDelete.getGateways().size());
  }

  public static Attachment createFile()
  {
    String DocumentContentStr = '<html><body>This blog will cover how to integrate a conversational interface with your Salesforce customer database. '
      + 'Conversational interfaces allow for a much more natural interaction, especially over a fairly large dataset. This is ideal for users '
      + 'who are not familiar with how to use various systems, or who need to quickly get access to a variety of information in a small amount '
      + 'of time, like while on site with a customer during a meeting. This blog will cover some basic use cases as well as provide information '
      + 'on how to connect a conversational system with your Salesforce database.</body></html>';
    blob DocumentContentBlob = Blob.valueOf(DocumentContentStr);
    return new Attachment(Body = DocumentContentBlob,
      Name='myPageDocument.html',
      Description='My discovery page blog',
      ContentType='text/html');
  }
}