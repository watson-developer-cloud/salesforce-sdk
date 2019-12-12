@isTest
private class IBMNaturalLanguageUnderstandingV1Test {
  private static IBMNaturalLanguageUnderstandingV1 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMNaturalLanguageUnderstandingV1('2019-07-12', new IBMWatsonNoAuthAuthenticator());
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

  static testMethod void testAnalyzeOptionsModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokens syntaxOptionsTokensModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokensBuilder()
      .lemma(true)
      .partOfSpeech(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptions syntaxOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsBuilder()
      .tokens(syntaxOptionsTokensModel)
      .sentences(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions categoriesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptionsBuilder()
      .explanation(true)
      .xLimit(38)
      .model('testString')
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions sentimentOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions semanticRolesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .xLimit(38)
      .keywords(true)
      .entities(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions relationsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .model('testString')
      .build();
    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions metadataOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions keywordsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .xLimit(38)
      .sentiment(true)
      .emotion(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions entitiesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .xLimit(38)
      .mentions(true)
      .model('testString')
      .sentiment(true)
      .emotion(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions emotionOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions conceptsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .xLimit(38)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.Features featuresModel = new IBMNaturalLanguageUnderstandingV1Models.FeaturesBuilder()
      .concepts(conceptsOptionsModel)
      .emotion(emotionOptionsModel)
      .entities(entitiesOptionsModel)
      .keywords(keywordsOptionsModel)
      .metadata(metadataOptionsModel)
      .relations(relationsOptionsModel)
      .semanticRoles(semanticRolesOptionsModel)
      .sentiment(sentimentOptionsModel)
      .categories(categoriesOptionsModel)
      .syntax(syntaxOptionsModel)
      .build();

    IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptionsBuilder()
      .features(featuresModel)
      .text('testString')
      .html('testString')
      .url('testString')
      .clean(true)
      .xpath('testString')
      .fallbackToRaw(true)
      .returnAnalyzedText(true)
      .language('testString')
      .limitTextCharacters(38)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(featuresModel, testRequestModel.features());
    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals('testString', testRequestModel.html());
    System.assertEquals('testString', testRequestModel.url());
    System.assertEquals(true, testRequestModel.clean());
    System.assertEquals('testString', testRequestModel.xpath());
    System.assertEquals(true, testRequestModel.fallbackToRaw());
    System.assertEquals(true, testRequestModel.returnAnalyzedText());
    System.assertEquals('testString', testRequestModel.language());
    System.assertEquals(38, testRequestModel.limitTextCharacters());
    Test.stopTest();
  }
  static testMethod void testCategoriesOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptionsBuilder()
      .explanation(true)
      .xLimit(38)
      .model('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.explanation());
    System.assertEquals(38, testRequestModel.xLimit());
    System.assertEquals('testString', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testConceptsOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .xLimit(38)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(38, testRequestModel.xLimit());
    Test.stopTest();
  }
  static testMethod void testDeleteModelOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptionsBuilder()
      .modelId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testEmotionOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.document());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.targets());
    Test.stopTest();
  }
  static testMethod void testEntitiesOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .xLimit(38)
      .mentions(true)
      .model('testString')
      .sentiment(true)
      .emotion(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(38, testRequestModel.xLimit());
    System.assertEquals(true, testRequestModel.mentions());
    System.assertEquals('testString', testRequestModel.model());
    System.assertEquals(true, testRequestModel.sentiment());
    System.assertEquals(true, testRequestModel.emotion());
    Test.stopTest();
  }
  static testMethod void testFeaturesModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokens syntaxOptionsTokensModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokensBuilder()
      .lemma(true)
      .partOfSpeech(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptions syntaxOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsBuilder()
      .tokens(syntaxOptionsTokensModel)
      .sentences(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions categoriesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptionsBuilder()
      .explanation(true)
      .xLimit(38)
      .model('testString')
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions sentimentOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions semanticRolesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .xLimit(38)
      .keywords(true)
      .entities(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions relationsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .model('testString')
      .build();
    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions metadataOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions keywordsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .xLimit(38)
      .sentiment(true)
      .emotion(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions entitiesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .xLimit(38)
      .mentions(true)
      .model('testString')
      .sentiment(true)
      .emotion(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions emotionOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions conceptsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .xLimit(38)
      .build();

    IBMNaturalLanguageUnderstandingV1Models.Features testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.FeaturesBuilder()
      .concepts(conceptsOptionsModel)
      .emotion(emotionOptionsModel)
      .entities(entitiesOptionsModel)
      .keywords(keywordsOptionsModel)
      .metadata(metadataOptionsModel)
      .relations(relationsOptionsModel)
      .semanticRoles(semanticRolesOptionsModel)
      .sentiment(sentimentOptionsModel)
      .categories(categoriesOptionsModel)
      .syntax(syntaxOptionsModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(conceptsOptionsModel, testRequestModel.concepts());
    System.assertEquals(emotionOptionsModel, testRequestModel.emotion());
    System.assertEquals(entitiesOptionsModel, testRequestModel.entities());
    System.assertEquals(keywordsOptionsModel, testRequestModel.keywords());
    System.assertEquals(metadataOptionsModel, testRequestModel.metadata());
    System.assertEquals(relationsOptionsModel, testRequestModel.relations());
    System.assertEquals(semanticRolesOptionsModel, testRequestModel.semanticRoles());
    System.assertEquals(sentimentOptionsModel, testRequestModel.sentiment());
    System.assertEquals(categoriesOptionsModel, testRequestModel.categories());
    System.assertEquals(syntaxOptionsModel, testRequestModel.syntax());
    Test.stopTest();
  }
  static testMethod void testKeywordsOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .xLimit(38)
      .sentiment(true)
      .emotion(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(38, testRequestModel.xLimit());
    System.assertEquals(true, testRequestModel.sentiment());
    System.assertEquals(true, testRequestModel.emotion());
    Test.stopTest();
  }
  static testMethod void testListModelsOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.ListModelsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testMetadataOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testRelationsOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .model('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .xLimit(38)
      .keywords(true)
      .entities(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(38, testRequestModel.xLimit());
    System.assertEquals(true, testRequestModel.keywords());
    System.assertEquals(true, testRequestModel.entities());
    Test.stopTest();
  }
  static testMethod void testSentimentOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.document());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.targets());
    Test.stopTest();
  }
  static testMethod void testSyntaxOptionsModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokens syntaxOptionsTokensModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokensBuilder()
      .lemma(true)
      .partOfSpeech(true)
      .build();

    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsBuilder()
      .tokens(syntaxOptionsTokensModel)
      .sentences(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(syntaxOptionsTokensModel, testRequestModel.tokens());
    System.assertEquals(true, testRequestModel.sentences());
    Test.stopTest();
  }
  static testMethod void testSyntaxOptionsTokensModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokens testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokensBuilder()
      .lemma(true)
      .partOfSpeech(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.getLemma());
    System.assertEquals(true, testRequestModel.getPartOfSpeech());
    Test.stopTest();
  }

  static testMethod void testAnalyze() {
    String mockResponseBody = '{"language": "language", "analyzed_text": "analyzedText", "retrieved_url": "retrievedUrl", "usage": {"features": "8", "text_characters": "14", "text_units": "9"}, "concepts": [{"text": "text", "relevance": "9", "dbpedia_resource": "dbpediaResource"}], "entities": [{"type": "xType", "text": "text", "relevance": "9", "confidence": "10", "mentions": [{"text": "text", "location": ["8"], "confidence": "10"}], "count": "5", "emotion": {"anger": "5", "disgust": "7", "fear": "4", "joy": "3", "sadness": "7"}, "sentiment": {"score": "5"}, "disambiguation": {"name": "name", "dbpedia_resource": "dbpediaResource", "subtype": ["subtype"]}}], "keywords": [{"count": "5", "relevance": "9", "text": "text", "emotion": {"anger": "5", "disgust": "7", "fear": "4", "joy": "3", "sadness": "7"}, "sentiment": {"score": "5"}}], "categories": [{"label": "label", "score": "5", "explanation": {"relevant_text": [{"text": "text"}]}}], "emotion": {"document": {"emotion": {"anger": "5", "disgust": "7", "fear": "4", "joy": "3", "sadness": "7"}}, "targets": [{"text": "text", "emotion": {"anger": "5", "disgust": "7", "fear": "4", "joy": "3", "sadness": "7"}}]}, "metadata": {"authors": [{"name": "name"}], "publication_date": "publicationDate", "title": "title", "image": "image", "feeds": [{"link": "link"}]}, "relations": [{"score": "5", "sentence": "sentence", "type": "xType", "arguments": [{"entities": [{"text": "text", "type": "xType"}], "location": ["8"], "text": "text"}]}], "semantic_roles": [{"sentence": "sentence", "subject": {"text": "text", "entities": [{"type": "xType", "text": "text"}], "keywords": [{"text": "text"}]}, "action": {"text": "text", "normalized": "normalized", "verb": {"text": "text", "tense": "tense"}}, "object": {"text": "text", "keywords": [{"text": "text"}]}}], "sentiment": {"document": {"label": "label", "score": "5"}, "targets": [{"text": "text", "score": "5"}]}, "syntax": {"tokens": [{"text": "text", "part_of_speech": "partOfSpeech", "location": ["8"], "lemma": "lemma"}], "sentences": [{"text": "text", "location": ["8"]}]}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokens syntaxOptionsTokensModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokensBuilder()
      .lemma(true)
      .partOfSpeech(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptions syntaxOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsBuilder()
      .tokens(syntaxOptionsTokensModel)
      .sentences(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions categoriesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptionsBuilder()
      .explanation(true)
      .xLimit(38)
      .model('testString')
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions sentimentOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions semanticRolesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .xLimit(38)
      .keywords(true)
      .entities(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions relationsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .model('testString')
      .build();
    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions metadataOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions keywordsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .xLimit(38)
      .sentiment(true)
      .emotion(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions entitiesOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .xLimit(38)
      .mentions(true)
      .model('testString')
      .sentiment(true)
      .emotion(true)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions emotionOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .document(true)
      .targets(new List<String> { 'testString' })
      .build();
    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions conceptsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .xLimit(38)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.Features featuresModel = new IBMNaturalLanguageUnderstandingV1Models.FeaturesBuilder()
      .concepts(conceptsOptionsModel)
      .emotion(emotionOptionsModel)
      .entities(entitiesOptionsModel)
      .keywords(keywordsOptionsModel)
      .metadata(metadataOptionsModel)
      .relations(relationsOptionsModel)
      .semanticRoles(semanticRolesOptionsModel)
      .sentiment(sentimentOptionsModel)
      .categories(categoriesOptionsModel)
      .syntax(syntaxOptionsModel)
      .build();
    IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions analyzeOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptionsBuilder()
      .features(featuresModel)
      .text('testString')
      .html('testString')
      .url('testString')
      .clean(true)
      .xpath('testString')
      .fallbackToRaw(true)
      .returnAnalyzedText(true)
      .language('testString')
      .limitTextCharacters(38)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageUnderstandingV1Models.AnalysisResults response = service.analyze(analyzeOptionsModel);
    System.assert(response.getLanguage() != null);
    System.assert(response.getAnalyzedText() != null);
    System.assert(response.getRetrievedUrl() != null);
    System.assert(response.getUsage().getFeatures() != null);
    System.assert(response.getUsage().getTextCharacters() != null);
    System.assert(response.getUsage().getTextUnits() != null);
    System.assert(response.getConcepts().get(0).getText() != null);
    System.assert(response.getConcepts().get(0).getRelevance() != null);
    System.assert(response.getConcepts().get(0).getDbpediaResource() != null);
    System.assert(response.getEntities().get(0).getXType() != null);
    System.assert(response.getEntities().get(0).getText() != null);
    System.assert(response.getEntities().get(0).getRelevance() != null);
    System.assert(response.getEntities().get(0).getConfidence() != null);
    System.assert(response.getEntities().get(0).getMentions().get(0).getText() != null);
    System.assert(response.getEntities().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getEntities().get(0).getMentions().get(0).getConfidence() != null);
    System.assert(response.getEntities().get(0).getCount() != null);
    System.assert(response.getEntities().get(0).getEmotion().getAnger() != null);
    System.assert(response.getEntities().get(0).getEmotion().getDisgust() != null);
    System.assert(response.getEntities().get(0).getEmotion().getFear() != null);
    System.assert(response.getEntities().get(0).getEmotion().getJoy() != null);
    System.assert(response.getEntities().get(0).getEmotion().getSadness() != null);
    System.assert(response.getEntities().get(0).getSentiment().getScore() != null);
    System.assert(response.getEntities().get(0).getDisambiguation().getName() != null);
    System.assert(response.getEntities().get(0).getDisambiguation().getDbpediaResource() != null);
    System.assert(response.getEntities().get(0).getDisambiguation().getSubtype().get(0) != null);
    System.assert(response.getKeywords().get(0).getCount() != null);
    System.assert(response.getKeywords().get(0).getRelevance() != null);
    System.assert(response.getKeywords().get(0).getText() != null);
    System.assert(response.getKeywords().get(0).getEmotion().getAnger() != null);
    System.assert(response.getKeywords().get(0).getEmotion().getDisgust() != null);
    System.assert(response.getKeywords().get(0).getEmotion().getFear() != null);
    System.assert(response.getKeywords().get(0).getEmotion().getJoy() != null);
    System.assert(response.getKeywords().get(0).getEmotion().getSadness() != null);
    System.assert(response.getKeywords().get(0).getSentiment().getScore() != null);
    System.assert(response.getCategories().get(0).getLabel() != null);
    System.assert(response.getCategories().get(0).getScore() != null);
    System.assert(response.getCategories().get(0).getExplanation().getRelevantText().get(0).getText() != null);
    System.assert(response.getEmotion().getDocument().getEmotion().getAnger() != null);
    System.assert(response.getEmotion().getDocument().getEmotion().getDisgust() != null);
    System.assert(response.getEmotion().getDocument().getEmotion().getFear() != null);
    System.assert(response.getEmotion().getDocument().getEmotion().getJoy() != null);
    System.assert(response.getEmotion().getDocument().getEmotion().getSadness() != null);
    System.assert(response.getEmotion().getTargets().get(0).getText() != null);
    System.assert(response.getEmotion().getTargets().get(0).getEmotion().getAnger() != null);
    System.assert(response.getEmotion().getTargets().get(0).getEmotion().getDisgust() != null);
    System.assert(response.getEmotion().getTargets().get(0).getEmotion().getFear() != null);
    System.assert(response.getEmotion().getTargets().get(0).getEmotion().getJoy() != null);
    System.assert(response.getEmotion().getTargets().get(0).getEmotion().getSadness() != null);
    System.assert(response.getMetadata().getAuthors().get(0).getName() != null);
    System.assert(response.getMetadata().getPublicationDate() != null);
    System.assert(response.getMetadata().getTitle() != null);
    System.assert(response.getMetadata().getImage() != null);
    System.assert(response.getMetadata().getFeeds().get(0).getLink() != null);
    System.assert(response.getRelations().get(0).getScore() != null);
    System.assert(response.getRelations().get(0).getSentence() != null);
    System.assert(response.getRelations().get(0).getXType() != null);
    System.assert(response.getRelations().get(0).getArguments().get(0).getEntities().get(0).getText() != null);
    System.assert(response.getRelations().get(0).getArguments().get(0).getEntities().get(0).getXType() != null);
    System.assert(response.getRelations().get(0).getArguments().get(0).getLocation().get(0) != null);
    System.assert(response.getRelations().get(0).getArguments().get(0).getText() != null);
    System.assert(response.getSemanticRoles().get(0).getSentence() != null);
    System.assert(response.getSemanticRoles().get(0).getSubject().getText() != null);
    System.assert(response.getSemanticRoles().get(0).getSubject().getEntities().get(0).getXType() != null);
    System.assert(response.getSemanticRoles().get(0).getSubject().getEntities().get(0).getText() != null);
    System.assert(response.getSemanticRoles().get(0).getSubject().getKeywords().get(0).getText() != null);
    System.assert(response.getSemanticRoles().get(0).getAction().getText() != null);
    System.assert(response.getSemanticRoles().get(0).getAction().getNormalized() != null);
    System.assert(response.getSemanticRoles().get(0).getAction().getVerb().getText() != null);
    System.assert(response.getSemanticRoles().get(0).getAction().getVerb().getTense() != null);
    System.assert(response.getSemanticRoles().get(0).getXObject().getText() != null);
    System.assert(response.getSemanticRoles().get(0).getXObject().getKeywords().get(0).getText() != null);
    System.assert(response.getSentiment().getDocument().getLabel() != null);
    System.assert(response.getSentiment().getDocument().getScore() != null);
    System.assert(response.getSentiment().getTargets().get(0).getText() != null);
    System.assert(response.getSentiment().getTargets().get(0).getScore() != null);
    System.assert(response.getSyntax().getTokens().get(0).getText() != null);
    System.assert(response.getSyntax().getTokens().get(0).getPartOfSpeech() != null);
    System.assert(response.getSyntax().getTokens().get(0).getLocation().get(0) != null);
    System.assert(response.getSyntax().getTokens().get(0).getLemma() != null);
    System.assert(response.getSyntax().getSentences().get(0).getText() != null);
    System.assert(response.getSyntax().getSentences().get(0).getLocation().get(0) != null);

    Test.stopTest();
  }
  static testMethod void testListModels() {
    String mockResponseBody = '{"models": [{"status": "status", "model_id": "modelId", "language": "language", "description": "description", "workspace_id": "workspaceId", "version": "version", "version_description": "versionDescription", "created": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions listModelsOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.ListModelsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageUnderstandingV1Models.ListModelsResults response = service.listModels(listModelsOptionsModel);
    System.assert(response.getModels().get(0).getStatus() != null);
    System.assert(response.getModels().get(0).getModelId() != null);
    System.assert(response.getModels().get(0).getLanguage() != null);
    System.assert(response.getModels().get(0).getDescription() != null);
    System.assert(response.getModels().get(0).getWorkspaceId() != null);
    System.assert(response.getModels().get(0).getVersion() != null);
    System.assert(response.getModels().get(0).getVersionDescription() != null);
    System.assert(response.getModels().get(0).getCreated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptions deleteModelOptionsModel = new IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptionsBuilder()
      .modelId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteModel(deleteModelOptionsModel);

    Test.stopTest();
  }
}
