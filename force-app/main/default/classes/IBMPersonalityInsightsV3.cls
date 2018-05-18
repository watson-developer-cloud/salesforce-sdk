/**
 * The IBM Watson Personality Insights service enables applications to derive insights from social media, enterprise
 * data, or other digital communications. The service uses linguistic analytics to infer individuals' intrinsic
 * personality characteristics, including Big Five, Needs, and Values, from digital communications such as email, text
 * messages, tweets, and forum posts.
 *
 * The service can automatically infer, from potentially noisy social media, portraits of individuals that reflect their
 * personality characteristics. The service can infer consumption preferences based on the results of its analysis and,
 * for JSON content that is timestamped, can report temporal behavior.
 * * For information about the meaning of the models that the service uses to describe personality characteristics, see
 * [Personality models](https://console.bluemix.net/docs/services/personality-insights/models.html).
 * * For information about the meaning of the consumption preferences, see [Consumption
 * preferences](https://console.bluemix.net/docs/services/personality-insights/preferences.html).
 *
 * **Note:** Request logging is disabled for the Personality Insights service. The service neither logs nor retains data
 * from requests and responses, regardless of whether the `X-Watson-Learning-Opt-Out` request header is set.
 *
 * @version V3
 * @see <a href="http://www.ibm.com/watson/developercloud/personality-insights.html">Personality Insights</a>
 */
public class IBMPersonalityInsightsV3 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/personality-insights/api';

  private String versionDate;

  /**
   * Instantiates a new `IBMPersonalityInsightsV3`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMPersonalityInsightsV3(String versionDate) {
    super('watson_personality_insights_v3');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMPersonalityInsightsV3` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public IBMPersonalityInsightsV3(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Instantiates a new `IBMPersonalityInsightsV3` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMPersonalityInsightsV3(String versionDate, IBMWatsonIAMOptions iamOptions) {
    this(versionDate);
    setIamCredentials(iamOptions);
  }

  /**
   * Get profile.
   *
   * Generates a personality profile for the author of the input text. The service accepts a maximum of 20 MB of input content, but it requires much less text to produce an accurate profile; for more information, see [Providing sufficient input](https://console.bluemix.net/docs/services/personality-insights/input.html#sufficient). The service analyzes text in Arabic, English, Japanese, Korean, or Spanish and returns its results in a variety of languages. You can provide plain text, HTML, or JSON input by specifying the **Content-Type** parameter; the default is `text/plain`. Request a JSON or comma-separated values (CSV) response by specifying the **Accept** parameter; CSV output includes a fixed number of columns and optional headers.   Per the JSON specification, the default character encoding for JSON content is effectively always UTF-8; per the HTTP specification, the default encoding for plain text and HTML is ISO-8859-1 (effectively, the ASCII character set). When specifying a content type of plain text or HTML, include the `charset` parameter to indicate the character encoding of the input text; for example: `Content-Type: text/plain;charset=utf-8`.   For detailed information about calling the service and the responses it can generate, see [Requesting a profile](https://console.bluemix.net/docs/services/personality-insights/input.html), [Understanding a JSON profile](https://console.bluemix.net/docs/services/personality-insights/output.html), and [Understanding a CSV profile](https://console.bluemix.net/docs/services/personality-insights/output-csv.html).
   *
   * @param profileOptions the {@link IBMPersonalityInsightsV3Models.ProfileOptions} containing the options for the call
   * @return the {@link IBMPersonalityInsightsV3Models.Profile} with the response
   */
  public IBMPersonalityInsightsV3Models.Profile profile(IBMPersonalityInsightsV3Models.ProfileOptions profileOptions) {
    IBMWatsonValidator.notNull(profileOptions, 'profileOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/profile');
    builder.addHeader('Content-Type', profileOptions.contentType());
    if (profileOptions.contentLanguage() != null) {
      builder.addHeader('Content-Language', profileOptions.contentLanguage());
    }
    if (profileOptions.acceptLanguage() != null) {
      builder.addHeader('Accept-Language', profileOptions.acceptLanguage());
    }
    Map<String, String> requestHeaders = (profileOptions != null) ? profileOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (profileOptions.rawScores() != null) {
      builder.query('raw_scores', String.valueOf(profileOptions.rawScores()));
    }
    if (profileOptions.consumptionPreferences() != null) {
      builder.query('consumption_preferences', String.valueOf(profileOptions.consumptionPreferences()));
    }
    if (profileOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(profileOptions.content(), true));
    }
    else {
      builder.bodyContent(profileOptions.body(), profileOptions.contentType());
    }

    return (IBMPersonalityInsightsV3Models.Profile) createServiceCall(builder.build(), IBMPersonalityInsightsV3Models.Profile.class);
  }

  /**
   * Get profile. as csv
   *
   * Generates a personality profile for the author of the input text. The service accepts a maximum of 20 MB of input content, but it requires much less text to produce an accurate profile; for more information, see [Providing sufficient input](https://console.bluemix.net/docs/services/personality-insights/input.html#sufficient). The service analyzes text in Arabic, English, Japanese, Korean, or Spanish and returns its results in a variety of languages. You can provide plain text, HTML, or JSON input by specifying the **Content-Type** parameter; the default is `text/plain`. Request a JSON or comma-separated values (CSV) response by specifying the **Accept** parameter; CSV output includes a fixed number of columns and optional headers.   Per the JSON specification, the default character encoding for JSON content is effectively always UTF-8; per the HTTP specification, the default encoding for plain text and HTML is ISO-8859-1 (effectively, the ASCII character set). When specifying a content type of plain text or HTML, include the `charset` parameter to indicate the character encoding of the input text; for example: `Content-Type: text/plain;charset=utf-8`.   For detailed information about calling the service and the responses it can generate, see [Requesting a profile](https://console.bluemix.net/docs/services/personality-insights/input.html), [Understanding a JSON profile](https://console.bluemix.net/docs/services/personality-insights/output.html), and [Understanding a CSV profile](https://console.bluemix.net/docs/services/personality-insights/output-csv.html).
   *
   * @param profileOptions the {@link IBMPersonalityInsightsV3Models.ProfileOptions} containing the options for the call
   * @param includeHeaders whether to include headers in the response or not
   * @return the {@link IBMPersonalityInsightsV3Models.Profile} with the response
   */
  public IBMPersonalityInsightsV3Models.Profile getProfileAsCSV(IBMPersonalityInsightsV3Models.ProfileOptions profileOptions, Boolean includeHeaders) {
    IBMWatsonValidator.notNull(profileOptions, 'profileOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/profile');
    builder.addHeader('Content-Type', profileOptions.contentType());
    if (profileOptions.contentLanguage() != null) {
      builder.addHeader('Content-Language', profileOptions.contentLanguage());
    }
    if (profileOptions.acceptLanguage() != null) {
      builder.addHeader('Accept-Language', profileOptions.acceptLanguage());
    }
    Map<String, String> requestHeaders = (profileOptions != null) ? profileOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (profileOptions.rawScores() != null) {
      builder.query('raw_scores', String.valueOf(profileOptions.rawScores()));
    }
    if (profileOptions.consumptionPreferences() != null) {
      builder.query('consumption_preferences', String.valueOf(profileOptions.consumptionPreferences()));
    }
    if (profileOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(profileOptions.content(), true));
    } else {
      builder.bodyContent(profileOptions.body(), profileOptions.contentType());
    }

    builder.addHeader('Accept', IBMWatsonHttpMediaType.TEXT_CSV);
    builder.query('csv_headers', String.valueOf(includeHeaders));

    return String.valueOf(createServiceCall(builder.build(), String.class));
  }

}
