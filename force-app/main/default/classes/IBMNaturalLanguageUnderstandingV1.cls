/**
 * Analyze various features of text content at scale. Provide text, raw HTML, or a public URL, and IBM Watson Natural
 * Language Understanding will give you results for the features you request. The service cleans HTML content before
 * analysis by default, so the results can ignore most advertisements and other unwanted content.
 *
 * ### Concepts
 * Identify general concepts that are referenced or alluded to in your content. Concepts that are detected typically
 * have an associated link to a DBpedia resource.
 *
 * ### Entities
 * Detect important people, places, geopolitical entities and other types of entities in your content. Entity detection
 * recognizes consecutive coreferences of each entity. For example, analysis of the following text would count "Barack
 * Obama" and "He" as the same entity:
 *
 * "Barack Obama was the 44th President of the United States. He took office in January 2009."
 *
 * ### Keywords
 * Determine the most important keywords in your content. Keyword phrases are organized by relevance in the results.
 *
 * ### Categories
 * Categorize your content into a hierarchical 5-level taxonomy. For example, "Leonardo DiCaprio won an Oscar" returns
 * "/art and entertainment/movies and tv/movies" as the most confident classification.
 *
 * ### Sentiment
 * Determine whether your content conveys postive or negative sentiment. Sentiment information can be returned for
 * detected entities, keywords, or user-specified target phrases found in the text.
 *
 * ### Emotion
 * Detect anger, disgust, fear, joy, or sadness that is conveyed by your content. Emotion information can be returned
 * for detected entities, keywords, or user-specified target phrases found in the text.
 *
 * ### Relations
 * Recognize when two entities are related, and identify the type of relation.  For example, you can identify an
 * "awardedTo" relation between an award and its recipient.
 *
 * ### Semantic Roles
 * Parse sentences into subject-action-object form, and identify entities and keywords that are subjects or objects of
 * an action.
 *
 * ### Metadata
 * Get author information, publication date, and the title of your text/HTML content.
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/natural-language-understanding.html">Natural Language Understanding</a>
 */
public class IBMNaturalLanguageUnderstandingV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/natural-language-understanding/api';
  private String versionDate;

  /** The Constant VERSION_DATE_2017_02_27. */
  public static final String VERSION_DATE_2017_02_27 = '2017-02-27';

  /**
   * Instantiates a new `IBMNaturalLanguageUnderstandingV1`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMNaturalLanguageUnderstandingV1(String versionDate) {
    super('watson_natural_language_understanding_v1');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMNaturalLanguageUnderstandingV1` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public IBMNaturalLanguageUnderstandingV1(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Analyze text, HTML, or a public webpage.
   *
   * Analyzes text, HTML, or a public webpage with one or more text analysis features.
   *
   * @param analyzeOptions the {@link IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageUnderstandingV1Models.AnalysisResults} with the response
   */
  public IBMNaturalLanguageUnderstandingV1Models.AnalysisResults analyze(IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions analyzeOptions) {
    IBMWatsonValidator.notNull(analyzeOptions, 'analyzeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/analyze');
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (analyzeOptions.text() != null) {
      contentJson.put('text', analyzeOptions.text());
    }
    if (analyzeOptions.html() != null) {
      contentJson.put('html', analyzeOptions.html());
    }
    if (analyzeOptions.url() != null) {
      contentJson.put('url', analyzeOptions.url());
    }
    contentJson.put('features', analyzeOptions.features());
    if (analyzeOptions.clean() != null) {
      contentJson.put('clean', analyzeOptions.clean());
    }
    if (analyzeOptions.xpath() != null) {
      contentJson.put('xpath', analyzeOptions.xpath());
    }
    if (analyzeOptions.fallbackToRaw() != null) {
      contentJson.put('fallback_to_raw', analyzeOptions.fallbackToRaw());
    }
    if (analyzeOptions.returnAnalyzedText() != null) {
      contentJson.put('return_analyzed_text', analyzeOptions.returnAnalyzedText());
    }
    if (analyzeOptions.language() != null) {
      contentJson.put('language', analyzeOptions.language());
    }
    if (analyzeOptions.limitTextCharacters() != null) {
      contentJson.put('limit_text_characters', analyzeOptions.limitTextCharacters());
    }
    builder.bodyJson(JSON.serialize(contentJson));

    return (IBMNaturalLanguageUnderstandingV1Models.AnalysisResults) createServiceCall(builder.build(), IBMNaturalLanguageUnderstandingV1Models.AnalysisResults.class);
  }

  /**
   * Delete model.
   *
   * Deletes a custom model.
   *
   * @param deleteModelOptions the {@link IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteModel(IBMNaturalLanguageUnderstandingV1Models.DeleteModelOptions deleteModelOptions) {
    IBMWatsonValidator.notNull(deleteModelOptions, 'deleteModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/models/{0}', new String[]{ deleteModelOptions.modelId() }));
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * List models.
   *
   * Lists available models for Relations and Entities features, including Watson Knowledge Studio custom models that you have created and linked to your Natural Language Understanding service.
   *
   * @param listModelsOptions the {@link IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageUnderstandingV1Models.ListModelsResults} with the response
   */
  public IBMNaturalLanguageUnderstandingV1Models.ListModelsResults listModels(IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions listModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/models');
    builder.query('version', versionDate);

    return (IBMNaturalLanguageUnderstandingV1Models.ListModelsResults) createServiceCall(builder.build(), IBMNaturalLanguageUnderstandingV1Models.ListModelsResults.class);
  }

}
