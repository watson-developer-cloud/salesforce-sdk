public with sharing class IBMToneAnalyzerV3FTest {
  private static String NAMED_CREDENTIALS = 'callout:watson_tone_analyzer_v3';
  private static String VERSION = '2017-09-21';
  private static String URL = 'https://gateway.watsonplatform.net/tone-analyzer/api';

  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMToneAnalyzerV3 service = new IBMToneAnalyzerV3(VERSION, authenticator);
    service.setServiceURL(URL);

    testTone(service);
    testToneWithToneInput(service);
    testToneChat(service);
  }

  /**
   *  Test analyze general purpose tone.
   *
   */
  public static IBMToneAnalyzerV3Models.ToneAnalysis testTone(IBMToneAnalyzerV3 service) {
    IBMToneAnalyzerV3Models.ToneOptions options = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
      .text('We have a better product. We need to do better selling')
      .addTones('social')
      .sentences(false)
      .contentLanguage('en')
      .acceptLanguage('en')
      .build();

    IBMToneAnalyzerV3Models.ToneAnalysis resp = service.tone(options);
    System.debug('IBMToneAnalyzerV3FTest.testTone(): ' + resp);
    return resp;
  }

  /**
   *  Test analyze general purpose tone with tone input.
   *
   */
  public static IBMToneAnalyzerV3Models.ToneAnalysis testToneWithToneInput(IBMToneAnalyzerV3 service) {
    IBMToneAnalyzerV3Models.ToneInput toneInput = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text('We have a better product. We can do better selling by having more campaigns')
      .build();

    IBMToneAnalyzerV3Models.ToneOptions options = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
      .toneInput(toneInput)
      .build();

    IBMToneAnalyzerV3Models.ToneAnalysis resp = service.tone(options);
    System.debug('IBMToneAnalyzerV3FTest.testTone(): ' + resp);
    return resp;
  }

  /**
   *  Test analyze customer engagement tone.
   *
   */
  public static IBMToneAnalyzerV3Models.UtteranceAnalyses testToneChat(IBMToneAnalyzerV3 service) {
    IBMToneAnalyzerV3Models.Utterance utterance = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text('We have a better product. We can do better selling by having more campaigns')
      .user('test user')
      .build();

    IBMToneAnalyzerV3Models.ToneChatOptions options = new IBMToneAnalyzerV3Models.ToneChatOptionsBuilder()
      .addUtterances(utterance)
      .build();

    IBMToneAnalyzerV3Models.UtteranceAnalyses resp = service.toneChat(options);
    System.debug('IBMToneAnalyzerV3FTest.testToneChat(): ' + resp);
    return resp;
  }
}
