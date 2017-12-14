/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class IBMSpeechToTextV1Test {
  private static String URL = 'https://stream.watsonplatform.net/speech-to-text/api';    
  private static String username = 'username';
  private static String password = 'password';
  private static String callbackBaseURL = 'https://ibmdf17-watson-dxhub.my.salesforce.com/';
  
/*

-> Custom language models - Create Customization
{
  "customization_id": "d0bdc477-59e6-4e45-86f3-1a9a39664eb5"
}

-> Custom acoustic models
{
  "customization_id": "825485d7-af3f-44e7-b1ea-76130dec8a61"
}

*/


  static testMethod void getModelTest() {
    String body = IBMWatsonMockResponses.speechToTextGetModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.GetModelOptions getModelOptions = new IBMSpeechToTextV1Models.GetModelOptionsBuilder('en-US_NarrowbandModel')
      .modelId('en-US_NarrowbandModel')
      .build();
    IBMSpeechToTextV1Models.SpeechModel SpeechModel = speechToText.getModel(getModelOptions);
    getModelOptions = getModelOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void listModelsTest() {
    String body = IBMWatsonMockResponses.speechToTextListModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ListModelsOptions listModelsOptions = new IBMSpeechToTextV1Models.ListModelsOptionsBuilder()
      .build();
    IBMSpeechToTextV1Models.SpeechModels SpeechModels = speechToText.listModels(listModelsOptions);
    listModelsOptions = listModelsOptions.newBuilder().build();
    Test.stopTest();
  }
  
  static testMethod void createJobTest(){
    String body = IBMWatsonMockResponses.speechToTextCreateJob();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMWatsonFile audioFile = new IBMWatsonFile.FileBuilder()
      .name('audioTestFile.mp3')
      .description('Test audio file')
      .contentType('audio/mp3')
      .body(blob.valueOf('Test string not an audio content'))
      .build();
    IBMSpeechToTextV1Models.CreateJobOptions createJobOptions = new IBMSpeechToTextV1Models.CreateJobOptionsBuilder()
      .audio(audioFile)
      .audioFilename('audioTestFile.mp3')
      .addKeywords('TestKeyword')
      .callbackUrl(callbackBaseURL)
      .events('recognitions.started,recognitions.completed,recognitions.failed')
      .userToken('TestUserToken')
      .resultsTtl(12)
      .transferEncoding('chunked')
      .model('en-US_BroadbandModel')
      .customizationId('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .acousticCustomizationId('825485d7-af3f-44e7-b1ea-76130dec8a61')
      .customizationWeight((double)0.4)
      .inactivityTimeout(5)
      .keywords(new List<String>{'KeywordTest1', 'KeywordTest2'})
      .keywordsThreshold((double)0.4)
      .maxAlternatives(10)
      .wordAlternativesThreshold((double)0.4)
      .wordConfidence(false)
      .timestamps(false)
      .profanityFilter(true)
      .smartFormatting(true)
      .speakerLabels(true)
      .build();
    IBMSpeechToTextV1Models.RecognitionJob createJob = speechToText.createJob(createJobOptions);
    createJobOptions = createJobOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void checkJobTest() {
    String body = IBMWatsonMockResponses.speechToTextCheckJob();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.CheckJobOptionsBuilder CheckJobOptionsBuilder = new IBMSpeechToTextV1Models.CheckJobOptionsBuilder();
    IBMSpeechToTextV1Models.CheckJobOptions checkJobOptions = new IBMSpeechToTextV1Models.CheckJobOptionsBuilder('56d09f2c-e020-11e7-9ee3-33bf91161141')
      .id('56d09f2c-e020-11e7-9ee3-33bf91161141')
      .build();
    IBMSpeechToTextV1Models.RecognitionJob checkJob = speechToText.checkJob(checkJobOptions);
    Test.stopTest();
  }
    
  static testMethod void checkJobsTest() {
    String body = IBMWatsonMockResponses.speechToTextCheckJobs();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.CheckJobsOptions checkJobsOptions = new IBMSpeechToTextV1Models.CheckJobsOptionsBuilder()
      .build();
    IBMSpeechToTextV1Models.RecognitionJobs checkJobs = speechToText.checkJobs(checkJobsOptions);
    Test.stopTest();
  }
    
  static testMethod void deleteJobTest() {
    String body = IBMWatsonMockResponses.speechToTextDeleteJob();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.DeleteJobOptions deleteJobOptions = new IBMSpeechToTextV1Models.DeleteJobOptionsBuilder('56d09f2c-e020-11e7-9ee3-33bf91161141')
      .id('56d09f2c-e020-11e7-9ee3-33bf91161141')
      .build();
    speechToText.deleteJob(deleteJobOptions);
    deleteJobOptions = deleteJobOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void registerCallbackTest() {
    String body = IBMWatsonMockResponses.speechToTextRegisterCallback();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.RegisterCallbackOptions registerCallbackOptions = new IBMSpeechToTextV1Models.RegisterCallbackOptionsBuilder(callbackBaseURL)
      .callbackUrl(callbackBaseURL)
      .userSecret('UserSecretTest')
      .build();
    IBMSpeechToTextV1Models.RegisterStatus registerCallback = speechToText.registerCallback(registerCallbackOptions);
    registerCallbackOptions = registerCallbackOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void unregisterCallbackTest() {
    String body = IBMWatsonMockResponses.speechToTextUnRegisterCallback();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.UnregisterCallbackOptions unregisterCallbackOptions = new IBMSpeechToTextV1Models.UnregisterCallbackOptionsBuilder(callbackBaseURL)
      .build();
    speechToText.unregisterCallback(unregisterCallbackOptions);
    Test.stopTest();
  }
  
  static testMethod void createLanguageModelTest(){
    String body = IBMWatsonMockResponses.speechToTextCreateLanguageModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String name = 'custom_model'; 
    String baseModelName = 'en-US_BroadbandModel';
    IBMSpeechToTextV1Models.CreateLanguageModel createLanguageModel = new IBMSpeechToTextV1Models.CreateLanguageModelBuilder(name, baseModelName)
      .name(name)
      .baseModelName(baseModelName)
      .dialect('en-US')
      .description('model description')
      .build();
    IBMSpeechToTextV1Models.CreateLanguageModelOptions createLanguageModelOptions = new IBMSpeechToTextV1Models.CreateLanguageModelOptionsBuilder()
      .createLanguageModel(createLanguageModel)
      .build();
    IBMSpeechToTextV1Models.LanguageModel LanguageModel = speechToText.createLanguageModel(createLanguageModelOptions);
    createLanguageModel = createLanguageModel.newBuilder().build();
    createLanguageModelOptions = createLanguageModelOptions.newBuilder().build();
    Test.stopTest();
  }
  
  static testMethod void addWordTest(){
    String body = IBMWatsonMockResponses.speechToTextAddWord();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5'; 
    String wordName = 'tornado';
    IBMSpeechToTextV1Models.CustomWord customWord = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .addSoundsLike('tornado')
      .word('tornado')
      .soundsLike(new List<String>{'tornado', 'hurricane'})
      .displayAs('tornado')
      .build();
    IBMSpeechToTextV1Models.AddWordOptions addWordOptions = new IBMSpeechToTextV1Models.AddWordOptionsBuilder(customizationId, wordName)
      .customizationId(customizationId)
      .wordName(wordName)
      .customWord(customWord)
      .build();
    speechToText.addWord(addWordOptions);
    addWordOptions = addWordOptions.newBuilder().build();
    customWord = customWord.newBuilder().build();
    Test.stopTest();
  }

  static testMethod void addWordsTest(){
    String body = IBMWatsonMockResponses.speechToTextAddWord();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5'; 
    IBMSpeechToTextV1Models.CustomWord customWord = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .addSoundsLike('tornado')
      .word('tornado')
      .soundsLike(new List<String>{'tornado', 'hurricane'})
      .displayAs('tornado')
      .build();
    IBMSpeechToTextV1Models.CustomWords customWords = new IBMSpeechToTextV1Models.CustomWordsBuilder(new List<IBMSpeechToTextV1Models.CustomWord>{customWord})
      .addWords(customWord)
      .words(new List<IBMSpeechToTextV1Models.CustomWord>{customWord})
      .build();
    IBMSpeechToTextV1Models.AddWordsOptions addWordsOptions = new IBMSpeechToTextV1Models.AddWordsOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .customWords(customWords)
      .build();
    speechToText.addWords(addWordsOptions);
    addWordsOptions = addWordsOptions.newBuilder().build();
    customWords = customWords.newBuilder().build();
    Test.stopTest();
  }
  
  static testMethod void createAcousticModelTest() {
    String body = IBMWatsonMockResponses.speechToTextCreateAcousticModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String name = 'AccousticModelName'; 
    String baseModelName = 'en-US_BroadbandModel';
    IBMSpeechToTextV1Models.CreateAcousticModel createAcousticModel = new IBMSpeechToTextV1Models.CreateAcousticModelBuilder(name, baseModelName)
      .name(name)
      .baseModelName(baseModelName)
      .description('test')
      .build();
    IBMSpeechToTextV1Models.CreateAcousticModelOptions createAcousticModelOptions = new IBMSpeechToTextV1Models.CreateAcousticModelOptionsBuilder()
      .createAcousticModel(createAcousticModel)
      .build();
    IBMSpeechToTextV1Models.AcousticModel AcousticModel = speechToText.createAcousticModel(createAcousticModelOptions);
    createAcousticModel = createAcousticModel.newBuilder().build();
    createAcousticModelOptions = createAcousticModelOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void deleteLanguageModelTest() {
    String body = IBMWatsonMockResponses.speechToTextDeleteLanguageModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.DeleteLanguageModelOptions deleteLanguageModelOptions = new IBMSpeechToTextV1Models.DeleteLanguageModelOptionsBuilder('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .customizationId('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .build();
    speechToText.deleteLanguageModel(deleteLanguageModelOptions);
    deleteLanguageModelOptions = deleteLanguageModelOptions.newBuilder().build();
    Test.stopTest();
  }
  
  static testMethod void addAudioTest() {
    String body = IBMWatsonMockResponses.speechToTextAddAudio();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMWatsonFile audio = new IBMWatsonFile.FileBuilder()
      .name('audioTestFile.mp3')
      .description('Test audio file')
      .contentType('audio/mp3')
      .body(blob.valueOf('Test string not an audio content'))
      .build(); 
    String audioFilename = 'audioTestFile.mp3';
    String audioName = 'audio';
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.AddAudioOptions addAudioOptions = new IBMSpeechToTextV1Models.AddAudioOptionsBuilder(audio, audioFilename, customizationId, audioName)
      .audio(audio)
      .audioFilename(audioFilename)
      .customizationId(customizationId)
      .audioName(audioName)
      .containedContentType('audio/mp3')
      .build();
    speechToText.addAudio(addAudioOptions);
    addAudioOptions = addAudioOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void getLanguageModelTest() {
    String body = IBMWatsonMockResponses.speechToTextGetLanguageModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.GetLanguageModelOptions getLanguageModelOptions = new IBMSpeechToTextV1Models.GetLanguageModelOptionsBuilder('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .customizationId('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .build();
    IBMSpeechToTextV1Models.LanguageModel LanguageModel = speechToText.getLanguageModel(getLanguageModelOptions);
    getLanguageModelOptions = getLanguageModelOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void listLanguageModelsTest() {
    String body = IBMWatsonMockResponses.speechToTextListLanguageModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ListLanguageModelsOptions listLanguageModelsOptions = new IBMSpeechToTextV1Models.ListLanguageModelsOptionsBuilder()
      .language('en-US')
      .build();
    IBMSpeechToTextV1Models.LanguageModels LanguageModels = speechToText.listLanguageModels(listLanguageModelsOptions);
    listLanguageModelsOptions = listLanguageModelsOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void resetLanguageModelTest() {
    String body = IBMWatsonMockResponses.speechToTextListLanguageModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ResetLanguageModelOptions resetLanguageModelOptions = new IBMSpeechToTextV1Models.ResetLanguageModelOptionsBuilder('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .customizationId('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .build();
    speechToText.resetLanguageModel(resetLanguageModelOptions);
    resetLanguageModelOptions = resetLanguageModelOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void trainLanguageModelTest() {
    String body = IBMWatsonMockResponses.speechToTextTrainLanguageModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.TrainLanguageModelOptions trainLanguageModelOptions = new IBMSpeechToTextV1Models.TrainLanguageModelOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .build();
    speechToText.trainLanguageModel(trainLanguageModelOptions);
    Test.stopTest();
  }
    
  static testMethod void upgradeLanguageModelTest() {
    String body = IBMWatsonMockResponses.speechToTextUpgradeLanguageModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.UpgradeLanguageModelOptions upgradeLanguageModelOptions = new IBMSpeechToTextV1Models.UpgradeLanguageModelOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .build();
    speechToText.upgradeLanguageModel(upgradeLanguageModelOptions);
    Test.stopTest();
  }
    
  static testMethod void addCorpusTest() {
    String body = IBMWatsonMockResponses.speechToTextDeleteCorpus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String corpusName = 'custom_corpus';
    IBMWatsonFile corpusFile = new IBMWatsonFile.FileBuilder()
      .name('corpora.txt')
      .description('Test corpora file')
      .contentType('text/plain')
      .body(blob.valueOf('What causes autoimmune hepatitis?'))
      .build();
    IBMSpeechToTextV1Models.AddCorpusOptions addCorpusOptions = new IBMSpeechToTextV1Models.AddCorpusOptionsBuilder(customizationId, corpusName, corpusFile)
      .customizationId(customizationId)
      .corpusName(corpusName)
      .allowOverwrite(true)
      .corpusFile(corpusFile)
      .corpusFilename('corpora.txt')
      .corpusFileContentType('text/plain')
      .build();
    speechToText.addCorpus(addCorpusOptions);
    addCorpusOptions = addCorpusOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void deleteCorpusTest() {
    String body = IBMWatsonMockResponses.speechToTextDeleteCorpus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String corpusName = 'custom_corpus';
    IBMSpeechToTextV1Models.DeleteCorpusOptions deleteCorpusOptions = new IBMSpeechToTextV1Models.DeleteCorpusOptionsBuilder(customizationId, corpusName)
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    speechToText.deleteCorpus(deleteCorpusOptions);
    deleteCorpusOptions = deleteCorpusOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void getCorpusTest() {
    String body = IBMWatsonMockResponses.speechToTextGetCorpus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String corpusName = 'custom_corpus';
    IBMSpeechToTextV1Models.GetCorpusOptions getCorpusOptions = new IBMSpeechToTextV1Models.GetCorpusOptionsBuilder(customizationId, corpusName)
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    IBMSpeechToTextV1Models.Corpus Corpus = speechToText.getCorpus(getCorpusOptions);
    getCorpusOptions = getCorpusOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void listCorporaTest() {
    String body = IBMWatsonMockResponses.speechToTextListCorpora();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ListCorporaOptions listCorporaOptions = new IBMSpeechToTextV1Models.ListCorporaOptionsBuilder('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .customizationId('d0bdc477-59e6-4e45-86f3-1a9a39664eb5')
      .build();
    IBMSpeechToTextV1Models.Corpora Corpora = speechToText.listCorpora(listCorporaOptions);
    listCorporaOptions = listCorporaOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void deleteWordTest() {
    String body = IBMWatsonMockResponses.speechToTextDeleteWord();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String wordName = 'WatsonSDK';
    IBMSpeechToTextV1Models.DeleteWordOptions deleteWordOptions = new IBMSpeechToTextV1Models.DeleteWordOptionsBuilder(customizationId, wordName)
      .customizationId(customizationId)
      .wordName(wordName)
      .build();
    speechToText.deleteWord(deleteWordOptions);
    deleteWordOptions = deleteWordOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void getWordTest() {
    String body = IBMWatsonMockResponses.speechToTextGetWord();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String wordName = 'WatsonSDK';
    IBMSpeechToTextV1Models.GetWordOptions getWordOptions = new IBMSpeechToTextV1Models.GetWordOptionsBuilder(customizationId, wordName)
      .customizationId(customizationId)
      .wordName(wordName)
      .build();
    IBMSpeechToTextV1Models.Word WordResult =  speechToText.getWord(getWordOptions);
    getWordOptions = getWordOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void listWordsTest() {
    String body = IBMWatsonMockResponses.speechToTextGetWord();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String wordType = 'all';
    String sortField = 'count';
    IBMSpeechToTextV1Models.ListWordsOptions listWordsOptions = new IBMSpeechToTextV1Models.ListWordsOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .wordType(wordType)
      .sortField(sortField)
      .build();
    IBMSpeechToTextV1Models.Words WordList = speechToText.listWords(listWordsOptions);
    listWordsOptions = listWordsOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void deleteAcousticModelTest() {
    String body = IBMWatsonMockResponses.speechToTextDeleteAcousticModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.DeleteAcousticModelOptions deleteAcousticModelOptions = new IBMSpeechToTextV1Models.DeleteAcousticModelOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .build();
    speechToText.deleteAcousticModel(deleteAcousticModelOptions);
    deleteAcousticModelOptions = deleteAcousticModelOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void getAcousticModelTest() {
    String body = IBMWatsonMockResponses.speechToTextGetAcousticModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.GetAcousticModelOptions getAcousticModelOptions = new IBMSpeechToTextV1Models.GetAcousticModelOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .build();
    IBMSpeechToTextV1Models.AcousticModel AcousticModel = speechToText.getAcousticModel(getAcousticModelOptions);
    getAcousticModelOptions = getAcousticModelOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void listAcousticModelsTest() {
    String body = IBMWatsonMockResponses.speechToTextListAcousticModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ListAcousticModelsOptions listAcousticModelsOptions = new IBMSpeechToTextV1Models.ListAcousticModelsOptionsBuilder()
      .language('en-US')
      .build();
    IBMSpeechToTextV1Models.AcousticModels AcousticModels = speechToText.listAcousticModels(listAcousticModelsOptions);
    listAcousticModelsOptions = listAcousticModelsOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void resetAcousticModelTest() {
    String body = IBMWatsonMockResponses.speechToTextResetAcousticModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.ResetAcousticModelOptions resetAcousticModelOptions = new IBMSpeechToTextV1Models.ResetAcousticModelOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .build();
    speechToText.resetAcousticModel(resetAcousticModelOptions);
    resetAcousticModelOptions = resetAcousticModelOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void trainAcousticModelTest() {
    String body = IBMWatsonMockResponses.speechToTextTrainAcousticModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.TrainAcousticModelOptions trainAcousticModelOptions = new IBMSpeechToTextV1Models.TrainAcousticModelOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .customLanguageModelId('custom_language')
      .build();
    speechToText.trainAcousticModel(trainAcousticModelOptions);
    Test.stopTest();
  }
    
  static testMethod void deleteAudioTest() {
    String body = IBMWatsonMockResponses.speechToTextDeleteAudio();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String audioName = 'WatsonSDKAudio';
    IBMSpeechToTextV1Models.DeleteAudioOptions deleteAudioOptions = new IBMSpeechToTextV1Models.DeleteAudioOptionsBuilder(customizationId, audioName)
      .customizationId(customizationId)
      .audioName(audioName)
      .build();
    speechToText.deleteAudio(deleteAudioOptions);
    deleteAudioOptions = deleteAudioOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void getAudioTest() {
    String body = IBMWatsonMockResponses.speechToTextGetAudio();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    String audioName = 'WatsonSDKAudio';
    IBMSpeechToTextV1Models.GetAudioOptions getAudioOptions = new IBMSpeechToTextV1Models.GetAudioOptionsBuilder(customizationId, audioName)
      .customizationId(customizationId)
      .audioName(audioName)
      .build();
    IBMSpeechToTextV1Models.AudioListing AudioListing = speechToText.getAudio(getAudioOptions);
    getAudioOptions = getAudioOptions.newBuilder().build();
    Test.stopTest();
  }
    
  static testMethod void listAudioTest() {
    String body = IBMWatsonMockResponses.speechToTextGetAudio();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.ListAudioOptions listAudioOptions = new IBMSpeechToTextV1Models.ListAudioOptionsBuilder(customizationId)
      .customizationId(customizationId)
      .build();
    IBMSpeechToTextV1Models.AudioResources AudioResources = speechToText.listAudio(listAudioOptions);
    listAudioOptions = listAudioOptions.newBuilder().build();
    Test.stopTest();
  }
  
  static testMethod void recognizeTest(){
    String body = IBMWatsonMockResponses.speechToTextRecognize();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMWatsonFile audio = new IBMWatsonFile.FileBuilder()
      .name('audioTestFile.mp3')
      .description('Test audio file')
      .contentType('audio/mp3')
      .body(blob.valueOf('Test string not an audio content'))
      .build(); 
    String audioFilename = 'audioTestFile.mp3';
    String fileContentType = 'audio/mp3';
    String customizationId = 'd0bdc477-59e6-4e45-86f3-1a9a39664eb5';
    IBMSpeechToTextV1Models.RecognizeOptions recognizeOptions = new IBMSpeechToTextV1Models.RecognizeOptionsBuilder(audio, audioFilename, fileContentType)
      .audio(audio)
      .audioFilename(audioFilename)
      .fileContentType(fileContentType)
      .continuous(false)
      .maxAlternatives(5)
      .timestamps(true)
      .wordConfidence(true)
      .inactivityTimeout(10)
      .model('TestModel')
      .interimResults(true)
      .keywords(false)
      .keywordsThreshold((double)0.4)
      .wordAlternativesThreshold((double)0.4)
      .profanityFilter(true)
      .smartFormatting(true)
      .customizationId(customizationId)
      .speakerLabels(true)
      .build();
    IBMSpeechToTextV1Models.SpeechResults SpeechResults = speechToText.recognize(recognizeOptions);
    recognizeOptions = recognizeOptions.newBuilder().build();
    Test.stopTest();
  }
}