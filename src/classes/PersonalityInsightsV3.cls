/**
 * ### Service Overview
 * The IBM Watson Personality Insights service provides a Representational State Transfer (REST) Application Programming
 * Interface (API) that enables applications to derive insights from social media, enterprise data, or other digital
 * communications. The service uses linguistic analytics to infer individuals' intrinsic personality characteristics,
 * including Big Five, Needs, and Values, from digital communications such as email, text messages, tweets, and forum
 * posts. The service can automatically infer, from potentially noisy social media, portraits of individuals that
 * reflect their personality characteristics. The service can report consumption preferences based on the results of its
 * analysis, and for JSON content that is timestamped, it can report temporal behavior.
 * ### API Usage
 * The following information provides details about using the service to obtain a personality profile:
 * * **The profile method:** The service offers a single `/v3/profile` method that accepts up to 20 MB of input data and
 * produces results in JSON or CSV format. The service accepts input in Arabic, English, Japanese, Korean, or Spanish
 * and can produce output in a variety of languages.
 * * **Authentication:** You authenticate to the service by using your service credentials. You can use your credentials
 * to authenticate via a proxy server that resides in Bluemix, or you can use your credentials to obtain a token and
 * contact the service directly. See [Service credentials for Watson
 * services](https://console.bluemix.net/docs/services/watson/getting-started-credentials.html) and [Tokens for
 * authentication](https://console.bluemix.net/docs/services/watson/getting-started-tokens.html).
 * * **Request Logging:** By default, all Watson services log requests and their results. Data is collected only to
 * improve the Watson services. If you do not want to share your data, set the header parameter
 * `X-Watson-Learning-Opt-Out` to `true` for each request. Data is collected for any request that omits this header. See
 * [Controlling request logging for Watson
 * services](https://console.bluemix.net/docs/services/watson/getting-started-logging.html).
 *
 * For more information about the service, see [About Personality
 * Insights](https://console.bluemix.net/docs/services/personality-insights/index.html). For information about calling
 * the service and the responses it can generate, see [Requesting a
 * profile](https://console.bluemix.net/docs/services/personality-insights/input.html), [Understanding a JSON
 * profile](https://console.bluemix.net/docs/services/personality-insights/output.html), and [Understanding a CSV
 * profile](https://console.bluemix.net/docs/services/personality-insights/output-csv.html).
 *
 * @version V3
 * @see <a href="http://www.ibm.com/watson/developercloud/personality-insights.html">Personality Insights</a>
 */
public class PersonalityInsightsV3 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/personality-insights/api';
  private String versionDate;

  /**
   * Instantiates a new `PersonalityInsightsV3`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public PersonalityInsightsV3(String versionDate) {
    if ((getEndPoint() == null) || String.isBlank(getEndPoint())) {
      setEndPoint(URL);
    }
    if(String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.RuntimeException('Version cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `PersonalityInsightsV3` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public PersonalityInsightsV3(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Generates a personality profile based on input text.
   *
   * Derives personality insights for up to 20 MB of input content written by an author, though the service requires much less text to produce an accurate profile; for more information, see [Providing sufficient input](https://console.bluemix.net/docs/services/personality-insights/input.html#sufficient). Accepts input in Arabic, English, Japanese, Korean, or Spanish and produces output in one of eleven languages. Provide plain text, HTML, or JSON content, and receive results in JSON or CSV format.
   *
   * @param profileOptions the {@link PersonalityInsightsV3Models.ProfileOptions} containing the options for the call
   * @return the {@link PersonalityInsightsV3Models.Profile} with the response
   */
  public PersonalityInsightsV3Models.Profile profile(PersonalityInsightsV3Models.ProfileOptions profileOptions) {
    IBMWatsonValidator.notNull(profileOptions, 'profileOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + '/v3/profile');
      builder.addHeader('content-type', profileOptions.contentType());
      if (profileOptions.contentLanguage() != null) {
        builder.addHeader('Content-Language', profileOptions.contentLanguage());
      }
      if (profileOptions.acceptLanguage() != null) {
        builder.addHeader('Accept-Language', profileOptions.acceptLanguage());
      }
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'raw_scores' => String.valueOf(profileOptions.rawScores()),
      'csv_headers' => String.valueOf(profileOptions.csvHeaders()),
      'consumption_preferences' => String.valueOf(profileOptions.consumptionPreferences())
    });
    if (profileOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(profileOptions.content()));
      ServiceMessage = JSON.serialize(profileOptions.content());
    } else {
      builder.bodyContent(profileOptions.body(), profileOptions.contentType());
      ServiceMessage = profileOptions.body();
    }

    return (PersonalityInsightsV3Models.Profile) createServiceCall(builder.build(), PersonalityInsightsV3Models.Profile.class);
  }

}
