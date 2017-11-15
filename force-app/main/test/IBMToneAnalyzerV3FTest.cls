public with sharing class IBMToneAnalyzerV3FTest {
  
  private static String VERSION_2016_05_20 = '2016-05-19';
  private static String NAMED_CREDENTIALS = 'callout:watson_tone_analyzer_v3';
  /**
   *  Test Analyze general purpose tone.
   *
   */
  public static IBMToneAnalyzerV3Models.ToneAnalysis testTone() {
    IBMToneAnalyzerV3 toneAnalyzer = new IBMToneAnalyzerV3(VERSION_2016_05_20);
    toneAnalyzer.setEndPoint(NAMED_CREDENTIALS);
    IBMToneAnalyzerV3Models.ToneOptions options = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
    .text('We have a better product. We need to do better selling')
    .addTones('social')
    .sentences(false)
    .contentLanguage('en')
    .acceptLanguage('en')
    .build();
    IBMToneAnalyzerV3Models.ToneAnalysis resp =
      toneAnalyzer.tone(options);
    System.debug('IBMToneAnalyzerV3FTest.testTone(): '+ resp);  
    return resp;  
  }
  
  /**
   *  Test Analyze general purpose tone with tone input.
   *
   */
  public static IBMToneAnalyzerV3Models.ToneAnalysis testToneWithToneInput() {
    IBMToneAnalyzerV3 toneAnalyzer = new IBMToneAnalyzerV3(VERSION_2016_05_20);
    toneAnalyzer.setEndPoint(NAMED_CREDENTIALS);
    IBMToneAnalyzerV3Models.ToneInput toneInput=new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text('We have a better product. We can do better selling by having more campaigns')
      .build();
    IBMToneAnalyzerV3Models.ToneOptions options = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
    .tone_input_serialized_name(toneInput)
    .build();
    IBMToneAnalyzerV3Models.ToneAnalysis resp =
      toneAnalyzer.tone(options);
    System.debug('IBMToneAnalyzerV3FTest.testTone(): '+ resp);  
    return resp;  
  }
  
  /**
   *  Test Analyze general purpose tone with tone input.
   *
   */
  public static IBMToneAnalyzerV3Models.UtteranceAnalyses testToneChat() {
    IBMToneAnalyzerV3 toneAnalyzer = new IBMToneAnalyzerV3(VERSION_2016_05_20);
    toneAnalyzer.setEndPoint(NAMED_CREDENTIALS);
    IBMToneAnalyzerV3Models.Utterance utterance=new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text('We have a better product. We can do better selling by having more campaigns')
      .user('test user')
      .build();
    IBMToneAnalyzerV3Models.ToneChatOptions options = new IBMToneAnalyzerV3Models.ToneChatOptionsBuilder()
      .addUtterances(utterance)
      .build();
    IBMToneAnalyzerV3Models.UtteranceAnalyses resp =
      toneAnalyzer.toneChat(options);
    System.debug('IBMToneAnalyzerV3FTest.testToneChat(): '+ resp);  
    return resp;  
  }
}