/**
 * Analyze various features of text content at scale. Provide text, raw HTML, or a public URL and IBM Watson Natural
 * Language Understanding will give you results for the features you request. The service cleans HTML content before
 * analysis by default, so the results can ignore most advertisements and other unwanted content.
 *
 * You can create [custom models](https://cloud.ibm.com/docs/services/natural-language-understanding/customizing.html)
 * with Watson Knowledge Studio to detect custom entities and relations in Natural Language Understanding.
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/natural-language-understanding.html">Natural Language Understanding</a>
 */
public class IBMNaturalLanguageUnderstandingV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/natural-language-understanding/api';

  private String versionDate;

  /**
   * Instantiates a new `IBMNaturalLanguageUnderstandingV1`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMNaturalLanguageUnderstandingV1(String versionDate) {
    super('natural_language_understanding', 'v1');

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
   * Instantiates a new `IBMNaturalLanguageUnderstandingV1` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMNaturalLanguageUnderstandingV1(String versionDate, IBMWatsonIAMOptions iamOptions) {
    this(versionDate);
    setIamCredentials(iamOptions);
  }

  /**
   * Analyze text.
   *
   * Analyzes text, HTML, or a public webpage for the following features:
   * - Categories
   * - Concepts
   * - Emotion
   * - Entities
   * - Keywords
   * - Metadata
   * - Relations
   * - Semantic roles
   * - Sentiment.
   *
   * @param analyzeOptions the {@link IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageUnderstandingV1Models.AnalysisResults} with the response
   */
  public IBMNaturalLanguageUnderstandingV1Models.AnalysisResults analyze(IBMNaturalLanguageUnderstandingV1Models.AnalyzeOptions analyzeOptions) {
    IBMWatsonValidator.notNull(analyzeOptions, 'analyzeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/analyze');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural-language-understanding;service_version=V1;operation_id=analyze');
    Map<String, String> requestHeaders = (analyzeOptions != null) ? analyzeOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
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
    builder.bodyJson(JSON.serialize(contentJson, true));

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
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural-language-understanding;service_version=V1;operation_id=deleteModel');
    Map<String, String> requestHeaders = (deleteModelOptions != null) ? deleteModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * List models.
   *
   * Lists Watson Knowledge Studio [custom
   * models](https://cloud.ibm.com/docs/services/natural-language-understanding/customizing.html) that are deployed to
   * your Natural Language Understanding service.
   *
   * @param listModelsOptions the {@link IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageUnderstandingV1Models.ListModelsResults} with the response
   */
  public IBMNaturalLanguageUnderstandingV1Models.ListModelsResults listModels(IBMNaturalLanguageUnderstandingV1Models.ListModelsOptions listModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/models');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural-language-understanding;service_version=V1;operation_id=listModels');
    Map<String, String> requestHeaders = (listModelsOptions != null) ? listModelsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMNaturalLanguageUnderstandingV1Models.ListModelsResults) createServiceCall(builder.build(), IBMNaturalLanguageUnderstandingV1Models.ListModelsResults.class);
  }

}
