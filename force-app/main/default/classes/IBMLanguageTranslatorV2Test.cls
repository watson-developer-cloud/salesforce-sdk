@isTest
private class IBMLanguageTranslatorV2Test {

  /**
   *  Test translate
   */
  static testMethod void testTranslate() {
    String body = IBMWatsonMockResponses.Translate();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2('username', 'password');
    String modelId = '3e7dfdbe-f757-4150-afee-458e71eb93fb';
    String source = 'en';
    String target = 'es';
    IBMLanguageTranslatorV2Models.TranslateOptions translateOptions =
      new IBMLanguageTranslatorV2Models.TranslateOptionsBuilder()
      .source(source)
      .target(target)
      .modelId(modelId)
      .text(new List<String>{'Hello'})
      .addText('World')
      .build();
    IBMLanguageTranslatorV2Models.TranslationResult translate =
      service.translate(translateOptions);
    System.assertEquals(translate.getWordCount(), 1);
    System.assertEquals(translate.getCharacterCount(), 5);
    System.assert(translate.getTranslations() != null);
    IBMLanguageTranslatorV2Models.TranslateOptionsBuilder newTranslateOptionsBuilder =
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
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    IBMLanguageTranslatorV2Models.IdentifyOptions identifyOptions =
      new IBMLanguageTranslatorV2Models.IdentifyOptionsBuilder()
      .text('sample')
      .build();
    IBMLanguageTranslatorV2Models.IdentifiedLanguages identify =
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
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    IBMLanguageTranslatorV2Models.ListIdentifiableLanguagesOptions listIdentifiableLanguagesOptions =
      new IBMLanguageTranslatorV2Models.ListIdentifiableLanguagesOptionsBuilder()
      .build();
    IBMLanguageTranslatorV2Models.IdentifiableLanguages listIdentifiableLanguages =
      service.listIdentifiableLanguages(listIdentifiableLanguagesOptions);

    List<IBMLanguageTranslatorV2Models.IdentifiableLanguage> languageList = listIdentifiableLanguages.getLanguages();
    System.assert(languageList != null && languageList.size() == 4);
    IBMLanguageTranslatorV2Models.IdentifiableLanguage IdentifiableLanguage;
    for(Integer i = 0; i < languageList.size(); i++ ) {
      if(languageList[i].getLanguage() == 'af' && languageList[i].getName() == 'Afrikaans' ) {
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
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
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
    // Monolingual Corpus
    Attachment monolingualCorpusAttachment = new Attachment(Body = Blob.valueOf('monolingualCorpus'),
      Name='monolingualCorpus.txt',
      Description='monolingualCorpus',
      ContentType='text/plain');
    IBMWatsonFile monolingualCorpus = new IBMWatsonFile.FileBuilder()
      .attachment(monolingualCorpusAttachment)
      .build();
    IBMLanguageTranslatorV2Models.CreateModelOptions createModelOptions =
      new IBMLanguageTranslatorV2Models.CreateModelOptionsBuilder()
      .name('custom-english-to-spanish')
      .baseModelId('en-es')
      .forcedGlossary(forcedGlossary)
      .forcedGlossaryFilename('glossary.txt')
      .forcedGlossaryContentType('text/plain')
      .parallelCorpus(parallelCorpus)
      .parallelCorpusFilename('parallelCorpus.txt')
      .parallelCorpusContentType('text/plain')
      .monolingualCorpus(monolingualCorpus)
      .monolingualCorpusFilename('monolingualCorpus.txt')
      .monolingualCorpusContentType('text/plain')
      .build();
    IBMLanguageTranslatorV2Models.TranslationModel TranslationModel =
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
    IBMLanguageTranslatorV2Models.CreateModelOptionsBuilder newCreateModelOptionsBuilder1 =
      createModelOptions.newBuilder();
    IBMLanguageTranslatorV2Models.CreateModelOptionsBuilder newCreateModelOptionsBuilder2 =
      new IBMLanguageTranslatorV2Models.CreateModelOptionsBuilder('en-es');
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
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    IBMLanguageTranslatorV2Models.DeleteModelOptions deleteModelOptions =
      new IBMLanguageTranslatorV2Models.DeleteModelOptionsBuilder()
      .modelId('3e7dfdbe-f757-4150-afee-458e71eb93fb')
      .build();
    service.deleteModel(deleteModelOptions);
    IBMLanguageTranslatorV2Models.DeleteModelOptionsBuilder newDeleteModelOptionsBuilder1 =
      deleteModelOptions.newBuilder();
    IBMLanguageTranslatorV2Models.DeleteModelOptionsBuilder newDeleteModelOptionsBuilder2 =
      new IBMLanguageTranslatorV2Models.DeleteModelOptionsBuilder('3e7dfdbe-f757-4150-afee-458e71eb93fb');
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
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    IBMLanguageTranslatorV2Models.GetModelOptions getModelOptions =
      new IBMLanguageTranslatorV2Models.GetModelOptionsBuilder()
      .modelId('3e7dfdbe-f757-4150-afee-458e71eb93fb')
      .build();
    IBMLanguageTranslatorV2Models.TranslationModel getModel =
      service.getModel(getModelOptions);
    IBMLanguageTranslatorV2Models.GetModelOptionsBuilder newGetModelOptionsBuilder1 =
      getModelOptions.newBuilder();
    IBMLanguageTranslatorV2Models.GetModelOptionsBuilder newGetModelOptionsBuilder2 =
      new IBMLanguageTranslatorV2Models.GetModelOptionsBuilder('3e7dfdbe-f757-4150-afee-458e71eb93fb');
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
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    IBMLanguageTranslatorV2Models.ListModelsOptions listModelsOptions =
      new IBMLanguageTranslatorV2Models.ListModelsOptionsBuilder()
      .source('en')
      .target('es')
      .defaultField(false)
      .build();
    IBMLanguageTranslatorV2Models.TranslationModels listModels =
      service.listModels(listModelsOptions);
    IBMLanguageTranslatorV2Models.ListModelsOptionsBuilder newListModelsOptionsBuilder =
      listModelsOptions.newBuilder();
    Test.stopTest();
  }
}