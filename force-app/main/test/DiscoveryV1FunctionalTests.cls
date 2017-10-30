public with sharing class DiscoveryV1FunctionalTests {
  private static String username;
  private static String password;
  
  static {
    username = 'placeholder';
    password = 'placeholder';
  } 
  /**
   *  All functional tests acan be done as follows or using named credentials
   *  Named credentials is prefered way to go
   * If you are using name credentials the you don't need  discovery.setEndPoint or discovery.setUsernameAndPassword
   */
  /**
   *  Test Successfully creating a new environment.
   */
  public static String testCreateEnvironment() {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    String text = 'test_environment';
    try {
      DiscoveryV1Models.CreateEnvironmentOptions options = new DiscoveryV1Models.CreateEnvironmentOptionsBuilder()
        .name(text)
        .description('test_environment description')
        .build();
      DiscoveryV1Models.Environment resp = discovery.createEnvironment(options);
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
  public static DiscoveryV1Models.ListEnvironmentsResponse testListEnvironment() {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    String text = 'test_environment';
    DiscoveryV1Models.ListEnvironmentsOptions options = new DiscoveryV1Models.ListEnvironmentsOptionsBuilder()
      .build();
    DiscoveryV1Models.ListEnvironmentsResponse resp = discovery.listEnvironments(options);
    system.debug('DiscoveryV1FunctionalTests.testListEnvironment():'+resp);
    return resp;
  }
  
  
  /**
   *  Test deleting an environment.
   *
   * Use environment id as parameter to delete environment
   */
  public static void testDeleteEnvironment(String environmentId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.DeleteEnvironmentOptions options = new DiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    discovery.deleteEnvironment(options);
  }
  
   /**
   *  Test get the environment.
   *
   */
  public static DiscoveryV1Models.Environment testGetEnvironment(String environmentId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.GetEnvironmentOptions options = new DiscoveryV1Models.GetEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    DiscoveryV1Models.Environment resp = discovery.getEnvironment(options);
    system.debug('DiscoveryV1FunctionalTests.testGetEnvironment: '+resp);  
    return resp;
  }
  
   /**
   *  Test update the environment.
   *
   */
  public static DiscoveryV1Models.Environment testUpdateEnvironment(String environmentId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    //String text = '5ae96bb9-80e5-43ea-916e-1f3412fbc283';
    DiscoveryV1Models.UpdateEnvironmentOptions options = new DiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .name('PRFT New Environment')
      .description('PRFT New Environment updated')
      .build();
    DiscoveryV1Models.Environment resp = discovery.updateEnvironment(options);
    system.debug('DiscoveryV1FunctionalTests.testUpdateEnvironment: '+resp);    
    return resp;
  }
  
  /**
   *  Test list configurations
   *
   */
  public static DiscoveryV1Models.ListConfigurationsResponse testListConfigurations(String environmentId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.ListConfigurationsOptions options = new DiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId(environmentId)
      .build();
    DiscoveryV1Models.ListConfigurationsResponse resp = discovery.listConfigurations(options);
    system.debug('DiscoveryV1FunctionalTests.testListConfigurations : ==>'+resp); 
    return resp; 
  }
  
  /**
   *  Test create configuration
   *
   */
  public static DiscoveryV1Models.Configuration testCreateConfiguration(String environmentId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
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
      .environmentId(environmentId)
      .name('test_config')
      .description('test_config description')
      .addEnrichments(enrichment)
      .addNormalizations(normalizationOperation)
      .conversions(conversions)
      .build();
    DiscoveryV1Models.Configuration resp = discovery.createConfiguration(options);
    system.debug('DiscoveryV1FunctionalTests.testCreateConfiguration: '+resp); 
    return resp; 
  }
  
  /**
   *  Test delete configuration
   *
   */
  public static void testDeleteConfiguration(String environmentId, String configurationId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.DeleteConfigurationOptions options = new DiscoveryV1Models.DeleteConfigurationOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    discovery.deleteConfiguration(options);
  }
  
  /**
   *  Test get configuration
   *
   */
  public static DiscoveryV1Models.Configuration testGetConfiguration(String environmentId, String configurationId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.GetConfigurationOptions options = new DiscoveryV1Models.GetConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    DiscoveryV1Models.Configuration resp = discovery.getConfiguration(options);
    system.debug('DiscoveryV1FunctionalTests.testGetConfiguration: '+resp); 
    return resp; 
  }
  
   /**
   *  Test update configuration
   *
   */
  public static DiscoveryV1Models.Configuration testUpdateConfiguration(String environmentId, String configurationId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.UpdateConfigurationOptions options = new DiscoveryV1Models.UpdateConfigurationOptionsBuilder()
      .name('test_environment')
      .description('test_environment description')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    DiscoveryV1Models.Configuration resp = discovery.updateConfiguration(options);
    system.debug('DiscoveryV1FunctionalTests.testUpdateConfiguration: '+resp); 
    return resp; 
  }
  
  /**
   *  Test list collections
   *
   */
  public static DiscoveryV1Models.ListCollectionsResponse testListCollections(String environmentId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.ListCollectionsOptions options = new DiscoveryV1Models.ListCollectionsOptionsBuilder()
      .environmentId(environmentId)
      .build();
    DiscoveryV1Models.ListCollectionsResponse resp = discovery.listCollections(options);
    system.debug('DiscoveryV1FunctionalTests.testListCollections: '+resp); 
    return resp; 
  }
  
  /**
   *  Test create collection
   *
   */
  public static DiscoveryV1Models.Collection testCreateCollection(String environmentId, String configurationId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.CreateCollectionOptions options = new DiscoveryV1Models.CreateCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .configurationId(configurationId)
      .name('test_collection')
      .description('test_collection description')
      .language('en')
      .build();
    DiscoveryV1Models.Collection resp = discovery.createCollection(options);
    system.debug('DiscoveryV1FunctionalTests.testCreateCollection: '+resp); 
    return resp; 
  }
  
  
  /**
   *  Test get collection
   *
   */
  public static DiscoveryV1Models.Collection testGetCollection(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.GetCollectionOptions options = new DiscoveryV1Models.GetCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    DiscoveryV1Models.Collection resp = discovery.getCollection(options);
    system.debug('DiscoveryV1FunctionalTests.testGetCollection: '+resp); 
    return resp; 
  }
  
  /**
   *  Test delete collection
   *
   */
  public static void testDeleteCollection(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.DeleteCollectionOptions options = new DiscoveryV1Models.DeleteCollectionOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    discovery.deleteCollection(options);
  }
  
  /**
   *  Test update collection
   *
   */
  public static DiscoveryV1Models.Collection testUpdateCollection(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.UpdateCollectionOptions options = new DiscoveryV1Models.UpdateCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .name('test_coll')
      .description('test_coll description')
      .build();
    DiscoveryV1Models.Collection resp = discovery.updateCollection(options);
    system.debug('DiscoveryV1FunctionalTests.testUpdateCollection: '+resp); 
    return resp; 
  }
  
  /**
   *  Test list fields in a single collection. (DiscoveryV1.listCollectionFields)
   *
   */
  public static DiscoveryV1Models.ListCollectionFieldsResponse testListCollectionFields(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.ListCollectionFieldsOptions options = new DiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    DiscoveryV1Models.ListCollectionFieldsResponse resp = discovery.listCollectionFields(options);
    system.debug('DiscoveryV1FunctionalTests.testListCollectionFields: '+resp); 
    return resp;
  }
  
  /**
   *  Test list fields in multiple collections.
   *
   */
  public static DiscoveryV1Models.ListCollectionFieldsResponse testListCollectionsFields(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    List<String> collectionIds=new List<String>{collectionId};
    DiscoveryV1Models.ListFieldsOptions options = new DiscoveryV1Models.ListFieldsOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .build();
    DiscoveryV1Models.ListCollectionFieldsResponse resp = discovery.listFields(options);
    system.debug('DiscoveryV1FunctionalTests.testListCollectionsFields: '+resp); 
    return resp;
  }
  
  /**
   *  Test Query documents in multiple collections.
   *
   */
  public static DiscoveryV1Models.QueryResponse testFederatedQuery(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    List<String> collectionIds=new List<String>{collectionId};
    DiscoveryV1Models.FederatedQueryOptions options = new DiscoveryV1Models.FederatedQueryOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .build();
    DiscoveryV1Models.QueryResponse resp = discovery.federatedQuery(options);
    system.debug('DiscoveryV1FunctionalTests.testFederatedQuery: '+resp); 
    return resp;
  }
  
  /**
   *  Test get document
   *
   */
  public static DiscoveryV1Models.DocumentStatus testGetDocumentStatus(String environmentId, String collectionId, String documentId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.GetDocumentStatusOptions options = new DiscoveryV1Models.GetDocumentStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();
    DiscoveryV1Models.DocumentStatus resp = discovery.getDocumentStatus(options);
    system.debug('DiscoveryV1FunctionalTests.testGetDocumentStatus: '+resp); 
    return resp;  
  }
   /**
   *  Test Query documents in single collection.
   *
   */
  public static DiscoveryV1Models.QueryResponse testQuery(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.QueryOptions options = new DiscoveryV1Models.QueryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    DiscoveryV1Models.QueryResponse resp = discovery.query(options);
    system.debug('DiscoveryV1FunctionalTests.testQuery: '+resp); 
    return resp;
  }
  
  /**
   *  Test query collection system notices
   *
   */
  public static DiscoveryV1Models.QueryNoticesResponse testQueryNotices(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.QueryNoticesOptions options = new DiscoveryV1Models.QueryNoticesOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    DiscoveryV1Models.QueryNoticesResponse resp = discovery.queryNotices(options);
    system.debug('DiscoveryV1FunctionalTests.testQueryNotices: '+resp); 
    return resp;
  }
  
  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static DiscoveryV1Models.TrainingQuery testAddTrainingData(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.TrainingExample te=new DiscoveryV1Models.TrainingExample();
    te.setDocumentId('0c0ee07b-952a-450e-b20f-95c36916f9b0');
    te.setRelevance(0);
    DiscoveryV1Models.AddTrainingDataOptions options = new DiscoveryV1Models.AddTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
      .environmentId(environmentId)
      .collectionId(collectionId)
      .naturalLanguageQuery('en')
      .filter('test')
      .addExamples(te)
      .build();
    DiscoveryV1Models.TrainingQuery resp = discovery.addTrainingData(options);
    system.debug('DiscoveryV1FunctionalTests.testAddTrainingData: '+resp); 
    return resp;
  }
  
  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static DiscoveryV1Models.TrainingExample testCreateTrainingExample(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    List<String> collectionIds=new List<String>{'Collection1','Collection2'};
    DiscoveryV1Models.TrainingExample te=new DiscoveryV1Models.TrainingExample();
    te.setDocumentId('20ab41e1-1f5f-4b3f-8745-4173319ad611');
    te.setRelevance(0);
    DiscoveryV1Models.CreateTrainingExampleOptions options = new DiscoveryV1Models.CreateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .training_example(te)
      .relevance(0)
      .build();
    DiscoveryV1Models.TrainingExample resp = discovery.createTrainingExample(options);
    system.debug('DiscoveryV1FunctionalTests.testCreateTrainingExample: '+resp); 
    return resp; 
  }
  
  /**
   *  Test get training example
   *
   */
  public static DiscoveryV1Models.TrainingExample testGetTrainingExample(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.GetTrainingExampleOptions options = new DiscoveryV1Models.GetTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .exampleId('20ab41e1-1f5f-4b3f-8745-4173319ad611')
      .build();
    DiscoveryV1Models.TrainingExample resp = discovery.getTrainingExample(options);
    
    system.debug('DiscoveryV1FunctionalTests.TrainingExample: '+resp); 
    return resp; 
  }
  /**
   *  Test get training data
   *
   */
  public static DiscoveryV1Models.TrainingQuery testGetTrainingData(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.GetTrainingDataOptions options = new DiscoveryV1Models.GetTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .build();
    DiscoveryV1Models.TrainingQuery resp = discovery.getTrainingData(options);
    
    system.debug('DiscoveryV1FunctionalTests.testGetTrainingData: '+resp); 
    return resp; 
  }
  
   /**
   *  Test list training data
   *
   */
  public static DiscoveryV1Models.TrainingDataSet testListTrainingData(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.ListTrainingDataOptions options = new DiscoveryV1Models.ListTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    DiscoveryV1Models.TrainingDataSet resp = discovery.listTrainingData(options);
    
    system.debug('DiscoveryV1FunctionalTests.testListTrainingData: '+resp); 
    return resp; 
  }
  
  /**
   *  Test adding a query to the training data in single collection.
   *
   */
  public static DiscoveryV1Models.TrainingExample testUpdateTrainingExample(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.UpdateTrainingExampleOptions options = new DiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId('8eec1310ae41ecddac8fa7acba159a2ea0a54b7d')
      .exampleId('20ab41e1-1f5f-4b3f-8745-4173319ad611')
      .relevance(2)
      .build();
    DiscoveryV1Models.TrainingExample resp = discovery.updateTrainingExample(options);
    system.debug('DiscoveryV1FunctionalTests.testUpdateTrainingExample: '+resp); 
    return resp;
  }
  
  /**
   *  Test deleting the example with the given ID for the training data query.
   */
  public static void testDeleteTrainingExample(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.DeleteTrainingExampleOptions options = new DiscoveryV1Models.DeleteTrainingExampleOptionsBuilder('test','test','test','test')
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
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.DeleteAllTrainingDataOptions options = new DiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.DeleteTrainingDataOptions options = new DiscoveryV1Models.DeleteTrainingDataOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    DiscoveryV1Models.DeleteDocumentOptions options = new DiscoveryV1Models.DeleteDocumentOptionsBuilder('5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283','5ae96bb9-80e5-43ea-916e-1f3412fbc283')
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
  public static DiscoveryV1Models.QueryNoticesResponse testFederatedQueryNotices(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    List<String> collectionIds=new List<String>{collectionId};
    DiscoveryV1Models.FederatedQueryNoticesOptions options = new DiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .returnField(new List<String>{'extracted_metadata.title','enriched_text.sentiment.document.label'})
      .sortField(new List<String>{'extracted_metadata.title','enriched_text.sentiment.document.label'})
      .build();
    DiscoveryV1Models.QueryNoticesResponse resp = discovery.federatedQueryNotices(options);
    system.debug('DiscoveryV1FunctionalTests.testFederatedQueryNotices: '+resp); 
    return resp;
  }
  
  /**
   *  Add a document.
   *
   * then test using testGetDocumentStatus if document is loaded successfully 
   */
  public static DiscoveryV1Models.DocumentAccepted testAddDocument(String environmentId, String collectionId) {
    DiscoveryV1 discovery = new DiscoveryV1('2017-09-01');
    discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    discovery.setUsernameAndPassword(username, password);
    Attachment att=[Select Id,Body,BodyLength,ContentType,Name,Description From Attachment where Id='00P1I000000ZEcP'];
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    DiscoveryV1Models.AddDocumentOptions options = new DiscoveryV1Models.AddDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .file(testfile)
      .filename(att.Name)
      .fileContentType(att.ContentType)
      .build();
    DiscoveryV1Models.DocumentAccepted resp = discovery.addDocument(options);
    system.debug('DiscoveryV1FunctionalTests.testAddDocument: '+resp); 
    return resp;
  }
}