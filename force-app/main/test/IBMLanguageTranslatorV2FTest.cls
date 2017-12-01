public class IBMLanguageTranslatorV2FTest {

  private static String NAMED_CREDENTIALS = 'callout:watson_language_translator_v2'; // when using named credentials
  private static String VERSION_2017_05_26 = '2017-05-26';
  public static final String EndpointURL = 'https://gateway.watsonplatform.net/language-translator/api';
  public static final String username = '<username>';
  public static final String password = '<password>';
  public static final String BaseModelId = '<base model id>';//i.e es-en
  public static String ModelId = '<custom model>';// automatically populated using runAllTests()

  public class IBMLanguageTranslatorV2FException extends Exception {}

  /**
   *  Test all features on a single method call
   *
   */
  public static void runAllTests(){
    // Translate a simple text using a source and target languages
    try {
      testSourceTargetTranslate();
    } catch(Exception err) {
      String testMsg = '[Translate] - Error while translating using source and target. ';
      System.debug(testMsg + err.getMessage());
      throw new IBMLanguageTranslatorV2FException(testMsg + err.getMessage());
    }

    // Identify a language
    try {
      testSourceTargetTranslate();
    } catch(Exception err){
      String testMsg = '[Identify] - Error while identifying language. ';
      System.debug(testMsg + err.getMessage());
      throw new IBMLanguageTranslatorV2FException(testMsg + err.getMessage());
    }

    // Identify all languages
    try {
      testListIdentifiableLanguages();
    } catch(Exception err){
      String testMsg = '[ListIdentifiableLanguages] - Error while identifying all languages. ';
      System.debug(testMsg + err.getMessage());
      throw new IBMLanguageTranslatorV2FException(testMsg + err.getMessage());
    }

    // Test creating a model using forced glossary
    try {
      testCreateModelForcedGlossary();
    } catch(Exception err){
      String testMsg = '[CreateModel] - Error while creating a forced-glossary model. ';
      System.debug(testMsg + err.getMessage());
      throw new IBMLanguageTranslatorV2FException(testMsg + err.getMessage());
    }

    // Get model information
    try {
      testGetModel();
    } catch(Exception err){
      String testMsg = '[GetModel] - Error while retrieving model data. ';
      System.debug(testMsg + err.getMessage());
      throw new IBMLanguageTranslatorV2FException(testMsg + err.getMessage());
    }

    // Delete model
    try {
      testDeleteModel();
    } catch(Exception err){
      String testMsg = '[DeleteModel] - Error while deleting model. ';
      System.debug(testMsg + err.getMessage());
      throw new IBMLanguageTranslatorV2FException(testMsg + err.getMessage());
    }
  }

  /**
   *  Test translate
   */
  public static void testSourceTargetTranslate() {
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    service.setEndPoint(EndpointURL);
    service.setUsernameAndPassword(username, password);
    String source = 'en';
    String target = 'es';
    IBMLanguageTranslatorV2Models.TranslateOptions translateOptions =
      new IBMLanguageTranslatorV2Models.TranslateOptionsBuilder()
      .source(source)
      .target(target)
      .text(new List<String>{'Hello'})
      .addText('World')
      .build();

    IBMLanguageTranslatorV2Models.TranslationResult translate = service.translate(translateOptions);
    System.debug('\n**SourceTargetTranslate**\n' + translate);
  }

  /**
   *  Test identify
   */
  public static void testIdentify(){
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    service.setEndPoint(EndpointURL);
    service.setUsernameAndPassword(username, password);
    IBMLanguageTranslatorV2Models.IdentifyOptions identifyOptions =
      new IBMLanguageTranslatorV2Models.IdentifyOptionsBuilder()
      .text('You know my methods, Watson.')
      .build();

    IBMLanguageTranslatorV2Models.IdentifiedLanguages identify = service.identify(identifyOptions);
    System.debug('\n**Identify**\n' + identify);
  }

  /**
   *  Test Identifiable Languages
   */
  public static void testListIdentifiableLanguages(){
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    service.setEndPoint(EndpointURL);
    service.setUsernameAndPassword(username, password);
    IBMLanguageTranslatorV2Models.ListIdentifiableLanguagesOptions listIdentifiableLanguagesOptions =
      new IBMLanguageTranslatorV2Models.ListIdentifiableLanguagesOptionsBuilder()
      .build();
    IBMLanguageTranslatorV2Models.IdentifiableLanguages listIdentifiableLanguages =
      service.listIdentifiableLanguages(listIdentifiableLanguagesOptions);

    System.debug('\n**IdentifiableLanguages**\n' + listIdentifiableLanguages);
  }

  /**
   *  Test create a model
   */
  public static void testCreateModelForcedGlossary(){
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    service.setEndPoint(NAMED_CREDENTIALS);
    String forcedGlossaryStr = '<tmx version="1.4">' +
        '<header' +
        '  creationtool="XYZTool" creationtoolversion="1.01-023"' +
        '  datatype="PlainText" segtype="sentence"' +
        '  adminlang="en-us" srclang="en"' +
        '  o-tmf="ABCTransMem"/>' +
        '<body>' +
        '  <tu>' +
        '    <tuv xml:lang="en">' +
        '      <seg>Hello world!</seg>' +
        '    </tuv>' +
        '    <tuv xml:lang="es">' +
        '      <seg>Hola mundo!</seg>' +
        '    </tuv>' +
        '  </tu>' +
        '</body>' +
      '</tmx>';
    blob forcedGlossaryBlob = Blob.valueOf(forcedGlossaryStr);
    Attachment forcedGlossaryAttachment = new Attachment(Body = forcedGlossaryBlob,
      Name='glossary.tmx',
      Description='language glossary',
      ContentType='application/xml');

    IBMWatsonFile forcedGlossary = new IBMWatsonFile.FileBuilder()
      .attachment(forcedGlossaryAttachment)
      .build();
      
    IBMLanguageTranslatorV2Models.CreateModelOptions createModelOptions =
      new IBMLanguageTranslatorV2Models.CreateModelOptionsBuilder()
      .name('custom-english-to-spanish')
      .baseModelId(BaseModelId)
      .forcedGlossary(forcedGlossary)
      .forcedGlossaryFilename(forcedGlossaryAttachment.Name)
      .forcedGlossaryContentType(forcedGlossaryAttachment.ContentType)
      .build();

    IBMLanguageTranslatorV2Models.TranslationModel TranslationModel = service.createModel(createModelOptions);
    ModelId = TranslationModel.getModelId();
    System.debug('\n**CreateModel**\n' + TranslationModel);
  }

  /**
   *  Test delete a model
   */
  public static void testDeleteModel(){
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    service.setEndPoint(EndpointURL);
    service.setUsernameAndPassword(username, password);
    IBMLanguageTranslatorV2Models.DeleteModelOptions deleteModelOptions =
      new IBMLanguageTranslatorV2Models.DeleteModelOptionsBuilder()
      .modelId(ModelId)
      .build();
    service.deleteModel(deleteModelOptions);
    System.debug('\n**DeleteModel**\nSuccess');
  }

  /**
   *  Test get model data
   */
  public static void testGetModel(){
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    service.setEndPoint(EndpointURL);
    service.setUsernameAndPassword(username, password);
    IBMLanguageTranslatorV2Models.GetModelOptions getModelOptions =
      new IBMLanguageTranslatorV2Models.GetModelOptionsBuilder()
      .modelId(ModelId)
      .build();
    IBMLanguageTranslatorV2Models.TranslationModel getModel = service.getModel(getModelOptions);
    System.debug('\n**GetModel**\n' + getModel);
  }

  /**
   *  Test list model data
   */
  public static void testListModels(){
    IBMLanguageTranslatorV2 service = new IBMLanguageTranslatorV2();
    service.setEndPoint(EndpointURL);
    service.setUsernameAndPassword(username, password);
    IBMLanguageTranslatorV2Models.ListModelsOptions listModelsOptions =
      new IBMLanguageTranslatorV2Models.ListModelsOptionsBuilder()
      .build();
    IBMLanguageTranslatorV2Models.TranslationModels listModels = service.listModels(listModelsOptions);
    System.debug('\n**ListModels**\n' + listModels);
  }
}
