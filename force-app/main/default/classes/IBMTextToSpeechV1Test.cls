@isTest
private class IBMTextToSpeechV1Test {
  private static String URL = 'https://stream.watsonplatform.net/text-to-speech/api';
  private static String username = 'username';
  private static String password = 'password';
  /**
   * Creates a new custom voice model.
   *
   */
   static testMethod void  testCreateVoiceModel() {
    String body = IBMWatsonMockResponses.voiceModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.CreateVoiceModelOptions options = new IBMTextToSpeechV1Models.CreateVoiceModelOptionsBuilder()
      .name('I love Apples not oranges')
      .language('de-DE')
      .description('Salesforce is making it easier for developers to use IBM Watson\'s artificial intelligence engine within the firm\'s customer relationship management software, which could lead to some exciting new technology for advisers.')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.VoiceModel resp =
      textToSpeech.createVoiceModel(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.GetVoiceOptions options = new IBMTextToSpeechV1Models.GetVoiceOptionsBuilder()
      .customizationId('customizationId')
      .voice('en-US_AllisonVoice')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Voice resp =
      textToSpeech.getVoice(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.ListVoicesOptions options = new IBMTextToSpeechV1Models.ListVoicesOptionsBuilder()
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Voices resp =
      textToSpeech.listVoices(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.DeleteVoiceModelOptions options = new IBMTextToSpeechV1Models.DeleteVoiceModelOptionsBuilder()
      .customizationId('customizationId')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    textToSpeech.deleteVoiceModel(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.GetVoiceModelOptions options = new IBMTextToSpeechV1Models.GetVoiceModelOptionsBuilder()
      .customizationId('customizationId')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.VoiceModel resp =
      textToSpeech.getVoiceModel(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.ListVoiceModelsOptions options = new IBMTextToSpeechV1Models.ListVoiceModelsOptionsBuilder()
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.VoiceModels resp =
      textToSpeech.listVoiceModels(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.Word word =new IBMTextToSpeechV1Models.Word();
    word.setWord('Hello');
    word.setTranslation('de-DE');
    IBMTextToSpeechV1Models.UpdateVoiceModelOptions options = new IBMTextToSpeechV1Models.UpdateVoiceModelOptionsBuilder()
      .customizationId('customizationId')
      .addWords(word)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    textToSpeech.updateVoiceModel(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.Translation translation = new IBMTextToSpeechV1Models.Translation();
    translation.setTranslation('de-DE');
    translation.setPartOfSpeech('Josi');
    IBMTextToSpeechV1Models.AddWordOptions options = new IBMTextToSpeechV1Models.AddWordOptionsBuilder()
      .customizationId('customizationId')
      .word('World')
      .translation('de-DE')
      .partOfSpeech('Josi')
      .translation(translation)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    textToSpeech.addWord(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.Word word =new IBMTextToSpeechV1Models.Word();
    word.setWord('Again');
    word.setTranslation('de-DE');
    word.setPartOfSpeech('Josi');
    IBMTextToSpeechV1Models.AddWordsOptions options = new IBMTextToSpeechV1Models.AddWordsOptionsBuilder('customizationId')
      .customizationId('customizationId')
      .addWords(word)
      .words(new List<IBMTextToSpeechV1Models.Word>{word})
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    textToSpeech.addWords(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.DeleteWordOptions options = new IBMTextToSpeechV1Models.DeleteWordOptionsBuilder()
      .customizationId('customizationId')
      .word('World')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    textToSpeech.deleteWord(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1('username', 'pasword');
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.GetWordOptions options = new IBMTextToSpeechV1Models.GetWordOptionsBuilder()
      .customizationId('customizationId')
      .word('World')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Translation resp =
      textToSpeech.getWord(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.ListWordsOptions options = new IBMTextToSpeechV1Models.ListWordsOptionsBuilder()
      .customizationId('customizationId')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Words resp =
      textToSpeech.listWords(options);
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
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.GetPronunciationOptions options = new IBMTextToSpeechV1Models.GetPronunciationOptionsBuilder()
      .text('Hello World')
      .voice('de-DE_DieterVoice')
      .format('ipa')
      .customizationId('customizationId')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMTextToSpeechV1Models.Pronunciation resp =
      textToSpeech.getPronunciation(options);
    System.assertEquals(resp.getPronunciation(), 'string');
    Test.stopTest();
  }

   /**
   * Streaming speech synthesis of the text in the body parameter.
   *

  static testMethod void testSynthesize() {
    String body = IBMWatsonMockResponses.profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMTextToSpeechV1 textToSpeech = new IBMTextToSpeechV1();
    if (username != null && password != null) {
      textToSpeech.setEndPoint(URL);
      textToSpeech.setUsernameAndPassword(username, password);
    }
    IBMTextToSpeechV1Models.SynthesizeOptions options = new IBMTextToSpeechV1Models.SynthesizeOptionsBuilder()
      .accept('audio/mp3')
      .Accept('audio/mp3')
      .voice('de-DE_DieterVoice')
      .customizationId('customizationId')
      .text('Hello World')
      .build();
    Blob resp =
      textToSpeech.synthesize(options);
    System.debug('IBMTextToSpeechV1FTest.testListWords(): ' + resp);
    Attachment att=new Attachment(Name='test.mp3', parentId='0011I000005Owfk',Body=resp);
    insert att;
    Test.stopTest();
  }*/
}