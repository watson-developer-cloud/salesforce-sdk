public without sharing class IBMNaturalLanguageClassifierV1FTests {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_natural_language_classifier_v1';
  private static String VERSION_2017_05_26 = '2017-05-26';
  private static String ClassifierId = '<your classifier id>';
  private static String ClassifierText = 'How hot will it be today?';
  
  /*
  // (1) Create a classifier
  system.debug( IBMNaturalLanguageClassifierV1FTests.testCreateClassifier() );
  system.debug( IBMNaturalLanguageClassifierV1FTests.testListClassifiers() );
  
  // (2) Classify your text
  system.debug( IBMNaturalLanguageClassifierV1FTests.classify() );
  
  // (3) Get your classifier information and current status
  system.debug( IBMNaturalLanguageClassifierV1FTests.testGetClassifier() );
  
  // (4) Delete the classifier
  IBMNaturalLanguageClassifierV1FTests.testDeleteClassifier();
  system.debug( IBMNaturalLanguageClassifierV1FTests.testListClassifiers() );  
  */
  
  private static String CSVFormat(List<String> strRows){
  	String CSVBody = '';
  	for(String str: strRows){
  		CSVBody += str + '\n';
  	}
  	return CSVBody;
  }
  
  /**
   *  Test classify
   *
   */
  public static IBMNaturalLanguageClassifierV1Models.Classification testClassify(){
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint(NAMED_CREDENTIALS);
  	IBMNaturalLanguageClassifierV1Models.ClassifyOptions classifyOptions = 
  	  new IBMNaturalLanguageClassifierV1Models.ClassifyOptionsBuilder()
      .classifierId(ClassifierId)
      .text(ClassifierText)
      .build();
    IBMNaturalLanguageClassifierV1Models.Classification classification = service.classify(classifyOptions);
    return classification;
  }
  
  /**
   *  Test create a classifier
   *
   */
  public static IBMNaturalLanguageClassifierV1Models.Classifier testCreateClassifier() {
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint(NAMED_CREDENTIALS);
    
    //
    //  Metadata
    //
    Attachment TrainingMetadata = new Attachment(Body = Blob.valueOf('{"language":"en","name":"metadata.json"}'),
      Name='metadata.json',
      Description='metadata for the training file',
      ContentType='application/json');
    IBMWatsonFile training_metadata = new IBMWatsonFile.FileBuilder()
      .attachment(TrainingMetadata)
      .build();
    String training_metadata_filename = 'metadata.json';
    
    //
    //  Training data
    //
    List<String> TrainingDataContentList = new List<String>{
      'How hot is it today?,temperature',
      'Is it hot outside?,temperature',
      'Will it be uncomfortably hot?,temperature',
      'Will it be sweltering?,temperature',
      'How cold is it today?,temperature',
      'Is it cold outside?,temperature',
      'Will it be uncomfortably cold?,temperature',
      'Will it be frigid?,temperature',
      'Is it windy?,conditions',
      'Will it rain today?,conditions',
      'What are the chances for rain?,conditions',
      'Will we get snow?,conditions',
      'Are we expecting sunny conditions?,conditions',
      'Is it overcast?,conditions',
      'Will it be cloudy?,conditions',
      'How much rain will fall today?,conditions'
    };
    
    String TrainingDataContentCSVStr = CSVFormat(TrainingDataContentList);
    blob TrainingDataContentCSVBlob = Blob.valueOf(TrainingDataContentCSVStr);

    Attachment TrainingData = new Attachment(Body = TrainingDataContentCSVBlob,
      Name='weather_data_train.csv',
      Description='Each record in this sample includes the text input and one class',
      ContentType='text/csv');
    IBMWatsonFile training_data = new IBMWatsonFile.FileBuilder()
      .attachment(TrainingData)
      .build();
    String training_data_filename = 'weather_data_train.csv';
    
    //
    //  Construct options
    //
    IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions createClassifierOptions = 
      new IBMNaturalLanguageClassifierV1Models.CreateClassifierOptionsBuilder()
      .trainingMetadata(training_metadata)
      .trainingMetadataFilename(training_metadata_filename)
      .trainingData(training_data)
      .trainingDataFilename(training_data_filename)
      .build();
      
    //
    //  Create classifier request
    //
    IBMNaturalLanguageClassifierV1Models.Classifier Classifier = service.createClassifier(createClassifierOptions);
    
    return Classifier;
  }   
  
  /**
   *  Test delete a classifier
   *
   */
  public static void testDeleteClassifier(){
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint(NAMED_CREDENTIALS);
  	IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions deleteClassifierOptions = 
  	  new IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptionsBuilder(ClassifierId)
  	  .build();
  	service.deleteClassifier(deleteClassifierOptions);
  }
  
  /**
   *  Test retrieve information about an existing classifier
   */
  public static IBMNaturalLanguageClassifierV1Models.Classifier testGetClassifier(){
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint(NAMED_CREDENTIALS);
  	IBMNaturalLanguageClassifierV1Models.GetClassifierOptions getClassifierOptions = 
  	  new IBMNaturalLanguageClassifierV1Models.GetClassifierOptionsBuilder(ClassifierId)
  	  .build();
  	return service.getClassifier(getClassifierOptions);
  }
  
  /**
   *  Test retrieve information about all classifiers
   *
   */
  public static IBMNaturalLanguageClassifierV1Models.ClassifierList testListClassifiers() {
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1();
    service.setEndPoint(NAMED_CREDENTIALS);
  	IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions listClassifiersOptions = 
  	  new IBMNaturalLanguageClassifierV1Models.ListClassifiersOptionsBuilder()
  	  .build();
    return service.listClassifiers(listClassifiersOptions);
  }
}