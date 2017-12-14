public class IBMSpeechToTextV1FTest {
  private static String URL = 'https://stream.watsonplatform.net/speech-to-text/api'; 

  public static void runAllTests(String username, String password) {
  	IBMSpeechToTextV1Models.LanguageModel LanguageModel = testCreateLanguageModel(username, password);
  	IBMSpeechToTextV1Models.LanguageModels LanguageModels = testListLanguageModels(username, password);
  	IBMSpeechToTextV1Models.LanguageModel getLanguageModel = testGetLanguageModel(username, password, LanguageModel.getCustomizationId());
  }
  
  /**
   *  Test create a new Language Model
   */
  public static IBMSpeechToTextV1Models.LanguageModel testCreateLanguageModel(String username, String password) {
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
    return speechToText.createLanguageModel(createLanguageModelOptions);
  }
  
  /**
   *  Test list all existing Language Model
   */
  public static IBMSpeechToTextV1Models.LanguageModels testListLanguageModels(String username, String password) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ListLanguageModelsOptions listLanguageModelsOptions = new IBMSpeechToTextV1Models.ListLanguageModelsOptionsBuilder()
      .language('en-US')
      .build();
    return speechToText.listLanguageModels(listLanguageModelsOptions);
  }
  
  /**
   *  Test list an existing Language Model
   */
  public static IBMSpeechToTextV1Models.LanguageModel testGetLanguageModel(String username, String password, String customizationId) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.GetLanguageModelOptions getLanguageModelOptions = new IBMSpeechToTextV1Models.GetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    return speechToText.getLanguageModel(getLanguageModelOptions);
  }
  
  /**
   *  Test upgrade an existing Language Model
   */
  public static void testUpgradeLanguageModel(String username, String password, String customizationId) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.UpgradeLanguageModelOptions upgradeLanguageModelOptions = new IBMSpeechToTextV1Models.UpgradeLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    speechToText.upgradeLanguageModel(upgradeLanguageModelOptions);
  }
  
  /**
   *  Test train a Language Model
   */
  public static void testTrainLanguageModel(String username, String password, String customizationId) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.TrainLanguageModelOptions trainLanguageModelOptions = new IBMSpeechToTextV1Models.TrainLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    speechToText.trainLanguageModel(trainLanguageModelOptions);
  }
  
  /**
   *  Test reset an existing Language Model
   */
  public static void testResetLanguageModel(String username, String password, String customizationId) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ResetLanguageModelOptions resetLanguageModelOptions = new IBMSpeechToTextV1Models.ResetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    speechToText.resetLanguageModel(resetLanguageModelOptions);
  }
  
  /**
   * Test delete a Language Model
   */
  public static void testDeleteLanguageModel(String username, String password, String customizationId) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.DeleteLanguageModelOptions deleteLanguageModelOptions = new IBMSpeechToTextV1Models.DeleteLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    speechToText.deleteLanguageModel(deleteLanguageModelOptions);
  }
  
  /**
   *  Test add corpora
   */
  public static void testAddCorpus(String username, String password, String customizationId) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    String corpusText = 'Am I at risk for health problems during travel?' +
      ' Some people are more likely to have health problems when traveling outside the United States.' +
      ' How Is Coronary Microvascular Disease Treated?' +
      ' If you are diagnosed with coronary MVD and also have anemia, you may benefit from treatment for that condition.' +
      ' Anemia is thought to slow the growth of cells needed to repair damaged blood vessels.' +
      ' What causes autoimmune hepatitis?' +
      ' A combination of autoimmunity, environmental triggers, and a genetic predisposition can lead to autoimmune hepatitis.' +
      ' What research is being done for Spinal Cord Injury?' +
      ' The National Institute of Neurological Disorders and Stroke NINDS conducts spinal cord research in its laboratories at the National Institutes of Health NIH.' +
      ' NINDS also supports additional research through grants to major research institutions across the country.' +
      ' Some of the more promising rehabilitation techniques are helping spinal cord injury patients become more mobile.' +
      ' What is Osteogenesis imperfecta OI?';
      String corpusName = 'custom_corpus';
    IBMWatsonFile corpusFile = new IBMWatsonFile.FileBuilder()
      .name('corpora.txt')
      .description('Test corpora file')
      .contentType('text/plain')
      .body(blob.valueOf(corpusText))
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
  }
  
  /**
   *  Test delete existing corpora
   */
  public static void testDeleteCorpus(String username, String password, String customizationId, String corpusName) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.DeleteCorpusOptions deleteCorpusOptions = new IBMSpeechToTextV1Models.DeleteCorpusOptionsBuilder(customizationId, corpusName)
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    speechToText.deleteCorpus(deleteCorpusOptions);
  }
  
  /**
   *  Test retrieve an existing corpora
   */
  public static IBMSpeechToTextV1Models.Corpus testGetCorpus(String username, String password, String customizationId, String corpusName) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.GetCorpusOptions getCorpusOptions = new IBMSpeechToTextV1Models.GetCorpusOptionsBuilder(customizationId, corpusName)
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    return speechToText.getCorpus(getCorpusOptions);
  }
  
  /**
   *  Test list existing corpora for a language customization
   */
  public static IBMSpeechToTextV1Models.Corpora testListCorpora(String username, String password, String customizationId) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.ListCorporaOptions listCorporaOptions = new IBMSpeechToTextV1Models.ListCorporaOptionsBuilder()
      .customizationId(customizationId)
      .build();
    return speechToText.listCorpora(listCorporaOptions);
  }
  
  /**
   *  Test add word
   */
  public static void testAddWord(String username, String password, String customizationId, String wordName, String soundsLike) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.CustomWord customWord = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .addSoundsLike(soundsLike)
      .word(wordName)
      .soundsLike(new List<String>{soundsLike})
      .displayAs(wordName)
      .build();
    IBMSpeechToTextV1Models.AddWordOptions addWordOptions = new IBMSpeechToTextV1Models.AddWordOptionsBuilder(customizationId, wordName)
      .customizationId(customizationId)
      .wordName(wordName)
      .customWord(customWord)
      .build();
    speechToText.addWord(addWordOptions);
  }
  
  /**
   *  Test add words
   */
  public static void testAddWords(String username, String password, String customizationId, String wordName, String soundsLike) {
    IBMSpeechToTextV1 speechToText = new IBMSpeechToTextV1();
    if (username != null && password != null) {
      speechToText.setEndPoint(URL);
      speechToText.setUsernameAndPassword(username, password);
    }
    IBMSpeechToTextV1Models.CustomWord customWord = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .addSoundsLike(soundsLike)
      .word(wordName)
      .soundsLike(new List<String>{soundsLike})
      .displayAs(wordName)
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
  }
   
}