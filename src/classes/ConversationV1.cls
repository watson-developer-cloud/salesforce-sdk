/**
 * The IBM Watson Conversation service combines machine learning, natural language understanding, and integrated dialog
 * tools to create conversation flows between your apps and your users.
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/conversation.html">Conversation</a>
 */
public class ConversationV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/conversation/api';
  private String versionDate;

  /** The Constant VERSION_DATE_2017_05_26. */
    public static final String VERSION_DATE_2017_05_26 = '2017-05-26';
  /** The Constant VERSION_DATE_2017_04_21. */
    public static final String VERSION_DATE_2017_04_21 = '2017-04-21';
  /** The Constant VERSION_DATE_2017_02_03. */
    public static final String VERSION_DATE_2017_02_03 = '2017-02-03';
  /** The Constant VERSION_DATE_2016_09_20. */
    public static final String VERSION_DATE_2016_09_20 = '2016-09-20';
  /** The Constant VERSION_DATE_2016_07_11. */
    public static final String VERSION_DATE_2016_07_11 = '2016-07-11';
  /**
   * Instantiates a new `ConversationV1`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public ConversationV1(String versionDate) {
    this.ServiceName = 'Conversation';
    if ((getEndPoint() == null) || String.isBlank(getEndPoint())) {
      setEndPoint(URL);
    }
    if(String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.RuntimeException('Version cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `ConversationV1` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public ConversationV1(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Create workspace.
   *
   * Create a workspace based on component objects. You must provide workspace components defining the content of the new workspace.
   *
   * @param createWorkspaceOptions the {@link ConversationV1Models.CreateWorkspaceOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Workspace} with the response
   */
  public ConversationV1Models.Workspace createWorkspace(ConversationV1Models.CreateWorkspaceOptions createWorkspaceOptions) {
    builder = IBMWatsonRequestBuilder.http_post(URL + '/v1/workspaces');
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Workspace) createServiceCall(builder.build(), ConversationV1Models.Workspace.class);
  }

  /**
   * Delete workspace.
   *
   * Delete a workspace from the service instance.
   *
   * @param deleteWorkspaceOptions the {@link ConversationV1Models.DeleteWorkspaceOptions} containing the options for the call
   * @return the service call
   */
  public void deleteWorkspace(ConversationV1Models.DeleteWorkspaceOptions deleteWorkspaceOptions) {
    IBMWatsonValidator.notNull(deleteWorkspaceOptions, 'deleteWorkspaceOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}', new String[]{ deleteWorkspaceOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get information about a workspace.
   *
   * Get information about a workspace, optionally including all workspace content.
   *
   * @param getWorkspaceOptions the {@link ConversationV1Models.GetWorkspaceOptions} containing the options for the call
   * @return the {@link ConversationV1Models.WorkspaceExport} with the response
   */
  public ConversationV1Models.WorkspaceExport getWorkspace(ConversationV1Models.GetWorkspaceOptions getWorkspaceOptions) {
    IBMWatsonValidator.notNull(getWorkspaceOptions, 'getWorkspaceOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}', new String[]{ getWorkspaceOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(getWorkspaceOptions.xexport())
    });
    return (ConversationV1Models.WorkspaceExport) createServiceCall(builder.build(), ConversationV1Models.WorkspaceExport.class);
  }

  /**
   * List workspaces.
   *
   * List the workspaces associated with a Conversation service instance.
   *
   * @param listWorkspacesOptions the {@link ConversationV1Models.ListWorkspacesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.WorkspaceCollection} with the response
   */
  public ConversationV1Models.WorkspaceCollection listWorkspaces(ConversationV1Models.ListWorkspacesOptions listWorkspacesOptions) {
    builder = IBMWatsonRequestBuilder.http_get(URL + '/v1/workspaces');
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(listWorkspacesOptions.pageLimit()),
      'include_count' => String.valueOf(listWorkspacesOptions.includeCount()),
      'sort' => listWorkspacesOptions.xsort(),
      'cursor' => listWorkspacesOptions.cursor()
    });
    return (ConversationV1Models.WorkspaceCollection) createServiceCall(builder.build(), ConversationV1Models.WorkspaceCollection.class);
  }

  /**
   * Update workspace.
   *
   * Update an existing workspace with new or modified data. You must provide component objects defining the content of the updated workspace.
   *
   * @param updateWorkspaceOptions the {@link ConversationV1Models.UpdateWorkspaceOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Workspace} with the response
   */
  public ConversationV1Models.Workspace updateWorkspace(ConversationV1Models.UpdateWorkspaceOptions updateWorkspaceOptions) {
    IBMWatsonValidator.notNull(updateWorkspaceOptions, 'updateWorkspaceOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}', new String[]{ updateWorkspaceOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Workspace) createServiceCall(builder.build(), ConversationV1Models.Workspace.class);
  }

  /**
   * Get a response to a user's input.
   *
   * @param messageOptions the {@link ConversationV1Models.MessageOptions} containing the options for the call
   * @return the {@link ConversationV1Models.MessageResponse} with the response
   */
  public ConversationV1Models.MessageResponse message(ConversationV1Models.MessageOptions messageOptions) {
    IBMWatsonValidator.notNull(messageOptions, 'messageOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/message', new String[]{ messageOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.MessageResponse) createServiceCall(builder.build(), ConversationV1Models.MessageResponse.class);
  }

  /**
   * Create intent.
   *
   * Create a new intent.
   *
   * @param createIntentOptions the {@link ConversationV1Models.CreateIntentOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Intent} with the response
   */
  public ConversationV1Models.Intent createIntent(ConversationV1Models.CreateIntentOptions createIntentOptions) {
    IBMWatsonValidator.notNull(createIntentOptions, 'createIntentOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents', new String[]{ createIntentOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('intent', createIntentOptions.intent());
    if (createIntentOptions.description() != null) {
      contentJson.put('description', createIntentOptions.description());
    }
    if (createIntentOptions.examples() != null) {
      contentJson.put('examples', createIntentOptions.examples());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Intent) createServiceCall(builder.build(), ConversationV1Models.Intent.class);
  }

  /**
   * Delete intent.
   *
   * Delete an intent from a workspace.
   *
   * @param deleteIntentOptions the {@link ConversationV1Models.DeleteIntentOptions} containing the options for the call
   * @return the service call
   */
  public void deleteIntent(ConversationV1Models.DeleteIntentOptions deleteIntentOptions) {
    IBMWatsonValidator.notNull(deleteIntentOptions, 'deleteIntentOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ deleteIntentOptions.workspaceId(), deleteIntentOptions.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get intent.
   *
   * Get information about an intent, optionally including all intent content.
   *
   * @param getIntentOptions the {@link ConversationV1Models.GetIntentOptions} containing the options for the call
   * @return the {@link ConversationV1Models.IntentExport} with the response
   */
  public ConversationV1Models.IntentExport getIntent(ConversationV1Models.GetIntentOptions getIntentOptions) {
    IBMWatsonValidator.notNull(getIntentOptions, 'getIntentOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ getIntentOptions.workspaceId(), getIntentOptions.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(getIntentOptions.xexport())
    });
    return (ConversationV1Models.IntentExport) createServiceCall(builder.build(), ConversationV1Models.IntentExport.class);
  }

  /**
   * List intents.
   *
   * List the intents for a workspace.
   *
   * @param listIntentsOptions the {@link ConversationV1Models.ListIntentsOptions} containing the options for the call
   * @return the {@link ConversationV1Models.IntentCollection} with the response
   */
  public ConversationV1Models.IntentCollection listIntents(ConversationV1Models.ListIntentsOptions listIntentsOptions) {
    IBMWatsonValidator.notNull(listIntentsOptions, 'listIntentsOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents', new String[]{ listIntentsOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(listIntentsOptions.xexport()),
      'page_limit' => String.valueOf(listIntentsOptions.pageLimit()),
      'include_count' => String.valueOf(listIntentsOptions.includeCount()),
      'sort' => listIntentsOptions.xsort(),
      'cursor' => listIntentsOptions.cursor()
    });
    return (ConversationV1Models.IntentCollection) createServiceCall(builder.build(), ConversationV1Models.IntentCollection.class);
  }

  /**
   * Update intent.
   *
   * Update an existing intent with new or modified data. You must provide data defining the content of the updated intent.
   *
   * @param updateIntentOptions the {@link ConversationV1Models.UpdateIntentOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Intent} with the response
   */
  public ConversationV1Models.Intent updateIntent(ConversationV1Models.UpdateIntentOptions updateIntentOptions) {
    IBMWatsonValidator.notNull(updateIntentOptions, 'updateIntentOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ updateIntentOptions.workspaceId(), updateIntentOptions.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Intent) createServiceCall(builder.build(), ConversationV1Models.Intent.class);
  }

  /**
   * Create user input example.
   *
   * Add a new user input example to an intent.
   *
   * @param createExampleOptions the {@link ConversationV1Models.CreateExampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Example} with the response
   */
  public ConversationV1Models.Example createExample(ConversationV1Models.CreateExampleOptions createExampleOptions) {
    IBMWatsonValidator.notNull(createExampleOptions, 'createExampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples', new String[]{ createExampleOptions.workspaceId(), createExampleOptions.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', createExampleOptions.text());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Example) createServiceCall(builder.build(), ConversationV1Models.Example.class);
  }

  /**
   * Delete user input example.
   *
   * Delete a user input example from an intent.
   *
   * @param deleteExampleOptions the {@link ConversationV1Models.DeleteExampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteExample(ConversationV1Models.DeleteExampleOptions deleteExampleOptions) {
    IBMWatsonValidator.notNull(deleteExampleOptions, 'deleteExampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ deleteExampleOptions.workspaceId(), deleteExampleOptions.intent(), deleteExampleOptions.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get user input example.
   *
   * Get information about a user input example.
   *
   * @param getExampleOptions the {@link ConversationV1Models.GetExampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Example} with the response
   */
  public ConversationV1Models.Example getExample(ConversationV1Models.GetExampleOptions getExampleOptions) {
    IBMWatsonValidator.notNull(getExampleOptions, 'getExampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ getExampleOptions.workspaceId(), getExampleOptions.intent(), getExampleOptions.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (ConversationV1Models.Example) createServiceCall(builder.build(), ConversationV1Models.Example.class);
  }

  /**
   * List user input examples.
   *
   * List the user input examples for an intent.
   *
   * @param listExamplesOptions the {@link ConversationV1Models.ListExamplesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.ExampleCollection} with the response
   */
  public ConversationV1Models.ExampleCollection listExamples(ConversationV1Models.ListExamplesOptions listExamplesOptions) {
    IBMWatsonValidator.notNull(listExamplesOptions, 'listExamplesOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples', new String[]{ listExamplesOptions.workspaceId(), listExamplesOptions.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(listExamplesOptions.pageLimit()),
      'include_count' => String.valueOf(listExamplesOptions.includeCount()),
      'sort' => listExamplesOptions.xsort(),
      'cursor' => listExamplesOptions.cursor()
    });
    return (ConversationV1Models.ExampleCollection) createServiceCall(builder.build(), ConversationV1Models.ExampleCollection.class);
  }

  /**
   * Update user input example.
   *
   * Update the text of a user input example.
   *
   * @param updateExampleOptions the {@link ConversationV1Models.UpdateExampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Example} with the response
   */
  public ConversationV1Models.Example updateExample(ConversationV1Models.UpdateExampleOptions updateExampleOptions) {
    IBMWatsonValidator.notNull(updateExampleOptions, 'updateExampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ updateExampleOptions.workspaceId(), updateExampleOptions.intent(), updateExampleOptions.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateExampleOptions.newText() != null) {
      contentJson.put('text', updateExampleOptions.newText());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Example) createServiceCall(builder.build(), ConversationV1Models.Example.class);
  }

  /**
   * Create entity.
   *
   * Create a new entity.
   *
   * @param createEntityOptions the {@link ConversationV1Models.CreateEntityOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Entity} with the response
   */
  public ConversationV1Models.Entity createEntity(ConversationV1Models.CreateEntityOptions createEntityOptions) {
    IBMWatsonValidator.notNull(createEntityOptions, 'createEntityOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities', new String[]{ createEntityOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Entity) createServiceCall(builder.build(), ConversationV1Models.Entity.class);
  }

  /**
   * Delete entity.
   *
   * Delete an entity from a workspace.
   *
   * @param deleteEntityOptions the {@link ConversationV1Models.DeleteEntityOptions} containing the options for the call
   * @return the service call
   */
  public void deleteEntity(ConversationV1Models.DeleteEntityOptions deleteEntityOptions) {
    IBMWatsonValidator.notNull(deleteEntityOptions, 'deleteEntityOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ deleteEntityOptions.workspaceId(), deleteEntityOptions.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get entity.
   *
   * Get information about an entity, optionally including all entity content.
   *
   * @param getEntityOptions the {@link ConversationV1Models.GetEntityOptions} containing the options for the call
   * @return the {@link ConversationV1Models.EntityExport} with the response
   */
  public ConversationV1Models.EntityExport getEntity(ConversationV1Models.GetEntityOptions getEntityOptions) {
    IBMWatsonValidator.notNull(getEntityOptions, 'getEntityOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ getEntityOptions.workspaceId(), getEntityOptions.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(getEntityOptions.xexport())
    });
    return (ConversationV1Models.EntityExport) createServiceCall(builder.build(), ConversationV1Models.EntityExport.class);
  }

  /**
   * List entities.
   *
   * List the entities for a workspace.
   *
   * @param listEntitiesOptions the {@link ConversationV1Models.ListEntitiesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.EntityCollection} with the response
   */
  public ConversationV1Models.EntityCollection listEntities(ConversationV1Models.ListEntitiesOptions listEntitiesOptions) {
    IBMWatsonValidator.notNull(listEntitiesOptions, 'listEntitiesOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities', new String[]{ listEntitiesOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(listEntitiesOptions.xexport()),
      'page_limit' => String.valueOf(listEntitiesOptions.pageLimit()),
      'include_count' => String.valueOf(listEntitiesOptions.includeCount()),
      'sort' => listEntitiesOptions.xsort(),
      'cursor' => listEntitiesOptions.cursor()
    });
    return (ConversationV1Models.EntityCollection) createServiceCall(builder.build(), ConversationV1Models.EntityCollection.class);
  }

  /**
   * Update entity.
   *
   * Update an existing entity with new or modified data.
   *
   * @param updateEntityOptions the {@link ConversationV1Models.UpdateEntityOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Entity} with the response
   */
  public ConversationV1Models.Entity updateEntity(ConversationV1Models.UpdateEntityOptions updateEntityOptions) {
    IBMWatsonValidator.notNull(updateEntityOptions, 'updateEntityOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ updateEntityOptions.workspaceId(), updateEntityOptions.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Entity) createServiceCall(builder.build(), ConversationV1Models.Entity.class);
  }

  /**
   * Add entity value.
   *
   * Create a new value for an entity.
   *
   * @param createValueOptions the {@link ConversationV1Models.CreateValueOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Value} with the response
   */
  public ConversationV1Models.Value createValue(ConversationV1Models.CreateValueOptions createValueOptions) {
    IBMWatsonValidator.notNull(createValueOptions, 'createValueOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values', new String[]{ createValueOptions.workspaceId(), createValueOptions.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Value) createServiceCall(builder.build(), ConversationV1Models.Value.class);
  }

  /**
   * Delete entity value.
   *
   * Delete a value for an entity.
   *
   * @param deleteValueOptions the {@link ConversationV1Models.DeleteValueOptions} containing the options for the call
   * @return the service call
   */
  public void deleteValue(ConversationV1Models.DeleteValueOptions deleteValueOptions) {
    IBMWatsonValidator.notNull(deleteValueOptions, 'deleteValueOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ deleteValueOptions.workspaceId(), deleteValueOptions.entity(), deleteValueOptions.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get entity value.
   *
   * Get information about an entity value.
   *
   * @param getValueOptions the {@link ConversationV1Models.GetValueOptions} containing the options for the call
   * @return the {@link ConversationV1Models.ValueExport} with the response
   */
  public ConversationV1Models.ValueExport getValue(ConversationV1Models.GetValueOptions getValueOptions) {
    IBMWatsonValidator.notNull(getValueOptions, 'getValueOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ getValueOptions.workspaceId(), getValueOptions.entity(), getValueOptions.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(getValueOptions.xexport())
    });
    return (ConversationV1Models.ValueExport) createServiceCall(builder.build(), ConversationV1Models.ValueExport.class);
  }

  /**
   * List entity values.
   *
   * List the values for an entity.
   *
   * @param listValuesOptions the {@link ConversationV1Models.ListValuesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.ValueCollection} with the response
   */
  public ConversationV1Models.ValueCollection listValues(ConversationV1Models.ListValuesOptions listValuesOptions) {
    IBMWatsonValidator.notNull(listValuesOptions, 'listValuesOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values', new String[]{ listValuesOptions.workspaceId(), listValuesOptions.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(listValuesOptions.xexport()),
      'page_limit' => String.valueOf(listValuesOptions.pageLimit()),
      'include_count' => String.valueOf(listValuesOptions.includeCount()),
      'sort' => listValuesOptions.xsort(),
      'cursor' => listValuesOptions.cursor()
    });
    return (ConversationV1Models.ValueCollection) createServiceCall(builder.build(), ConversationV1Models.ValueCollection.class);
  }

  /**
   * Update entity value.
   *
   * Update the content of a value for an entity.
   *
   * @param updateValueOptions the {@link ConversationV1Models.UpdateValueOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Value} with the response
   */
  public ConversationV1Models.Value updateValue(ConversationV1Models.UpdateValueOptions updateValueOptions) {
    IBMWatsonValidator.notNull(updateValueOptions, 'updateValueOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ updateValueOptions.workspaceId(), updateValueOptions.entity(), updateValueOptions.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Value) createServiceCall(builder.build(), ConversationV1Models.Value.class);
  }

  /**
   * Add entity value synonym.
   *
   * Add a new synonym to an entity value.
   *
   * @param createSynonymOptions the {@link ConversationV1Models.CreateSynonymOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Synonym} with the response
   */
  public ConversationV1Models.Synonym createSynonym(ConversationV1Models.CreateSynonymOptions createSynonymOptions) {
    IBMWatsonValidator.notNull(createSynonymOptions, 'createSynonymOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms', new String[]{ createSynonymOptions.workspaceId(), createSynonymOptions.entity(), createSynonymOptions.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('synonym', createSynonymOptions.synonym());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Synonym) createServiceCall(builder.build(), ConversationV1Models.Synonym.class);
  }

  /**
   * Delete entity value synonym.
   *
   * Delete a synonym for an entity value.
   *
   * @param deleteSynonymOptions the {@link ConversationV1Models.DeleteSynonymOptions} containing the options for the call
   * @return the service call
   */
  public void deleteSynonym(ConversationV1Models.DeleteSynonymOptions deleteSynonymOptions) {
    IBMWatsonValidator.notNull(deleteSynonymOptions, 'deleteSynonymOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ deleteSynonymOptions.workspaceId(), deleteSynonymOptions.entity(), deleteSynonymOptions.value(), deleteSynonymOptions.synonym() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get entity value synonym.
   *
   * Get information about a synonym for an entity value.
   *
   * @param getSynonymOptions the {@link ConversationV1Models.GetSynonymOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Synonym} with the response
   */
  public ConversationV1Models.Synonym getSynonym(ConversationV1Models.GetSynonymOptions getSynonymOptions) {
    IBMWatsonValidator.notNull(getSynonymOptions, 'getSynonymOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ getSynonymOptions.workspaceId(), getSynonymOptions.entity(), getSynonymOptions.value(), getSynonymOptions.synonym() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (ConversationV1Models.Synonym) createServiceCall(builder.build(), ConversationV1Models.Synonym.class);
  }

  /**
   * List entity value synonyms.
   *
   * List the synonyms for an entity value.
   *
   * @param listSynonymsOptions the {@link ConversationV1Models.ListSynonymsOptions} containing the options for the call
   * @return the {@link ConversationV1Models.SynonymCollection} with the response
   */
  public ConversationV1Models.SynonymCollection listSynonyms(ConversationV1Models.ListSynonymsOptions listSynonymsOptions) {
    IBMWatsonValidator.notNull(listSynonymsOptions, 'listSynonymsOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms', new String[]{ listSynonymsOptions.workspaceId(), listSynonymsOptions.entity(), listSynonymsOptions.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(listSynonymsOptions.pageLimit()),
      'include_count' => String.valueOf(listSynonymsOptions.includeCount()),
      'sort' => listSynonymsOptions.xsort(),
      'cursor' => listSynonymsOptions.cursor()
    });
    return (ConversationV1Models.SynonymCollection) createServiceCall(builder.build(), ConversationV1Models.SynonymCollection.class);
  }

  /**
   * Update entity value synonym.
   *
   * Update the information about a synonym for an entity value.
   *
   * @param updateSynonymOptions the {@link ConversationV1Models.UpdateSynonymOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Synonym} with the response
   */
  public ConversationV1Models.Synonym updateSynonym(ConversationV1Models.UpdateSynonymOptions updateSynonymOptions) {
    IBMWatsonValidator.notNull(updateSynonymOptions, 'updateSynonymOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ updateSynonymOptions.workspaceId(), updateSynonymOptions.entity(), updateSynonymOptions.value(), updateSynonymOptions.synonym() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateSynonymOptions.newSynonym() != null) {
      contentJson.put('synonym', updateSynonymOptions.newSynonym());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Synonym) createServiceCall(builder.build(), ConversationV1Models.Synonym.class);
  }

  /**
   * Create dialog node.
   *
   * Create a dialog node.
   *
   * @param createDialogNodeOptions the {@link ConversationV1Models.CreateDialogNodeOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNode} with the response
   */
  public ConversationV1Models.DialogNode createDialogNode(ConversationV1Models.CreateDialogNodeOptions createDialogNodeOptions) {
    IBMWatsonValidator.notNull(createDialogNodeOptions, 'createDialogNodeOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/dialog_nodes', new String[]{ createDialogNodeOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.DialogNode) createServiceCall(builder.build(), ConversationV1Models.DialogNode.class);
  }

  /**
   * Delete dialog node.
   *
   * Delete a dialog node from the workspace.
   *
   * @param deleteDialogNodeOptions the {@link ConversationV1Models.DeleteDialogNodeOptions} containing the options for the call
   * @return the service call
   */
  public void deleteDialogNode(ConversationV1Models.DeleteDialogNodeOptions deleteDialogNodeOptions) {
    IBMWatsonValidator.notNull(deleteDialogNodeOptions, 'deleteDialogNodeOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ deleteDialogNodeOptions.workspaceId(), deleteDialogNodeOptions.dialogNode() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get dialog node.
   *
   * Get information about a dialog node.
   *
   * @param getDialogNodeOptions the {@link ConversationV1Models.GetDialogNodeOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNode} with the response
   */
  public ConversationV1Models.DialogNode getDialogNode(ConversationV1Models.GetDialogNodeOptions getDialogNodeOptions) {
    IBMWatsonValidator.notNull(getDialogNodeOptions, 'getDialogNodeOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ getDialogNodeOptions.workspaceId(), getDialogNodeOptions.dialogNode() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (ConversationV1Models.DialogNode) createServiceCall(builder.build(), ConversationV1Models.DialogNode.class);
  }

  /**
   * List dialog nodes.
   *
   * List the dialog nodes in the workspace.
   *
   * @param listDialogNodesOptions the {@link ConversationV1Models.ListDialogNodesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNodeCollection} with the response
   */
  public ConversationV1Models.DialogNodeCollection listDialogNodes(ConversationV1Models.ListDialogNodesOptions listDialogNodesOptions) {
    IBMWatsonValidator.notNull(listDialogNodesOptions, 'listDialogNodesOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/dialog_nodes', new String[]{ listDialogNodesOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(listDialogNodesOptions.pageLimit()),
      'include_count' => String.valueOf(listDialogNodesOptions.includeCount()),
      'sort' => listDialogNodesOptions.xsort(),
      'cursor' => listDialogNodesOptions.cursor()
    });
    return (ConversationV1Models.DialogNodeCollection) createServiceCall(builder.build(), ConversationV1Models.DialogNodeCollection.class);
  }

  /**
   * Update dialog node.
   *
   * Update information for a dialog node.
   *
   * @param updateDialogNodeOptions the {@link ConversationV1Models.UpdateDialogNodeOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNode} with the response
   */
  public ConversationV1Models.DialogNode updateDialogNode(ConversationV1Models.UpdateDialogNodeOptions updateDialogNodeOptions) {
    IBMWatsonValidator.notNull(updateDialogNodeOptions, 'updateDialogNodeOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ updateDialogNodeOptions.workspaceId(), updateDialogNodeOptions.dialogNode() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
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
    if (updateDialogNodeOptions.newMetadata() != null) {
      contentJson.put('metadata', updateDialogNodeOptions.newMetadata());
    }
    if (updateDialogNodeOptions.newTitle() != null) {
      contentJson.put('title', updateDialogNodeOptions.newTitle());
    }
    if (updateDialogNodeOptions.newDescription() != null) {
      contentJson.put('description', updateDialogNodeOptions.newDescription());
    }
    if (updateDialogNodeOptions.newEventName() != null) {
      contentJson.put('event_name', updateDialogNodeOptions.newEventName());
    }
    if (updateDialogNodeOptions.newNextStep() != null) {
      contentJson.put('next_step', updateDialogNodeOptions.newNextStep());
    }
    if (updateDialogNodeOptions.newOutput() != null) {
      contentJson.put('output', updateDialogNodeOptions.newOutput());
    }
    if (updateDialogNodeOptions.newParent() != null) {
      contentJson.put('parent', updateDialogNodeOptions.newParent());
    }
    contentJson.put('dialog_node', updateDialogNodeOptions.newDialogNode());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.DialogNode) createServiceCall(builder.build(), ConversationV1Models.DialogNode.class);
  }

  /**
   * List log events in a workspace.
   *
   * List log events in a specific workspace.
   *
   * @param listLogsOptions the {@link ConversationV1Models.ListLogsOptions} containing the options for the call
   * @return the {@link ConversationV1Models.LogCollection} with the response
   */
  public ConversationV1Models.LogCollection listLogs(ConversationV1Models.ListLogsOptions listLogsOptions) {
    IBMWatsonValidator.notNull(listLogsOptions, 'listLogsOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/logs', new String[]{ listLogsOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'sort' => listLogsOptions.xsort(),
      'filter' => listLogsOptions.filter(),
      'page_limit' => String.valueOf(listLogsOptions.pageLimit()),
      'cursor' => listLogsOptions.cursor()
    });
    return (ConversationV1Models.LogCollection) createServiceCall(builder.build(), ConversationV1Models.LogCollection.class);
  }

  /**
   * Create counterexample.
   *
   * Add a new counterexample to a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param createCounterexampleOptions the {@link ConversationV1Models.CreateCounterexampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Counterexample} with the response
   */
  public ConversationV1Models.Counterexample createCounterexample(ConversationV1Models.CreateCounterexampleOptions createCounterexampleOptions) {
    IBMWatsonValidator.notNull(createCounterexampleOptions, 'createCounterexampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/counterexamples', new String[]{ createCounterexampleOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', createCounterexampleOptions.text());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Counterexample) createServiceCall(builder.build(), ConversationV1Models.Counterexample.class);
  }

  /**
   * Delete counterexample.
   *
   * Delete a counterexample from a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param deleteCounterexampleOptions the {@link ConversationV1Models.DeleteCounterexampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCounterexample(ConversationV1Models.DeleteCounterexampleOptions deleteCounterexampleOptions) {
    IBMWatsonValidator.notNull(deleteCounterexampleOptions, 'deleteCounterexampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ deleteCounterexampleOptions.workspaceId(), deleteCounterexampleOptions.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), Void.class);
  }

  /**
   * Get counterexample.
   *
   * Get information about a counterexample. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param getCounterexampleOptions the {@link ConversationV1Models.GetCounterexampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Counterexample} with the response
   */
  public ConversationV1Models.Counterexample getCounterexample(ConversationV1Models.GetCounterexampleOptions getCounterexampleOptions) {
    IBMWatsonValidator.notNull(getCounterexampleOptions, 'getCounterexampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ getCounterexampleOptions.workspaceId(), getCounterexampleOptions.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (ConversationV1Models.Counterexample) createServiceCall(builder.build(), ConversationV1Models.Counterexample.class);
  }

  /**
   * List counterexamples.
   *
   * List the counterexamples for a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param listCounterexamplesOptions the {@link ConversationV1Models.ListCounterexamplesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.CounterexampleCollection} with the response
   */
  public ConversationV1Models.CounterexampleCollection listCounterexamples(ConversationV1Models.ListCounterexamplesOptions listCounterexamplesOptions) {
    IBMWatsonValidator.notNull(listCounterexamplesOptions, 'listCounterexamplesOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/counterexamples', new String[]{ listCounterexamplesOptions.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(listCounterexamplesOptions.pageLimit()),
      'include_count' => String.valueOf(listCounterexamplesOptions.includeCount()),
      'sort' => listCounterexamplesOptions.xsort(),
      'cursor' => listCounterexamplesOptions.cursor()
    });
    return (ConversationV1Models.CounterexampleCollection) createServiceCall(builder.build(), ConversationV1Models.CounterexampleCollection.class);
  }

  /**
   * Update counterexample.
   *
   * Update the text of a counterexample. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param updateCounterexampleOptions the {@link ConversationV1Models.UpdateCounterexampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Counterexample} with the response
   */
  public ConversationV1Models.Counterexample updateCounterexample(ConversationV1Models.UpdateCounterexampleOptions updateCounterexampleOptions) {
    IBMWatsonValidator.notNull(updateCounterexampleOptions, 'updateCounterexampleOptions cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ updateCounterexampleOptions.workspaceId(), updateCounterexampleOptions.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateCounterexampleOptions.newText() != null) {
      contentJson.put('text', updateCounterexampleOptions.newText());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Counterexample) createServiceCall(builder.build(), ConversationV1Models.Counterexample.class);
  }

}
