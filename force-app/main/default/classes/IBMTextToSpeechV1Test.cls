@isTest
private class IBMTextToSpeechV1Test {
  private static IBMTextToSpeechV1 service;

  static {
    service = new IBMTextToSpeechV1(new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testAddWordOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String word = 'word';
    String translation = 'translation';
    String partOfSpeech = 'part_of_speech';

    IBMTextToSpeechV1Models.AddWordOptions testRequestModel = new IBMTextToSpeechV1Models.AddWordOptionsBuilder()
      .customizationId(customizationId)
      .word(word)
      .translation(translation)
      .partOfSpeech(partOfSpeech)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(word, testRequestModel.word());
    System.assertEquals(translation, testRequestModel.translation());
    System.assertEquals(partOfSpeech, testRequestModel.partOfSpeech());
    Test.stopTest();
  }
  static testMethod void testAddWordsOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String word = 'word';
    String translation = 'translation';
    IBMTextToSpeechV1Models.Word wordsItem = new IBMTextToSpeechV1Models.WordBuilder()
      .word(word)
      .translation(translation)
      .build();
    List<IBMTextToSpeechV1Models.Word> words = new List<IBMTextToSpeechV1Models.Word> { wordsItem } ;

    IBMTextToSpeechV1Models.AddWordsOptions testRequestModel = new IBMTextToSpeechV1Models.AddWordsOptionsBuilder()
      .customizationId(customizationId)
      .words(words)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(words, testRequestModel.words());
    Test.stopTest();
  }
  static testMethod void testCreateVoiceModelOptionsModel() {
    Test.startTest();
    String name = 'name';
    String language = 'language';
    String description = 'description';

    IBMTextToSpeechV1Models.CreateVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.CreateVoiceModelOptionsBuilder()
      .name(name)
      .language(language)
      .description(description)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(language, testRequestModel.language());
    System.assertEquals(description, testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();
    String customerId = 'customer_id';

    IBMTextToSpeechV1Models.DeleteUserDataOptions testRequestModel = new IBMTextToSpeechV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customerId, testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDeleteVoiceModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.DeleteVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.DeleteVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testDeleteWordOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String word = 'word';

    IBMTextToSpeechV1Models.DeleteWordOptions testRequestModel = new IBMTextToSpeechV1Models.DeleteWordOptionsBuilder()
      .customizationId(customizationId)
      .word(word)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(word, testRequestModel.word());
    Test.stopTest();
  }
  static testMethod void testGetPronunciationOptionsModel() {
    Test.startTest();
    String text = 'text';
    String voice = 'voice';
    String format = 'format';
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.GetPronunciationOptions testRequestModel = new IBMTextToSpeechV1Models.GetPronunciationOptionsBuilder()
      .text(text)
      .voice(voice)
      .format(format)
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(voice, testRequestModel.voice());
    System.assertEquals(format, testRequestModel.format());
    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetVoiceModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.GetVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.GetVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetVoiceOptionsModel() {
    Test.startTest();
    String voice = 'voice';
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.GetVoiceOptions testRequestModel = new IBMTextToSpeechV1Models.GetVoiceOptionsBuilder()
      .voice(voice)
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(voice, testRequestModel.voice());
    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetWordOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String word = 'word';

    IBMTextToSpeechV1Models.GetWordOptions testRequestModel = new IBMTextToSpeechV1Models.GetWordOptionsBuilder()
      .customizationId(customizationId)
      .word(word)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(word, testRequestModel.word());
    Test.stopTest();
  }
  static testMethod void testListVoiceModelsOptionsModel() {
    Test.startTest();
    String language = 'language';

    IBMTextToSpeechV1Models.ListVoiceModelsOptions testRequestModel = new IBMTextToSpeechV1Models.ListVoiceModelsOptionsBuilder()
      .language(language)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(language, testRequestModel.language());
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
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.ListWordsOptions testRequestModel = new IBMTextToSpeechV1Models.ListWordsOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testPronunciationModel() {
    Test.startTest();
    String pronunciation = 'pronunciation';

    IBMTextToSpeechV1Models.Pronunciation testRequestModel = new IBMTextToSpeechV1Models.Pronunciation();
    testRequestModel.setPronunciation(pronunciation);

    System.assertEquals(pronunciation, testRequestModel.getPronunciation());
    Test.stopTest();
  }
  static testMethod void testSupportedFeaturesModel() {
    Test.startTest();
    Boolean customPronunciation = true;
    Boolean voiceTransformation = true;

    IBMTextToSpeechV1Models.SupportedFeatures testRequestModel = new IBMTextToSpeechV1Models.SupportedFeatures();
    testRequestModel.setCustomPronunciation(customPronunciation);
    testRequestModel.setVoiceTransformation(voiceTransformation);

    System.assertEquals(customPronunciation, testRequestModel.getCustomPronunciation());
    System.assertEquals(voiceTransformation, testRequestModel.getVoiceTransformation());
    Test.stopTest();
  }
  static testMethod void testSynthesizeOptionsModel() {
    Test.startTest();
    String text = 'text';
    String accept = 'accept';
    String voice = 'voice';
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.SynthesizeOptions testRequestModel = new IBMTextToSpeechV1Models.SynthesizeOptionsBuilder()
      .text(text)
      .accept(accept)
      .voice(voice)
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(accept, testRequestModel.accept());
    System.assertEquals(voice, testRequestModel.voice());
    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testTranslationModel() {
    Test.startTest();
    String translation = 'translation';
    String partOfSpeech = 'part_of_speech';

    IBMTextToSpeechV1Models.Translation testRequestModel = new IBMTextToSpeechV1Models.TranslationBuilder()
      .translation(translation)
      .partOfSpeech(partOfSpeech)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(translation, testRequestModel.getTranslation());
    System.assertEquals(partOfSpeech, testRequestModel.getPartOfSpeech());
    Test.stopTest();
  }
  static testMethod void testUpdateVoiceModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String name = 'name';
    String description = 'description';
    String word = 'word';
    String translation = 'translation';
    IBMTextToSpeechV1Models.Word wordsItem = new IBMTextToSpeechV1Models.WordBuilder()
      .word(word)
      .translation(translation)
      .build();
    List<IBMTextToSpeechV1Models.Word> words = new List<IBMTextToSpeechV1Models.Word> { wordsItem } ;

    IBMTextToSpeechV1Models.UpdateVoiceModelOptions testRequestModel = new IBMTextToSpeechV1Models.UpdateVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .name(name)
      .description(description)
      .words(words)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(words, testRequestModel.words());
    Test.stopTest();
  }
  static testMethod void testVoiceModel() {
    Test.startTest();
    String url = 'url';
    String gender = 'gender';
    String name = 'name';
    String language = 'language';
    String description = 'description';
    Boolean customizable = true;
    Boolean customPronunciation = true;
    Boolean voiceTransformation = true;
    IBMTextToSpeechV1Models.SupportedFeatures supportedFeatures = new IBMTextToSpeechV1Models.SupportedFeatures();
    supportedFeatures.setCustomPronunciation(customPronunciation);
    supportedFeatures.setVoiceTransformation(voiceTransformation);
    String customizationId = 'customization_id';
    IBMTextToSpeechV1Models.VoiceModel customization = new IBMTextToSpeechV1Models.VoiceModel();
    customization.setCustomizationId(customizationId);

    IBMTextToSpeechV1Models.Voice testRequestModel = new IBMTextToSpeechV1Models.Voice();
    testRequestModel.setUrl(url);
    testRequestModel.setGender(gender);
    testRequestModel.setName(name);
    testRequestModel.setLanguage(language);
    testRequestModel.setDescription(description);
    testRequestModel.setCustomizable(customizable);
    testRequestModel.setSupportedFeatures(supportedFeatures);
    testRequestModel.setCustomization(customization);

    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(gender, testRequestModel.getGender());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(customizable, testRequestModel.getCustomizable());
    System.assertEquals(supportedFeatures, testRequestModel.getSupportedFeatures());
    System.assertEquals(customization, testRequestModel.getCustomization());
    Test.stopTest();
  }
  static testMethod void testVoiceModelModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String name = 'name';
    String language = 'language';
    String owner = 'owner';
    String created = 'created';
    String lastModified = 'last_modified';
    String description = 'description';
    String word = 'word';
    String translation = 'translation';
    IBMTextToSpeechV1Models.Word wordsItem = new IBMTextToSpeechV1Models.WordBuilder()
      .word(word)
      .translation(translation)
      .build();
    List<IBMTextToSpeechV1Models.Word> words = new List<IBMTextToSpeechV1Models.Word> { wordsItem } ;

    IBMTextToSpeechV1Models.VoiceModel testRequestModel = new IBMTextToSpeechV1Models.VoiceModel();
    testRequestModel.setCustomizationId(customizationId);
    testRequestModel.setName(name);
    testRequestModel.setLanguage(language);
    testRequestModel.setOwner(owner);
    testRequestModel.setCreated(created);
    testRequestModel.setLastModified(lastModified);
    testRequestModel.setDescription(description);
    testRequestModel.setWords(words);

    System.assertEquals(customizationId, testRequestModel.getCustomizationId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(owner, testRequestModel.getOwner());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(lastModified, testRequestModel.getLastModified());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(words, testRequestModel.getWords());
    Test.stopTest();
  }
  static testMethod void testVoiceModelsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    IBMTextToSpeechV1Models.VoiceModel customizationsItem = new IBMTextToSpeechV1Models.VoiceModel();
    customizationsItem.setCustomizationId(customizationId);
    List<IBMTextToSpeechV1Models.VoiceModel> customizations = new List<IBMTextToSpeechV1Models.VoiceModel> { customizationsItem } ;

    IBMTextToSpeechV1Models.VoiceModels testRequestModel = new IBMTextToSpeechV1Models.VoiceModels();
    testRequestModel.setCustomizations(customizations);

    System.assertEquals(customizations, testRequestModel.getCustomizations());
    Test.stopTest();
  }
  static testMethod void testVoicesModel() {
    Test.startTest();
    String url = 'url';
    String gender = 'gender';
    String name = 'name';
    String language = 'language';
    String description = 'description';
    Boolean customizable = true;
    Boolean customPronunciation = true;
    Boolean voiceTransformation = true;
    IBMTextToSpeechV1Models.SupportedFeatures supportedFeatures = new IBMTextToSpeechV1Models.SupportedFeatures();
    supportedFeatures.setCustomPronunciation(customPronunciation);
    supportedFeatures.setVoiceTransformation(voiceTransformation);
    IBMTextToSpeechV1Models.Voice voicesItem = new IBMTextToSpeechV1Models.Voice();
    voicesItem.setUrl(url);
    voicesItem.setGender(gender);
    voicesItem.setName(name);
    voicesItem.setLanguage(language);
    voicesItem.setDescription(description);
    voicesItem.setCustomizable(customizable);
    voicesItem.setSupportedFeatures(supportedFeatures);
    List<IBMTextToSpeechV1Models.Voice> voices = new List<IBMTextToSpeechV1Models.Voice> { voicesItem } ;

    IBMTextToSpeechV1Models.Voices testRequestModel = new IBMTextToSpeechV1Models.Voices();
    testRequestModel.setVoices(voices);

    System.assertEquals(voices, testRequestModel.getVoices());
    Test.stopTest();
  }
  static testMethod void testWordModel() {
    Test.startTest();
    String word = 'word';
    String translation = 'translation';
    String partOfSpeech = 'part_of_speech';

    IBMTextToSpeechV1Models.Word testRequestModel = new IBMTextToSpeechV1Models.WordBuilder()
      .word(word)
      .translation(translation)
      .partOfSpeech(partOfSpeech)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(word, testRequestModel.getWord());
    System.assertEquals(translation, testRequestModel.getTranslation());
    System.assertEquals(partOfSpeech, testRequestModel.getPartOfSpeech());
    Test.stopTest();
  }
  static testMethod void testWordsModel() {
    Test.startTest();
    String word = 'word';
    String translation = 'translation';
    IBMTextToSpeechV1Models.Word wordsItem = new IBMTextToSpeechV1Models.WordBuilder()
      .word(word)
      .translation(translation)
      .build();
    List<IBMTextToSpeechV1Models.Word> words = new List<IBMTextToSpeechV1Models.Word> { wordsItem } ;

    IBMTextToSpeechV1Models.Words testRequestModel = new IBMTextToSpeechV1Models.WordsBuilder()
      .words(words)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(words, testRequestModel.getWords());
    Test.stopTest();
  }


  static testMethod void testListVoices() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1Voices();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMTextToSpeechV1Models.ListVoicesOptions options = new IBMTextToSpeechV1Models.ListVoicesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Voices response = service.listVoices(options);

    System.assertEquals(
      'url',
      response.getVoices().get(0).getUrl()
    );
    System.assertEquals(
      'gender',
      response.getVoices().get(0).getGender()
    );
    System.assertEquals(
      'name',
      response.getVoices().get(0).getName()
    );
    System.assertEquals(
      'language',
      response.getVoices().get(0).getLanguage()
    );
    System.assertEquals(
      'description',
      response.getVoices().get(0).getDescription()
    );
    System.assertEquals(
      true,
      response.getVoices().get(0).getCustomizable()
    );
    System.assertEquals(
      true,
      response.getVoices().get(0).getSupportedFeatures().getCustomPronunciation()
    );
    System.assertEquals(
      true,
      response.getVoices().get(0).getSupportedFeatures().getVoiceTransformation()
    );
    System.assertEquals(
      'customization_id',
      response.getVoices().get(0).getCustomization().getCustomizationId()
    );
    System.assertEquals(
      'name',
      response.getVoices().get(0).getCustomization().getName()
    );
    System.assertEquals(
      'language',
      response.getVoices().get(0).getCustomization().getLanguage()
    );
    System.assertEquals(
      'owner',
      response.getVoices().get(0).getCustomization().getOwner()
    );
    System.assertEquals(
      'created',
      response.getVoices().get(0).getCustomization().getCreated()
    );
    System.assertEquals(
      'last_modified',
      response.getVoices().get(0).getCustomization().getLastModified()
    );
    System.assertEquals(
      'description',
      response.getVoices().get(0).getCustomization().getDescription()
    );
    System.assertEquals(
      'word',
      response.getVoices().get(0).getCustomization().getWords().get(0).getWord()
    );
    System.assertEquals(
      'translation',
      response.getVoices().get(0).getCustomization().getWords().get(0).getTranslation()
    );
    System.assertEquals(
      'part_of_speech',
      response.getVoices().get(0).getCustomization().getWords().get(0).getPartOfSpeech()
    );

    Test.stopTest();
  }
  static testMethod void testGetVoice() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1Voice();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String voice = 'voice';
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.GetVoiceOptions options = new IBMTextToSpeechV1Models.GetVoiceOptionsBuilder()
      .voice(voice)
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Voice response = service.getVoice(options);

    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      'gender',
      response.getGender()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      true,
      response.getCustomizable()
    );
    System.assertEquals(
      true,
      response.getSupportedFeatures().getCustomPronunciation()
    );
    System.assertEquals(
      true,
      response.getSupportedFeatures().getVoiceTransformation()
    );
    System.assertEquals(
      'customization_id',
      response.getCustomization().getCustomizationId()
    );
    System.assertEquals(
      'name',
      response.getCustomization().getName()
    );
    System.assertEquals(
      'language',
      response.getCustomization().getLanguage()
    );
    System.assertEquals(
      'owner',
      response.getCustomization().getOwner()
    );
    System.assertEquals(
      'created',
      response.getCustomization().getCreated()
    );
    System.assertEquals(
      'last_modified',
      response.getCustomization().getLastModified()
    );
    System.assertEquals(
      'description',
      response.getCustomization().getDescription()
    );
    System.assertEquals(
      'word',
      response.getCustomization().getWords().get(0).getWord()
    );
    System.assertEquals(
      'translation',
      response.getCustomization().getWords().get(0).getTranslation()
    );
    System.assertEquals(
      'part_of_speech',
      response.getCustomization().getWords().get(0).getPartOfSpeech()
    );

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

    String text = 'text';
    String accept = 'accept';
    String voice = 'voice';
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.SynthesizeOptions options = new IBMTextToSpeechV1Models.SynthesizeOptionsBuilder()
      .text(text)
      .accept(accept)
      .voice(voice)
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.synthesize(options);

    Test.stopTest();
  }
  static testMethod void testGetPronunciation() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1Pronunciation();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String text = 'text';
    String voice = 'voice';
    String format = 'format';
    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.GetPronunciationOptions options = new IBMTextToSpeechV1Models.GetPronunciationOptionsBuilder()
      .text(text)
      .voice(voice)
      .format(format)
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Pronunciation response = service.getPronunciation(options);

    System.assertEquals(
      'pronunciation',
      response.getPronunciation()
    );

    Test.stopTest();
  }
  static testMethod void testCreateVoiceModel() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1VoiceModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String name = 'name';
    String language = 'language';
    String description = 'description';

    IBMTextToSpeechV1Models.CreateVoiceModelOptions options = new IBMTextToSpeechV1Models.CreateVoiceModelOptionsBuilder()
      .name(name)
      .language(language)
      .description(description)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.VoiceModel response = service.createVoiceModel(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizationId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'last_modified',
      response.getLastModified()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'word',
      response.getWords().get(0).getWord()
    );
    System.assertEquals(
      'translation',
      response.getWords().get(0).getTranslation()
    );
    System.assertEquals(
      'part_of_speech',
      response.getWords().get(0).getPartOfSpeech()
    );

    Test.stopTest();
  }
  static testMethod void testListVoiceModels() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1VoiceModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String language = 'language';

    IBMTextToSpeechV1Models.ListVoiceModelsOptions options = new IBMTextToSpeechV1Models.ListVoiceModelsOptionsBuilder()
      .language(language)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.VoiceModels response = service.listVoiceModels(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizations().get(0).getCustomizationId()
    );
    System.assertEquals(
      'name',
      response.getCustomizations().get(0).getName()
    );
    System.assertEquals(
      'language',
      response.getCustomizations().get(0).getLanguage()
    );
    System.assertEquals(
      'owner',
      response.getCustomizations().get(0).getOwner()
    );
    System.assertEquals(
      'created',
      response.getCustomizations().get(0).getCreated()
    );
    System.assertEquals(
      'last_modified',
      response.getCustomizations().get(0).getLastModified()
    );
    System.assertEquals(
      'description',
      response.getCustomizations().get(0).getDescription()
    );
    System.assertEquals(
      'word',
      response.getCustomizations().get(0).getWords().get(0).getWord()
    );
    System.assertEquals(
      'translation',
      response.getCustomizations().get(0).getWords().get(0).getTranslation()
    );
    System.assertEquals(
      'part_of_speech',
      response.getCustomizations().get(0).getWords().get(0).getPartOfSpeech()
    );

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

    String customizationId = 'customization_id';
    String name = 'name';
    String description = 'description';
    String word = 'word';
    String translation = 'translation';
    IBMTextToSpeechV1Models.Word wordsItem = new IBMTextToSpeechV1Models.WordBuilder()
      .word(word)
      .translation(translation)
      .build();
    List<IBMTextToSpeechV1Models.Word> words = new List<IBMTextToSpeechV1Models.Word> { wordsItem } ;

    IBMTextToSpeechV1Models.UpdateVoiceModelOptions options = new IBMTextToSpeechV1Models.UpdateVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .name(name)
      .description(description)
      .words(words)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.updateVoiceModel(options);

    Test.stopTest();
  }
  static testMethod void testGetVoiceModel() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1VoiceModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.GetVoiceModelOptions options = new IBMTextToSpeechV1Models.GetVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.VoiceModel response = service.getVoiceModel(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizationId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'last_modified',
      response.getLastModified()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'word',
      response.getWords().get(0).getWord()
    );
    System.assertEquals(
      'translation',
      response.getWords().get(0).getTranslation()
    );
    System.assertEquals(
      'part_of_speech',
      response.getWords().get(0).getPartOfSpeech()
    );

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

    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.DeleteVoiceModelOptions options = new IBMTextToSpeechV1Models.DeleteVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteVoiceModel(options);

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

    String customizationId = 'customization_id';
    String word = 'word';
    String translation = 'translation';
    IBMTextToSpeechV1Models.Word wordsItem = new IBMTextToSpeechV1Models.WordBuilder()
      .word(word)
      .translation(translation)
      .build();
    List<IBMTextToSpeechV1Models.Word> words = new List<IBMTextToSpeechV1Models.Word> { wordsItem } ;

    IBMTextToSpeechV1Models.AddWordsOptions options = new IBMTextToSpeechV1Models.AddWordsOptionsBuilder()
      .customizationId(customizationId)
      .words(words)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWords(options);

    Test.stopTest();
  }
  static testMethod void testListWords() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1Words();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMTextToSpeechV1Models.ListWordsOptions options = new IBMTextToSpeechV1Models.ListWordsOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Words response = service.listWords(options);

    System.assertEquals(
      'word',
      response.getWords().get(0).getWord()
    );
    System.assertEquals(
      'translation',
      response.getWords().get(0).getTranslation()
    );
    System.assertEquals(
      'part_of_speech',
      response.getWords().get(0).getPartOfSpeech()
    );

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

    String customizationId = 'customization_id';
    String word = 'word';
    String translation = 'translation';
    String partOfSpeech = 'part_of_speech';

    IBMTextToSpeechV1Models.AddWordOptions options = new IBMTextToSpeechV1Models.AddWordOptionsBuilder()
      .customizationId(customizationId)
      .word(word)
      .translation(translation)
      .partOfSpeech(partOfSpeech)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWord(options);

    Test.stopTest();
  }
  static testMethod void testGetWord() {
    String mockResponseBody = IBMWatsonMockResponses.textToSpeechV1Translation();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String word = 'word';

    IBMTextToSpeechV1Models.GetWordOptions options = new IBMTextToSpeechV1Models.GetWordOptionsBuilder()
      .customizationId(customizationId)
      .word(word)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMTextToSpeechV1Models.Translation response = service.getWord(options);

    System.assertEquals(
      'translation',
      response.getTranslation()
    );
    System.assertEquals(
      'part_of_speech',
      response.getPartOfSpeech()
    );

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

    String customizationId = 'customization_id';
    String word = 'word';

    IBMTextToSpeechV1Models.DeleteWordOptions options = new IBMTextToSpeechV1Models.DeleteWordOptionsBuilder()
      .customizationId(customizationId)
      .word(word)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteWord(options);

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

    IBMTextToSpeechV1Models.DeleteUserDataOptions options = new IBMTextToSpeechV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(options);

    Test.stopTest();
  }
}
