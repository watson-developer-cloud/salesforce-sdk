@isTest
private class IBMNaturalLanguageClassifierV1Test {
  private static IBMNaturalLanguageClassifierV1 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMNaturalLanguageClassifierV1(new IBMWatsonNoAuthAuthenticator());
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

  static testMethod void testClassifyCollectionOptionsModel() {
    Test.startTest();
    IBMNaturalLanguageClassifierV1Models.ClassifyInput classifyInputModel = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text('testString')
      .build();

    IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptionsBuilder()
      .classifierId('testString')
      .collection(new List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> { classifyInputModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    System.assertEquals(new List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> { classifyInputModel }, testRequestModel.collection());
    Test.stopTest();
  }
  static testMethod void testClassifyInputModel() {
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.ClassifyInput testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testClassifyOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.ClassifyOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifyOptionsBuilder()
      .classifierId('testString')
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    System.assertEquals('testString', testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testCreateClassifierOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.CreateClassifierOptionsBuilder()
      .trainingMetadata(mockFile)
      .trainingData(mockFile)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.trainingMetadata());
    System.assertEquals(mockFile, testRequestModel.trainingData());
    Test.stopTest();
  }
  static testMethod void testDeleteClassifierOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptionsBuilder()
      .classifierId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testGetClassifierOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.GetClassifierOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.GetClassifierOptionsBuilder()
      .classifierId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testListClassifiersOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.ListClassifiersOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }

  static testMethod void testClassify() {
    String mockResponseBody = '{"classifier_id": "classifierId", "url": "url", "text": "text", "top_class": "topClass", "classes": [{"confidence": "10", "class_name": "className"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.ClassifyOptions classifyOptionsModel = new IBMNaturalLanguageClassifierV1Models.ClassifyOptionsBuilder()
      .classifierId('testString')
      .text('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.Classification response = service.classify(classifyOptionsModel);
    System.assert(response.getClassifierId() != null);
    System.assert(response.getUrl() != null);
    System.assert(response.getText() != null);
    System.assert(response.getTopClass() != null);
    System.assert(response.getClasses().get(0).getConfidence() != null);
    System.assert(response.getClasses().get(0).getClassName() != null);

    Test.stopTest();
  }
  static testMethod void testClassifyCollection() {
    String mockResponseBody = '{"classifier_id": "classifierId", "url": "url", "collection": [{"text": "text", "top_class": "topClass", "classes": [{"confidence": "10", "class_name": "className"}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.ClassifyInput classifyInputModel = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text('testString')
      .build();
    IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions classifyCollectionOptionsModel = new IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptionsBuilder()
      .classifierId('testString')
      .collection(new List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> { classifyInputModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.ClassificationCollection response = service.classifyCollection(classifyCollectionOptionsModel);
    System.assert(response.getClassifierId() != null);
    System.assert(response.getUrl() != null);
    System.assert(response.getCollection().get(0).getText() != null);
    System.assert(response.getCollection().get(0).getTopClass() != null);
    System.assert(response.getCollection().get(0).getClasses().get(0).getConfidence() != null);
    System.assert(response.getCollection().get(0).getClasses().get(0).getClassName() != null);

    Test.stopTest();
  }
  static testMethod void testCreateClassifier() {
    String mockResponseBody = '{"name": "name", "url": "url", "status": "status", "classifier_id": "classifierId", "created": "2017-05-16T13:56:54.957Z", "status_description": "statusDescription", "language": "language"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions createClassifierOptionsModel = new IBMNaturalLanguageClassifierV1Models.CreateClassifierOptionsBuilder()
      .trainingMetadata(mockFile)
      .trainingData(mockFile)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.Classifier response = service.createClassifier(createClassifierOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getUrl() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getClassifierId() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getStatusDescription() != null);
    System.assert(response.getLanguage() != null);

    Test.stopTest();
  }
  static testMethod void testListClassifiers() {
    String mockResponseBody = '{"classifiers": [{"name": "name", "url": "url", "status": "status", "classifier_id": "classifierId", "created": "2017-05-16T13:56:54.957Z", "status_description": "statusDescription", "language": "language"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions listClassifiersOptionsModel = new IBMNaturalLanguageClassifierV1Models.ListClassifiersOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.ClassifierList response = service.listClassifiers(listClassifiersOptionsModel);
    System.assert(response.getClassifiers().get(0).getName() != null);
    System.assert(response.getClassifiers().get(0).getUrl() != null);
    System.assert(response.getClassifiers().get(0).getStatus() != null);
    System.assert(response.getClassifiers().get(0).getClassifierId() != null);
    System.assert(response.getClassifiers().get(0).getCreated() != null);
    System.assert(response.getClassifiers().get(0).getStatusDescription() != null);
    System.assert(response.getClassifiers().get(0).getLanguage() != null);

    Test.stopTest();
  }
  static testMethod void testGetClassifier() {
    String mockResponseBody = '{"name": "name", "url": "url", "status": "status", "classifier_id": "classifierId", "created": "2017-05-16T13:56:54.957Z", "status_description": "statusDescription", "language": "language"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageClassifierV1Models.GetClassifierOptions getClassifierOptionsModel = new IBMNaturalLanguageClassifierV1Models.GetClassifierOptionsBuilder()
      .classifierId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.Classifier response = service.getClassifier(getClassifierOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getUrl() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getClassifierId() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getStatusDescription() != null);
    System.assert(response.getLanguage() != null);

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

    IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions deleteClassifierOptionsModel = new IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptionsBuilder()
      .classifierId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteClassifier(deleteClassifierOptionsModel);

    Test.stopTest();
  }
}
