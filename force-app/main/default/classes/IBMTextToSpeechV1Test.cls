@isTest
private class IBMTextToSpeechV1Test {
  private static String URL = 'https://stream.watsonplatform.net/text-to-speech/api';
  private static String username = 'username';
  private static String password = 'password';

  private static IBMTextToSpeechV1 service;

  static {
    service = new IBMTextToSpeechV1(new IBMWatsonNoAuthAuthenticator());
  }

  /**
   * Creates a new custom voice model.
   *
   */
   static testMethod void  testCreateVoiceModel() {
    String body = IBMWatsonMockResponses.voiceModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.CreateVoiceModelOptions options = new IBMTextToSpeechV1Models.CreateVoiceModelOptionsBuilder()
      .name('I love Apples not oranges')
      .language('de-DE')
      .description('Salesforce is making it easier for developers to use IBM Watson\'s artificial intelligence engine within the firm\'s customer relationship management software, which could lead to some exciting new technology for advisers.')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.VoiceModel resp =
      service.createVoiceModel(options);
    System.assertEquals(resp.getCustomizationId(), 'string');
    System.assertEquals(resp.getName(), 'string');
    System.assertEquals(resp.getLanguage(), 'string');
    System.assertEquals(resp.getOwner(), 'string');
    System.assertEquals(resp.getCreated(), 'string');
    System.assertEquals(resp.getLastModified(), 'string');
    System.assertEquals(resp.getDescription(), 'string');
    System.assertEquals(resp.getWords()[0].getWord(), 'string');
    System.assertEquals(resp.getWords()[0].getTranslation(), 'string');
    System.assertEquals(resp.getWords()[0].getPartOfSpeech(), 'Josi');
    Test.stopTest();
  }

  /**
   * Retrieves a specific voice available for speech synthesis.
   *
   */
  static testMethod void testGetVoice() {
    String body = IBMWatsonMockResponses.voice();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetVoiceOptions options = new IBMTextToSpeechV1Models.GetVoiceOptionsBuilder()
      .customizationId('customizationId')
      .voice('en-US_AllisonVoice')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Voice resp =
      service.getVoice(options);
    System.assertEquals(resp.getURL(), 'string');
    System.assertEquals(resp.getGender(), 'string');
    System.assertEquals(resp.getName(), 'string');
    System.assertEquals(resp.getLanguage(), 'string');
    System.assertEquals(resp.getDescription(), 'string');
    System.assertEquals(resp.getCustomizable(),true);
    System.assertEquals(resp.getSupportedFeatures().getCustomPronunciation(),true);
    System.assertEquals(resp.getSupportedFeatures().getVoiceTransformation(),true);
    System.assertEquals(resp.getCustomization().getCustomizationId(), 'string');
    Test.stopTest();
  }

  /**
   * Retrieves all voices available for speech synthesis.
   *
   */
  static testMethod void testListVoices() {
    String body = IBMWatsonMockResponses.voices();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.ListVoicesOptions options = new IBMTextToSpeechV1Models.ListVoicesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Voices resp =
      service.listVoices(options);
    System.assertEquals(resp.getVoices()[0].getURL(), 'string');
    Test.stopTest();
  }

  /**
   * Deletes a custom voice model.
   *
   */
  static testMethod void testDeleteVoiceModel() {
    String body = IBMWatsonMockResponses.profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.DeleteVoiceModelOptions options = new IBMTextToSpeechV1Models.DeleteVoiceModelOptionsBuilder()
      .customizationId('customizationId')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    service.deleteVoiceModel(options);
    Test.stopTest();
  }

  /**
   * Queries the contents of a custom voice model.
   *
   */
  static testMethod void testGetVoiceModel() {
    String body = IBMWatsonMockResponses.voiceModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetVoiceModelOptions options = new IBMTextToSpeechV1Models.GetVoiceModelOptionsBuilder()
      .customizationId('customizationId')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.VoiceModel resp =
      service.getVoiceModel(options);
    System.assertEquals(resp.getCustomizationId(), 'string');
    Test.stopTest();
  }

  /**
   * Lists all available custom voice models for a language or for all languages.
   *
   */
  static testMethod void testListVoiceModels() {
    String body = IBMWatsonMockResponses.voiceModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.ListVoiceModelsOptions options = new IBMTextToSpeechV1Models.ListVoiceModelsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.VoiceModels resp =
      service.listVoiceModels(options);
    System.assertEquals(resp.getCustomizations()[0].getCustomizationId(), 'string');
    Test.stopTest();
  }

  /**
   * Update a custom voice model.
   *
   */
  static testMethod void testUpdateVoiceModel() {
    String body = IBMWatsonMockResponses.profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.Word word =new IBMTextToSpeechV1Models.Word();
    word.setWord('Hello');
    word.setTranslation('de-DE');
    IBMTextToSpeechV1Models.UpdateVoiceModelOptions options = new IBMTextToSpeechV1Models.UpdateVoiceModelOptionsBuilder()
      .customizationId('customizationId')
      .addWords(word)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    service.updateVoiceModel(options);
    Test.stopTest();
  }

  /**
   * Add word to a custom voice model.
   *
   */
  static testMethod void testAddWord() {
    String body = IBMWatsonMockResponses.profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.Translation translation = new IBMTextToSpeechV1Models.Translation();
    translation.setTranslation('de-DE');
    translation.setPartOfSpeech('Josi');
    IBMTextToSpeechV1Models.AddWordOptions options = new IBMTextToSpeechV1Models.AddWordOptionsBuilder()
      .customizationId('customizationId')
      .word('World')
      .translation('de-DE')
      .partOfSpeech('Josi')
      .translation(translation)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    service.addWord(options);
    Test.stopTest();
  }

  /**
   * Add words to a custom voice model.
   *
   */
  static testMethod void testAddWords() {
    String body = IBMWatsonMockResponses.profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.Word word =new IBMTextToSpeechV1Models.Word();
    word.setWord('Again');
    word.setTranslation('de-DE');
    word.setPartOfSpeech('Josi');
    List<IBMTextToSpeechV1Models.Word> words = new List<IBMTextToSpeechV1Models.Word>{ word };
    IBMTextToSpeechV1Models.AddWordsOptions options = new IBMTextToSpeechV1Models.AddWordsOptionsBuilder('customizationId', words)
      .customizationId('customizationId')
      .addWords(word)
      .words(words)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    service.addWords(options);
    Test.stopTest();
  }

  /**
   * delete word from a custom voice model.
   *
   */
  static testMethod void testDeleteWord() {
    String body = IBMWatsonMockResponses.profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.DeleteWordOptions options = new IBMTextToSpeechV1Models.DeleteWordOptionsBuilder()
      .customizationId('customizationId')
      .word('World')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    service.deleteWord(options);
    Test.stopTest();
  }

  /**
   * Queries details about a word in a custom voice model.
   *
   */
  static testMethod void testGetWord() {
    String body = IBMWatsonMockResponses.word();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetWordOptions options = new IBMTextToSpeechV1Models.GetWordOptionsBuilder()
      .customizationId('customizationId')
      .word('World')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Translation resp =
      service.getWord(options);
    System.assertEquals(resp.getTranslation(), 'string');
    System.assertEquals(resp.getPartOfSpeech(), 'Josi');
    Test.stopTest();
  }

  /**
   * Queries details about the words in a custom voice model..
   *
   */
  static testMethod void testListWords() {
    String body = IBMWatsonMockResponses.words();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.ListWordsOptions options = new IBMTextToSpeechV1Models.ListWordsOptionsBuilder()
      .customizationId('customizationId')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Words resp =
      service.listWords(options);
    System.assertEquals(resp.getWords()[0].getWord(), 'string');
    Test.stopTest();
  }

  /**
   * Queries details about the words in a custom voice model..
   *
   */
  static testMethod void testGetPronunciation() {
    String body = IBMWatsonMockResponses.pronunciation();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMTextToSpeechV1Models.GetPronunciationOptions options = new IBMTextToSpeechV1Models.GetPronunciationOptionsBuilder()
      .text('Hello World')
      .voice('de-DE_DieterVoice')
      .format('ipa')
      .customizationId('customizationId')
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Pronunciation resp =
      service.getPronunciation(options);
    System.assertEquals(resp.getPronunciation(), 'string');
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

    String customerId = 'salesforce_sdk_test_id';
    IBMTextToSpeechV1Models.DeleteUserDataOptions deleteOptions = new IBMTextToSpeechV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    service.deleteUserData(deleteOptions);

    Test.stopTest();
  }
}