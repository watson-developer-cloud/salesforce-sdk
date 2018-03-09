/**
 * The IBM Watson Tone Analyzer service uses linguistic analysis to detect emotional and language tones in written text.
 * The service can analyze tone at both the document and sentence levels. You can use the service to understand how your
 * written communications are perceived and then to improve the tone of your communications. Businesses can use the
 * service to learn the tone of their customers' communications and to respond to each customer appropriately, or to
 * understand and improve their customer conversations.
 *
 * @version V3
 * @see <a href="http://www.ibm.com/watson/developercloud/tone-analyzer.html">Tone Analyzer</a>
 */
public class IBMToneAnalyzerV3 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/tone-analyzer/api';

  private String versionDate;

  /**
   * Instantiates a new `IBMToneAnalyzerV3`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMToneAnalyzerV3(String versionDate) {
    super('watson_tone_analyzer_v3');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMToneAnalyzerV3` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public IBMToneAnalyzerV3(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Analyze general tone.
   *
   * Use the general purpose endpoint to analyze the tone of your input content. The service analyzes the content for emotional and language tones. The method always analyzes the tone of the full document; by default, it also analyzes the tone of each individual sentence of the content.   You can submit no more than 128 KB of total input content and no more than 1000 individual sentences in JSON, plain text, or HTML format. The service analyzes the first 1000 sentences for document-level analysis and only the first 100 sentences for sentence-level analysis.   Per the JSON specification, the default character encoding for JSON content is effectively always UTF-8; per the HTTP specification, the default encoding for plain text and HTML is ISO-8859-1 (effectively, the ASCII character set). When specifying a content type of plain text or HTML, include the `charset` parameter to indicate the character encoding of the input text; for example: `Content-Type: text/plain;charset=utf-8`. For `text/html`, the service removes HTML tags and analyzes only the textual content.
   *
   * @param toneOptions the {@link IBMToneAnalyzerV3Models.ToneOptions} containing the options for the call
   * @return the {@link IBMToneAnalyzerV3Models.ToneAnalysis} with the response
   */
  public IBMToneAnalyzerV3Models.ToneAnalysis tone(IBMToneAnalyzerV3Models.ToneOptions toneOptions) {
    IBMWatsonValidator.notNull(toneOptions, 'toneOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/tone');
    builder.addHeader('Content-Type', toneOptions.contentType());
    if (toneOptions.contentLanguage() != null) {
      builder.addHeader('Content-Language', toneOptions.contentLanguage());
    }
    if (toneOptions.acceptLanguage() != null) {
      builder.addHeader('Accept-Language', toneOptions.acceptLanguage());
    }
    builder.query('version', versionDate);
    if (toneOptions.sentences() != null) {
      builder.query('sentences', String.valueOf(toneOptions.sentences()));
    }
    if (toneOptions.tones() != null) {
      builder.query('tones', String.join(toneOptions.tones(), ','));
    }
    if (toneOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(toneOptions.toneInput(), true));
    }
    else {
      builder.bodyContent(toneOptions.body(), toneOptions.contentType());
    }

    return (IBMToneAnalyzerV3Models.ToneAnalysis) createServiceCall(builder.build(), IBMToneAnalyzerV3Models.ToneAnalysis.class);
  }

  /**
   * Analyze customer engagement tone.
   *
   * Use the customer engagement endpoint to analyze the tone of customer service and customer support conversations. For each utterance of a conversation, the method reports the most prevalent subset of the following seven tones: sad, frustrated, satisfied, excited, polite, impolite, and sympathetic.   If you submit more than 50 utterances, the service returns a warning for the overall content and analyzes only the first 50 utterances. If you submit a single utterance that contains more than 500 characters, the service returns an error for that utterance and does not analyze the utterance. The request fails if all utterances have more than 500 characters.   Per the JSON specification, the default character encoding for JSON content is effectively always UTF-8.
   *
   * @param toneChatOptions the {@link IBMToneAnalyzerV3Models.ToneChatOptions} containing the options for the call
   * @return the {@link IBMToneAnalyzerV3Models.UtteranceAnalyses} with the response
   */
  public IBMToneAnalyzerV3Models.UtteranceAnalyses toneChat(IBMToneAnalyzerV3Models.ToneChatOptions toneChatOptions) {
    IBMWatsonValidator.notNull(toneChatOptions, 'toneChatOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/tone_chat');
    if (toneChatOptions.contentLanguage() != null) {
      builder.addHeader('Content-Language', toneChatOptions.contentLanguage());
    }
    if (toneChatOptions.acceptLanguage() != null) {
      builder.addHeader('Accept-Language', toneChatOptions.acceptLanguage());
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('utterances', toneChatOptions.utterances());
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMToneAnalyzerV3Models.UtteranceAnalyses) createServiceCall(builder.build(), IBMToneAnalyzerV3Models.UtteranceAnalyses.class);
  }

}
