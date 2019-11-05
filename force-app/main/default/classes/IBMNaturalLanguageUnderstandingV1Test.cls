@isTest
private class IBMNaturalLanguageUnderstandingV1Test {
  private static IBMNaturalLanguageUnderstandingV1 service;

  static {
    service = new IBMNaturalLanguageUnderstandingV1('2019-07-12', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testAnalysisResultsModel() {
    Test.startTest();
    String language = 'language';
    String analyzedText = 'analyzed_text';
    String retrievedUrl = 'retrieved_url';
    IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsUsage usage = new IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsUsage();
    IBMNaturalLanguageUnderstandingV1Models.ConceptsResult conceptsItem = new IBMNaturalLanguageUnderstandingV1Models.ConceptsResult();
    List<IBMNaturalLanguageUnderstandingV1Models.ConceptsResult> concepts = new List<IBMNaturalLanguageUnderstandingV1Models.ConceptsResult> { conceptsItem } ;
    IBMNaturalLanguageUnderstandingV1Models.EntitiesResult entitiesItem = new IBMNaturalLanguageUnderstandingV1Models.EntitiesResult();
    List<IBMNaturalLanguageUnderstandingV1Models.EntitiesResult> entities = new List<IBMNaturalLanguageUnderstandingV1Models.EntitiesResult> { entitiesItem } ;
    IBMNaturalLanguageUnderstandingV1Models.KeywordsResult keywordsItem = new IBMNaturalLanguageUnderstandingV1Models.KeywordsResult();
    List<IBMNaturalLanguageUnderstandingV1Models.KeywordsResult> keywords = new List<IBMNaturalLanguageUnderstandingV1Models.KeywordsResult> { keywordsItem } ;
    IBMNaturalLanguageUnderstandingV1Models.CategoriesResult categoriesItem = new IBMNaturalLanguageUnderstandingV1Models.CategoriesResult();
    List<IBMNaturalLanguageUnderstandingV1Models.CategoriesResult> categories = new List<IBMNaturalLanguageUnderstandingV1Models.CategoriesResult> { categoriesItem } ;
    IBMNaturalLanguageUnderstandingV1Models.EmotionResult emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionResult();
    IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsMetadata metadata = new IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsMetadata();
    IBMNaturalLanguageUnderstandingV1Models.RelationsResult relationsItem = new IBMNaturalLanguageUnderstandingV1Models.RelationsResult();
    List<IBMNaturalLanguageUnderstandingV1Models.RelationsResult> relations = new List<IBMNaturalLanguageUnderstandingV1Models.RelationsResult> { relationsItem } ;
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResult semanticRolesItem = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResult();
    List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResult> semanticRoles = new List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResult> { semanticRolesItem } ;
    IBMNaturalLanguageUnderstandingV1Models.SentimentResult sentiment = new IBMNaturalLanguageUnderstandingV1Models.SentimentResult();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxResult syntax = new IBMNaturalLanguageUnderstandingV1Models.SyntaxResult();

    IBMNaturalLanguageUnderstandingV1Models.AnalysisResults testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.AnalysisResults();
    testRequestModel.setLanguage(language);
    testRequestModel.setAnalyzedText(analyzedText);
    testRequestModel.setRetrievedUrl(retrievedUrl);
    testRequestModel.setUsage(usage);
    testRequestModel.setConcepts(concepts);
    testRequestModel.setEntities(entities);
    testRequestModel.setKeywords(keywords);
    testRequestModel.setCategories(categories);
    testRequestModel.setEmotion(emotion);
    testRequestModel.setMetadata(metadata);
    testRequestModel.setRelations(relations);
    testRequestModel.setSemanticRoles(semanticRoles);
    testRequestModel.setSentiment(sentiment);
    testRequestModel.setSyntax(syntax);

    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(analyzedText, testRequestModel.getAnalyzedText());
    System.assertEquals(retrievedUrl, testRequestModel.getRetrievedUrl());
    System.assertEquals(usage, testRequestModel.getUsage());
    System.assertEquals(concepts, testRequestModel.getConcepts());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(keywords, testRequestModel.getKeywords());
    System.assertEquals(categories, testRequestModel.getCategories());
    System.assertEquals(emotion, testRequestModel.getEmotion());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(relations, testRequestModel.getRelations());
    System.assertEquals(semanticRoles, testRequestModel.getSemanticRoles());
    System.assertEquals(sentiment, testRequestModel.getSentiment());
    System.assertEquals(syntax, testRequestModel.getSyntax());
    Test.stopTest();
  }
  static testMethod void testAnalysisResultsMetadataModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.Author authorsItem = new IBMNaturalLanguageUnderstandingV1Models.Author();
    List<IBMNaturalLanguageUnderstandingV1Models.Author> authors = new List<IBMNaturalLanguageUnderstandingV1Models.Author> { authorsItem } ;
    String publicationDate = 'publication_date';
    String title = 'title';
    String image = 'image';
    IBMNaturalLanguageUnderstandingV1Models.Feed feedsItem = new IBMNaturalLanguageUnderstandingV1Models.Feed();
    List<IBMNaturalLanguageUnderstandingV1Models.Feed> feeds = new List<IBMNaturalLanguageUnderstandingV1Models.Feed> { feedsItem } ;

    IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsMetadata testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsMetadata();
    testRequestModel.setAuthors(authors);
    testRequestModel.setPublicationDate(publicationDate);
    testRequestModel.setTitle(title);
    testRequestModel.setImage(image);
    testRequestModel.setFeeds(feeds);

    System.assertEquals(authors, testRequestModel.getAuthors());
    System.assertEquals(publicationDate, testRequestModel.getPublicationDate());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(image, testRequestModel.getImage());
    System.assertEquals(feeds, testRequestModel.getFeeds());
    Test.stopTest();
  }
  static testMethod void testAnalysisResultsUsageModel() {
    Test.startTest();
    Long features = 10L;
    Long textCharacters = 10L;
    Long textUnits = 10L;

    IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsUsage testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.AnalysisResultsUsage();
    testRequestModel.setFeatures(features);
    testRequestModel.setTextCharacters(textCharacters);
    testRequestModel.setTextUnits(textUnits);

    System.assertEquals(features, testRequestModel.getFeatures());
    System.assertEquals(textCharacters, testRequestModel.getTextCharacters());
    System.assertEquals(textUnits, testRequestModel.getTextUnits());
    Test.stopTest();
  }
  static testMethod void testAnalyzeOptionsModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.Features features = new IBMNaturalLanguageUnderstandingV1Models.FeaturesBuilder()
      .build();
    String text = 'text';
    String html = 'html';
    String url = 'url';
    Boolean clean = true;
    String xpath = 'xpath';
    Boolean fallbackToRaw = true;
    Boolean returnAnalyzedText = true;
    String language = 'language';
    Long limitTextCharacters = 10L;

    IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptionsBuilder()
      .features(features)
      .text(text)
      .html(html)
      .url(url)
      .clean(clean)
      .xpath(xpath)
      .fallbackToRaw(fallbackToRaw)
      .returnAnalyzedText(returnAnalyzedText)
      .language(language)
      .limitTextCharacters(limitTextCharacters)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(features, testRequestModel.features());
    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(html, testRequestModel.html());
    System.assertEquals(url, testRequestModel.url());
    System.assertEquals(clean, testRequestModel.clean());
    System.assertEquals(xpath, testRequestModel.xpath());
    System.assertEquals(fallbackToRaw, testRequestModel.fallbackToRaw());
    System.assertEquals(returnAnalyzedText, testRequestModel.returnAnalyzedText());
    System.assertEquals(language, testRequestModel.language());
    System.assertEquals(limitTextCharacters, testRequestModel.limitTextCharacters());
    Test.stopTest();
  }
  static testMethod void testAuthorModel() {
    Test.startTest();
    String name = 'name';

    IBMNaturalLanguageUnderstandingV1Models.Author testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.Author();
    testRequestModel.setName(name);

    System.assertEquals(name, testRequestModel.getName());
    Test.stopTest();
  }
  static testMethod void testCategoriesOptionsModel() {
    Test.startTest();
    Boolean explanation = true;
    Long xLimit = 10L;
    String model = 'model';

    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptionsBuilder()
      .explanation(explanation)
      .xLimit(xLimit)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(explanation, testRequestModel.explanation());
    System.assertEquals(xLimit, testRequestModel.xLimit());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testCategoriesRelevantTextModel() {
    Test.startTest();
    String text = 'text';

    IBMNaturalLanguageUnderstandingV1Models.CategoriesRelevantText testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesRelevantText();
    testRequestModel.setText(text);

    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testCategoriesResultModel() {
    Test.startTest();
    String label = 'label';
    Double score = 0.5;
    IBMNaturalLanguageUnderstandingV1Models.CategoriesResultExplanation explanation = new IBMNaturalLanguageUnderstandingV1Models.CategoriesResultExplanation();

    IBMNaturalLanguageUnderstandingV1Models.CategoriesResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesResult();
    testRequestModel.setLabel(label);
    testRequestModel.setScore(score);
    testRequestModel.setExplanation(explanation);

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(score, testRequestModel.getScore());
    System.assertEquals(explanation, testRequestModel.getExplanation());
    Test.stopTest();
  }
  static testMethod void testCategoriesResultExplanationModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.CategoriesRelevantText relevantTextItem = new IBMNaturalLanguageUnderstandingV1Models.CategoriesRelevantText();
    List<IBMNaturalLanguageUnderstandingV1Models.CategoriesRelevantText> relevantText = new List<IBMNaturalLanguageUnderstandingV1Models.CategoriesRelevantText> { relevantTextItem } ;

    IBMNaturalLanguageUnderstandingV1Models.CategoriesResultExplanation testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.CategoriesResultExplanation();
    testRequestModel.setRelevantText(relevantText);

    System.assertEquals(relevantText, testRequestModel.getRelevantText());
    Test.stopTest();
  }
  static testMethod void testConceptsOptionsModel() {
    Test.startTest();
    Long xLimit = 10L;

    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .xLimit(xLimit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xLimit, testRequestModel.xLimit());
    Test.stopTest();
  }
  static testMethod void testConceptsResultModel() {
    Test.startTest();
    String text = 'text';
    Double relevance = 0.5;
    String dbpediaResource = 'dbpedia_resource';

    IBMNaturalLanguageUnderstandingV1Models.ConceptsResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.ConceptsResult();
    testRequestModel.setText(text);
    testRequestModel.setRelevance(relevance);
    testRequestModel.setDbpediaResource(dbpediaResource);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(relevance, testRequestModel.getRelevance());
    System.assertEquals(dbpediaResource, testRequestModel.getDbpediaResource());
    Test.stopTest();
  }
  static testMethod void testDeleteModelOptionsModel() {
    Test.startTest();
    String modelId = 'model_id';

    IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptionsBuilder()
      .modelId(modelId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(modelId, testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testDisambiguationResultModel() {
    Test.startTest();
    String name = 'name';
    String dbpediaResource = 'dbpedia_resource';
    List<String> subtype = new List<String> { 'subtype' } ;

    IBMNaturalLanguageUnderstandingV1Models.DisambiguationResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.DisambiguationResult();
    testRequestModel.setName(name);
    testRequestModel.setDbpediaResource(dbpediaResource);
    testRequestModel.setSubtype(subtype);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(dbpediaResource, testRequestModel.getDbpediaResource());
    System.assertEquals(subtype, testRequestModel.getSubtype());
    Test.stopTest();
  }
  static testMethod void testDocumentEmotionResultsModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.EmotionScores emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionScores();

    IBMNaturalLanguageUnderstandingV1Models.DocumentEmotionResults testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.DocumentEmotionResults();
    testRequestModel.setEmotion(emotion);

    System.assertEquals(emotion, testRequestModel.getEmotion());
    Test.stopTest();
  }
  static testMethod void testDocumentSentimentResultsModel() {
    Test.startTest();
    String label = 'label';
    Double score = 0.5;

    IBMNaturalLanguageUnderstandingV1Models.DocumentSentimentResults testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.DocumentSentimentResults();
    testRequestModel.setLabel(label);
    testRequestModel.setScore(score);

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(score, testRequestModel.getScore());
    Test.stopTest();
  }
  static testMethod void testEmotionOptionsModel() {
    Test.startTest();
    Boolean document = true;
    List<String> targets = new List<String> { 'targets' } ;

    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .document(document)
      .targets(targets)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(document, testRequestModel.document());
    System.assertEquals(targets, testRequestModel.targets());
    Test.stopTest();
  }
  static testMethod void testEmotionResultModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.DocumentEmotionResults document = new IBMNaturalLanguageUnderstandingV1Models.DocumentEmotionResults();
    IBMNaturalLanguageUnderstandingV1Models.TargetedEmotionResults targetsItem = new IBMNaturalLanguageUnderstandingV1Models.TargetedEmotionResults();
    List<IBMNaturalLanguageUnderstandingV1Models.TargetedEmotionResults> targets = new List<IBMNaturalLanguageUnderstandingV1Models.TargetedEmotionResults> { targetsItem } ;

    IBMNaturalLanguageUnderstandingV1Models.EmotionResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EmotionResult();
    testRequestModel.setDocument(document);
    testRequestModel.setTargets(targets);

    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(targets, testRequestModel.getTargets());
    Test.stopTest();
  }
  static testMethod void testEmotionScoresModel() {
    Test.startTest();
    Double anger = 0.5;
    Double disgust = 0.5;
    Double fear = 0.5;
    Double joy = 0.5;
    Double sadness = 0.5;

    IBMNaturalLanguageUnderstandingV1Models.EmotionScores testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EmotionScores();
    testRequestModel.setAnger(anger);
    testRequestModel.setDisgust(disgust);
    testRequestModel.setFear(fear);
    testRequestModel.setJoy(joy);
    testRequestModel.setSadness(sadness);

    System.assertEquals(anger, testRequestModel.getAnger());
    System.assertEquals(disgust, testRequestModel.getDisgust());
    System.assertEquals(fear, testRequestModel.getFear());
    System.assertEquals(joy, testRequestModel.getJoy());
    System.assertEquals(sadness, testRequestModel.getSadness());
    Test.stopTest();
  }
  static testMethod void testEntitiesOptionsModel() {
    Test.startTest();
    Long xLimit = 10L;
    Boolean mentions = true;
    String model = 'model';
    Boolean sentiment = true;
    Boolean emotion = true;

    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .xLimit(xLimit)
      .mentions(mentions)
      .model(model)
      .sentiment(sentiment)
      .emotion(emotion)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xLimit, testRequestModel.xLimit());
    System.assertEquals(mentions, testRequestModel.mentions());
    System.assertEquals(model, testRequestModel.model());
    System.assertEquals(sentiment, testRequestModel.sentiment());
    System.assertEquals(emotion, testRequestModel.emotion());
    Test.stopTest();
  }
  static testMethod void testEntitiesResultModel() {
    Test.startTest();
    String xType = 'x_type';
    String text = 'text';
    Double relevance = 0.5;
    Double confidence = 0.5;
    IBMNaturalLanguageUnderstandingV1Models.EntityMention mentionsItem = new IBMNaturalLanguageUnderstandingV1Models.EntityMention();
    List<IBMNaturalLanguageUnderstandingV1Models.EntityMention> mentions = new List<IBMNaturalLanguageUnderstandingV1Models.EntityMention> { mentionsItem } ;
    Long count = 10L;
    IBMNaturalLanguageUnderstandingV1Models.EmotionScores emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionScores();
    IBMNaturalLanguageUnderstandingV1Models.FeatureSentimentResults sentiment = new IBMNaturalLanguageUnderstandingV1Models.FeatureSentimentResults();
    IBMNaturalLanguageUnderstandingV1Models.DisambiguationResult disambiguation = new IBMNaturalLanguageUnderstandingV1Models.DisambiguationResult();

    IBMNaturalLanguageUnderstandingV1Models.EntitiesResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EntitiesResult();
    testRequestModel.setXType(xType);
    testRequestModel.setText(text);
    testRequestModel.setRelevance(relevance);
    testRequestModel.setConfidence(confidence);
    testRequestModel.setMentions(mentions);
    testRequestModel.setCount(count);
    testRequestModel.setEmotion(emotion);
    testRequestModel.setSentiment(sentiment);
    testRequestModel.setDisambiguation(disambiguation);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(relevance, testRequestModel.getRelevance());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(mentions, testRequestModel.getMentions());
    System.assertEquals(count, testRequestModel.getCount());
    System.assertEquals(emotion, testRequestModel.getEmotion());
    System.assertEquals(sentiment, testRequestModel.getSentiment());
    System.assertEquals(disambiguation, testRequestModel.getDisambiguation());
    Test.stopTest();
  }
  static testMethod void testEntityMentionModel() {
    Test.startTest();
    String text = 'text';
    List<Long> location = new List<Long> { 10L } ;
    Double confidence = 0.5;

    IBMNaturalLanguageUnderstandingV1Models.EntityMention testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.EntityMention();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);
    testRequestModel.setConfidence(confidence);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    Test.stopTest();
  }
  static testMethod void testFeatureSentimentResultsModel() {
    Test.startTest();
    Double score = 0.5;

    IBMNaturalLanguageUnderstandingV1Models.FeatureSentimentResults testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.FeatureSentimentResults();
    testRequestModel.setScore(score);

    System.assertEquals(score, testRequestModel.getScore());
    Test.stopTest();
  }
  static testMethod void testFeaturesModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions concepts = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions entities = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions keywords = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions metadata = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions relations = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions semanticRoles = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions sentiment = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions categories = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptionsBuilder()
      .build();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptions syntax = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsBuilder()
      .build();

    IBMNaturalLanguageUnderstandingV1Models.Features testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.FeaturesBuilder()
      .concepts(concepts)
      .emotion(emotion)
      .entities(entities)
      .keywords(keywords)
      .metadata(metadata)
      .relations(relations)
      .semanticRoles(semanticRoles)
      .sentiment(sentiment)
      .categories(categories)
      .syntax(syntax)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(concepts, testRequestModel.concepts());
    System.assertEquals(emotion, testRequestModel.emotion());
    System.assertEquals(entities, testRequestModel.entities());
    System.assertEquals(keywords, testRequestModel.keywords());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(relations, testRequestModel.relations());
    System.assertEquals(semanticRoles, testRequestModel.semanticRoles());
    System.assertEquals(sentiment, testRequestModel.sentiment());
    System.assertEquals(categories, testRequestModel.categories());
    System.assertEquals(syntax, testRequestModel.syntax());
    Test.stopTest();
  }
  static testMethod void testFeedModel() {
    Test.startTest();
    String link = 'link';

    IBMNaturalLanguageUnderstandingV1Models.Feed testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.Feed();
    testRequestModel.setLink(link);

    System.assertEquals(link, testRequestModel.getLink());
    Test.stopTest();
  }
  static testMethod void testKeywordsOptionsModel() {
    Test.startTest();
    Long xLimit = 10L;
    Boolean sentiment = true;
    Boolean emotion = true;

    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .xLimit(xLimit)
      .sentiment(sentiment)
      .emotion(emotion)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xLimit, testRequestModel.xLimit());
    System.assertEquals(sentiment, testRequestModel.sentiment());
    System.assertEquals(emotion, testRequestModel.emotion());
    Test.stopTest();
  }
  static testMethod void testKeywordsResultModel() {
    Test.startTest();
    Long count = 10L;
    Double relevance = 0.5;
    String text = 'text';
    IBMNaturalLanguageUnderstandingV1Models.EmotionScores emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionScores();
    IBMNaturalLanguageUnderstandingV1Models.FeatureSentimentResults sentiment = new IBMNaturalLanguageUnderstandingV1Models.FeatureSentimentResults();

    IBMNaturalLanguageUnderstandingV1Models.KeywordsResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.KeywordsResult();
    testRequestModel.setCount(count);
    testRequestModel.setRelevance(relevance);
    testRequestModel.setText(text);
    testRequestModel.setEmotion(emotion);
    testRequestModel.setSentiment(sentiment);

    System.assertEquals(count, testRequestModel.getCount());
    System.assertEquals(relevance, testRequestModel.getRelevance());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(emotion, testRequestModel.getEmotion());
    System.assertEquals(sentiment, testRequestModel.getSentiment());
    Test.stopTest();
  }
  static testMethod void testListModelsOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.ListModelsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListModelsResultsModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.Model modelsItem = new IBMNaturalLanguageUnderstandingV1Models.Model();
    List<IBMNaturalLanguageUnderstandingV1Models.Model> models = new List<IBMNaturalLanguageUnderstandingV1Models.Model> { modelsItem } ;

    IBMNaturalLanguageUnderstandingV1Models.ListModelsResults testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.ListModelsResults();
    testRequestModel.setModels(models);

    System.assertEquals(models, testRequestModel.getModels());
    Test.stopTest();
  }
  static testMethod void testMetadataOptionsModel() {
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testModelModel() {
    Test.startTest();
    String status = 'status';
    String modelId = 'model_id';
    String language = 'language';
    String description = 'description';
    String workspaceId = 'workspace_id';
    String version = 'version';
    String versionDescription = 'version_description';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);

    IBMNaturalLanguageUnderstandingV1Models.Model testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.Model();
    testRequestModel.setStatus(status);
    testRequestModel.setModelId(modelId);
    testRequestModel.setLanguage(language);
    testRequestModel.setDescription(description);
    testRequestModel.setWorkspaceId(workspaceId);
    testRequestModel.setVersion(version);
    testRequestModel.setVersionDescription(versionDescription);
    testRequestModel.setCreated(created);

    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(workspaceId, testRequestModel.getWorkspaceId());
    System.assertEquals(version, testRequestModel.getVersion());
    System.assertEquals(versionDescription, testRequestModel.getVersionDescription());
    System.assertEquals(created, testRequestModel.getCreated());
    Test.stopTest();
  }
  static testMethod void testRelationArgumentModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.RelationEntity entitiesItem = new IBMNaturalLanguageUnderstandingV1Models.RelationEntity();
    List<IBMNaturalLanguageUnderstandingV1Models.RelationEntity> entities = new List<IBMNaturalLanguageUnderstandingV1Models.RelationEntity> { entitiesItem } ;
    List<Long> location = new List<Long> { 10L } ;
    String text = 'text';

    IBMNaturalLanguageUnderstandingV1Models.RelationArgument testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.RelationArgument();
    testRequestModel.setEntities(entities);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);

    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testRelationEntityModel() {
    Test.startTest();
    String text = 'text';
    String xType = 'x_type';

    IBMNaturalLanguageUnderstandingV1Models.RelationEntity testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.RelationEntity();
    testRequestModel.setText(text);
    testRequestModel.setXType(xType);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(xType, testRequestModel.getXType());
    Test.stopTest();
  }
  static testMethod void testRelationsOptionsModel() {
    Test.startTest();
    String model = 'model';

    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testRelationsResultModel() {
    Test.startTest();
    Double score = 0.5;
    String sentence = 'sentence';
    String xType = 'x_type';
    IBMNaturalLanguageUnderstandingV1Models.RelationArgument argumentsItem = new IBMNaturalLanguageUnderstandingV1Models.RelationArgument();
    List<IBMNaturalLanguageUnderstandingV1Models.RelationArgument> arguments = new List<IBMNaturalLanguageUnderstandingV1Models.RelationArgument> { argumentsItem } ;

    IBMNaturalLanguageUnderstandingV1Models.RelationsResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.RelationsResult();
    testRequestModel.setScore(score);
    testRequestModel.setSentence(sentence);
    testRequestModel.setXType(xType);
    testRequestModel.setArguments(arguments);

    System.assertEquals(score, testRequestModel.getScore());
    System.assertEquals(sentence, testRequestModel.getSentence());
    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(arguments, testRequestModel.getArguments());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesEntityModel() {
    Test.startTest();
    String xType = 'x_type';
    String text = 'text';

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesEntity testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesEntity();
    testRequestModel.setXType(xType);
    testRequestModel.setText(text);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesKeywordModel() {
    Test.startTest();
    String text = 'text';

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword();
    testRequestModel.setText(text);

    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesOptionsModel() {
    Test.startTest();
    Long xLimit = 10L;
    Boolean keywords = true;
    Boolean entities = true;

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .xLimit(xLimit)
      .keywords(keywords)
      .entities(entities)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xLimit, testRequestModel.xLimit());
    System.assertEquals(keywords, testRequestModel.keywords());
    System.assertEquals(entities, testRequestModel.entities());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesResultModel() {
    Test.startTest();
    String sentence = 'sentence';
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultSubject subject = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultSubject();
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultAction action = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultAction();
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultObject xObject = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultObject();

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResult();
    testRequestModel.setSentence(sentence);
    testRequestModel.setSubject(subject);
    testRequestModel.setAction(action);
    testRequestModel.setXObject(xObject);

    System.assertEquals(sentence, testRequestModel.getSentence());
    System.assertEquals(subject, testRequestModel.getSubject());
    System.assertEquals(action, testRequestModel.getAction());
    System.assertEquals(xObject, testRequestModel.getXObject());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesResultActionModel() {
    Test.startTest();
    String text = 'text';
    String normalized = 'normalized';
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesVerb verb = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesVerb();

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultAction testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultAction();
    testRequestModel.setText(text);
    testRequestModel.setNormalized(normalized);
    testRequestModel.setVerb(verb);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(normalized, testRequestModel.getNormalized());
    System.assertEquals(verb, testRequestModel.getVerb());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesResultObjectModel() {
    Test.startTest();
    String text = 'text';
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword keywordsItem = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword();
    List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword> keywords = new List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword> { keywordsItem } ;

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultObject testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultObject();
    testRequestModel.setText(text);
    testRequestModel.setKeywords(keywords);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(keywords, testRequestModel.getKeywords());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesResultSubjectModel() {
    Test.startTest();
    String text = 'text';
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesEntity entitiesItem = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesEntity();
    List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesEntity> entities = new List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesEntity> { entitiesItem } ;
    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword keywordsItem = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword();
    List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword> keywords = new List<IBMNaturalLanguageUnderstandingV1Models.SemanticRolesKeyword> { keywordsItem } ;

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultSubject testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesResultSubject();
    testRequestModel.setText(text);
    testRequestModel.setEntities(entities);
    testRequestModel.setKeywords(keywords);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(keywords, testRequestModel.getKeywords());
    Test.stopTest();
  }
  static testMethod void testSemanticRolesVerbModel() {
    Test.startTest();
    String text = 'text';
    String tense = 'tense';

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesVerb testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesVerb();
    testRequestModel.setText(text);
    testRequestModel.setTense(tense);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(tense, testRequestModel.getTense());
    Test.stopTest();
  }
  static testMethod void testSentenceResultModel() {
    Test.startTest();
    String text = 'text';
    List<Long> location = new List<Long> { 10L } ;

    IBMNaturalLanguageUnderstandingV1Models.SentenceResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SentenceResult();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testSentimentOptionsModel() {
    Test.startTest();
    Boolean document = true;
    List<String> targets = new List<String> { 'targets' } ;

    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .document(document)
      .targets(targets)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(document, testRequestModel.document());
    System.assertEquals(targets, testRequestModel.targets());
    Test.stopTest();
  }
  static testMethod void testSentimentResultModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.DocumentSentimentResults document = new IBMNaturalLanguageUnderstandingV1Models.DocumentSentimentResults();
    IBMNaturalLanguageUnderstandingV1Models.TargetedSentimentResults targetsItem = new IBMNaturalLanguageUnderstandingV1Models.TargetedSentimentResults();
    List<IBMNaturalLanguageUnderstandingV1Models.TargetedSentimentResults> targets = new List<IBMNaturalLanguageUnderstandingV1Models.TargetedSentimentResults> { targetsItem } ;

    IBMNaturalLanguageUnderstandingV1Models.SentimentResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SentimentResult();
    testRequestModel.setDocument(document);
    testRequestModel.setTargets(targets);

    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(targets, testRequestModel.getTargets());
    Test.stopTest();
  }
  static testMethod void testSyntaxOptionsModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokens tokens = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokensBuilder()
      .build();
    Boolean sentences = true;

    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptions testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsBuilder()
      .tokens(tokens)
      .sentences(sentences)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(tokens, testRequestModel.tokens());
    System.assertEquals(sentences, testRequestModel.sentences());
    Test.stopTest();
  }
  static testMethod void testSyntaxOptionsTokensModel() {
    Test.startTest();
    Boolean lemma = true;
    Boolean partOfSpeech = true;

    IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokens testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxOptionsTokensBuilder()
      .lemma(lemma)
      .partOfSpeech(partOfSpeech)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(lemma, testRequestModel.getLemma());
    System.assertEquals(partOfSpeech, testRequestModel.getPartOfSpeech());
    Test.stopTest();
  }
  static testMethod void testSyntaxResultModel() {
    Test.startTest();
    IBMNaturalLanguageUnderstandingV1Models.TokenResult tokensItem = new IBMNaturalLanguageUnderstandingV1Models.TokenResult();
    List<IBMNaturalLanguageUnderstandingV1Models.TokenResult> tokens = new List<IBMNaturalLanguageUnderstandingV1Models.TokenResult> { tokensItem } ;
    IBMNaturalLanguageUnderstandingV1Models.SentenceResult sentencesItem = new IBMNaturalLanguageUnderstandingV1Models.SentenceResult();
    List<IBMNaturalLanguageUnderstandingV1Models.SentenceResult> sentences = new List<IBMNaturalLanguageUnderstandingV1Models.SentenceResult> { sentencesItem } ;

    IBMNaturalLanguageUnderstandingV1Models.SyntaxResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.SyntaxResult();
    testRequestModel.setTokens(tokens);
    testRequestModel.setSentences(sentences);

    System.assertEquals(tokens, testRequestModel.getTokens());
    System.assertEquals(sentences, testRequestModel.getSentences());
    Test.stopTest();
  }
  static testMethod void testTargetedEmotionResultsModel() {
    Test.startTest();
    String text = 'text';
    IBMNaturalLanguageUnderstandingV1Models.EmotionScores emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionScores();

    IBMNaturalLanguageUnderstandingV1Models.TargetedEmotionResults testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.TargetedEmotionResults();
    testRequestModel.setText(text);
    testRequestModel.setEmotion(emotion);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(emotion, testRequestModel.getEmotion());
    Test.stopTest();
  }
  static testMethod void testTargetedSentimentResultsModel() {
    Test.startTest();
    String text = 'text';
    Double score = 0.5;

    IBMNaturalLanguageUnderstandingV1Models.TargetedSentimentResults testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.TargetedSentimentResults();
    testRequestModel.setText(text);
    testRequestModel.setScore(score);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(score, testRequestModel.getScore());
    Test.stopTest();
  }
  static testMethod void testTokenResultModel() {
    Test.startTest();
    String text = 'text';
    String partOfSpeech = 'part_of_speech';
    List<Long> location = new List<Long> { 10L } ;
    String lemma = 'lemma';

    IBMNaturalLanguageUnderstandingV1Models.TokenResult testRequestModel = new IBMNaturalLanguageUnderstandingV1Models.TokenResult();
    testRequestModel.setText(text);
    testRequestModel.setPartOfSpeech(partOfSpeech);
    testRequestModel.setLocation(location);
    testRequestModel.setLemma(lemma);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(partOfSpeech, testRequestModel.getPartOfSpeech());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(lemma, testRequestModel.getLemma());
    Test.stopTest();
  }


  static testMethod void testAnalyze() {
    String mockResponseBody = IBMWatsonMockResponses.naturalLanguageUnderstandingV1AnalysisResults();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMNaturalLanguageUnderstandingV1Models.Features features = new IBMNaturalLanguageUnderstandingV1Models.FeaturesBuilder()
      .build();
    String text = 'text';
    String html = 'html';
    String url = 'url';
    Boolean clean = true;
    String xpath = 'xpath';
    Boolean fallbackToRaw = true;
    Boolean returnAnalyzedText = true;
    String language = 'language';
    Long limitTextCharacters = 10L;

    IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions options = new IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptionsBuilder()
      .features(features)
      .text(text)
      .html(html)
      .url(url)
      .clean(clean)
      .xpath(xpath)
      .fallbackToRaw(fallbackToRaw)
      .returnAnalyzedText(returnAnalyzedText)
      .language(language)
      .limitTextCharacters(limitTextCharacters)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageUnderstandingV1Models.AnalysisResults response = service.analyze(options);

    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'analyzed_text',
      response.getAnalyzedText()
    );
    System.assertEquals(
      'retrieved_url',
      response.getRetrievedUrl()
    );
    System.assertEquals(
      10L,
      response.getUsage().getFeatures()
    );
    System.assertEquals(
      10L,
      response.getUsage().getTextCharacters()
    );
    System.assertEquals(
      10L,
      response.getUsage().getTextUnits()
    );
    System.assertEquals(
      'text',
      response.getConcepts().get(0).getText()
    );
    System.assertEquals(
      0.5,
      response.getConcepts().get(0).getRelevance()
    );
    System.assertEquals(
      'dbpedia_resource',
      response.getConcepts().get(0).getDbpediaResource()
    );
    System.assertEquals(
      'type',
      response.getEntities().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getEntities().get(0).getText()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getRelevance()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'text',
      response.getEntities().get(0).getMentions().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getEntities().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getMentions().get(0).getConfidence()
    );
    System.assertEquals(
      10L,
      response.getEntities().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getEmotion().getAnger()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getEmotion().getDisgust()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getEmotion().getFear()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getEmotion().getJoy()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getEmotion().getSadness()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getSentiment().getScore()
    );
    System.assertEquals(
      'name',
      response.getEntities().get(0).getDisambiguation().getName()
    );
    System.assertEquals(
      'dbpedia_resource',
      response.getEntities().get(0).getDisambiguation().getDbpediaResource()
    );
    System.assertEquals(
      'subtype',
      response.getEntities().get(0).getDisambiguation().getSubtype().get(0)
    );
    System.assertEquals(
      10L,
      response.getKeywords().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getKeywords().get(0).getRelevance()
    );
    System.assertEquals(
      'text',
      response.getKeywords().get(0).getText()
    );
    System.assertEquals(
      0.5,
      response.getKeywords().get(0).getEmotion().getAnger()
    );
    System.assertEquals(
      0.5,
      response.getKeywords().get(0).getEmotion().getDisgust()
    );
    System.assertEquals(
      0.5,
      response.getKeywords().get(0).getEmotion().getFear()
    );
    System.assertEquals(
      0.5,
      response.getKeywords().get(0).getEmotion().getJoy()
    );
    System.assertEquals(
      0.5,
      response.getKeywords().get(0).getEmotion().getSadness()
    );
    System.assertEquals(
      0.5,
      response.getKeywords().get(0).getSentiment().getScore()
    );
    System.assertEquals(
      'label',
      response.getCategories().get(0).getLabel()
    );
    System.assertEquals(
      0.5,
      response.getCategories().get(0).getScore()
    );
    System.assertEquals(
      'text',
      response.getCategories().get(0).getExplanation().getRelevantText().get(0).getText()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getDocument().getEmotion().getAnger()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getDocument().getEmotion().getDisgust()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getDocument().getEmotion().getFear()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getDocument().getEmotion().getJoy()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getDocument().getEmotion().getSadness()
    );
    System.assertEquals(
      'text',
      response.getEmotion().getTargets().get(0).getText()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getTargets().get(0).getEmotion().getAnger()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getTargets().get(0).getEmotion().getDisgust()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getTargets().get(0).getEmotion().getFear()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getTargets().get(0).getEmotion().getJoy()
    );
    System.assertEquals(
      0.5,
      response.getEmotion().getTargets().get(0).getEmotion().getSadness()
    );
    System.assertEquals(
      'name',
      response.getMetadata().getAuthors().get(0).getName()
    );
    System.assertEquals(
      'publication_date',
      response.getMetadata().getPublicationDate()
    );
    System.assertEquals(
      'title',
      response.getMetadata().getTitle()
    );
    System.assertEquals(
      'image',
      response.getMetadata().getImage()
    );
    System.assertEquals(
      'link',
      response.getMetadata().getFeeds().get(0).getLink()
    );
    System.assertEquals(
      0.5,
      response.getRelations().get(0).getScore()
    );
    System.assertEquals(
      'sentence',
      response.getRelations().get(0).getSentence()
    );
    System.assertEquals(
      'type',
      response.getRelations().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getRelations().get(0).getArguments().get(0).getEntities().get(0).getText()
    );
    System.assertEquals(
      'type',
      response.getRelations().get(0).getArguments().get(0).getEntities().get(0).getXType()
    );
    System.assertEquals(
      10L,
      response.getRelations().get(0).getArguments().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'text',
      response.getRelations().get(0).getArguments().get(0).getText()
    );
    System.assertEquals(
      'sentence',
      response.getSemanticRoles().get(0).getSentence()
    );
    System.assertEquals(
      'text',
      response.getSemanticRoles().get(0).getSubject().getText()
    );
    System.assertEquals(
      'type',
      response.getSemanticRoles().get(0).getSubject().getEntities().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getSemanticRoles().get(0).getSubject().getEntities().get(0).getText()
    );
    System.assertEquals(
      'text',
      response.getSemanticRoles().get(0).getSubject().getKeywords().get(0).getText()
    );
    System.assertEquals(
      'text',
      response.getSemanticRoles().get(0).getAction().getText()
    );
    System.assertEquals(
      'normalized',
      response.getSemanticRoles().get(0).getAction().getNormalized()
    );
    System.assertEquals(
      'text',
      response.getSemanticRoles().get(0).getAction().getVerb().getText()
    );
    System.assertEquals(
      'tense',
      response.getSemanticRoles().get(0).getAction().getVerb().getTense()
    );
    System.assertEquals(
      'text',
      response.getSemanticRoles().get(0).getXObject().getText()
    );
    System.assertEquals(
      'text',
      response.getSemanticRoles().get(0).getXObject().getKeywords().get(0).getText()
    );
    System.assertEquals(
      'label',
      response.getSentiment().getDocument().getLabel()
    );
    System.assertEquals(
      0.5,
      response.getSentiment().getDocument().getScore()
    );
    System.assertEquals(
      'text',
      response.getSentiment().getTargets().get(0).getText()
    );
    System.assertEquals(
      0.5,
      response.getSentiment().getTargets().get(0).getScore()
    );
    System.assertEquals(
      'text',
      response.getSyntax().getTokens().get(0).getText()
    );
    System.assertEquals(
      'part_of_speech',
      response.getSyntax().getTokens().get(0).getPartOfSpeech()
    );
    System.assertEquals(
      10L,
      response.getSyntax().getTokens().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'lemma',
      response.getSyntax().getTokens().get(0).getLemma()
    );
    System.assertEquals(
      'text',
      response.getSyntax().getSentences().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getSyntax().getSentences().get(0).getLocation().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testListModels() {
    String mockResponseBody = IBMWatsonMockResponses.naturalLanguageUnderstandingV1ListModelsResults();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions options = new IBMNaturalLanguageUnderstandingV1Models.ListModelsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMNaturalLanguageUnderstandingV1Models.ListModelsResults response = service.listModels(options);

    System.assertEquals(
      'status',
      response.getModels().get(0).getStatus()
    );
    System.assertEquals(
      'model_id',
      response.getModels().get(0).getModelId()
    );
    System.assertEquals(
      'language',
      response.getModels().get(0).getLanguage()
    );
    System.assertEquals(
      'description',
      response.getModels().get(0).getDescription()
    );
    System.assertEquals(
      'workspace_id',
      response.getModels().get(0).getWorkspaceId()
    );
    System.assertEquals(
      'version',
      response.getModels().get(0).getVersion()
    );
    System.assertEquals(
      'version_description',
      response.getModels().get(0).getVersionDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getModels().get(0).getCreated()
    );

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

    String modelId = 'model_id';

    IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptions options = new IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptionsBuilder()
      .modelId(modelId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteModel(options);

    Test.stopTest();
  }
}
