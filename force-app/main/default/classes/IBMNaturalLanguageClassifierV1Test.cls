@isTest
private class IBMNaturalLanguageClassifierV1Test {
  private static IBMNaturalLanguageClassifierV1 service;

  static {
    service = new IBMNaturalLanguageClassifierV1(new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testClassificationModel() {
    Test.startTest();
    String classifierId = 'classifier_id';
    String url = 'url';
    String text = 'text';
    String topClass = 'top_class';
    IBMNaturalLanguageClassifierV1Models.ClassifiedClass classesItem = new IBMNaturalLanguageClassifierV1Models.ClassifiedClass();
    List<IBMNaturalLanguageClassifierV1Models.ClassifiedClass> classes = new List<IBMNaturalLanguageClassifierV1Models.ClassifiedClass> { classesItem } ;

    IBMNaturalLanguageClassifierV1Models.Classification testRequestModel = new IBMNaturalLanguageClassifierV1Models.Classification();
    testRequestModel.setClassifierId(classifierId);
    testRequestModel.setUrl(url);
    testRequestModel.setText(text);
    testRequestModel.setTopClass(topClass);
    testRequestModel.setClasses(classes);

    System.assertEquals(classifierId, testRequestModel.getClassifierId());
    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(topClass, testRequestModel.getTopClass());
    System.assertEquals(classes, testRequestModel.getClasses());
    Test.stopTest();
  }
  static testMethod void testClassificationCollectionModel() {
    Test.startTest();
    String classifierId = 'classifier_id';
    String url = 'url';
    IBMNaturalLanguageClassifierV1Models.CollectionItem collectionItem = new IBMNaturalLanguageClassifierV1Models.CollectionItem();
    List<IBMNaturalLanguageClassifierV1Models.CollectionItem> collection = new List<IBMNaturalLanguageClassifierV1Models.CollectionItem> { collectionItem } ;

    IBMNaturalLanguageClassifierV1Models.ClassificationCollection testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassificationCollection();
    testRequestModel.setClassifierId(classifierId);
    testRequestModel.setUrl(url);
    testRequestModel.setCollection(collection);

    System.assertEquals(classifierId, testRequestModel.getClassifierId());
    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(collection, testRequestModel.getCollection());
    Test.stopTest();
  }
  static testMethod void testClassifiedClassModel() {
    Test.startTest();
    Double confidence = 0.5;
    String className = 'class_name';

    IBMNaturalLanguageClassifierV1Models.ClassifiedClass testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifiedClass();
    testRequestModel.setConfidence(confidence);
    testRequestModel.setClassName(className);

    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(className, testRequestModel.getClassName());
    Test.stopTest();
  }
  static testMethod void testClassifierModel() {
    Test.startTest();
    String name = 'name';
    String url = 'url';
    String classifierId = 'classifier_id';
    String language = 'language';

    IBMNaturalLanguageClassifierV1Models.Classifier testRequestModel = new IBMNaturalLanguageClassifierV1Models.Classifier();
    testRequestModel.setName(name);
    testRequestModel.setUrl(url);
    testRequestModel.setClassifierId(classifierId);
    testRequestModel.setLanguage(language);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(classifierId, testRequestModel.getClassifierId());
    System.assertEquals(language, testRequestModel.getLanguage());
    Test.stopTest();
  }
  static testMethod void testClassifierListModel() {
    Test.startTest();
    String url = 'url';
    String classifierId = 'classifier_id';
    IBMNaturalLanguageClassifierV1Models.Classifier classifiersItem = new IBMNaturalLanguageClassifierV1Models.Classifier();
    classifiersItem.setUrl(url);
    classifiersItem.setClassifierId(classifierId);
    List<IBMNaturalLanguageClassifierV1Models.Classifier> classifiers = new List<IBMNaturalLanguageClassifierV1Models.Classifier> { classifiersItem } ;

    IBMNaturalLanguageClassifierV1Models.ClassifierList testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifierList();
    testRequestModel.setClassifiers(classifiers);

    System.assertEquals(classifiers, testRequestModel.getClassifiers());
    Test.stopTest();
  }
  static testMethod void testClassifyCollectionOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';
    String text = 'text';
    IBMNaturalLanguageClassifierV1Models.ClassifyInput collectionItem = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text(text)
      .build();
    List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> collection = new List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> { collectionItem } ;

    IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptionsBuilder()
      .classifierId(classifierId)
      .collection(collection)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
    System.assertEquals(collection, testRequestModel.collection());
    Test.stopTest();
  }
  static testMethod void testClassifyInputModel() {
    Test.startTest();
    String text = 'text';

    IBMNaturalLanguageClassifierV1Models.ClassifyInput testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testClassifyOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';
    String text = 'text';

    IBMNaturalLanguageClassifierV1Models.ClassifyOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.ClassifyOptionsBuilder()
      .classifierId(classifierId)
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
    System.assertEquals(text, testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testCollectionItemModel() {
    Test.startTest();
    String text = 'text';
    String topClass = 'top_class';
    IBMNaturalLanguageClassifierV1Models.ClassifiedClass classesItem = new IBMNaturalLanguageClassifierV1Models.ClassifiedClass();
    List<IBMNaturalLanguageClassifierV1Models.ClassifiedClass> classes = new List<IBMNaturalLanguageClassifierV1Models.ClassifiedClass> { classesItem } ;

    IBMNaturalLanguageClassifierV1Models.CollectionItem testRequestModel = new IBMNaturalLanguageClassifierV1Models.CollectionItem();
    testRequestModel.setText(text);
    testRequestModel.setTopClass(topClass);
    testRequestModel.setClasses(classes);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(topClass, testRequestModel.getTopClass());
    System.assertEquals(classes, testRequestModel.getClasses());
    Test.stopTest();
  }
  static testMethod void testCreateClassifierOptionsModel() {
    Test.startTest();
    IBMWatsonFile trainingMetadata = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile trainingData = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/csv')
      .body(Blob.valueOf('Test file contents string'))
      .build();

    IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.CreateClassifierOptionsBuilder()
      .trainingMetadata(trainingMetadata)
      .trainingData(trainingData)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(trainingMetadata, testRequestModel.trainingMetadata());
    System.assertEquals(trainingData, testRequestModel.trainingData());
    Test.stopTest();
  }
  static testMethod void testDeleteClassifierOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';

    IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptionsBuilder()
      .classifierId(classifierId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testGetClassifierOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';

    IBMNaturalLanguageClassifierV1Models.GetClassifierOptions testRequestModel = new IBMNaturalLanguageClassifierV1Models.GetClassifierOptionsBuilder()
      .classifierId(classifierId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
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
    String mockResponseBody = IBMWatsonMockResponses.naturalLanguageClassifierV1Classification();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String classifierId = 'classifier_id';
    String text = 'text';

    IBMNaturalLanguageClassifierV1Models.ClassifyOptions options = new IBMNaturalLanguageClassifierV1Models.ClassifyOptionsBuilder()
      .classifierId(classifierId)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.Classification response = service.classify(options);

    System.assertEquals(
      'classifier_id',
      response.getClassifierId()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      'text',
      response.getText()
    );
    System.assertEquals(
      'top_class',
      response.getTopClass()
    );
    System.assertEquals(
      0.5,
      response.getClasses().get(0).getConfidence()
    );
    System.assertEquals(
      'class_name',
      response.getClasses().get(0).getClassName()
    );

    Test.stopTest();
  }
  static testMethod void testClassifyCollection() {
    String mockResponseBody = IBMWatsonMockResponses.naturalLanguageClassifierV1ClassificationCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String classifierId = 'classifier_id';
    String text = 'text';
    IBMNaturalLanguageClassifierV1Models.ClassifyInput collectionItem = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text(text)
      .build();
    List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> collection = new List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> { collectionItem } ;

    IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions options = new IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptionsBuilder()
      .classifierId(classifierId)
      .collection(collection)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.ClassificationCollection response = service.classifyCollection(options);

    System.assertEquals(
      'classifier_id',
      response.getClassifierId()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      'text',
      response.getCollection().get(0).getText()
    );
    System.assertEquals(
      'top_class',
      response.getCollection().get(0).getTopClass()
    );
    System.assertEquals(
      0.5,
      response.getCollection().get(0).getClasses().get(0).getConfidence()
    );
    System.assertEquals(
      'class_name',
      response.getCollection().get(0).getClasses().get(0).getClassName()
    );

    Test.stopTest();
  }
  static testMethod void testCreateClassifier() {
    String mockResponseBody = IBMWatsonMockResponses.naturalLanguageClassifierV1Classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile trainingMetadata = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile trainingData = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/csv')
      .body(Blob.valueOf('Test file contents string'))
      .build();

    IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions options = new IBMNaturalLanguageClassifierV1Models.CreateClassifierOptionsBuilder()
      .trainingMetadata(trainingMetadata)
      .trainingData(trainingData)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.Classifier response = service.createClassifier(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'classifier_id',
      response.getClassifierId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'status_description',
      response.getStatusDescription()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );

    Test.stopTest();
  }
  static testMethod void testListClassifiers() {
    String mockResponseBody = IBMWatsonMockResponses.naturalLanguageClassifierV1ClassifierList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions options = new IBMNaturalLanguageClassifierV1Models.ListClassifiersOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.ClassifierList response = service.listClassifiers(options);

    System.assertEquals(
      'name',
      response.getClassifiers().get(0).getName()
    );
    System.assertEquals(
      'url',
      response.getClassifiers().get(0).getUrl()
    );
    System.assertEquals(
      'status',
      response.getClassifiers().get(0).getStatus()
    );
    System.assertEquals(
      'classifier_id',
      response.getClassifiers().get(0).getClassifierId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getClassifiers().get(0).getCreated()
    );
    System.assertEquals(
      'status_description',
      response.getClassifiers().get(0).getStatusDescription()
    );
    System.assertEquals(
      'language',
      response.getClassifiers().get(0).getLanguage()
    );

    Test.stopTest();
  }
  static testMethod void testGetClassifier() {
    String mockResponseBody = IBMWatsonMockResponses.naturalLanguageClassifierV1Classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String classifierId = 'classifier_id';

    IBMNaturalLanguageClassifierV1Models.GetClassifierOptions options = new IBMNaturalLanguageClassifierV1Models.GetClassifierOptionsBuilder()
      .classifierId(classifierId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageClassifierV1Models.Classifier response = service.getClassifier(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'classifier_id',
      response.getClassifierId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'status_description',
      response.getStatusDescription()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );

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

    String classifierId = 'classifier_id';

    IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions options = new IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptionsBuilder()
      .classifierId(classifierId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteClassifier(options);

    Test.stopTest();
  }
}
