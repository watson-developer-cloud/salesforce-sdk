@isTest
private class IBMToneAnalyzerV3Test {
  /**
   *  Test Analyze general purpose tone.
   *
   */
  static testMethod void testTone() {
    String body = IBMWatsonMockResponses.toneAnalysis();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMToneAnalyzerV3 toneAnalyzer = new IBMToneAnalyzerV3('2017-09-21', iamOptions);
    toneAnalyzer.setEndPoint('https://gateway.watsonplatform.net/tone-analyzer/api');
    IBMToneAnalyzerV3Models.ToneInput toneInput = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text('We have a better product. We can do better selling by having more campaigns')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    toneInput = toneInput.newBuilder().build();
    IBMToneAnalyzerV3Models.ToneOptions options = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
    .text('We have a better product. We need to do better selling')
    .html('<html><body>We have a better product. We need to do better selling</body></html>')
    .addTones('social')
    .tones(new List<String>{'social'})
    .sentences(false)
    .contentLanguage('en')
    .acceptLanguage('en')
    .toneInput(toneInput)
    .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMToneAnalyzerV3Models.ToneAnalysis resp = toneAnalyzer.tone(options);
    System.assertEquals(resp.getDocumentTone().getWarning(), 'string');
    System.assertEquals(resp.getDocumentTone().getTones()[0].getScore(),0);
    System.assertEquals(resp.getDocumentTone().getTones()[0].getToneId(), 'string');
    System.assertEquals(resp.getDocumentTone().getTones()[0].getToneName(), 'string');
    System.assertEquals(resp.getSentencesTone()[0].getSentenceId(),0);
    System.assertEquals(resp.getSentencesTone()[0].getText(), 'string');
    System.assertEquals(resp.getSentencesTone()[0].getInputFrom(),0);
    System.assertEquals(resp.getSentencesTone()[0].getInputTo(),0);
    System.assertEquals(resp.getSentencesTone()[0].getToneCategories()[0].getCategoryId(), 'string');
    System.assertEquals(resp.getSentencesTone()[0].getToneCategories()[0].getCategoryName(), 'string');
    Test.stopTest();
  }

  /**
   *  Test analyze customer engagement tone.
   *
   */
  static testMethod void testToneChat() {
    String body = IBMWatsonMockResponses.utteranceAnalyses();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMToneAnalyzerV3 toneAnalyzer = new IBMToneAnalyzerV3('2017-09-21', 'username', 'password');
    toneAnalyzer.setEndPoint('https://gateway.watsonplatform.net/tone-analyzer/api');
    IBMToneAnalyzerV3Models.Utterance utterance = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text('We have a better product. We can do better selling by having more campaigns')
      .user('test user')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    utterance = utterance.newBuilder().build();
    IBMToneAnalyzerV3Models.ToneChatOptions options = new IBMToneAnalyzerV3Models.ToneChatOptionsBuilder()
      .addUtterances(utterance)
      .acceptLanguage('en')
      .contentLanguage('en')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMToneAnalyzerV3Models.UtteranceAnalyses resp = toneAnalyzer.toneChat(options);
    System.assertEquals(resp.getWarning(), 'string');
    System.assertEquals(resp.getUtterancesTone()[0].getUtteranceId(), 0);
    System.assertEquals(resp.getUtterancesTone()[0].getUtteranceText(), 'string');
    System.assertEquals(resp.getUtterancesTone()[0].getError(), 'string');
    System.assertEquals(resp.getUtterancesTone()[0].getTones()[0].getScore(),0);
    System.assertEquals(resp.getUtterancesTone()[0].getTones()[0].getToneId(), 'string');
    System.assertEquals(resp.getUtterancesTone()[0].getTones()[0].getToneName(), 'string');
    Test.stopTest();
  }

  /**
   *  Test exception
   *
   */
  static testMethod void testException() {
    Test.startTest();
    try {
    IBMToneAnalyzerV3 toneAnalyzer = new IBMToneAnalyzerV3('');
    } catch(Exception ex) {
      System.assertEquals(ex.getMessage(), 'versionDate cannot be null.');
    }
    Test.stopTest();
  }
}