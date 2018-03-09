public with sharing class IBMNaturalLanguageUnderstandingV1FTest {
  private static String URL = 'https://gateway.watsonplatform.net/natural-language-understanding/api';
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_natural_language_understanding_v1';

  public static void runAllTests(String username, String password) {
    testAnalyze(username, password);
    testListModels(username, password);
  }

  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMNaturalLanguageUnderstandingV1Models.AnalysisResults testAnalyze(String username, String password) {
    IBMNaturalLanguageUnderstandingV1 naturalLanguageUnderstanding = new IBMNaturalLanguageUnderstandingV1('2017-02-27');

    if (username != null && password != null) {
      naturalLanguageUnderstanding.setEndPoint(URL);
      naturalLanguageUnderstanding.setUsernameAndPassword(username, password);
    }

    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions concepts = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .limitField(8)
      .build();
    concepts = concepts.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .document(true)
      .targets(new List<String>{'apples', 'oranges'})
      .build();
    emotion = emotion.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions entities = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .limitField(50)
      .sentiment(false)
      .emotion(true)
      .build();
    entities = entities.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions keywords = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .limitField(50)
      .sentiment(false)
      .emotion(false)
      .build();
    keywords = keywords.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions relations = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .model('en-news')
      .build();
    relations = relations.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions semanticRoles = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .limitField(50)
      .keywords(false)
      .entities(false)
      .build();
    semanticRoles = semanticRoles.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions sentiment = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .document(true)
      .targets(new List<String>{''})
      .build();

    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions categories = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions();
    categories.put('emotion', emotion);

    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions metadata = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptions();
    metadata.put('', '');

    IBMNaturalLanguageUnderstandingV1Models.Features features = new IBMNaturalLanguageUnderstandingV1Models.FeaturesBuilder()
      .concepts(concepts)
      .emotion(emotion)
      .entities(entities)
      .keywords(keywords)
      .metadata(metadata)
      .relations(relations)
      .semanticRoles(semanticRoles)
      .categories(categories)
      .sentiment(sentiment)
      .build();

    IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions options = new IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptionsBuilder()
      .html( '<html><head><title>Fruits</title></head><body><h1>Apples and Oranges</h1><p>I love apples! I don\'t like oranges.</p></body></html>')
      .features(features)
      .clean(true)
      .fallbackToRaw(true)
      .returnAnalyzedText(false)
      .limitTextCharacters(100)
      .language('en')
      .build();

    IBMNaturalLanguageUnderstandingV1Models.AnalysisResults resp = naturalLanguageUnderstanding.analyze(options);
    System.debug('IBMNaturalLanguageUnderstandingV1FTest.testAnalyze(): ' + resp);
    return resp;
  }

  public static IBMNaturalLanguageUnderstandingV1Models.ListModelsResults testListModels(String username, String password) {
    IBMNaturalLanguageUnderstandingV1 naturalLanguageUnderstanding = new IBMNaturalLanguageUnderstandingV1('2017-02-27');

    if (username != null && password != null) {
      naturalLanguageUnderstanding.setEndPoint(URL);
      naturalLanguageUnderstanding.setUsernameAndPassword(username, password);
    }

    IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions options = new IBMNaturalLanguageUnderstandingV1Models.ListModelsOptionsBuilder()
      .build();

    IBMNaturalLanguageUnderstandingV1Models.ListModelsResults resp = naturalLanguageUnderstanding.listModels(options);
    System.debug('IBMNaturalLanguageUnderstandingV1FTest.testListModels(): ' + resp);
    return resp;
  }
}
