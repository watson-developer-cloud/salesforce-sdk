@isTest
private class IBMToneAnalyzerV3Test {
  private static IBMToneAnalyzerV3 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMToneAnalyzerV3('2017-09-21', new IBMWatsonNoAuthAuthenticator());
    mockFile = new IBMWatsonFile.FileBuilder()
      .name('mock-file.txt')
      .description('Test file')
      .contentType('text/plain')
      .body(blob.valueOf('Test string'))
      .build();
  }

  static IBMWatsonMapModel createMockMap() {
    IBMWatsonMapModel mockMap = new IBMWatsonMapModel();
    mockMap.put('testKey', 'testVal');
    return mockMap;
  }

  static testMethod void testToneChatOptionsModel() {
    Test.startTest();
    IBMToneAnalyzerV3Models.Utterance utteranceModel = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text('testString')
      .user('testString')
      .build();

    IBMToneAnalyzerV3Models.ToneChatOptions testRequestModel = new IBMToneAnalyzerV3Models.ToneChatOptionsBuilder()
      .utterances(new List<IBMToneAnalyzerV3Models.Utterance> { utteranceModel })
      .contentLanguage('en')
      .acceptLanguage('ar')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<IBMToneAnalyzerV3Models.Utterance> { utteranceModel }, testRequestModel.utterances());
    System.assertEquals('en', testRequestModel.contentLanguage());
    System.assertEquals('ar', testRequestModel.acceptLanguage());
    Test.stopTest();
  }
  static testMethod void testToneInputModel() {
    Test.startTest();

    IBMToneAnalyzerV3Models.ToneInput testRequestModel = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testToneOptionsModel() {
    Test.startTest();
    IBMToneAnalyzerV3Models.ToneInput toneInputModel = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text('testString')
      .build();

    IBMToneAnalyzerV3Models.ToneOptions testRequestModel = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
      .toneInput(toneInputModel)
      .body('testString')
      .contentType('application/json')
      .sentences(true)
      .tones(new List<String> { 'emotion' })
      .contentLanguage('en')
      .acceptLanguage('ar')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(toneInputModel, testRequestModel.toneInput());
    System.assertEquals('testString', testRequestModel.body());
    System.assertEquals('application/json', testRequestModel.contentType());
    System.assertEquals(true, testRequestModel.sentences());
    System.assertEquals(new List<String> { 'emotion' }, testRequestModel.tones());
    System.assertEquals('en', testRequestModel.contentLanguage());
    System.assertEquals('ar', testRequestModel.acceptLanguage());
    Test.stopTest();
  }
  static testMethod void testUtteranceModel() {
    Test.startTest();

    IBMToneAnalyzerV3Models.Utterance testRequestModel = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text('testString')
      .user('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals('testString', testRequestModel.user());
    Test.stopTest();
  }

  static testMethod void testTone() {
    String mockResponseBody = '{"document_tone": {"tones": [{"score": "5", "tone_id": "toneId", "tone_name": "toneName"}], "tone_categories": [{"tones": [{"score": "5", "tone_id": "toneId", "tone_name": "toneName"}], "category_id": "categoryId", "category_name": "categoryName"}], "warning": "warning"}, "sentences_tone": [{"sentence_id": "10", "text": "text", "tones": [{"score": "5", "tone_id": "toneId", "tone_name": "toneName"}], "tone_categories": [{"tones": [{"score": "5", "tone_id": "toneId", "tone_name": "toneName"}], "category_id": "categoryId", "category_name": "categoryName"}], "input_from": "9", "input_to": "7"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMToneAnalyzerV3Models.ToneInput toneInputModel = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text('testString')
      .build();
    IBMToneAnalyzerV3Models.ToneOptions toneOptionsModel = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
      .toneInput(toneInputModel)
      .body('testString')
      .contentType('application/json')
      .sentences(true)
      .tones(new List<String> { 'emotion' })
      .contentLanguage('en')
      .acceptLanguage('ar')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMToneAnalyzerV3Models.ToneAnalysis response = service.tone(toneOptionsModel);
    System.assert(response.getDocumentTone().getTones().get(0).getScore() != null);
    System.assert(response.getDocumentTone().getTones().get(0).getToneId() != null);
    System.assert(response.getDocumentTone().getTones().get(0).getToneName() != null);
    System.assert(response.getDocumentTone().getToneCategories().get(0).getTones().get(0).getScore() != null);
    System.assert(response.getDocumentTone().getToneCategories().get(0).getTones().get(0).getToneId() != null);
    System.assert(response.getDocumentTone().getToneCategories().get(0).getTones().get(0).getToneName() != null);
    System.assert(response.getDocumentTone().getToneCategories().get(0).getCategoryId() != null);
    System.assert(response.getDocumentTone().getToneCategories().get(0).getCategoryName() != null);
    System.assert(response.getDocumentTone().getWarning() != null);
    System.assert(response.getSentencesTone().get(0).getSentenceId() != null);
    System.assert(response.getSentencesTone().get(0).getText() != null);
    System.assert(response.getSentencesTone().get(0).getTones().get(0).getScore() != null);
    System.assert(response.getSentencesTone().get(0).getTones().get(0).getToneId() != null);
    System.assert(response.getSentencesTone().get(0).getTones().get(0).getToneName() != null);
    System.assert(response.getSentencesTone().get(0).getToneCategories().get(0).getTones().get(0).getScore() != null);
    System.assert(response.getSentencesTone().get(0).getToneCategories().get(0).getTones().get(0).getToneId() != null);
    System.assert(response.getSentencesTone().get(0).getToneCategories().get(0).getTones().get(0).getToneName() != null);
    System.assert(response.getSentencesTone().get(0).getToneCategories().get(0).getCategoryId() != null);
    System.assert(response.getSentencesTone().get(0).getToneCategories().get(0).getCategoryName() != null);
    System.assert(response.getSentencesTone().get(0).getInputFrom() != null);
    System.assert(response.getSentencesTone().get(0).getInputTo() != null);

    Test.stopTest();
  }
  static testMethod void testToneChat() {
    String mockResponseBody = '{"utterances_tone": [{"utterance_id": "11", "utterance_text": "utteranceText", "tones": [{"score": "5", "tone_id": "toneId", "tone_name": "toneName"}], "error": "error"}], "warning": "warning"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMToneAnalyzerV3Models.Utterance utteranceModel = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text('testString')
      .user('testString')
      .build();
    IBMToneAnalyzerV3Models.ToneChatOptions toneChatOptionsModel = new IBMToneAnalyzerV3Models.ToneChatOptionsBuilder()
      .utterances(new List<IBMToneAnalyzerV3Models.Utterance> { utteranceModel })
      .contentLanguage('en')
      .acceptLanguage('ar')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMToneAnalyzerV3Models.UtteranceAnalyses response = service.toneChat(toneChatOptionsModel);
    System.assert(response.getUtterancesTone().get(0).getUtteranceId() != null);
    System.assert(response.getUtterancesTone().get(0).getUtteranceText() != null);
    System.assert(response.getUtterancesTone().get(0).getTones().get(0).getScore() != null);
    System.assert(response.getUtterancesTone().get(0).getTones().get(0).getToneId() != null);
    System.assert(response.getUtterancesTone().get(0).getTones().get(0).getToneName() != null);
    System.assert(response.getUtterancesTone().get(0).getError() != null);
    System.assert(response.getWarning() != null);

    Test.stopTest();
  }
}
