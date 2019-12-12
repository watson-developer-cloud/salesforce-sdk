@isTest
private class IBMVisualRecognitionV3Test {
  private static IBMVisualRecognitionV3 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMVisualRecognitionV3('2018-03-19', new IBMWatsonNoAuthAuthenticator());
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

  static testMethod void testClassifyOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.ClassifyOptions testRequestModel = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .imagesFile(mockFile)
      .imagesFilename('testString')
      .imagesFileContentType('testString')
      .url('testString')
      .threshold((Double) 72.5)
      .owners(new List<String> { 'testString' })
      .classifierIds(new List<String> { 'testString' })
      .acceptLanguage('en')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.imagesFile());
    System.assertEquals('testString', testRequestModel.imagesFilename());
    System.assertEquals('testString', testRequestModel.imagesFileContentType());
    System.assertEquals('testString', testRequestModel.url());
    System.assertEquals((Double) 72.5, testRequestModel.threshold());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.owners());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.classifierIds());
    System.assertEquals('en', testRequestModel.acceptLanguage());
    Test.stopTest();
  }
  static testMethod void testCreateClassifierOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.CreateClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.CreateClassifierOptionsBuilder()
      .name('testString')
      .positiveExamples(new Map<String, IBMWatsonFile> { 'testInput' => mockFile })
      .negativeExamples(mockFile)
      .negativeExamplesFilename('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals(new Map<String, IBMWatsonFile> { 'testInput' => mockFile }, testRequestModel.positiveExamples());
    System.assertEquals(mockFile, testRequestModel.negativeExamples());
    System.assertEquals('testString', testRequestModel.negativeExamplesFilename());
    Test.stopTest();
  }
  static testMethod void testDeleteClassifierOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.DeleteClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.DeleteClassifierOptionsBuilder()
      .classifierId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.DeleteUserDataOptions testRequestModel = new IBMVisualRecognitionV3Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testGetClassifierOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.GetClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.GetClassifierOptionsBuilder()
      .classifierId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testGetCoreMlModelOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.GetCoreMlModelOptions testRequestModel = new IBMVisualRecognitionV3Models.GetCoreMlModelOptionsBuilder()
      .classifierId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testListClassifiersOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.ListClassifiersOptions testRequestModel = new IBMVisualRecognitionV3Models.ListClassifiersOptionsBuilder()
      .verbose(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.verbose());
    Test.stopTest();
  }
  static testMethod void testUpdateClassifierOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV3Models.UpdateClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.UpdateClassifierOptionsBuilder()
      .classifierId('testString')
      .positiveExamples(new Map<String, IBMWatsonFile> { 'testInput' => mockFile })
      .negativeExamples(mockFile)
      .negativeExamplesFilename('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    System.assertEquals(new Map<String, IBMWatsonFile> { 'testInput' => mockFile }, testRequestModel.positiveExamples());
    System.assertEquals(mockFile, testRequestModel.negativeExamples());
    System.assertEquals('testString', testRequestModel.negativeExamplesFilename());
    Test.stopTest();
  }

  static testMethod void testClassify() {
    String mockResponseBody = '{"custom_classes": "13", "images_processed": "15", "images": [{"source_url": "sourceUrl", "resolved_url": "resolvedUrl", "image": "image", "error": {"code": "4", "description": "description", "error_id": "errorId"}, "classifiers": [{"name": "name", "classifier_id": "classifierId", "classes": [{"class": "xClass", "score": "5", "type_hierarchy": "typeHierarchy"}]}]}], "warnings": [{"warning_id": "warningId", "description": "description"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3Models.ClassifyOptions classifyOptionsModel = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .imagesFile(mockFile)
      .imagesFilename('testString')
      .imagesFileContentType('testString')
      .url('testString')
      .threshold((Double) 72.5)
      .owners(new List<String> { 'testString' })
      .classifierIds(new List<String> { 'testString' })
      .acceptLanguage('en')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.ClassifiedImages response = service.classify(classifyOptionsModel);
    System.assert(response.getCustomClasses() != null);
    System.assert(response.getImagesProcessed() != null);
    System.assert(response.getImages().get(0).getSourceUrl() != null);
    System.assert(response.getImages().get(0).getResolvedUrl() != null);
    System.assert(response.getImages().get(0).getImage() != null);
    System.assert(response.getImages().get(0).getError().getCode() != null);
    System.assert(response.getImages().get(0).getError().getDescription() != null);
    System.assert(response.getImages().get(0).getError().getErrorId() != null);
    System.assert(response.getImages().get(0).getClassifiers().get(0).getName() != null);
    System.assert(response.getImages().get(0).getClassifiers().get(0).getClassifierId() != null);
    System.assert(response.getImages().get(0).getClassifiers().get(0).getClasses().get(0).getXClass() != null);
    System.assert(response.getImages().get(0).getClassifiers().get(0).getClasses().get(0).getScore() != null);
    System.assert(response.getImages().get(0).getClassifiers().get(0).getClasses().get(0).getTypeHierarchy() != null);
    System.assert(response.getWarnings().get(0).getWarningId() != null);
    System.assert(response.getWarnings().get(0).getDescription() != null);

    Test.stopTest();
  }
  static testMethod void testCreateClassifier() {
    String mockResponseBody = '{"classifier_id": "classifierId", "name": "name", "owner": "owner", "status": "status", "core_ml_enabled": false, "explanation": "explanation", "created": "2017-05-16T13:56:54.957Z", "classes": [{"class": "xClass"}], "retrained": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3Models.CreateClassifierOptions createClassifierOptionsModel = new IBMVisualRecognitionV3Models.CreateClassifierOptionsBuilder()
      .name('testString')
      .positiveExamples(new Map<String, IBMWatsonFile> { 'testInput' => mockFile })
      .negativeExamples(mockFile)
      .negativeExamplesFilename('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifier response = service.createClassifier(createClassifierOptionsModel);
    System.assert(response.getClassifierId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCoreMlEnabled() != null);
    System.assert(response.getExplanation() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getClasses().get(0).getXClass() != null);
    System.assert(response.getRetrained() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testListClassifiers() {
    String mockResponseBody = '{"classifiers": [{"classifier_id": "classifierId", "name": "name", "owner": "owner", "status": "status", "core_ml_enabled": false, "explanation": "explanation", "created": "2017-05-16T13:56:54.957Z", "classes": [{"class": "xClass"}], "retrained": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3Models.ListClassifiersOptions listClassifiersOptionsModel = new IBMVisualRecognitionV3Models.ListClassifiersOptionsBuilder()
      .verbose(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifiers response = service.listClassifiers(listClassifiersOptionsModel);
    System.assert(response.getClassifiers().get(0).getClassifierId() != null);
    System.assert(response.getClassifiers().get(0).getName() != null);
    System.assert(response.getClassifiers().get(0).getOwner() != null);
    System.assert(response.getClassifiers().get(0).getStatus() != null);
    System.assert(response.getClassifiers().get(0).getCoreMlEnabled() != null);
    System.assert(response.getClassifiers().get(0).getExplanation() != null);
    System.assert(response.getClassifiers().get(0).getCreated() != null);
    System.assert(response.getClassifiers().get(0).getClasses().get(0).getXClass() != null);
    System.assert(response.getClassifiers().get(0).getRetrained() != null);
    System.assert(response.getClassifiers().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetClassifier() {
    String mockResponseBody = '{"classifier_id": "classifierId", "name": "name", "owner": "owner", "status": "status", "core_ml_enabled": false, "explanation": "explanation", "created": "2017-05-16T13:56:54.957Z", "classes": [{"class": "xClass"}], "retrained": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3Models.GetClassifierOptions getClassifierOptionsModel = new IBMVisualRecognitionV3Models.GetClassifierOptionsBuilder()
      .classifierId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifier response = service.getClassifier(getClassifierOptionsModel);
    System.assert(response.getClassifierId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCoreMlEnabled() != null);
    System.assert(response.getExplanation() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getClasses().get(0).getXClass() != null);
    System.assert(response.getRetrained() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateClassifier() {
    String mockResponseBody = '{"classifier_id": "classifierId", "name": "name", "owner": "owner", "status": "status", "core_ml_enabled": false, "explanation": "explanation", "created": "2017-05-16T13:56:54.957Z", "classes": [{"class": "xClass"}], "retrained": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3Models.UpdateClassifierOptions updateClassifierOptionsModel = new IBMVisualRecognitionV3Models.UpdateClassifierOptionsBuilder()
      .classifierId('testString')
      .positiveExamples(new Map<String, IBMWatsonFile> { 'testInput' => mockFile })
      .negativeExamples(mockFile)
      .negativeExamplesFilename('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifier response = service.updateClassifier(updateClassifierOptionsModel);
    System.assert(response.getClassifierId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCoreMlEnabled() != null);
    System.assert(response.getExplanation() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getClasses().get(0).getXClass() != null);
    System.assert(response.getRetrained() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteClassifier() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3Models.DeleteClassifierOptions deleteClassifierOptionsModel = new IBMVisualRecognitionV3Models.DeleteClassifierOptionsBuilder()
      .classifierId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteClassifier(deleteClassifierOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetCoreMlModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3Models.GetCoreMlModelOptions getCoreMlModelOptionsModel = new IBMVisualRecognitionV3Models.GetCoreMlModelOptionsBuilder()
      .classifierId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.getCoreMlModel(getCoreMlModelOptionsModel);

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

    IBMVisualRecognitionV3Models.DeleteUserDataOptions deleteUserDataOptionsModel = new IBMVisualRecognitionV3Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(deleteUserDataOptionsModel);

    Test.stopTest();
  }
}
