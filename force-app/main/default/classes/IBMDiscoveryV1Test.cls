@isTest
private class IBMDiscoveryV1Test {
  private static IBMDiscoveryV1 service;

  static {
    service = new IBMDiscoveryV1('2019-04-30', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testAddDocumentOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String filename = 'filename';
    String fileContentType = 'file_content_type';
    String metadata = 'metadata';

    IBMDiscoveryV1Models.AddDocumentOptions testRequestModel = new IBMDiscoveryV1Models.AddDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .file(file)
      .filename(filename)
      .fileContentType(fileContentType)
      .metadata(metadata)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(file, testRequestModel.file());
    System.assertEquals(filename, testRequestModel.filename());
    System.assertEquals(fileContentType, testRequestModel.fileContentType());
    System.assertEquals(metadata, testRequestModel.metadata());
    Test.stopTest();
  }
  static testMethod void testAddTrainingDataOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String naturalLanguageQuery = 'natural_language_query';
    String filter = 'filter';
    IBMDiscoveryV1Models.TrainingExample examplesItem = new IBMDiscoveryV1Models.TrainingExampleBuilder()
      .build();
    List<IBMDiscoveryV1Models.TrainingExample> examples = new List<IBMDiscoveryV1Models.TrainingExample> { examplesItem } ;

    IBMDiscoveryV1Models.AddTrainingDataOptions testRequestModel = new IBMDiscoveryV1Models.AddTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .naturalLanguageQuery(naturalLanguageQuery)
      .filter(filter)
      .examples(examples)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(naturalLanguageQuery, testRequestModel.naturalLanguageQuery());
    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(examples, testRequestModel.examples());
    Test.stopTest();
  }
  static testMethod void testAggregationResultModel() {
    Test.startTest();
    String key = 'key';
    Long matchingResults = 10L;
    IBMDiscoveryV1Models.QueryAggregation aggregationsItem = new IBMDiscoveryV1Models.QueryAggregation();
    List<IBMDiscoveryV1Models.QueryAggregation> aggregations = new List<IBMDiscoveryV1Models.QueryAggregation> { aggregationsItem } ;

    IBMDiscoveryV1Models.AggregationResult testRequestModel = new IBMDiscoveryV1Models.AggregationResult();
    testRequestModel.setKey(key);
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setAggregations(aggregations);

    System.assertEquals(key, testRequestModel.getKey());
    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(aggregations, testRequestModel.getAggregations());
    Test.stopTest();
  }
  static testMethod void testCollectionModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';
    String configurationId = 'configuration_id';
    String language = 'language';
    IBMDiscoveryV1Models.DocumentCounts documentCounts = new IBMDiscoveryV1Models.DocumentCounts();
    IBMDiscoveryV1Models.CollectionDiskUsage diskUsage = new IBMDiscoveryV1Models.CollectionDiskUsage();
    IBMDiscoveryV1Models.TrainingStatus trainingStatus = new IBMDiscoveryV1Models.TrainingStatus();
    IBMDiscoveryV1Models.CollectionCrawlStatus crawlStatus = new IBMDiscoveryV1Models.CollectionCrawlStatus();
    IBMDiscoveryV1Models.SduStatus smartDocumentUnderstanding = new IBMDiscoveryV1Models.SduStatus();

    IBMDiscoveryV1Models.Collection testRequestModel = new IBMDiscoveryV1Models.Collection();
    testRequestModel.setName(name);
    testRequestModel.setDescription(description);
    testRequestModel.setConfigurationId(configurationId);
    testRequestModel.setLanguage(language);
    testRequestModel.setDocumentCounts(documentCounts);
    testRequestModel.setDiskUsage(diskUsage);
    testRequestModel.setTrainingStatus(trainingStatus);
    testRequestModel.setCrawlStatus(crawlStatus);
    testRequestModel.setSmartDocumentUnderstanding(smartDocumentUnderstanding);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(configurationId, testRequestModel.getConfigurationId());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(documentCounts, testRequestModel.getDocumentCounts());
    System.assertEquals(diskUsage, testRequestModel.getDiskUsage());
    System.assertEquals(trainingStatus, testRequestModel.getTrainingStatus());
    System.assertEquals(crawlStatus, testRequestModel.getCrawlStatus());
    System.assertEquals(smartDocumentUnderstanding, testRequestModel.getSmartDocumentUnderstanding());
    Test.stopTest();
  }
  static testMethod void testCollectionCrawlStatusModel() {
    Test.startTest();
    IBMDiscoveryV1Models.SourceStatus sourceCrawl = new IBMDiscoveryV1Models.SourceStatus();

    IBMDiscoveryV1Models.CollectionCrawlStatus testRequestModel = new IBMDiscoveryV1Models.CollectionCrawlStatus();
    testRequestModel.setSourceCrawl(sourceCrawl);

    System.assertEquals(sourceCrawl, testRequestModel.getSourceCrawl());
    Test.stopTest();
  }
  static testMethod void testCollectionDiskUsageModel() {
    Test.startTest();

    IBMDiscoveryV1Models.CollectionDiskUsage testRequestModel = new IBMDiscoveryV1Models.CollectionDiskUsage();

    Test.stopTest();
  }
  static testMethod void testCollectionUsageModel() {
    Test.startTest();

    IBMDiscoveryV1Models.CollectionUsage testRequestModel = new IBMDiscoveryV1Models.CollectionUsage();

    Test.stopTest();
  }
  static testMethod void testCompletionsModel() {
    Test.startTest();
    List<String> completions = new List<String> { 'completions' } ;

    IBMDiscoveryV1Models.Completions testRequestModel = new IBMDiscoveryV1Models.Completions();
    testRequestModel.setCompletions(completions);

    System.assertEquals(completions, testRequestModel.getCompletions());
    Test.stopTest();
  }
  static testMethod void testConfigurationModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.ConversionsBuilder()
      .build();
    String destinationField = 'destination_field';
    String sourceField = 'source_field';
    String enrichment = 'enrichment';
    IBMDiscoveryV1Models.Enrichment enrichmentsItem = new IBMDiscoveryV1Models.EnrichmentBuilder()
      .destinationField(destinationField)
      .sourceField(sourceField)
      .enrichment(enrichment)
      .build();
    List<IBMDiscoveryV1Models.Enrichment> enrichments = new List<IBMDiscoveryV1Models.Enrichment> { enrichmentsItem } ;
    IBMDiscoveryV1Models.NormalizationOperation normalizationsItem = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .build();
    List<IBMDiscoveryV1Models.NormalizationOperation> normalizations = new List<IBMDiscoveryV1Models.NormalizationOperation> { normalizationsItem } ;
    IBMDiscoveryV1Models.Source source = new IBMDiscoveryV1Models.SourceBuilder()
      .build();

    IBMDiscoveryV1Models.Configuration testRequestModel = new IBMDiscoveryV1Models.ConfigurationBuilder()
      .name(name)
      .description(description)
      .conversions(conversions)
      .enrichments(enrichments)
      .normalizations(normalizations)
      .source(source)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(conversions, testRequestModel.getConversions());
    System.assertEquals(enrichments, testRequestModel.getEnrichments());
    System.assertEquals(normalizations, testRequestModel.getNormalizations());
    System.assertEquals(source, testRequestModel.getSource());
    Test.stopTest();
  }
  static testMethod void testConversionsModel() {
    Test.startTest();
    IBMDiscoveryV1Models.PdfSettings pdf = new IBMDiscoveryV1Models.PdfSettingsBuilder()
      .build();
    IBMDiscoveryV1Models.WordSettings word = new IBMDiscoveryV1Models.WordSettingsBuilder()
      .build();
    IBMDiscoveryV1Models.HtmlSettings html = new IBMDiscoveryV1Models.HtmlSettingsBuilder()
      .build();
    IBMDiscoveryV1Models.SegmentSettings segment = new IBMDiscoveryV1Models.SegmentSettingsBuilder()
      .build();
    IBMDiscoveryV1Models.NormalizationOperation jsonNormalizationsItem = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .build();
    List<IBMDiscoveryV1Models.NormalizationOperation> jsonNormalizations = new List<IBMDiscoveryV1Models.NormalizationOperation> { jsonNormalizationsItem } ;
    Boolean imageTextRecognition = true;

    IBMDiscoveryV1Models.Conversions testRequestModel = new IBMDiscoveryV1Models.ConversionsBuilder()
      .pdf(pdf)
      .word(word)
      .html(html)
      .segment(segment)
      .jsonNormalizations(jsonNormalizations)
      .imageTextRecognition(imageTextRecognition)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(pdf, testRequestModel.getPdf());
    System.assertEquals(word, testRequestModel.getWord());
    System.assertEquals(html, testRequestModel.getHtml());
    System.assertEquals(segment, testRequestModel.getSegment());
    System.assertEquals(jsonNormalizations, testRequestModel.getJsonNormalizations());
    System.assertEquals(imageTextRecognition, testRequestModel.getImageTextRecognition());
    Test.stopTest();
  }
  static testMethod void testCreateCollectionOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String name = 'name';
    String description = 'description';
    String configurationId = 'configuration_id';
    String language = 'language';

    IBMDiscoveryV1Models.CreateCollectionOptions testRequestModel = new IBMDiscoveryV1Models.CreateCollectionOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .description(description)
      .configurationId(configurationId)
      .language(language)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(configurationId, testRequestModel.configurationId());
    System.assertEquals(language, testRequestModel.language());
    Test.stopTest();
  }
  static testMethod void testCreateConfigurationOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String name = 'name';
    String description = 'description';
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.ConversionsBuilder()
      .build();
    String destinationField = 'destination_field';
    String sourceField = 'source_field';
    String enrichment = 'enrichment';
    IBMDiscoveryV1Models.Enrichment enrichmentsItem = new IBMDiscoveryV1Models.EnrichmentBuilder()
      .destinationField(destinationField)
      .sourceField(sourceField)
      .enrichment(enrichment)
      .build();
    List<IBMDiscoveryV1Models.Enrichment> enrichments = new List<IBMDiscoveryV1Models.Enrichment> { enrichmentsItem } ;
    IBMDiscoveryV1Models.NormalizationOperation normalizationsItem = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .build();
    List<IBMDiscoveryV1Models.NormalizationOperation> normalizations = new List<IBMDiscoveryV1Models.NormalizationOperation> { normalizationsItem } ;
    IBMDiscoveryV1Models.Source source = new IBMDiscoveryV1Models.SourceBuilder()
      .build();

    IBMDiscoveryV1Models.CreateConfigurationOptions testRequestModel = new IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .description(description)
      .conversions(conversions)
      .enrichments(enrichments)
      .normalizations(normalizations)
      .source(source)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(conversions, testRequestModel.conversions());
    System.assertEquals(enrichments, testRequestModel.enrichments());
    System.assertEquals(normalizations, testRequestModel.normalizations());
    System.assertEquals(source, testRequestModel.source());
    Test.stopTest();
  }
  static testMethod void testCreateCredentialsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String sourceType = 'source_type';
    IBMDiscoveryV1Models.CredentialDetails credentialDetails = new IBMDiscoveryV1Models.CredentialDetailsBuilder()
      .build();
    String status = 'status';

    IBMDiscoveryV1Models.CreateCredentialsOptions testRequestModel = new IBMDiscoveryV1Models.CreateCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .sourceType(sourceType)
      .credentialDetails(credentialDetails)
      .status(status)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(sourceType, testRequestModel.sourceType());
    System.assertEquals(credentialDetails, testRequestModel.credentialDetails());
    System.assertEquals(status, testRequestModel.status());
    Test.stopTest();
  }
  static testMethod void testCreateEnvironmentOptionsModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';
    String size = 'size';

    IBMDiscoveryV1Models.CreateEnvironmentOptions testRequestModel = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder()
      .name(name)
      .description(description)
      .size(size)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(size, testRequestModel.size());
    Test.stopTest();
  }
  static testMethod void testCreateEventOptionsModel() {
    Test.startTest();
    String xType = 'x_type';
    String environmentId = 'environment_id';
    String sessionToken = 'session_token';
    String collectionId = 'collection_id';
    String documentId = 'document_id';
    IBMDiscoveryV1Models.EventData data = new IBMDiscoveryV1Models.EventDataBuilder()
      .environmentId(environmentId)
      .sessionToken(sessionToken)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();

    IBMDiscoveryV1Models.CreateEventOptions testRequestModel = new IBMDiscoveryV1Models.CreateEventOptionsBuilder()
      .xType(xType)
      .data(data)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xType, testRequestModel.xType());
    System.assertEquals(data, testRequestModel.data());
    Test.stopTest();
  }
  static testMethod void testCreateEventResponseModel() {
    Test.startTest();
    String xType = 'x_type';
    String environmentId = 'environment_id';
    String sessionToken = 'session_token';
    String collectionId = 'collection_id';
    String documentId = 'document_id';
    IBMDiscoveryV1Models.EventData data = new IBMDiscoveryV1Models.EventDataBuilder()
      .environmentId(environmentId)
      .sessionToken(sessionToken)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();

    IBMDiscoveryV1Models.CreateEventResponse testRequestModel = new IBMDiscoveryV1Models.CreateEventResponse();
    testRequestModel.setXType(xType);
    testRequestModel.setData(data);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(data, testRequestModel.getData());
    Test.stopTest();
  }
  static testMethod void testCreateExpansionsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    List<String> expandedTerms = new List<String> { 'expanded_terms' } ;
    IBMDiscoveryV1Models.Expansion expansionsItem = new IBMDiscoveryV1Models.ExpansionBuilder()
      .expandedTerms(expandedTerms)
      .build();
    List<IBMDiscoveryV1Models.Expansion> expansions = new List<IBMDiscoveryV1Models.Expansion> { expansionsItem } ;

    IBMDiscoveryV1Models.CreateExpansionsOptions testRequestModel = new IBMDiscoveryV1Models.CreateExpansionsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .expansions(expansions)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(expansions, testRequestModel.expansions());
    Test.stopTest();
  }
  static testMethod void testCreateGatewayOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String name = 'name';

    IBMDiscoveryV1Models.CreateGatewayOptions testRequestModel = new IBMDiscoveryV1Models.CreateGatewayOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(name, testRequestModel.name());
    Test.stopTest();
  }
  static testMethod void testCreateStopwordListOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    IBMWatsonFile stopwordFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String stopwordFilename = 'stopword_filename';

    IBMDiscoveryV1Models.CreateStopwordListOptions testRequestModel = new IBMDiscoveryV1Models.CreateStopwordListOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .stopwordFile(stopwordFile)
      .stopwordFilename(stopwordFilename)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(stopwordFile, testRequestModel.stopwordFile());
    System.assertEquals(stopwordFilename, testRequestModel.stopwordFilename());
    Test.stopTest();
  }
  static testMethod void testCreateTokenizationDictionaryOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String text = 'text';
    List<String> tokens = new List<String> { 'tokens' } ;
    String partOfSpeech = 'part_of_speech';
    IBMDiscoveryV1Models.TokenDictRule tokenizationRulesItem = new IBMDiscoveryV1Models.TokenDictRuleBuilder()
      .text(text)
      .tokens(tokens)
      .partOfSpeech(partOfSpeech)
      .build();
    List<IBMDiscoveryV1Models.TokenDictRule> tokenizationRules = new List<IBMDiscoveryV1Models.TokenDictRule> { tokenizationRulesItem } ;

    IBMDiscoveryV1Models.CreateTokenizationDictionaryOptions testRequestModel = new IBMDiscoveryV1Models.CreateTokenizationDictionaryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .tokenizationRules(tokenizationRules)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(tokenizationRules, testRequestModel.tokenizationRules());
    Test.stopTest();
  }
  static testMethod void testCreateTrainingExampleOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String documentId = 'document_id';
    String crossReference = 'cross_reference';
    Long relevance = 10L;

    IBMDiscoveryV1Models.CreateTrainingExampleOptions testRequestModel = new IBMDiscoveryV1Models.CreateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .documentId(documentId)
      .crossReference(crossReference)
      .relevance(relevance)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(queryId, testRequestModel.queryId());
    System.assertEquals(documentId, testRequestModel.documentId());
    System.assertEquals(crossReference, testRequestModel.crossReference());
    System.assertEquals(relevance, testRequestModel.relevance());
    Test.stopTest();
  }
  static testMethod void testCredentialDetailsModel() {
    Test.startTest();
    String credentialType = 'credential_type';
    String clientId = 'client_id';
    String enterpriseId = 'enterprise_id';
    String url = 'url';
    String username = 'username';
    String organizationUrl = 'organization_url';
    String siteCollectionPath = 'site_collection_path';
    String clientSecret = 'client_secret';
    String publicKeyId = 'public_key_id';
    String privateKey = 'private_key';
    String passphrase = 'passphrase';
    String password = 'password';
    String gatewayId = 'gateway_id';
    String sourceVersion = 'source_version';
    String webApplicationUrl = 'web_application_url';
    String domain = 'domain';
    String endpoint = 'endpoint';
    String accessKeyId = 'access_key_id';
    String secretAccessKey = 'secret_access_key';

    IBMDiscoveryV1Models.CredentialDetails testRequestModel = new IBMDiscoveryV1Models.CredentialDetailsBuilder()
      .credentialType(credentialType)
      .clientId(clientId)
      .enterpriseId(enterpriseId)
      .url(url)
      .username(username)
      .organizationUrl(organizationUrl)
      .siteCollectionPath(siteCollectionPath)
      .clientSecret(clientSecret)
      .publicKeyId(publicKeyId)
      .privateKey(privateKey)
      .passphrase(passphrase)
      .password(password)
      .gatewayId(gatewayId)
      .sourceVersion(sourceVersion)
      .webApplicationUrl(webApplicationUrl)
      .domain(domain)
      .endpoint(endpoint)
      .accessKeyId(accessKeyId)
      .secretAccessKey(secretAccessKey)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(credentialType, testRequestModel.getCredentialType());
    System.assertEquals(clientId, testRequestModel.getClientId());
    System.assertEquals(enterpriseId, testRequestModel.getEnterpriseId());
    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(username, testRequestModel.getUsername());
    System.assertEquals(organizationUrl, testRequestModel.getOrganizationUrl());
    System.assertEquals(siteCollectionPath, testRequestModel.getSiteCollectionPath());
    System.assertEquals(clientSecret, testRequestModel.getClientSecret());
    System.assertEquals(publicKeyId, testRequestModel.getPublicKeyId());
    System.assertEquals(privateKey, testRequestModel.getPrivateKey());
    System.assertEquals(passphrase, testRequestModel.getPassphrase());
    System.assertEquals(password, testRequestModel.getPassword());
    System.assertEquals(gatewayId, testRequestModel.getGatewayId());
    System.assertEquals(sourceVersion, testRequestModel.getSourceVersion());
    System.assertEquals(webApplicationUrl, testRequestModel.getWebApplicationUrl());
    System.assertEquals(domain, testRequestModel.getDomain());
    System.assertEquals(endpoint, testRequestModel.getEndpoint());
    System.assertEquals(accessKeyId, testRequestModel.getAccessKeyId());
    System.assertEquals(secretAccessKey, testRequestModel.getSecretAccessKey());
    Test.stopTest();
  }
  static testMethod void testCredentialsModel() {
    Test.startTest();
    String sourceType = 'source_type';
    IBMDiscoveryV1Models.CredentialDetails credentialDetails = new IBMDiscoveryV1Models.CredentialDetailsBuilder()
      .build();
    String status = 'status';

    IBMDiscoveryV1Models.Credentials testRequestModel = new IBMDiscoveryV1Models.CredentialsBuilder()
      .sourceType(sourceType)
      .credentialDetails(credentialDetails)
      .status(status)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(sourceType, testRequestModel.getSourceType());
    System.assertEquals(credentialDetails, testRequestModel.getCredentialDetails());
    System.assertEquals(status, testRequestModel.getStatus());
    Test.stopTest();
  }
  static testMethod void testCredentialsListModel() {
    Test.startTest();
    IBMDiscoveryV1Models.Credentials credentialsItem = new IBMDiscoveryV1Models.CredentialsBuilder()
      .build();
    List<IBMDiscoveryV1Models.Credentials> credentials = new List<IBMDiscoveryV1Models.Credentials> { credentialsItem } ;

    IBMDiscoveryV1Models.CredentialsList testRequestModel = new IBMDiscoveryV1Models.CredentialsList();
    testRequestModel.setCredentials(credentials);

    System.assertEquals(credentials, testRequestModel.getCredentials());
    Test.stopTest();
  }
  static testMethod void testDeleteAllTrainingDataOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteAllTrainingDataOptions testRequestModel = new IBMDiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testDeleteCollectionOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteCollectionOptions testRequestModel = new IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testDeleteConfigurationOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String configurationId = 'configuration_id';

    IBMDiscoveryV1Models.DeleteConfigurationOptions testRequestModel = new IBMDiscoveryV1Models.DeleteConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(configurationId, testRequestModel.configurationId());
    Test.stopTest();
  }
  static testMethod void testDeleteCredentialsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String credentialId = 'credential_id';

    IBMDiscoveryV1Models.DeleteCredentialsOptions testRequestModel = new IBMDiscoveryV1Models.DeleteCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(credentialId, testRequestModel.credentialId());
    Test.stopTest();
  }
  static testMethod void testDeleteDocumentOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String documentId = 'document_id';

    IBMDiscoveryV1Models.DeleteDocumentOptions testRequestModel = new IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(documentId, testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testDeleteEnvironmentOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.DeleteEnvironmentOptions testRequestModel = new IBMDiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    Test.stopTest();
  }
  static testMethod void testDeleteExpansionsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteExpansionsOptions testRequestModel = new IBMDiscoveryV1Models.DeleteExpansionsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testDeleteGatewayOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String gatewayId = 'gateway_id';

    IBMDiscoveryV1Models.DeleteGatewayOptions testRequestModel = new IBMDiscoveryV1Models.DeleteGatewayOptionsBuilder()
      .environmentId(environmentId)
      .gatewayId(gatewayId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(gatewayId, testRequestModel.gatewayId());
    Test.stopTest();
  }
  static testMethod void testDeleteStopwordListOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteStopwordListOptions testRequestModel = new IBMDiscoveryV1Models.DeleteStopwordListOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testDeleteTokenizationDictionaryOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteTokenizationDictionaryOptions testRequestModel = new IBMDiscoveryV1Models.DeleteTokenizationDictionaryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testDeleteTrainingDataOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';

    IBMDiscoveryV1Models.DeleteTrainingDataOptions testRequestModel = new IBMDiscoveryV1Models.DeleteTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(queryId, testRequestModel.queryId());
    Test.stopTest();
  }
  static testMethod void testDeleteTrainingExampleOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String exampleId = 'example_id';

    IBMDiscoveryV1Models.DeleteTrainingExampleOptions testRequestModel = new IBMDiscoveryV1Models.DeleteTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .exampleId(exampleId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(queryId, testRequestModel.queryId());
    System.assertEquals(exampleId, testRequestModel.exampleId());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();
    String customerId = 'customer_id';

    IBMDiscoveryV1Models.DeleteUserDataOptions testRequestModel = new IBMDiscoveryV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customerId, testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDiskUsageModel() {
    Test.startTest();

    IBMDiscoveryV1Models.DiskUsage testRequestModel = new IBMDiscoveryV1Models.DiskUsage();

    Test.stopTest();
  }
  static testMethod void testDocumentAcceptedModel() {
    Test.startTest();
    String documentId = 'document_id';
    String status = 'status';
    IBMDiscoveryV1Models.Notice noticesItem = new IBMDiscoveryV1Models.Notice();
    List<IBMDiscoveryV1Models.Notice> notices = new List<IBMDiscoveryV1Models.Notice> { noticesItem } ;

    IBMDiscoveryV1Models.DocumentAccepted testRequestModel = new IBMDiscoveryV1Models.DocumentAccepted();
    testRequestModel.setDocumentId(documentId);
    testRequestModel.setStatus(status);
    testRequestModel.setNotices(notices);

    System.assertEquals(documentId, testRequestModel.getDocumentId());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(notices, testRequestModel.getNotices());
    Test.stopTest();
  }
  static testMethod void testDocumentCountsModel() {
    Test.startTest();

    IBMDiscoveryV1Models.DocumentCounts testRequestModel = new IBMDiscoveryV1Models.DocumentCounts();

    Test.stopTest();
  }
  static testMethod void testDocumentStatusModel() {
    Test.startTest();
    String filename = 'filename';
    String fileType = 'file_type';
    String sha1 = 'sha1';

    IBMDiscoveryV1Models.DocumentStatus testRequestModel = new IBMDiscoveryV1Models.DocumentStatus();
    testRequestModel.setFilename(filename);
    testRequestModel.setFileType(fileType);
    testRequestModel.setSha1(sha1);

    System.assertEquals(filename, testRequestModel.getFilename());
    System.assertEquals(fileType, testRequestModel.getFileType());
    System.assertEquals(sha1, testRequestModel.getSha1());
    Test.stopTest();
  }
  static testMethod void testEnrichmentModel() {
    Test.startTest();
    String description = 'description';
    String destinationField = 'destination_field';
    String sourceField = 'source_field';
    Boolean overwrite = true;
    String enrichment = 'enrichment';
    Boolean ignoreDownstreamErrors = true;
    IBMDiscoveryV1Models.EnrichmentOptions options = new IBMDiscoveryV1Models.EnrichmentOptionsBuilder()
      .build();

    IBMDiscoveryV1Models.Enrichment testRequestModel = new IBMDiscoveryV1Models.EnrichmentBuilder()
      .description(description)
      .destinationField(destinationField)
      .sourceField(sourceField)
      .overwrite(overwrite)
      .enrichment(enrichment)
      .ignoreDownstreamErrors(ignoreDownstreamErrors)
      .options(options)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(destinationField, testRequestModel.getDestinationField());
    System.assertEquals(sourceField, testRequestModel.getSourceField());
    System.assertEquals(overwrite, testRequestModel.getOverwrite());
    System.assertEquals(enrichment, testRequestModel.getEnrichment());
    System.assertEquals(ignoreDownstreamErrors, testRequestModel.getIgnoreDownstreamErrors());
    System.assertEquals(options, testRequestModel.getOptions());
    Test.stopTest();
  }
  static testMethod void testEnrichmentOptionsModel() {
    Test.startTest();
    IBMDiscoveryV1Models.NluEnrichmentFeatures features = new IBMDiscoveryV1Models.NluEnrichmentFeaturesBuilder()
      .build();
    String language = 'language';
    String model = 'model';

    IBMDiscoveryV1Models.EnrichmentOptions testRequestModel = new IBMDiscoveryV1Models.EnrichmentOptionsBuilder()
      .features(features)
      .language(language)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(features, testRequestModel.getFeatures());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(model, testRequestModel.getModel());
    Test.stopTest();
  }
  static testMethod void testEnvironmentModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';
    String size = 'size';
    String requestedSize = 'requested_size';
    IBMDiscoveryV1Models.IndexCapacity indexCapacity = new IBMDiscoveryV1Models.IndexCapacity();
    IBMDiscoveryV1Models.SearchStatus searchStatus = new IBMDiscoveryV1Models.SearchStatus();

    IBMDiscoveryV1Models.Environment testRequestModel = new IBMDiscoveryV1Models.Environment();
    testRequestModel.setName(name);
    testRequestModel.setDescription(description);
    testRequestModel.setSize(size);
    testRequestModel.setRequestedSize(requestedSize);
    testRequestModel.setIndexCapacity(indexCapacity);
    testRequestModel.setSearchStatus(searchStatus);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(size, testRequestModel.getSize());
    System.assertEquals(requestedSize, testRequestModel.getRequestedSize());
    System.assertEquals(indexCapacity, testRequestModel.getIndexCapacity());
    System.assertEquals(searchStatus, testRequestModel.getSearchStatus());
    Test.stopTest();
  }
  static testMethod void testEnvironmentDocumentsModel() {
    Test.startTest();

    IBMDiscoveryV1Models.EnvironmentDocuments testRequestModel = new IBMDiscoveryV1Models.EnvironmentDocuments();

    Test.stopTest();
  }
  static testMethod void testEventDataModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String sessionToken = 'session_token';
    Datetime clientTimestamp = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Long displayRank = 10L;
    String collectionId = 'collection_id';
    String documentId = 'document_id';

    IBMDiscoveryV1Models.EventData testRequestModel = new IBMDiscoveryV1Models.EventDataBuilder()
      .environmentId(environmentId)
      .sessionToken(sessionToken)
      .clientTimestamp(clientTimestamp)
      .displayRank(displayRank)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.getEnvironmentId());
    System.assertEquals(sessionToken, testRequestModel.getSessionToken());
    System.assertEquals(clientTimestamp, testRequestModel.getClientTimestamp());
    System.assertEquals(displayRank, testRequestModel.getDisplayRank());
    System.assertEquals(collectionId, testRequestModel.getCollectionId());
    System.assertEquals(documentId, testRequestModel.getDocumentId());
    Test.stopTest();
  }
  static testMethod void testExpansionModel() {
    Test.startTest();
    List<String> inputTerms = new List<String> { 'input_terms' } ;
    List<String> expandedTerms = new List<String> { 'expanded_terms' } ;

    IBMDiscoveryV1Models.Expansion testRequestModel = new IBMDiscoveryV1Models.ExpansionBuilder()
      .inputTerms(inputTerms)
      .expandedTerms(expandedTerms)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(inputTerms, testRequestModel.getInputTerms());
    System.assertEquals(expandedTerms, testRequestModel.getExpandedTerms());
    Test.stopTest();
  }
  static testMethod void testExpansionsModel() {
    Test.startTest();
    List<String> expandedTerms = new List<String> { 'expanded_terms' } ;
    IBMDiscoveryV1Models.Expansion expansionsItem = new IBMDiscoveryV1Models.ExpansionBuilder()
      .expandedTerms(expandedTerms)
      .build();
    List<IBMDiscoveryV1Models.Expansion> expansions = new List<IBMDiscoveryV1Models.Expansion> { expansionsItem } ;

    IBMDiscoveryV1Models.Expansions testRequestModel = new IBMDiscoveryV1Models.ExpansionsBuilder()
      .expansions(expansions)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(expansions, testRequestModel.getExpansions());
    Test.stopTest();
  }
  static testMethod void testFederatedQueryNoticesOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    List<String> collectionIds = new List<String> { 'collection_ids' } ;
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    String aggregation = 'aggregation';
    Long count = 10L;
    List<String> xReturn = new List<String> { 'x_return' } ;
    Long offset = 10L;
    List<String> xSort = new List<String> { 'x_sort' } ;
    Boolean highlight = true;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    List<String> similarDocumentIds = new List<String> { 'similar_document_ids' } ;
    List<String> similarFields = new List<String> { 'similar_fields' } ;

    IBMDiscoveryV1Models.FederatedQueryNoticesOptions testRequestModel = new IBMDiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionIds, testRequestModel.collectionIds());
    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(query, testRequestModel.query());
    System.assertEquals(naturalLanguageQuery, testRequestModel.naturalLanguageQuery());
    System.assertEquals(aggregation, testRequestModel.aggregation());
    System.assertEquals(count, testRequestModel.count());
    System.assertEquals(xReturn, testRequestModel.xReturn());
    System.assertEquals(offset, testRequestModel.offset());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(highlight, testRequestModel.highlight());
    System.assertEquals(deduplicateField, testRequestModel.deduplicateField());
    System.assertEquals(similar, testRequestModel.similar());
    System.assertEquals(similarDocumentIds, testRequestModel.similarDocumentIds());
    System.assertEquals(similarFields, testRequestModel.similarFields());
    Test.stopTest();
  }
  static testMethod void testFederatedQueryOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    Boolean passages = true;
    String aggregation = 'aggregation';
    Long count = 10L;
    String xReturn = 'x_return';
    Long offset = 10L;
    String xSort = 'x_sort';
    Boolean highlight = true;
    String passagesFields = 'passages_fields';
    Long passagesCount = 10L;
    Long passagesCharacters = 10L;
    Boolean deduplicate = true;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    String similarDocumentIds = 'similar_document_ids';
    String similarFields = 'similar_fields';
    String bias = 'bias';
    String collectionIds = 'collection_ids';
    Boolean xWatsonLoggingOptOut = true;

    IBMDiscoveryV1Models.FederatedQueryOptions testRequestModel = new IBMDiscoveryV1Models.FederatedQueryOptionsBuilder()
      .environmentId(environmentId)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .passages(passages)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .passagesFields(passagesFields)
      .passagesCount(passagesCount)
      .passagesCharacters(passagesCharacters)
      .deduplicate(deduplicate)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .bias(bias)
      .collectionIds(collectionIds)
      .xWatsonLoggingOptOut(xWatsonLoggingOptOut)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(query, testRequestModel.query());
    System.assertEquals(naturalLanguageQuery, testRequestModel.naturalLanguageQuery());
    System.assertEquals(passages, testRequestModel.passages());
    System.assertEquals(aggregation, testRequestModel.aggregation());
    System.assertEquals(count, testRequestModel.count());
    System.assertEquals(xReturn, testRequestModel.xReturn());
    System.assertEquals(offset, testRequestModel.offset());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(highlight, testRequestModel.highlight());
    System.assertEquals(passagesFields, testRequestModel.passagesFields());
    System.assertEquals(passagesCount, testRequestModel.passagesCount());
    System.assertEquals(passagesCharacters, testRequestModel.passagesCharacters());
    System.assertEquals(deduplicate, testRequestModel.deduplicate());
    System.assertEquals(deduplicateField, testRequestModel.deduplicateField());
    System.assertEquals(similar, testRequestModel.similar());
    System.assertEquals(similarDocumentIds, testRequestModel.similarDocumentIds());
    System.assertEquals(similarFields, testRequestModel.similarFields());
    System.assertEquals(bias, testRequestModel.bias());
    System.assertEquals(collectionIds, testRequestModel.collectionIds());
    System.assertEquals(xWatsonLoggingOptOut, testRequestModel.xWatsonLoggingOptOut());
    Test.stopTest();
  }
  static testMethod void testFieldModel() {
    Test.startTest();

    IBMDiscoveryV1Models.Field testRequestModel = new IBMDiscoveryV1Models.Field();

    Test.stopTest();
  }
  static testMethod void testFontSettingModel() {
    Test.startTest();
    Long level = 10L;
    Long minSize = 10L;
    Long maxSize = 10L;
    Boolean bold = true;
    Boolean italic = true;
    String name = 'name';

    IBMDiscoveryV1Models.FontSetting testRequestModel = new IBMDiscoveryV1Models.FontSettingBuilder()
      .level(level)
      .minSize(minSize)
      .maxSize(maxSize)
      .bold(bold)
      .italic(italic)
      .name(name)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(level, testRequestModel.getLevel());
    System.assertEquals(minSize, testRequestModel.getMinSize());
    System.assertEquals(maxSize, testRequestModel.getMaxSize());
    System.assertEquals(bold, testRequestModel.getBold());
    System.assertEquals(italic, testRequestModel.getItalic());
    System.assertEquals(name, testRequestModel.getName());
    Test.stopTest();
  }
  static testMethod void testGatewayModel() {
    Test.startTest();
    String gatewayId = 'gateway_id';
    String name = 'name';
    String status = 'status';
    String token = 'token';
    String tokenId = 'token_id';

    IBMDiscoveryV1Models.Gateway testRequestModel = new IBMDiscoveryV1Models.Gateway();
    testRequestModel.setGatewayId(gatewayId);
    testRequestModel.setName(name);
    testRequestModel.setStatus(status);
    testRequestModel.setToken(token);
    testRequestModel.setTokenId(tokenId);

    System.assertEquals(gatewayId, testRequestModel.getGatewayId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(token, testRequestModel.getToken());
    System.assertEquals(tokenId, testRequestModel.getTokenId());
    Test.stopTest();
  }
  static testMethod void testGatewayListModel() {
    Test.startTest();
    IBMDiscoveryV1Models.Gateway gatewaysItem = new IBMDiscoveryV1Models.Gateway();
    List<IBMDiscoveryV1Models.Gateway> gateways = new List<IBMDiscoveryV1Models.Gateway> { gatewaysItem } ;

    IBMDiscoveryV1Models.GatewayList testRequestModel = new IBMDiscoveryV1Models.GatewayList();
    testRequestModel.setGateways(gateways);

    System.assertEquals(gateways, testRequestModel.getGateways());
    Test.stopTest();
  }
  static testMethod void testGetAutocompletionOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String prefix = 'prefix';
    String field = 'field';
    Long count = 10L;

    IBMDiscoveryV1Models.GetAutocompletionOptions testRequestModel = new IBMDiscoveryV1Models.GetAutocompletionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .prefix(prefix)
      .field(field)
      .count(count)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(prefix, testRequestModel.prefix());
    System.assertEquals(field, testRequestModel.field());
    System.assertEquals(count, testRequestModel.count());
    Test.stopTest();
  }
  static testMethod void testGetCollectionOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.GetCollectionOptions testRequestModel = new IBMDiscoveryV1Models.GetCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testGetConfigurationOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String configurationId = 'configuration_id';

    IBMDiscoveryV1Models.GetConfigurationOptions testRequestModel = new IBMDiscoveryV1Models.GetConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(configurationId, testRequestModel.configurationId());
    Test.stopTest();
  }
  static testMethod void testGetCredentialsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String credentialId = 'credential_id';

    IBMDiscoveryV1Models.GetCredentialsOptions testRequestModel = new IBMDiscoveryV1Models.GetCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(credentialId, testRequestModel.credentialId());
    Test.stopTest();
  }
  static testMethod void testGetDocumentStatusOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String documentId = 'document_id';

    IBMDiscoveryV1Models.GetDocumentStatusOptions testRequestModel = new IBMDiscoveryV1Models.GetDocumentStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(documentId, testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testGetEnvironmentOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.GetEnvironmentOptions testRequestModel = new IBMDiscoveryV1Models.GetEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    Test.stopTest();
  }
  static testMethod void testGetGatewayOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String gatewayId = 'gateway_id';

    IBMDiscoveryV1Models.GetGatewayOptions testRequestModel = new IBMDiscoveryV1Models.GetGatewayOptionsBuilder()
      .environmentId(environmentId)
      .gatewayId(gatewayId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(gatewayId, testRequestModel.gatewayId());
    Test.stopTest();
  }
  static testMethod void testGetMetricsEventRateOptionsModel() {
    Test.startTest();
    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsEventRateOptions testRequestModel = new IBMDiscoveryV1Models.GetMetricsEventRateOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(startTime, testRequestModel.startTime());
    System.assertEquals(endTime, testRequestModel.endTime());
    System.assertEquals(resultType, testRequestModel.resultType());
    Test.stopTest();
  }
  static testMethod void testGetMetricsQueryEventOptionsModel() {
    Test.startTest();
    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsQueryEventOptions testRequestModel = new IBMDiscoveryV1Models.GetMetricsQueryEventOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(startTime, testRequestModel.startTime());
    System.assertEquals(endTime, testRequestModel.endTime());
    System.assertEquals(resultType, testRequestModel.resultType());
    Test.stopTest();
  }
  static testMethod void testGetMetricsQueryNoResultsOptionsModel() {
    Test.startTest();
    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsQueryNoResultsOptions testRequestModel = new IBMDiscoveryV1Models.GetMetricsQueryNoResultsOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(startTime, testRequestModel.startTime());
    System.assertEquals(endTime, testRequestModel.endTime());
    System.assertEquals(resultType, testRequestModel.resultType());
    Test.stopTest();
  }
  static testMethod void testGetMetricsQueryOptionsModel() {
    Test.startTest();
    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsQueryOptions testRequestModel = new IBMDiscoveryV1Models.GetMetricsQueryOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(startTime, testRequestModel.startTime());
    System.assertEquals(endTime, testRequestModel.endTime());
    System.assertEquals(resultType, testRequestModel.resultType());
    Test.stopTest();
  }
  static testMethod void testGetMetricsQueryTokenEventOptionsModel() {
    Test.startTest();
    Long count = 10L;

    IBMDiscoveryV1Models.GetMetricsQueryTokenEventOptions testRequestModel = new IBMDiscoveryV1Models.GetMetricsQueryTokenEventOptionsBuilder()
      .count(count)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(count, testRequestModel.count());
    Test.stopTest();
  }
  static testMethod void testGetStopwordListStatusOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.GetStopwordListStatusOptions testRequestModel = new IBMDiscoveryV1Models.GetStopwordListStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testGetTokenizationDictionaryStatusOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.GetTokenizationDictionaryStatusOptions testRequestModel = new IBMDiscoveryV1Models.GetTokenizationDictionaryStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testGetTrainingDataOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';

    IBMDiscoveryV1Models.GetTrainingDataOptions testRequestModel = new IBMDiscoveryV1Models.GetTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(queryId, testRequestModel.queryId());
    Test.stopTest();
  }
  static testMethod void testGetTrainingExampleOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String exampleId = 'example_id';

    IBMDiscoveryV1Models.GetTrainingExampleOptions testRequestModel = new IBMDiscoveryV1Models.GetTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .exampleId(exampleId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(queryId, testRequestModel.queryId());
    System.assertEquals(exampleId, testRequestModel.exampleId());
    Test.stopTest();
  }
  static testMethod void testHtmlSettingsModel() {
    Test.startTest();
    List<String> excludeTagsCompletely = new List<String> { 'exclude_tags_completely' } ;
    List<String> excludeTagsKeepContent = new List<String> { 'exclude_tags_keep_content' } ;
    IBMDiscoveryV1Models.XPathPatterns keepContent = new IBMDiscoveryV1Models.XPathPatternsBuilder()
      .build();
    IBMDiscoveryV1Models.XPathPatterns excludeContent = new IBMDiscoveryV1Models.XPathPatternsBuilder()
      .build();
    List<String> keepTagAttributes = new List<String> { 'keep_tag_attributes' } ;
    List<String> excludeTagAttributes = new List<String> { 'exclude_tag_attributes' } ;

    IBMDiscoveryV1Models.HtmlSettings testRequestModel = new IBMDiscoveryV1Models.HtmlSettingsBuilder()
      .excludeTagsCompletely(excludeTagsCompletely)
      .excludeTagsKeepContent(excludeTagsKeepContent)
      .keepContent(keepContent)
      .excludeContent(excludeContent)
      .keepTagAttributes(keepTagAttributes)
      .excludeTagAttributes(excludeTagAttributes)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(excludeTagsCompletely, testRequestModel.getExcludeTagsCompletely());
    System.assertEquals(excludeTagsKeepContent, testRequestModel.getExcludeTagsKeepContent());
    System.assertEquals(keepContent, testRequestModel.getKeepContent());
    System.assertEquals(excludeContent, testRequestModel.getExcludeContent());
    System.assertEquals(keepTagAttributes, testRequestModel.getKeepTagAttributes());
    System.assertEquals(excludeTagAttributes, testRequestModel.getExcludeTagAttributes());
    Test.stopTest();
  }
  static testMethod void testIndexCapacityModel() {
    Test.startTest();
    IBMDiscoveryV1Models.EnvironmentDocuments documents = new IBMDiscoveryV1Models.EnvironmentDocuments();
    IBMDiscoveryV1Models.DiskUsage diskUsage = new IBMDiscoveryV1Models.DiskUsage();
    IBMDiscoveryV1Models.CollectionUsage collections = new IBMDiscoveryV1Models.CollectionUsage();

    IBMDiscoveryV1Models.IndexCapacity testRequestModel = new IBMDiscoveryV1Models.IndexCapacity();
    testRequestModel.setDocuments(documents);
    testRequestModel.setDiskUsage(diskUsage);
    testRequestModel.setCollections(collections);

    System.assertEquals(documents, testRequestModel.getDocuments());
    System.assertEquals(diskUsage, testRequestModel.getDiskUsage());
    System.assertEquals(collections, testRequestModel.getCollections());
    Test.stopTest();
  }
  static testMethod void testListCollectionFieldsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.ListCollectionFieldsOptions testRequestModel = new IBMDiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testListCollectionFieldsResponseModel() {
    Test.startTest();
    IBMDiscoveryV1Models.Field fieldsItem = new IBMDiscoveryV1Models.Field();
    List<IBMDiscoveryV1Models.Field> fields = new List<IBMDiscoveryV1Models.Field> { fieldsItem } ;

    IBMDiscoveryV1Models.ListCollectionFieldsResponse testRequestModel = new IBMDiscoveryV1Models.ListCollectionFieldsResponse();
    testRequestModel.setFields(fields);

    System.assertEquals(fields, testRequestModel.getFields());
    Test.stopTest();
  }
  static testMethod void testListCollectionsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String name = 'name';

    IBMDiscoveryV1Models.ListCollectionsOptions testRequestModel = new IBMDiscoveryV1Models.ListCollectionsOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(name, testRequestModel.name());
    Test.stopTest();
  }
  static testMethod void testListCollectionsResponseModel() {
    Test.startTest();
    IBMDiscoveryV1Models.Collection collectionsItem = new IBMDiscoveryV1Models.Collection();
    List<IBMDiscoveryV1Models.Collection> collections = new List<IBMDiscoveryV1Models.Collection> { collectionsItem } ;

    IBMDiscoveryV1Models.ListCollectionsResponse testRequestModel = new IBMDiscoveryV1Models.ListCollectionsResponse();
    testRequestModel.setCollections(collections);

    System.assertEquals(collections, testRequestModel.getCollections());
    Test.stopTest();
  }
  static testMethod void testListConfigurationsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String name = 'name';

    IBMDiscoveryV1Models.ListConfigurationsOptions testRequestModel = new IBMDiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(name, testRequestModel.name());
    Test.stopTest();
  }
  static testMethod void testListConfigurationsResponseModel() {
    Test.startTest();
    String name = 'name';
    IBMDiscoveryV1Models.Configuration configurationsItem = new IBMDiscoveryV1Models.ConfigurationBuilder()
      .name(name)
      .build();
    List<IBMDiscoveryV1Models.Configuration> configurations = new List<IBMDiscoveryV1Models.Configuration> { configurationsItem } ;

    IBMDiscoveryV1Models.ListConfigurationsResponse testRequestModel = new IBMDiscoveryV1Models.ListConfigurationsResponse();
    testRequestModel.setConfigurations(configurations);

    System.assertEquals(configurations, testRequestModel.getConfigurations());
    Test.stopTest();
  }
  static testMethod void testListCredentialsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.ListCredentialsOptions testRequestModel = new IBMDiscoveryV1Models.ListCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    Test.stopTest();
  }
  static testMethod void testListEnvironmentsOptionsModel() {
    Test.startTest();
    String name = 'name';

    IBMDiscoveryV1Models.ListEnvironmentsOptions testRequestModel = new IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder()
      .name(name)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    Test.stopTest();
  }
  static testMethod void testListEnvironmentsResponseModel() {
    Test.startTest();
    IBMDiscoveryV1Models.Environment environmentsItem = new IBMDiscoveryV1Models.Environment();
    List<IBMDiscoveryV1Models.Environment> environments = new List<IBMDiscoveryV1Models.Environment> { environmentsItem } ;

    IBMDiscoveryV1Models.ListEnvironmentsResponse testRequestModel = new IBMDiscoveryV1Models.ListEnvironmentsResponse();
    testRequestModel.setEnvironments(environments);

    System.assertEquals(environments, testRequestModel.getEnvironments());
    Test.stopTest();
  }
  static testMethod void testListExpansionsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.ListExpansionsOptions testRequestModel = new IBMDiscoveryV1Models.ListExpansionsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testListFieldsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    List<String> collectionIds = new List<String> { 'collection_ids' } ;

    IBMDiscoveryV1Models.ListFieldsOptions testRequestModel = new IBMDiscoveryV1Models.ListFieldsOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionIds, testRequestModel.collectionIds());
    Test.stopTest();
  }
  static testMethod void testListGatewaysOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.ListGatewaysOptions testRequestModel = new IBMDiscoveryV1Models.ListGatewaysOptionsBuilder()
      .environmentId(environmentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    Test.stopTest();
  }
  static testMethod void testListTrainingDataOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.ListTrainingDataOptions testRequestModel = new IBMDiscoveryV1Models.ListTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testListTrainingExamplesOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';

    IBMDiscoveryV1Models.ListTrainingExamplesOptions testRequestModel = new IBMDiscoveryV1Models.ListTrainingExamplesOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(queryId, testRequestModel.queryId());
    Test.stopTest();
  }
  static testMethod void testLogQueryResponseModel() {
    Test.startTest();
    Long matchingResults = 10L;
    IBMDiscoveryV1Models.LogQueryResponseResult resultsItem = new IBMDiscoveryV1Models.LogQueryResponseResult();
    List<IBMDiscoveryV1Models.LogQueryResponseResult> results = new List<IBMDiscoveryV1Models.LogQueryResponseResult> { resultsItem } ;

    IBMDiscoveryV1Models.LogQueryResponse testRequestModel = new IBMDiscoveryV1Models.LogQueryResponse();
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setResults(results);

    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(results, testRequestModel.getResults());
    Test.stopTest();
  }
  static testMethod void testLogQueryResponseResultModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String customerId = 'customer_id';
    String documentType = 'document_type';
    String naturalLanguageQuery = 'natural_language_query';
    IBMDiscoveryV1Models.LogQueryResponseResultDocuments documentResults = new IBMDiscoveryV1Models.LogQueryResponseResultDocuments();
    Datetime createdTimestamp = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime clientTimestamp = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String queryId = 'query_id';
    String sessionToken = 'session_token';
    String collectionId = 'collection_id';
    Long displayRank = 10L;
    String documentId = 'document_id';
    String eventType = 'event_type';
    String resultType = 'result_type';

    IBMDiscoveryV1Models.LogQueryResponseResult testRequestModel = new IBMDiscoveryV1Models.LogQueryResponseResult();
    testRequestModel.setEnvironmentId(environmentId);
    testRequestModel.setCustomerId(customerId);
    testRequestModel.setDocumentType(documentType);
    testRequestModel.setNaturalLanguageQuery(naturalLanguageQuery);
    testRequestModel.setDocumentResults(documentResults);
    testRequestModel.setCreatedTimestamp(createdTimestamp);
    testRequestModel.setClientTimestamp(clientTimestamp);
    testRequestModel.setQueryId(queryId);
    testRequestModel.setSessionToken(sessionToken);
    testRequestModel.setCollectionId(collectionId);
    testRequestModel.setDisplayRank(displayRank);
    testRequestModel.setDocumentId(documentId);
    testRequestModel.setEventType(eventType);
    testRequestModel.setResultType(resultType);

    System.assertEquals(environmentId, testRequestModel.getEnvironmentId());
    System.assertEquals(customerId, testRequestModel.getCustomerId());
    System.assertEquals(documentType, testRequestModel.getDocumentType());
    System.assertEquals(naturalLanguageQuery, testRequestModel.getNaturalLanguageQuery());
    System.assertEquals(documentResults, testRequestModel.getDocumentResults());
    System.assertEquals(createdTimestamp, testRequestModel.getCreatedTimestamp());
    System.assertEquals(clientTimestamp, testRequestModel.getClientTimestamp());
    System.assertEquals(queryId, testRequestModel.getQueryId());
    System.assertEquals(sessionToken, testRequestModel.getSessionToken());
    System.assertEquals(collectionId, testRequestModel.getCollectionId());
    System.assertEquals(displayRank, testRequestModel.getDisplayRank());
    System.assertEquals(documentId, testRequestModel.getDocumentId());
    System.assertEquals(eventType, testRequestModel.getEventType());
    System.assertEquals(resultType, testRequestModel.getResultType());
    Test.stopTest();
  }
  static testMethod void testLogQueryResponseResultDocumentsModel() {
    Test.startTest();
    IBMDiscoveryV1Models.LogQueryResponseResultDocumentsResult resultsItem = new IBMDiscoveryV1Models.LogQueryResponseResultDocumentsResult();
    List<IBMDiscoveryV1Models.LogQueryResponseResultDocumentsResult> results = new List<IBMDiscoveryV1Models.LogQueryResponseResultDocumentsResult> { resultsItem } ;
    Long count = 10L;

    IBMDiscoveryV1Models.LogQueryResponseResultDocuments testRequestModel = new IBMDiscoveryV1Models.LogQueryResponseResultDocuments();
    testRequestModel.setResults(results);
    testRequestModel.setCount(count);

    System.assertEquals(results, testRequestModel.getResults());
    System.assertEquals(count, testRequestModel.getCount());
    Test.stopTest();
  }
  static testMethod void testLogQueryResponseResultDocumentsResultModel() {
    Test.startTest();
    Long position = 10L;
    String documentId = 'document_id';
    Double score = 0.5;
    Double confidence = 0.5;
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.LogQueryResponseResultDocumentsResult testRequestModel = new IBMDiscoveryV1Models.LogQueryResponseResultDocumentsResult();
    testRequestModel.setPosition(position);
    testRequestModel.setDocumentId(documentId);
    testRequestModel.setScore(score);
    testRequestModel.setConfidence(confidence);
    testRequestModel.setCollectionId(collectionId);

    System.assertEquals(position, testRequestModel.getPosition());
    System.assertEquals(documentId, testRequestModel.getDocumentId());
    System.assertEquals(score, testRequestModel.getScore());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(collectionId, testRequestModel.getCollectionId());
    Test.stopTest();
  }
  static testMethod void testMetricAggregationModel() {
    Test.startTest();
    String interval = 'interval';
    String eventType = 'event_type';
    IBMDiscoveryV1Models.MetricAggregationResult resultsItem = new IBMDiscoveryV1Models.MetricAggregationResult();
    List<IBMDiscoveryV1Models.MetricAggregationResult> results = new List<IBMDiscoveryV1Models.MetricAggregationResult> { resultsItem } ;

    IBMDiscoveryV1Models.MetricAggregation testRequestModel = new IBMDiscoveryV1Models.MetricAggregation();
    testRequestModel.setInterval(interval);
    testRequestModel.setEventType(eventType);
    testRequestModel.setResults(results);

    System.assertEquals(interval, testRequestModel.getInterval());
    System.assertEquals(eventType, testRequestModel.getEventType());
    System.assertEquals(results, testRequestModel.getResults());
    Test.stopTest();
  }
  static testMethod void testMetricAggregationResultModel() {
    Test.startTest();
    Datetime keyAsString = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Long key = 10L;
    Long matchingResults = 10L;
    Double eventRate = 0.5;

    IBMDiscoveryV1Models.MetricAggregationResult testRequestModel = new IBMDiscoveryV1Models.MetricAggregationResult();
    testRequestModel.setKeyAsString(keyAsString);
    testRequestModel.setKey(key);
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setEventRate(eventRate);

    System.assertEquals(keyAsString, testRequestModel.getKeyAsString());
    System.assertEquals(key, testRequestModel.getKey());
    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(eventRate, testRequestModel.getEventRate());
    Test.stopTest();
  }
  static testMethod void testMetricResponseModel() {
    Test.startTest();
    IBMDiscoveryV1Models.MetricAggregation aggregationsItem = new IBMDiscoveryV1Models.MetricAggregation();
    List<IBMDiscoveryV1Models.MetricAggregation> aggregations = new List<IBMDiscoveryV1Models.MetricAggregation> { aggregationsItem } ;

    IBMDiscoveryV1Models.MetricResponse testRequestModel = new IBMDiscoveryV1Models.MetricResponse();
    testRequestModel.setAggregations(aggregations);

    System.assertEquals(aggregations, testRequestModel.getAggregations());
    Test.stopTest();
  }
  static testMethod void testMetricTokenAggregationModel() {
    Test.startTest();
    String eventType = 'event_type';
    IBMDiscoveryV1Models.MetricTokenAggregationResult resultsItem = new IBMDiscoveryV1Models.MetricTokenAggregationResult();
    List<IBMDiscoveryV1Models.MetricTokenAggregationResult> results = new List<IBMDiscoveryV1Models.MetricTokenAggregationResult> { resultsItem } ;

    IBMDiscoveryV1Models.MetricTokenAggregation testRequestModel = new IBMDiscoveryV1Models.MetricTokenAggregation();
    testRequestModel.setEventType(eventType);
    testRequestModel.setResults(results);

    System.assertEquals(eventType, testRequestModel.getEventType());
    System.assertEquals(results, testRequestModel.getResults());
    Test.stopTest();
  }
  static testMethod void testMetricTokenAggregationResultModel() {
    Test.startTest();
    String key = 'key';
    Long matchingResults = 10L;
    Double eventRate = 0.5;

    IBMDiscoveryV1Models.MetricTokenAggregationResult testRequestModel = new IBMDiscoveryV1Models.MetricTokenAggregationResult();
    testRequestModel.setKey(key);
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setEventRate(eventRate);

    System.assertEquals(key, testRequestModel.getKey());
    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(eventRate, testRequestModel.getEventRate());
    Test.stopTest();
  }
  static testMethod void testMetricTokenResponseModel() {
    Test.startTest();
    IBMDiscoveryV1Models.MetricTokenAggregation aggregationsItem = new IBMDiscoveryV1Models.MetricTokenAggregation();
    List<IBMDiscoveryV1Models.MetricTokenAggregation> aggregations = new List<IBMDiscoveryV1Models.MetricTokenAggregation> { aggregationsItem } ;

    IBMDiscoveryV1Models.MetricTokenResponse testRequestModel = new IBMDiscoveryV1Models.MetricTokenResponse();
    testRequestModel.setAggregations(aggregations);

    System.assertEquals(aggregations, testRequestModel.getAggregations());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentCategoriesModel() {
    Test.startTest();

    IBMDiscoveryV1Models.NluEnrichmentCategories testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentCategoriesBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testNluEnrichmentConceptsModel() {
    Test.startTest();
    Long xLimit = 10L;

    IBMDiscoveryV1Models.NluEnrichmentConcepts testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentConceptsBuilder()
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xLimit, testRequestModel.getXLimit());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentEmotionModel() {
    Test.startTest();
    Boolean document = true;
    List<String> targets = new List<String> { 'targets' } ;

    IBMDiscoveryV1Models.NluEnrichmentEmotion testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentEmotionBuilder()
      .document(document)
      .targets(targets)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(targets, testRequestModel.getTargets());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentEntitiesModel() {
    Test.startTest();
    Boolean sentiment = true;
    Boolean emotion = true;
    Long xLimit = 10L;
    Boolean mentions = true;
    Boolean mentionTypes = true;
    Boolean sentenceLocations = true;
    String model = 'model';

    IBMDiscoveryV1Models.NluEnrichmentEntities testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentEntitiesBuilder()
      .sentiment(sentiment)
      .emotion(emotion)
      .xLimit(xLimit)
      .mentions(mentions)
      .mentionTypes(mentionTypes)
      .sentenceLocations(sentenceLocations)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(sentiment, testRequestModel.getSentiment());
    System.assertEquals(emotion, testRequestModel.getEmotion());
    System.assertEquals(xLimit, testRequestModel.getXLimit());
    System.assertEquals(mentions, testRequestModel.getMentions());
    System.assertEquals(mentionTypes, testRequestModel.getMentionTypes());
    System.assertEquals(sentenceLocations, testRequestModel.getSentenceLocations());
    System.assertEquals(model, testRequestModel.getModel());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentFeaturesModel() {
    Test.startTest();
    IBMDiscoveryV1Models.NluEnrichmentKeywords keywords = new IBMDiscoveryV1Models.NluEnrichmentKeywordsBuilder()
      .build();
    IBMDiscoveryV1Models.NluEnrichmentEntities entities = new IBMDiscoveryV1Models.NluEnrichmentEntitiesBuilder()
      .build();
    IBMDiscoveryV1Models.NluEnrichmentSentiment sentiment = new IBMDiscoveryV1Models.NluEnrichmentSentimentBuilder()
      .build();
    IBMDiscoveryV1Models.NluEnrichmentEmotion emotion = new IBMDiscoveryV1Models.NluEnrichmentEmotionBuilder()
      .build();
    IBMDiscoveryV1Models.NluEnrichmentCategories categories = new IBMDiscoveryV1Models.NluEnrichmentCategoriesBuilder()
      .build();
    IBMDiscoveryV1Models.NluEnrichmentSemanticRoles semanticRoles = new IBMDiscoveryV1Models.NluEnrichmentSemanticRolesBuilder()
      .build();
    IBMDiscoveryV1Models.NluEnrichmentRelations relations = new IBMDiscoveryV1Models.NluEnrichmentRelationsBuilder()
      .build();
    IBMDiscoveryV1Models.NluEnrichmentConcepts concepts = new IBMDiscoveryV1Models.NluEnrichmentConceptsBuilder()
      .build();

    IBMDiscoveryV1Models.NluEnrichmentFeatures testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentFeaturesBuilder()
      .keywords(keywords)
      .entities(entities)
      .sentiment(sentiment)
      .emotion(emotion)
      .categories(categories)
      .semanticRoles(semanticRoles)
      .relations(relations)
      .concepts(concepts)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(keywords, testRequestModel.getKeywords());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(sentiment, testRequestModel.getSentiment());
    System.assertEquals(emotion, testRequestModel.getEmotion());
    System.assertEquals(categories, testRequestModel.getCategories());
    System.assertEquals(semanticRoles, testRequestModel.getSemanticRoles());
    System.assertEquals(relations, testRequestModel.getRelations());
    System.assertEquals(concepts, testRequestModel.getConcepts());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentKeywordsModel() {
    Test.startTest();
    Boolean sentiment = true;
    Boolean emotion = true;
    Long xLimit = 10L;

    IBMDiscoveryV1Models.NluEnrichmentKeywords testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentKeywordsBuilder()
      .sentiment(sentiment)
      .emotion(emotion)
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(sentiment, testRequestModel.getSentiment());
    System.assertEquals(emotion, testRequestModel.getEmotion());
    System.assertEquals(xLimit, testRequestModel.getXLimit());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentRelationsModel() {
    Test.startTest();
    String model = 'model';

    IBMDiscoveryV1Models.NluEnrichmentRelations testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentRelationsBuilder()
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(model, testRequestModel.getModel());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentSemanticRolesModel() {
    Test.startTest();
    Boolean entities = true;
    Boolean keywords = true;
    Long xLimit = 10L;

    IBMDiscoveryV1Models.NluEnrichmentSemanticRoles testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentSemanticRolesBuilder()
      .entities(entities)
      .keywords(keywords)
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(keywords, testRequestModel.getKeywords());
    System.assertEquals(xLimit, testRequestModel.getXLimit());
    Test.stopTest();
  }
  static testMethod void testNluEnrichmentSentimentModel() {
    Test.startTest();
    Boolean document = true;
    List<String> targets = new List<String> { 'targets' } ;

    IBMDiscoveryV1Models.NluEnrichmentSentiment testRequestModel = new IBMDiscoveryV1Models.NluEnrichmentSentimentBuilder()
      .document(document)
      .targets(targets)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(targets, testRequestModel.getTargets());
    Test.stopTest();
  }
  static testMethod void testNormalizationOperationModel() {
    Test.startTest();
    String operation = 'operation';
    String sourceField = 'source_field';
    String destinationField = 'destination_field';

    IBMDiscoveryV1Models.NormalizationOperation testRequestModel = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .operation(operation)
      .sourceField(sourceField)
      .destinationField(destinationField)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(operation, testRequestModel.getOperation());
    System.assertEquals(sourceField, testRequestModel.getSourceField());
    System.assertEquals(destinationField, testRequestModel.getDestinationField());
    Test.stopTest();
  }
  static testMethod void testNoticeModel() {
    Test.startTest();

    IBMDiscoveryV1Models.Notice testRequestModel = new IBMDiscoveryV1Models.Notice();

    Test.stopTest();
  }
  static testMethod void testPdfHeadingDetectionModel() {
    Test.startTest();
    IBMDiscoveryV1Models.FontSetting fontsItem = new IBMDiscoveryV1Models.FontSettingBuilder()
      .build();
    List<IBMDiscoveryV1Models.FontSetting> fonts = new List<IBMDiscoveryV1Models.FontSetting> { fontsItem } ;

    IBMDiscoveryV1Models.PdfHeadingDetection testRequestModel = new IBMDiscoveryV1Models.PdfHeadingDetectionBuilder()
      .fonts(fonts)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(fonts, testRequestModel.getFonts());
    Test.stopTest();
  }
  static testMethod void testPdfSettingsModel() {
    Test.startTest();
    IBMDiscoveryV1Models.PdfHeadingDetection heading = new IBMDiscoveryV1Models.PdfHeadingDetectionBuilder()
      .build();

    IBMDiscoveryV1Models.PdfSettings testRequestModel = new IBMDiscoveryV1Models.PdfSettingsBuilder()
      .heading(heading)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(heading, testRequestModel.getHeading());
    Test.stopTest();
  }
  static testMethod void testQueryAggregationModel() {
    Test.startTest();
    String xType = 'x_type';
    IBMDiscoveryV1Models.AggregationResult resultsItem = new IBMDiscoveryV1Models.AggregationResult();
    List<IBMDiscoveryV1Models.AggregationResult> results = new List<IBMDiscoveryV1Models.AggregationResult> { resultsItem } ;
    Long matchingResults = 10L;
    IBMDiscoveryV1Models.QueryAggregation aggregationsItem = new IBMDiscoveryV1Models.QueryAggregation();
    List<IBMDiscoveryV1Models.QueryAggregation> aggregations = new List<IBMDiscoveryV1Models.QueryAggregation> { aggregationsItem } ;
    String field = 'field';
    Long histogramInterval = 10L;
    Double value = 0.5;
    Long count = 10L;
    String match = 'match';
    String path = 'path';
    String timesliceInterval = 'timeslice_interval';
    Boolean anomaly = true;
    Long size = 10L;
    IBMDiscoveryV1Models.TopHitsResults hits = new IBMDiscoveryV1Models.TopHitsResults();

    IBMDiscoveryV1Models.QueryAggregation testRequestModel = new IBMDiscoveryV1Models.QueryAggregation();
    testRequestModel.setXType(xType);
    testRequestModel.setResults(results);
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setAggregations(aggregations);
    testRequestModel.setField(field);
    testRequestModel.setHistogramInterval(histogramInterval);
    testRequestModel.setValue(value);
    testRequestModel.setCount(count);
    testRequestModel.setMatch(match);
    testRequestModel.setPath(path);
    testRequestModel.setTimesliceInterval(timesliceInterval);
    testRequestModel.setAnomaly(anomaly);
    testRequestModel.setSize(size);
    testRequestModel.setHits(hits);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(results, testRequestModel.getResults());
    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(aggregations, testRequestModel.getAggregations());
    System.assertEquals(field, testRequestModel.getField());
    System.assertEquals(histogramInterval, testRequestModel.getHistogramInterval());
    System.assertEquals(value, testRequestModel.getValue());
    System.assertEquals(count, testRequestModel.getCount());
    System.assertEquals(match, testRequestModel.getMatch());
    System.assertEquals(path, testRequestModel.getPath());
    System.assertEquals(timesliceInterval, testRequestModel.getTimesliceInterval());
    System.assertEquals(anomaly, testRequestModel.getAnomaly());
    System.assertEquals(size, testRequestModel.getSize());
    System.assertEquals(hits, testRequestModel.getHits());
    Test.stopTest();
  }
  static testMethod void testQueryLogOptionsModel() {
    Test.startTest();
    String filter = 'filter';
    String query = 'query';
    Long count = 10L;
    Long offset = 10L;
    List<String> xSort = new List<String> { 'x_sort' } ;

    IBMDiscoveryV1Models.QueryLogOptions testRequestModel = new IBMDiscoveryV1Models.QueryLogOptionsBuilder()
      .filter(filter)
      .query(query)
      .count(count)
      .offset(offset)
      .xSort(xSort)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(query, testRequestModel.query());
    System.assertEquals(count, testRequestModel.count());
    System.assertEquals(offset, testRequestModel.offset());
    System.assertEquals(xSort, testRequestModel.xSort());
    Test.stopTest();
  }
  static testMethod void testQueryNoticesOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    Boolean passages = true;
    String aggregation = 'aggregation';
    Long count = 10L;
    List<String> xReturn = new List<String> { 'x_return' } ;
    Long offset = 10L;
    List<String> xSort = new List<String> { 'x_sort' } ;
    Boolean highlight = true;
    List<String> passagesFields = new List<String> { 'passages_fields' } ;
    Long passagesCount = 10L;
    Long passagesCharacters = 10L;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    List<String> similarDocumentIds = new List<String> { 'similar_document_ids' } ;
    List<String> similarFields = new List<String> { 'similar_fields' } ;

    IBMDiscoveryV1Models.QueryNoticesOptions testRequestModel = new IBMDiscoveryV1Models.QueryNoticesOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .passages(passages)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .passagesFields(passagesFields)
      .passagesCount(passagesCount)
      .passagesCharacters(passagesCharacters)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(query, testRequestModel.query());
    System.assertEquals(naturalLanguageQuery, testRequestModel.naturalLanguageQuery());
    System.assertEquals(passages, testRequestModel.passages());
    System.assertEquals(aggregation, testRequestModel.aggregation());
    System.assertEquals(count, testRequestModel.count());
    System.assertEquals(xReturn, testRequestModel.xReturn());
    System.assertEquals(offset, testRequestModel.offset());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(highlight, testRequestModel.highlight());
    System.assertEquals(passagesFields, testRequestModel.passagesFields());
    System.assertEquals(passagesCount, testRequestModel.passagesCount());
    System.assertEquals(passagesCharacters, testRequestModel.passagesCharacters());
    System.assertEquals(deduplicateField, testRequestModel.deduplicateField());
    System.assertEquals(similar, testRequestModel.similar());
    System.assertEquals(similarDocumentIds, testRequestModel.similarDocumentIds());
    System.assertEquals(similarFields, testRequestModel.similarFields());
    Test.stopTest();
  }
  static testMethod void testQueryNoticesResponseModel() {
    Test.startTest();
    Long matchingResults = 10L;
    IBMDiscoveryV1Models.QueryNoticesResult resultsItem = new IBMDiscoveryV1Models.QueryNoticesResult();
    List<IBMDiscoveryV1Models.QueryNoticesResult> results = new List<IBMDiscoveryV1Models.QueryNoticesResult> { resultsItem } ;
    IBMDiscoveryV1Models.QueryAggregation aggregationsItem = new IBMDiscoveryV1Models.QueryAggregation();
    List<IBMDiscoveryV1Models.QueryAggregation> aggregations = new List<IBMDiscoveryV1Models.QueryAggregation> { aggregationsItem } ;
    IBMDiscoveryV1Models.QueryPassages passagesItem = new IBMDiscoveryV1Models.QueryPassages();
    List<IBMDiscoveryV1Models.QueryPassages> passages = new List<IBMDiscoveryV1Models.QueryPassages> { passagesItem } ;
    Long duplicatesRemoved = 10L;

    IBMDiscoveryV1Models.QueryNoticesResponse testRequestModel = new IBMDiscoveryV1Models.QueryNoticesResponse();
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setResults(results);
    testRequestModel.setAggregations(aggregations);
    testRequestModel.setPassages(passages);
    testRequestModel.setDuplicatesRemoved(duplicatesRemoved);

    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(results, testRequestModel.getResults());
    System.assertEquals(aggregations, testRequestModel.getAggregations());
    System.assertEquals(passages, testRequestModel.getPassages());
    System.assertEquals(duplicatesRemoved, testRequestModel.getDuplicatesRemoved());
    Test.stopTest();
  }
  static testMethod void testQueryNoticesResultModel() {
    Test.startTest();
    String id = 'id';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String collectionId = 'collection_id';
    Double score = 0.5;
    IBMDiscoveryV1Models.QueryResultMetadata resultMetadata = new IBMDiscoveryV1Models.QueryResultMetadata();
    resultMetadata.setScore(score);
    String title = 'title';
    Long code = 10L;
    String filename = 'filename';
    String fileType = 'file_type';
    String sha1 = 'sha1';
    IBMDiscoveryV1Models.Notice noticesItem = new IBMDiscoveryV1Models.Notice();
    List<IBMDiscoveryV1Models.Notice> notices = new List<IBMDiscoveryV1Models.Notice> { noticesItem } ;

    IBMDiscoveryV1Models.QueryNoticesResult testRequestModel = new IBMDiscoveryV1Models.QueryNoticesResult();
    testRequestModel.setId(id);
    testRequestModel.setMetadata(metadata);
    testRequestModel.setCollectionId(collectionId);
    testRequestModel.setResultMetadata(resultMetadata);
    testRequestModel.setTitle(title);
    testRequestModel.setCode(code);
    testRequestModel.setFilename(filename);
    testRequestModel.setFileType(fileType);
    testRequestModel.setSha1(sha1);
    testRequestModel.setNotices(notices);

    System.assertEquals(id, testRequestModel.getId());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(collectionId, testRequestModel.getCollectionId());
    System.assertEquals(resultMetadata, testRequestModel.getResultMetadata());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(code, testRequestModel.getCode());
    System.assertEquals(filename, testRequestModel.getFilename());
    System.assertEquals(fileType, testRequestModel.getFileType());
    System.assertEquals(sha1, testRequestModel.getSha1());
    System.assertEquals(notices, testRequestModel.getNotices());
    Test.stopTest();
  }
  static testMethod void testQueryOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    Boolean passages = true;
    String aggregation = 'aggregation';
    Long count = 10L;
    String xReturn = 'x_return';
    Long offset = 10L;
    String xSort = 'x_sort';
    Boolean highlight = true;
    String passagesFields = 'passages_fields';
    Long passagesCount = 10L;
    Long passagesCharacters = 10L;
    Boolean deduplicate = true;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    String similarDocumentIds = 'similar_document_ids';
    String similarFields = 'similar_fields';
    String bias = 'bias';
    Boolean spellingSuggestions = true;
    Boolean xWatsonLoggingOptOut = true;

    IBMDiscoveryV1Models.QueryOptions testRequestModel = new IBMDiscoveryV1Models.QueryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .passages(passages)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .passagesFields(passagesFields)
      .passagesCount(passagesCount)
      .passagesCharacters(passagesCharacters)
      .deduplicate(deduplicate)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .bias(bias)
      .spellingSuggestions(spellingSuggestions)
      .xWatsonLoggingOptOut(xWatsonLoggingOptOut)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(query, testRequestModel.query());
    System.assertEquals(naturalLanguageQuery, testRequestModel.naturalLanguageQuery());
    System.assertEquals(passages, testRequestModel.passages());
    System.assertEquals(aggregation, testRequestModel.aggregation());
    System.assertEquals(count, testRequestModel.count());
    System.assertEquals(xReturn, testRequestModel.xReturn());
    System.assertEquals(offset, testRequestModel.offset());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(highlight, testRequestModel.highlight());
    System.assertEquals(passagesFields, testRequestModel.passagesFields());
    System.assertEquals(passagesCount, testRequestModel.passagesCount());
    System.assertEquals(passagesCharacters, testRequestModel.passagesCharacters());
    System.assertEquals(deduplicate, testRequestModel.deduplicate());
    System.assertEquals(deduplicateField, testRequestModel.deduplicateField());
    System.assertEquals(similar, testRequestModel.similar());
    System.assertEquals(similarDocumentIds, testRequestModel.similarDocumentIds());
    System.assertEquals(similarFields, testRequestModel.similarFields());
    System.assertEquals(bias, testRequestModel.bias());
    System.assertEquals(spellingSuggestions, testRequestModel.spellingSuggestions());
    System.assertEquals(xWatsonLoggingOptOut, testRequestModel.xWatsonLoggingOptOut());
    Test.stopTest();
  }
  static testMethod void testQueryPassagesModel() {
    Test.startTest();
    String documentId = 'document_id';
    Double passageScore = 0.5;
    String passageText = 'passage_text';
    Long startOffset = 10L;
    Long endOffset = 10L;
    String field = 'field';

    IBMDiscoveryV1Models.QueryPassages testRequestModel = new IBMDiscoveryV1Models.QueryPassages();
    testRequestModel.setDocumentId(documentId);
    testRequestModel.setPassageScore(passageScore);
    testRequestModel.setPassageText(passageText);
    testRequestModel.setStartOffset(startOffset);
    testRequestModel.setEndOffset(endOffset);
    testRequestModel.setField(field);

    System.assertEquals(documentId, testRequestModel.getDocumentId());
    System.assertEquals(passageScore, testRequestModel.getPassageScore());
    System.assertEquals(passageText, testRequestModel.getPassageText());
    System.assertEquals(startOffset, testRequestModel.getStartOffset());
    System.assertEquals(endOffset, testRequestModel.getEndOffset());
    System.assertEquals(field, testRequestModel.getField());
    Test.stopTest();
  }
  static testMethod void testQueryResponseModel() {
    Test.startTest();
    Long matchingResults = 10L;
    IBMDiscoveryV1Models.QueryResult resultsItem = new IBMDiscoveryV1Models.QueryResult();
    List<IBMDiscoveryV1Models.QueryResult> results = new List<IBMDiscoveryV1Models.QueryResult> { resultsItem } ;
    IBMDiscoveryV1Models.QueryAggregation aggregationsItem = new IBMDiscoveryV1Models.QueryAggregation();
    List<IBMDiscoveryV1Models.QueryAggregation> aggregations = new List<IBMDiscoveryV1Models.QueryAggregation> { aggregationsItem } ;
    IBMDiscoveryV1Models.QueryPassages passagesItem = new IBMDiscoveryV1Models.QueryPassages();
    List<IBMDiscoveryV1Models.QueryPassages> passages = new List<IBMDiscoveryV1Models.QueryPassages> { passagesItem } ;
    Long duplicatesRemoved = 10L;
    String sessionToken = 'session_token';
    IBMDiscoveryV1Models.RetrievalDetails retrievalDetails = new IBMDiscoveryV1Models.RetrievalDetails();
    String suggestedQuery = 'suggested_query';

    IBMDiscoveryV1Models.QueryResponse testRequestModel = new IBMDiscoveryV1Models.QueryResponse();
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setResults(results);
    testRequestModel.setAggregations(aggregations);
    testRequestModel.setPassages(passages);
    testRequestModel.setDuplicatesRemoved(duplicatesRemoved);
    testRequestModel.setSessionToken(sessionToken);
    testRequestModel.setRetrievalDetails(retrievalDetails);
    testRequestModel.setSuggestedQuery(suggestedQuery);

    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(results, testRequestModel.getResults());
    System.assertEquals(aggregations, testRequestModel.getAggregations());
    System.assertEquals(passages, testRequestModel.getPassages());
    System.assertEquals(duplicatesRemoved, testRequestModel.getDuplicatesRemoved());
    System.assertEquals(sessionToken, testRequestModel.getSessionToken());
    System.assertEquals(retrievalDetails, testRequestModel.getRetrievalDetails());
    System.assertEquals(suggestedQuery, testRequestModel.getSuggestedQuery());
    Test.stopTest();
  }
  static testMethod void testQueryResultModel() {
    Test.startTest();
    String id = 'id';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String collectionId = 'collection_id';
    Double score = 0.5;
    IBMDiscoveryV1Models.QueryResultMetadata resultMetadata = new IBMDiscoveryV1Models.QueryResultMetadata();
    resultMetadata.setScore(score);
    String title = 'title';

    IBMDiscoveryV1Models.QueryResult testRequestModel = new IBMDiscoveryV1Models.QueryResult();
    testRequestModel.setId(id);
    testRequestModel.setMetadata(metadata);
    testRequestModel.setCollectionId(collectionId);
    testRequestModel.setResultMetadata(resultMetadata);
    testRequestModel.setTitle(title);

    System.assertEquals(id, testRequestModel.getId());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(collectionId, testRequestModel.getCollectionId());
    System.assertEquals(resultMetadata, testRequestModel.getResultMetadata());
    System.assertEquals(title, testRequestModel.getTitle());
    Test.stopTest();
  }
  static testMethod void testQueryResultMetadataModel() {
    Test.startTest();
    Double score = 0.5;
    Double confidence = 0.5;

    IBMDiscoveryV1Models.QueryResultMetadata testRequestModel = new IBMDiscoveryV1Models.QueryResultMetadata();
    testRequestModel.setScore(score);
    testRequestModel.setConfidence(confidence);

    System.assertEquals(score, testRequestModel.getScore());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    Test.stopTest();
  }
  static testMethod void testRetrievalDetailsModel() {
    Test.startTest();
    String documentRetrievalStrategy = 'document_retrieval_strategy';

    IBMDiscoveryV1Models.RetrievalDetails testRequestModel = new IBMDiscoveryV1Models.RetrievalDetails();
    testRequestModel.setDocumentRetrievalStrategy(documentRetrievalStrategy);

    System.assertEquals(documentRetrievalStrategy, testRequestModel.getDocumentRetrievalStrategy());
    Test.stopTest();
  }
  static testMethod void testSduStatusModel() {
    Test.startTest();
    Boolean enabled = true;
    Long totalAnnotatedPages = 10L;
    Long totalPages = 10L;
    Long totalDocuments = 10L;
    IBMDiscoveryV1Models.SduStatusCustomFields customFields = new IBMDiscoveryV1Models.SduStatusCustomFields();

    IBMDiscoveryV1Models.SduStatus testRequestModel = new IBMDiscoveryV1Models.SduStatus();
    testRequestModel.setEnabled(enabled);
    testRequestModel.setTotalAnnotatedPages(totalAnnotatedPages);
    testRequestModel.setTotalPages(totalPages);
    testRequestModel.setTotalDocuments(totalDocuments);
    testRequestModel.setCustomFields(customFields);

    System.assertEquals(enabled, testRequestModel.getEnabled());
    System.assertEquals(totalAnnotatedPages, testRequestModel.getTotalAnnotatedPages());
    System.assertEquals(totalPages, testRequestModel.getTotalPages());
    System.assertEquals(totalDocuments, testRequestModel.getTotalDocuments());
    System.assertEquals(customFields, testRequestModel.getCustomFields());
    Test.stopTest();
  }
  static testMethod void testSduStatusCustomFieldsModel() {
    Test.startTest();
    Long defined = 10L;
    Long maximumAllowed = 10L;

    IBMDiscoveryV1Models.SduStatusCustomFields testRequestModel = new IBMDiscoveryV1Models.SduStatusCustomFields();
    testRequestModel.setDefined(defined);
    testRequestModel.setMaximumAllowed(maximumAllowed);

    System.assertEquals(defined, testRequestModel.getDefined());
    System.assertEquals(maximumAllowed, testRequestModel.getMaximumAllowed());
    Test.stopTest();
  }
  static testMethod void testSearchStatusModel() {
    Test.startTest();
    String scope = 'scope';
    String status = 'status';
    String statusDescription = 'status_description';
    Datetime lastTrained = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);

    IBMDiscoveryV1Models.SearchStatus testRequestModel = new IBMDiscoveryV1Models.SearchStatus();
    testRequestModel.setScope(scope);
    testRequestModel.setStatus(status);
    testRequestModel.setStatusDescription(statusDescription);
    testRequestModel.setLastTrained(lastTrained);

    System.assertEquals(scope, testRequestModel.getScope());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(statusDescription, testRequestModel.getStatusDescription());
    System.assertEquals(lastTrained, testRequestModel.getLastTrained());
    Test.stopTest();
  }
  static testMethod void testSegmentSettingsModel() {
    Test.startTest();
    Boolean enabled = true;
    List<String> selectorTags = new List<String> { 'selector_tags' } ;
    List<String> annotatedFields = new List<String> { 'annotated_fields' } ;

    IBMDiscoveryV1Models.SegmentSettings testRequestModel = new IBMDiscoveryV1Models.SegmentSettingsBuilder()
      .enabled(enabled)
      .selectorTags(selectorTags)
      .annotatedFields(annotatedFields)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(enabled, testRequestModel.getEnabled());
    System.assertEquals(selectorTags, testRequestModel.getSelectorTags());
    System.assertEquals(annotatedFields, testRequestModel.getAnnotatedFields());
    Test.stopTest();
  }
  static testMethod void testSourceModel() {
    Test.startTest();
    String xType = 'x_type';
    String credentialId = 'credential_id';
    IBMDiscoveryV1Models.SourceSchedule schedule = new IBMDiscoveryV1Models.SourceScheduleBuilder()
      .build();
    IBMDiscoveryV1Models.SourceOptions options = new IBMDiscoveryV1Models.SourceOptionsBuilder()
      .build();

    IBMDiscoveryV1Models.Source testRequestModel = new IBMDiscoveryV1Models.SourceBuilder()
      .xType(xType)
      .credentialId(credentialId)
      .schedule(schedule)
      .options(options)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(credentialId, testRequestModel.getCredentialId());
    System.assertEquals(schedule, testRequestModel.getSchedule());
    System.assertEquals(options, testRequestModel.getOptions());
    Test.stopTest();
  }
  static testMethod void testSourceOptionsModel() {
    Test.startTest();
    String ownerUserId = 'owner_user_id';
    String folderId = 'folder_id';
    IBMDiscoveryV1Models.SourceOptionsFolder foldersItem = new IBMDiscoveryV1Models.SourceOptionsFolderBuilder()
      .ownerUserId(ownerUserId)
      .folderId(folderId)
      .build();
    List<IBMDiscoveryV1Models.SourceOptionsFolder> folders = new List<IBMDiscoveryV1Models.SourceOptionsFolder> { foldersItem } ;
    String name = 'name';
    IBMDiscoveryV1Models.SourceOptionsObject objectsItem = new IBMDiscoveryV1Models.SourceOptionsObjectBuilder()
      .name(name)
      .build();
    List<IBMDiscoveryV1Models.SourceOptionsObject> objects = new List<IBMDiscoveryV1Models.SourceOptionsObject> { objectsItem } ;
    String siteCollectionPath = 'site_collection_path';
    IBMDiscoveryV1Models.SourceOptionsSiteColl siteCollectionsItem = new IBMDiscoveryV1Models.SourceOptionsSiteCollBuilder()
      .siteCollectionPath(siteCollectionPath)
      .build();
    List<IBMDiscoveryV1Models.SourceOptionsSiteColl> siteCollections = new List<IBMDiscoveryV1Models.SourceOptionsSiteColl> { siteCollectionsItem } ;
    String url = 'url';
    IBMDiscoveryV1Models.SourceOptionsWebCrawl urlsItem = new IBMDiscoveryV1Models.SourceOptionsWebCrawlBuilder()
      .url(url)
      .build();
    List<IBMDiscoveryV1Models.SourceOptionsWebCrawl> urls = new List<IBMDiscoveryV1Models.SourceOptionsWebCrawl> { urlsItem } ;
    IBMDiscoveryV1Models.SourceOptionsBuckets bucketsItem = new IBMDiscoveryV1Models.SourceOptionsBucketsBuilder()
      .name(name)
      .build();
    List<IBMDiscoveryV1Models.SourceOptionsBuckets> buckets = new List<IBMDiscoveryV1Models.SourceOptionsBuckets> { bucketsItem } ;
    Boolean crawlAllBuckets = true;

    IBMDiscoveryV1Models.SourceOptions testRequestModel = new IBMDiscoveryV1Models.SourceOptionsBuilder()
      .folders(folders)
      .objects(objects)
      .siteCollections(siteCollections)
      .urls(urls)
      .buckets(buckets)
      .crawlAllBuckets(crawlAllBuckets)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(folders, testRequestModel.getFolders());
    System.assertEquals(objects, testRequestModel.getObjects());
    System.assertEquals(siteCollections, testRequestModel.getSiteCollections());
    System.assertEquals(urls, testRequestModel.getUrls());
    System.assertEquals(buckets, testRequestModel.getBuckets());
    System.assertEquals(crawlAllBuckets, testRequestModel.getCrawlAllBuckets());
    Test.stopTest();
  }
  static testMethod void testSourceOptionsBucketsModel() {
    Test.startTest();
    String name = 'name';
    Long xLimit = 10L;

    IBMDiscoveryV1Models.SourceOptionsBuckets testRequestModel = new IBMDiscoveryV1Models.SourceOptionsBucketsBuilder()
      .name(name)
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(xLimit, testRequestModel.getXLimit());
    Test.stopTest();
  }
  static testMethod void testSourceOptionsFolderModel() {
    Test.startTest();
    String ownerUserId = 'owner_user_id';
    String folderId = 'folder_id';
    Long xLimit = 10L;

    IBMDiscoveryV1Models.SourceOptionsFolder testRequestModel = new IBMDiscoveryV1Models.SourceOptionsFolderBuilder()
      .ownerUserId(ownerUserId)
      .folderId(folderId)
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(ownerUserId, testRequestModel.getOwnerUserId());
    System.assertEquals(folderId, testRequestModel.getFolderId());
    System.assertEquals(xLimit, testRequestModel.getXLimit());
    Test.stopTest();
  }
  static testMethod void testSourceOptionsObjectModel() {
    Test.startTest();
    String name = 'name';
    Long xLimit = 10L;

    IBMDiscoveryV1Models.SourceOptionsObject testRequestModel = new IBMDiscoveryV1Models.SourceOptionsObjectBuilder()
      .name(name)
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(xLimit, testRequestModel.getXLimit());
    Test.stopTest();
  }
  static testMethod void testSourceOptionsSiteCollModel() {
    Test.startTest();
    String siteCollectionPath = 'site_collection_path';
    Long xLimit = 10L;

    IBMDiscoveryV1Models.SourceOptionsSiteColl testRequestModel = new IBMDiscoveryV1Models.SourceOptionsSiteCollBuilder()
      .siteCollectionPath(siteCollectionPath)
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(siteCollectionPath, testRequestModel.getSiteCollectionPath());
    System.assertEquals(xLimit, testRequestModel.getXLimit());
    Test.stopTest();
  }
  static testMethod void testSourceOptionsWebCrawlModel() {
    Test.startTest();
    String url = 'url';
    Boolean limitToStartingHosts = true;
    String crawlSpeed = 'crawl_speed';
    Boolean allowUntrustedCertificate = true;
    Long maximumHops = 10L;
    Long requestTimeout = 10L;
    Boolean overrideRobotsTxt = true;
    List<String> blacklist = new List<String> { 'blacklist' } ;

    IBMDiscoveryV1Models.SourceOptionsWebCrawl testRequestModel = new IBMDiscoveryV1Models.SourceOptionsWebCrawlBuilder()
      .url(url)
      .limitToStartingHosts(limitToStartingHosts)
      .crawlSpeed(crawlSpeed)
      .allowUntrustedCertificate(allowUntrustedCertificate)
      .maximumHops(maximumHops)
      .requestTimeout(requestTimeout)
      .overrideRobotsTxt(overrideRobotsTxt)
      .blacklist(blacklist)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(limitToStartingHosts, testRequestModel.getLimitToStartingHosts());
    System.assertEquals(crawlSpeed, testRequestModel.getCrawlSpeed());
    System.assertEquals(allowUntrustedCertificate, testRequestModel.getAllowUntrustedCertificate());
    System.assertEquals(maximumHops, testRequestModel.getMaximumHops());
    System.assertEquals(requestTimeout, testRequestModel.getRequestTimeout());
    System.assertEquals(overrideRobotsTxt, testRequestModel.getOverrideRobotsTxt());
    System.assertEquals(blacklist, testRequestModel.getBlacklist());
    Test.stopTest();
  }
  static testMethod void testSourceScheduleModel() {
    Test.startTest();
    Boolean enabled = true;
    String timeZone = 'time_zone';
    String frequency = 'frequency';

    IBMDiscoveryV1Models.SourceSchedule testRequestModel = new IBMDiscoveryV1Models.SourceScheduleBuilder()
      .enabled(enabled)
      .timeZone(timeZone)
      .frequency(frequency)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(enabled, testRequestModel.getEnabled());
    System.assertEquals(timeZone, testRequestModel.getTimeZone());
    System.assertEquals(frequency, testRequestModel.getFrequency());
    Test.stopTest();
  }
  static testMethod void testSourceStatusModel() {
    Test.startTest();
    String status = 'status';
    Datetime nextCrawl = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);

    IBMDiscoveryV1Models.SourceStatus testRequestModel = new IBMDiscoveryV1Models.SourceStatus();
    testRequestModel.setStatus(status);
    testRequestModel.setNextCrawl(nextCrawl);

    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(nextCrawl, testRequestModel.getNextCrawl());
    Test.stopTest();
  }
  static testMethod void testTokenDictRuleModel() {
    Test.startTest();
    String text = 'text';
    List<String> tokens = new List<String> { 'tokens' } ;
    List<String> readings = new List<String> { 'readings' } ;
    String partOfSpeech = 'part_of_speech';

    IBMDiscoveryV1Models.TokenDictRule testRequestModel = new IBMDiscoveryV1Models.TokenDictRuleBuilder()
      .text(text)
      .tokens(tokens)
      .readings(readings)
      .partOfSpeech(partOfSpeech)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(tokens, testRequestModel.getTokens());
    System.assertEquals(readings, testRequestModel.getReadings());
    System.assertEquals(partOfSpeech, testRequestModel.getPartOfSpeech());
    Test.stopTest();
  }
  static testMethod void testTokenDictStatusResponseModel() {
    Test.startTest();
    String status = 'status';
    String xType = 'x_type';

    IBMDiscoveryV1Models.TokenDictStatusResponse testRequestModel = new IBMDiscoveryV1Models.TokenDictStatusResponse();
    testRequestModel.setStatus(status);
    testRequestModel.setXType(xType);

    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(xType, testRequestModel.getXType());
    Test.stopTest();
  }
  static testMethod void testTopHitsResultsModel() {
    Test.startTest();
    Long matchingResults = 10L;
    IBMDiscoveryV1Models.QueryResult hitsItem = new IBMDiscoveryV1Models.QueryResult();
    List<IBMDiscoveryV1Models.QueryResult> hits = new List<IBMDiscoveryV1Models.QueryResult> { hitsItem } ;

    IBMDiscoveryV1Models.TopHitsResults testRequestModel = new IBMDiscoveryV1Models.TopHitsResults();
    testRequestModel.setMatchingResults(matchingResults);
    testRequestModel.setHits(hits);

    System.assertEquals(matchingResults, testRequestModel.getMatchingResults());
    System.assertEquals(hits, testRequestModel.getHits());
    Test.stopTest();
  }
  static testMethod void testTrainingDataSetModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    IBMDiscoveryV1Models.TrainingQuery queriesItem = new IBMDiscoveryV1Models.TrainingQuery();
    List<IBMDiscoveryV1Models.TrainingQuery> queries = new List<IBMDiscoveryV1Models.TrainingQuery> { queriesItem } ;

    IBMDiscoveryV1Models.TrainingDataSet testRequestModel = new IBMDiscoveryV1Models.TrainingDataSet();
    testRequestModel.setEnvironmentId(environmentId);
    testRequestModel.setCollectionId(collectionId);
    testRequestModel.setQueries(queries);

    System.assertEquals(environmentId, testRequestModel.getEnvironmentId());
    System.assertEquals(collectionId, testRequestModel.getCollectionId());
    System.assertEquals(queries, testRequestModel.getQueries());
    Test.stopTest();
  }
  static testMethod void testTrainingExampleModel() {
    Test.startTest();
    String documentId = 'document_id';
    String crossReference = 'cross_reference';
    Long relevance = 10L;

    IBMDiscoveryV1Models.TrainingExample testRequestModel = new IBMDiscoveryV1Models.TrainingExampleBuilder()
      .documentId(documentId)
      .crossReference(crossReference)
      .relevance(relevance)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(documentId, testRequestModel.getDocumentId());
    System.assertEquals(crossReference, testRequestModel.getCrossReference());
    System.assertEquals(relevance, testRequestModel.getRelevance());
    Test.stopTest();
  }
  static testMethod void testTrainingExampleListModel() {
    Test.startTest();
    IBMDiscoveryV1Models.TrainingExample examplesItem = new IBMDiscoveryV1Models.TrainingExampleBuilder()
      .build();
    List<IBMDiscoveryV1Models.TrainingExample> examples = new List<IBMDiscoveryV1Models.TrainingExample> { examplesItem } ;

    IBMDiscoveryV1Models.TrainingExampleList testRequestModel = new IBMDiscoveryV1Models.TrainingExampleList();
    testRequestModel.setExamples(examples);

    System.assertEquals(examples, testRequestModel.getExamples());
    Test.stopTest();
  }
  static testMethod void testTrainingQueryModel() {
    Test.startTest();
    String queryId = 'query_id';
    String naturalLanguageQuery = 'natural_language_query';
    String filter = 'filter';
    IBMDiscoveryV1Models.TrainingExample examplesItem = new IBMDiscoveryV1Models.TrainingExampleBuilder()
      .build();
    List<IBMDiscoveryV1Models.TrainingExample> examples = new List<IBMDiscoveryV1Models.TrainingExample> { examplesItem } ;

    IBMDiscoveryV1Models.TrainingQuery testRequestModel = new IBMDiscoveryV1Models.TrainingQuery();
    testRequestModel.setQueryId(queryId);
    testRequestModel.setNaturalLanguageQuery(naturalLanguageQuery);
    testRequestModel.setFilter(filter);
    testRequestModel.setExamples(examples);

    System.assertEquals(queryId, testRequestModel.getQueryId());
    System.assertEquals(naturalLanguageQuery, testRequestModel.getNaturalLanguageQuery());
    System.assertEquals(filter, testRequestModel.getFilter());
    System.assertEquals(examples, testRequestModel.getExamples());
    Test.stopTest();
  }
  static testMethod void testTrainingStatusModel() {
    Test.startTest();
    Long totalExamples = 10L;
    Boolean available = true;
    Boolean processing = true;
    Boolean minimumQueriesAdded = true;
    Boolean minimumExamplesAdded = true;
    Boolean sufficientLabelDiversity = true;
    Long notices = 10L;
    Datetime successfullyTrained = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime dataUpdated = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);

    IBMDiscoveryV1Models.TrainingStatus testRequestModel = new IBMDiscoveryV1Models.TrainingStatus();
    testRequestModel.setTotalExamples(totalExamples);
    testRequestModel.setAvailable(available);
    testRequestModel.setProcessing(processing);
    testRequestModel.setMinimumQueriesAdded(minimumQueriesAdded);
    testRequestModel.setMinimumExamplesAdded(minimumExamplesAdded);
    testRequestModel.setSufficientLabelDiversity(sufficientLabelDiversity);
    testRequestModel.setNotices(notices);
    testRequestModel.setSuccessfullyTrained(successfullyTrained);
    testRequestModel.setDataUpdated(dataUpdated);

    System.assertEquals(totalExamples, testRequestModel.getTotalExamples());
    System.assertEquals(available, testRequestModel.getAvailable());
    System.assertEquals(processing, testRequestModel.getProcessing());
    System.assertEquals(minimumQueriesAdded, testRequestModel.getMinimumQueriesAdded());
    System.assertEquals(minimumExamplesAdded, testRequestModel.getMinimumExamplesAdded());
    System.assertEquals(sufficientLabelDiversity, testRequestModel.getSufficientLabelDiversity());
    System.assertEquals(notices, testRequestModel.getNotices());
    System.assertEquals(successfullyTrained, testRequestModel.getSuccessfullyTrained());
    System.assertEquals(dataUpdated, testRequestModel.getDataUpdated());
    Test.stopTest();
  }
  static testMethod void testUpdateCollectionOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String name = 'name';
    String description = 'description';
    String configurationId = 'configuration_id';

    IBMDiscoveryV1Models.UpdateCollectionOptions testRequestModel = new IBMDiscoveryV1Models.UpdateCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .name(name)
      .description(description)
      .configurationId(configurationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(configurationId, testRequestModel.configurationId());
    Test.stopTest();
  }
  static testMethod void testUpdateConfigurationOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String configurationId = 'configuration_id';
    String name = 'name';
    String description = 'description';
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.ConversionsBuilder()
      .build();
    String destinationField = 'destination_field';
    String sourceField = 'source_field';
    String enrichment = 'enrichment';
    IBMDiscoveryV1Models.Enrichment enrichmentsItem = new IBMDiscoveryV1Models.EnrichmentBuilder()
      .destinationField(destinationField)
      .sourceField(sourceField)
      .enrichment(enrichment)
      .build();
    List<IBMDiscoveryV1Models.Enrichment> enrichments = new List<IBMDiscoveryV1Models.Enrichment> { enrichmentsItem } ;
    IBMDiscoveryV1Models.NormalizationOperation normalizationsItem = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .build();
    List<IBMDiscoveryV1Models.NormalizationOperation> normalizations = new List<IBMDiscoveryV1Models.NormalizationOperation> { normalizationsItem } ;
    IBMDiscoveryV1Models.Source source = new IBMDiscoveryV1Models.SourceBuilder()
      .build();

    IBMDiscoveryV1Models.UpdateConfigurationOptions testRequestModel = new IBMDiscoveryV1Models.UpdateConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .name(name)
      .description(description)
      .conversions(conversions)
      .enrichments(enrichments)
      .normalizations(normalizations)
      .source(source)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(configurationId, testRequestModel.configurationId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(conversions, testRequestModel.conversions());
    System.assertEquals(enrichments, testRequestModel.enrichments());
    System.assertEquals(normalizations, testRequestModel.normalizations());
    System.assertEquals(source, testRequestModel.source());
    Test.stopTest();
  }
  static testMethod void testUpdateCredentialsOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String credentialId = 'credential_id';
    String sourceType = 'source_type';
    IBMDiscoveryV1Models.CredentialDetails credentialDetails = new IBMDiscoveryV1Models.CredentialDetailsBuilder()
      .build();
    String status = 'status';

    IBMDiscoveryV1Models.UpdateCredentialsOptions testRequestModel = new IBMDiscoveryV1Models.UpdateCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .sourceType(sourceType)
      .credentialDetails(credentialDetails)
      .status(status)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(credentialId, testRequestModel.credentialId());
    System.assertEquals(sourceType, testRequestModel.sourceType());
    System.assertEquals(credentialDetails, testRequestModel.credentialDetails());
    System.assertEquals(status, testRequestModel.status());
    Test.stopTest();
  }
  static testMethod void testUpdateDocumentOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String documentId = 'document_id';
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String filename = 'filename';
    String fileContentType = 'file_content_type';
    String metadata = 'metadata';

    IBMDiscoveryV1Models.UpdateDocumentOptions testRequestModel = new IBMDiscoveryV1Models.UpdateDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .file(file)
      .filename(filename)
      .fileContentType(fileContentType)
      .metadata(metadata)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(documentId, testRequestModel.documentId());
    System.assertEquals(file, testRequestModel.file());
    System.assertEquals(filename, testRequestModel.filename());
    System.assertEquals(fileContentType, testRequestModel.fileContentType());
    System.assertEquals(metadata, testRequestModel.metadata());
    Test.stopTest();
  }
  static testMethod void testUpdateEnvironmentOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String name = 'name';
    String description = 'description';
    String size = 'size';

    IBMDiscoveryV1Models.UpdateEnvironmentOptions testRequestModel = new IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .description(description)
      .size(size)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(size, testRequestModel.size());
    Test.stopTest();
  }
  static testMethod void testUpdateTrainingExampleOptionsModel() {
    Test.startTest();
    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String exampleId = 'example_id';
    String crossReference = 'cross_reference';
    Long relevance = 10L;

    IBMDiscoveryV1Models.UpdateTrainingExampleOptions testRequestModel = new IBMDiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .exampleId(exampleId)
      .crossReference(crossReference)
      .relevance(relevance)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(environmentId, testRequestModel.environmentId());
    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(queryId, testRequestModel.queryId());
    System.assertEquals(exampleId, testRequestModel.exampleId());
    System.assertEquals(crossReference, testRequestModel.crossReference());
    System.assertEquals(relevance, testRequestModel.relevance());
    Test.stopTest();
  }
  static testMethod void testWordHeadingDetectionModel() {
    Test.startTest();
    IBMDiscoveryV1Models.FontSetting fontsItem = new IBMDiscoveryV1Models.FontSettingBuilder()
      .build();
    List<IBMDiscoveryV1Models.FontSetting> fonts = new List<IBMDiscoveryV1Models.FontSetting> { fontsItem } ;
    IBMDiscoveryV1Models.WordStyle stylesItem = new IBMDiscoveryV1Models.WordStyleBuilder()
      .build();
    List<IBMDiscoveryV1Models.WordStyle> styles = new List<IBMDiscoveryV1Models.WordStyle> { stylesItem } ;

    IBMDiscoveryV1Models.WordHeadingDetection testRequestModel = new IBMDiscoveryV1Models.WordHeadingDetectionBuilder()
      .fonts(fonts)
      .styles(styles)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(fonts, testRequestModel.getFonts());
    System.assertEquals(styles, testRequestModel.getStyles());
    Test.stopTest();
  }
  static testMethod void testWordSettingsModel() {
    Test.startTest();
    IBMDiscoveryV1Models.WordHeadingDetection heading = new IBMDiscoveryV1Models.WordHeadingDetectionBuilder()
      .build();

    IBMDiscoveryV1Models.WordSettings testRequestModel = new IBMDiscoveryV1Models.WordSettingsBuilder()
      .heading(heading)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(heading, testRequestModel.getHeading());
    Test.stopTest();
  }
  static testMethod void testWordStyleModel() {
    Test.startTest();
    Long level = 10L;
    List<String> names = new List<String> { 'names' } ;

    IBMDiscoveryV1Models.WordStyle testRequestModel = new IBMDiscoveryV1Models.WordStyleBuilder()
      .level(level)
      .names(names)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(level, testRequestModel.getLevel());
    System.assertEquals(names, testRequestModel.getNames());
    Test.stopTest();
  }
  static testMethod void testXPathPatternsModel() {
    Test.startTest();
    List<String> xpaths = new List<String> { 'xpaths' } ;

    IBMDiscoveryV1Models.XPathPatterns testRequestModel = new IBMDiscoveryV1Models.XPathPatternsBuilder()
      .xpaths(xpaths)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xpaths, testRequestModel.getXpaths());
    Test.stopTest();
  }


  static testMethod void testCreateEnvironment() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String name = 'name';
    String description = 'description';
    String size = 'size';

    IBMDiscoveryV1Models.CreateEnvironmentOptions options = new IBMDiscoveryV1Models.CreateEnvironmentOptionsBuilder()
      .name(name)
      .description(description)
      .size(size)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Environment response = service.createEnvironment(options);

    System.assertEquals(
      'environment_id',
      response.getEnvironmentId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      true,
      response.getReadOnly()
    );
    System.assertEquals(
      'size',
      response.getSize()
    );
    System.assertEquals(
      'requested_size',
      response.getRequestedSize()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDocuments().getIndexed()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDocuments().getMaximumAllowed()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDiskUsage().getMaximumAllowedBytes()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getCollections().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getCollections().getMaximumAllowed()
    );
    System.assertEquals(
      'scope',
      response.getSearchStatus().getScope()
    );
    System.assertEquals(
      'status',
      response.getSearchStatus().getStatus()
    );
    System.assertEquals(
      'status_description',
      response.getSearchStatus().getStatusDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getSearchStatus().getLastTrained()
    );

    Test.stopTest();
  }
  static testMethod void testListEnvironments() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1ListEnvironmentsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String name = 'name';

    IBMDiscoveryV1Models.ListEnvironmentsOptions options = new IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder()
      .name(name)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.ListEnvironmentsResponse response = service.listEnvironments(options);

    System.assertEquals(
      'environment_id',
      response.getEnvironments().get(0).getEnvironmentId()
    );
    System.assertEquals(
      'name',
      response.getEnvironments().get(0).getName()
    );
    System.assertEquals(
      'description',
      response.getEnvironments().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEnvironments().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEnvironments().get(0).getUpdated()
    );
    System.assertEquals(
      'status',
      response.getEnvironments().get(0).getStatus()
    );
    System.assertEquals(
      true,
      response.getEnvironments().get(0).getReadOnly()
    );
    System.assertEquals(
      'size',
      response.getEnvironments().get(0).getSize()
    );
    System.assertEquals(
      'requested_size',
      response.getEnvironments().get(0).getRequestedSize()
    );
    System.assertEquals(
      10L,
      response.getEnvironments().get(0).getIndexCapacity().getDocuments().getIndexed()
    );
    System.assertEquals(
      10L,
      response.getEnvironments().get(0).getIndexCapacity().getDocuments().getMaximumAllowed()
    );
    System.assertEquals(
      10L,
      response.getEnvironments().get(0).getIndexCapacity().getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getEnvironments().get(0).getIndexCapacity().getDiskUsage().getMaximumAllowedBytes()
    );
    System.assertEquals(
      10L,
      response.getEnvironments().get(0).getIndexCapacity().getCollections().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getEnvironments().get(0).getIndexCapacity().getCollections().getMaximumAllowed()
    );
    System.assertEquals(
      'scope',
      response.getEnvironments().get(0).getSearchStatus().getScope()
    );
    System.assertEquals(
      'status',
      response.getEnvironments().get(0).getSearchStatus().getStatus()
    );
    System.assertEquals(
      'status_description',
      response.getEnvironments().get(0).getSearchStatus().getStatusDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEnvironments().get(0).getSearchStatus().getLastTrained()
    );

    Test.stopTest();
  }
  static testMethod void testGetEnvironment() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.GetEnvironmentOptions options = new IBMDiscoveryV1Models.GetEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Environment response = service.getEnvironment(options);

    System.assertEquals(
      'environment_id',
      response.getEnvironmentId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      true,
      response.getReadOnly()
    );
    System.assertEquals(
      'size',
      response.getSize()
    );
    System.assertEquals(
      'requested_size',
      response.getRequestedSize()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDocuments().getIndexed()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDocuments().getMaximumAllowed()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDiskUsage().getMaximumAllowedBytes()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getCollections().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getCollections().getMaximumAllowed()
    );
    System.assertEquals(
      'scope',
      response.getSearchStatus().getScope()
    );
    System.assertEquals(
      'status',
      response.getSearchStatus().getStatus()
    );
    System.assertEquals(
      'status_description',
      response.getSearchStatus().getStatusDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getSearchStatus().getLastTrained()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateEnvironment() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Environment();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String name = 'name';
    String description = 'description';
    String size = 'size';

    IBMDiscoveryV1Models.UpdateEnvironmentOptions options = new IBMDiscoveryV1Models.UpdateEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .description(description)
      .size(size)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Environment response = service.updateEnvironment(options);

    System.assertEquals(
      'environment_id',
      response.getEnvironmentId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      true,
      response.getReadOnly()
    );
    System.assertEquals(
      'size',
      response.getSize()
    );
    System.assertEquals(
      'requested_size',
      response.getRequestedSize()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDocuments().getIndexed()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDocuments().getMaximumAllowed()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getDiskUsage().getMaximumAllowedBytes()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getCollections().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getIndexCapacity().getCollections().getMaximumAllowed()
    );
    System.assertEquals(
      'scope',
      response.getSearchStatus().getScope()
    );
    System.assertEquals(
      'status',
      response.getSearchStatus().getStatus()
    );
    System.assertEquals(
      'status_description',
      response.getSearchStatus().getStatusDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getSearchStatus().getLastTrained()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteEnvironment() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.DeleteEnvironmentOptions options = new IBMDiscoveryV1Models.DeleteEnvironmentOptionsBuilder()
      .environmentId(environmentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteEnvironment(options);

    Test.stopTest();
  }
  static testMethod void testListFields() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1ListCollectionFieldsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    List<String> collectionIds = new List<String> { 'collection_ids' } ;

    IBMDiscoveryV1Models.ListFieldsOptions options = new IBMDiscoveryV1Models.ListFieldsOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.ListCollectionFieldsResponse response = service.listFields(options);

    System.assertEquals(
      'field',
      response.getFields().get(0).getField()
    );
    System.assertEquals(
      'type',
      response.getFields().get(0).getXType()
    );

    Test.stopTest();
  }
  static testMethod void testCreateConfiguration() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String name = 'name';
    String description = 'description';
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.ConversionsBuilder()
      .build();
    String destinationField = 'destination_field';
    String sourceField = 'source_field';
    String enrichment = 'enrichment';
    IBMDiscoveryV1Models.Enrichment enrichmentsItem = new IBMDiscoveryV1Models.EnrichmentBuilder()
      .destinationField(destinationField)
      .sourceField(sourceField)
      .enrichment(enrichment)
      .build();
    List<IBMDiscoveryV1Models.Enrichment> enrichments = new List<IBMDiscoveryV1Models.Enrichment> { enrichmentsItem } ;
    IBMDiscoveryV1Models.NormalizationOperation normalizationsItem = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .build();
    List<IBMDiscoveryV1Models.NormalizationOperation> normalizations = new List<IBMDiscoveryV1Models.NormalizationOperation> { normalizationsItem } ;
    IBMDiscoveryV1Models.Source source = new IBMDiscoveryV1Models.SourceBuilder()
      .build();

    IBMDiscoveryV1Models.CreateConfigurationOptions options = new IBMDiscoveryV1Models.CreateConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .description(description)
      .conversions(conversions)
      .enrichments(enrichments)
      .normalizations(normalizations)
      .source(source)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Configuration response = service.createConfiguration(options);

    System.assertEquals(
      'configuration_id',
      response.getConfigurationId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConversions().getPdf().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConversions().getWord().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConversions().getWord().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConversions().getWord().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getStyles().get(0).getLevel()
    );
    System.assertEquals(
      'names',
      response.getConversions().getWord().getHeading().getStyles().get(0).getNames().get(0)
    );
    System.assertEquals(
      'exclude_tags_completely',
      response.getConversions().getHtml().getExcludeTagsCompletely().get(0)
    );
    System.assertEquals(
      'exclude_tags_keep_content',
      response.getConversions().getHtml().getExcludeTagsKeepContent().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConversions().getHtml().getKeepContent().getXpaths().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConversions().getHtml().getExcludeContent().getXpaths().get(0)
    );
    System.assertEquals(
      'keep_tag_attributes',
      response.getConversions().getHtml().getKeepTagAttributes().get(0)
    );
    System.assertEquals(
      'exclude_tag_attributes',
      response.getConversions().getHtml().getExcludeTagAttributes().get(0)
    );
    System.assertEquals(
      true,
      response.getConversions().getSegment().getEnabled()
    );
    System.assertEquals(
      'selector_tags',
      response.getConversions().getSegment().getSelectorTags().get(0)
    );
    System.assertEquals(
      'annotated_fields',
      response.getConversions().getSegment().getAnnotatedFields().get(0)
    );
    System.assertEquals(
      'operation',
      response.getConversions().getJsonNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getConversions().getJsonNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getConversions().getJsonNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      true,
      response.getConversions().getImageTextRecognition()
    );
    System.assertEquals(
      'description',
      response.getEnrichments().get(0).getDescription()
    );
    System.assertEquals(
      'destination_field',
      response.getEnrichments().get(0).getDestinationField()
    );
    System.assertEquals(
      'source_field',
      response.getEnrichments().get(0).getSourceField()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOverwrite()
    );
    System.assertEquals(
      'enrichment',
      response.getEnrichments().get(0).getEnrichment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getIgnoreDownstreamErrors()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getSentiment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getXLimit()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentiment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getXLimit()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentions()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentionTypes()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentenceLocations()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getModel()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSentiment().getDocument()
    );
    System.assertEquals(
      'target',
      response.getEnrichments().get(0).getOptions().getFeatures().getSentiment().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEmotion().getDocument()
    );
    System.assertEquals(
      'target',
      response.getEnrichments().get(0).getOptions().getFeatures().getEmotion().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getEntities()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getKeywords()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getXLimit()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getFeatures().getRelations().getModel()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getConcepts().getXLimit()
    );
    System.assertEquals(
      'language',
      response.getEnrichments().get(0).getOptions().getLanguage()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getModel()
    );
    System.assertEquals(
      'operation',
      response.getNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      'type',
      response.getSource().getXType()
    );
    System.assertEquals(
      'credential_id',
      response.getSource().getCredentialId()
    );
    System.assertEquals(
      true,
      response.getSource().getSchedule().getEnabled()
    );
    System.assertEquals(
      'time_zone',
      response.getSource().getSchedule().getTimeZone()
    );
    System.assertEquals(
      'frequency',
      response.getSource().getSchedule().getFrequency()
    );
    System.assertEquals(
      'owner_user_id',
      response.getSource().getOptions().getFolders().get(0).getOwnerUserId()
    );
    System.assertEquals(
      'folder_id',
      response.getSource().getOptions().getFolders().get(0).getFolderId()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getFolders().get(0).getXLimit()
    );
    System.assertEquals(
      'name',
      response.getSource().getOptions().getObjects().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getObjects().get(0).getXLimit()
    );
    System.assertEquals(
      'site_collection_path',
      response.getSource().getOptions().getSiteCollections().get(0).getSiteCollectionPath()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getSiteCollections().get(0).getXLimit()
    );
    System.assertEquals(
      'url',
      response.getSource().getOptions().getUrls().get(0).getUrl()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getLimitToStartingHosts()
    );
    System.assertEquals(
      'crawl_speed',
      response.getSource().getOptions().getUrls().get(0).getCrawlSpeed()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getAllowUntrustedCertificate()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getUrls().get(0).getMaximumHops()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getUrls().get(0).getRequestTimeout()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getOverrideRobotsTxt()
    );
    System.assertEquals(
      'blacklist',
      response.getSource().getOptions().getUrls().get(0).getBlacklist().get(0)
    );
    System.assertEquals(
      'name',
      response.getSource().getOptions().getBuckets().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getBuckets().get(0).getXLimit()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getCrawlAllBuckets()
    );

    Test.stopTest();
  }
  static testMethod void testListConfigurations() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1ListConfigurationsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String name = 'name';

    IBMDiscoveryV1Models.ListConfigurationsOptions options = new IBMDiscoveryV1Models.ListConfigurationsOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.ListConfigurationsResponse response = service.listConfigurations(options);

    System.assertEquals(
      'configuration_id',
      response.getConfigurations().get(0).getConfigurationId()
    );
    System.assertEquals(
      'name',
      response.getConfigurations().get(0).getName()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getConfigurations().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getConfigurations().get(0).getUpdated()
    );
    System.assertEquals(
      'description',
      response.getConfigurations().get(0).getDescription()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getConversions().getPdf().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getConversions().getPdf().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getConversions().getPdf().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getConversions().getPdf().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getConversions().getPdf().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConfigurations().get(0).getConversions().getPdf().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getStyles().get(0).getLevel()
    );
    System.assertEquals(
      'names',
      response.getConfigurations().get(0).getConversions().getWord().getHeading().getStyles().get(0).getNames().get(0)
    );
    System.assertEquals(
      'exclude_tags_completely',
      response.getConfigurations().get(0).getConversions().getHtml().getExcludeTagsCompletely().get(0)
    );
    System.assertEquals(
      'exclude_tags_keep_content',
      response.getConfigurations().get(0).getConversions().getHtml().getExcludeTagsKeepContent().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConfigurations().get(0).getConversions().getHtml().getKeepContent().getXpaths().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConfigurations().get(0).getConversions().getHtml().getExcludeContent().getXpaths().get(0)
    );
    System.assertEquals(
      'keep_tag_attributes',
      response.getConfigurations().get(0).getConversions().getHtml().getKeepTagAttributes().get(0)
    );
    System.assertEquals(
      'exclude_tag_attributes',
      response.getConfigurations().get(0).getConversions().getHtml().getExcludeTagAttributes().get(0)
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getConversions().getSegment().getEnabled()
    );
    System.assertEquals(
      'selector_tags',
      response.getConfigurations().get(0).getConversions().getSegment().getSelectorTags().get(0)
    );
    System.assertEquals(
      'annotated_fields',
      response.getConfigurations().get(0).getConversions().getSegment().getAnnotatedFields().get(0)
    );
    System.assertEquals(
      'operation',
      response.getConfigurations().get(0).getConversions().getJsonNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getConfigurations().get(0).getConversions().getJsonNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getConfigurations().get(0).getConversions().getJsonNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getConversions().getImageTextRecognition()
    );
    System.assertEquals(
      'description',
      response.getConfigurations().get(0).getEnrichments().get(0).getDescription()
    );
    System.assertEquals(
      'destination_field',
      response.getConfigurations().get(0).getEnrichments().get(0).getDestinationField()
    );
    System.assertEquals(
      'source_field',
      response.getConfigurations().get(0).getEnrichments().get(0).getSourceField()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOverwrite()
    );
    System.assertEquals(
      'enrichment',
      response.getConfigurations().get(0).getEnrichments().get(0).getEnrichment()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getIgnoreDownstreamErrors()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getKeywords().getSentiment()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getKeywords().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getKeywords().getXLimit()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentiment()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEntities().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEntities().getXLimit()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentions()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentionTypes()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentenceLocations()
    );
    System.assertEquals(
      'model',
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEntities().getModel()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getSentiment().getDocument()
    );
    System.assertEquals(
      'target',
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getSentiment().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEmotion().getDocument()
    );
    System.assertEquals(
      'target',
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getEmotion().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getEntities()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getKeywords()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getXLimit()
    );
    System.assertEquals(
      'model',
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getRelations().getModel()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getFeatures().getConcepts().getXLimit()
    );
    System.assertEquals(
      'language',
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getLanguage()
    );
    System.assertEquals(
      'model',
      response.getConfigurations().get(0).getEnrichments().get(0).getOptions().getModel()
    );
    System.assertEquals(
      'operation',
      response.getConfigurations().get(0).getNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getConfigurations().get(0).getNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getConfigurations().get(0).getNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      'type',
      response.getConfigurations().get(0).getSource().getXType()
    );
    System.assertEquals(
      'credential_id',
      response.getConfigurations().get(0).getSource().getCredentialId()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getSource().getSchedule().getEnabled()
    );
    System.assertEquals(
      'time_zone',
      response.getConfigurations().get(0).getSource().getSchedule().getTimeZone()
    );
    System.assertEquals(
      'frequency',
      response.getConfigurations().get(0).getSource().getSchedule().getFrequency()
    );
    System.assertEquals(
      'owner_user_id',
      response.getConfigurations().get(0).getSource().getOptions().getFolders().get(0).getOwnerUserId()
    );
    System.assertEquals(
      'folder_id',
      response.getConfigurations().get(0).getSource().getOptions().getFolders().get(0).getFolderId()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getSource().getOptions().getFolders().get(0).getXLimit()
    );
    System.assertEquals(
      'name',
      response.getConfigurations().get(0).getSource().getOptions().getObjects().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getSource().getOptions().getObjects().get(0).getXLimit()
    );
    System.assertEquals(
      'site_collection_path',
      response.getConfigurations().get(0).getSource().getOptions().getSiteCollections().get(0).getSiteCollectionPath()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getSource().getOptions().getSiteCollections().get(0).getXLimit()
    );
    System.assertEquals(
      'url',
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getUrl()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getLimitToStartingHosts()
    );
    System.assertEquals(
      'crawl_speed',
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getCrawlSpeed()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getAllowUntrustedCertificate()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getMaximumHops()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getRequestTimeout()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getOverrideRobotsTxt()
    );
    System.assertEquals(
      'blacklist',
      response.getConfigurations().get(0).getSource().getOptions().getUrls().get(0).getBlacklist().get(0)
    );
    System.assertEquals(
      'name',
      response.getConfigurations().get(0).getSource().getOptions().getBuckets().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConfigurations().get(0).getSource().getOptions().getBuckets().get(0).getXLimit()
    );
    System.assertEquals(
      true,
      response.getConfigurations().get(0).getSource().getOptions().getCrawlAllBuckets()
    );

    Test.stopTest();
  }
  static testMethod void testGetConfiguration() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String configurationId = 'configuration_id';

    IBMDiscoveryV1Models.GetConfigurationOptions options = new IBMDiscoveryV1Models.GetConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Configuration response = service.getConfiguration(options);

    System.assertEquals(
      'configuration_id',
      response.getConfigurationId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConversions().getPdf().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConversions().getWord().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConversions().getWord().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConversions().getWord().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getStyles().get(0).getLevel()
    );
    System.assertEquals(
      'names',
      response.getConversions().getWord().getHeading().getStyles().get(0).getNames().get(0)
    );
    System.assertEquals(
      'exclude_tags_completely',
      response.getConversions().getHtml().getExcludeTagsCompletely().get(0)
    );
    System.assertEquals(
      'exclude_tags_keep_content',
      response.getConversions().getHtml().getExcludeTagsKeepContent().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConversions().getHtml().getKeepContent().getXpaths().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConversions().getHtml().getExcludeContent().getXpaths().get(0)
    );
    System.assertEquals(
      'keep_tag_attributes',
      response.getConversions().getHtml().getKeepTagAttributes().get(0)
    );
    System.assertEquals(
      'exclude_tag_attributes',
      response.getConversions().getHtml().getExcludeTagAttributes().get(0)
    );
    System.assertEquals(
      true,
      response.getConversions().getSegment().getEnabled()
    );
    System.assertEquals(
      'selector_tags',
      response.getConversions().getSegment().getSelectorTags().get(0)
    );
    System.assertEquals(
      'annotated_fields',
      response.getConversions().getSegment().getAnnotatedFields().get(0)
    );
    System.assertEquals(
      'operation',
      response.getConversions().getJsonNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getConversions().getJsonNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getConversions().getJsonNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      true,
      response.getConversions().getImageTextRecognition()
    );
    System.assertEquals(
      'description',
      response.getEnrichments().get(0).getDescription()
    );
    System.assertEquals(
      'destination_field',
      response.getEnrichments().get(0).getDestinationField()
    );
    System.assertEquals(
      'source_field',
      response.getEnrichments().get(0).getSourceField()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOverwrite()
    );
    System.assertEquals(
      'enrichment',
      response.getEnrichments().get(0).getEnrichment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getIgnoreDownstreamErrors()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getSentiment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getXLimit()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentiment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getXLimit()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentions()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentionTypes()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentenceLocations()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getModel()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSentiment().getDocument()
    );
    System.assertEquals(
      'target',
      response.getEnrichments().get(0).getOptions().getFeatures().getSentiment().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEmotion().getDocument()
    );
    System.assertEquals(
      'target',
      response.getEnrichments().get(0).getOptions().getFeatures().getEmotion().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getEntities()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getKeywords()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getXLimit()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getFeatures().getRelations().getModel()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getConcepts().getXLimit()
    );
    System.assertEquals(
      'language',
      response.getEnrichments().get(0).getOptions().getLanguage()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getModel()
    );
    System.assertEquals(
      'operation',
      response.getNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      'type',
      response.getSource().getXType()
    );
    System.assertEquals(
      'credential_id',
      response.getSource().getCredentialId()
    );
    System.assertEquals(
      true,
      response.getSource().getSchedule().getEnabled()
    );
    System.assertEquals(
      'time_zone',
      response.getSource().getSchedule().getTimeZone()
    );
    System.assertEquals(
      'frequency',
      response.getSource().getSchedule().getFrequency()
    );
    System.assertEquals(
      'owner_user_id',
      response.getSource().getOptions().getFolders().get(0).getOwnerUserId()
    );
    System.assertEquals(
      'folder_id',
      response.getSource().getOptions().getFolders().get(0).getFolderId()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getFolders().get(0).getXLimit()
    );
    System.assertEquals(
      'name',
      response.getSource().getOptions().getObjects().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getObjects().get(0).getXLimit()
    );
    System.assertEquals(
      'site_collection_path',
      response.getSource().getOptions().getSiteCollections().get(0).getSiteCollectionPath()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getSiteCollections().get(0).getXLimit()
    );
    System.assertEquals(
      'url',
      response.getSource().getOptions().getUrls().get(0).getUrl()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getLimitToStartingHosts()
    );
    System.assertEquals(
      'crawl_speed',
      response.getSource().getOptions().getUrls().get(0).getCrawlSpeed()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getAllowUntrustedCertificate()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getUrls().get(0).getMaximumHops()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getUrls().get(0).getRequestTimeout()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getOverrideRobotsTxt()
    );
    System.assertEquals(
      'blacklist',
      response.getSource().getOptions().getUrls().get(0).getBlacklist().get(0)
    );
    System.assertEquals(
      'name',
      response.getSource().getOptions().getBuckets().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getBuckets().get(0).getXLimit()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getCrawlAllBuckets()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateConfiguration() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Configuration();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String configurationId = 'configuration_id';
    String name = 'name';
    String description = 'description';
    IBMDiscoveryV1Models.Conversions conversions = new IBMDiscoveryV1Models.ConversionsBuilder()
      .build();
    String destinationField = 'destination_field';
    String sourceField = 'source_field';
    String enrichment = 'enrichment';
    IBMDiscoveryV1Models.Enrichment enrichmentsItem = new IBMDiscoveryV1Models.EnrichmentBuilder()
      .destinationField(destinationField)
      .sourceField(sourceField)
      .enrichment(enrichment)
      .build();
    List<IBMDiscoveryV1Models.Enrichment> enrichments = new List<IBMDiscoveryV1Models.Enrichment> { enrichmentsItem } ;
    IBMDiscoveryV1Models.NormalizationOperation normalizationsItem = new IBMDiscoveryV1Models.NormalizationOperationBuilder()
      .build();
    List<IBMDiscoveryV1Models.NormalizationOperation> normalizations = new List<IBMDiscoveryV1Models.NormalizationOperation> { normalizationsItem } ;
    IBMDiscoveryV1Models.Source source = new IBMDiscoveryV1Models.SourceBuilder()
      .build();

    IBMDiscoveryV1Models.UpdateConfigurationOptions options = new IBMDiscoveryV1Models.UpdateConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .name(name)
      .description(description)
      .conversions(conversions)
      .enrichments(enrichments)
      .normalizations(normalizations)
      .source(source)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Configuration response = service.updateConfiguration(options);

    System.assertEquals(
      'configuration_id',
      response.getConfigurationId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConversions().getPdf().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConversions().getPdf().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getMinSize()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getFonts().get(0).getMaxSize()
    );
    System.assertEquals(
      true,
      response.getConversions().getWord().getHeading().getFonts().get(0).getBold()
    );
    System.assertEquals(
      true,
      response.getConversions().getWord().getHeading().getFonts().get(0).getItalic()
    );
    System.assertEquals(
      'name',
      response.getConversions().getWord().getHeading().getFonts().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getConversions().getWord().getHeading().getStyles().get(0).getLevel()
    );
    System.assertEquals(
      'names',
      response.getConversions().getWord().getHeading().getStyles().get(0).getNames().get(0)
    );
    System.assertEquals(
      'exclude_tags_completely',
      response.getConversions().getHtml().getExcludeTagsCompletely().get(0)
    );
    System.assertEquals(
      'exclude_tags_keep_content',
      response.getConversions().getHtml().getExcludeTagsKeepContent().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConversions().getHtml().getKeepContent().getXpaths().get(0)
    );
    System.assertEquals(
      'xpaths',
      response.getConversions().getHtml().getExcludeContent().getXpaths().get(0)
    );
    System.assertEquals(
      'keep_tag_attributes',
      response.getConversions().getHtml().getKeepTagAttributes().get(0)
    );
    System.assertEquals(
      'exclude_tag_attributes',
      response.getConversions().getHtml().getExcludeTagAttributes().get(0)
    );
    System.assertEquals(
      true,
      response.getConversions().getSegment().getEnabled()
    );
    System.assertEquals(
      'selector_tags',
      response.getConversions().getSegment().getSelectorTags().get(0)
    );
    System.assertEquals(
      'annotated_fields',
      response.getConversions().getSegment().getAnnotatedFields().get(0)
    );
    System.assertEquals(
      'operation',
      response.getConversions().getJsonNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getConversions().getJsonNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getConversions().getJsonNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      true,
      response.getConversions().getImageTextRecognition()
    );
    System.assertEquals(
      'description',
      response.getEnrichments().get(0).getDescription()
    );
    System.assertEquals(
      'destination_field',
      response.getEnrichments().get(0).getDestinationField()
    );
    System.assertEquals(
      'source_field',
      response.getEnrichments().get(0).getSourceField()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOverwrite()
    );
    System.assertEquals(
      'enrichment',
      response.getEnrichments().get(0).getEnrichment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getIgnoreDownstreamErrors()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getSentiment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getKeywords().getXLimit()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentiment()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getEmotion()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getXLimit()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentions()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getMentionTypes()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getSentenceLocations()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getFeatures().getEntities().getModel()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSentiment().getDocument()
    );
    System.assertEquals(
      'target',
      response.getEnrichments().get(0).getOptions().getFeatures().getSentiment().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getEmotion().getDocument()
    );
    System.assertEquals(
      'target',
      response.getEnrichments().get(0).getOptions().getFeatures().getEmotion().getTargets().get(0)
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getEntities()
    );
    System.assertEquals(
      true,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getKeywords()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getSemanticRoles().getXLimit()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getFeatures().getRelations().getModel()
    );
    System.assertEquals(
      10L,
      response.getEnrichments().get(0).getOptions().getFeatures().getConcepts().getXLimit()
    );
    System.assertEquals(
      'language',
      response.getEnrichments().get(0).getOptions().getLanguage()
    );
    System.assertEquals(
      'model',
      response.getEnrichments().get(0).getOptions().getModel()
    );
    System.assertEquals(
      'operation',
      response.getNormalizations().get(0).getOperation()
    );
    System.assertEquals(
      'source_field',
      response.getNormalizations().get(0).getSourceField()
    );
    System.assertEquals(
      'destination_field',
      response.getNormalizations().get(0).getDestinationField()
    );
    System.assertEquals(
      'type',
      response.getSource().getXType()
    );
    System.assertEquals(
      'credential_id',
      response.getSource().getCredentialId()
    );
    System.assertEquals(
      true,
      response.getSource().getSchedule().getEnabled()
    );
    System.assertEquals(
      'time_zone',
      response.getSource().getSchedule().getTimeZone()
    );
    System.assertEquals(
      'frequency',
      response.getSource().getSchedule().getFrequency()
    );
    System.assertEquals(
      'owner_user_id',
      response.getSource().getOptions().getFolders().get(0).getOwnerUserId()
    );
    System.assertEquals(
      'folder_id',
      response.getSource().getOptions().getFolders().get(0).getFolderId()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getFolders().get(0).getXLimit()
    );
    System.assertEquals(
      'name',
      response.getSource().getOptions().getObjects().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getObjects().get(0).getXLimit()
    );
    System.assertEquals(
      'site_collection_path',
      response.getSource().getOptions().getSiteCollections().get(0).getSiteCollectionPath()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getSiteCollections().get(0).getXLimit()
    );
    System.assertEquals(
      'url',
      response.getSource().getOptions().getUrls().get(0).getUrl()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getLimitToStartingHosts()
    );
    System.assertEquals(
      'crawl_speed',
      response.getSource().getOptions().getUrls().get(0).getCrawlSpeed()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getAllowUntrustedCertificate()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getUrls().get(0).getMaximumHops()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getUrls().get(0).getRequestTimeout()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getUrls().get(0).getOverrideRobotsTxt()
    );
    System.assertEquals(
      'blacklist',
      response.getSource().getOptions().getUrls().get(0).getBlacklist().get(0)
    );
    System.assertEquals(
      'name',
      response.getSource().getOptions().getBuckets().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getSource().getOptions().getBuckets().get(0).getXLimit()
    );
    System.assertEquals(
      true,
      response.getSource().getOptions().getCrawlAllBuckets()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteConfiguration() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String configurationId = 'configuration_id';

    IBMDiscoveryV1Models.DeleteConfigurationOptions options = new IBMDiscoveryV1Models.DeleteConfigurationOptionsBuilder()
      .environmentId(environmentId)
      .configurationId(configurationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteConfiguration(options);

    Test.stopTest();
  }
  static testMethod void testCreateCollection() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String name = 'name';
    String description = 'description';
    String configurationId = 'configuration_id';
    String language = 'language';

    IBMDiscoveryV1Models.CreateCollectionOptions options = new IBMDiscoveryV1Models.CreateCollectionOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .description(description)
      .configurationId(configurationId)
      .language(language)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Collection response = service.createCollection(options);

    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'configuration_id',
      response.getConfigurationId()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getProcessing()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getFailed()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getTrainingStatus().getTotalExamples()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getAvailable()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getProcessing()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getMinimumQueriesAdded()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getMinimumExamplesAdded()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getSufficientLabelDiversity()
    );
    System.assertEquals(
      10L,
      response.getTrainingStatus().getNotices()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getTrainingStatus().getSuccessfullyTrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getTrainingStatus().getDataUpdated()
    );
    System.assertEquals(
      'status',
      response.getCrawlStatus().getSourceCrawl().getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCrawlStatus().getSourceCrawl().getNextCrawl()
    );
    System.assertEquals(
      true,
      response.getSmartDocumentUnderstanding().getEnabled()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalAnnotatedPages()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalPages()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalDocuments()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getCustomFields().getDefined()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getCustomFields().getMaximumAllowed()
    );

    Test.stopTest();
  }
  static testMethod void testListCollections() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1ListCollectionsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String name = 'name';

    IBMDiscoveryV1Models.ListCollectionsOptions options = new IBMDiscoveryV1Models.ListCollectionsOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.ListCollectionsResponse response = service.listCollections(options);

    System.assertEquals(
      'collection_id',
      response.getCollections().get(0).getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getCollections().get(0).getName()
    );
    System.assertEquals(
      'description',
      response.getCollections().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCollections().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCollections().get(0).getUpdated()
    );
    System.assertEquals(
      'status',
      response.getCollections().get(0).getStatus()
    );
    System.assertEquals(
      'configuration_id',
      response.getCollections().get(0).getConfigurationId()
    );
    System.assertEquals(
      'language',
      response.getCollections().get(0).getLanguage()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getDocumentCounts().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getDocumentCounts().getProcessing()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getDocumentCounts().getFailed()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getTrainingStatus().getTotalExamples()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getAvailable()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getProcessing()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getMinimumQueriesAdded()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getMinimumExamplesAdded()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getSufficientLabelDiversity()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getTrainingStatus().getNotices()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCollections().get(0).getTrainingStatus().getSuccessfullyTrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCollections().get(0).getTrainingStatus().getDataUpdated()
    );
    System.assertEquals(
      'status',
      response.getCollections().get(0).getCrawlStatus().getSourceCrawl().getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCollections().get(0).getCrawlStatus().getSourceCrawl().getNextCrawl()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getSmartDocumentUnderstanding().getEnabled()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getSmartDocumentUnderstanding().getTotalAnnotatedPages()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getSmartDocumentUnderstanding().getTotalPages()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getSmartDocumentUnderstanding().getTotalDocuments()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getSmartDocumentUnderstanding().getCustomFields().getDefined()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getSmartDocumentUnderstanding().getCustomFields().getMaximumAllowed()
    );

    Test.stopTest();
  }
  static testMethod void testGetCollection() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.GetCollectionOptions options = new IBMDiscoveryV1Models.GetCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Collection response = service.getCollection(options);

    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'configuration_id',
      response.getConfigurationId()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getProcessing()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getFailed()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getTrainingStatus().getTotalExamples()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getAvailable()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getProcessing()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getMinimumQueriesAdded()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getMinimumExamplesAdded()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getSufficientLabelDiversity()
    );
    System.assertEquals(
      10L,
      response.getTrainingStatus().getNotices()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getTrainingStatus().getSuccessfullyTrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getTrainingStatus().getDataUpdated()
    );
    System.assertEquals(
      'status',
      response.getCrawlStatus().getSourceCrawl().getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCrawlStatus().getSourceCrawl().getNextCrawl()
    );
    System.assertEquals(
      true,
      response.getSmartDocumentUnderstanding().getEnabled()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalAnnotatedPages()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalPages()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalDocuments()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getCustomFields().getDefined()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getCustomFields().getMaximumAllowed()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateCollection() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String name = 'name';
    String description = 'description';
    String configurationId = 'configuration_id';

    IBMDiscoveryV1Models.UpdateCollectionOptions options = new IBMDiscoveryV1Models.UpdateCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .name(name)
      .description(description)
      .configurationId(configurationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Collection response = service.updateCollection(options);

    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'configuration_id',
      response.getConfigurationId()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getAvailable()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getProcessing()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getFailed()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getDiskUsage().getUsedBytes()
    );
    System.assertEquals(
      10L,
      response.getTrainingStatus().getTotalExamples()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getAvailable()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getProcessing()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getMinimumQueriesAdded()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getMinimumExamplesAdded()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getSufficientLabelDiversity()
    );
    System.assertEquals(
      10L,
      response.getTrainingStatus().getNotices()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getTrainingStatus().getSuccessfullyTrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getTrainingStatus().getDataUpdated()
    );
    System.assertEquals(
      'status',
      response.getCrawlStatus().getSourceCrawl().getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCrawlStatus().getSourceCrawl().getNextCrawl()
    );
    System.assertEquals(
      true,
      response.getSmartDocumentUnderstanding().getEnabled()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalAnnotatedPages()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalPages()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getTotalDocuments()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getCustomFields().getDefined()
    );
    System.assertEquals(
      10L,
      response.getSmartDocumentUnderstanding().getCustomFields().getMaximumAllowed()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteCollection() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteCollectionOptions options = new IBMDiscoveryV1Models.DeleteCollectionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCollection(options);

    Test.stopTest();
  }
  static testMethod void testListCollectionFields() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1ListCollectionFieldsResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.ListCollectionFieldsOptions options = new IBMDiscoveryV1Models.ListCollectionFieldsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.ListCollectionFieldsResponse response = service.listCollectionFields(options);

    System.assertEquals(
      'field',
      response.getFields().get(0).getField()
    );
    System.assertEquals(
      'type',
      response.getFields().get(0).getXType()
    );

    Test.stopTest();
  }
  static testMethod void testListExpansions() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Expansions();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.ListExpansionsOptions options = new IBMDiscoveryV1Models.ListExpansionsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Expansions response = service.listExpansions(options);

    System.assertEquals(
      'input_terms',
      response.getExpansions().get(0).getInputTerms().get(0)
    );
    System.assertEquals(
      'expanded_terms',
      response.getExpansions().get(0).getExpandedTerms().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testCreateExpansions() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Expansions();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    List<String> expandedTerms = new List<String> { 'expanded_terms' } ;
    IBMDiscoveryV1Models.Expansion expansionsItem = new IBMDiscoveryV1Models.ExpansionBuilder()
      .expandedTerms(expandedTerms)
      .build();
    List<IBMDiscoveryV1Models.Expansion> expansions = new List<IBMDiscoveryV1Models.Expansion> { expansionsItem } ;

    IBMDiscoveryV1Models.CreateExpansionsOptions options = new IBMDiscoveryV1Models.CreateExpansionsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .expansions(expansions)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Expansions response = service.createExpansions(options);

    System.assertEquals(
      'input_terms',
      response.getExpansions().get(0).getInputTerms().get(0)
    );
    System.assertEquals(
      'expanded_terms',
      response.getExpansions().get(0).getExpandedTerms().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testDeleteExpansions() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteExpansionsOptions options = new IBMDiscoveryV1Models.DeleteExpansionsOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteExpansions(options);

    Test.stopTest();
  }
  static testMethod void testGetTokenizationDictionaryStatus() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TokenDictStatusResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.GetTokenizationDictionaryStatusOptions options = new IBMDiscoveryV1Models.GetTokenizationDictionaryStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TokenDictStatusResponse response = service.getTokenizationDictionaryStatus(options);

    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );

    Test.stopTest();
  }
  static testMethod void testCreateTokenizationDictionary() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TokenDictStatusResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String text = 'text';
    List<String> tokens = new List<String> { 'tokens' } ;
    String partOfSpeech = 'part_of_speech';
    IBMDiscoveryV1Models.TokenDictRule tokenizationRulesItem = new IBMDiscoveryV1Models.TokenDictRuleBuilder()
      .text(text)
      .tokens(tokens)
      .partOfSpeech(partOfSpeech)
      .build();
    List<IBMDiscoveryV1Models.TokenDictRule> tokenizationRules = new List<IBMDiscoveryV1Models.TokenDictRule> { tokenizationRulesItem } ;

    IBMDiscoveryV1Models.CreateTokenizationDictionaryOptions options = new IBMDiscoveryV1Models.CreateTokenizationDictionaryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .tokenizationRules(tokenizationRules)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TokenDictStatusResponse response = service.createTokenizationDictionary(options);

    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteTokenizationDictionary() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteTokenizationDictionaryOptions options = new IBMDiscoveryV1Models.DeleteTokenizationDictionaryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteTokenizationDictionary(options);

    Test.stopTest();
  }
  static testMethod void testGetStopwordListStatus() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TokenDictStatusResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.GetStopwordListStatusOptions options = new IBMDiscoveryV1Models.GetStopwordListStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TokenDictStatusResponse response = service.getStopwordListStatus(options);

    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );

    Test.stopTest();
  }
  static testMethod void testCreateStopwordList() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TokenDictStatusResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    IBMWatsonFile stopwordFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String stopwordFilename = 'stopword_filename';

    IBMDiscoveryV1Models.CreateStopwordListOptions options = new IBMDiscoveryV1Models.CreateStopwordListOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .stopwordFile(stopwordFile)
      .stopwordFilename(stopwordFilename)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TokenDictStatusResponse response = service.createStopwordList(options);

    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteStopwordList() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteStopwordListOptions options = new IBMDiscoveryV1Models.DeleteStopwordListOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteStopwordList(options);

    Test.stopTest();
  }
  static testMethod void testAddDocument() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1DocumentAccepted();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String filename = 'filename';
    String fileContentType = 'file_content_type';
    String metadata = 'metadata';

    IBMDiscoveryV1Models.AddDocumentOptions options = new IBMDiscoveryV1Models.AddDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .file(file)
      .filename(filename)
      .fileContentType(fileContentType)
      .metadata(metadata)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.DocumentAccepted response = service.addDocument(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'notice_id',
      response.getNotices().get(0).getNoticeId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getNotices().get(0).getCreated()
    );
    System.assertEquals(
      'document_id',
      response.getNotices().get(0).getDocumentId()
    );
    System.assertEquals(
      'query_id',
      response.getNotices().get(0).getQueryId()
    );
    System.assertEquals(
      'severity',
      response.getNotices().get(0).getSeverity()
    );
    System.assertEquals(
      'step',
      response.getNotices().get(0).getStep()
    );
    System.assertEquals(
      'description',
      response.getNotices().get(0).getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testGetDocumentStatus() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1DocumentStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String documentId = 'document_id';

    IBMDiscoveryV1Models.GetDocumentStatusOptions options = new IBMDiscoveryV1Models.GetDocumentStatusOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.DocumentStatus response = service.getDocumentStatus(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'configuration_id',
      response.getConfigurationId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'status_description',
      response.getStatusDescription()
    );
    System.assertEquals(
      'filename',
      response.getFilename()
    );
    System.assertEquals(
      'file_type',
      response.getFileType()
    );
    System.assertEquals(
      'sha1',
      response.getSha1()
    );
    System.assertEquals(
      'notice_id',
      response.getNotices().get(0).getNoticeId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getNotices().get(0).getCreated()
    );
    System.assertEquals(
      'document_id',
      response.getNotices().get(0).getDocumentId()
    );
    System.assertEquals(
      'query_id',
      response.getNotices().get(0).getQueryId()
    );
    System.assertEquals(
      'severity',
      response.getNotices().get(0).getSeverity()
    );
    System.assertEquals(
      'step',
      response.getNotices().get(0).getStep()
    );
    System.assertEquals(
      'description',
      response.getNotices().get(0).getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateDocument() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1DocumentAccepted();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String documentId = 'document_id';
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String filename = 'filename';
    String fileContentType = 'file_content_type';
    String metadata = 'metadata';

    IBMDiscoveryV1Models.UpdateDocumentOptions options = new IBMDiscoveryV1Models.UpdateDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .file(file)
      .filename(filename)
      .fileContentType(fileContentType)
      .metadata(metadata)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.DocumentAccepted response = service.updateDocument(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'notice_id',
      response.getNotices().get(0).getNoticeId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getNotices().get(0).getCreated()
    );
    System.assertEquals(
      'document_id',
      response.getNotices().get(0).getDocumentId()
    );
    System.assertEquals(
      'query_id',
      response.getNotices().get(0).getQueryId()
    );
    System.assertEquals(
      'severity',
      response.getNotices().get(0).getSeverity()
    );
    System.assertEquals(
      'step',
      response.getNotices().get(0).getStep()
    );
    System.assertEquals(
      'description',
      response.getNotices().get(0).getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteDocument() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String documentId = 'document_id';

    IBMDiscoveryV1Models.DeleteDocumentOptions options = new IBMDiscoveryV1Models.DeleteDocumentOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .documentId(documentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteDocument(options);

    Test.stopTest();
  }
  static testMethod void testQuery() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1QueryResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    Boolean passages = true;
    String aggregation = 'aggregation';
    Long count = 10L;
    String xReturn = 'x_return';
    Long offset = 10L;
    String xSort = 'x_sort';
    Boolean highlight = true;
    String passagesFields = 'passages_fields';
    Long passagesCount = 10L;
    Long passagesCharacters = 10L;
    Boolean deduplicate = true;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    String similarDocumentIds = 'similar_document_ids';
    String similarFields = 'similar_fields';
    String bias = 'bias';
    Boolean spellingSuggestions = true;
    Boolean xWatsonLoggingOptOut = true;

    IBMDiscoveryV1Models.QueryOptions options = new IBMDiscoveryV1Models.QueryOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .passages(passages)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .passagesFields(passagesFields)
      .passagesCount(passagesCount)
      .passagesCharacters(passagesCharacters)
      .deduplicate(deduplicate)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .bias(bias)
      .spellingSuggestions(spellingSuggestions)
      .xWatsonLoggingOptOut(xWatsonLoggingOptOut)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.QueryResponse response = service.query(options);

    System.assertEquals(
      10L,
      response.getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getResults().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getResults().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getResults().get(0).getTitle()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getXType()
    );
    System.assertEquals(
      'key',
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getXType()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      'document_id',
      response.getPassages().get(0).getDocumentId()
    );
    System.assertEquals(
      0.5,
      response.getPassages().get(0).getPassageScore()
    );
    System.assertEquals(
      'passage_text',
      response.getPassages().get(0).getPassageText()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getStartOffset()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getEndOffset()
    );
    System.assertEquals(
      'field',
      response.getPassages().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getDuplicatesRemoved()
    );
    System.assertEquals(
      'session_token',
      response.getSessionToken()
    );
    System.assertEquals(
      'document_retrieval_strategy',
      response.getRetrievalDetails().getDocumentRetrievalStrategy()
    );
    System.assertEquals(
      'suggested_query',
      response.getSuggestedQuery()
    );

    Test.stopTest();
  }
  static testMethod void testQueryNotices() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1QueryNoticesResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    Boolean passages = true;
    String aggregation = 'aggregation';
    Long count = 10L;
    List<String> xReturn = new List<String> { 'x_return' } ;
    Long offset = 10L;
    List<String> xSort = new List<String> { 'x_sort' } ;
    Boolean highlight = true;
    List<String> passagesFields = new List<String> { 'passages_fields' } ;
    Long passagesCount = 10L;
    Long passagesCharacters = 10L;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    List<String> similarDocumentIds = new List<String> { 'similar_document_ids' } ;
    List<String> similarFields = new List<String> { 'similar_fields' } ;

    IBMDiscoveryV1Models.QueryNoticesOptions options = new IBMDiscoveryV1Models.QueryNoticesOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .passages(passages)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .passagesFields(passagesFields)
      .passagesCount(passagesCount)
      .passagesCharacters(passagesCharacters)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.QueryNoticesResponse response = service.queryNotices(options);

    System.assertEquals(
      10L,
      response.getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getResults().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getResults().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getResults().get(0).getTitle()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getCode()
    );
    System.assertEquals(
      'filename',
      response.getResults().get(0).getFilename()
    );
    System.assertEquals(
      'file_type',
      response.getResults().get(0).getFileType()
    );
    System.assertEquals(
      'sha1',
      response.getResults().get(0).getSha1()
    );
    System.assertEquals(
      'notice_id',
      response.getResults().get(0).getNotices().get(0).getNoticeId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getResults().get(0).getNotices().get(0).getCreated()
    );
    System.assertEquals(
      'document_id',
      response.getResults().get(0).getNotices().get(0).getDocumentId()
    );
    System.assertEquals(
      'query_id',
      response.getResults().get(0).getNotices().get(0).getQueryId()
    );
    System.assertEquals(
      'severity',
      response.getResults().get(0).getNotices().get(0).getSeverity()
    );
    System.assertEquals(
      'step',
      response.getResults().get(0).getNotices().get(0).getStep()
    );
    System.assertEquals(
      'description',
      response.getResults().get(0).getNotices().get(0).getDescription()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getXType()
    );
    System.assertEquals(
      'key',
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getXType()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      'document_id',
      response.getPassages().get(0).getDocumentId()
    );
    System.assertEquals(
      0.5,
      response.getPassages().get(0).getPassageScore()
    );
    System.assertEquals(
      'passage_text',
      response.getPassages().get(0).getPassageText()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getStartOffset()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getEndOffset()
    );
    System.assertEquals(
      'field',
      response.getPassages().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getDuplicatesRemoved()
    );

    Test.stopTest();
  }
  static testMethod void testFederatedQuery() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1QueryResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    Boolean passages = true;
    String aggregation = 'aggregation';
    Long count = 10L;
    String xReturn = 'x_return';
    Long offset = 10L;
    String xSort = 'x_sort';
    Boolean highlight = true;
    String passagesFields = 'passages_fields';
    Long passagesCount = 10L;
    Long passagesCharacters = 10L;
    Boolean deduplicate = true;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    String similarDocumentIds = 'similar_document_ids';
    String similarFields = 'similar_fields';
    String bias = 'bias';
    String collectionIds = 'collection_ids';
    Boolean xWatsonLoggingOptOut = true;

    IBMDiscoveryV1Models.FederatedQueryOptions options = new IBMDiscoveryV1Models.FederatedQueryOptionsBuilder()
      .environmentId(environmentId)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .passages(passages)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .passagesFields(passagesFields)
      .passagesCount(passagesCount)
      .passagesCharacters(passagesCharacters)
      .deduplicate(deduplicate)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .bias(bias)
      .collectionIds(collectionIds)
      .xWatsonLoggingOptOut(xWatsonLoggingOptOut)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.QueryResponse response = service.federatedQuery(options);

    System.assertEquals(
      10L,
      response.getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getResults().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getResults().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getResults().get(0).getTitle()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getXType()
    );
    System.assertEquals(
      'key',
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getXType()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      'document_id',
      response.getPassages().get(0).getDocumentId()
    );
    System.assertEquals(
      0.5,
      response.getPassages().get(0).getPassageScore()
    );
    System.assertEquals(
      'passage_text',
      response.getPassages().get(0).getPassageText()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getStartOffset()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getEndOffset()
    );
    System.assertEquals(
      'field',
      response.getPassages().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getDuplicatesRemoved()
    );
    System.assertEquals(
      'session_token',
      response.getSessionToken()
    );
    System.assertEquals(
      'document_retrieval_strategy',
      response.getRetrievalDetails().getDocumentRetrievalStrategy()
    );
    System.assertEquals(
      'suggested_query',
      response.getSuggestedQuery()
    );

    Test.stopTest();
  }
  static testMethod void testFederatedQueryNotices() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1QueryNoticesResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    List<String> collectionIds = new List<String> { 'collection_ids' } ;
    String filter = 'filter';
    String query = 'query';
    String naturalLanguageQuery = 'natural_language_query';
    String aggregation = 'aggregation';
    Long count = 10L;
    List<String> xReturn = new List<String> { 'x_return' } ;
    Long offset = 10L;
    List<String> xSort = new List<String> { 'x_sort' } ;
    Boolean highlight = true;
    String deduplicateField = 'deduplicate_field';
    Boolean similar = true;
    List<String> similarDocumentIds = new List<String> { 'similar_document_ids' } ;
    List<String> similarFields = new List<String> { 'similar_fields' } ;

    IBMDiscoveryV1Models.FederatedQueryNoticesOptions options = new IBMDiscoveryV1Models.FederatedQueryNoticesOptionsBuilder()
      .environmentId(environmentId)
      .collectionIds(collectionIds)
      .filter(filter)
      .query(query)
      .naturalLanguageQuery(naturalLanguageQuery)
      .aggregation(aggregation)
      .count(count)
      .xReturn(xReturn)
      .offset(offset)
      .xSort(xSort)
      .highlight(highlight)
      .deduplicateField(deduplicateField)
      .similar(similar)
      .similarDocumentIds(similarDocumentIds)
      .similarFields(similarFields)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.QueryNoticesResponse response = service.federatedQueryNotices(options);

    System.assertEquals(
      10L,
      response.getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getResults().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getResults().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getResults().get(0).getTitle()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getCode()
    );
    System.assertEquals(
      'filename',
      response.getResults().get(0).getFilename()
    );
    System.assertEquals(
      'file_type',
      response.getResults().get(0).getFileType()
    );
    System.assertEquals(
      'sha1',
      response.getResults().get(0).getSha1()
    );
    System.assertEquals(
      'notice_id',
      response.getResults().get(0).getNotices().get(0).getNoticeId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getResults().get(0).getNotices().get(0).getCreated()
    );
    System.assertEquals(
      'document_id',
      response.getResults().get(0).getNotices().get(0).getDocumentId()
    );
    System.assertEquals(
      'query_id',
      response.getResults().get(0).getNotices().get(0).getQueryId()
    );
    System.assertEquals(
      'severity',
      response.getResults().get(0).getNotices().get(0).getSeverity()
    );
    System.assertEquals(
      'step',
      response.getResults().get(0).getNotices().get(0).getStep()
    );
    System.assertEquals(
      'description',
      response.getResults().get(0).getNotices().get(0).getDescription()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getXType()
    );
    System.assertEquals(
      'key',
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      'type',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getXType()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getResults().get(0).getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getMatchingResults()
    );
    System.assertEquals(
      'field',
      response.getAggregations().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHistogramInterval()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getValue()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getCount()
    );
    System.assertEquals(
      'match',
      response.getAggregations().get(0).getMatch()
    );
    System.assertEquals(
      'path',
      response.getAggregations().get(0).getPath()
    );
    System.assertEquals(
      'timeslice_interval',
      response.getAggregations().get(0).getTimesliceInterval()
    );
    System.assertEquals(
      true,
      response.getAggregations().get(0).getAnomaly()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getSize()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getHits().getMatchingResults()
    );
    System.assertEquals(
      'id',
      response.getAggregations().get(0).getHits().getHits().get(0).getId()
    );
    System.assertEquals(
      'collection_id',
      response.getAggregations().get(0).getHits().getHits().get(0).getCollectionId()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getHits().getHits().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      'title',
      response.getAggregations().get(0).getHits().getHits().get(0).getTitle()
    );
    System.assertEquals(
      'document_id',
      response.getPassages().get(0).getDocumentId()
    );
    System.assertEquals(
      0.5,
      response.getPassages().get(0).getPassageScore()
    );
    System.assertEquals(
      'passage_text',
      response.getPassages().get(0).getPassageText()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getStartOffset()
    );
    System.assertEquals(
      10L,
      response.getPassages().get(0).getEndOffset()
    );
    System.assertEquals(
      'field',
      response.getPassages().get(0).getField()
    );
    System.assertEquals(
      10L,
      response.getDuplicatesRemoved()
    );

    Test.stopTest();
  }
  static testMethod void testGetAutocompletion() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Completions();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String prefix = 'prefix';
    String field = 'field';
    Long count = 10L;

    IBMDiscoveryV1Models.GetAutocompletionOptions options = new IBMDiscoveryV1Models.GetAutocompletionOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .prefix(prefix)
      .field(field)
      .count(count)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Completions response = service.getAutocompletion(options);

    System.assertEquals(
      'completions',
      response.getCompletions().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testListTrainingData() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TrainingDataSet();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.ListTrainingDataOptions options = new IBMDiscoveryV1Models.ListTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TrainingDataSet response = service.listTrainingData(options);

    System.assertEquals(
      'environment_id',
      response.getEnvironmentId()
    );
    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'query_id',
      response.getQueries().get(0).getQueryId()
    );
    System.assertEquals(
      'natural_language_query',
      response.getQueries().get(0).getNaturalLanguageQuery()
    );
    System.assertEquals(
      'filter',
      response.getQueries().get(0).getFilter()
    );
    System.assertEquals(
      'document_id',
      response.getQueries().get(0).getExamples().get(0).getDocumentId()
    );
    System.assertEquals(
      'cross_reference',
      response.getQueries().get(0).getExamples().get(0).getCrossReference()
    );
    System.assertEquals(
      10L,
      response.getQueries().get(0).getExamples().get(0).getRelevance()
    );

    Test.stopTest();
  }
  static testMethod void testAddTrainingData() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TrainingQuery();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String naturalLanguageQuery = 'natural_language_query';
    String filter = 'filter';
    IBMDiscoveryV1Models.TrainingExample examplesItem = new IBMDiscoveryV1Models.TrainingExampleBuilder()
      .build();
    List<IBMDiscoveryV1Models.TrainingExample> examples = new List<IBMDiscoveryV1Models.TrainingExample> { examplesItem } ;

    IBMDiscoveryV1Models.AddTrainingDataOptions options = new IBMDiscoveryV1Models.AddTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .naturalLanguageQuery(naturalLanguageQuery)
      .filter(filter)
      .examples(examples)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TrainingQuery response = service.addTrainingData(options);

    System.assertEquals(
      'query_id',
      response.getQueryId()
    );
    System.assertEquals(
      'natural_language_query',
      response.getNaturalLanguageQuery()
    );
    System.assertEquals(
      'filter',
      response.getFilter()
    );
    System.assertEquals(
      'document_id',
      response.getExamples().get(0).getDocumentId()
    );
    System.assertEquals(
      'cross_reference',
      response.getExamples().get(0).getCrossReference()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getRelevance()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteAllTrainingData() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';

    IBMDiscoveryV1Models.DeleteAllTrainingDataOptions options = new IBMDiscoveryV1Models.DeleteAllTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteAllTrainingData(options);

    Test.stopTest();
  }
  static testMethod void testGetTrainingData() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TrainingQuery();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';

    IBMDiscoveryV1Models.GetTrainingDataOptions options = new IBMDiscoveryV1Models.GetTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TrainingQuery response = service.getTrainingData(options);

    System.assertEquals(
      'query_id',
      response.getQueryId()
    );
    System.assertEquals(
      'natural_language_query',
      response.getNaturalLanguageQuery()
    );
    System.assertEquals(
      'filter',
      response.getFilter()
    );
    System.assertEquals(
      'document_id',
      response.getExamples().get(0).getDocumentId()
    );
    System.assertEquals(
      'cross_reference',
      response.getExamples().get(0).getCrossReference()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getRelevance()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteTrainingData() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';

    IBMDiscoveryV1Models.DeleteTrainingDataOptions options = new IBMDiscoveryV1Models.DeleteTrainingDataOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteTrainingData(options);

    Test.stopTest();
  }
  static testMethod void testListTrainingExamples() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TrainingExampleList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';

    IBMDiscoveryV1Models.ListTrainingExamplesOptions options = new IBMDiscoveryV1Models.ListTrainingExamplesOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TrainingExampleList response = service.listTrainingExamples(options);

    System.assertEquals(
      'document_id',
      response.getExamples().get(0).getDocumentId()
    );
    System.assertEquals(
      'cross_reference',
      response.getExamples().get(0).getCrossReference()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getRelevance()
    );

    Test.stopTest();
  }
  static testMethod void testCreateTrainingExample() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TrainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String documentId = 'document_id';
    String crossReference = 'cross_reference';
    Long relevance = 10L;

    IBMDiscoveryV1Models.CreateTrainingExampleOptions options = new IBMDiscoveryV1Models.CreateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .documentId(documentId)
      .crossReference(crossReference)
      .relevance(relevance)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TrainingExample response = service.createTrainingExample(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'cross_reference',
      response.getCrossReference()
    );
    System.assertEquals(
      10L,
      response.getRelevance()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteTrainingExample() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String exampleId = 'example_id';

    IBMDiscoveryV1Models.DeleteTrainingExampleOptions options = new IBMDiscoveryV1Models.DeleteTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .exampleId(exampleId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteTrainingExample(options);

    Test.stopTest();
  }
  static testMethod void testUpdateTrainingExample() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TrainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String exampleId = 'example_id';
    String crossReference = 'cross_reference';
    Long relevance = 10L;

    IBMDiscoveryV1Models.UpdateTrainingExampleOptions options = new IBMDiscoveryV1Models.UpdateTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .exampleId(exampleId)
      .crossReference(crossReference)
      .relevance(relevance)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TrainingExample response = service.updateTrainingExample(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'cross_reference',
      response.getCrossReference()
    );
    System.assertEquals(
      10L,
      response.getRelevance()
    );

    Test.stopTest();
  }
  static testMethod void testGetTrainingExample() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1TrainingExample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String collectionId = 'collection_id';
    String queryId = 'query_id';
    String exampleId = 'example_id';

    IBMDiscoveryV1Models.GetTrainingExampleOptions options = new IBMDiscoveryV1Models.GetTrainingExampleOptionsBuilder()
      .environmentId(environmentId)
      .collectionId(collectionId)
      .queryId(queryId)
      .exampleId(exampleId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.TrainingExample response = service.getTrainingExample(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'cross_reference',
      response.getCrossReference()
    );
    System.assertEquals(
      10L,
      response.getRelevance()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteUserData() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customerId = 'customer_id';

    IBMDiscoveryV1Models.DeleteUserDataOptions options = new IBMDiscoveryV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(options);

    Test.stopTest();
  }
  static testMethod void testCreateEvent() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1CreateEventResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String xType = 'x_type';
    String environmentId = 'environment_id';
    String sessionToken = 'session_token';
    String collectionId = 'collection_id';
    String documentId = 'document_id';
    IBMDiscoveryV1Models.EventData data = new IBMDiscoveryV1Models.EventDataBuilder()
      .environmentId(environmentId)
      .sessionToken(sessionToken)
      .collectionId(collectionId)
      .documentId(documentId)
      .build();

    IBMDiscoveryV1Models.CreateEventOptions options = new IBMDiscoveryV1Models.CreateEventOptionsBuilder()
      .xType(xType)
      .data(data)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.CreateEventResponse response = service.createEvent(options);

    System.assertEquals(
      'type',
      response.getXType()
    );
    System.assertEquals(
      'environment_id',
      response.getData().getEnvironmentId()
    );
    System.assertEquals(
      'session_token',
      response.getData().getSessionToken()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getData().getClientTimestamp()
    );
    System.assertEquals(
      10L,
      response.getData().getDisplayRank()
    );
    System.assertEquals(
      'collection_id',
      response.getData().getCollectionId()
    );
    System.assertEquals(
      'document_id',
      response.getData().getDocumentId()
    );
    System.assertEquals(
      'query_id',
      response.getData().getQueryId()
    );

    Test.stopTest();
  }
  static testMethod void testQueryLog() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1LogQueryResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String filter = 'filter';
    String query = 'query';
    Long count = 10L;
    Long offset = 10L;
    List<String> xSort = new List<String> { 'x_sort' } ;

    IBMDiscoveryV1Models.QueryLogOptions options = new IBMDiscoveryV1Models.QueryLogOptionsBuilder()
      .filter(filter)
      .query(query)
      .count(count)
      .offset(offset)
      .xSort(xSort)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.LogQueryResponse response = service.queryLog(options);

    System.assertEquals(
      10L,
      response.getMatchingResults()
    );
    System.assertEquals(
      'environment_id',
      response.getResults().get(0).getEnvironmentId()
    );
    System.assertEquals(
      'customer_id',
      response.getResults().get(0).getCustomerId()
    );
    System.assertEquals(
      'document_type',
      response.getResults().get(0).getDocumentType()
    );
    System.assertEquals(
      'natural_language_query',
      response.getResults().get(0).getNaturalLanguageQuery()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getDocumentResults().getResults().get(0).getPosition()
    );
    System.assertEquals(
      'document_id',
      response.getResults().get(0).getDocumentResults().getResults().get(0).getDocumentId()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getDocumentResults().getResults().get(0).getScore()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getDocumentResults().getResults().get(0).getConfidence()
    );
    System.assertEquals(
      'collection_id',
      response.getResults().get(0).getDocumentResults().getResults().get(0).getCollectionId()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getDocumentResults().getCount()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getResults().get(0).getCreatedTimestamp()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getResults().get(0).getClientTimestamp()
    );
    System.assertEquals(
      'query_id',
      response.getResults().get(0).getQueryId()
    );
    System.assertEquals(
      'session_token',
      response.getResults().get(0).getSessionToken()
    );
    System.assertEquals(
      'collection_id',
      response.getResults().get(0).getCollectionId()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getDisplayRank()
    );
    System.assertEquals(
      'document_id',
      response.getResults().get(0).getDocumentId()
    );
    System.assertEquals(
      'event_type',
      response.getResults().get(0).getEventType()
    );
    System.assertEquals(
      'result_type',
      response.getResults().get(0).getResultType()
    );

    Test.stopTest();
  }
  static testMethod void testGetMetricsQuery() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1MetricResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsQueryOptions options = new IBMDiscoveryV1Models.GetMetricsQueryOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsQuery(options);

    System.assertEquals(
      'interval',
      response.getAggregations().get(0).getInterval()
    );
    System.assertEquals(
      'event_type',
      response.getAggregations().get(0).getEventType()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getAggregations().get(0).getResults().get(0).getKeyAsString()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getEventRate()
    );

    Test.stopTest();
  }
  static testMethod void testGetMetricsQueryEvent() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1MetricResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsQueryEventOptions options = new IBMDiscoveryV1Models.GetMetricsQueryEventOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsQueryEvent(options);

    System.assertEquals(
      'interval',
      response.getAggregations().get(0).getInterval()
    );
    System.assertEquals(
      'event_type',
      response.getAggregations().get(0).getEventType()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getAggregations().get(0).getResults().get(0).getKeyAsString()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getEventRate()
    );

    Test.stopTest();
  }
  static testMethod void testGetMetricsQueryNoResults() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1MetricResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsQueryNoResultsOptions options = new IBMDiscoveryV1Models.GetMetricsQueryNoResultsOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsQueryNoResults(options);

    System.assertEquals(
      'interval',
      response.getAggregations().get(0).getInterval()
    );
    System.assertEquals(
      'event_type',
      response.getAggregations().get(0).getEventType()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getAggregations().get(0).getResults().get(0).getKeyAsString()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getEventRate()
    );

    Test.stopTest();
  }
  static testMethod void testGetMetricsEventRate() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1MetricResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    Datetime startTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime endTime = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String resultType = 'result_type';

    IBMDiscoveryV1Models.GetMetricsEventRateOptions options = new IBMDiscoveryV1Models.GetMetricsEventRateOptionsBuilder()
      .startTime(startTime)
      .endTime(endTime)
      .resultType(resultType)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.MetricResponse response = service.getMetricsEventRate(options);

    System.assertEquals(
      'interval',
      response.getAggregations().get(0).getInterval()
    );
    System.assertEquals(
      'event_type',
      response.getAggregations().get(0).getEventType()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getAggregations().get(0).getResults().get(0).getKeyAsString()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getEventRate()
    );

    Test.stopTest();
  }
  static testMethod void testGetMetricsQueryTokenEvent() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1MetricTokenResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    Long count = 10L;

    IBMDiscoveryV1Models.GetMetricsQueryTokenEventOptions options = new IBMDiscoveryV1Models.GetMetricsQueryTokenEventOptionsBuilder()
      .count(count)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.MetricTokenResponse response = service.getMetricsQueryTokenEvent(options);

    System.assertEquals(
      'event_type',
      response.getAggregations().get(0).getEventType()
    );
    System.assertEquals(
      'key',
      response.getAggregations().get(0).getResults().get(0).getKey()
    );
    System.assertEquals(
      10L,
      response.getAggregations().get(0).getResults().get(0).getMatchingResults()
    );
    System.assertEquals(
      0.5,
      response.getAggregations().get(0).getResults().get(0).getEventRate()
    );

    Test.stopTest();
  }
  static testMethod void testListCredentials() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1CredentialsList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.ListCredentialsOptions options = new IBMDiscoveryV1Models.ListCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.CredentialsList response = service.listCredentials(options);

    System.assertEquals(
      'credential_id',
      response.getCredentials().get(0).getCredentialId()
    );
    System.assertEquals(
      'source_type',
      response.getCredentials().get(0).getSourceType()
    );
    System.assertEquals(
      'credential_type',
      response.getCredentials().get(0).getCredentialDetails().getCredentialType()
    );
    System.assertEquals(
      'client_id',
      response.getCredentials().get(0).getCredentialDetails().getClientId()
    );
    System.assertEquals(
      'enterprise_id',
      response.getCredentials().get(0).getCredentialDetails().getEnterpriseId()
    );
    System.assertEquals(
      'url',
      response.getCredentials().get(0).getCredentialDetails().getUrl()
    );
    System.assertEquals(
      'username',
      response.getCredentials().get(0).getCredentialDetails().getUsername()
    );
    System.assertEquals(
      'organization_url',
      response.getCredentials().get(0).getCredentialDetails().getOrganizationUrl()
    );
    System.assertEquals(
      'site_collection.path',
      response.getCredentials().get(0).getCredentialDetails().getSiteCollectionPath()
    );
    System.assertEquals(
      'client_secret',
      response.getCredentials().get(0).getCredentialDetails().getClientSecret()
    );
    System.assertEquals(
      'public_key_id',
      response.getCredentials().get(0).getCredentialDetails().getPublicKeyId()
    );
    System.assertEquals(
      'private_key',
      response.getCredentials().get(0).getCredentialDetails().getPrivateKey()
    );
    System.assertEquals(
      'passphrase',
      response.getCredentials().get(0).getCredentialDetails().getPassphrase()
    );
    System.assertEquals(
      'password',
      response.getCredentials().get(0).getCredentialDetails().getPassword()
    );
    System.assertEquals(
      'gateway_id',
      response.getCredentials().get(0).getCredentialDetails().getGatewayId()
    );
    System.assertEquals(
      'source_version',
      response.getCredentials().get(0).getCredentialDetails().getSourceVersion()
    );
    System.assertEquals(
      'web_application_url',
      response.getCredentials().get(0).getCredentialDetails().getWebApplicationUrl()
    );
    System.assertEquals(
      'domain',
      response.getCredentials().get(0).getCredentialDetails().getDomain()
    );
    System.assertEquals(
      'endpoint',
      response.getCredentials().get(0).getCredentialDetails().getEndpoint()
    );
    System.assertEquals(
      'access_key_id',
      response.getCredentials().get(0).getCredentialDetails().getAccessKeyId()
    );
    System.assertEquals(
      'secret_access_key',
      response.getCredentials().get(0).getCredentialDetails().getSecretAccessKey()
    );
    System.assertEquals(
      'status',
      response.getCredentials().get(0).getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testCreateCredentials() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Credentials();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String sourceType = 'source_type';
    IBMDiscoveryV1Models.CredentialDetails credentialDetails = new IBMDiscoveryV1Models.CredentialDetailsBuilder()
      .build();
    String status = 'status';

    IBMDiscoveryV1Models.CreateCredentialsOptions options = new IBMDiscoveryV1Models.CreateCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .sourceType(sourceType)
      .credentialDetails(credentialDetails)
      .status(status)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Credentials response = service.createCredentials(options);

    System.assertEquals(
      'credential_id',
      response.getCredentialId()
    );
    System.assertEquals(
      'source_type',
      response.getSourceType()
    );
    System.assertEquals(
      'credential_type',
      response.getCredentialDetails().getCredentialType()
    );
    System.assertEquals(
      'client_id',
      response.getCredentialDetails().getClientId()
    );
    System.assertEquals(
      'enterprise_id',
      response.getCredentialDetails().getEnterpriseId()
    );
    System.assertEquals(
      'url',
      response.getCredentialDetails().getUrl()
    );
    System.assertEquals(
      'username',
      response.getCredentialDetails().getUsername()
    );
    System.assertEquals(
      'organization_url',
      response.getCredentialDetails().getOrganizationUrl()
    );
    System.assertEquals(
      'site_collection.path',
      response.getCredentialDetails().getSiteCollectionPath()
    );
    System.assertEquals(
      'client_secret',
      response.getCredentialDetails().getClientSecret()
    );
    System.assertEquals(
      'public_key_id',
      response.getCredentialDetails().getPublicKeyId()
    );
    System.assertEquals(
      'private_key',
      response.getCredentialDetails().getPrivateKey()
    );
    System.assertEquals(
      'passphrase',
      response.getCredentialDetails().getPassphrase()
    );
    System.assertEquals(
      'password',
      response.getCredentialDetails().getPassword()
    );
    System.assertEquals(
      'gateway_id',
      response.getCredentialDetails().getGatewayId()
    );
    System.assertEquals(
      'source_version',
      response.getCredentialDetails().getSourceVersion()
    );
    System.assertEquals(
      'web_application_url',
      response.getCredentialDetails().getWebApplicationUrl()
    );
    System.assertEquals(
      'domain',
      response.getCredentialDetails().getDomain()
    );
    System.assertEquals(
      'endpoint',
      response.getCredentialDetails().getEndpoint()
    );
    System.assertEquals(
      'access_key_id',
      response.getCredentialDetails().getAccessKeyId()
    );
    System.assertEquals(
      'secret_access_key',
      response.getCredentialDetails().getSecretAccessKey()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testGetCredentials() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Credentials();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String credentialId = 'credential_id';

    IBMDiscoveryV1Models.GetCredentialsOptions options = new IBMDiscoveryV1Models.GetCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Credentials response = service.getCredentials(options);

    System.assertEquals(
      'credential_id',
      response.getCredentialId()
    );
    System.assertEquals(
      'source_type',
      response.getSourceType()
    );
    System.assertEquals(
      'credential_type',
      response.getCredentialDetails().getCredentialType()
    );
    System.assertEquals(
      'client_id',
      response.getCredentialDetails().getClientId()
    );
    System.assertEquals(
      'enterprise_id',
      response.getCredentialDetails().getEnterpriseId()
    );
    System.assertEquals(
      'url',
      response.getCredentialDetails().getUrl()
    );
    System.assertEquals(
      'username',
      response.getCredentialDetails().getUsername()
    );
    System.assertEquals(
      'organization_url',
      response.getCredentialDetails().getOrganizationUrl()
    );
    System.assertEquals(
      'site_collection.path',
      response.getCredentialDetails().getSiteCollectionPath()
    );
    System.assertEquals(
      'client_secret',
      response.getCredentialDetails().getClientSecret()
    );
    System.assertEquals(
      'public_key_id',
      response.getCredentialDetails().getPublicKeyId()
    );
    System.assertEquals(
      'private_key',
      response.getCredentialDetails().getPrivateKey()
    );
    System.assertEquals(
      'passphrase',
      response.getCredentialDetails().getPassphrase()
    );
    System.assertEquals(
      'password',
      response.getCredentialDetails().getPassword()
    );
    System.assertEquals(
      'gateway_id',
      response.getCredentialDetails().getGatewayId()
    );
    System.assertEquals(
      'source_version',
      response.getCredentialDetails().getSourceVersion()
    );
    System.assertEquals(
      'web_application_url',
      response.getCredentialDetails().getWebApplicationUrl()
    );
    System.assertEquals(
      'domain',
      response.getCredentialDetails().getDomain()
    );
    System.assertEquals(
      'endpoint',
      response.getCredentialDetails().getEndpoint()
    );
    System.assertEquals(
      'access_key_id',
      response.getCredentialDetails().getAccessKeyId()
    );
    System.assertEquals(
      'secret_access_key',
      response.getCredentialDetails().getSecretAccessKey()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateCredentials() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Credentials();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String credentialId = 'credential_id';
    String sourceType = 'source_type';
    IBMDiscoveryV1Models.CredentialDetails credentialDetails = new IBMDiscoveryV1Models.CredentialDetailsBuilder()
      .build();
    String status = 'status';

    IBMDiscoveryV1Models.UpdateCredentialsOptions options = new IBMDiscoveryV1Models.UpdateCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .sourceType(sourceType)
      .credentialDetails(credentialDetails)
      .status(status)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Credentials response = service.updateCredentials(options);

    System.assertEquals(
      'credential_id',
      response.getCredentialId()
    );
    System.assertEquals(
      'source_type',
      response.getSourceType()
    );
    System.assertEquals(
      'credential_type',
      response.getCredentialDetails().getCredentialType()
    );
    System.assertEquals(
      'client_id',
      response.getCredentialDetails().getClientId()
    );
    System.assertEquals(
      'enterprise_id',
      response.getCredentialDetails().getEnterpriseId()
    );
    System.assertEquals(
      'url',
      response.getCredentialDetails().getUrl()
    );
    System.assertEquals(
      'username',
      response.getCredentialDetails().getUsername()
    );
    System.assertEquals(
      'organization_url',
      response.getCredentialDetails().getOrganizationUrl()
    );
    System.assertEquals(
      'site_collection.path',
      response.getCredentialDetails().getSiteCollectionPath()
    );
    System.assertEquals(
      'client_secret',
      response.getCredentialDetails().getClientSecret()
    );
    System.assertEquals(
      'public_key_id',
      response.getCredentialDetails().getPublicKeyId()
    );
    System.assertEquals(
      'private_key',
      response.getCredentialDetails().getPrivateKey()
    );
    System.assertEquals(
      'passphrase',
      response.getCredentialDetails().getPassphrase()
    );
    System.assertEquals(
      'password',
      response.getCredentialDetails().getPassword()
    );
    System.assertEquals(
      'gateway_id',
      response.getCredentialDetails().getGatewayId()
    );
    System.assertEquals(
      'source_version',
      response.getCredentialDetails().getSourceVersion()
    );
    System.assertEquals(
      'web_application_url',
      response.getCredentialDetails().getWebApplicationUrl()
    );
    System.assertEquals(
      'domain',
      response.getCredentialDetails().getDomain()
    );
    System.assertEquals(
      'endpoint',
      response.getCredentialDetails().getEndpoint()
    );
    System.assertEquals(
      'access_key_id',
      response.getCredentialDetails().getAccessKeyId()
    );
    System.assertEquals(
      'secret_access_key',
      response.getCredentialDetails().getSecretAccessKey()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteCredentials() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String credentialId = 'credential_id';

    IBMDiscoveryV1Models.DeleteCredentialsOptions options = new IBMDiscoveryV1Models.DeleteCredentialsOptionsBuilder()
      .environmentId(environmentId)
      .credentialId(credentialId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCredentials(options);

    Test.stopTest();
  }
  static testMethod void testListGateways() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1GatewayList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';

    IBMDiscoveryV1Models.ListGatewaysOptions options = new IBMDiscoveryV1Models.ListGatewaysOptionsBuilder()
      .environmentId(environmentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.GatewayList response = service.listGateways(options);

    System.assertEquals(
      'gateway_id',
      response.getGateways().get(0).getGatewayId()
    );
    System.assertEquals(
      'name',
      response.getGateways().get(0).getName()
    );
    System.assertEquals(
      'status',
      response.getGateways().get(0).getStatus()
    );
    System.assertEquals(
      'token',
      response.getGateways().get(0).getToken()
    );
    System.assertEquals(
      'token_id',
      response.getGateways().get(0).getTokenId()
    );

    Test.stopTest();
  }
  static testMethod void testCreateGateway() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Gateway();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String name = 'name';

    IBMDiscoveryV1Models.CreateGatewayOptions options = new IBMDiscoveryV1Models.CreateGatewayOptionsBuilder()
      .environmentId(environmentId)
      .name(name)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Gateway response = service.createGateway(options);

    System.assertEquals(
      'gateway_id',
      response.getGatewayId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'token',
      response.getToken()
    );
    System.assertEquals(
      'token_id',
      response.getTokenId()
    );

    Test.stopTest();
  }
  static testMethod void testGetGateway() {
    String mockResponseBody = IBMWatsonMockResponses.discoveryV1Gateway();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String gatewayId = 'gateway_id';

    IBMDiscoveryV1Models.GetGatewayOptions options = new IBMDiscoveryV1Models.GetGatewayOptionsBuilder()
      .environmentId(environmentId)
      .gatewayId(gatewayId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMDiscoveryV1Models.Gateway response = service.getGateway(options);

    System.assertEquals(
      'gateway_id',
      response.getGatewayId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'token',
      response.getToken()
    );
    System.assertEquals(
      'token_id',
      response.getTokenId()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteGateway() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String environmentId = 'environment_id';
    String gatewayId = 'gateway_id';

    IBMDiscoveryV1Models.DeleteGatewayOptions options = new IBMDiscoveryV1Models.DeleteGatewayOptionsBuilder()
      .environmentId(environmentId)
      .gatewayId(gatewayId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteGateway(options);

    Test.stopTest();
  }
}
