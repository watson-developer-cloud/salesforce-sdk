@isTest
private class IBMLanguageTranslatorV3Test {

  /**
   *  Test translate
   */
  static testMethod void testTranslate() {
    String body = IBMWatsonMockResponses.Translate();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMLanguageTranslatorV3 service = new IBMLanguageTranslatorV3('2018-05-01', iamOptions);
    String modelId = '3e7dfdbe-f757-4150-afee-458e71eb93fb';
    String source = 'en';
    String target = 'es';
    IBMLanguageTranslatorV3Models.TranslateOptions translateOptions =
      new IBMLanguageTranslatorV3Models.TranslateOptionsBuilder()
      .source(source)
      .target(target)
      .modelId(modelId)
      .text(new List<String>{'Hello'})
      .addText('World')
      .addHeader('Test-Header', 'test_value')
      .build();
    IBMLanguageTranslatorV3Models.TranslationResult translate =
      service.translate(translateOptions);
    System.assertEquals(translate.getWordCount(), 1);
    System.assertEquals(translate.getCharacterCount(), 5);
    System.assert(translate.getTranslations() != null);
    IBMLanguageTranslatorV3Models.TranslateOptionsBuilder newTranslateOptionsBuilder =
      translateOptions.newBuilder();
    translate.setWordCount(4);
    translate.setCharacterCount(10);
    Test.stopTest();
  }

  /**
   *  Test identify
   */
  static testMethod void testIdentify() {
    String body = IBMWatsonMockResponses.ListIdentifiableLanguages();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMLanguageTranslatorV3 service = new IBMLanguageTranslatorV3('2018-05-01');
    IBMLanguageTranslatorV3Models.IdentifyOptions identifyOptions =
      new IBMLanguageTranslatorV3Models.IdentifyOptionsBuilder()
      .text('sample')
      .addHeader('Test-Header', 'test_value')
      .build();
    IBMLanguageTranslatorV3Models.IdentifiedLanguages identify =
      service.identify(identifyOptions);
    Test.stopTest();
  }

  /**
   *  Test Identifiable Languages
   */
  static testMethod void testListIdentifiableLanguages() {
    String body = IBMWatsonMockResponses.ListIdentifiableLanguages();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMLanguageTranslatorV3 service = new IBMLanguageTranslatorV3('2018-05-01');
    IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptions listIdentifiableLanguagesOptions =
      new IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();
    IBMLanguageTranslatorV3Models.IdentifiableLanguages listIdentifiableLanguages =
      service.listIdentifiableLanguages(listIdentifiableLanguagesOptions);

    List<IBMLanguageTranslatorV3Models.IdentifiableLanguage> languageList = listIdentifiableLanguages.getLanguages();
    System.assert(languageList != null && languageList.size() == 4);
    IBMLanguageTranslatorV3Models.IdentifiableLanguage IdentifiableLanguage;
    for (Integer i = 0; i < languageList.size(); i++) {
      if (languageList[i].getLanguage() == 'af' && languageList[i].getName() == 'Afrikaans' ) {
        IdentifiableLanguage = languageList[i];
        break;
      }
    }
    System.assert(IdentifiableLanguage != null);
    IdentifiableLanguage.setLanguage('es');
    IdentifiableLanguage.setName('Spanish');
    Test.stopTest();
  }

  /**
   *  Test create a model
   */
  static testMethod void testCreateModel() {
    String body = IBMWatsonMockResponses.CreateModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMLanguageTranslatorV3 service = new IBMLanguageTranslatorV3('2018-05-01');
    // Forced Glossary
    Attachment forcedGlossaryAttachment = new Attachment(Body = Blob.valueOf('glossary'),
      Name='glossary.txt',
      Description='language glossary',
      ContentType='text/plain');
    IBMWatsonFile forcedGlossary = new IBMWatsonFile.FileBuilder()
      .attachment(forcedGlossaryAttachment)
      .build();
    // Parallel Corpus
    Attachment parallelCorpusAttachment = new Attachment(Body = Blob.valueOf('parallelCorpus'),
      Name='parallelCorpus.txt',
      Description='parallelCorpus',
      ContentType='text/plain');
    IBMWatsonFile parallelCorpus = new IBMWatsonFile.FileBuilder()
      .attachment(parallelCorpusAttachment)
      .build();
    IBMLanguageTranslatorV3Models.CreateModelOptions createModelOptions =
      new IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder()
      .name('custom-english-to-spanish')
      .baseModelId('en-es')
      .forcedGlossary(forcedGlossary)
      .forcedGlossaryFilename('glossary.txt')
      .parallelCorpus(parallelCorpus)
      .parallelCorpusFilename('parallelCorpus.txt')
      .addHeader('Test-Header', 'test_value')
      .build();
    IBMLanguageTranslatorV3Models.TranslationModel TranslationModel =
      service.createModel(createModelOptions);
    System.assertEquals(TranslationModel.getModelId(), '3e7dfdbe-f757-4150-afee-458e71eb93fb');
    // name is optionally returned and this mockup does not
    System.assert(String.isBlank(TranslationModel.getName()));
    System.assert(String.isBlank(TranslationModel.getSource()));
    System.assert(String.isBlank(TranslationModel.getTarget()));
    System.assert(String.isBlank(TranslationModel.getBaseModelId()));
    System.assert(String.isBlank(TranslationModel.getDomain()));
    TranslationModel.getCustomizable();
    TranslationModel.getDefaultModel();
    System.assert(String.isBlank(TranslationModel.getOwner()));
    System.assert(String.isBlank(TranslationModel.getStatus()));
    TranslationModel.setModelId('3e7dfdbe-f757-4150-afee-458e71eb93fb');
    TranslationModel.setName('custom-english-to-spanish');
    TranslationModel.setSource('en');
    TranslationModel.setTarget('es');
    TranslationModel.setBaseModelId('3e7dfdbe-f757-4150-afee-458e71eb93fb');
    TranslationModel.setDomain('travel');
    TranslationModel.setCustomizable(true);
    TranslationModel.setDefaultModel(true);
    TranslationModel.setOwner('74a239fa-f2db-42ef-8737-7bf74f49e35f');
    IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder newCreateModelOptionsBuilder1 =
      createModelOptions.newBuilder();
    IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder newCreateModelOptionsBuilder2 =
      new IBMLanguageTranslatorV3Models.CreateModelOptionsBuilder('en-es');
    Test.stopTest();
  }

  /**
   *  Test delete a model
   */
  static testMethod void testDeleteModel() {
    String body = IBMWatsonMockResponses.DeleteModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMLanguageTranslatorV3 service = new IBMLanguageTranslatorV3('2018-05-01');
    IBMLanguageTranslatorV3Models.DeleteModelOptions deleteModelOptions =
      new IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder()
      .modelId('3e7dfdbe-f757-4150-afee-458e71eb93fb')
      .addHeader('Test-Header', 'test_value')
      .build();
    service.deleteModel(deleteModelOptions);
    IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder newDeleteModelOptionsBuilder1 =
      deleteModelOptions.newBuilder();
    IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder newDeleteModelOptionsBuilder2 =
      new IBMLanguageTranslatorV3Models.DeleteModelOptionsBuilder('3e7dfdbe-f757-4150-afee-458e71eb93fb');
    Test.stopTest();
  }

  /**
   *  Test get model data
   */
  static testMethod void testGetModel() {
    String body = IBMWatsonMockResponses.GetModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMLanguageTranslatorV3 service = new IBMLanguageTranslatorV3('2018-05-01');
    IBMLanguageTranslatorV3Models.GetModelOptions getModelOptions =
      new IBMLanguageTranslatorV3Models.GetModelOptionsBuilder()
      .modelId('3e7dfdbe-f757-4150-afee-458e71eb93fb')
      .addHeader('Test-Header', 'test_value')
      .build();
    IBMLanguageTranslatorV3Models.TranslationModel getModel =
      service.getModel(getModelOptions);
    IBMLanguageTranslatorV3Models.GetModelOptionsBuilder newGetModelOptionsBuilder1 =
      getModelOptions.newBuilder();
    IBMLanguageTranslatorV3Models.GetModelOptionsBuilder newGetModelOptionsBuilder2 =
      new IBMLanguageTranslatorV3Models.GetModelOptionsBuilder('3e7dfdbe-f757-4150-afee-458e71eb93fb');
    Test.stopTest();
  }

  /**
   *  Test list model data
   */
  static testMethod void testListModels() {
    String body = IBMWatsonMockResponses.ListModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMLanguageTranslatorV3 service = new IBMLanguageTranslatorV3('2018-05-01');
    IBMLanguageTranslatorV3Models.ListModelsOptions listModelsOptions =
      new IBMLanguageTranslatorV3Models.ListModelsOptionsBuilder()
      .source('en')
      .target('es')
      .defaultField(false)
      .addHeader('Test-Header', 'test_value')
      .build();
    IBMLanguageTranslatorV3Models.TranslationModels listModels =
      service.listModels(listModelsOptions);
    IBMLanguageTranslatorV3Models.ListModelsOptionsBuilder newListModelsOptionsBuilder =
      listModelsOptions.newBuilder();
    Test.stopTest();
  }
}