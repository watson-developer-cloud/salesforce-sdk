@isTest
private class IBMLanguageTranslatorV3Test {
  private static IBMLanguageTranslatorV3 service;

  static {
    service = new IBMLanguageTranslatorV3('2018-05-01', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testCreateModelOptionsModel() {
    Test.startTest();
    String baseModelId = 'base_model_id';
    IBMWatsonFile forcedGlossary = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile parallelCorpus = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String name = 'name';

    IBMLanguageTranslatorV3Models.CreateModelOptions testRequestModel = new IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder()
      .baseModelId(baseModelId)
      .forcedGlossary(forcedGlossary)
      .parallelCorpus(parallelCorpus)
      .name(name)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(baseModelId, testRequestModel.baseModelId());
    System.assertEquals(forcedGlossary, testRequestModel.forcedGlossary());
    System.assertEquals(parallelCorpus, testRequestModel.parallelCorpus());
    System.assertEquals(name, testRequestModel.name());
    Test.stopTest();
  }
  static testMethod void testDeleteDocumentOptionsModel() {
    Test.startTest();
    String documentId = 'document_id';

    IBMLanguageTranslatorV3Models.DeleteDocumentOptions testRequestModel = new IBMLanguageTranslatorV3Models.DeleteDocumentOptionsBuilder()
      .documentId(documentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(documentId, testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testDeleteModelOptionsModel() {
    Test.startTest();
    String modelId = 'model_id';

    IBMLanguageTranslatorV3Models.DeleteModelOptions testRequestModel = new IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder()
      .modelId(modelId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(modelId, testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testDocumentListModel() {
    Test.startTest();
    String documentId = 'document_id';
    String filename = 'filename';
    String status = 'status';
    String modelId = 'model_id';
    String source = 'source';
    String target = 'target';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    IBMLanguageTranslatorV3Models.DocumentStatus documentsItem = new IBMLanguageTranslatorV3Models.DocumentStatus();
    documentsItem.setDocumentId(documentId);
    documentsItem.setFilename(filename);
    documentsItem.setStatus(status);
    documentsItem.setModelId(modelId);
    documentsItem.setSource(source);
    documentsItem.setTarget(target);
    documentsItem.setCreated(created);
    List<IBMLanguageTranslatorV3Models.DocumentStatus> documents = new List<IBMLanguageTranslatorV3Models.DocumentStatus> { documentsItem } ;

    IBMLanguageTranslatorV3Models.DocumentList testRequestModel = new IBMLanguageTranslatorV3Models.DocumentList();
    testRequestModel.setDocuments(documents);

    System.assertEquals(documents, testRequestModel.getDocuments());
    Test.stopTest();
  }
  static testMethod void testDocumentStatusModel() {
    Test.startTest();
    String documentId = 'document_id';
    String filename = 'filename';
    String status = 'status';
    String modelId = 'model_id';
    String baseModelId = 'base_model_id';
    String source = 'source';
    String target = 'target';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime completed = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Long wordCount = 10L;
    Long characterCount = 10L;

    IBMLanguageTranslatorV3Models.DocumentStatus testRequestModel = new IBMLanguageTranslatorV3Models.DocumentStatus();
    testRequestModel.setDocumentId(documentId);
    testRequestModel.setFilename(filename);
    testRequestModel.setStatus(status);
    testRequestModel.setModelId(modelId);
    testRequestModel.setBaseModelId(baseModelId);
    testRequestModel.setSource(source);
    testRequestModel.setTarget(target);
    testRequestModel.setCreated(created);
    testRequestModel.setCompleted(completed);
    testRequestModel.setWordCount(wordCount);
    testRequestModel.setCharacterCount(characterCount);

    System.assertEquals(documentId, testRequestModel.getDocumentId());
    System.assertEquals(filename, testRequestModel.getFilename());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(baseModelId, testRequestModel.getBaseModelId());
    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(target, testRequestModel.getTarget());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(completed, testRequestModel.getCompleted());
    System.assertEquals(wordCount, testRequestModel.getWordCount());
    System.assertEquals(characterCount, testRequestModel.getCharacterCount());
    Test.stopTest();
  }
  static testMethod void testGetDocumentStatusOptionsModel() {
    Test.startTest();
    String documentId = 'document_id';

    IBMLanguageTranslatorV3Models.GetDocumentStatusOptions testRequestModel = new IBMLanguageTranslatorV3Models.GetDocumentStatusOptionsBuilder()
      .documentId(documentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(documentId, testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testGetModelOptionsModel() {
    Test.startTest();
    String modelId = 'model_id';

    IBMLanguageTranslatorV3Models.GetModelOptions testRequestModel = new IBMLanguageTranslatorV3Models.GetModelOptionsBuilder()
      .modelId(modelId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(modelId, testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testGetTranslatedDocumentOptionsModel() {
    Test.startTest();
    String documentId = 'document_id';
    String accept = 'accept';

    IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptions testRequestModel = new IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptionsBuilder()
      .documentId(documentId)
      .accept(accept)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(documentId, testRequestModel.documentId());
    System.assertEquals(accept, testRequestModel.accept());
    Test.stopTest();
  }
  static testMethod void testIdentifiableLanguageModel() {
    Test.startTest();
    String language = 'language';
    String name = 'name';

    IBMLanguageTranslatorV3Models.IdentifiableLanguage testRequestModel = new IBMLanguageTranslatorV3Models.IdentifiableLanguage();
    testRequestModel.setLanguage(language);
    testRequestModel.setName(name);

    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(name, testRequestModel.getName());
    Test.stopTest();
  }
  static testMethod void testIdentifiableLanguagesModel() {
    Test.startTest();
    String language = 'language';
    String name = 'name';
    IBMLanguageTranslatorV3Models.IdentifiableLanguage languagesItem = new IBMLanguageTranslatorV3Models.IdentifiableLanguage();
    languagesItem.setLanguage(language);
    languagesItem.setName(name);
    List<IBMLanguageTranslatorV3Models.IdentifiableLanguage> languages = new List<IBMLanguageTranslatorV3Models.IdentifiableLanguage> { languagesItem } ;

    IBMLanguageTranslatorV3Models.IdentifiableLanguages testRequestModel = new IBMLanguageTranslatorV3Models.IdentifiableLanguages();
    testRequestModel.setLanguages(languages);

    System.assertEquals(languages, testRequestModel.getLanguages());
    Test.stopTest();
  }
  static testMethod void testIdentifiedLanguageModel() {
    Test.startTest();
    String language = 'language';
    Double confidence = 0.5;

    IBMLanguageTranslatorV3Models.IdentifiedLanguage testRequestModel = new IBMLanguageTranslatorV3Models.IdentifiedLanguage();
    testRequestModel.setLanguage(language);
    testRequestModel.setConfidence(confidence);

    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    Test.stopTest();
  }
  static testMethod void testIdentifiedLanguagesModel() {
    Test.startTest();
    String language = 'language';
    Double confidence = 0.5;
    IBMLanguageTranslatorV3Models.IdentifiedLanguage languagesItem = new IBMLanguageTranslatorV3Models.IdentifiedLanguage();
    languagesItem.setLanguage(language);
    languagesItem.setConfidence(confidence);
    List<IBMLanguageTranslatorV3Models.IdentifiedLanguage> languages = new List<IBMLanguageTranslatorV3Models.IdentifiedLanguage> { languagesItem } ;

    IBMLanguageTranslatorV3Models.IdentifiedLanguages testRequestModel = new IBMLanguageTranslatorV3Models.IdentifiedLanguages();
    testRequestModel.setLanguages(languages);

    System.assertEquals(languages, testRequestModel.getLanguages());
    Test.stopTest();
  }
  static testMethod void testIdentifyOptionsModel() {
    Test.startTest();
    String text = 'text';

    IBMLanguageTranslatorV3Models.IdentifyOptions testRequestModel = new IBMLanguageTranslatorV3Models.IdentifyOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListDocumentsOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.ListDocumentsOptions testRequestModel = new IBMLanguageTranslatorV3Models.ListDocumentsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListIdentifiableLanguagesOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptions testRequestModel = new IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListModelsOptionsModel() {
    Test.startTest();
    String source = 'source';
    String target = 'target';
    Boolean xDefault = true;

    IBMLanguageTranslatorV3Models.ListModelsOptions testRequestModel = new IBMLanguageTranslatorV3Models.ListModelsOptionsBuilder()
      .source(source)
      .target(target)
      .xDefault(xDefault)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(source, testRequestModel.source());
    System.assertEquals(target, testRequestModel.target());
    System.assertEquals(xDefault, testRequestModel.xDefault());
    Test.stopTest();
  }
  static testMethod void testTranslateDocumentOptionsModel() {
    Test.startTest();
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/powerpoint')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String filename = 'filename';
    String fileContentType = 'file_content_type';
    String modelId = 'model_id';
    String source = 'source';
    String target = 'target';
    String documentId = 'document_id';

    IBMLanguageTranslatorV3Models.TranslateDocumentOptions testRequestModel = new IBMLanguageTranslatorV3Models.TranslateDocumentOptionsBuilder()
      .file(file)
      .filename(filename)
      .fileContentType(fileContentType)
      .modelId(modelId)
      .source(source)
      .target(target)
      .documentId(documentId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(file, testRequestModel.file());
    System.assertEquals(filename, testRequestModel.filename());
    System.assertEquals(fileContentType, testRequestModel.fileContentType());
    System.assertEquals(modelId, testRequestModel.modelId());
    System.assertEquals(source, testRequestModel.source());
    System.assertEquals(target, testRequestModel.target());
    System.assertEquals(documentId, testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testTranslateOptionsModel() {
    Test.startTest();
    List<String> text = new List<String> { 'text' } ;
    String modelId = 'model_id';
    String source = 'source';
    String target = 'target';

    IBMLanguageTranslatorV3Models.TranslateOptions testRequestModel = new IBMLanguageTranslatorV3Models.TranslateOptionsBuilder()
      .text(text)
      .modelId(modelId)
      .source(source)
      .target(target)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(modelId, testRequestModel.modelId());
    System.assertEquals(source, testRequestModel.source());
    System.assertEquals(target, testRequestModel.target());
    Test.stopTest();
  }
  static testMethod void testTranslationModel() {
    Test.startTest();
    String translation = 'translation';

    IBMLanguageTranslatorV3Models.Translation testRequestModel = new IBMLanguageTranslatorV3Models.Translation();
    testRequestModel.setTranslation(translation);

    System.assertEquals(translation, testRequestModel.getTranslation());
    Test.stopTest();
  }
  static testMethod void testTranslationModelModel() {
    Test.startTest();
    String modelId = 'model_id';
    String name = 'name';
    String source = 'source';
    String target = 'target';
    String baseModelId = 'base_model_id';
    String domain = 'domain';
    Boolean customizable = true;
    Boolean defaultModel = true;
    String owner = 'owner';
    String status = 'status';

    IBMLanguageTranslatorV3Models.TranslationModel testRequestModel = new IBMLanguageTranslatorV3Models.TranslationModel();
    testRequestModel.setModelId(modelId);
    testRequestModel.setName(name);
    testRequestModel.setSource(source);
    testRequestModel.setTarget(target);
    testRequestModel.setBaseModelId(baseModelId);
    testRequestModel.setDomain(domain);
    testRequestModel.setCustomizable(customizable);
    testRequestModel.setDefaultModel(defaultModel);
    testRequestModel.setOwner(owner);
    testRequestModel.setStatus(status);

    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(target, testRequestModel.getTarget());
    System.assertEquals(baseModelId, testRequestModel.getBaseModelId());
    System.assertEquals(domain, testRequestModel.getDomain());
    System.assertEquals(customizable, testRequestModel.getCustomizable());
    System.assertEquals(defaultModel, testRequestModel.getDefaultModel());
    System.assertEquals(owner, testRequestModel.getOwner());
    System.assertEquals(status, testRequestModel.getStatus());
    Test.stopTest();
  }
  static testMethod void testTranslationModelsModel() {
    Test.startTest();
    String modelId = 'model_id';
    IBMLanguageTranslatorV3Models.TranslationModel modelsItem = new IBMLanguageTranslatorV3Models.TranslationModel();
    modelsItem.setModelId(modelId);
    List<IBMLanguageTranslatorV3Models.TranslationModel> models = new List<IBMLanguageTranslatorV3Models.TranslationModel> { modelsItem } ;

    IBMLanguageTranslatorV3Models.TranslationModels testRequestModel = new IBMLanguageTranslatorV3Models.TranslationModels();
    testRequestModel.setModels(models);

    System.assertEquals(models, testRequestModel.getModels());
    Test.stopTest();
  }
  static testMethod void testTranslationResultModel() {
    Test.startTest();
    Long wordCount = 10L;
    Long characterCount = 10L;
    String translation = 'translation';
    IBMLanguageTranslatorV3Models.Translation translationsItem = new IBMLanguageTranslatorV3Models.Translation();
    translationsItem.setTranslation(translation);
    List<IBMLanguageTranslatorV3Models.Translation> translations = new List<IBMLanguageTranslatorV3Models.Translation> { translationsItem } ;

    IBMLanguageTranslatorV3Models.TranslationResult testRequestModel = new IBMLanguageTranslatorV3Models.TranslationResult();
    testRequestModel.setWordCount(wordCount);
    testRequestModel.setCharacterCount(characterCount);
    testRequestModel.setTranslations(translations);

    System.assertEquals(wordCount, testRequestModel.getWordCount());
    System.assertEquals(characterCount, testRequestModel.getCharacterCount());
    System.assertEquals(translations, testRequestModel.getTranslations());
    Test.stopTest();
  }


  static testMethod void testTranslate() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3TranslationResult();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    List<String> text = new List<String> { 'text' } ;
    String modelId = 'model_id';
    String source = 'source';
    String target = 'target';

    IBMLanguageTranslatorV3Models.TranslateOptions options = new IBMLanguageTranslatorV3Models.TranslateOptionsBuilder()
      .text(text)
      .modelId(modelId)
      .source(source)
      .target(target)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationResult response = service.translate(options);

    System.assertEquals(
      10L,
      response.getWordCount()
    );
    System.assertEquals(
      10L,
      response.getCharacterCount()
    );
    System.assertEquals(
      'translation',
      response.getTranslations().get(0).getTranslation()
    );

    Test.stopTest();
  }
  static testMethod void testListIdentifiableLanguages() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3IdentifiableLanguages();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptions options = new IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.IdentifiableLanguages response = service.listIdentifiableLanguages(options);

    System.assertEquals(
      'language',
      response.getLanguages().get(0).getLanguage()
    );
    System.assertEquals(
      'name',
      response.getLanguages().get(0).getName()
    );

    Test.stopTest();
  }
  static testMethod void testIdentify() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3IdentifiedLanguages();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String text = 'text';

    IBMLanguageTranslatorV3Models.IdentifyOptions options = new IBMLanguageTranslatorV3Models.IdentifyOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.IdentifiedLanguages response = service.identify(options);

    System.assertEquals(
      'language',
      response.getLanguages().get(0).getLanguage()
    );
    System.assertEquals(
      0.5,
      response.getLanguages().get(0).getConfidence()
    );

    Test.stopTest();
  }
  static testMethod void testListModels() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3TranslationModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String source = 'source';
    String target = 'target';
    Boolean xDefault = true;

    IBMLanguageTranslatorV3Models.ListModelsOptions options = new IBMLanguageTranslatorV3Models.ListModelsOptionsBuilder()
      .source(source)
      .target(target)
      .xDefault(xDefault)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationModels response = service.listModels(options);

    System.assertEquals(
      'model_id',
      response.getModels().get(0).getModelId()
    );
    System.assertEquals(
      'name',
      response.getModels().get(0).getName()
    );
    System.assertEquals(
      'source',
      response.getModels().get(0).getSource()
    );
    System.assertEquals(
      'target',
      response.getModels().get(0).getTarget()
    );
    System.assertEquals(
      'base_model_id',
      response.getModels().get(0).getBaseModelId()
    );
    System.assertEquals(
      'domain',
      response.getModels().get(0).getDomain()
    );
    System.assertEquals(
      true,
      response.getModels().get(0).getCustomizable()
    );
    System.assertEquals(
      true,
      response.getModels().get(0).getDefaultModel()
    );
    System.assertEquals(
      'owner',
      response.getModels().get(0).getOwner()
    );
    System.assertEquals(
      'status',
      response.getModels().get(0).getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testCreateModel() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3TranslationModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String baseModelId = 'base_model_id';
    IBMWatsonFile forcedGlossary = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile parallelCorpus = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String name = 'name';

    IBMLanguageTranslatorV3Models.CreateModelOptions options = new IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder()
      .baseModelId(baseModelId)
      .forcedGlossary(forcedGlossary)
      .parallelCorpus(parallelCorpus)
      .name(name)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationModel response = service.createModel(options);

    System.assertEquals(
      'model_id',
      response.getModelId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'source',
      response.getSource()
    );
    System.assertEquals(
      'target',
      response.getTarget()
    );
    System.assertEquals(
      'base_model_id',
      response.getBaseModelId()
    );
    System.assertEquals(
      'domain',
      response.getDomain()
    );
    System.assertEquals(
      true,
      response.getCustomizable()
    );
    System.assertEquals(
      true,
      response.getDefaultModel()
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String modelId = 'model_id';

    IBMLanguageTranslatorV3Models.DeleteModelOptions options = new IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder()
      .modelId(modelId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteModel(options);

    Test.stopTest();
  }
  static testMethod void testGetModel() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3TranslationModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String modelId = 'model_id';

    IBMLanguageTranslatorV3Models.GetModelOptions options = new IBMLanguageTranslatorV3Models.GetModelOptionsBuilder()
      .modelId(modelId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationModel response = service.getModel(options);

    System.assertEquals(
      'model_id',
      response.getModelId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'source',
      response.getSource()
    );
    System.assertEquals(
      'target',
      response.getTarget()
    );
    System.assertEquals(
      'base_model_id',
      response.getBaseModelId()
    );
    System.assertEquals(
      'domain',
      response.getDomain()
    );
    System.assertEquals(
      true,
      response.getCustomizable()
    );
    System.assertEquals(
      true,
      response.getDefaultModel()
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testListDocuments() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3DocumentList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMLanguageTranslatorV3Models.ListDocumentsOptions options = new IBMLanguageTranslatorV3Models.ListDocumentsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.DocumentList response = service.listDocuments(options);

    System.assertEquals(
      'document_id',
      response.getDocuments().get(0).getDocumentId()
    );
    System.assertEquals(
      'filename',
      response.getDocuments().get(0).getFilename()
    );
    System.assertEquals(
      'status',
      response.getDocuments().get(0).getStatus()
    );
    System.assertEquals(
      'model_id',
      response.getDocuments().get(0).getModelId()
    );
    System.assertEquals(
      'base_model_id',
      response.getDocuments().get(0).getBaseModelId()
    );
    System.assertEquals(
      'source',
      response.getDocuments().get(0).getSource()
    );
    System.assertEquals(
      'target',
      response.getDocuments().get(0).getTarget()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDocuments().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDocuments().get(0).getCompleted()
    );
    System.assertEquals(
      10L,
      response.getDocuments().get(0).getWordCount()
    );
    System.assertEquals(
      10L,
      response.getDocuments().get(0).getCharacterCount()
    );

    Test.stopTest();
  }
  static testMethod void testTranslateDocument() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3DocumentStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/powerpoint')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String filename = 'filename';
    String fileContentType = 'file_content_type';
    String modelId = 'model_id';
    String source = 'source';
    String target = 'target';
    String documentId = 'document_id';

    IBMLanguageTranslatorV3Models.TranslateDocumentOptions options = new IBMLanguageTranslatorV3Models.TranslateDocumentOptionsBuilder()
      .file(file)
      .filename(filename)
      .fileContentType(fileContentType)
      .modelId(modelId)
      .source(source)
      .target(target)
      .documentId(documentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.DocumentStatus response = service.translateDocument(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'filename',
      response.getFilename()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'model_id',
      response.getModelId()
    );
    System.assertEquals(
      'base_model_id',
      response.getBaseModelId()
    );
    System.assertEquals(
      'source',
      response.getSource()
    );
    System.assertEquals(
      'target',
      response.getTarget()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCompleted()
    );
    System.assertEquals(
      10L,
      response.getWordCount()
    );
    System.assertEquals(
      10L,
      response.getCharacterCount()
    );

    Test.stopTest();
  }
  static testMethod void testGetDocumentStatus() {
    String mockResponseBody = IBMWatsonMockResponses.languageTranslatorV3DocumentStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String documentId = 'document_id';

    IBMLanguageTranslatorV3Models.GetDocumentStatusOptions options = new IBMLanguageTranslatorV3Models.GetDocumentStatusOptionsBuilder()
      .documentId(documentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.DocumentStatus response = service.getDocumentStatus(options);

    System.assertEquals(
      'document_id',
      response.getDocumentId()
    );
    System.assertEquals(
      'filename',
      response.getFilename()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'model_id',
      response.getModelId()
    );
    System.assertEquals(
      'base_model_id',
      response.getBaseModelId()
    );
    System.assertEquals(
      'source',
      response.getSource()
    );
    System.assertEquals(
      'target',
      response.getTarget()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCompleted()
    );
    System.assertEquals(
      10L,
      response.getWordCount()
    );
    System.assertEquals(
      10L,
      response.getCharacterCount()
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

    String documentId = 'document_id';

    IBMLanguageTranslatorV3Models.DeleteDocumentOptions options = new IBMLanguageTranslatorV3Models.DeleteDocumentOptionsBuilder()
      .documentId(documentId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteDocument(options);

    Test.stopTest();
  }
  static testMethod void testGetTranslatedDocument() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String documentId = 'document_id';
    String accept = 'accept';

    IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptions options = new IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptionsBuilder()
      .documentId(documentId)
      .accept(accept)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.getTranslatedDocument(options);

    Test.stopTest();
  }
}
