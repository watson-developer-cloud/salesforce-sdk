@isTest
private class IBMLanguageTranslatorV3Test {
  private static IBMLanguageTranslatorV3 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMLanguageTranslatorV3('2018-05-01', new IBMWatsonNoAuthAuthenticator());
    mockFile = new IBMWatsonFile.FileBuilder()
      .name('mock-file.txt')
      .description('Test file')
      .contentType('text/plain')
      .body(blob.valueOf('Test string'))
      .build();
  }

  static IBMWatsonMapModel createMockMap() {
    IBMWatsonMapModel mockMap = new IBMWatsonMapModel();
    mockMap.put('testKey', 'testVal');
    return mockMap;
  }

  static testMethod void testCreateModelOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.CreateModelOptions testRequestModel = new IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder()
      .baseModelId('testString')
      .forcedGlossary(mockFile)
      .parallelCorpus(mockFile)
      .name('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.baseModelId());
    System.assertEquals(mockFile, testRequestModel.forcedGlossary());
    System.assertEquals(mockFile, testRequestModel.parallelCorpus());
    System.assertEquals('testString', testRequestModel.name());
    Test.stopTest();
  }
  static testMethod void testDeleteDocumentOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.DeleteDocumentOptions testRequestModel = new IBMLanguageTranslatorV3Models.DeleteDocumentOptionsBuilder()
      .documentId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testDeleteModelOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.DeleteModelOptions testRequestModel = new IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder()
      .modelId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testGetDocumentStatusOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.GetDocumentStatusOptions testRequestModel = new IBMLanguageTranslatorV3Models.GetDocumentStatusOptionsBuilder()
      .documentId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testGetModelOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.GetModelOptions testRequestModel = new IBMLanguageTranslatorV3Models.GetModelOptionsBuilder()
      .modelId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testGetTranslatedDocumentOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptions testRequestModel = new IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptionsBuilder()
      .documentId('testString')
      .accept('application/powerpoint')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.documentId());
    System.assertEquals('application/powerpoint', testRequestModel.accept());
    Test.stopTest();
  }
  static testMethod void testIdentifyOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.IdentifyOptions testRequestModel = new IBMLanguageTranslatorV3Models.IdentifyOptionsBuilder()
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.text());
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

    IBMLanguageTranslatorV3Models.ListModelsOptions testRequestModel = new IBMLanguageTranslatorV3Models.ListModelsOptionsBuilder()
      .source('testString')
      .target('testString')
      .xDefault(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.source());
    System.assertEquals('testString', testRequestModel.target());
    System.assertEquals(true, testRequestModel.xDefault());
    Test.stopTest();
  }
  static testMethod void testTranslateDocumentOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.TranslateDocumentOptions testRequestModel = new IBMLanguageTranslatorV3Models.TranslateDocumentOptionsBuilder()
      .file(mockFile)
      .filename('testString')
      .fileContentType('application/powerpoint')
      .modelId('testString')
      .source('testString')
      .target('testString')
      .documentId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.file());
    System.assertEquals('testString', testRequestModel.filename());
    System.assertEquals('application/powerpoint', testRequestModel.fileContentType());
    System.assertEquals('testString', testRequestModel.modelId());
    System.assertEquals('testString', testRequestModel.source());
    System.assertEquals('testString', testRequestModel.target());
    System.assertEquals('testString', testRequestModel.documentId());
    Test.stopTest();
  }
  static testMethod void testTranslateOptionsModel() {
    Test.startTest();

    IBMLanguageTranslatorV3Models.TranslateOptions testRequestModel = new IBMLanguageTranslatorV3Models.TranslateOptionsBuilder()
      .text(new List<String> { 'testString' })
      .modelId('testString')
      .source('testString')
      .target('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<String> { 'testString' }, testRequestModel.text());
    System.assertEquals('testString', testRequestModel.modelId());
    System.assertEquals('testString', testRequestModel.source());
    System.assertEquals('testString', testRequestModel.target());
    Test.stopTest();
  }

  static testMethod void testTranslate() {
    String mockResponseBody = '{"word_count": "9", "character_count": "14", "translations": [{"translation": "translation"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.TranslateOptions translateOptionsModel = new IBMLanguageTranslatorV3Models.TranslateOptionsBuilder()
      .text(new List<String> { 'testString' })
      .modelId('testString')
      .source('testString')
      .target('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationResult response = service.translate(translateOptionsModel);
    System.assert(response.getWordCount() != null);
    System.assert(response.getCharacterCount() != null);
    System.assert(response.getTranslations().get(0).getTranslation() != null);

    Test.stopTest();
  }
  static testMethod void testListIdentifiableLanguages() {
    String mockResponseBody = '{"languages": [{"language": "language", "name": "name"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptions listIdentifiableLanguagesOptionsModel = new IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.IdentifiableLanguages response = service.listIdentifiableLanguages(listIdentifiableLanguagesOptionsModel);
    System.assert(response.getLanguages().get(0).getLanguage() != null);
    System.assert(response.getLanguages().get(0).getName() != null);

    Test.stopTest();
  }
  static testMethod void testIdentify() {
    String mockResponseBody = '{"languages": [{"language": "language", "confidence": "10"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.IdentifyOptions identifyOptionsModel = new IBMLanguageTranslatorV3Models.IdentifyOptionsBuilder()
      .text('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.IdentifiedLanguages response = service.identify(identifyOptionsModel);
    System.assert(response.getLanguages().get(0).getLanguage() != null);
    System.assert(response.getLanguages().get(0).getConfidence() != null);

    Test.stopTest();
  }
  static testMethod void testListModels() {
    String mockResponseBody = '{"models": [{"model_id": "modelId", "name": "name", "source": "source", "target": "target", "base_model_id": "baseModelId", "domain": "domain", "customizable": true, "default_model": true, "owner": "owner", "status": "status"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.ListModelsOptions listModelsOptionsModel = new IBMLanguageTranslatorV3Models.ListModelsOptionsBuilder()
      .source('testString')
      .target('testString')
      .xDefault(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationModels response = service.listModels(listModelsOptionsModel);
    System.assert(response.getModels().get(0).getModelId() != null);
    System.assert(response.getModels().get(0).getName() != null);
    System.assert(response.getModels().get(0).getSource() != null);
    System.assert(response.getModels().get(0).getTarget() != null);
    System.assert(response.getModels().get(0).getBaseModelId() != null);
    System.assert(response.getModels().get(0).getDomain() != null);
    System.assert(response.getModels().get(0).getCustomizable() != null);
    System.assert(response.getModels().get(0).getDefaultModel() != null);
    System.assert(response.getModels().get(0).getOwner() != null);
    System.assert(response.getModels().get(0).getStatus() != null);

    Test.stopTest();
  }
  static testMethod void testCreateModel() {
    String mockResponseBody = '{"model_id": "modelId", "name": "name", "source": "source", "target": "target", "base_model_id": "baseModelId", "domain": "domain", "customizable": true, "default_model": true, "owner": "owner", "status": "status"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.CreateModelOptions createModelOptionsModel = new IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder()
      .baseModelId('testString')
      .forcedGlossary(mockFile)
      .parallelCorpus(mockFile)
      .name('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationModel response = service.createModel(createModelOptionsModel);
    System.assert(response.getModelId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getSource() != null);
    System.assert(response.getTarget() != null);
    System.assert(response.getBaseModelId() != null);
    System.assert(response.getDomain() != null);
    System.assert(response.getCustomizable() != null);
    System.assert(response.getDefaultModel() != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getStatus() != null);

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

    IBMLanguageTranslatorV3Models.DeleteModelOptions deleteModelOptionsModel = new IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder()
      .modelId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteModel(deleteModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetModel() {
    String mockResponseBody = '{"model_id": "modelId", "name": "name", "source": "source", "target": "target", "base_model_id": "baseModelId", "domain": "domain", "customizable": true, "default_model": true, "owner": "owner", "status": "status"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.GetModelOptions getModelOptionsModel = new IBMLanguageTranslatorV3Models.GetModelOptionsBuilder()
      .modelId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.TranslationModel response = service.getModel(getModelOptionsModel);
    System.assert(response.getModelId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getSource() != null);
    System.assert(response.getTarget() != null);
    System.assert(response.getBaseModelId() != null);
    System.assert(response.getDomain() != null);
    System.assert(response.getCustomizable() != null);
    System.assert(response.getDefaultModel() != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getStatus() != null);

    Test.stopTest();
  }
  static testMethod void testListDocuments() {
    String mockResponseBody = '{"documents": [{"document_id": "documentId", "filename": "filename", "status": "status", "model_id": "modelId", "base_model_id": "baseModelId", "source": "source", "target": "target", "created": "2017-05-16T13:56:54.957Z", "completed": "2017-05-16T13:56:54.957Z", "word_count": "9", "character_count": "14"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.ListDocumentsOptions listDocumentsOptionsModel = new IBMLanguageTranslatorV3Models.ListDocumentsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.DocumentList response = service.listDocuments(listDocumentsOptionsModel);
    System.assert(response.getDocuments().get(0).getDocumentId() != null);
    System.assert(response.getDocuments().get(0).getFilename() != null);
    System.assert(response.getDocuments().get(0).getStatus() != null);
    System.assert(response.getDocuments().get(0).getModelId() != null);
    System.assert(response.getDocuments().get(0).getBaseModelId() != null);
    System.assert(response.getDocuments().get(0).getSource() != null);
    System.assert(response.getDocuments().get(0).getTarget() != null);
    System.assert(response.getDocuments().get(0).getCreated() != null);
    System.assert(response.getDocuments().get(0).getCompleted() != null);
    System.assert(response.getDocuments().get(0).getWordCount() != null);
    System.assert(response.getDocuments().get(0).getCharacterCount() != null);

    Test.stopTest();
  }
  static testMethod void testTranslateDocument() {
    String mockResponseBody = '{"document_id": "documentId", "filename": "filename", "status": "status", "model_id": "modelId", "base_model_id": "baseModelId", "source": "source", "target": "target", "created": "2017-05-16T13:56:54.957Z", "completed": "2017-05-16T13:56:54.957Z", "word_count": "9", "character_count": "14"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.TranslateDocumentOptions translateDocumentOptionsModel = new IBMLanguageTranslatorV3Models.TranslateDocumentOptionsBuilder()
      .file(mockFile)
      .filename('testString')
      .fileContentType('application/powerpoint')
      .modelId('testString')
      .source('testString')
      .target('testString')
      .documentId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.DocumentStatus response = service.translateDocument(translateDocumentOptionsModel);
    System.assert(response.getDocumentId() != null);
    System.assert(response.getFilename() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getModelId() != null);
    System.assert(response.getBaseModelId() != null);
    System.assert(response.getSource() != null);
    System.assert(response.getTarget() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getCompleted() != null);
    System.assert(response.getWordCount() != null);
    System.assert(response.getCharacterCount() != null);

    Test.stopTest();
  }
  static testMethod void testGetDocumentStatus() {
    String mockResponseBody = '{"document_id": "documentId", "filename": "filename", "status": "status", "model_id": "modelId", "base_model_id": "baseModelId", "source": "source", "target": "target", "created": "2017-05-16T13:56:54.957Z", "completed": "2017-05-16T13:56:54.957Z", "word_count": "9", "character_count": "14"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMLanguageTranslatorV3Models.GetDocumentStatusOptions getDocumentStatusOptionsModel = new IBMLanguageTranslatorV3Models.GetDocumentStatusOptionsBuilder()
      .documentId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMLanguageTranslatorV3Models.DocumentStatus response = service.getDocumentStatus(getDocumentStatusOptionsModel);
    System.assert(response.getDocumentId() != null);
    System.assert(response.getFilename() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getModelId() != null);
    System.assert(response.getBaseModelId() != null);
    System.assert(response.getSource() != null);
    System.assert(response.getTarget() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getCompleted() != null);
    System.assert(response.getWordCount() != null);
    System.assert(response.getCharacterCount() != null);

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

    IBMLanguageTranslatorV3Models.DeleteDocumentOptions deleteDocumentOptionsModel = new IBMLanguageTranslatorV3Models.DeleteDocumentOptionsBuilder()
      .documentId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteDocument(deleteDocumentOptionsModel);

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

    IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptions getTranslatedDocumentOptionsModel = new IBMLanguageTranslatorV3Models.GetTranslatedDocumentOptionsBuilder()
      .documentId('testString')
      .accept('application/powerpoint')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.getTranslatedDocument(getTranslatedDocumentOptionsModel);

    Test.stopTest();
  }
}
