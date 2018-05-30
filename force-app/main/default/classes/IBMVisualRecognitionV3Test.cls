@isTest
private class IBMVisualRecognitionV3Test {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_visual_recognition_v3';
  private static String API_KEY = '80bc2e663293e8d13564c260cdb4cbf891b606c0';
  static testMethod void testClassify() {
    String body = IBMWatsonMockResponses.classifiedImages();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', iamOptions);
    visualRecognition.setEndPoint('https://gateway-a.watsonplatform.net/visual-recognition/api');
    IBMVisualRecognitionV3Models.ClassifyOptions options = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .url('http://www.indya101.com/gallery/Actors_TV/Sumeet_Sachdev/2011/12/27/Sumeet_Sachdevjpg_3_arnem.jpg')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMVisualRecognitionV3Models.ClassifiedImages resp = visualRecognition.classify(options);
    System.assertEquals(resp.getImagesProcessed(),0);
    System.assertEquals(resp.getImages()[0].getSourceUrl(), 'string');
    System.assertEquals(resp.getImages()[0].getResolvedUrl(), 'string');
    System.assertEquals(resp.getImages()[0].getImage(), 'string');
    System.assertEquals(resp.getImages()[0].getError().getErrorId(), 'string');
    System.assertEquals(resp.getImages()[0].getError().getDescription(), 'string');
    System.assertEquals(resp.getImages()[0].getClassifiers()[0].getName(), 'string');
    System.assertEquals(resp.getImages()[0].getClassifiers()[0].getClassifierId(), 'string');
    System.assertEquals(resp.getImages()[0].getClassifiers()[0].getClasses()[0].getClass(), 'string');
    System.assertEquals(resp.getImages()[0].getClassifiers()[0].getClasses()[0].getScore(),0);
    System.assertEquals(resp.getImages()[0].getClassifiers()[0].getClasses()[0].getTypeHierarchy(), 'string');
    System.assertEquals(resp.getWarnings()[0].getWarningId(), 'string');
    System.assertEquals(resp.getWarnings()[0].getDescription(), 'string');
    Test.stopTest();
  }
  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  static testMethod void testClassifyFile() {
    String body = IBMWatsonMockResponses.classifiedImages();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint('https://gateway-a.watsonplatform.net/visual-recognition/api/');
    visualRecognition.setApiKey('80bc2e663293e8d13564c260cdb4cbf891b606c0');
    Attachment att = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
      .attachment(att)
      .build();
    IBMVisualRecognitionV3Models.ClassifyOptions options = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .acceptLanguage('en')
      .imagesFile(testfile)
      .imagesFilename(att.Name)
      .imagesFileContentType(att.ContentType)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMVisualRecognitionV3Models.ClassifiedImages resp = visualRecognition.classify(options);
     System.assertEquals(resp.getImagesProcessed(),0);
    System.assertEquals(resp.getImages()[0].getSourceUrl(), 'string');
    System.assertEquals(resp.getImages()[0].getResolvedUrl(), 'string');
    Test.stopTest();
  }
  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  static testMethod void testDetectFaces() {
    String body = IBMWatsonMockResponses.detectedFaces();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);
    //visualRecognition.setEndPoint('https://gateway.watsonplatform.net/visual-recognition/api/');
    //visualRecognition.setApiKey('6d2ff6fd28d756d57f12140f9cef4e9103893a72');
    Attachment att = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile testfile=new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.DetectFacesOptions options = new IBMVisualRecognitionV3Models.DetectFacesOptionsBuilder()
      .imagesFile(testfile)
      .imagesFilename(att.Name)
      .imagesFileContentType(att.ContentType)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMVisualRecognitionV3Models.DetectedFaces resp = visualRecognition.detectFaces(options);
    System.assertEquals(resp.getImagesProcessed(),0);
    System.assertEquals(resp.getImages()[0].getImage(), 'string');
    System.assertEquals(resp.getImages()[0].getSourceUrl(), 'string');
    System.assertEquals(resp.getImages()[0].getResolvedUrl(), 'string');
    System.assertEquals(resp.getImages()[0].getFaces()[0].getAge().getMin(),0);
    System.assertEquals(resp.getImages()[0].getFaces()[0].getAge().getMax(),0);
    System.assertEquals(resp.getImages()[0].getFaces()[0].getAge().getScore(),0);
    System.assertEquals(resp.getImages()[0].getFaces()[0].getGender().getGender(), 'string');
    System.assertEquals(resp.getImages()[0].getFaces()[0].getGender().getScore(),0);
    System.assertEquals(resp.getImages()[0].getFaces()[0].getFaceLocation().getWidth(),0);
    System.assertEquals(resp.getImages()[0].getFaces()[0].getFaceLocation().getHeight(),0);
    System.assertEquals(resp.getImages()[0].getFaces()[0].getFaceLocation().getLeft(),0);
    System.assertEquals(resp.getImages()[0].getFaces()[0].getFaceLocation().getTop(),0);
    System.assertEquals(resp.getImages()[0].getError().getErrorId(), 'string');
    Test.stopTest();
  }
  /**
   *  Test Create a classifier.
   *
   */
  static testMethod void testCreateClassifier() {
    String body = IBMWatsonMockResponses.classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);
    //visualRecognition.setEndPoint('https://gateway.watsonplatform.net/visual-recognition/api/');
    //visualRecognition.setApiKey('6d2ff6fd28d756d57f12140f9cef4e9103893a72');
    Attachment att = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.CreateClassifierOptions options = new IBMVisualRecognitionV3Models.CreateClassifierOptionsBuilder()
      .name('test')
      .addClass('test', testfile)
      .negativeExamples(testfile)
      .negativeExamplesFilename('test')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMVisualRecognitionV3Models.Classifier resp = visualRecognition.createClassifier(options);
    System.assertEquals(resp.getClassifierId(), 'string');
    System.assertEquals(resp.getName(), 'string');
    System.assertEquals(resp.getOwner(), 'string');
    System.assertEquals(resp.getStatus(), 'ready');
    System.assertEquals(resp.getExplanation(), 'string');
    System.assertEquals(resp.getClasses()[0].getClass(), 'string');
    Test.stopTest();
  }
  /**
   *  Test Get a classifier.
   *
   */
  static testMethod void testGetClassifier() {
    String body = IBMWatsonMockResponses.classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);
    //visualRecognition.setEndPoint('https://gateway.watsonplatform.net/visual-recognition/api/');
    //visualRecognition.setApiKey('6d2ff6fd28d756d57f12140f9cef4e9103893a72');
    Attachment att = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.GetClassifierOptions options = new IBMVisualRecognitionV3Models.GetClassifierOptionsBuilder('classifierId')
      .classifierId('classifierId')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMVisualRecognitionV3Models.Classifier resp = visualRecognition.getClassifier(options);
    System.assertEquals(resp.getClassifierId(), 'string');
    Test.stopTest();
  }
  /**
   *  Test Update a classifier.
   *
   */
  static testMethod void testUpdateClassifier() {
    String body = IBMWatsonMockResponses.classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);
    //visualRecognition.setEndPoint('https://gateway.watsonplatform.net/visual-recognition/api/');
    //visualRecognition.setApiKey('6d2ff6fd28d756d57f12140f9cef4e9103893a72');
    Attachment att = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.UpdateClassifierOptions options = new IBMVisualRecognitionV3Models.UpdateClassifierOptionsBuilder()
      .classifierId('classifierId')
      .addClass('test', testfile)
      .negativeExamples(testfile)
      .negativeExamplesFilename('test')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMVisualRecognitionV3Models.Classifier resp = visualRecognition.updateClassifier(options);
    System.assertEquals(resp.getClassifierId(), 'string');
    Test.stopTest();
  }
  /**
   *  Test Delete a classifier.
   *
   */
  static testMethod void testDeleteClassifier() {
    String body = IBMWatsonMockResponses.classifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);
    //visualRecognition.setEndPoint('https://gateway.watsonplatform.net/visual-recognition/api/');
    //visualRecognition.setApiKey('6d2ff6fd28d756d57f12140f9cef4e9103893a72');
    Attachment att = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.DeleteClassifierOptions options = new IBMVisualRecognitionV3Models.DeleteClassifierOptionsBuilder('classifierId')
      .classifierId('classifierId')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    visualRecognition.deleteClassifier(options);
    Test.stopTest();
  }
  /**
   *  Test List classifiers.
   *
   */
  static testMethod void testListClassifiers() {
    String body = IBMWatsonMockResponses.classifiers();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);
    IBMVisualRecognitionV3Models.ListClassifiersOptions options = new IBMVisualRecognitionV3Models.ListClassifiersOptionsBuilder()
      .verbose(true)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMVisualRecognitionV3Models.Classifiers resp = visualRecognition.listClassifiers(options);
    System.assertEquals(resp.getClassifiers()[0].getClassifierId(), 'string');
    Test.stopTest();
  }

  static testMethod void testDeleteUserData() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);

    String customerId = 'salesforce_sdk_test_id';
    IBMVisualRecognitionV3Models.DeleteUserDataOptions deleteOptions = new IBMVisualRecognitionV3Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    visualRecognition.deleteUserData(deleteOptions);

    Test.stopTest();
  }
}