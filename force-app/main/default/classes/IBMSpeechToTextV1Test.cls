@isTest
private class IBMSpeechToTextV1Test {
  private static IBMSpeechToTextV1 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMSpeechToTextV1(new IBMWatsonNoAuthAuthenticator());
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

  static testMethod void testAddAudioOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.AddAudioOptions testRequestModel = new IBMSpeechToTextV1Models.AddAudioOptionsBuilder()
      .customizationId('testString')
      .audioName('testString')
      .audioResource(mockFile)
      .contentType('application/zip')
      .containedContentType('audio/alaw')
      .allowOverwrite(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.audioName());
    System.assertEquals(mockFile, testRequestModel.audioResource());
    System.assertEquals('application/zip', testRequestModel.contentType());
    System.assertEquals('audio/alaw', testRequestModel.containedContentType());
    System.assertEquals(true, testRequestModel.allowOverwrite());
    Test.stopTest();
  }
  static testMethod void testAddCorpusOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.AddCorpusOptions testRequestModel = new IBMSpeechToTextV1Models.AddCorpusOptionsBuilder()
      .customizationId('testString')
      .corpusName('testString')
      .corpusFile(mockFile)
      .allowOverwrite(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.corpusName());
    System.assertEquals(mockFile, testRequestModel.corpusFile());
    System.assertEquals(true, testRequestModel.allowOverwrite());
    Test.stopTest();
  }
  static testMethod void testAddGrammarOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.AddGrammarOptions testRequestModel = new IBMSpeechToTextV1Models.AddGrammarOptionsBuilder()
      .customizationId('testString')
      .grammarName('testString')
      .grammarFile(mockFile)
      .contentType('application/srgs')
      .allowOverwrite(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.grammarName());
    System.assertEquals(mockFile, testRequestModel.grammarFile());
    System.assertEquals('application/srgs', testRequestModel.contentType());
    System.assertEquals(true, testRequestModel.allowOverwrite());
    Test.stopTest();
  }
  static testMethod void testAddWordOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.AddWordOptions testRequestModel = new IBMSpeechToTextV1Models.AddWordOptionsBuilder()
      .customizationId('testString')
      .wordName('testString')
      .word('testString')
      .soundsLike(new List<String> { 'testString' })
      .displayAs('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.wordName());
    System.assertEquals('testString', testRequestModel.word());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.soundsLike());
    System.assertEquals('testString', testRequestModel.displayAs());
    Test.stopTest();
  }
  static testMethod void testAddWordsOptionsModel() {
    Test.startTest();
    IBMSpeechToTextV1Models.CustomWord customWordModel = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .word('testString')
      .soundsLike(new List<String> { 'testString' })
      .displayAs('testString')
      .build();

    IBMSpeechToTextV1Models.AddWordsOptions testRequestModel = new IBMSpeechToTextV1Models.AddWordsOptionsBuilder()
      .customizationId('testString')
      .words(new List<IBMSpeechToTextV1Models.CustomWord> { customWordModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals(new List<IBMSpeechToTextV1Models.CustomWord> { customWordModel }, testRequestModel.words());
    Test.stopTest();
  }
  static testMethod void testCheckJobOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.CheckJobOptions testRequestModel = new IBMSpeechToTextV1Models.CheckJobOptionsBuilder()
      .id('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.id());
    Test.stopTest();
  }
  static testMethod void testCheckJobsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.CheckJobsOptions testRequestModel = new IBMSpeechToTextV1Models.CheckJobsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testCreateAcousticModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.CreateAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.CreateAcousticModelOptionsBuilder()
      .name('testString')
      .baseModelName('ar-AR_BroadbandModel')
      .description('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('ar-AR_BroadbandModel', testRequestModel.baseModelName());
    System.assertEquals('testString', testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testCreateJobOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.CreateJobOptions testRequestModel = new IBMSpeechToTextV1Models.CreateJobOptionsBuilder()
      .audio(mockFile)
      .contentType('application/octet-stream')
      .model('ar-AR_BroadbandModel')
      .callbackUrl('testString')
      .events('recognitions.started')
      .userToken('testString')
      .resultsTtl(38)
      .languageCustomizationId('testString')
      .acousticCustomizationId('testString')
      .baseModelVersion('testString')
      .customizationWeight((Double) 72.5)
      .inactivityTimeout(38)
      .keywords(new List<String> { 'testString' })
      .keywordsThreshold((Double) 72.5)
      .maxAlternatives(38)
      .wordAlternativesThreshold((Double) 72.5)
      .wordConfidence(true)
      .timestamps(true)
      .profanityFilter(true)
      .smartFormatting(true)
      .speakerLabels(true)
      .customizationId('testString')
      .grammarName('testString')
      .redaction(true)
      .processingMetrics(true)
      .processingMetricsInterval((Double) 72.5)
      .audioMetrics(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.audio());
    System.assertEquals('application/octet-stream', testRequestModel.contentType());
    System.assertEquals('ar-AR_BroadbandModel', testRequestModel.model());
    System.assertEquals('testString', testRequestModel.callbackUrl());
    System.assertEquals('recognitions.started', testRequestModel.events());
    System.assertEquals('testString', testRequestModel.userToken());
    System.assertEquals(38, testRequestModel.resultsTtl());
    System.assertEquals('testString', testRequestModel.languageCustomizationId());
    System.assertEquals('testString', testRequestModel.acousticCustomizationId());
    System.assertEquals('testString', testRequestModel.baseModelVersion());
    System.assertEquals((Double) 72.5, testRequestModel.customizationWeight());
    System.assertEquals(38, testRequestModel.inactivityTimeout());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.keywords());
    System.assertEquals((Double) 72.5, testRequestModel.keywordsThreshold());
    System.assertEquals(38, testRequestModel.maxAlternatives());
    System.assertEquals((Double) 72.5, testRequestModel.wordAlternativesThreshold());
    System.assertEquals(true, testRequestModel.wordConfidence());
    System.assertEquals(true, testRequestModel.timestamps());
    System.assertEquals(true, testRequestModel.profanityFilter());
    System.assertEquals(true, testRequestModel.smartFormatting());
    System.assertEquals(true, testRequestModel.speakerLabels());
    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.grammarName());
    System.assertEquals(true, testRequestModel.redaction());
    System.assertEquals(true, testRequestModel.processingMetrics());
    System.assertEquals((Double) 72.5, testRequestModel.processingMetricsInterval());
    System.assertEquals(true, testRequestModel.audioMetrics());
    Test.stopTest();
  }
  static testMethod void testCreateLanguageModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.CreateLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.CreateLanguageModelOptionsBuilder()
      .name('testString')
      .baseModelName('de-DE_BroadbandModel')
      .dialect('testString')
      .description('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('de-DE_BroadbandModel', testRequestModel.baseModelName());
    System.assertEquals('testString', testRequestModel.dialect());
    System.assertEquals('testString', testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testCustomWordModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.CustomWord testRequestModel = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .word('testString')
      .soundsLike(new List<String> { 'testString' })
      .displayAs('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getWord());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.getSoundsLike());
    System.assertEquals('testString', testRequestModel.getDisplayAs());
    Test.stopTest();
  }
  static testMethod void testDeleteAcousticModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteAcousticModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testDeleteAudioOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteAudioOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteAudioOptionsBuilder()
      .customizationId('testString')
      .audioName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.audioName());
    Test.stopTest();
  }
  static testMethod void testDeleteCorpusOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteCorpusOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteCorpusOptionsBuilder()
      .customizationId('testString')
      .corpusName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.corpusName());
    Test.stopTest();
  }
  static testMethod void testDeleteGrammarOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteGrammarOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteGrammarOptionsBuilder()
      .customizationId('testString')
      .grammarName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.grammarName());
    Test.stopTest();
  }
  static testMethod void testDeleteJobOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteJobOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteJobOptionsBuilder()
      .id('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.id());
    Test.stopTest();
  }
  static testMethod void testDeleteLanguageModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteLanguageModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteUserDataOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDeleteWordOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteWordOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteWordOptionsBuilder()
      .customizationId('testString')
      .wordName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.wordName());
    Test.stopTest();
  }
  static testMethod void testGetAcousticModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.GetAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.GetAcousticModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetAudioOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.GetAudioOptions testRequestModel = new IBMSpeechToTextV1Models.GetAudioOptionsBuilder()
      .customizationId('testString')
      .audioName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.audioName());
    Test.stopTest();
  }
  static testMethod void testGetCorpusOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.GetCorpusOptions testRequestModel = new IBMSpeechToTextV1Models.GetCorpusOptionsBuilder()
      .customizationId('testString')
      .corpusName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.corpusName());
    Test.stopTest();
  }
  static testMethod void testGetGrammarOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.GetGrammarOptions testRequestModel = new IBMSpeechToTextV1Models.GetGrammarOptionsBuilder()
      .customizationId('testString')
      .grammarName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.grammarName());
    Test.stopTest();
  }
  static testMethod void testGetLanguageModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.GetLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.GetLanguageModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.GetModelOptions testRequestModel = new IBMSpeechToTextV1Models.GetModelOptionsBuilder()
      .modelId('ar-AR_BroadbandModel')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('ar-AR_BroadbandModel', testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testGetWordOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.GetWordOptions testRequestModel = new IBMSpeechToTextV1Models.GetWordOptionsBuilder()
      .customizationId('testString')
      .wordName('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.wordName());
    Test.stopTest();
  }
  static testMethod void testListAcousticModelsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListAcousticModelsOptions testRequestModel = new IBMSpeechToTextV1Models.ListAcousticModelsOptionsBuilder()
      .language('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.language());
    Test.stopTest();
  }
  static testMethod void testListAudioOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListAudioOptions testRequestModel = new IBMSpeechToTextV1Models.ListAudioOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testListCorporaOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListCorporaOptions testRequestModel = new IBMSpeechToTextV1Models.ListCorporaOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testListGrammarsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListGrammarsOptions testRequestModel = new IBMSpeechToTextV1Models.ListGrammarsOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testListLanguageModelsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListLanguageModelsOptions testRequestModel = new IBMSpeechToTextV1Models.ListLanguageModelsOptionsBuilder()
      .language('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.language());
    Test.stopTest();
  }
  static testMethod void testListModelsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListModelsOptions testRequestModel = new IBMSpeechToTextV1Models.ListModelsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListWordsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListWordsOptions testRequestModel = new IBMSpeechToTextV1Models.ListWordsOptionsBuilder()
      .customizationId('testString')
      .wordType('all')
      .xSort('alphabetical')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('all', testRequestModel.wordType());
    System.assertEquals('alphabetical', testRequestModel.xSort());
    Test.stopTest();
  }
  static testMethod void testRecognizeOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.RecognizeOptions testRequestModel = new IBMSpeechToTextV1Models.RecognizeOptionsBuilder()
      .audio(mockFile)
      .contentType('application/octet-stream')
      .model('ar-AR_BroadbandModel')
      .languageCustomizationId('testString')
      .acousticCustomizationId('testString')
      .baseModelVersion('testString')
      .customizationWeight((Double) 72.5)
      .inactivityTimeout(38)
      .keywords(new List<String> { 'testString' })
      .keywordsThreshold((Double) 72.5)
      .maxAlternatives(38)
      .wordAlternativesThreshold((Double) 72.5)
      .wordConfidence(true)
      .timestamps(true)
      .profanityFilter(true)
      .smartFormatting(true)
      .speakerLabels(true)
      .customizationId('testString')
      .grammarName('testString')
      .redaction(true)
      .audioMetrics(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.audio());
    System.assertEquals('application/octet-stream', testRequestModel.contentType());
    System.assertEquals('ar-AR_BroadbandModel', testRequestModel.model());
    System.assertEquals('testString', testRequestModel.languageCustomizationId());
    System.assertEquals('testString', testRequestModel.acousticCustomizationId());
    System.assertEquals('testString', testRequestModel.baseModelVersion());
    System.assertEquals((Double) 72.5, testRequestModel.customizationWeight());
    System.assertEquals(38, testRequestModel.inactivityTimeout());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.keywords());
    System.assertEquals((Double) 72.5, testRequestModel.keywordsThreshold());
    System.assertEquals(38, testRequestModel.maxAlternatives());
    System.assertEquals((Double) 72.5, testRequestModel.wordAlternativesThreshold());
    System.assertEquals(true, testRequestModel.wordConfidence());
    System.assertEquals(true, testRequestModel.timestamps());
    System.assertEquals(true, testRequestModel.profanityFilter());
    System.assertEquals(true, testRequestModel.smartFormatting());
    System.assertEquals(true, testRequestModel.speakerLabels());
    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.grammarName());
    System.assertEquals(true, testRequestModel.redaction());
    System.assertEquals(true, testRequestModel.audioMetrics());
    Test.stopTest();
  }
  static testMethod void testRegisterCallbackOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.RegisterCallbackOptions testRequestModel = new IBMSpeechToTextV1Models.RegisterCallbackOptionsBuilder()
      .callbackUrl('testString')
      .userSecret('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.callbackUrl());
    System.assertEquals('testString', testRequestModel.userSecret());
    Test.stopTest();
  }
  static testMethod void testResetAcousticModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ResetAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.ResetAcousticModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testResetLanguageModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ResetLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.ResetLanguageModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testTrainAcousticModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.TrainAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.TrainAcousticModelOptionsBuilder()
      .customizationId('testString')
      .customLanguageModelId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.customLanguageModelId());
    Test.stopTest();
  }
  static testMethod void testTrainLanguageModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.TrainLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.TrainLanguageModelOptionsBuilder()
      .customizationId('testString')
      .wordTypeToAdd('all')
      .customizationWeight((Double) 72.5)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('all', testRequestModel.wordTypeToAdd());
    System.assertEquals((Double) 72.5, testRequestModel.customizationWeight());
    Test.stopTest();
  }
  static testMethod void testUnregisterCallbackOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.UnregisterCallbackOptions testRequestModel = new IBMSpeechToTextV1Models.UnregisterCallbackOptionsBuilder()
      .callbackUrl('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.callbackUrl());
    Test.stopTest();
  }
  static testMethod void testUpgradeAcousticModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.UpgradeAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.UpgradeAcousticModelOptionsBuilder()
      .customizationId('testString')
      .customLanguageModelId('testString')
      .force(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.customLanguageModelId());
    System.assertEquals(true, testRequestModel.force());
    Test.stopTest();
  }
  static testMethod void testUpgradeLanguageModelOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.UpgradeLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.UpgradeLanguageModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }

  static testMethod void testListModels() {
    String mockResponseBody = '{"models": [{"name": "name", "language": "language", "rate": "4", "url": "url", "supported_features": {"custom_language_model": false, "speaker_labels": false}, "description": "description"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ListModelsOptions listModelsOptionsModel = new IBMSpeechToTextV1Models.ListModelsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.SpeechModels response = service.listModels(listModelsOptionsModel);
    System.assert(response.getModels().get(0).getName() != null);
    System.assert(response.getModels().get(0).getLanguage() != null);
    System.assert(response.getModels().get(0).getRate() != null);
    System.assert(response.getModels().get(0).getUrl() != null);
    System.assert(response.getModels().get(0).getSupportedFeatures().getCustomLanguageModel() != null);
    System.assert(response.getModels().get(0).getSupportedFeatures().getSpeakerLabels() != null);
    System.assert(response.getModels().get(0).getDescription() != null);

    Test.stopTest();
  }
  static testMethod void testGetModel() {
    String mockResponseBody = '{"name": "name", "language": "language", "rate": "4", "url": "url", "supported_features": {"custom_language_model": false, "speaker_labels": false}, "description": "description"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.GetModelOptions getModelOptionsModel = new IBMSpeechToTextV1Models.GetModelOptionsBuilder()
      .modelId('ar-AR_BroadbandModel')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.SpeechModel response = service.getModel(getModelOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getRate() != null);
    System.assert(response.getUrl() != null);
    System.assert(response.getSupportedFeatures().getCustomLanguageModel() != null);
    System.assert(response.getSupportedFeatures().getSpeakerLabels() != null);
    System.assert(response.getDescription() != null);

    Test.stopTest();
  }
  static testMethod void testRecognize() {
    String mockResponseBody = '{"results": [{"final": true, "alternatives": [{"transcript": "transcript", "confidence": "10", "timestamps": [["timestamps"]], "word_confidence": [["wordConfidence"]]}], "keywords_result": {}, "word_alternatives": [{"start_time": "9", "end_time": "7", "alternatives": [{"confidence": "10", "word": "word"}]}]}], "result_index": "11", "speaker_labels": [{"from": "5", "to": "2", "speaker": "7", "confidence": "10", "final": true}], "processing_metrics": {"processed_audio": {"received": "8", "seen_by_engine": "12", "transcription": "13", "speaker_labels": "13"}, "wall_clock_since_first_byte_received": "31", "periodic": true}, "audio_metrics": {"sampling_interval": "16", "accumulated": {"final": true, "end_time": "7", "signal_to_noise_ratio": "18", "speech_ratio": "11", "high_frequency_loss": "17", "direct_current_offset": [{"begin": "6", "end": "4", "count": "5"}], "clipping_rate": [{"begin": "6", "end": "4", "count": "5"}], "speech_level": [{"begin": "6", "end": "4", "count": "5"}], "non_speech_level": [{"begin": "6", "end": "4", "count": "5"}]}}, "warnings": ["warnings"]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.RecognizeOptions recognizeOptionsModel = new IBMSpeechToTextV1Models.RecognizeOptionsBuilder()
      .audio(mockFile)
      .contentType('application/octet-stream')
      .model('ar-AR_BroadbandModel')
      .languageCustomizationId('testString')
      .acousticCustomizationId('testString')
      .baseModelVersion('testString')
      .customizationWeight((Double) 72.5)
      .inactivityTimeout(38)
      .keywords(new List<String> { 'testString' })
      .keywordsThreshold((Double) 72.5)
      .maxAlternatives(38)
      .wordAlternativesThreshold((Double) 72.5)
      .wordConfidence(true)
      .timestamps(true)
      .profanityFilter(true)
      .smartFormatting(true)
      .speakerLabels(true)
      .customizationId('testString')
      .grammarName('testString')
      .redaction(true)
      .audioMetrics(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.SpeechRecognitionResults response = service.recognize(recognizeOptionsModel);
    System.assert(response.getResults().get(0).getXFinal() != null);
    System.assert(response.getResults().get(0).getAlternatives().get(0).getTranscript() != null);
    System.assert(response.getResults().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getAlternatives().get(0).getTimestamps().get(0) != null);
    System.assert(response.getResults().get(0).getAlternatives().get(0).getWordConfidence().get(0) != null);
    System.assert(response.getResults().get(0).getWordAlternatives().get(0).getStartTime() != null);
    System.assert(response.getResults().get(0).getWordAlternatives().get(0).getEndTime() != null);
    System.assert(response.getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getWord() != null);
    System.assert(response.getResultIndex() != null);
    System.assert(response.getSpeakerLabels().get(0).getXFrom() != null);
    System.assert(response.getSpeakerLabels().get(0).getTo() != null);
    System.assert(response.getSpeakerLabels().get(0).getSpeaker() != null);
    System.assert(response.getSpeakerLabels().get(0).getConfidence() != null);
    System.assert(response.getSpeakerLabels().get(0).getXFinal() != null);
    System.assert(response.getProcessingMetrics().getProcessedAudio().getReceived() != null);
    System.assert(response.getProcessingMetrics().getProcessedAudio().getSeenByEngine() != null);
    System.assert(response.getProcessingMetrics().getProcessedAudio().getTranscription() != null);
    System.assert(response.getProcessingMetrics().getProcessedAudio().getSpeakerLabels() != null);
    System.assert(response.getProcessingMetrics().getWallClockSinceFirstByteReceived() != null);
    System.assert(response.getProcessingMetrics().getPeriodic() != null);
    System.assert(response.getAudioMetrics().getSamplingInterval() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getXFinal() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getEndTime() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getSignalToNoiseRatio() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getSpeechRatio() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getHighFrequencyLoss() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount() != null);
    System.assert(response.getWarnings().get(0) != null);

    Test.stopTest();
  }
  static testMethod void testRegisterCallback() {
    String mockResponseBody = '{"status": "status", "url": "url"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.RegisterCallbackOptions registerCallbackOptionsModel = new IBMSpeechToTextV1Models.RegisterCallbackOptionsBuilder()
      .callbackUrl('testString')
      .userSecret('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RegisterStatus response = service.registerCallback(registerCallbackOptionsModel);
    System.assert(response.getStatus() != null);
    System.assert(response.getUrl() != null);

    Test.stopTest();
  }
  static testMethod void testUnregisterCallback() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.UnregisterCallbackOptions unregisterCallbackOptionsModel = new IBMSpeechToTextV1Models.UnregisterCallbackOptionsBuilder()
      .callbackUrl('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.unregisterCallback(unregisterCallbackOptionsModel);

    Test.stopTest();
  }
  static testMethod void testCreateJob() {
    String mockResponseBody = '{"id": "id", "status": "status", "created": "created", "updated": "updated", "url": "url", "user_token": "userToken", "results": [{"results": [{"final": true, "alternatives": [{"transcript": "transcript", "confidence": "10", "timestamps": [["timestamps"]], "word_confidence": [["wordConfidence"]]}], "keywords_result": {}, "word_alternatives": [{"start_time": "9", "end_time": "7", "alternatives": [{"confidence": "10", "word": "word"}]}]}], "result_index": "11", "speaker_labels": [{"from": "5", "to": "2", "speaker": "7", "confidence": "10", "final": true}], "processing_metrics": {"processed_audio": {"received": "8", "seen_by_engine": "12", "transcription": "13", "speaker_labels": "13"}, "wall_clock_since_first_byte_received": "31", "periodic": true}, "audio_metrics": {"sampling_interval": "16", "accumulated": {"final": true, "end_time": "7", "signal_to_noise_ratio": "18", "speech_ratio": "11", "high_frequency_loss": "17", "direct_current_offset": [{"begin": "6", "end": "4", "count": "5"}], "clipping_rate": [{"begin": "6", "end": "4", "count": "5"}], "speech_level": [{"begin": "6", "end": "4", "count": "5"}], "non_speech_level": [{"begin": "6", "end": "4", "count": "5"}]}}, "warnings": ["warnings"]}], "warnings": ["warnings"]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.CreateJobOptions createJobOptionsModel = new IBMSpeechToTextV1Models.CreateJobOptionsBuilder()
      .audio(mockFile)
      .contentType('application/octet-stream')
      .model('ar-AR_BroadbandModel')
      .callbackUrl('testString')
      .events('recognitions.started')
      .userToken('testString')
      .resultsTtl(38)
      .languageCustomizationId('testString')
      .acousticCustomizationId('testString')
      .baseModelVersion('testString')
      .customizationWeight((Double) 72.5)
      .inactivityTimeout(38)
      .keywords(new List<String> { 'testString' })
      .keywordsThreshold((Double) 72.5)
      .maxAlternatives(38)
      .wordAlternativesThreshold((Double) 72.5)
      .wordConfidence(true)
      .timestamps(true)
      .profanityFilter(true)
      .smartFormatting(true)
      .speakerLabels(true)
      .customizationId('testString')
      .grammarName('testString')
      .redaction(true)
      .processingMetrics(true)
      .processingMetricsInterval((Double) 72.5)
      .audioMetrics(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RecognitionJob response = service.createJob(createJobOptionsModel);
    System.assert(response.getId() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getUrl() != null);
    System.assert(response.getUserToken() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getXFinal() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getTranscript() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getTimestamps().get(0) != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getWordConfidence().get(0) != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getStartTime() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getEndTime() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getWord() != null);
    System.assert(response.getResults().get(0).getResultIndex() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getXFrom() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getTo() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getSpeaker() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getXFinal() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getReceived() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSeenByEngine() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getTranscription() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSpeakerLabels() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getWallClockSinceFirstByteReceived() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getPeriodic() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getSamplingInterval() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getXFinal() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getEndTime() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSignalToNoiseRatio() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechRatio() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getHighFrequencyLoss() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getWarnings().get(0) != null);
    System.assert(response.getWarnings().get(0) != null);

    Test.stopTest();
  }
  static testMethod void testCheckJobs() {
    String mockResponseBody = '{"recognitions": [{"id": "id", "status": "status", "created": "created", "updated": "updated", "url": "url", "user_token": "userToken", "results": [{"results": [{"final": true, "alternatives": [{"transcript": "transcript", "confidence": "10", "timestamps": [["timestamps"]], "word_confidence": [["wordConfidence"]]}], "keywords_result": {}, "word_alternatives": [{"start_time": "9", "end_time": "7", "alternatives": [{"confidence": "10", "word": "word"}]}]}], "result_index": "11", "speaker_labels": [{"from": "5", "to": "2", "speaker": "7", "confidence": "10", "final": true}], "processing_metrics": {"processed_audio": {"received": "8", "seen_by_engine": "12", "transcription": "13", "speaker_labels": "13"}, "wall_clock_since_first_byte_received": "31", "periodic": true}, "audio_metrics": {"sampling_interval": "16", "accumulated": {"final": true, "end_time": "7", "signal_to_noise_ratio": "18", "speech_ratio": "11", "high_frequency_loss": "17", "direct_current_offset": [{"begin": "6", "end": "4", "count": "5"}], "clipping_rate": [{"begin": "6", "end": "4", "count": "5"}], "speech_level": [{"begin": "6", "end": "4", "count": "5"}], "non_speech_level": [{"begin": "6", "end": "4", "count": "5"}]}}, "warnings": ["warnings"]}], "warnings": ["warnings"]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.CheckJobsOptions checkJobsOptionsModel = new IBMSpeechToTextV1Models.CheckJobsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RecognitionJobs response = service.checkJobs(checkJobsOptionsModel);
    System.assert(response.getRecognitions().get(0).getId() != null);
    System.assert(response.getRecognitions().get(0).getStatus() != null);
    System.assert(response.getRecognitions().get(0).getCreated() != null);
    System.assert(response.getRecognitions().get(0).getUpdated() != null);
    System.assert(response.getRecognitions().get(0).getUrl() != null);
    System.assert(response.getRecognitions().get(0).getUserToken() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getXFinal() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getAlternatives().get(0).getTranscript() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getAlternatives().get(0).getTimestamps().get(0) != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getAlternatives().get(0).getWordConfidence().get(0) != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getStartTime() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getEndTime() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getWord() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getResultIndex() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getXFrom() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getTo() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getSpeaker() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getConfidence() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getXFinal() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getReceived() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getSeenByEngine() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getTranscription() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getSpeakerLabels() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getWallClockSinceFirstByteReceived() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getPeriodic() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getSamplingInterval() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getXFinal() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getEndTime() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSignalToNoiseRatio() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechRatio() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getHighFrequencyLoss() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount() != null);
    System.assert(response.getRecognitions().get(0).getResults().get(0).getWarnings().get(0) != null);
    System.assert(response.getRecognitions().get(0).getWarnings().get(0) != null);

    Test.stopTest();
  }
  static testMethod void testCheckJob() {
    String mockResponseBody = '{"id": "id", "status": "status", "created": "created", "updated": "updated", "url": "url", "user_token": "userToken", "results": [{"results": [{"final": true, "alternatives": [{"transcript": "transcript", "confidence": "10", "timestamps": [["timestamps"]], "word_confidence": [["wordConfidence"]]}], "keywords_result": {}, "word_alternatives": [{"start_time": "9", "end_time": "7", "alternatives": [{"confidence": "10", "word": "word"}]}]}], "result_index": "11", "speaker_labels": [{"from": "5", "to": "2", "speaker": "7", "confidence": "10", "final": true}], "processing_metrics": {"processed_audio": {"received": "8", "seen_by_engine": "12", "transcription": "13", "speaker_labels": "13"}, "wall_clock_since_first_byte_received": "31", "periodic": true}, "audio_metrics": {"sampling_interval": "16", "accumulated": {"final": true, "end_time": "7", "signal_to_noise_ratio": "18", "speech_ratio": "11", "high_frequency_loss": "17", "direct_current_offset": [{"begin": "6", "end": "4", "count": "5"}], "clipping_rate": [{"begin": "6", "end": "4", "count": "5"}], "speech_level": [{"begin": "6", "end": "4", "count": "5"}], "non_speech_level": [{"begin": "6", "end": "4", "count": "5"}]}}, "warnings": ["warnings"]}], "warnings": ["warnings"]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.CheckJobOptions checkJobOptionsModel = new IBMSpeechToTextV1Models.CheckJobOptionsBuilder()
      .id('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RecognitionJob response = service.checkJob(checkJobOptionsModel);
    System.assert(response.getId() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getUrl() != null);
    System.assert(response.getUserToken() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getXFinal() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getTranscript() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getTimestamps().get(0) != null);
    System.assert(response.getResults().get(0).getResults().get(0).getAlternatives().get(0).getWordConfidence().get(0) != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getStartTime() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getEndTime() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getWord() != null);
    System.assert(response.getResults().get(0).getResultIndex() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getXFrom() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getTo() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getSpeaker() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getConfidence() != null);
    System.assert(response.getResults().get(0).getSpeakerLabels().get(0).getXFinal() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getReceived() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSeenByEngine() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getTranscription() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSpeakerLabels() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getWallClockSinceFirstByteReceived() != null);
    System.assert(response.getResults().get(0).getProcessingMetrics().getPeriodic() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getSamplingInterval() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getXFinal() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getEndTime() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSignalToNoiseRatio() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechRatio() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getHighFrequencyLoss() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd() != null);
    System.assert(response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount() != null);
    System.assert(response.getResults().get(0).getWarnings().get(0) != null);
    System.assert(response.getWarnings().get(0) != null);

    Test.stopTest();
  }
  static testMethod void testDeleteJob() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteJobOptions deleteJobOptionsModel = new IBMSpeechToTextV1Models.DeleteJobOptionsBuilder()
      .id('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteJob(deleteJobOptionsModel);

    Test.stopTest();
  }
  static testMethod void testCreateLanguageModel() {
    String mockResponseBody = '{"customization_id": "customizationId", "created": "created", "updated": "updated", "language": "language", "dialect": "dialect", "versions": ["versions"], "owner": "owner", "name": "name", "description": "description", "base_model_name": "baseModelName", "status": "status", "progress": "8", "error": "error", "warnings": "warnings"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.CreateLanguageModelOptions createLanguageModelOptionsModel = new IBMSpeechToTextV1Models.CreateLanguageModelOptionsBuilder()
      .name('testString')
      .baseModelName('de-DE_BroadbandModel')
      .dialect('testString')
      .description('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.LanguageModel response = service.createLanguageModel(createLanguageModelOptionsModel);
    System.assert(response.getCustomizationId() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getDialect() != null);
    System.assert(response.getVersions().get(0) != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getBaseModelName() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getProgress() != null);
    System.assert(response.getError() != null);
    System.assert(response.getWarnings() != null);

    Test.stopTest();
  }
  static testMethod void testListLanguageModels() {
    String mockResponseBody = '{"customizations": [{"customization_id": "customizationId", "created": "created", "updated": "updated", "language": "language", "dialect": "dialect", "versions": ["versions"], "owner": "owner", "name": "name", "description": "description", "base_model_name": "baseModelName", "status": "status", "progress": "8", "error": "error", "warnings": "warnings"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ListLanguageModelsOptions listLanguageModelsOptionsModel = new IBMSpeechToTextV1Models.ListLanguageModelsOptionsBuilder()
      .language('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.LanguageModels response = service.listLanguageModels(listLanguageModelsOptionsModel);
    System.assert(response.getCustomizations().get(0).getCustomizationId() != null);
    System.assert(response.getCustomizations().get(0).getCreated() != null);
    System.assert(response.getCustomizations().get(0).getUpdated() != null);
    System.assert(response.getCustomizations().get(0).getLanguage() != null);
    System.assert(response.getCustomizations().get(0).getDialect() != null);
    System.assert(response.getCustomizations().get(0).getVersions().get(0) != null);
    System.assert(response.getCustomizations().get(0).getOwner() != null);
    System.assert(response.getCustomizations().get(0).getName() != null);
    System.assert(response.getCustomizations().get(0).getDescription() != null);
    System.assert(response.getCustomizations().get(0).getBaseModelName() != null);
    System.assert(response.getCustomizations().get(0).getStatus() != null);
    System.assert(response.getCustomizations().get(0).getProgress() != null);
    System.assert(response.getCustomizations().get(0).getError() != null);
    System.assert(response.getCustomizations().get(0).getWarnings() != null);

    Test.stopTest();
  }
  static testMethod void testGetLanguageModel() {
    String mockResponseBody = '{"customization_id": "customizationId", "created": "created", "updated": "updated", "language": "language", "dialect": "dialect", "versions": ["versions"], "owner": "owner", "name": "name", "description": "description", "base_model_name": "baseModelName", "status": "status", "progress": "8", "error": "error", "warnings": "warnings"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.GetLanguageModelOptions getLanguageModelOptionsModel = new IBMSpeechToTextV1Models.GetLanguageModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.LanguageModel response = service.getLanguageModel(getLanguageModelOptionsModel);
    System.assert(response.getCustomizationId() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getDialect() != null);
    System.assert(response.getVersions().get(0) != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getBaseModelName() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getProgress() != null);
    System.assert(response.getError() != null);
    System.assert(response.getWarnings() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteLanguageModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteLanguageModelOptions deleteLanguageModelOptionsModel = new IBMSpeechToTextV1Models.DeleteLanguageModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteLanguageModel(deleteLanguageModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testTrainLanguageModel() {
    String mockResponseBody = '{"warnings": [{"code": "code", "message": "message"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.TrainLanguageModelOptions trainLanguageModelOptionsModel = new IBMSpeechToTextV1Models.TrainLanguageModelOptionsBuilder()
      .customizationId('testString')
      .wordTypeToAdd('all')
      .customizationWeight((Double) 72.5)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.TrainingResponse response = service.trainLanguageModel(trainLanguageModelOptionsModel);
    System.assert(response.getWarnings().get(0).getCode() != null);
    System.assert(response.getWarnings().get(0).getMessage() != null);

    Test.stopTest();
  }
  static testMethod void testResetLanguageModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ResetLanguageModelOptions resetLanguageModelOptionsModel = new IBMSpeechToTextV1Models.ResetLanguageModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.resetLanguageModel(resetLanguageModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testUpgradeLanguageModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.UpgradeLanguageModelOptions upgradeLanguageModelOptionsModel = new IBMSpeechToTextV1Models.UpgradeLanguageModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.upgradeLanguageModel(upgradeLanguageModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListCorpora() {
    String mockResponseBody = '{"corpora": [{"name": "name", "total_words": "10", "out_of_vocabulary_words": "20", "status": "status", "error": "error"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ListCorporaOptions listCorporaOptionsModel = new IBMSpeechToTextV1Models.ListCorporaOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Corpora response = service.listCorpora(listCorporaOptionsModel);
    System.assert(response.getCorpora().get(0).getName() != null);
    System.assert(response.getCorpora().get(0).getTotalWords() != null);
    System.assert(response.getCorpora().get(0).getOutOfVocabularyWords() != null);
    System.assert(response.getCorpora().get(0).getStatus() != null);
    System.assert(response.getCorpora().get(0).getError() != null);

    Test.stopTest();
  }
  static testMethod void testAddCorpus() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.AddCorpusOptions addCorpusOptionsModel = new IBMSpeechToTextV1Models.AddCorpusOptionsBuilder()
      .customizationId('testString')
      .corpusName('testString')
      .corpusFile(mockFile)
      .allowOverwrite(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addCorpus(addCorpusOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetCorpus() {
    String mockResponseBody = '{"name": "name", "total_words": "10", "out_of_vocabulary_words": "20", "status": "status", "error": "error"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.GetCorpusOptions getCorpusOptionsModel = new IBMSpeechToTextV1Models.GetCorpusOptionsBuilder()
      .customizationId('testString')
      .corpusName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Corpus response = service.getCorpus(getCorpusOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getTotalWords() != null);
    System.assert(response.getOutOfVocabularyWords() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getError() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteCorpus() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteCorpusOptions deleteCorpusOptionsModel = new IBMSpeechToTextV1Models.DeleteCorpusOptionsBuilder()
      .customizationId('testString')
      .corpusName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCorpus(deleteCorpusOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListWords() {
    String mockResponseBody = '{"words": [{"word": "word", "sounds_like": ["soundsLike"], "display_as": "displayAs", "count": "5", "source": ["source"], "error": [{"element": "element"}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ListWordsOptions listWordsOptionsModel = new IBMSpeechToTextV1Models.ListWordsOptionsBuilder()
      .customizationId('testString')
      .wordType('all')
      .xSort('alphabetical')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Words response = service.listWords(listWordsOptionsModel);
    System.assert(response.getWords().get(0).getWord() != null);
    System.assert(response.getWords().get(0).getSoundsLike().get(0) != null);
    System.assert(response.getWords().get(0).getDisplayAs() != null);
    System.assert(response.getWords().get(0).getCount() != null);
    System.assert(response.getWords().get(0).getSource().get(0) != null);
    System.assert(response.getWords().get(0).getError().get(0).getElement() != null);

    Test.stopTest();
  }
  static testMethod void testAddWords() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.CustomWord customWordModel = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .word('testString')
      .soundsLike(new List<String> { 'testString' })
      .displayAs('testString')
      .build();
    IBMSpeechToTextV1Models.AddWordsOptions addWordsOptionsModel = new IBMSpeechToTextV1Models.AddWordsOptionsBuilder()
      .customizationId('testString')
      .words(new List<IBMSpeechToTextV1Models.CustomWord> { customWordModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWords(addWordsOptionsModel);

    Test.stopTest();
  }
  static testMethod void testAddWord() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.AddWordOptions addWordOptionsModel = new IBMSpeechToTextV1Models.AddWordOptionsBuilder()
      .customizationId('testString')
      .wordName('testString')
      .word('testString')
      .soundsLike(new List<String> { 'testString' })
      .displayAs('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWord(addWordOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetWord() {
    String mockResponseBody = '{"word": "word", "sounds_like": ["soundsLike"], "display_as": "displayAs", "count": "5", "source": ["source"], "error": [{"element": "element"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.GetWordOptions getWordOptionsModel = new IBMSpeechToTextV1Models.GetWordOptionsBuilder()
      .customizationId('testString')
      .wordName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Word response = service.getWord(getWordOptionsModel);
    System.assert(response.getWord() != null);
    System.assert(response.getSoundsLike().get(0) != null);
    System.assert(response.getDisplayAs() != null);
    System.assert(response.getCount() != null);
    System.assert(response.getSource().get(0) != null);
    System.assert(response.getError().get(0).getElement() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteWord() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteWordOptions deleteWordOptionsModel = new IBMSpeechToTextV1Models.DeleteWordOptionsBuilder()
      .customizationId('testString')
      .wordName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteWord(deleteWordOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListGrammars() {
    String mockResponseBody = '{"grammars": [{"name": "name", "out_of_vocabulary_words": "20", "status": "status", "error": "error"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ListGrammarsOptions listGrammarsOptionsModel = new IBMSpeechToTextV1Models.ListGrammarsOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Grammars response = service.listGrammars(listGrammarsOptionsModel);
    System.assert(response.getGrammars().get(0).getName() != null);
    System.assert(response.getGrammars().get(0).getOutOfVocabularyWords() != null);
    System.assert(response.getGrammars().get(0).getStatus() != null);
    System.assert(response.getGrammars().get(0).getError() != null);

    Test.stopTest();
  }
  static testMethod void testAddGrammar() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.AddGrammarOptions addGrammarOptionsModel = new IBMSpeechToTextV1Models.AddGrammarOptionsBuilder()
      .customizationId('testString')
      .grammarName('testString')
      .grammarFile(mockFile)
      .contentType('application/srgs')
      .allowOverwrite(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addGrammar(addGrammarOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetGrammar() {
    String mockResponseBody = '{"name": "name", "out_of_vocabulary_words": "20", "status": "status", "error": "error"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.GetGrammarOptions getGrammarOptionsModel = new IBMSpeechToTextV1Models.GetGrammarOptionsBuilder()
      .customizationId('testString')
      .grammarName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Grammar response = service.getGrammar(getGrammarOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getOutOfVocabularyWords() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getError() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteGrammar() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteGrammarOptions deleteGrammarOptionsModel = new IBMSpeechToTextV1Models.DeleteGrammarOptionsBuilder()
      .customizationId('testString')
      .grammarName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteGrammar(deleteGrammarOptionsModel);

    Test.stopTest();
  }
  static testMethod void testCreateAcousticModel() {
    String mockResponseBody = '{"customization_id": "customizationId", "created": "created", "updated": "updated", "language": "language", "versions": ["versions"], "owner": "owner", "name": "name", "description": "description", "base_model_name": "baseModelName", "status": "status", "progress": "8", "warnings": "warnings"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.CreateAcousticModelOptions createAcousticModelOptionsModel = new IBMSpeechToTextV1Models.CreateAcousticModelOptionsBuilder()
      .name('testString')
      .baseModelName('ar-AR_BroadbandModel')
      .description('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AcousticModel response = service.createAcousticModel(createAcousticModelOptionsModel);
    System.assert(response.getCustomizationId() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getVersions().get(0) != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getBaseModelName() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getProgress() != null);
    System.assert(response.getWarnings() != null);

    Test.stopTest();
  }
  static testMethod void testListAcousticModels() {
    String mockResponseBody = '{"customizations": [{"customization_id": "customizationId", "created": "created", "updated": "updated", "language": "language", "versions": ["versions"], "owner": "owner", "name": "name", "description": "description", "base_model_name": "baseModelName", "status": "status", "progress": "8", "warnings": "warnings"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ListAcousticModelsOptions listAcousticModelsOptionsModel = new IBMSpeechToTextV1Models.ListAcousticModelsOptionsBuilder()
      .language('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AcousticModels response = service.listAcousticModels(listAcousticModelsOptionsModel);
    System.assert(response.getCustomizations().get(0).getCustomizationId() != null);
    System.assert(response.getCustomizations().get(0).getCreated() != null);
    System.assert(response.getCustomizations().get(0).getUpdated() != null);
    System.assert(response.getCustomizations().get(0).getLanguage() != null);
    System.assert(response.getCustomizations().get(0).getVersions().get(0) != null);
    System.assert(response.getCustomizations().get(0).getOwner() != null);
    System.assert(response.getCustomizations().get(0).getName() != null);
    System.assert(response.getCustomizations().get(0).getDescription() != null);
    System.assert(response.getCustomizations().get(0).getBaseModelName() != null);
    System.assert(response.getCustomizations().get(0).getStatus() != null);
    System.assert(response.getCustomizations().get(0).getProgress() != null);
    System.assert(response.getCustomizations().get(0).getWarnings() != null);

    Test.stopTest();
  }
  static testMethod void testGetAcousticModel() {
    String mockResponseBody = '{"customization_id": "customizationId", "created": "created", "updated": "updated", "language": "language", "versions": ["versions"], "owner": "owner", "name": "name", "description": "description", "base_model_name": "baseModelName", "status": "status", "progress": "8", "warnings": "warnings"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.GetAcousticModelOptions getAcousticModelOptionsModel = new IBMSpeechToTextV1Models.GetAcousticModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AcousticModel response = service.getAcousticModel(getAcousticModelOptionsModel);
    System.assert(response.getCustomizationId() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getVersions().get(0) != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getBaseModelName() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getProgress() != null);
    System.assert(response.getWarnings() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteAcousticModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteAcousticModelOptions deleteAcousticModelOptionsModel = new IBMSpeechToTextV1Models.DeleteAcousticModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteAcousticModel(deleteAcousticModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testTrainAcousticModel() {
    String mockResponseBody = '{"warnings": [{"code": "code", "message": "message"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.TrainAcousticModelOptions trainAcousticModelOptionsModel = new IBMSpeechToTextV1Models.TrainAcousticModelOptionsBuilder()
      .customizationId('testString')
      .customLanguageModelId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.TrainingResponse response = service.trainAcousticModel(trainAcousticModelOptionsModel);
    System.assert(response.getWarnings().get(0).getCode() != null);
    System.assert(response.getWarnings().get(0).getMessage() != null);

    Test.stopTest();
  }
  static testMethod void testResetAcousticModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ResetAcousticModelOptions resetAcousticModelOptionsModel = new IBMSpeechToTextV1Models.ResetAcousticModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.resetAcousticModel(resetAcousticModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testUpgradeAcousticModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.UpgradeAcousticModelOptions upgradeAcousticModelOptionsModel = new IBMSpeechToTextV1Models.UpgradeAcousticModelOptionsBuilder()
      .customizationId('testString')
      .customLanguageModelId('testString')
      .force(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.upgradeAcousticModel(upgradeAcousticModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListAudio() {
    String mockResponseBody = '{"total_minutes_of_audio": "19", "audio": [{"duration": "8", "name": "name", "details": {"type": "xType", "codec": "codec", "frequency": "9", "compression": "compression"}, "status": "status"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.ListAudioOptions listAudioOptionsModel = new IBMSpeechToTextV1Models.ListAudioOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AudioResources response = service.listAudio(listAudioOptionsModel);
    System.assert(response.getTotalMinutesOfAudio() != null);
    System.assert(response.getAudio().get(0).getDuration() != null);
    System.assert(response.getAudio().get(0).getName() != null);
    System.assert(response.getAudio().get(0).getDetails().getXType() != null);
    System.assert(response.getAudio().get(0).getDetails().getCodec() != null);
    System.assert(response.getAudio().get(0).getDetails().getFrequency() != null);
    System.assert(response.getAudio().get(0).getDetails().getCompression() != null);
    System.assert(response.getAudio().get(0).getStatus() != null);

    Test.stopTest();
  }
  static testMethod void testAddAudio() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.AddAudioOptions addAudioOptionsModel = new IBMSpeechToTextV1Models.AddAudioOptionsBuilder()
      .customizationId('testString')
      .audioName('testString')
      .audioResource(mockFile)
      .contentType('application/zip')
      .containedContentType('audio/alaw')
      .allowOverwrite(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addAudio(addAudioOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetAudio() {
    String mockResponseBody = '{"duration": "8", "name": "name", "details": {"type": "xType", "codec": "codec", "frequency": "9", "compression": "compression"}, "status": "status", "container": {"duration": "8", "name": "name", "details": {"type": "xType", "codec": "codec", "frequency": "9", "compression": "compression"}, "status": "status"}, "audio": [{"duration": "8", "name": "name", "details": {"type": "xType", "codec": "codec", "frequency": "9", "compression": "compression"}, "status": "status"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.GetAudioOptions getAudioOptionsModel = new IBMSpeechToTextV1Models.GetAudioOptionsBuilder()
      .customizationId('testString')
      .audioName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AudioListing response = service.getAudio(getAudioOptionsModel);
    System.assert(response.getDuration() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDetails().getXType() != null);
    System.assert(response.getDetails().getCodec() != null);
    System.assert(response.getDetails().getFrequency() != null);
    System.assert(response.getDetails().getCompression() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getContainer().getDuration() != null);
    System.assert(response.getContainer().getName() != null);
    System.assert(response.getContainer().getDetails().getXType() != null);
    System.assert(response.getContainer().getDetails().getCodec() != null);
    System.assert(response.getContainer().getDetails().getFrequency() != null);
    System.assert(response.getContainer().getDetails().getCompression() != null);
    System.assert(response.getContainer().getStatus() != null);
    System.assert(response.getAudio().get(0).getDuration() != null);
    System.assert(response.getAudio().get(0).getName() != null);
    System.assert(response.getAudio().get(0).getDetails().getXType() != null);
    System.assert(response.getAudio().get(0).getDetails().getCodec() != null);
    System.assert(response.getAudio().get(0).getDetails().getFrequency() != null);
    System.assert(response.getAudio().get(0).getDetails().getCompression() != null);
    System.assert(response.getAudio().get(0).getStatus() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteAudio() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMSpeechToTextV1Models.DeleteAudioOptions deleteAudioOptionsModel = new IBMSpeechToTextV1Models.DeleteAudioOptionsBuilder()
      .customizationId('testString')
      .audioName('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteAudio(deleteAudioOptionsModel);

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

    IBMSpeechToTextV1Models.DeleteUserDataOptions deleteUserDataOptionsModel = new IBMSpeechToTextV1Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(deleteUserDataOptionsModel);

    Test.stopTest();
  }
}
