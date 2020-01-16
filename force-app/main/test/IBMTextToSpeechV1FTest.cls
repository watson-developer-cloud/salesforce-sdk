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

public with sharing class IBMTextToSpeechV1FTest {
  private static String URL = 'https://stream.watsonplatform.net/text-to-speech/api';

  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMTextToSpeechV1 service = new IBMTextToSpeechV1(authenticator);
    service.setServiceURL(URL);

    String customizationId = testCreateVoiceModel(service).getCustomizationId();
    try {
      testGetVoice(service, customizationId);
      testListVoices(service);
      testGetVoiceModel(service, customizationId);
      testListVoiceModels(service);
      testUpdateVoiceModel(service, customizationId);
      testAddWord(service, customizationId);
      testAddWords(service, customizationId);
      testListWords(service, customizationId);
      testGetWord(service, customizationId);
      testSynthesize(service, customizationId);
      testDeleteWord(service, customizationId);
    } finally {
      testDeleteVoiceModel(service, customizationId);
    }
  }
  /**
   * Creates a new custom voice model.
   *
   */
  public static IBMTextToSpeechV1Models.VoiceModel testCreateVoiceModel(IBMTextToSpeechV1 service) {
    IBMTextToSpeechV1Models.CreateVoiceModelOptions options = new IBMTextToSpeechV1Models.CreateVoiceModelOptionsBuilder()
      .name('I love Apples not oranges')
      .language('de-DE')
      .description('Salesforce is making it easier for developers to use IBM Watson\'s artificial intelligence engine within the firm\'s customer relationship management software, which could lead to some exciting new technology for advisers.' +
             ' To kick off the annual Dreamforce conference in San Francisco, Salesforce announced a new IBM Watson SDK, or software development kit. For the non-geeks out there, SDKs help make it easier for coders to develop new features and functionality within a software like Salesforce without having to write all the underlying code.' +
             ' This is especially useful for a program as sophisticated as Watson, and should help engineers at fintech vendors and large financial services firms create new applications for the AI engine and bring them to market faster.' +
             'Jamie Cox, the managing principle at Harris Financial Group, which has $750 million in assets under management, has used Salesforce for 11 years, and has been waiting for the chance to use Watson\'s capabilities.' +
             'For example, Mr. Cox thinks Watson could track a client\'s social media, spending accounts and any other data feeds plugged into Salesforce to get a more complete picture of the client and how to best serve them.' +
             'Watson could be continually working in the background to predict which clients are worrying about the markets, which clients\' risk tolerances have changed and which clients need an adjustment to their financial plan because of a life event, for example. ' +
             'Mr. Cox believes the insights Watson generates also could help determine which prospects are most worth the adviser\'s time and resources, and how to best pursue them. ' +
             'These features aren\'t available yet, but launching a Watson SDK could drastically shorten the timeline for development. When it arrives, Mr. Cox said a Watson-powered Salesforce CRM could help an adviser be more proactive, provide better service to a greater number of clients, and keep up with escalating demands from customers used to working with digital retailers like Amazon.' +
             'Salesforce first introduced AI functionality to its financial services product in March with Einstein, which tracks advisers\' communication with clients to surface new business opportunities. Mr. Cox has used Einstein, but thinks Watson offers more powerful capabilities.' +
             '\"People are automatically uncomfortable talking about their money,\" Mr. Cox said. \"As cognitive functions of computing make it easier to understand what makes people tick, we can make those conversations about money easier.\"' +
             'The partnership with Watson doesn\'t mean Salesforce is abandoning Einstein. The company launched a new tool at Dreamforce called myEinstein, which lets users create AI-powered apps and chat bots without needing any coding knowledge. Salesforce also announced a new partnership with Google that will provide the CRM with access to Google Analytics and Google\'s own AI technology.')
      .build();
    IBMTextToSpeechV1Models.VoiceModel resp =
      service.createVoiceModel(options);
    System.debug('IBMTextToSpeechV1FTest.testCreateVoiceModel(): ' + resp);
    return resp;
  }

  /**
   * Retrieves a specific voice available for speech synthesis.
   *
   */
  public static IBMTextToSpeechV1Models.Voice testGetVoice(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.GetVoiceOptions options = new IBMTextToSpeechV1Models.GetVoiceOptionsBuilder()
      .customizationId(customizationId)
      .voice('en-US_AllisonVoice')
      .build();
    IBMTextToSpeechV1Models.Voice resp =
      service.getVoice(options);
    System.debug('IBMTextToSpeechV1FTest.testGetVoice(): ' + resp);
    return resp;
  }

  /**
   * Retrieves all voices available for speech synthesis.
   *
   */
  public static IBMTextToSpeechV1Models.Voices testListVoices(IBMTextToSpeechV1 service) {
    IBMTextToSpeechV1Models.ListVoicesOptions options = new IBMTextToSpeechV1Models.ListVoicesOptionsBuilder()
      .build();
    IBMTextToSpeechV1Models.Voices resp =
      service.listVoices(options);
    System.debug('IBMTextToSpeechV1FTest.testListVoices(): ' + resp);
    return resp;
  }

  /**
   * Deletes a custom voice model.
   *
   */
  public static void testDeleteVoiceModel(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.DeleteVoiceModelOptions options = new IBMTextToSpeechV1Models.DeleteVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    service.deleteVoiceModel(options);
  }

  /**
   * Queries the contents of a custom voice model.
   *
   */
  public static IBMTextToSpeechV1Models.VoiceModel testGetVoiceModel(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.GetVoiceModelOptions options = new IBMTextToSpeechV1Models.GetVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    IBMTextToSpeechV1Models.VoiceModel resp =
      service.getVoiceModel(options);
    System.debug('IBMTextToSpeechV1FTest.testGetVoiceModel(): ' + resp);
    return resp;
  }

  /**
   * Lists all available custom voice models for a language or for all languages.
   *
   */
  public static IBMTextToSpeechV1Models.VoiceModels testListVoiceModels(IBMTextToSpeechV1 service) {
    IBMTextToSpeechV1Models.ListVoiceModelsOptions options = new IBMTextToSpeechV1Models.ListVoiceModelsOptionsBuilder()
      .build();
    IBMTextToSpeechV1Models.VoiceModels resp =
      service.listVoiceModels(options);
    System.debug('IBMTextToSpeechV1FTest.testListVoiceModels(): ' + resp);
    return resp;
  }

  /**
   * Update a custom voice model.
   *
   */
  public static void testUpdateVoiceModel(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.Word word =new IBMTextToSpeechV1Models.WordBuilder()
      .word('Hello')
      .translation('de-DE')
      .build();
    IBMTextToSpeechV1Models.UpdateVoiceModelOptions options = new IBMTextToSpeechV1Models.UpdateVoiceModelOptionsBuilder()
      .customizationId(customizationId)
      .addWords(word)
      .build();
    service.updateVoiceModel(options);
  }

  /**
   * Add word to a custom voice model.
   *
   */
  public static void testAddWord(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.AddWordOptions options = new IBMTextToSpeechV1Models.AddWordOptionsBuilder()
      .customizationId(customizationId)
      .word('World')
      .translation('de-DE')
      .build();
    service.addWord(options);
  }

  /**
   * Add words to a custom voice model.
   *
   */
  public static void testAddWords(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.Word word =new IBMTextToSpeechV1Models.WordBuilder()
      .word('Again')
      .translation('de-DE')
      .build();
    IBMTextToSpeechV1Models.AddWordsOptions options = new IBMTextToSpeechV1Models.AddWordsOptionsBuilder()
      .customizationId(customizationId)
      .addWords(word)
      .build();
    service.addWords(options);
  }

  /**
   * delete word from a custom voice model.
   *
   */
  public static void testDeleteWord(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.DeleteWordOptions options = new IBMTextToSpeechV1Models.DeleteWordOptionsBuilder()
      .customizationId(customizationId)
      .word('World')
      .build();
    service.deleteWord(options);
  }

  /**
   * Queries details about a word in a custom voice model.
   *
   */
  public static IBMTextToSpeechV1Models.Translation testGetWord(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.GetWordOptions options = new IBMTextToSpeechV1Models.GetWordOptionsBuilder()
      .customizationId(customizationId)
      .word('World')
      .build();
    IBMTextToSpeechV1Models.Translation resp =
      service.getWord(options);
    System.debug('IBMTextToSpeechV1FTest.testGetWord(): ' + resp);
    return resp;
  }

  /**
   * Queries details about the words in a custom voice model..
   *
   */
  public static IBMTextToSpeechV1Models.Words testListWords(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.ListWordsOptions options = new IBMTextToSpeechV1Models.ListWordsOptionsBuilder()
      .customizationId(customizationId)
      .build();
    IBMTextToSpeechV1Models.Words resp =
      service.listWords(options);
    System.debug('IBMTextToSpeechV1FTest.testListWords(): ' + resp);
    return resp;
  }

   /**
   * Streaming speech synthesis of the text in the body parameter.
   *
   */
  public static IBMWatsonFile testSynthesize(IBMTextToSpeechV1 service, String customizationId) {
    IBMTextToSpeechV1Models.SynthesizeOptions options = new IBMTextToSpeechV1Models.SynthesizeOptionsBuilder()
      .accept('audio/wav')
      .voice('en-US_LisaVoice')
      .text('This is an integration test!')
      .build();
    IBMWatsonFile resp = service.synthesize(options);
    return resp;
  }
}
