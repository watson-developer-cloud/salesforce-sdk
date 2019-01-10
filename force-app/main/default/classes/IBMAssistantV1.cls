/**
 * The IBM Watson&trade; Assistant service combines machine learning, natural language understanding, and integrated
 * dialog tools to create conversation flows between your apps and your users.
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/assistant.html">Assistant</a>
 */
public class IBMAssistantV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/assistant/api';

  private String versionDate;

  /**
   * Instantiates a new `IBMAssistantV1`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMAssistantV1(String versionDate) {
    super('watson_assistant_v1');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMAssistantV1` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public IBMAssistantV1(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Instantiates a new `IBMAssistantV1` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMAssistantV1(String versionDate, IBMWatsonIAMOptions iamOptions) {
    this(versionDate);
    setIamCredentials(iamOptions);
  }

  /**
   * Get response to user input.
   *
   * Send user input to a workspace and receive a response.
   *
   * There is no rate limit for this operation.
   *
   * @param messageOptions the {@link IBMAssistantV1Models.MessageOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.MessageResponse} with the response
   */
  public IBMAssistantV1Models.MessageResponse message(IBMAssistantV1Models.MessageOptions messageOptions) {
    IBMWatsonValidator.notNull(messageOptions, 'messageOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/message', new String[]{ messageOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (messageOptions != null) ? messageOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (messageOptions.nodesVisitedDetails() != null) {
      builder.query('nodes_visited_details', String.valueOf(messageOptions.nodesVisitedDetails()));
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (messageOptions.input() != null) {
      contentJson.put('input', messageOptions.input());
    }
    if (messageOptions.alternateIntents() != null) {
      contentJson.put('alternate_intents', messageOptions.alternateIntents());
    }
    if (messageOptions.context() != null) {
      contentJson.put('context', messageOptions.context());
    }
    if (messageOptions.entities() != null) {
      contentJson.put('entities', messageOptions.entities());
    }
    if (messageOptions.intents() != null) {
      contentJson.put('intents', messageOptions.intents());
    }
    if (messageOptions.output() != null) {
      contentJson.put('output', messageOptions.output());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.MessageResponse) createServiceCall(builder.build(), IBMAssistantV1Models.MessageResponse.class);
  }

  /**
   * Create workspace.
   *
   * Create a workspace based on component objects. You must provide workspace components defining the content of the
   * new workspace.
   *
   * This operation is limited to 30 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createWorkspaceOptions the {@link IBMAssistantV1Models.CreateWorkspaceOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Workspace} with the response
   */
  public IBMAssistantV1Models.Workspace createWorkspace(IBMAssistantV1Models.CreateWorkspaceOptions createWorkspaceOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/workspaces');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createWorkspaceOptions != null) ? createWorkspaceOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (createWorkspaceOptions.name() != null) {
      contentJson.put('name', createWorkspaceOptions.name());
    }
    if (createWorkspaceOptions.description() != null) {
      contentJson.put('description', createWorkspaceOptions.description());
    }
    if (createWorkspaceOptions.language() != null) {
      contentJson.put('language', createWorkspaceOptions.language());
    }
    if (createWorkspaceOptions.intents() != null) {
      contentJson.put('intents', createWorkspaceOptions.intents());
    }
    if (createWorkspaceOptions.entities() != null) {
      contentJson.put('entities', createWorkspaceOptions.entities());
    }
    if (createWorkspaceOptions.dialogNodes() != null) {
      contentJson.put('dialog_nodes', createWorkspaceOptions.dialogNodes());
    }
    if (createWorkspaceOptions.counterexamples() != null) {
      contentJson.put('counterexamples', createWorkspaceOptions.counterexamples());
    }
    if (createWorkspaceOptions.metadata() != null) {
      contentJson.put('metadata', createWorkspaceOptions.metadata());
    }
    if (createWorkspaceOptions.learningOptOut() != null) {
      contentJson.put('learning_opt_out', createWorkspaceOptions.learningOptOut());
    }
    if (createWorkspaceOptions.systemSettings() != null) {
      contentJson.put('system_settings', createWorkspaceOptions.systemSettings());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Workspace) createServiceCall(builder.build(), IBMAssistantV1Models.Workspace.class);
  }

  /**
   * Delete workspace.
   *
   * Delete a workspace from the service instance.
   *
   * This operation is limited to 30 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteWorkspaceOptions the {@link IBMAssistantV1Models.DeleteWorkspaceOptions} containing the options for the call
   * @return the service call
   */
  public void deleteWorkspace(IBMAssistantV1Models.DeleteWorkspaceOptions deleteWorkspaceOptions) {
    IBMWatsonValidator.notNull(deleteWorkspaceOptions, 'deleteWorkspaceOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}', new String[]{ deleteWorkspaceOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteWorkspaceOptions != null) ? deleteWorkspaceOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get information about a workspace.
   *
   * Get information about a workspace, optionally including all workspace content.
   *
   * With **export**=`false`, this operation is limited to 6000 requests per 5 minutes. With **export**=`true`, the
   * limit is 20 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param getWorkspaceOptions the {@link IBMAssistantV1Models.GetWorkspaceOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.WorkspaceExport} with the response
   */
  public IBMAssistantV1Models.WorkspaceExport getWorkspace(IBMAssistantV1Models.GetWorkspaceOptions getWorkspaceOptions) {
    IBMWatsonValidator.notNull(getWorkspaceOptions, 'getWorkspaceOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}', new String[]{ getWorkspaceOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getWorkspaceOptions != null) ? getWorkspaceOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getWorkspaceOptions.xexport() != null) {
      builder.query('export', String.valueOf(getWorkspaceOptions.xexport()));
    }
    if (getWorkspaceOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getWorkspaceOptions.includeAudit()));
    }
    if (getWorkspaceOptions.xsort() != null) {
      builder.query('sort', getWorkspaceOptions.xsort());
    }

    return (IBMAssistantV1Models.WorkspaceExport) createServiceCall(builder.build(), IBMAssistantV1Models.WorkspaceExport.class);
  }

  /**
   * List workspaces.
   *
   * List the workspaces associated with a Watson Assistant service instance.
   *
   * This operation is limited to 500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listWorkspacesOptions the {@link IBMAssistantV1Models.ListWorkspacesOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.WorkspaceCollection} with the response
   */
  public IBMAssistantV1Models.WorkspaceCollection listWorkspaces(IBMAssistantV1Models.ListWorkspacesOptions listWorkspacesOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/workspaces');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listWorkspacesOptions != null) ? listWorkspacesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listWorkspacesOptions != null && listWorkspacesOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listWorkspacesOptions.pageLimit()));
    }
    if (listWorkspacesOptions != null && listWorkspacesOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listWorkspacesOptions.includeCount()));
    }
    if (listWorkspacesOptions != null && listWorkspacesOptions.xsort() != null) {
      builder.query('sort', listWorkspacesOptions.xsort());
    }
    if (listWorkspacesOptions != null && listWorkspacesOptions.cursor() != null) {
      builder.query('cursor', listWorkspacesOptions.cursor());
    }
    if (listWorkspacesOptions != null && listWorkspacesOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listWorkspacesOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.WorkspaceCollection) createServiceCall(builder.build(), IBMAssistantV1Models.WorkspaceCollection.class);
  }

  /**
   * Update workspace.
   *
   * Update an existing workspace with new or modified data. You must provide component objects defining the content of
   * the updated workspace.
   *
   * This operation is limited to 30 request per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateWorkspaceOptions the {@link IBMAssistantV1Models.UpdateWorkspaceOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Workspace} with the response
   */
  public IBMAssistantV1Models.Workspace updateWorkspace(IBMAssistantV1Models.UpdateWorkspaceOptions updateWorkspaceOptions) {
    IBMWatsonValidator.notNull(updateWorkspaceOptions, 'updateWorkspaceOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}', new String[]{ updateWorkspaceOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateWorkspaceOptions != null) ? updateWorkspaceOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (updateWorkspaceOptions.append() != null) {
      builder.query('append', String.valueOf(updateWorkspaceOptions.append()));
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateWorkspaceOptions.name() != null) {
      contentJson.put('name', updateWorkspaceOptions.name());
    }
    if (updateWorkspaceOptions.description() != null) {
      contentJson.put('description', updateWorkspaceOptions.description());
    }
    if (updateWorkspaceOptions.language() != null) {
      contentJson.put('language', updateWorkspaceOptions.language());
    }
    if (updateWorkspaceOptions.intents() != null) {
      contentJson.put('intents', updateWorkspaceOptions.intents());
    }
    if (updateWorkspaceOptions.entities() != null) {
      contentJson.put('entities', updateWorkspaceOptions.entities());
    }
    if (updateWorkspaceOptions.dialogNodes() != null) {
      contentJson.put('dialog_nodes', updateWorkspaceOptions.dialogNodes());
    }
    if (updateWorkspaceOptions.counterexamples() != null) {
      contentJson.put('counterexamples', updateWorkspaceOptions.counterexamples());
    }
    if (updateWorkspaceOptions.metadata() != null) {
      contentJson.put('metadata', updateWorkspaceOptions.metadata());
    }
    if (updateWorkspaceOptions.learningOptOut() != null) {
      contentJson.put('learning_opt_out', updateWorkspaceOptions.learningOptOut());
    }
    if (updateWorkspaceOptions.systemSettings() != null) {
      contentJson.put('system_settings', updateWorkspaceOptions.systemSettings());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Workspace) createServiceCall(builder.build(), IBMAssistantV1Models.Workspace.class);
  }

  /**
   * Create intent.
   *
   * Create a new intent.
   *
   * This operation is limited to 2000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createIntentOptions the {@link IBMAssistantV1Models.CreateIntentOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Intent} with the response
   */
  public IBMAssistantV1Models.Intent createIntent(IBMAssistantV1Models.CreateIntentOptions createIntentOptions) {
    IBMWatsonValidator.notNull(createIntentOptions, 'createIntentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/intents', new String[]{ createIntentOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createIntentOptions != null) ? createIntentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('intent', createIntentOptions.intent());
    if (createIntentOptions.description() != null) {
      contentJson.put('description', createIntentOptions.description());
    }
    if (createIntentOptions.examples() != null) {
      contentJson.put('examples', createIntentOptions.examples());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Intent) createServiceCall(builder.build(), IBMAssistantV1Models.Intent.class);
  }

  /**
   * Delete intent.
   *
   * Delete an intent from a workspace.
   *
   * This operation is limited to 2000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteIntentOptions the {@link IBMAssistantV1Models.DeleteIntentOptions} containing the options for the call
   * @return the service call
   */
  public void deleteIntent(IBMAssistantV1Models.DeleteIntentOptions deleteIntentOptions) {
    IBMWatsonValidator.notNull(deleteIntentOptions, 'deleteIntentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ deleteIntentOptions.workspaceId(), deleteIntentOptions.intent() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteIntentOptions != null) ? deleteIntentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get intent.
   *
   * Get information about an intent, optionally including all intent content.
   *
   * With **export**=`false`, this operation is limited to 6000 requests per 5 minutes. With **export**=`true`, the
   * limit is 400 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param getIntentOptions the {@link IBMAssistantV1Models.GetIntentOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.IntentExport} with the response
   */
  public IBMAssistantV1Models.IntentExport getIntent(IBMAssistantV1Models.GetIntentOptions getIntentOptions) {
    IBMWatsonValidator.notNull(getIntentOptions, 'getIntentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ getIntentOptions.workspaceId(), getIntentOptions.intent() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getIntentOptions != null) ? getIntentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getIntentOptions.xexport() != null) {
      builder.query('export', String.valueOf(getIntentOptions.xexport()));
    }
    if (getIntentOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getIntentOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.IntentExport) createServiceCall(builder.build(), IBMAssistantV1Models.IntentExport.class);
  }

  /**
   * List intents.
   *
   * List the intents for a workspace.
   *
   * With **export**=`false`, this operation is limited to 2000 requests per 30 minutes. With **export**=`true`, the
   * limit is 400 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listIntentsOptions the {@link IBMAssistantV1Models.ListIntentsOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.IntentCollection} with the response
   */
  public IBMAssistantV1Models.IntentCollection listIntents(IBMAssistantV1Models.ListIntentsOptions listIntentsOptions) {
    IBMWatsonValidator.notNull(listIntentsOptions, 'listIntentsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/intents', new String[]{ listIntentsOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listIntentsOptions != null) ? listIntentsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listIntentsOptions.xexport() != null) {
      builder.query('export', String.valueOf(listIntentsOptions.xexport()));
    }
    if (listIntentsOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listIntentsOptions.pageLimit()));
    }
    if (listIntentsOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listIntentsOptions.includeCount()));
    }
    if (listIntentsOptions.xsort() != null) {
      builder.query('sort', listIntentsOptions.xsort());
    }
    if (listIntentsOptions.cursor() != null) {
      builder.query('cursor', listIntentsOptions.cursor());
    }
    if (listIntentsOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listIntentsOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.IntentCollection) createServiceCall(builder.build(), IBMAssistantV1Models.IntentCollection.class);
  }

  /**
   * Update intent.
   *
   * Update an existing intent with new or modified data. You must provide component objects defining the content of the
   * updated intent.
   *
   * This operation is limited to 2000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateIntentOptions the {@link IBMAssistantV1Models.UpdateIntentOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Intent} with the response
   */
  public IBMAssistantV1Models.Intent updateIntent(IBMAssistantV1Models.UpdateIntentOptions updateIntentOptions) {
    IBMWatsonValidator.notNull(updateIntentOptions, 'updateIntentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ updateIntentOptions.workspaceId(), updateIntentOptions.intent() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateIntentOptions != null) ? updateIntentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateIntentOptions.newIntent() != null) {
      contentJson.put('intent', updateIntentOptions.newIntent());
    }
    if (updateIntentOptions.newExamples() != null) {
      contentJson.put('examples', updateIntentOptions.newExamples());
    }
    if (updateIntentOptions.newDescription() != null) {
      contentJson.put('description', updateIntentOptions.newDescription());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Intent) createServiceCall(builder.build(), IBMAssistantV1Models.Intent.class);
  }

  /**
   * Create user input example.
   *
   * Add a new user input example to an intent.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createExampleOptions the {@link IBMAssistantV1Models.CreateExampleOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Example} with the response
   */
  public IBMAssistantV1Models.Example createExample(IBMAssistantV1Models.CreateExampleOptions createExampleOptions) {
    IBMWatsonValidator.notNull(createExampleOptions, 'createExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}/examples', new String[]{ createExampleOptions.workspaceId(), createExampleOptions.intent() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createExampleOptions != null) ? createExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', createExampleOptions.text());
    if (createExampleOptions.mentions() != null) {
      contentJson.put('mentions', createExampleOptions.mentions());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Example) createServiceCall(builder.build(), IBMAssistantV1Models.Example.class);
  }

  /**
   * Delete user input example.
   *
   * Delete a user input example from an intent.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteExampleOptions the {@link IBMAssistantV1Models.DeleteExampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteExample(IBMAssistantV1Models.DeleteExampleOptions deleteExampleOptions) {
    IBMWatsonValidator.notNull(deleteExampleOptions, 'deleteExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ deleteExampleOptions.workspaceId(), deleteExampleOptions.intent(), deleteExampleOptions.text() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteExampleOptions != null) ? deleteExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get user input example.
   *
   * Get information about a user input example.
   *
   * This operation is limited to 6000 requests per 5 minutes. For more information, see **Rate limiting**.
   *
   * @param getExampleOptions the {@link IBMAssistantV1Models.GetExampleOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Example} with the response
   */
  public IBMAssistantV1Models.Example getExample(IBMAssistantV1Models.GetExampleOptions getExampleOptions) {
    IBMWatsonValidator.notNull(getExampleOptions, 'getExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ getExampleOptions.workspaceId(), getExampleOptions.intent(), getExampleOptions.text() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getExampleOptions != null) ? getExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getExampleOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getExampleOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.Example) createServiceCall(builder.build(), IBMAssistantV1Models.Example.class);
  }

  /**
   * List user input examples.
   *
   * List the user input examples for an intent, optionally including contextual entity mentions.
   *
   * This operation is limited to 2500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listExamplesOptions the {@link IBMAssistantV1Models.ListExamplesOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.ExampleCollection} with the response
   */
  public IBMAssistantV1Models.ExampleCollection listExamples(IBMAssistantV1Models.ListExamplesOptions listExamplesOptions) {
    IBMWatsonValidator.notNull(listExamplesOptions, 'listExamplesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}/examples', new String[]{ listExamplesOptions.workspaceId(), listExamplesOptions.intent() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listExamplesOptions != null) ? listExamplesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listExamplesOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listExamplesOptions.pageLimit()));
    }
    if (listExamplesOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listExamplesOptions.includeCount()));
    }
    if (listExamplesOptions.xsort() != null) {
      builder.query('sort', listExamplesOptions.xsort());
    }
    if (listExamplesOptions.cursor() != null) {
      builder.query('cursor', listExamplesOptions.cursor());
    }
    if (listExamplesOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listExamplesOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.ExampleCollection) createServiceCall(builder.build(), IBMAssistantV1Models.ExampleCollection.class);
  }

  /**
   * Update user input example.
   *
   * Update the text of a user input example.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateExampleOptions the {@link IBMAssistantV1Models.UpdateExampleOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Example} with the response
   */
  public IBMAssistantV1Models.Example updateExample(IBMAssistantV1Models.UpdateExampleOptions updateExampleOptions) {
    IBMWatsonValidator.notNull(updateExampleOptions, 'updateExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ updateExampleOptions.workspaceId(), updateExampleOptions.intent(), updateExampleOptions.text() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateExampleOptions != null) ? updateExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateExampleOptions.newText() != null) {
      contentJson.put('text', updateExampleOptions.newText());
    }
    if (updateExampleOptions.newMentions() != null) {
      contentJson.put('mentions', updateExampleOptions.newMentions());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Example) createServiceCall(builder.build(), IBMAssistantV1Models.Example.class);
  }

  /**
   * Create counterexample.
   *
   * Add a new counterexample to a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createCounterexampleOptions the {@link IBMAssistantV1Models.CreateCounterexampleOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Counterexample} with the response
   */
  public IBMAssistantV1Models.Counterexample createCounterexample(IBMAssistantV1Models.CreateCounterexampleOptions createCounterexampleOptions) {
    IBMWatsonValidator.notNull(createCounterexampleOptions, 'createCounterexampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/counterexamples', new String[]{ createCounterexampleOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createCounterexampleOptions != null) ? createCounterexampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', createCounterexampleOptions.text());
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Counterexample) createServiceCall(builder.build(), IBMAssistantV1Models.Counterexample.class);
  }

  /**
   * Delete counterexample.
   *
   * Delete a counterexample from a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteCounterexampleOptions the {@link IBMAssistantV1Models.DeleteCounterexampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCounterexample(IBMAssistantV1Models.DeleteCounterexampleOptions deleteCounterexampleOptions) {
    IBMWatsonValidator.notNull(deleteCounterexampleOptions, 'deleteCounterexampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ deleteCounterexampleOptions.workspaceId(), deleteCounterexampleOptions.text() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteCounterexampleOptions != null) ? deleteCounterexampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get counterexample.
   *
   * Get information about a counterexample. Counterexamples are examples that have been marked as irrelevant input.
   *
   * This operation is limited to 6000 requests per 5 minutes. For more information, see **Rate limiting**.
   *
   * @param getCounterexampleOptions the {@link IBMAssistantV1Models.GetCounterexampleOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Counterexample} with the response
   */
  public IBMAssistantV1Models.Counterexample getCounterexample(IBMAssistantV1Models.GetCounterexampleOptions getCounterexampleOptions) {
    IBMWatsonValidator.notNull(getCounterexampleOptions, 'getCounterexampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ getCounterexampleOptions.workspaceId(), getCounterexampleOptions.text() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getCounterexampleOptions != null) ? getCounterexampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getCounterexampleOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getCounterexampleOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.Counterexample) createServiceCall(builder.build(), IBMAssistantV1Models.Counterexample.class);
  }

  /**
   * List counterexamples.
   *
   * List the counterexamples for a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * This operation is limited to 2500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listCounterexamplesOptions the {@link IBMAssistantV1Models.ListCounterexamplesOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.CounterexampleCollection} with the response
   */
  public IBMAssistantV1Models.CounterexampleCollection listCounterexamples(IBMAssistantV1Models.ListCounterexamplesOptions listCounterexamplesOptions) {
    IBMWatsonValidator.notNull(listCounterexamplesOptions, 'listCounterexamplesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/counterexamples', new String[]{ listCounterexamplesOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listCounterexamplesOptions != null) ? listCounterexamplesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listCounterexamplesOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listCounterexamplesOptions.pageLimit()));
    }
    if (listCounterexamplesOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listCounterexamplesOptions.includeCount()));
    }
    if (listCounterexamplesOptions.xsort() != null) {
      builder.query('sort', listCounterexamplesOptions.xsort());
    }
    if (listCounterexamplesOptions.cursor() != null) {
      builder.query('cursor', listCounterexamplesOptions.cursor());
    }
    if (listCounterexamplesOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listCounterexamplesOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.CounterexampleCollection) createServiceCall(builder.build(), IBMAssistantV1Models.CounterexampleCollection.class);
  }

  /**
   * Update counterexample.
   *
   * Update the text of a counterexample. Counterexamples are examples that have been marked as irrelevant input.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateCounterexampleOptions the {@link IBMAssistantV1Models.UpdateCounterexampleOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Counterexample} with the response
   */
  public IBMAssistantV1Models.Counterexample updateCounterexample(IBMAssistantV1Models.UpdateCounterexampleOptions updateCounterexampleOptions) {
    IBMWatsonValidator.notNull(updateCounterexampleOptions, 'updateCounterexampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ updateCounterexampleOptions.workspaceId(), updateCounterexampleOptions.text() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateCounterexampleOptions != null) ? updateCounterexampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateCounterexampleOptions.newText() != null) {
      contentJson.put('text', updateCounterexampleOptions.newText());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Counterexample) createServiceCall(builder.build(), IBMAssistantV1Models.Counterexample.class);
  }

  /**
   * Create entity.
   *
   * Create a new entity, or enable a system entity.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createEntityOptions the {@link IBMAssistantV1Models.CreateEntityOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Entity} with the response
   */
  public IBMAssistantV1Models.Entity createEntity(IBMAssistantV1Models.CreateEntityOptions createEntityOptions) {
    IBMWatsonValidator.notNull(createEntityOptions, 'createEntityOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/entities', new String[]{ createEntityOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createEntityOptions != null) ? createEntityOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('entity', createEntityOptions.entity());
    if (createEntityOptions.description() != null) {
      contentJson.put('description', createEntityOptions.description());
    }
    if (createEntityOptions.metadata() != null) {
      contentJson.put('metadata', createEntityOptions.metadata());
    }
    if (createEntityOptions.values() != null) {
      contentJson.put('values', createEntityOptions.values());
    }
    if (createEntityOptions.fuzzyMatch() != null) {
      contentJson.put('fuzzy_match', createEntityOptions.fuzzyMatch());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Entity) createServiceCall(builder.build(), IBMAssistantV1Models.Entity.class);
  }

  /**
   * Delete entity.
   *
   * Delete an entity from a workspace, or disable a system entity.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteEntityOptions the {@link IBMAssistantV1Models.DeleteEntityOptions} containing the options for the call
   * @return the service call
   */
  public void deleteEntity(IBMAssistantV1Models.DeleteEntityOptions deleteEntityOptions) {
    IBMWatsonValidator.notNull(deleteEntityOptions, 'deleteEntityOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ deleteEntityOptions.workspaceId(), deleteEntityOptions.entity() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteEntityOptions != null) ? deleteEntityOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get entity.
   *
   * Get information about an entity, optionally including all entity content.
   *
   * With **export**=`false`, this operation is limited to 6000 requests per 5 minutes. With **export**=`true`, the
   * limit is 200 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param getEntityOptions the {@link IBMAssistantV1Models.GetEntityOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.EntityExport} with the response
   */
  public IBMAssistantV1Models.EntityExport getEntity(IBMAssistantV1Models.GetEntityOptions getEntityOptions) {
    IBMWatsonValidator.notNull(getEntityOptions, 'getEntityOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ getEntityOptions.workspaceId(), getEntityOptions.entity() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getEntityOptions != null) ? getEntityOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getEntityOptions.xexport() != null) {
      builder.query('export', String.valueOf(getEntityOptions.xexport()));
    }
    if (getEntityOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getEntityOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.EntityExport) createServiceCall(builder.build(), IBMAssistantV1Models.EntityExport.class);
  }

  /**
   * List entities.
   *
   * List the entities for a workspace.
   *
   * With **export**=`false`, this operation is limited to 1000 requests per 30 minutes. With **export**=`true`, the
   * limit is 200 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listEntitiesOptions the {@link IBMAssistantV1Models.ListEntitiesOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.EntityCollection} with the response
   */
  public IBMAssistantV1Models.EntityCollection listEntities(IBMAssistantV1Models.ListEntitiesOptions listEntitiesOptions) {
    IBMWatsonValidator.notNull(listEntitiesOptions, 'listEntitiesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/entities', new String[]{ listEntitiesOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listEntitiesOptions != null) ? listEntitiesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listEntitiesOptions.xexport() != null) {
      builder.query('export', String.valueOf(listEntitiesOptions.xexport()));
    }
    if (listEntitiesOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listEntitiesOptions.pageLimit()));
    }
    if (listEntitiesOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listEntitiesOptions.includeCount()));
    }
    if (listEntitiesOptions.xsort() != null) {
      builder.query('sort', listEntitiesOptions.xsort());
    }
    if (listEntitiesOptions.cursor() != null) {
      builder.query('cursor', listEntitiesOptions.cursor());
    }
    if (listEntitiesOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listEntitiesOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.EntityCollection) createServiceCall(builder.build(), IBMAssistantV1Models.EntityCollection.class);
  }

  /**
   * Update entity.
   *
   * Update an existing entity with new or modified data. You must provide component objects defining the content of the
   * updated entity.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateEntityOptions the {@link IBMAssistantV1Models.UpdateEntityOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Entity} with the response
   */
  public IBMAssistantV1Models.Entity updateEntity(IBMAssistantV1Models.UpdateEntityOptions updateEntityOptions) {
    IBMWatsonValidator.notNull(updateEntityOptions, 'updateEntityOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ updateEntityOptions.workspaceId(), updateEntityOptions.entity() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateEntityOptions != null) ? updateEntityOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateEntityOptions.newFuzzyMatch() != null) {
      contentJson.put('fuzzy_match', updateEntityOptions.newFuzzyMatch());
    }
    if (updateEntityOptions.newEntity() != null) {
      contentJson.put('entity', updateEntityOptions.newEntity());
    }
    if (updateEntityOptions.newMetadata() != null) {
      contentJson.put('metadata', updateEntityOptions.newMetadata());
    }
    if (updateEntityOptions.newValues() != null) {
      contentJson.put('values', updateEntityOptions.newValues());
    }
    if (updateEntityOptions.newDescription() != null) {
      contentJson.put('description', updateEntityOptions.newDescription());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Entity) createServiceCall(builder.build(), IBMAssistantV1Models.Entity.class);
  }

  /**
   * List entity mentions.
   *
   * List mentions for a contextual entity. An entity mention is an occurrence of a contextual entity in the context of
   * an intent user input example.
   *
   * This operation is limited to 200 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listMentionsOptions the {@link IBMAssistantV1Models.ListMentionsOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.EntityMentionCollection} with the response
   */
  public IBMAssistantV1Models.EntityMentionCollection listMentions(IBMAssistantV1Models.ListMentionsOptions listMentionsOptions) {
    IBMWatsonValidator.notNull(listMentionsOptions, 'listMentionsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/mentions', new String[]{ listMentionsOptions.workspaceId(), listMentionsOptions.entity() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listMentionsOptions != null) ? listMentionsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listMentionsOptions.xexport() != null) {
      builder.query('export', String.valueOf(listMentionsOptions.xexport()));
    }
    if (listMentionsOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listMentionsOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.EntityMentionCollection) createServiceCall(builder.build(), IBMAssistantV1Models.EntityMentionCollection.class);
  }

  /**
   * Add entity value.
   *
   * Create a new value for an entity.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createValueOptions the {@link IBMAssistantV1Models.CreateValueOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Value} with the response
   */
  public IBMAssistantV1Models.Value createValue(IBMAssistantV1Models.CreateValueOptions createValueOptions) {
    IBMWatsonValidator.notNull(createValueOptions, 'createValueOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values', new String[]{ createValueOptions.workspaceId(), createValueOptions.entity() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createValueOptions != null) ? createValueOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('value', createValueOptions.value());
    if (createValueOptions.metadata() != null) {
      contentJson.put('metadata', createValueOptions.metadata());
    }
    if (createValueOptions.synonyms() != null) {
      contentJson.put('synonyms', createValueOptions.synonyms());
    }
    if (createValueOptions.patterns() != null) {
      contentJson.put('patterns', createValueOptions.patterns());
    }
    if (createValueOptions.valueType() != null) {
      contentJson.put('type', createValueOptions.valueType());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Value) createServiceCall(builder.build(), IBMAssistantV1Models.Value.class);
  }

  /**
   * Delete entity value.
   *
   * Delete a value from an entity.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteValueOptions the {@link IBMAssistantV1Models.DeleteValueOptions} containing the options for the call
   * @return the service call
   */
  public void deleteValue(IBMAssistantV1Models.DeleteValueOptions deleteValueOptions) {
    IBMWatsonValidator.notNull(deleteValueOptions, 'deleteValueOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ deleteValueOptions.workspaceId(), deleteValueOptions.entity(), deleteValueOptions.value() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteValueOptions != null) ? deleteValueOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get entity value.
   *
   * Get information about an entity value.
   *
   * This operation is limited to 6000 requests per 5 minutes. For more information, see **Rate limiting**.
   *
   * @param getValueOptions the {@link IBMAssistantV1Models.GetValueOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.ValueExport} with the response
   */
  public IBMAssistantV1Models.ValueExport getValue(IBMAssistantV1Models.GetValueOptions getValueOptions) {
    IBMWatsonValidator.notNull(getValueOptions, 'getValueOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ getValueOptions.workspaceId(), getValueOptions.entity(), getValueOptions.value() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getValueOptions != null) ? getValueOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getValueOptions.xexport() != null) {
      builder.query('export', String.valueOf(getValueOptions.xexport()));
    }
    if (getValueOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getValueOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.ValueExport) createServiceCall(builder.build(), IBMAssistantV1Models.ValueExport.class);
  }

  /**
   * List entity values.
   *
   * List the values for an entity.
   *
   * This operation is limited to 2500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listValuesOptions the {@link IBMAssistantV1Models.ListValuesOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.ValueCollection} with the response
   */
  public IBMAssistantV1Models.ValueCollection listValues(IBMAssistantV1Models.ListValuesOptions listValuesOptions) {
    IBMWatsonValidator.notNull(listValuesOptions, 'listValuesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values', new String[]{ listValuesOptions.workspaceId(), listValuesOptions.entity() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listValuesOptions != null) ? listValuesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listValuesOptions.xexport() != null) {
      builder.query('export', String.valueOf(listValuesOptions.xexport()));
    }
    if (listValuesOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listValuesOptions.pageLimit()));
    }
    if (listValuesOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listValuesOptions.includeCount()));
    }
    if (listValuesOptions.xsort() != null) {
      builder.query('sort', listValuesOptions.xsort());
    }
    if (listValuesOptions.cursor() != null) {
      builder.query('cursor', listValuesOptions.cursor());
    }
    if (listValuesOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listValuesOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.ValueCollection) createServiceCall(builder.build(), IBMAssistantV1Models.ValueCollection.class);
  }

  /**
   * Update entity value.
   *
   * Update an existing entity value with new or modified data. You must provide component objects defining the content
   * of the updated entity value.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateValueOptions the {@link IBMAssistantV1Models.UpdateValueOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Value} with the response
   */
  public IBMAssistantV1Models.Value updateValue(IBMAssistantV1Models.UpdateValueOptions updateValueOptions) {
    IBMWatsonValidator.notNull(updateValueOptions, 'updateValueOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ updateValueOptions.workspaceId(), updateValueOptions.entity(), updateValueOptions.value() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateValueOptions != null) ? updateValueOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateValueOptions.newSynonyms() != null) {
      contentJson.put('synonyms', updateValueOptions.newSynonyms());
    }
    if (updateValueOptions.valueType() != null) {
      contentJson.put('type', updateValueOptions.valueType());
    }
    if (updateValueOptions.newMetadata() != null) {
      contentJson.put('metadata', updateValueOptions.newMetadata());
    }
    if (updateValueOptions.newPatterns() != null) {
      contentJson.put('patterns', updateValueOptions.newPatterns());
    }
    if (updateValueOptions.newValue() != null) {
      contentJson.put('value', updateValueOptions.newValue());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Value) createServiceCall(builder.build(), IBMAssistantV1Models.Value.class);
  }

  /**
   * Add entity value synonym.
   *
   * Add a new synonym to an entity value.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createSynonymOptions the {@link IBMAssistantV1Models.CreateSynonymOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Synonym} with the response
   */
  public IBMAssistantV1Models.Synonym createSynonym(IBMAssistantV1Models.CreateSynonymOptions createSynonymOptions) {
    IBMWatsonValidator.notNull(createSynonymOptions, 'createSynonymOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms', new String[]{ createSynonymOptions.workspaceId(), createSynonymOptions.entity(), createSynonymOptions.value() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createSynonymOptions != null) ? createSynonymOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('synonym', createSynonymOptions.synonym());
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Synonym) createServiceCall(builder.build(), IBMAssistantV1Models.Synonym.class);
  }

  /**
   * Delete entity value synonym.
   *
   * Delete a synonym from an entity value.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteSynonymOptions the {@link IBMAssistantV1Models.DeleteSynonymOptions} containing the options for the call
   * @return the service call
   */
  public void deleteSynonym(IBMAssistantV1Models.DeleteSynonymOptions deleteSynonymOptions) {
    IBMWatsonValidator.notNull(deleteSynonymOptions, 'deleteSynonymOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ deleteSynonymOptions.workspaceId(), deleteSynonymOptions.entity(), deleteSynonymOptions.value(), deleteSynonymOptions.synonym() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteSynonymOptions != null) ? deleteSynonymOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get entity value synonym.
   *
   * Get information about a synonym of an entity value.
   *
   * This operation is limited to 6000 requests per 5 minutes. For more information, see **Rate limiting**.
   *
   * @param getSynonymOptions the {@link IBMAssistantV1Models.GetSynonymOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Synonym} with the response
   */
  public IBMAssistantV1Models.Synonym getSynonym(IBMAssistantV1Models.GetSynonymOptions getSynonymOptions) {
    IBMWatsonValidator.notNull(getSynonymOptions, 'getSynonymOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ getSynonymOptions.workspaceId(), getSynonymOptions.entity(), getSynonymOptions.value(), getSynonymOptions.synonym() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getSynonymOptions != null) ? getSynonymOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getSynonymOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getSynonymOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.Synonym) createServiceCall(builder.build(), IBMAssistantV1Models.Synonym.class);
  }

  /**
   * List entity value synonyms.
   *
   * List the synonyms for an entity value.
   *
   * This operation is limited to 2500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listSynonymsOptions the {@link IBMAssistantV1Models.ListSynonymsOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.SynonymCollection} with the response
   */
  public IBMAssistantV1Models.SynonymCollection listSynonyms(IBMAssistantV1Models.ListSynonymsOptions listSynonymsOptions) {
    IBMWatsonValidator.notNull(listSynonymsOptions, 'listSynonymsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms', new String[]{ listSynonymsOptions.workspaceId(), listSynonymsOptions.entity(), listSynonymsOptions.value() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listSynonymsOptions != null) ? listSynonymsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listSynonymsOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listSynonymsOptions.pageLimit()));
    }
    if (listSynonymsOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listSynonymsOptions.includeCount()));
    }
    if (listSynonymsOptions.xsort() != null) {
      builder.query('sort', listSynonymsOptions.xsort());
    }
    if (listSynonymsOptions.cursor() != null) {
      builder.query('cursor', listSynonymsOptions.cursor());
    }
    if (listSynonymsOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listSynonymsOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.SynonymCollection) createServiceCall(builder.build(), IBMAssistantV1Models.SynonymCollection.class);
  }

  /**
   * Update entity value synonym.
   *
   * Update an existing entity value synonym with new text.
   *
   * This operation is limited to 1000 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateSynonymOptions the {@link IBMAssistantV1Models.UpdateSynonymOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.Synonym} with the response
   */
  public IBMAssistantV1Models.Synonym updateSynonym(IBMAssistantV1Models.UpdateSynonymOptions updateSynonymOptions) {
    IBMWatsonValidator.notNull(updateSynonymOptions, 'updateSynonymOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ updateSynonymOptions.workspaceId(), updateSynonymOptions.entity(), updateSynonymOptions.value(), updateSynonymOptions.synonym() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateSynonymOptions != null) ? updateSynonymOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateSynonymOptions.newSynonym() != null) {
      contentJson.put('synonym', updateSynonymOptions.newSynonym());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.Synonym) createServiceCall(builder.build(), IBMAssistantV1Models.Synonym.class);
  }

  /**
   * Create dialog node.
   *
   * Create a new dialog node.
   *
   * This operation is limited to 500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param createDialogNodeOptions the {@link IBMAssistantV1Models.CreateDialogNodeOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.DialogNode} with the response
   */
  public IBMAssistantV1Models.DialogNode createDialogNode(IBMAssistantV1Models.CreateDialogNodeOptions createDialogNodeOptions) {
    IBMWatsonValidator.notNull(createDialogNodeOptions, 'createDialogNodeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/dialog_nodes', new String[]{ createDialogNodeOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createDialogNodeOptions != null) ? createDialogNodeOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('dialog_node', createDialogNodeOptions.dialogNode());
    if (createDialogNodeOptions.description() != null) {
      contentJson.put('description', createDialogNodeOptions.description());
    }
    if (createDialogNodeOptions.conditions() != null) {
      contentJson.put('conditions', createDialogNodeOptions.conditions());
    }
    if (createDialogNodeOptions.parent() != null) {
      contentJson.put('parent', createDialogNodeOptions.parent());
    }
    if (createDialogNodeOptions.previousSibling() != null) {
      contentJson.put('previous_sibling', createDialogNodeOptions.previousSibling());
    }
    if (createDialogNodeOptions.output() != null) {
      contentJson.put('output', createDialogNodeOptions.output());
    }
    if (createDialogNodeOptions.context() != null) {
      contentJson.put('context', createDialogNodeOptions.context());
    }
    if (createDialogNodeOptions.metadata() != null) {
      contentJson.put('metadata', createDialogNodeOptions.metadata());
    }
    if (createDialogNodeOptions.nextStep() != null) {
      contentJson.put('next_step', createDialogNodeOptions.nextStep());
    }
    if (createDialogNodeOptions.actions() != null) {
      contentJson.put('actions', createDialogNodeOptions.actions());
    }
    if (createDialogNodeOptions.title() != null) {
      contentJson.put('title', createDialogNodeOptions.title());
    }
    if (createDialogNodeOptions.nodeType() != null) {
      contentJson.put('type', createDialogNodeOptions.nodeType());
    }
    if (createDialogNodeOptions.eventName() != null) {
      contentJson.put('event_name', createDialogNodeOptions.eventName());
    }
    if (createDialogNodeOptions.variable() != null) {
      contentJson.put('variable', createDialogNodeOptions.variable());
    }
    if (createDialogNodeOptions.digressIn() != null) {
      contentJson.put('digress_in', createDialogNodeOptions.digressIn());
    }
    if (createDialogNodeOptions.digressOut() != null) {
      contentJson.put('digress_out', createDialogNodeOptions.digressOut());
    }
    if (createDialogNodeOptions.digressOutSlots() != null) {
      contentJson.put('digress_out_slots', createDialogNodeOptions.digressOutSlots());
    }
    if (createDialogNodeOptions.userLabel() != null) {
      contentJson.put('user_label', createDialogNodeOptions.userLabel());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.DialogNode) createServiceCall(builder.build(), IBMAssistantV1Models.DialogNode.class);
  }

  /**
   * Delete dialog node.
   *
   * Delete a dialog node from a workspace.
   *
   * This operation is limited to 500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param deleteDialogNodeOptions the {@link IBMAssistantV1Models.DeleteDialogNodeOptions} containing the options for the call
   * @return the service call
   */
  public void deleteDialogNode(IBMAssistantV1Models.DeleteDialogNodeOptions deleteDialogNodeOptions) {
    IBMWatsonValidator.notNull(deleteDialogNodeOptions, 'deleteDialogNodeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ deleteDialogNodeOptions.workspaceId(), deleteDialogNodeOptions.dialogNode() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteDialogNodeOptions != null) ? deleteDialogNodeOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get dialog node.
   *
   * Get information about a dialog node.
   *
   * This operation is limited to 6000 requests per 5 minutes. For more information, see **Rate limiting**.
   *
   * @param getDialogNodeOptions the {@link IBMAssistantV1Models.GetDialogNodeOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.DialogNode} with the response
   */
  public IBMAssistantV1Models.DialogNode getDialogNode(IBMAssistantV1Models.GetDialogNodeOptions getDialogNodeOptions) {
    IBMWatsonValidator.notNull(getDialogNodeOptions, 'getDialogNodeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ getDialogNodeOptions.workspaceId(), getDialogNodeOptions.dialogNode() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getDialogNodeOptions != null) ? getDialogNodeOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getDialogNodeOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(getDialogNodeOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.DialogNode) createServiceCall(builder.build(), IBMAssistantV1Models.DialogNode.class);
  }

  /**
   * List dialog nodes.
   *
   * List the dialog nodes for a workspace.
   *
   * This operation is limited to 2500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param listDialogNodesOptions the {@link IBMAssistantV1Models.ListDialogNodesOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.DialogNodeCollection} with the response
   */
  public IBMAssistantV1Models.DialogNodeCollection listDialogNodes(IBMAssistantV1Models.ListDialogNodesOptions listDialogNodesOptions) {
    IBMWatsonValidator.notNull(listDialogNodesOptions, 'listDialogNodesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/dialog_nodes', new String[]{ listDialogNodesOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listDialogNodesOptions != null) ? listDialogNodesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listDialogNodesOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listDialogNodesOptions.pageLimit()));
    }
    if (listDialogNodesOptions.includeCount() != null) {
      builder.query('include_count', String.valueOf(listDialogNodesOptions.includeCount()));
    }
    if (listDialogNodesOptions.xsort() != null) {
      builder.query('sort', listDialogNodesOptions.xsort());
    }
    if (listDialogNodesOptions.cursor() != null) {
      builder.query('cursor', listDialogNodesOptions.cursor());
    }
    if (listDialogNodesOptions.includeAudit() != null) {
      builder.query('include_audit', String.valueOf(listDialogNodesOptions.includeAudit()));
    }

    return (IBMAssistantV1Models.DialogNodeCollection) createServiceCall(builder.build(), IBMAssistantV1Models.DialogNodeCollection.class);
  }

  /**
   * Update dialog node.
   *
   * Update an existing dialog node with new or modified data.
   *
   * This operation is limited to 500 requests per 30 minutes. For more information, see **Rate limiting**.
   *
   * @param updateDialogNodeOptions the {@link IBMAssistantV1Models.UpdateDialogNodeOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.DialogNode} with the response
   */
  public IBMAssistantV1Models.DialogNode updateDialogNode(IBMAssistantV1Models.UpdateDialogNodeOptions updateDialogNodeOptions) {
    IBMWatsonValidator.notNull(updateDialogNodeOptions, 'updateDialogNodeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ updateDialogNodeOptions.workspaceId(), updateDialogNodeOptions.dialogNode() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateDialogNodeOptions != null) ? updateDialogNodeOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateDialogNodeOptions.nodeType() != null) {
      contentJson.put('type', updateDialogNodeOptions.nodeType());
    }
    if (updateDialogNodeOptions.newActions() != null) {
      contentJson.put('actions', updateDialogNodeOptions.newActions());
    }
    if (updateDialogNodeOptions.newConditions() != null) {
      contentJson.put('conditions', updateDialogNodeOptions.newConditions());
    }
    if (updateDialogNodeOptions.newContext() != null) {
      contentJson.put('context', updateDialogNodeOptions.newContext());
    }
    if (updateDialogNodeOptions.newPreviousSibling() != null) {
      contentJson.put('previous_sibling', updateDialogNodeOptions.newPreviousSibling());
    }
    if (updateDialogNodeOptions.newVariable() != null) {
      contentJson.put('variable', updateDialogNodeOptions.newVariable());
    }
    if (updateDialogNodeOptions.newUserLabel() != null) {
      contentJson.put('user_label', updateDialogNodeOptions.newUserLabel());
    }
    if (updateDialogNodeOptions.newMetadata() != null) {
      contentJson.put('metadata', updateDialogNodeOptions.newMetadata());
    }
    if (updateDialogNodeOptions.newTitle() != null) {
      contentJson.put('title', updateDialogNodeOptions.newTitle());
    }
    if (updateDialogNodeOptions.newDescription() != null) {
      contentJson.put('description', updateDialogNodeOptions.newDescription());
    }
    if (updateDialogNodeOptions.newDigressOut() != null) {
      contentJson.put('digress_out', updateDialogNodeOptions.newDigressOut());
    }
    if (updateDialogNodeOptions.newEventName() != null) {
      contentJson.put('event_name', updateDialogNodeOptions.newEventName());
    }
    if (updateDialogNodeOptions.newDigressOutSlots() != null) {
      contentJson.put('digress_out_slots', updateDialogNodeOptions.newDigressOutSlots());
    }
    if (updateDialogNodeOptions.newNextStep() != null) {
      contentJson.put('next_step', updateDialogNodeOptions.newNextStep());
    }
    if (updateDialogNodeOptions.newDigressIn() != null) {
      contentJson.put('digress_in', updateDialogNodeOptions.newDigressIn());
    }
    if (updateDialogNodeOptions.newOutput() != null) {
      contentJson.put('output', updateDialogNodeOptions.newOutput());
    }
    if (updateDialogNodeOptions.newParent() != null) {
      contentJson.put('parent', updateDialogNodeOptions.newParent());
    }
    if (updateDialogNodeOptions.newDialogNode() != null) {
      contentJson.put('dialog_node', updateDialogNodeOptions.newDialogNode());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMAssistantV1Models.DialogNode) createServiceCall(builder.build(), IBMAssistantV1Models.DialogNode.class);
  }

  /**
   * List log events in all workspaces.
   *
   * List the events from the logs of all workspaces in the service instance.
   *
   * If **cursor** is not specified, this operation is limited to 40 requests per 30 minutes. If **cursor** is
   * specified, the limit is 120 requests per minute. For more information, see **Rate limiting**.
   *
   * @param listAllLogsOptions the {@link IBMAssistantV1Models.ListAllLogsOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.LogCollection} with the response
   */
  public IBMAssistantV1Models.LogCollection listAllLogs(IBMAssistantV1Models.ListAllLogsOptions listAllLogsOptions) {
    IBMWatsonValidator.notNull(listAllLogsOptions, 'listAllLogsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/logs');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listAllLogsOptions != null) ? listAllLogsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listAllLogsOptions.filter() != null) {
      builder.query('filter', listAllLogsOptions.filter());
    }
    if (listAllLogsOptions.xsort() != null) {
      builder.query('sort', listAllLogsOptions.xsort());
    }
    if (listAllLogsOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listAllLogsOptions.pageLimit()));
    }
    if (listAllLogsOptions.cursor() != null) {
      builder.query('cursor', listAllLogsOptions.cursor());
    }

    return (IBMAssistantV1Models.LogCollection) createServiceCall(builder.build(), IBMAssistantV1Models.LogCollection.class);
  }

  /**
   * List log events in a workspace.
   *
   * List the events from the log of a specific workspace.
   *
   * If **cursor** is not specified, this operation is limited to 40 requests per 30 minutes. If **cursor** is
   * specified, the limit is 120 requests per minute. For more information, see **Rate limiting**.
   *
   * @param listLogsOptions the {@link IBMAssistantV1Models.ListLogsOptions} containing the options for the call
   * @return the {@link IBMAssistantV1Models.LogCollection} with the response
   */
  public IBMAssistantV1Models.LogCollection listLogs(IBMAssistantV1Models.ListLogsOptions listLogsOptions) {
    IBMWatsonValidator.notNull(listLogsOptions, 'listLogsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/workspaces/{0}/logs', new String[]{ listLogsOptions.workspaceId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listLogsOptions != null) ? listLogsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listLogsOptions.xsort() != null) {
      builder.query('sort', listLogsOptions.xsort());
    }
    if (listLogsOptions.filter() != null) {
      builder.query('filter', listLogsOptions.filter());
    }
    if (listLogsOptions.pageLimit() != null) {
      builder.query('page_limit', String.valueOf(listLogsOptions.pageLimit()));
    }
    if (listLogsOptions.cursor() != null) {
      builder.query('cursor', listLogsOptions.cursor());
    }

    return (IBMAssistantV1Models.LogCollection) createServiceCall(builder.build(), IBMAssistantV1Models.LogCollection.class);
  }

  /**
   * Delete labeled data.
   *
   * Deletes all data associated with a specified customer ID. The method has no effect if no data is associated with
   * the customer ID.
   *
   * You associate a customer ID with data by passing the `X-Watson-Metadata` header with a request that passes data.
   * For more information about personal data and customer IDs, see [Information
   * security](https://cloud.ibm.com/docs/services/assistant/information-security.html).
   *
   * @param deleteUserDataOptions the {@link IBMAssistantV1Models.DeleteUserDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteUserData(IBMAssistantV1Models.DeleteUserDataOptions deleteUserDataOptions) {
    IBMWatsonValidator.notNull(deleteUserDataOptions, 'deleteUserDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + '/v1/user_data');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteUserDataOptions != null) ? deleteUserDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (deleteUserDataOptions.customerId() != null) {
      builder.query('customer_id', deleteUserDataOptions.customerId());
    }

    createServiceCall(builder.build(), null);
  }

}
