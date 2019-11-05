@isTest
private class IBMVisualRecognitionV3Test {
  private static IBMVisualRecognitionV3 service;

  static {
    service = new IBMVisualRecognitionV3('2018-03-19', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testModelClassModel() {
    Test.startTest();
    String xClass = 'x_class';

    IBMVisualRecognitionV3Models.ModelClass testRequestModel = new IBMVisualRecognitionV3Models.ModelClass();
    testRequestModel.setXClass(xClass);

    System.assertEquals(xClass, testRequestModel.getXClass());
    Test.stopTest();
  }
  static testMethod void testClassResultModel() {
    Test.startTest();
    String xClass = 'x_class';
    Double score = 0.5;
    String typeHierarchy = 'type_hierarchy';

    IBMVisualRecognitionV3Models.ClassResult testRequestModel = new IBMVisualRecognitionV3Models.ClassResult();
    testRequestModel.setXClass(xClass);
    testRequestModel.setScore(score);
    testRequestModel.setTypeHierarchy(typeHierarchy);

    System.assertEquals(xClass, testRequestModel.getXClass());
    System.assertEquals(score, testRequestModel.getScore());
    System.assertEquals(typeHierarchy, testRequestModel.getTypeHierarchy());
    Test.stopTest();
  }
  static testMethod void testClassifiedImageModel() {
    Test.startTest();
    String sourceUrl = 'source_url';
    String resolvedUrl = 'resolved_url';
    String image = 'image';
    Long code = 10L;
    String description = 'description';
    String errorId = 'error_id';
    IBMVisualRecognitionV3Models.ErrorInfo error = new IBMVisualRecognitionV3Models.ErrorInfo();
    error.setCode(code);
    error.setDescription(description);
    error.setErrorId(errorId);
    String name = 'name';
    String classifierId = 'classifier_id';
    String xClass = 'x_class';
    Double score = 0.5;
    IBMVisualRecognitionV3Models.ClassResult classesItem = new IBMVisualRecognitionV3Models.ClassResult();
    classesItem.setXClass(xClass);
    classesItem.setScore(score);
    List<IBMVisualRecognitionV3Models.ClassResult> classes = new List<IBMVisualRecognitionV3Models.ClassResult> { classesItem } ;
    IBMVisualRecognitionV3Models.ClassifierResult classifiersItem = new IBMVisualRecognitionV3Models.ClassifierResult();
    classifiersItem.setName(name);
    classifiersItem.setClassifierId(classifierId);
    classifiersItem.setClasses(classes);
    List<IBMVisualRecognitionV3Models.ClassifierResult> classifiers = new List<IBMVisualRecognitionV3Models.ClassifierResult> { classifiersItem } ;

    IBMVisualRecognitionV3Models.ClassifiedImage testRequestModel = new IBMVisualRecognitionV3Models.ClassifiedImage();
    testRequestModel.setSourceUrl(sourceUrl);
    testRequestModel.setResolvedUrl(resolvedUrl);
    testRequestModel.setImage(image);
    testRequestModel.setError(error);
    testRequestModel.setClassifiers(classifiers);

    System.assertEquals(sourceUrl, testRequestModel.getSourceUrl());
    System.assertEquals(resolvedUrl, testRequestModel.getResolvedUrl());
    System.assertEquals(image, testRequestModel.getImage());
    System.assertEquals(error, testRequestModel.getError());
    System.assertEquals(classifiers, testRequestModel.getClassifiers());
    Test.stopTest();
  }
  static testMethod void testClassifiedImagesModel() {
    Test.startTest();
    Long customClasses = 10L;
    Long imagesProcessed = 10L;
    String name = 'name';
    String classifierId = 'classifier_id';
    String xClass = 'x_class';
    Double score = 0.5;
    IBMVisualRecognitionV3Models.ClassResult classesItem = new IBMVisualRecognitionV3Models.ClassResult();
    classesItem.setXClass(xClass);
    classesItem.setScore(score);
    List<IBMVisualRecognitionV3Models.ClassResult> classes = new List<IBMVisualRecognitionV3Models.ClassResult> { classesItem } ;
    IBMVisualRecognitionV3Models.ClassifierResult classifiersItem = new IBMVisualRecognitionV3Models.ClassifierResult();
    classifiersItem.setName(name);
    classifiersItem.setClassifierId(classifierId);
    classifiersItem.setClasses(classes);
    List<IBMVisualRecognitionV3Models.ClassifierResult> classifiers = new List<IBMVisualRecognitionV3Models.ClassifierResult> { classifiersItem } ;
    IBMVisualRecognitionV3Models.ClassifiedImage imagesItem = new IBMVisualRecognitionV3Models.ClassifiedImage();
    imagesItem.setClassifiers(classifiers);
    List<IBMVisualRecognitionV3Models.ClassifiedImage> images = new List<IBMVisualRecognitionV3Models.ClassifiedImage> { imagesItem } ;
    String warningId = 'warning_id';
    String description = 'description';
    IBMVisualRecognitionV3Models.WarningInfo warningsItem = new IBMVisualRecognitionV3Models.WarningInfo();
    warningsItem.setWarningId(warningId);
    warningsItem.setDescription(description);
    List<IBMVisualRecognitionV3Models.WarningInfo> warnings = new List<IBMVisualRecognitionV3Models.WarningInfo> { warningsItem } ;

    IBMVisualRecognitionV3Models.ClassifiedImages testRequestModel = new IBMVisualRecognitionV3Models.ClassifiedImages();
    testRequestModel.setCustomClasses(customClasses);
    testRequestModel.setImagesProcessed(imagesProcessed);
    testRequestModel.setImages(images);
    testRequestModel.setWarnings(warnings);

    System.assertEquals(customClasses, testRequestModel.getCustomClasses());
    System.assertEquals(imagesProcessed, testRequestModel.getImagesProcessed());
    System.assertEquals(images, testRequestModel.getImages());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    Test.stopTest();
  }
  static testMethod void testClassifierModel() {
    Test.startTest();
    String classifierId = 'classifier_id';
    String name = 'name';
    String owner = 'owner';
    String status = 'status';
    Boolean coreMlEnabled = true;
    String explanation = 'explanation';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String xClass = 'x_class';
    IBMVisualRecognitionV3Models.ModelClass classesItem = new IBMVisualRecognitionV3Models.ModelClass();
    classesItem.setXClass(xClass);
    List<IBMVisualRecognitionV3Models.ModelClass> classes = new List<IBMVisualRecognitionV3Models.ModelClass> { classesItem } ;
    Datetime retrained = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime updated = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);

    IBMVisualRecognitionV3Models.Classifier testRequestModel = new IBMVisualRecognitionV3Models.Classifier();
    testRequestModel.setClassifierId(classifierId);
    testRequestModel.setName(name);
    testRequestModel.setOwner(owner);
    testRequestModel.setStatus(status);
    testRequestModel.setCoreMlEnabled(coreMlEnabled);
    testRequestModel.setExplanation(explanation);
    testRequestModel.setCreated(created);
    testRequestModel.setClasses(classes);
    testRequestModel.setRetrained(retrained);
    testRequestModel.setUpdated(updated);

    System.assertEquals(classifierId, testRequestModel.getClassifierId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(owner, testRequestModel.getOwner());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(coreMlEnabled, testRequestModel.getCoreMlEnabled());
    System.assertEquals(explanation, testRequestModel.getExplanation());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(classes, testRequestModel.getClasses());
    System.assertEquals(retrained, testRequestModel.getRetrained());
    System.assertEquals(updated, testRequestModel.getUpdated());
    Test.stopTest();
  }
  static testMethod void testClassifierResultModel() {
    Test.startTest();
    String name = 'name';
    String classifierId = 'classifier_id';
    String xClass = 'x_class';
    Double score = 0.5;
    IBMVisualRecognitionV3Models.ClassResult classesItem = new IBMVisualRecognitionV3Models.ClassResult();
    classesItem.setXClass(xClass);
    classesItem.setScore(score);
    List<IBMVisualRecognitionV3Models.ClassResult> classes = new List<IBMVisualRecognitionV3Models.ClassResult> { classesItem } ;

    IBMVisualRecognitionV3Models.ClassifierResult testRequestModel = new IBMVisualRecognitionV3Models.ClassifierResult();
    testRequestModel.setName(name);
    testRequestModel.setClassifierId(classifierId);
    testRequestModel.setClasses(classes);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(classifierId, testRequestModel.getClassifierId());
    System.assertEquals(classes, testRequestModel.getClasses());
    Test.stopTest();
  }
  static testMethod void testClassifiersModel() {
    Test.startTest();
    String classifierId = 'classifier_id';
    String name = 'name';
    IBMVisualRecognitionV3Models.Classifier classifiersItem = new IBMVisualRecognitionV3Models.Classifier();
    classifiersItem.setClassifierId(classifierId);
    classifiersItem.setName(name);
    List<IBMVisualRecognitionV3Models.Classifier> classifiers = new List<IBMVisualRecognitionV3Models.Classifier> { classifiersItem } ;

    IBMVisualRecognitionV3Models.Classifiers testRequestModel = new IBMVisualRecognitionV3Models.Classifiers();
    testRequestModel.setClassifiers(classifiers);

    System.assertEquals(classifiers, testRequestModel.getClassifiers());
    Test.stopTest();
  }
  static testMethod void testClassifyOptionsModel() {
    Test.startTest();
    IBMWatsonFile imagesFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String imagesFilename = 'images_filename';
    String imagesFileContentType = 'images_file_content_type';
    String url = 'url';
    Double threshold = 0.5;
    List<String> owners = new List<String> { 'owners' } ;
    List<String> classifierIds = new List<String> { 'classifier_ids' } ;
    String acceptLanguage = 'accept_language';

    IBMVisualRecognitionV3Models.ClassifyOptions testRequestModel = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .imagesFile(imagesFile)
      .imagesFilename(imagesFilename)
      .imagesFileContentType(imagesFileContentType)
      .url(url)
      .threshold(threshold)
      .owners(owners)
      .classifierIds(classifierIds)
      .acceptLanguage(acceptLanguage)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(imagesFile, testRequestModel.imagesFile());
    System.assertEquals(imagesFilename, testRequestModel.imagesFilename());
    System.assertEquals(imagesFileContentType, testRequestModel.imagesFileContentType());
    System.assertEquals(url, testRequestModel.url());
    System.assertEquals(threshold, testRequestModel.threshold());
    System.assertEquals(owners, testRequestModel.owners());
    System.assertEquals(classifierIds, testRequestModel.classifierIds());
    System.assertEquals(acceptLanguage, testRequestModel.acceptLanguage());
    Test.stopTest();
  }
  static testMethod void testCreateClassifierOptionsModel() {
    Test.startTest();
    String name = 'name';
    IBMWatsonFile positiveExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile negativeExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String negativeExamplesFilename = 'negative_examples_filename';

    IBMVisualRecognitionV3Models.CreateClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.CreateClassifierOptionsBuilder()
      .name(name)
      .positiveExamples(positiveExamples)
      .negativeExamples(negativeExamples)
      .negativeExamplesFilename(negativeExamplesFilename)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(positiveExamples, testRequestModel.positiveExamples());
    System.assertEquals(negativeExamples, testRequestModel.negativeExamples());
    System.assertEquals(negativeExamplesFilename, testRequestModel.negativeExamplesFilename());
    Test.stopTest();
  }
  static testMethod void testDeleteClassifierOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';

    IBMVisualRecognitionV3Models.DeleteClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.DeleteClassifierOptionsBuilder()
      .classifierId(classifierId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();
    String customerId = 'customer_id';

    IBMVisualRecognitionV3Models.DeleteUserDataOptions testRequestModel = new IBMVisualRecognitionV3Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customerId, testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testErrorInfoModel() {
    Test.startTest();
    Long code = 10L;
    String description = 'description';
    String errorId = 'error_id';

    IBMVisualRecognitionV3Models.ErrorInfo testRequestModel = new IBMVisualRecognitionV3Models.ErrorInfo();
    testRequestModel.setCode(code);
    testRequestModel.setDescription(description);
    testRequestModel.setErrorId(errorId);

    System.assertEquals(code, testRequestModel.getCode());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(errorId, testRequestModel.getErrorId());
    Test.stopTest();
  }
  static testMethod void testGetClassifierOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';

    IBMVisualRecognitionV3Models.GetClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.GetClassifierOptionsBuilder()
      .classifierId(classifierId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testGetCoreMlModelOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';

    IBMVisualRecognitionV3Models.GetCoreMlModelOptions testRequestModel = new IBMVisualRecognitionV3Models.GetCoreMlModelOptionsBuilder()
      .classifierId(classifierId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
    Test.stopTest();
  }
  static testMethod void testListClassifiersOptionsModel() {
    Test.startTest();
    Boolean verbose = true;

    IBMVisualRecognitionV3Models.ListClassifiersOptions testRequestModel = new IBMVisualRecognitionV3Models.ListClassifiersOptionsBuilder()
      .verbose(verbose)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(verbose, testRequestModel.verbose());
    Test.stopTest();
  }
  static testMethod void testUpdateClassifierOptionsModel() {
    Test.startTest();
    String classifierId = 'classifier_id';
    IBMWatsonFile positiveExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile negativeExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String negativeExamplesFilename = 'negative_examples_filename';

    IBMVisualRecognitionV3Models.UpdateClassifierOptions testRequestModel = new IBMVisualRecognitionV3Models.UpdateClassifierOptionsBuilder()
      .classifierId(classifierId)
      .positiveExamples(positiveExamples)
      .negativeExamples(negativeExamples)
      .negativeExamplesFilename(negativeExamplesFilename)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(classifierId, testRequestModel.classifierId());
    System.assertEquals(positiveExamples, testRequestModel.positiveExamples());
    System.assertEquals(negativeExamples, testRequestModel.negativeExamples());
    System.assertEquals(negativeExamplesFilename, testRequestModel.negativeExamplesFilename());
    Test.stopTest();
  }
  static testMethod void testWarningInfoModel() {
    Test.startTest();
    String warningId = 'warning_id';
    String description = 'description';

    IBMVisualRecognitionV3Models.WarningInfo testRequestModel = new IBMVisualRecognitionV3Models.WarningInfo();
    testRequestModel.setWarningId(warningId);
    testRequestModel.setDescription(description);

    System.assertEquals(warningId, testRequestModel.getWarningId());
    System.assertEquals(description, testRequestModel.getDescription());
    Test.stopTest();
  }


  static testMethod void testClassify() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV3ClassifiedImages();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile imagesFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String imagesFilename = 'images_filename';
    String imagesFileContentType = 'images_file_content_type';
    String url = 'url';
    Double threshold = 0.5;
    List<String> owners = new List<String> { 'owners' } ;
    List<String> classifierIds = new List<String> { 'classifier_ids' } ;
    String acceptLanguage = 'accept_language';

    IBMVisualRecognitionV3Models.ClassifyOptions options = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .imagesFile(imagesFile)
      .imagesFilename(imagesFilename)
      .imagesFileContentType(imagesFileContentType)
      .url(url)
      .threshold(threshold)
      .owners(owners)
      .classifierIds(classifierIds)
      .acceptLanguage(acceptLanguage)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.ClassifiedImages response = service.classify(options);

    System.assertEquals(
      10L,
      response.getCustomClasses()
    );
    System.assertEquals(
      10L,
      response.getImagesProcessed()
    );
    System.assertEquals(
      'source_url',
      response.getImages().get(0).getSourceUrl()
    );
    System.assertEquals(
      'resolved_url',
      response.getImages().get(0).getResolvedUrl()
    );
    System.assertEquals(
      'image',
      response.getImages().get(0).getImage()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getError().getCode()
    );
    System.assertEquals(
      'description',
      response.getImages().get(0).getError().getDescription()
    );
    System.assertEquals(
      'error_id',
      response.getImages().get(0).getError().getErrorId()
    );
    System.assertEquals(
      'name',
      response.getImages().get(0).getClassifiers().get(0).getName()
    );
    System.assertEquals(
      'classifier_id',
      response.getImages().get(0).getClassifiers().get(0).getClassifierId()
    );
    System.assertEquals(
      'class',
      response.getImages().get(0).getClassifiers().get(0).getClasses().get(0).getXClass()
    );
    System.assertEquals(
      0.5,
      response.getImages().get(0).getClassifiers().get(0).getClasses().get(0).getScore()
    );
    System.assertEquals(
      'type_hierarchy',
      response.getImages().get(0).getClassifiers().get(0).getClasses().get(0).getTypeHierarchy()
    );
    System.assertEquals(
      'warning_id',
      response.getWarnings().get(0).getWarningId()
    );
    System.assertEquals(
      'description',
      response.getWarnings().get(0).getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testCreateClassifier() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV3Classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String name = 'name';
    IBMWatsonFile positiveExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile negativeExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String negativeExamplesFilename = 'negative_examples_filename';

    IBMVisualRecognitionV3Models.CreateClassifierOptions options = new IBMVisualRecognitionV3Models.CreateClassifierOptionsBuilder()
      .name(name)
      .positiveExamples(positiveExamples)
      .negativeExamples(negativeExamples)
      .negativeExamplesFilename(negativeExamplesFilename)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifier response = service.createClassifier(options);

    System.assertEquals(
      'classifier_id',
      response.getClassifierId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      true,
      response.getCoreMlEnabled()
    );
    System.assertEquals(
      'explanation',
      response.getExplanation()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'class',
      response.getClasses().get(0).getXClass()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getRetrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testListClassifiers() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV3Classifiers();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    Boolean verbose = true;

    IBMVisualRecognitionV3Models.ListClassifiersOptions options = new IBMVisualRecognitionV3Models.ListClassifiersOptionsBuilder()
      .verbose(verbose)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifiers response = service.listClassifiers(options);

    System.assertEquals(
      'classifier_id',
      response.getClassifiers().get(0).getClassifierId()
    );
    System.assertEquals(
      'name',
      response.getClassifiers().get(0).getName()
    );
    System.assertEquals(
      'owner',
      response.getClassifiers().get(0).getOwner()
    );
    System.assertEquals(
      'status',
      response.getClassifiers().get(0).getStatus()
    );
    System.assertEquals(
      true,
      response.getClassifiers().get(0).getCoreMlEnabled()
    );
    System.assertEquals(
      'explanation',
      response.getClassifiers().get(0).getExplanation()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getClassifiers().get(0).getCreated()
    );
    System.assertEquals(
      'class',
      response.getClassifiers().get(0).getClasses().get(0).getXClass()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getClassifiers().get(0).getRetrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getClassifiers().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetClassifier() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV3Classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String classifierId = 'classifier_id';

    IBMVisualRecognitionV3Models.GetClassifierOptions options = new IBMVisualRecognitionV3Models.GetClassifierOptionsBuilder()
      .classifierId(classifierId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifier response = service.getClassifier(options);

    System.assertEquals(
      'classifier_id',
      response.getClassifierId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      true,
      response.getCoreMlEnabled()
    );
    System.assertEquals(
      'explanation',
      response.getExplanation()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'class',
      response.getClasses().get(0).getXClass()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getRetrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateClassifier() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV3Classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String classifierId = 'classifier_id';
    IBMWatsonFile positiveExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile negativeExamples = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String negativeExamplesFilename = 'negative_examples_filename';

    IBMVisualRecognitionV3Models.UpdateClassifierOptions options = new IBMVisualRecognitionV3Models.UpdateClassifierOptionsBuilder()
      .classifierId(classifierId)
      .positiveExamples(positiveExamples)
      .negativeExamples(negativeExamples)
      .negativeExamplesFilename(negativeExamplesFilename)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV3Models.Classifier response = service.updateClassifier(options);

    System.assertEquals(
      'classifier_id',
      response.getClassifierId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      true,
      response.getCoreMlEnabled()
    );
    System.assertEquals(
      'explanation',
      response.getExplanation()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'class',
      response.getClasses().get(0).getXClass()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getRetrained()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
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

    IBMVisualRecognitionV3Models.DeleteClassifierOptions options = new IBMVisualRecognitionV3Models.DeleteClassifierOptionsBuilder()
      .classifierId(classifierId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteClassifier(options);

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

    String classifierId = 'classifier_id';

    IBMVisualRecognitionV3Models.GetCoreMlModelOptions options = new IBMVisualRecognitionV3Models.GetCoreMlModelOptionsBuilder()
      .classifierId(classifierId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.getCoreMlModel(options);

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

    IBMVisualRecognitionV3Models.DeleteUserDataOptions options = new IBMVisualRecognitionV3Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(options);

    Test.stopTest();
  }
}
