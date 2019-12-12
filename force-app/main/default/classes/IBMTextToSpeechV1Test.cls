@isTest
private class IBMTextToSpeechV1Test {
  private static IBMTextToSpeechV1 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMTextToSpeechV1(new IBMWatsonNoAuthAuthenticator());
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

  static testMethod void testAddWordOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.AddWordOptions testRequestModel = new IBMTextToSpeechV1Models.AddWordOptionsBuilder()
      .customizationId('testString')
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.word());
    System.assertEquals('testString', testRequestModel.translation());
    System.assertEquals('Dosi', testRequestModel.partOfSpeech());
    Test.stopTest();
  }
  static testMethod void testAddWordsOptionsModel() {
    Test.startTest();
    IBMTextToSpeechV1Models.Word wordModel = new IBMTextToSpeechV1Models.WordBuilder()
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();

    IBMTextToSpeechV1Models.AddWordsOptions testRequestModel = new IBMTextToSpeechV1Models.AddWordsOptionsBuilder()
      .customizationId('testString')
      .words(new List<IBMTextToSpeechV1Models.Word> { wordModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals(new List<IBMTextToSpeechV1Models.Word> { wordModel }, testRequestModel.words());
    Test.stopTest();
  }
  static testMethod void testCreateVoiceModelOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.CreateVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.CreateVoiceModelOptionsBuilder()
      .name('testString')
      .language('de-DE')
      .description('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('de-DE', testRequestModel.language());
    System.assertEquals('testString', testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.DeleteUserDataOptions testRequestModel = new IBMTextToSpeechV1Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDeleteVoiceModelOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.DeleteVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.DeleteVoiceModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testDeleteWordOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.DeleteWordOptions testRequestModel = new IBMTextToSpeechV1Models.DeleteWordOptionsBuilder()
      .customizationId('testString')
      .word('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.word());
    Test.stopTest();
  }
  static testMethod void testGetPronunciationOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.GetPronunciationOptions testRequestModel = new IBMTextToSpeechV1Models.GetPronunciationOptionsBuilder()
      .text('testString')
      .voice('de-DE_BirgitVoice')
      .format('ibm')
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals('de-DE_BirgitVoice', testRequestModel.voice());
    System.assertEquals('ibm', testRequestModel.format());
    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetVoiceModelOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.GetVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.GetVoiceModelOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetVoiceOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.GetVoiceOptions testRequestModel = new IBMTextToSpeechV1Models.GetVoiceOptionsBuilder()
      .voice('de-DE_BirgitVoice')
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('de-DE_BirgitVoice', testRequestModel.voice());
    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetWordOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.GetWordOptions testRequestModel = new IBMTextToSpeechV1Models.GetWordOptionsBuilder()
      .customizationId('testString')
      .word('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.word());
    Test.stopTest();
  }
  static testMethod void testListVoiceModelsOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.ListVoiceModelsOptions testRequestModel = new IBMTextToSpeechV1Models.ListVoiceModelsOptionsBuilder()
      .language('de-DE')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('de-DE', testRequestModel.language());
    Test.stopTest();
  }
  static testMethod void testListVoicesOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.ListVoicesOptions testRequestModel = new IBMTextToSpeechV1Models.ListVoicesOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListWordsOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.ListWordsOptions testRequestModel = new IBMTextToSpeechV1Models.ListWordsOptionsBuilder()
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testSynthesizeOptionsModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.SynthesizeOptions testRequestModel = new IBMTextToSpeechV1Models.SynthesizeOptionsBuilder()
      .text('testString')
      .accept('audio/basic')
      .voice('de-DE_BirgitVoice')
      .customizationId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals('audio/basic', testRequestModel.accept());
    System.assertEquals('de-DE_BirgitVoice', testRequestModel.voice());
    System.assertEquals('testString', testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testTranslationModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.Translation testRequestModel = new IBMTextToSpeechV1Models.TranslationBuilder()
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getTranslation());
    System.assertEquals('Dosi', testRequestModel.getPartOfSpeech());
    Test.stopTest();
  }
  static testMethod void testUpdateVoiceModelOptionsModel() {
    Test.startTest();
    IBMTextToSpeechV1Models.Word wordModel = new IBMTextToSpeechV1Models.WordBuilder()
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();

    IBMTextToSpeechV1Models.UpdateVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.UpdateVoiceModelOptionsBuilder()
      .customizationId('testString')
      .name('testString')
      .description('testString')
      .words(new List<IBMTextToSpeechV1Models.Word> { wordModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customizationId());
    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals(new List<IBMTextToSpeechV1Models.Word> { wordModel }, testRequestModel.words());
    Test.stopTest();
  }
  static testMethod void testWordModel() {
    Test.startTest();

    IBMTextToSpeechV1Models.Word testRequestModel = new IBMTextToSpeechV1Models.WordBuilder()
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getWord());
    System.assertEquals('testString', testRequestModel.getTranslation());
    System.assertEquals('Dosi', testRequestModel.getPartOfSpeech());
    Test.stopTest();
  }
  static testMethod void testWordsModel() {
    Test.startTest();
    IBMTextToSpeechV1Models.Word wordModel = new IBMTextToSpeechV1Models.WordBuilder()
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();

    IBMTextToSpeechV1Models.Words testRequestModel = new IBMTextToSpeechV1Models.WordsBuilder()
      .words(new List<IBMTextToSpeechV1Models.Word> { wordModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<IBMTextToSpeechV1Models.Word> { wordModel }, testRequestModel.getWords());
    Test.stopTest();
  }

  static testMethod void testListVoices() {
    String mockResponseBody = '{"voices": [{"url": "url", "gender": "gender", "name": "name", "language": "language", "description": "description", "customizable": true, "supported_features": {"custom_pronunciation": false, "voice_transformation": false}, "customization": {"customization_id": "customizationId", "name": "name", "language": "language", "owner": "owner", "created": "created", "last_modified": "lastModified", "description": "description", "words": [{"word": "word", "translation": "translation", "part_of_speech": "partOfSpeech"}]}}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.ListVoicesOptions listVoicesOptionsModel = new IBMTextToSpeechV1Models.ListVoicesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Voices response = service.listVoices(listVoicesOptionsModel);
    System.assert(response.getVoices().get(0).getUrl() != null);
    System.assert(response.getVoices().get(0).getGender() != null);
    System.assert(response.getVoices().get(0).getName() != null);
    System.assert(response.getVoices().get(0).getLanguage() != null);
    System.assert(response.getVoices().get(0).getDescription() != null);
    System.assert(response.getVoices().get(0).getCustomizable() != null);
    System.assert(response.getVoices().get(0).getSupportedFeatures().getCustomPronunciation() != null);
    System.assert(response.getVoices().get(0).getSupportedFeatures().getVoiceTransformation() != null);
    System.assert(response.getVoices().get(0).getCustomization().getCustomizationId() != null);
    System.assert(response.getVoices().get(0).getCustomization().getName() != null);
    System.assert(response.getVoices().get(0).getCustomization().getLanguage() != null);
    System.assert(response.getVoices().get(0).getCustomization().getOwner() != null);
    System.assert(response.getVoices().get(0).getCustomization().getCreated() != null);
    System.assert(response.getVoices().get(0).getCustomization().getLastModified() != null);
    System.assert(response.getVoices().get(0).getCustomization().getDescription() != null);
    System.assert(response.getVoices().get(0).getCustomization().getWords().get(0).getWord() != null);
    System.assert(response.getVoices().get(0).getCustomization().getWords().get(0).getTranslation() != null);
    System.assert(response.getVoices().get(0).getCustomization().getWords().get(0).getPartOfSpeech() != null);

    Test.stopTest();
  }
  static testMethod void testGetVoice() {
    String mockResponseBody = '{"url": "url", "gender": "gender", "name": "name", "language": "language", "description": "description", "customizable": true, "supported_features": {"custom_pronunciation": false, "voice_transformation": false}, "customization": {"customization_id": "customizationId", "name": "name", "language": "language", "owner": "owner", "created": "created", "last_modified": "lastModified", "description": "description", "words": [{"word": "word", "translation": "translation", "part_of_speech": "partOfSpeech"}]}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetVoiceOptions getVoiceOptionsModel = new IBMTextToSpeechV1Models.GetVoiceOptionsBuilder()
      .voice('de-DE_BirgitVoice')
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Voice response = service.getVoice(getVoiceOptionsModel);
    System.assert(response.getUrl() != null);
    System.assert(response.getGender() != null);
    System.assert(response.getName() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCustomizable() != null);
    System.assert(response.getSupportedFeatures().getCustomPronunciation() != null);
    System.assert(response.getSupportedFeatures().getVoiceTransformation() != null);
    System.assert(response.getCustomization().getCustomizationId() != null);
    System.assert(response.getCustomization().getName() != null);
    System.assert(response.getCustomization().getLanguage() != null);
    System.assert(response.getCustomization().getOwner() != null);
    System.assert(response.getCustomization().getCreated() != null);
    System.assert(response.getCustomization().getLastModified() != null);
    System.assert(response.getCustomization().getDescription() != null);
    System.assert(response.getCustomization().getWords().get(0).getWord() != null);
    System.assert(response.getCustomization().getWords().get(0).getTranslation() != null);
    System.assert(response.getCustomization().getWords().get(0).getPartOfSpeech() != null);

    Test.stopTest();
  }
  static testMethod void testSynthesize() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.SynthesizeOptions synthesizeOptionsModel = new IBMTextToSpeechV1Models.SynthesizeOptionsBuilder()
      .text('testString')
      .accept('audio/basic')
      .voice('de-DE_BirgitVoice')
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.synthesize(synthesizeOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetPronunciation() {
    String mockResponseBody = '{"pronunciation": "pronunciation"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetPronunciationOptions getPronunciationOptionsModel = new IBMTextToSpeechV1Models.GetPronunciationOptionsBuilder()
      .text('testString')
      .voice('de-DE_BirgitVoice')
      .format('ibm')
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Pronunciation response = service.getPronunciation(getPronunciationOptionsModel);
    System.assert(response.getPronunciation() != null);

    Test.stopTest();
  }
  static testMethod void testCreateVoiceModel() {
    String mockResponseBody = '{"customization_id": "customizationId", "name": "name", "language": "language", "owner": "owner", "created": "created", "last_modified": "lastModified", "description": "description", "words": [{"word": "word", "translation": "translation", "part_of_speech": "partOfSpeech"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.CreateVoiceModelOptions createVoiceModelOptionsModel = new IBMTextToSpeechV1Models.CreateVoiceModelOptionsBuilder()
      .name('testString')
      .language('de-DE')
      .description('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.VoiceModel response = service.createVoiceModel(createVoiceModelOptionsModel);
    System.assert(response.getCustomizationId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getLastModified() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getWords().get(0).getWord() != null);
    System.assert(response.getWords().get(0).getTranslation() != null);
    System.assert(response.getWords().get(0).getPartOfSpeech() != null);

    Test.stopTest();
  }
  static testMethod void testListVoiceModels() {
    String mockResponseBody = '{"customizations": [{"customization_id": "customizationId", "name": "name", "language": "language", "owner": "owner", "created": "created", "last_modified": "lastModified", "description": "description", "words": [{"word": "word", "translation": "translation", "part_of_speech": "partOfSpeech"}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.ListVoiceModelsOptions listVoiceModelsOptionsModel = new IBMTextToSpeechV1Models.ListVoiceModelsOptionsBuilder()
      .language('de-DE')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.VoiceModels response = service.listVoiceModels(listVoiceModelsOptionsModel);
    System.assert(response.getCustomizations().get(0).getCustomizationId() != null);
    System.assert(response.getCustomizations().get(0).getName() != null);
    System.assert(response.getCustomizations().get(0).getLanguage() != null);
    System.assert(response.getCustomizations().get(0).getOwner() != null);
    System.assert(response.getCustomizations().get(0).getCreated() != null);
    System.assert(response.getCustomizations().get(0).getLastModified() != null);
    System.assert(response.getCustomizations().get(0).getDescription() != null);
    System.assert(response.getCustomizations().get(0).getWords().get(0).getWord() != null);
    System.assert(response.getCustomizations().get(0).getWords().get(0).getTranslation() != null);
    System.assert(response.getCustomizations().get(0).getWords().get(0).getPartOfSpeech() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateVoiceModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.Word wordModel = new IBMTextToSpeechV1Models.WordBuilder()
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();
    IBMTextToSpeechV1Models.UpdateVoiceModelOptions updateVoiceModelOptionsModel = new IBMTextToSpeechV1Models.UpdateVoiceModelOptionsBuilder()
      .customizationId('testString')
      .name('testString')
      .description('testString')
      .words(new List<IBMTextToSpeechV1Models.Word> { wordModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    service.updateVoiceModel(updateVoiceModelOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetVoiceModel() {
    String mockResponseBody = '{"customization_id": "customizationId", "name": "name", "language": "language", "owner": "owner", "created": "created", "last_modified": "lastModified", "description": "description", "words": [{"word": "word", "translation": "translation", "part_of_speech": "partOfSpeech"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetVoiceModelOptions getVoiceModelOptionsModel = new IBMTextToSpeechV1Models.GetVoiceModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.VoiceModel response = service.getVoiceModel(getVoiceModelOptionsModel);
    System.assert(response.getCustomizationId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getOwner() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getLastModified() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getWords().get(0).getWord() != null);
    System.assert(response.getWords().get(0).getTranslation() != null);
    System.assert(response.getWords().get(0).getPartOfSpeech() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteVoiceModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.DeleteVoiceModelOptions deleteVoiceModelOptionsModel = new IBMTextToSpeechV1Models.DeleteVoiceModelOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteVoiceModel(deleteVoiceModelOptionsModel);

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

    IBMTextToSpeechV1Models.Word wordModel = new IBMTextToSpeechV1Models.WordBuilder()
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .build();
    IBMTextToSpeechV1Models.AddWordsOptions addWordsOptionsModel = new IBMTextToSpeechV1Models.AddWordsOptionsBuilder()
      .customizationId('testString')
      .words(new List<IBMTextToSpeechV1Models.Word> { wordModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWords(addWordsOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListWords() {
    String mockResponseBody = '{"words": [{"word": "word", "translation": "translation", "part_of_speech": "partOfSpeech"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.ListWordsOptions listWordsOptionsModel = new IBMTextToSpeechV1Models.ListWordsOptionsBuilder()
      .customizationId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Words response = service.listWords(listWordsOptionsModel);
    System.assert(response.getWords().get(0).getWord() != null);
    System.assert(response.getWords().get(0).getTranslation() != null);
    System.assert(response.getWords().get(0).getPartOfSpeech() != null);

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

    IBMTextToSpeechV1Models.AddWordOptions addWordOptionsModel = new IBMTextToSpeechV1Models.AddWordOptionsBuilder()
      .customizationId('testString')
      .word('testString')
      .translation('testString')
      .partOfSpeech('Dosi')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWord(addWordOptionsModel);

    Test.stopTest();
  }
  static testMethod void testGetWord() {
    String mockResponseBody = '{"translation": "translation", "part_of_speech": "partOfSpeech"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetWordOptions getWordOptionsModel = new IBMTextToSpeechV1Models.GetWordOptionsBuilder()
      .customizationId('testString')
      .word('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Translation response = service.getWord(getWordOptionsModel);
    System.assert(response.getTranslation() != null);
    System.assert(response.getPartOfSpeech() != null);

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

    IBMTextToSpeechV1Models.DeleteWordOptions deleteWordOptionsModel = new IBMTextToSpeechV1Models.DeleteWordOptionsBuilder()
      .customizationId('testString')
      .word('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteWord(deleteWordOptionsModel);

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

    IBMTextToSpeechV1Models.DeleteUserDataOptions deleteUserDataOptionsModel = new IBMTextToSpeechV1Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(deleteUserDataOptionsModel);

    Test.stopTest();
  }
}
