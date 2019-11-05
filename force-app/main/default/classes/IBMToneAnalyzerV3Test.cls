@isTest
private class IBMToneAnalyzerV3Test {
  private static IBMToneAnalyzerV3 service;

  static {
    service = new IBMToneAnalyzerV3('2017-09-21', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testDocumentAnalysisModel() {
    Test.startTest();
    Double score = 0.5;
    String toneId = 'tone_id';
    String toneName = 'tone_name';
    IBMToneAnalyzerV3Models.ToneScore tonesItem = new IBMToneAnalyzerV3Models.ToneScore();
    tonesItem.setScore(score);
    tonesItem.setToneId(toneId);
    tonesItem.setToneName(toneName);
    List<IBMToneAnalyzerV3Models.ToneScore> tones = new List<IBMToneAnalyzerV3Models.ToneScore> { tonesItem } ;
    String categoryId = 'category_id';
    String categoryName = 'category_name';
    IBMToneAnalyzerV3Models.ToneCategory toneCategoriesItem = new IBMToneAnalyzerV3Models.ToneCategory();
    toneCategoriesItem.setTones(tones);
    toneCategoriesItem.setCategoryId(categoryId);
    toneCategoriesItem.setCategoryName(categoryName);
    List<IBMToneAnalyzerV3Models.ToneCategory> toneCategories = new List<IBMToneAnalyzerV3Models.ToneCategory> { toneCategoriesItem } ;
    String warning = 'warning';

    IBMToneAnalyzerV3Models.DocumentAnalysis testRequestModel = new IBMToneAnalyzerV3Models.DocumentAnalysis();
    testRequestModel.setTones(tones);
    testRequestModel.setToneCategories(toneCategories);
    testRequestModel.setWarning(warning);

    System.assertEquals(tones, testRequestModel.getTones());
    System.assertEquals(toneCategories, testRequestModel.getToneCategories());
    System.assertEquals(warning, testRequestModel.getWarning());
    Test.stopTest();
  }
  static testMethod void testSentenceAnalysisModel() {
    Test.startTest();
    Long sentenceId = 10L;
    String text = 'text';
    Double score = 0.5;
    String toneId = 'tone_id';
    String toneName = 'tone_name';
    IBMToneAnalyzerV3Models.ToneScore tonesItem = new IBMToneAnalyzerV3Models.ToneScore();
    tonesItem.setScore(score);
    tonesItem.setToneId(toneId);
    tonesItem.setToneName(toneName);
    List<IBMToneAnalyzerV3Models.ToneScore> tones = new List<IBMToneAnalyzerV3Models.ToneScore> { tonesItem } ;
    String categoryId = 'category_id';
    String categoryName = 'category_name';
    IBMToneAnalyzerV3Models.ToneCategory toneCategoriesItem = new IBMToneAnalyzerV3Models.ToneCategory();
    toneCategoriesItem.setTones(tones);
    toneCategoriesItem.setCategoryId(categoryId);
    toneCategoriesItem.setCategoryName(categoryName);
    List<IBMToneAnalyzerV3Models.ToneCategory> toneCategories = new List<IBMToneAnalyzerV3Models.ToneCategory> { toneCategoriesItem } ;
    Long inputFrom = 10L;
    Long inputTo = 10L;

    IBMToneAnalyzerV3Models.SentenceAnalysis testRequestModel = new IBMToneAnalyzerV3Models.SentenceAnalysis();
    testRequestModel.setSentenceId(sentenceId);
    testRequestModel.setText(text);
    testRequestModel.setTones(tones);
    testRequestModel.setToneCategories(toneCategories);
    testRequestModel.setInputFrom(inputFrom);
    testRequestModel.setInputTo(inputTo);

    System.assertEquals(sentenceId, testRequestModel.getSentenceId());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(tones, testRequestModel.getTones());
    System.assertEquals(toneCategories, testRequestModel.getToneCategories());
    System.assertEquals(inputFrom, testRequestModel.getInputFrom());
    System.assertEquals(inputTo, testRequestModel.getInputTo());
    Test.stopTest();
  }
  static testMethod void testToneAnalysisModel() {
    Test.startTest();
    IBMToneAnalyzerV3Models.DocumentAnalysis documentTone = new IBMToneAnalyzerV3Models.DocumentAnalysis();
    Long sentenceId = 10L;
    String text = 'text';
    IBMToneAnalyzerV3Models.SentenceAnalysis sentencesToneItem = new IBMToneAnalyzerV3Models.SentenceAnalysis();
    sentencesToneItem.setSentenceId(sentenceId);
    sentencesToneItem.setText(text);
    List<IBMToneAnalyzerV3Models.SentenceAnalysis> sentencesTone = new List<IBMToneAnalyzerV3Models.SentenceAnalysis> { sentencesToneItem } ;

    IBMToneAnalyzerV3Models.ToneAnalysis testRequestModel = new IBMToneAnalyzerV3Models.ToneAnalysis();
    testRequestModel.setDocumentTone(documentTone);
    testRequestModel.setSentencesTone(sentencesTone);

    System.assertEquals(documentTone, testRequestModel.getDocumentTone());
    System.assertEquals(sentencesTone, testRequestModel.getSentencesTone());
    Test.stopTest();
  }
  static testMethod void testToneCategoryModel() {
    Test.startTest();
    Double score = 0.5;
    String toneId = 'tone_id';
    String toneName = 'tone_name';
    IBMToneAnalyzerV3Models.ToneScore tonesItem = new IBMToneAnalyzerV3Models.ToneScore();
    tonesItem.setScore(score);
    tonesItem.setToneId(toneId);
    tonesItem.setToneName(toneName);
    List<IBMToneAnalyzerV3Models.ToneScore> tones = new List<IBMToneAnalyzerV3Models.ToneScore> { tonesItem } ;
    String categoryId = 'category_id';
    String categoryName = 'category_name';

    IBMToneAnalyzerV3Models.ToneCategory testRequestModel = new IBMToneAnalyzerV3Models.ToneCategory();
    testRequestModel.setTones(tones);
    testRequestModel.setCategoryId(categoryId);
    testRequestModel.setCategoryName(categoryName);

    System.assertEquals(tones, testRequestModel.getTones());
    System.assertEquals(categoryId, testRequestModel.getCategoryId());
    System.assertEquals(categoryName, testRequestModel.getCategoryName());
    Test.stopTest();
  }
  static testMethod void testToneChatOptionsModel() {
    Test.startTest();
    String text = 'text';
    IBMToneAnalyzerV3Models.Utterance utterancesItem = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text(text)
      .build();
    List<IBMToneAnalyzerV3Models.Utterance> utterances = new List<IBMToneAnalyzerV3Models.Utterance> { utterancesItem } ;
    String contentLanguage = 'content_language';
    String acceptLanguage = 'accept_language';

    IBMToneAnalyzerV3Models.ToneChatOptions testRequestModel = new IBMToneAnalyzerV3Models.ToneChatOptionsBuilder()
      .utterances(utterances)
      .contentLanguage(contentLanguage)
      .acceptLanguage(acceptLanguage)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(utterances, testRequestModel.utterances());
    System.assertEquals(contentLanguage, testRequestModel.contentLanguage());
    System.assertEquals(acceptLanguage, testRequestModel.acceptLanguage());
    Test.stopTest();
  }
  static testMethod void testToneChatScoreModel() {
    Test.startTest();
    Double score = 0.5;
    String toneId = 'tone_id';
    String toneName = 'tone_name';

    IBMToneAnalyzerV3Models.ToneChatScore testRequestModel = new IBMToneAnalyzerV3Models.ToneChatScore();
    testRequestModel.setScore(score);
    testRequestModel.setToneId(toneId);
    testRequestModel.setToneName(toneName);

    System.assertEquals(score, testRequestModel.getScore());
    System.assertEquals(toneId, testRequestModel.getToneId());
    System.assertEquals(toneName, testRequestModel.getToneName());
    Test.stopTest();
  }
  static testMethod void testToneInputModel() {
    Test.startTest();
    String text = 'text';

    IBMToneAnalyzerV3Models.ToneInput testRequestModel = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testToneOptionsModel() {
    Test.startTest();
    String text = 'text';
    IBMToneAnalyzerV3Models.ToneInput toneInput = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text(text)
      .build();
    String body = 'body';
    String contentType = 'content_type';
    Boolean sentences = true;
    List<String> tones = new List<String> { 'tones' } ;
    String contentLanguage = 'content_language';
    String acceptLanguage = 'accept_language';

    IBMToneAnalyzerV3Models.ToneOptions testRequestModel = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
      .sentences(sentences)
      .tones(tones)
      .contentLanguage(contentLanguage)
      .acceptLanguage(acceptLanguage)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(sentences, testRequestModel.sentences());
    System.assertEquals(tones, testRequestModel.tones());
    System.assertEquals(contentLanguage, testRequestModel.contentLanguage());
    System.assertEquals(acceptLanguage, testRequestModel.acceptLanguage());
    Test.stopTest();
  }
  static testMethod void testToneScoreModel() {
    Test.startTest();
    Double score = 0.5;
    String toneId = 'tone_id';
    String toneName = 'tone_name';

    IBMToneAnalyzerV3Models.ToneScore testRequestModel = new IBMToneAnalyzerV3Models.ToneScore();
    testRequestModel.setScore(score);
    testRequestModel.setToneId(toneId);
    testRequestModel.setToneName(toneName);

    System.assertEquals(score, testRequestModel.getScore());
    System.assertEquals(toneId, testRequestModel.getToneId());
    System.assertEquals(toneName, testRequestModel.getToneName());
    Test.stopTest();
  }
  static testMethod void testUtteranceModel() {
    Test.startTest();
    String text = 'text';
    String user = 'user';

    IBMToneAnalyzerV3Models.Utterance testRequestModel = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text(text)
      .user(user)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(user, testRequestModel.user());
    Test.stopTest();
  }
  static testMethod void testUtteranceAnalysesModel() {
    Test.startTest();
    Long utteranceId = 10L;
    String utteranceText = 'utterance_text';
    Double score = 0.5;
    String toneId = 'tone_id';
    String toneName = 'tone_name';
    IBMToneAnalyzerV3Models.ToneChatScore tonesItem = new IBMToneAnalyzerV3Models.ToneChatScore();
    tonesItem.setScore(score);
    tonesItem.setToneId(toneId);
    tonesItem.setToneName(toneName);
    List<IBMToneAnalyzerV3Models.ToneChatScore> tones = new List<IBMToneAnalyzerV3Models.ToneChatScore> { tonesItem } ;
    IBMToneAnalyzerV3Models.UtteranceAnalysis utterancesToneItem = new IBMToneAnalyzerV3Models.UtteranceAnalysis();
    utterancesToneItem.setUtteranceId(utteranceId);
    utterancesToneItem.setUtteranceText(utteranceText);
    utterancesToneItem.setTones(tones);
    List<IBMToneAnalyzerV3Models.UtteranceAnalysis> utterancesTone = new List<IBMToneAnalyzerV3Models.UtteranceAnalysis> { utterancesToneItem } ;
    String warning = 'warning';

    IBMToneAnalyzerV3Models.UtteranceAnalyses testRequestModel = new IBMToneAnalyzerV3Models.UtteranceAnalyses();
    testRequestModel.setUtterancesTone(utterancesTone);
    testRequestModel.setWarning(warning);

    System.assertEquals(utterancesTone, testRequestModel.getUtterancesTone());
    System.assertEquals(warning, testRequestModel.getWarning());
    Test.stopTest();
  }
  static testMethod void testUtteranceAnalysisModel() {
    Test.startTest();
    Long utteranceId = 10L;
    String utteranceText = 'utterance_text';
    Double score = 0.5;
    String toneId = 'tone_id';
    String toneName = 'tone_name';
    IBMToneAnalyzerV3Models.ToneChatScore tonesItem = new IBMToneAnalyzerV3Models.ToneChatScore();
    tonesItem.setScore(score);
    tonesItem.setToneId(toneId);
    tonesItem.setToneName(toneName);
    List<IBMToneAnalyzerV3Models.ToneChatScore> tones = new List<IBMToneAnalyzerV3Models.ToneChatScore> { tonesItem } ;
    String error = 'error';

    IBMToneAnalyzerV3Models.UtteranceAnalysis testRequestModel = new IBMToneAnalyzerV3Models.UtteranceAnalysis();
    testRequestModel.setUtteranceId(utteranceId);
    testRequestModel.setUtteranceText(utteranceText);
    testRequestModel.setTones(tones);
    testRequestModel.setError(error);

    System.assertEquals(utteranceId, testRequestModel.getUtteranceId());
    System.assertEquals(utteranceText, testRequestModel.getUtteranceText());
    System.assertEquals(tones, testRequestModel.getTones());
    System.assertEquals(error, testRequestModel.getError());
    Test.stopTest();
  }


  static testMethod void testTone() {
    String mockResponseBody = IBMWatsonMockResponses.toneAnalyzerV3ToneAnalysis();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String text = 'text';
    IBMToneAnalyzerV3Models.ToneInput toneInput = new IBMToneAnalyzerV3Models.ToneInputBuilder()
      .text(text)
      .build();
    String body = 'body';
    String contentType = 'content_type';
    Boolean sentences = true;
    List<String> tones = new List<String> { 'tones' } ;
    String contentLanguage = 'content_language';
    String acceptLanguage = 'accept_language';

    IBMToneAnalyzerV3Models.ToneOptions options = new IBMToneAnalyzerV3Models.ToneOptionsBuilder()
      .toneInput(toneInput)
      .sentences(sentences)
      .tones(tones)
      .contentLanguage(contentLanguage)
      .acceptLanguage(acceptLanguage)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMToneAnalyzerV3Models.ToneAnalysis response = service.tone(options);

    System.assertEquals(
      0.5,
      response.getDocumentTone().getTones().get(0).getScore()
    );
    System.assertEquals(
      'tone_id',
      response.getDocumentTone().getTones().get(0).getToneId()
    );
    System.assertEquals(
      'tone_name',
      response.getDocumentTone().getTones().get(0).getToneName()
    );
    System.assertEquals(
      0.5,
      response.getDocumentTone().getToneCategories().get(0).getTones().get(0).getScore()
    );
    System.assertEquals(
      'tone_id',
      response.getDocumentTone().getToneCategories().get(0).getTones().get(0).getToneId()
    );
    System.assertEquals(
      'tone_name',
      response.getDocumentTone().getToneCategories().get(0).getTones().get(0).getToneName()
    );
    System.assertEquals(
      'category_id',
      response.getDocumentTone().getToneCategories().get(0).getCategoryId()
    );
    System.assertEquals(
      'category_name',
      response.getDocumentTone().getToneCategories().get(0).getCategoryName()
    );
    System.assertEquals(
      'warning',
      response.getDocumentTone().getWarning()
    );
    System.assertEquals(
      10L,
      response.getSentencesTone().get(0).getSentenceId()
    );
    System.assertEquals(
      'text',
      response.getSentencesTone().get(0).getText()
    );
    System.assertEquals(
      0.5,
      response.getSentencesTone().get(0).getTones().get(0).getScore()
    );
    System.assertEquals(
      'tone_id',
      response.getSentencesTone().get(0).getTones().get(0).getToneId()
    );
    System.assertEquals(
      'tone_name',
      response.getSentencesTone().get(0).getTones().get(0).getToneName()
    );
    System.assertEquals(
      0.5,
      response.getSentencesTone().get(0).getToneCategories().get(0).getTones().get(0).getScore()
    );
    System.assertEquals(
      'tone_id',
      response.getSentencesTone().get(0).getToneCategories().get(0).getTones().get(0).getToneId()
    );
    System.assertEquals(
      'tone_name',
      response.getSentencesTone().get(0).getToneCategories().get(0).getTones().get(0).getToneName()
    );
    System.assertEquals(
      'category_id',
      response.getSentencesTone().get(0).getToneCategories().get(0).getCategoryId()
    );
    System.assertEquals(
      'category_name',
      response.getSentencesTone().get(0).getToneCategories().get(0).getCategoryName()
    );
    System.assertEquals(
      10L,
      response.getSentencesTone().get(0).getInputFrom()
    );
    System.assertEquals(
      10L,
      response.getSentencesTone().get(0).getInputTo()
    );

    Test.stopTest();
  }
  static testMethod void testToneChat() {
    String mockResponseBody = IBMWatsonMockResponses.toneAnalyzerV3UtteranceAnalyses();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String text = 'text';
    IBMToneAnalyzerV3Models.Utterance utterancesItem = new IBMToneAnalyzerV3Models.UtteranceBuilder()
      .text(text)
      .build();
    List<IBMToneAnalyzerV3Models.Utterance> utterances = new List<IBMToneAnalyzerV3Models.Utterance> { utterancesItem } ;
    String contentLanguage = 'content_language';
    String acceptLanguage = 'accept_language';

    IBMToneAnalyzerV3Models.ToneChatOptions options = new IBMToneAnalyzerV3Models.ToneChatOptionsBuilder()
      .utterances(utterances)
      .contentLanguage(contentLanguage)
      .acceptLanguage(acceptLanguage)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMToneAnalyzerV3Models.UtteranceAnalyses response = service.toneChat(options);

    System.assertEquals(
      10L,
      response.getUtterancesTone().get(0).getUtteranceId()
    );
    System.assertEquals(
      'utterance_text',
      response.getUtterancesTone().get(0).getUtteranceText()
    );
    System.assertEquals(
      0.5,
      response.getUtterancesTone().get(0).getTones().get(0).getScore()
    );
    System.assertEquals(
      'tone_id',
      response.getUtterancesTone().get(0).getTones().get(0).getToneId()
    );
    System.assertEquals(
      'tone_name',
      response.getUtterancesTone().get(0).getTones().get(0).getToneName()
    );
    System.assertEquals(
      'error',
      response.getUtterancesTone().get(0).getError()
    );
    System.assertEquals(
      'warning',
      response.getWarning()
    );

    Test.stopTest();
  }
}
