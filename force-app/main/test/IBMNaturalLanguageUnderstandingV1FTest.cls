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

public with sharing class IBMNaturalLanguageUnderstandingV1FTest {
  private static String URL = 'https://gateway.watsonplatform.net/natural-language-understanding/api';
  private static String VERSION = '2019-07-12';
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_natural_language_understanding_v1';

  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMNaturalLanguageUnderstandingV1 service = new IBMNaturalLanguageUnderstandingV1(VERSION, authenticator);
    service.setServiceURL(URL);

    testAnalyze(service);
    testListModels(service);
  }

  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMNaturalLanguageUnderstandingV1Models.AnalysisResults testAnalyze(IBMNaturalLanguageUnderstandingV1 service) {
    IBMNaturalLanguageUnderstandingV1Models.ConceptsOptions concepts = new IBMNaturalLanguageUnderstandingV1Models.ConceptsOptionsBuilder()
      .xlimit(8)
      .build();
    concepts = concepts.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.EmotionOptions emotion = new IBMNaturalLanguageUnderstandingV1Models.EmotionOptionsBuilder()
      .document(true)
      .targets(new List<String>{'apples', 'oranges'})
      .build();
    emotion = emotion.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.EntitiesOptions entities = new IBMNaturalLanguageUnderstandingV1Models.EntitiesOptionsBuilder()
      .xlimit(50)
      .sentiment(false)
      .emotion(true)
      .build();
    entities = entities.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.KeywordsOptions keywords = new IBMNaturalLanguageUnderstandingV1Models.KeywordsOptionsBuilder()
      .xlimit(50)
      .sentiment(false)
      .emotion(false)
      .build();
    keywords = keywords.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.RelationsOptions relations = new IBMNaturalLanguageUnderstandingV1Models.RelationsOptionsBuilder()
      .model('en-news')
      .build();
    relations = relations.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptions semanticRoles = new IBMNaturalLanguageUnderstandingV1Models.SemanticRolesOptionsBuilder()
      .xlimit(50)
      .keywords(false)
      .entities(false)
      .build();
    semanticRoles = semanticRoles.newBuilder().build();

    IBMNaturalLanguageUnderstandingV1Models.SentimentOptions sentiment = new IBMNaturalLanguageUnderstandingV1Models.SentimentOptionsBuilder()
      .document(true)
      .targets(new List<String>{''})
      .build();

    IBMNaturalLanguageUnderstandingV1Models.CategoriesOptions categories = new IBMNaturalLanguageUnderstandingV1Models.CategoriesOptionsBuilder()
      .explanation(true)
      .build();

    IBMNaturalLanguageUnderstandingV1Models.MetadataOptions metadata = new IBMNaturalLanguageUnderstandingV1Models.MetadataOptionsBuilder().build();

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

    IBMNaturalLanguageUnderstandingV1Models.AnalysisResults resp = service.analyze(options);
    System.debug('IBMNaturalLanguageUnderstandingV1FTest.testAnalyze(): ' + resp);
    return resp;
  }

  public static IBMNaturalLanguageUnderstandingV1Models.ListModelsResults testListModels(IBMNaturalLanguageUnderstandingV1 service) {
    IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions options = new IBMNaturalLanguageUnderstandingV1Models.ListModelsOptionsBuilder()
      .build();

    IBMNaturalLanguageUnderstandingV1Models.ListModelsResults resp = service.listModels(options);
    System.debug('IBMNaturalLanguageUnderstandingV1FTest.testListModels(): ' + resp);
    return resp;
  }
}
