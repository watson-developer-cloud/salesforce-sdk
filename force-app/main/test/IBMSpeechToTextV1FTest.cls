/*
 * (C) Copyright IBM Corp. 2017, 2020.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

public class IBMSpeechToTextV1FTest {
  private static String URL = 'https://stream.watsonplatform.net/speech-to-text/api';

  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMSpeechToTextV1 service = new IBMSpeechToTextV1(authenticator);
    service.setServiceURL(URL);

    IBMSpeechToTextV1Models.LanguageModel languageModel = testCreateLanguageModel(service);
    String customizationId = languageModel.getCustomizationId();
    try {
      IBMSpeechToTextV1Models.LanguageModels languageModels = testListLanguageModels(service);
      IBMSpeechToTextV1Models.LanguageModel getLanguageModel = testGetLanguageModel(service, customizationId);
      IBMSpeechToTextV1Models.Corpora corpora = testListCorpora(service, customizationId);
    } finally {
      testDeleteLanguageModel(service, customizationId);
    }
  }

  /**
   *  Test create a new Language Model
   */
  public static IBMSpeechToTextV1Models.LanguageModel testCreateLanguageModel(IBMSpeechToTextV1 service) {
    String name = 'custom_model';
    String baseModelName = 'en-US_BroadbandModel';
    IBMSpeechToTextV1Models.CreateLanguageModelOptions createLanguageModelOptions = new IBMSpeechToTextV1Models.CreateLanguageModelOptionsBuilder()
      .name(name)
      .baseModelName(baseModelName)
      .dialect('en-US')
      .description('model description')
      .build();
    return service.createLanguageModel(createLanguageModelOptions);
  }

  /**
   *  Test list all existing Language Model
   */
  public static IBMSpeechToTextV1Models.LanguageModels testListLanguageModels(IBMSpeechToTextV1 service) {
    IBMSpeechToTextV1Models.ListLanguageModelsOptions listLanguageModelsOptions = new IBMSpeechToTextV1Models.ListLanguageModelsOptionsBuilder()
      .language('en-US')
      .build();
    return service.listLanguageModels(listLanguageModelsOptions);
  }

  /**
   *  Test list an existing Language Model
   */
  public static IBMSpeechToTextV1Models.LanguageModel testGetLanguageModel(IBMSpeechToTextV1 service, String customizationId) {
    IBMSpeechToTextV1Models.GetLanguageModelOptions getLanguageModelOptions = new IBMSpeechToTextV1Models.GetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    return service.getLanguageModel(getLanguageModelOptions);
  }

  /**
   *  Test upgrade an existing Language Model
   */
  public static void testUpgradeLanguageModel(IBMSpeechToTextV1 service, String customizationId) {
    IBMSpeechToTextV1Models.UpgradeLanguageModelOptions upgradeLanguageModelOptions = new IBMSpeechToTextV1Models.UpgradeLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    service.upgradeLanguageModel(upgradeLanguageModelOptions);
  }

  /**
   *  Test train a Language Model
   */
  public static void testTrainLanguageModel(IBMSpeechToTextV1 service, String customizationId) {
    IBMSpeechToTextV1Models.TrainLanguageModelOptions trainLanguageModelOptions = new IBMSpeechToTextV1Models.TrainLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    service.trainLanguageModel(trainLanguageModelOptions);
  }

  /**
   *  Test reset an existing Language Model
   */
  public static void testResetLanguageModel(IBMSpeechToTextV1 service, String customizationId) {
    IBMSpeechToTextV1Models.ResetLanguageModelOptions resetLanguageModelOptions = new IBMSpeechToTextV1Models.ResetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    service.resetLanguageModel(resetLanguageModelOptions);
  }

  /**
   * Test delete a Language Model
   */
  public static void testDeleteLanguageModel(IBMSpeechToTextV1 service, String customizationId) {
    IBMSpeechToTextV1Models.DeleteLanguageModelOptions deleteLanguageModelOptions = new IBMSpeechToTextV1Models.DeleteLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    service.deleteLanguageModel(deleteLanguageModelOptions);
  }

  /**
   *  Test add corpora
   */
  public static void testAddCorpus(IBMSpeechToTextV1 service, String customizationId) {
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
      .build();
    service.addCorpus(addCorpusOptions);
    addCorpusOptions = addCorpusOptions.newBuilder().build();
  }

  /**
   *  Test delete existing corpora
   */
  public static void testDeleteCorpus(IBMSpeechToTextV1 service, String customizationId, String corpusName) {
    IBMSpeechToTextV1Models.DeleteCorpusOptions deleteCorpusOptions = new IBMSpeechToTextV1Models.DeleteCorpusOptionsBuilder(customizationId, corpusName)
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    service.deleteCorpus(deleteCorpusOptions);
  }

  /**
   *  Test retrieve an existing corpora
   */
  public static IBMSpeechToTextV1Models.Corpus testGetCorpus(IBMSpeechToTextV1 service, String customizationId, String corpusName) {
    IBMSpeechToTextV1Models.GetCorpusOptions getCorpusOptions = new IBMSpeechToTextV1Models.GetCorpusOptionsBuilder(customizationId, corpusName)
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    return service.getCorpus(getCorpusOptions);
  }

  /**
   *  Test list existing corpora for a language customization
   */
  public static IBMSpeechToTextV1Models.Corpora testListCorpora(IBMSpeechToTextV1 service, String customizationId) {
    IBMSpeechToTextV1Models.ListCorporaOptions listCorporaOptions = new IBMSpeechToTextV1Models.ListCorporaOptionsBuilder()
      .customizationId(customizationId)
      .build();
    return service.listCorpora(listCorporaOptions);
  }

  /**
   *  Test add word
   */
  public static void testAddWord(IBMSpeechToTextV1 service, String customizationId, String wordName, String soundsLike) {
    IBMSpeechToTextV1Models.AddWordOptions addWordOptions = new IBMSpeechToTextV1Models.AddWordOptionsBuilder(customizationId, wordName)
      .soundsLike(new List<String>{soundsLike})
      .addSoundsLike(soundsLike)
      .word(wordName)
      .displayAs(wordName)
      .customizationId(customizationId)
      .wordName(wordName)
      .build();
    service.addWord(addWordOptions);
  }

  /**
   *  Test add words
   */
  public static void testAddWords(IBMSpeechToTextV1 service, String customizationId, String wordName, String soundsLike) {
    IBMSpeechToTextV1Models.CustomWord customWord = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .word(wordName)
      .soundsLike(new List<String>{ soundsLike })
      .displayAs(wordName)
      .build();
    IBMSpeechToTextV1Models.AddWordsOptions addWordsOptions = new IBMSpeechToTextV1Models.AddWordsOptionsBuilder()
      .customizationId(customizationId)
      .words(new List<IBMSpeechToTextV1Models.CustomWord> { customWord })
      .build();
    service.addWords(addWordsOptions);
  }

}
