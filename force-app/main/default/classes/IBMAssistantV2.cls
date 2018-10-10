/**
 * The IBM Watson&trade; Assistant service combines machine learning, natural language understanding, and integrated
 * dialog tools to create conversation flows between your apps and your users.
 *
 * @version V2
 * @see <a href="http://www.ibm.com/watson/developercloud/assistant.html">Assistant</a>
 */
public class IBMAssistantV2 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/assistant/api';

  private String versionDate;

  /**
   * Instantiates a new `IBMAssistantV2`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMAssistantV2(String versionDate) {
    super('watson_assistant_v2');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMAssistantV2` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public IBMAssistantV2(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Instantiates a new `IBMAssistantV2` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMAssistantV2(String versionDate, IBMWatsonIAMOptions iamOptions) {
    this(versionDate);
    setIamCredentials(iamOptions);
  }

  /**
   * Create a session.
   *
   * Create a new session. A session is used to send user input to a skill and receive responses. It also maintains the
   * state of the conversation.
   *
   * @param createSessionOptions the {@link IBMAssistantV2Models.CreateSessionOptions} containing the options for the call
   * @return the {@link IBMAssistantV2Models.SessionResponse} with the response
   */
  public IBMAssistantV2Models.SessionResponse createSession(IBMAssistantV2Models.CreateSessionOptions createSessionOptions) {
    IBMWatsonValidator.notNull(createSessionOptions, 'createSessionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v2/assistants/{0}/sessions', new String[]{ createSessionOptions.assistantId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createSessionOptions != null) ? createSessionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    builder.bodyJson('{}');

    return (IBMAssistantV2Models.SessionResponse) createServiceCall(builder.build(), IBMAssistantV2Models.SessionResponse.class);
  }

  /**
   * Delete session.
   *
   * Deletes a session explicitly before it times out.
   *
   * @param deleteSessionOptions the {@link IBMAssistantV2Models.DeleteSessionOptions} containing the options for the call
   * @return the service call
   */
  public void deleteSession(IBMAssistantV2Models.DeleteSessionOptions deleteSessionOptions) {
    IBMWatsonValidator.notNull(deleteSessionOptions, 'deleteSessionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v2/assistants/{0}/sessions/{1}', new String[]{ deleteSessionOptions.assistantId(), deleteSessionOptions.sessionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteSessionOptions != null) ? deleteSessionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Send user input to assistant.
   *
   * Send user input to an assistant and receive a response.
   *
   * There is no rate limit for this operation.
   *
   * @param messageOptions the {@link IBMAssistantV2Models.MessageOptions} containing the options for the call
   * @return the {@link IBMAssistantV2Models.MessageResponse} with the response
   */
  public IBMAssistantV2Models.MessageResponse message(IBMAssistantV2Models.MessageOptions messageOptions) {
    IBMWatsonValidator.notNull(messageOptions, 'messageOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v2/assistants/{0}/sessions/{1}/message', new String[]{ messageOptions.assistantId(), messageOptions.sessionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (messageOptions != null) ? messageOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (messageOptions.input() != null) {
      contentJson.put('input', messageOptions.input());
    }
    if (messageOptions.context() != null) {
      contentJson.put('context', messageOptions.context());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV2Models.MessageResponse) createServiceCall(builder.build(), IBMAssistantV2Models.MessageResponse.class);
  }

}
