@isTest
private class IBMNaturalLanguageClassifierV1Test {

  /**
   *  Test phrase to classify.
   *
   */
  static testMethod void testClassify() {
    String body = IBMWatsonMockResponses.Classify();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    service.setUsernameAndPassword('username', 'password');
    String classifier_id_serialized_name = '10D41B-nlc-1'; 
    String text_serialized_name = 'How hot will it be today?';
    IBMNaturalLanguageClassifierV1Models.ClassifyOptions classifyOptions = new IBMNaturalLanguageClassifierV1Models.ClassifyOptionsBuilder()
      .classifierId(classifier_id_serialized_name)
      .text(text_serialized_name)
      .build();
    IBMNaturalLanguageClassifierV1Models.Classification classification = service.classify(classifyOptions);
    Test.stopTest();
  }
  
  /**
   *  Test send data to create and train a classifier.
   *
   */
  static testMethod void  testCreateClassifier(){
    String body = IBMWatsonMockResponses.CreateClassifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    service.setUsernameAndPassword('username', 'password');
    Attachment TrainingMetadata = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    IBMWatsonFile training_metadata_serialized_name = new IBMWatsonFile.FileBuilder()
      .attachment(TrainingMetadata)
      .build();
    Attachment TrainingData = new Attachment(Body=Blob.valueOf('test string'),
      Name='test.txt',
      Description='test description',
      ContentType='text/plain');
    String training_metadata_filename_serialized_name = 'My Classifier Metadata';
    IBMWatsonFile training_data_serialized_name = new IBMWatsonFile.FileBuilder()
      .attachment(TrainingData)
      .build();
    String training_data_filename_serialized_name = 'My Classifier Data';
    IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions createClassifierOptions = 
      new IBMNaturalLanguageClassifierV1Models.CreateClassifierOptionsBuilder()
      .trainingMetadata(training_metadata_serialized_name)
      .trainingMetadataFilename(training_metadata_filename_serialized_name)
      .trainingData(training_data_serialized_name)
      .trainingDataFilename(training_data_filename_serialized_name)
      .build();
    IBMNaturalLanguageClassifierV1Models.Classifier Classifier = service.createClassifier(createClassifierOptions);
    Test.stopTest();
  }
  
  /**
   *  Test send data to delete a classifier.
   *
   */
  static testMethod void testDeleteClassifier(){
    String body = IBMWatsonMockResponses.CreateClassifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    service.setUsernameAndPassword('username', 'password');
    String classifier_id_serialized_name = '10D41B-nlc-1';
    IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions deleteClassifierOptions = 
      new IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptionsBuilder()
      .classifierId(classifier_id_serialized_name)
      .build();
    service.deleteClassifier(deleteClassifierOptions);
    Test.stopTest();
  }
  
  static testMethod void testGetClassifier(){
    String body = IBMWatsonMockResponses.getClassifier();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service = new IBMNaturalLanguageClassifierV1('username', 'password');
    String classifier_id_serialized_name = '10D41B-nlc-1'; 
    service.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
    IBMNaturalLanguageClassifierV1Models.GetClassifierOptions getClassifierOption =
      new IBMNaturalLanguageClassifierV1Models.GetClassifierOptionsBuilder()
      .classifierId(classifier_id_serialized_name)
      .build();
    IBMNaturalLanguageClassifierV1Models.Classifier Classifier = service.getClassifier(getClassifierOption);
    Test.stopTest();
  }
  
  static testMethod void testListClassifiers(){
    String body = IBMWatsonMockResponses.listClassifiers();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions listClassifiersOptions = 
      new IBMNaturalLanguageClassifierV1Models.ListClassifiersOptionsBuilder()
      .build();
    IBMNaturalLanguageClassifierV1Models.ClassifierList Classifier = service.listClassifiers(listClassifiersOptions);
    Test.stopTest();
  }
  
}