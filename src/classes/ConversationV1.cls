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
   * @param create_workspace_options the {@link ConversationV1Models.CreateWorkspaceOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Workspace} with the response
   */
  public ConversationV1Models.Workspace createWorkspace(ConversationV1Models.CreateWorkspaceOptions create_workspace_options) {
    builder = IBMWatsonRequestBuilder.http_post(URL + '/v1/workspaces');
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (create_workspace_options.name() != null) {
      contentJson.put('name', create_workspace_options.name());
    }
    if (create_workspace_options.description() != null) {
      contentJson.put('description', create_workspace_options.description());
    }
    if (create_workspace_options.language() != null) {
      contentJson.put('language', create_workspace_options.language());
    }
    if (create_workspace_options.intents() != null) {
      contentJson.put('intents', create_workspace_options.intents());
    }
    if (create_workspace_options.entities() != null) {
      contentJson.put('entities', create_workspace_options.entities());
    }
    if (create_workspace_options.dialogNodes() != null) {
      contentJson.put('dialog_nodes', create_workspace_options.dialogNodes());
    }
    if (create_workspace_options.counterexamples() != null) {
      contentJson.put('counterexamples', create_workspace_options.counterexamples());
    }
    if (create_workspace_options.metadata() != null) {
      contentJson.put('metadata', create_workspace_options.metadata());
    }
    if (create_workspace_options.learningOptOut() != null) {
      contentJson.put('learning_opt_out', create_workspace_options.learningOptOut());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Workspace) createServiceCall(builder.build(), ConversationV1Models.Workspace.class);
  }

  /**
   * Delete workspace.
   *
   * Delete a workspace from the service instance.
   *
   * @param delete_workspace_options the {@link ConversationV1Models.DeleteWorkspaceOptions} containing the options for the call
   * @return the service call
   */
  public void deleteWorkspace(ConversationV1Models.DeleteWorkspaceOptions delete_workspace_options) {
    IBMWatsonValidator.notNull(delete_workspace_options, 'delete_workspace_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}', new String[]{ delete_workspace_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get information about a workspace.
   *
   * Get information about a workspace, optionally including all workspace content.
   *
   * @param get_workspace_options the {@link ConversationV1Models.GetWorkspaceOptions} containing the options for the call
   * @return the {@link ConversationV1Models.WorkspaceExport} with the response
   */
  public ConversationV1Models.WorkspaceExport getWorkspace(ConversationV1Models.GetWorkspaceOptions get_workspace_options) {
    IBMWatsonValidator.notNull(get_workspace_options, 'get_workspace_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}', new String[]{ get_workspace_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(get_workspace_options.xexport())
    });
    return (ConversationV1Models.WorkspaceExport) createServiceCall(builder.build(), ConversationV1Models.WorkspaceExport.class);
  }

  /**
   * List workspaces.
   *
   * List the workspaces associated with a Conversation service instance.
   *
   * @param list_workspaces_options the {@link ConversationV1Models.ListWorkspacesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.WorkspaceCollection} with the response
   */
  public ConversationV1Models.WorkspaceCollection listWorkspaces(ConversationV1Models.ListWorkspacesOptions list_workspaces_options) {
    builder = IBMWatsonRequestBuilder.http_get(URL + '/v1/workspaces');
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(list_workspaces_options.pageLimit()),
      'include_count' => String.valueOf(list_workspaces_options.includeCount()),
      'sort' => list_workspaces_options.xsort(),
      'cursor' => list_workspaces_options.cursor()
    });
    return (ConversationV1Models.WorkspaceCollection) createServiceCall(builder.build(), ConversationV1Models.WorkspaceCollection.class);
  }

  /**
   * Update workspace.
   *
   * Update an existing workspace with new or modified data. You must provide component objects defining the content of the updated workspace.
   *
   * @param update_workspace_options the {@link ConversationV1Models.UpdateWorkspaceOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Workspace} with the response
   */
  public ConversationV1Models.Workspace updateWorkspace(ConversationV1Models.UpdateWorkspaceOptions update_workspace_options) {
    IBMWatsonValidator.notNull(update_workspace_options, 'update_workspace_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}', new String[]{ update_workspace_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_workspace_options.name() != null) {
      contentJson.put('name', update_workspace_options.name());
    }
    if (update_workspace_options.description() != null) {
      contentJson.put('description', update_workspace_options.description());
    }
    if (update_workspace_options.language() != null) {
      contentJson.put('language', update_workspace_options.language());
    }
    if (update_workspace_options.intents() != null) {
      contentJson.put('intents', update_workspace_options.intents());
    }
    if (update_workspace_options.entities() != null) {
      contentJson.put('entities', update_workspace_options.entities());
    }
    if (update_workspace_options.dialogNodes() != null) {
      contentJson.put('dialog_nodes', update_workspace_options.dialogNodes());
    }
    if (update_workspace_options.counterexamples() != null) {
      contentJson.put('counterexamples', update_workspace_options.counterexamples());
    }
    if (update_workspace_options.metadata() != null) {
      contentJson.put('metadata', update_workspace_options.metadata());
    }
    if (update_workspace_options.learningOptOut() != null) {
      contentJson.put('learning_opt_out', update_workspace_options.learningOptOut());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Workspace) createServiceCall(builder.build(), ConversationV1Models.Workspace.class);
  }

  /**
   * Get a response to a user's input.
   *
   * @param message_options the {@link ConversationV1Models.MessageOptions} containing the options for the call
   * @return the {@link ConversationV1Models.MessageResponse} with the response
   */
  public ConversationV1Models.MessageResponse message(ConversationV1Models.MessageOptions message_options) {
    IBMWatsonValidator.notNull(message_options, 'message_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/message', new String[]{ message_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (message_options.input() != null) {
      contentJson.put('input', message_options.input());
    }
    if (message_options.alternateIntents() != null) {
      contentJson.put('alternate_intents', message_options.alternateIntents());
    }
    if (message_options.context() != null) {
      contentJson.put('context', message_options.context());
    }
    if (message_options.entities() != null) {
      contentJson.put('entities', message_options.entities());
    }
    if (message_options.intents() != null) {
      contentJson.put('intents', message_options.intents());
    }
    if (message_options.output() != null) {
      contentJson.put('output', message_options.output());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.MessageResponse) createServiceCall(builder.build(), ConversationV1Models.MessageResponse.class);
  }

  /**
   * Create intent.
   *
   * Create a new intent.
   *
   * @param create_intent_options the {@link ConversationV1Models.CreateIntentOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Intent} with the response
   */
  public ConversationV1Models.Intent createIntent(ConversationV1Models.CreateIntentOptions create_intent_options) {
    IBMWatsonValidator.notNull(create_intent_options, 'create_intent_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents', new String[]{ create_intent_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('intent', create_intent_options.intent());
    if (create_intent_options.description() != null) {
      contentJson.put('description', create_intent_options.description());
    }
    if (create_intent_options.examples() != null) {
      contentJson.put('examples', create_intent_options.examples());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Intent) createServiceCall(builder.build(), ConversationV1Models.Intent.class);
  }

  /**
   * Delete intent.
   *
   * Delete an intent from a workspace.
   *
   * @param delete_intent_options the {@link ConversationV1Models.DeleteIntentOptions} containing the options for the call
   * @return the service call
   */
  public void deleteIntent(ConversationV1Models.DeleteIntentOptions delete_intent_options) {
    IBMWatsonValidator.notNull(delete_intent_options, 'delete_intent_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ delete_intent_options.workspaceId(), delete_intent_options.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get intent.
   *
   * Get information about an intent, optionally including all intent content.
   *
   * @param get_intent_options the {@link ConversationV1Models.GetIntentOptions} containing the options for the call
   * @return the {@link ConversationV1Models.IntentExport} with the response
   */
  public ConversationV1Models.IntentExport getIntent(ConversationV1Models.GetIntentOptions get_intent_options) {
    IBMWatsonValidator.notNull(get_intent_options, 'get_intent_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ get_intent_options.workspaceId(), get_intent_options.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(get_intent_options.xexport())
    });
    return (ConversationV1Models.IntentExport) createServiceCall(builder.build(), ConversationV1Models.IntentExport.class);
  }

  /**
   * List intents.
   *
   * List the intents for a workspace.
   *
   * @param list_intents_options the {@link ConversationV1Models.ListIntentsOptions} containing the options for the call
   * @return the {@link ConversationV1Models.IntentCollection} with the response
   */
  public ConversationV1Models.IntentCollection listIntents(ConversationV1Models.ListIntentsOptions list_intents_options) {
    IBMWatsonValidator.notNull(list_intents_options, 'list_intents_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents', new String[]{ list_intents_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(list_intents_options.xexport()),
      'page_limit' => String.valueOf(list_intents_options.pageLimit()),
      'include_count' => String.valueOf(list_intents_options.includeCount()),
      'sort' => list_intents_options.xsort(),
      'cursor' => list_intents_options.cursor()
    });
    return (ConversationV1Models.IntentCollection) createServiceCall(builder.build(), ConversationV1Models.IntentCollection.class);
  }

  /**
   * Update intent.
   *
   * Update an existing intent with new or modified data. You must provide data defining the content of the updated intent.
   *
   * @param update_intent_options the {@link ConversationV1Models.UpdateIntentOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Intent} with the response
   */
  public ConversationV1Models.Intent updateIntent(ConversationV1Models.UpdateIntentOptions update_intent_options) {
    IBMWatsonValidator.notNull(update_intent_options, 'update_intent_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents/{1}', new String[]{ update_intent_options.workspaceId(), update_intent_options.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_intent_options.newIntent() != null) {
      contentJson.put('intent', update_intent_options.newIntent());
    }
    if (update_intent_options.newExamples() != null) {
      contentJson.put('examples', update_intent_options.newExamples());
    }
    if (update_intent_options.newDescription() != null) {
      contentJson.put('description', update_intent_options.newDescription());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Intent) createServiceCall(builder.build(), ConversationV1Models.Intent.class);
  }

  /**
   * Create user input example.
   *
   * Add a new user input example to an intent.
   *
   * @param create_example_options the {@link ConversationV1Models.CreateExampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Example} with the response
   */
  public ConversationV1Models.Example createExample(ConversationV1Models.CreateExampleOptions create_example_options) {
    IBMWatsonValidator.notNull(create_example_options, 'create_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples', new String[]{ create_example_options.workspaceId(), create_example_options.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', create_example_options.text());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Example) createServiceCall(builder.build(), ConversationV1Models.Example.class);
  }

  /**
   * Delete user input example.
   *
   * Delete a user input example from an intent.
   *
   * @param delete_example_options the {@link ConversationV1Models.DeleteExampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteExample(ConversationV1Models.DeleteExampleOptions delete_example_options) {
    IBMWatsonValidator.notNull(delete_example_options, 'delete_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ delete_example_options.workspaceId(), delete_example_options.intent(), delete_example_options.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get user input example.
   *
   * Get information about a user input example.
   *
   * @param get_example_options the {@link ConversationV1Models.GetExampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Example} with the response
   */
  public ConversationV1Models.Example getExample(ConversationV1Models.GetExampleOptions get_example_options) {
    IBMWatsonValidator.notNull(get_example_options, 'get_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ get_example_options.workspaceId(), get_example_options.intent(), get_example_options.text() }));
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
   * @param list_examples_options the {@link ConversationV1Models.ListExamplesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.ExampleCollection} with the response
   */
  public ConversationV1Models.ExampleCollection listExamples(ConversationV1Models.ListExamplesOptions list_examples_options) {
    IBMWatsonValidator.notNull(list_examples_options, 'list_examples_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples', new String[]{ list_examples_options.workspaceId(), list_examples_options.intent() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(list_examples_options.pageLimit()),
      'include_count' => String.valueOf(list_examples_options.includeCount()),
      'sort' => list_examples_options.xsort(),
      'cursor' => list_examples_options.cursor()
    });
    return (ConversationV1Models.ExampleCollection) createServiceCall(builder.build(), ConversationV1Models.ExampleCollection.class);
  }

  /**
   * Update user input example.
   *
   * Update the text of a user input example.
   *
   * @param update_example_options the {@link ConversationV1Models.UpdateExampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Example} with the response
   */
  public ConversationV1Models.Example updateExample(ConversationV1Models.UpdateExampleOptions update_example_options) {
    IBMWatsonValidator.notNull(update_example_options, 'update_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/intents/{1}/examples/{2}', new String[]{ update_example_options.workspaceId(), update_example_options.intent(), update_example_options.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_example_options.newText() != null) {
      contentJson.put('text', update_example_options.newText());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Example) createServiceCall(builder.build(), ConversationV1Models.Example.class);
  }

  /**
   * Create entity.
   *
   * Create a new entity.
   *
   * @param create_entity_options the {@link ConversationV1Models.CreateEntityOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Entity} with the response
   */
  public ConversationV1Models.Entity createEntity(ConversationV1Models.CreateEntityOptions create_entity_options) {
    IBMWatsonValidator.notNull(create_entity_options, 'create_entity_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities', new String[]{ create_entity_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('entity', create_entity_options.entity());
    if (create_entity_options.description() != null) {
      contentJson.put('description', create_entity_options.description());
    }
    if (create_entity_options.metadata() != null) {
      contentJson.put('metadata', create_entity_options.metadata());
    }
    if (create_entity_options.values() != null) {
      contentJson.put('values', create_entity_options.values());
    }
    if (create_entity_options.fuzzyMatch() != null) {
      contentJson.put('fuzzy_match', create_entity_options.fuzzyMatch());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Entity) createServiceCall(builder.build(), ConversationV1Models.Entity.class);
  }

  /**
   * Delete entity.
   *
   * Delete an entity from a workspace.
   *
   * @param delete_entity_options the {@link ConversationV1Models.DeleteEntityOptions} containing the options for the call
   * @return the service call
   */
  public void deleteEntity(ConversationV1Models.DeleteEntityOptions delete_entity_options) {
    IBMWatsonValidator.notNull(delete_entity_options, 'delete_entity_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ delete_entity_options.workspaceId(), delete_entity_options.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get entity.
   *
   * Get information about an entity, optionally including all entity content.
   *
   * @param get_entity_options the {@link ConversationV1Models.GetEntityOptions} containing the options for the call
   * @return the {@link ConversationV1Models.EntityExport} with the response
   */
  public ConversationV1Models.EntityExport getEntity(ConversationV1Models.GetEntityOptions get_entity_options) {
    IBMWatsonValidator.notNull(get_entity_options, 'get_entity_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ get_entity_options.workspaceId(), get_entity_options.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(get_entity_options.xexport())
    });
    return (ConversationV1Models.EntityExport) createServiceCall(builder.build(), ConversationV1Models.EntityExport.class);
  }

  /**
   * List entities.
   *
   * List the entities for a workspace.
   *
   * @param list_entities_options the {@link ConversationV1Models.ListEntitiesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.EntityCollection} with the response
   */
  public ConversationV1Models.EntityCollection listEntities(ConversationV1Models.ListEntitiesOptions list_entities_options) {
    IBMWatsonValidator.notNull(list_entities_options, 'list_entities_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities', new String[]{ list_entities_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(list_entities_options.xexport()),
      'page_limit' => String.valueOf(list_entities_options.pageLimit()),
      'include_count' => String.valueOf(list_entities_options.includeCount()),
      'sort' => list_entities_options.xsort(),
      'cursor' => list_entities_options.cursor()
    });
    return (ConversationV1Models.EntityCollection) createServiceCall(builder.build(), ConversationV1Models.EntityCollection.class);
  }

  /**
   * Update entity.
   *
   * Update an existing entity with new or modified data.
   *
   * @param update_entity_options the {@link ConversationV1Models.UpdateEntityOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Entity} with the response
   */
  public ConversationV1Models.Entity updateEntity(ConversationV1Models.UpdateEntityOptions update_entity_options) {
    IBMWatsonValidator.notNull(update_entity_options, 'update_entity_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}', new String[]{ update_entity_options.workspaceId(), update_entity_options.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_entity_options.newFuzzyMatch() != null) {
      contentJson.put('fuzzy_match', update_entity_options.newFuzzyMatch());
    }
    if (update_entity_options.newEntity() != null) {
      contentJson.put('entity', update_entity_options.newEntity());
    }
    if (update_entity_options.newMetadata() != null) {
      contentJson.put('metadata', update_entity_options.newMetadata());
    }
    if (update_entity_options.newValues() != null) {
      contentJson.put('values', update_entity_options.newValues());
    }
    if (update_entity_options.newDescription() != null) {
      contentJson.put('description', update_entity_options.newDescription());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Entity) createServiceCall(builder.build(), ConversationV1Models.Entity.class);
  }

  /**
   * Add entity value.
   *
   * Create a new value for an entity.
   *
   * @param create_value_options the {@link ConversationV1Models.CreateValueOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Value} with the response
   */
  public ConversationV1Models.Value createValue(ConversationV1Models.CreateValueOptions create_value_options) {
    IBMWatsonValidator.notNull(create_value_options, 'create_value_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values', new String[]{ create_value_options.workspaceId(), create_value_options.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('value', create_value_options.value());
    if (create_value_options.metadata() != null) {
      contentJson.put('metadata', create_value_options.metadata());
    }
    if (create_value_options.synonyms() != null) {
      contentJson.put('synonyms', create_value_options.synonyms());
    }
    if (create_value_options.patterns() != null) {
      contentJson.put('patterns', create_value_options.patterns());
    }
    if (create_value_options.valueType() != null) {
      contentJson.put('type', create_value_options.valueType());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Value) createServiceCall(builder.build(), ConversationV1Models.Value.class);
  }

  /**
   * Delete entity value.
   *
   * Delete a value for an entity.
   *
   * @param delete_value_options the {@link ConversationV1Models.DeleteValueOptions} containing the options for the call
   * @return the service call
   */
  public void deleteValue(ConversationV1Models.DeleteValueOptions delete_value_options) {
    IBMWatsonValidator.notNull(delete_value_options, 'delete_value_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ delete_value_options.workspaceId(), delete_value_options.entity(), delete_value_options.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get entity value.
   *
   * Get information about an entity value.
   *
   * @param get_value_options the {@link ConversationV1Models.GetValueOptions} containing the options for the call
   * @return the {@link ConversationV1Models.ValueExport} with the response
   */
  public ConversationV1Models.ValueExport getValue(ConversationV1Models.GetValueOptions get_value_options) {
    IBMWatsonValidator.notNull(get_value_options, 'get_value_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ get_value_options.workspaceId(), get_value_options.entity(), get_value_options.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(get_value_options.xexport())
    });
    return (ConversationV1Models.ValueExport) createServiceCall(builder.build(), ConversationV1Models.ValueExport.class);
  }

  /**
   * List entity values.
   *
   * List the values for an entity.
   *
   * @param list_values_options the {@link ConversationV1Models.ListValuesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.ValueCollection} with the response
   */
  public ConversationV1Models.ValueCollection listValues(ConversationV1Models.ListValuesOptions list_values_options) {
    IBMWatsonValidator.notNull(list_values_options, 'list_values_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values', new String[]{ list_values_options.workspaceId(), list_values_options.entity() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'export' => String.valueOf(list_values_options.xexport()),
      'page_limit' => String.valueOf(list_values_options.pageLimit()),
      'include_count' => String.valueOf(list_values_options.includeCount()),
      'sort' => list_values_options.xsort(),
      'cursor' => list_values_options.cursor()
    });
    return (ConversationV1Models.ValueCollection) createServiceCall(builder.build(), ConversationV1Models.ValueCollection.class);
  }

  /**
   * Update entity value.
   *
   * Update the content of a value for an entity.
   *
   * @param update_value_options the {@link ConversationV1Models.UpdateValueOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Value} with the response
   */
  public ConversationV1Models.Value updateValue(ConversationV1Models.UpdateValueOptions update_value_options) {
    IBMWatsonValidator.notNull(update_value_options, 'update_value_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}', new String[]{ update_value_options.workspaceId(), update_value_options.entity(), update_value_options.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_value_options.newSynonyms() != null) {
      contentJson.put('synonyms', update_value_options.newSynonyms());
    }
    if (update_value_options.valueType() != null) {
      contentJson.put('type', update_value_options.valueType());
    }
    if (update_value_options.newMetadata() != null) {
      contentJson.put('metadata', update_value_options.newMetadata());
    }
    if (update_value_options.newPatterns() != null) {
      contentJson.put('patterns', update_value_options.newPatterns());
    }
    if (update_value_options.newValue() != null) {
      contentJson.put('value', update_value_options.newValue());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Value) createServiceCall(builder.build(), ConversationV1Models.Value.class);
  }

  /**
   * Add entity value synonym.
   *
   * Add a new synonym to an entity value.
   *
   * @param create_synonym_options the {@link ConversationV1Models.CreateSynonymOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Synonym} with the response
   */
  public ConversationV1Models.Synonym createSynonym(ConversationV1Models.CreateSynonymOptions create_synonym_options) {
    IBMWatsonValidator.notNull(create_synonym_options, 'create_synonym_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms', new String[]{ create_synonym_options.workspaceId(), create_synonym_options.entity(), create_synonym_options.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('synonym', create_synonym_options.synonym());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Synonym) createServiceCall(builder.build(), ConversationV1Models.Synonym.class);
  }

  /**
   * Delete entity value synonym.
   *
   * Delete a synonym for an entity value.
   *
   * @param delete_synonym_options the {@link ConversationV1Models.DeleteSynonymOptions} containing the options for the call
   * @return the service call
   */
  public void deleteSynonym(ConversationV1Models.DeleteSynonymOptions delete_synonym_options) {
    IBMWatsonValidator.notNull(delete_synonym_options, 'delete_synonym_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ delete_synonym_options.workspaceId(), delete_synonym_options.entity(), delete_synonym_options.value(), delete_synonym_options.synonym() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get entity value synonym.
   *
   * Get information about a synonym for an entity value.
   *
   * @param get_synonym_options the {@link ConversationV1Models.GetSynonymOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Synonym} with the response
   */
  public ConversationV1Models.Synonym getSynonym(ConversationV1Models.GetSynonymOptions get_synonym_options) {
    IBMWatsonValidator.notNull(get_synonym_options, 'get_synonym_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ get_synonym_options.workspaceId(), get_synonym_options.entity(), get_synonym_options.value(), get_synonym_options.synonym() }));
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
   * @param list_synonyms_options the {@link ConversationV1Models.ListSynonymsOptions} containing the options for the call
   * @return the {@link ConversationV1Models.SynonymCollection} with the response
   */
  public ConversationV1Models.SynonymCollection listSynonyms(ConversationV1Models.ListSynonymsOptions list_synonyms_options) {
    IBMWatsonValidator.notNull(list_synonyms_options, 'list_synonyms_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms', new String[]{ list_synonyms_options.workspaceId(), list_synonyms_options.entity(), list_synonyms_options.value() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(list_synonyms_options.pageLimit()),
      'include_count' => String.valueOf(list_synonyms_options.includeCount()),
      'sort' => list_synonyms_options.xsort(),
      'cursor' => list_synonyms_options.cursor()
    });
    return (ConversationV1Models.SynonymCollection) createServiceCall(builder.build(), ConversationV1Models.SynonymCollection.class);
  }

  /**
   * Update entity value synonym.
   *
   * Update the information about a synonym for an entity value.
   *
   * @param update_synonym_options the {@link ConversationV1Models.UpdateSynonymOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Synonym} with the response
   */
  public ConversationV1Models.Synonym updateSynonym(ConversationV1Models.UpdateSynonymOptions update_synonym_options) {
    IBMWatsonValidator.notNull(update_synonym_options, 'update_synonym_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/entities/{1}/values/{2}/synonyms/{3}', new String[]{ update_synonym_options.workspaceId(), update_synonym_options.entity(), update_synonym_options.value(), update_synonym_options.synonym() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_synonym_options.newSynonym() != null) {
      contentJson.put('synonym', update_synonym_options.newSynonym());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Synonym) createServiceCall(builder.build(), ConversationV1Models.Synonym.class);
  }

  /**
   * Create dialog node.
   *
   * Create a dialog node.
   *
   * @param create_dialog_node_options the {@link ConversationV1Models.CreateDialogNodeOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNode} with the response
   */
  public ConversationV1Models.DialogNode createDialogNode(ConversationV1Models.CreateDialogNodeOptions create_dialog_node_options) {
    IBMWatsonValidator.notNull(create_dialog_node_options, 'create_dialog_node_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/dialog_nodes', new String[]{ create_dialog_node_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('dialog_node', create_dialog_node_options.dialogNode());
    if (create_dialog_node_options.description() != null) {
      contentJson.put('description', create_dialog_node_options.description());
    }
    if (create_dialog_node_options.conditions() != null) {
      contentJson.put('conditions', create_dialog_node_options.conditions());
    }
    if (create_dialog_node_options.parent() != null) {
      contentJson.put('parent', create_dialog_node_options.parent());
    }
    if (create_dialog_node_options.previousSibling() != null) {
      contentJson.put('previous_sibling', create_dialog_node_options.previousSibling());
    }
    if (create_dialog_node_options.output() != null) {
      contentJson.put('output', create_dialog_node_options.output());
    }
    if (create_dialog_node_options.context() != null) {
      contentJson.put('context', create_dialog_node_options.context());
    }
    if (create_dialog_node_options.metadata() != null) {
      contentJson.put('metadata', create_dialog_node_options.metadata());
    }
    if (create_dialog_node_options.nextStep() != null) {
      contentJson.put('next_step', create_dialog_node_options.nextStep());
    }
    if (create_dialog_node_options.actions() != null) {
      contentJson.put('actions', create_dialog_node_options.actions());
    }
    if (create_dialog_node_options.title() != null) {
      contentJson.put('title', create_dialog_node_options.title());
    }
    if (create_dialog_node_options.nodeType() != null) {
      contentJson.put('type', create_dialog_node_options.nodeType());
    }
    if (create_dialog_node_options.eventName() != null) {
      contentJson.put('event_name', create_dialog_node_options.eventName());
    }
    if (create_dialog_node_options.variable() != null) {
      contentJson.put('variable', create_dialog_node_options.variable());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.DialogNode) createServiceCall(builder.build(), ConversationV1Models.DialogNode.class);
  }

  /**
   * Delete dialog node.
   *
   * Delete a dialog node from the workspace.
   *
   * @param delete_dialog_node_options the {@link ConversationV1Models.DeleteDialogNodeOptions} containing the options for the call
   * @return the service call
   */
  public void deleteDialogNode(ConversationV1Models.DeleteDialogNodeOptions delete_dialog_node_options) {
    IBMWatsonValidator.notNull(delete_dialog_node_options, 'delete_dialog_node_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ delete_dialog_node_options.workspaceId(), delete_dialog_node_options.dialogNode() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get dialog node.
   *
   * Get information about a dialog node.
   *
   * @param get_dialog_node_options the {@link ConversationV1Models.GetDialogNodeOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNode} with the response
   */
  public ConversationV1Models.DialogNode getDialogNode(ConversationV1Models.GetDialogNodeOptions get_dialog_node_options) {
    IBMWatsonValidator.notNull(get_dialog_node_options, 'get_dialog_node_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ get_dialog_node_options.workspaceId(), get_dialog_node_options.dialogNode() }));
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
   * @param list_dialog_nodes_options the {@link ConversationV1Models.ListDialogNodesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNodeCollection} with the response
   */
  public ConversationV1Models.DialogNodeCollection listDialogNodes(ConversationV1Models.ListDialogNodesOptions list_dialog_nodes_options) {
    IBMWatsonValidator.notNull(list_dialog_nodes_options, 'list_dialog_nodes_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/dialog_nodes', new String[]{ list_dialog_nodes_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(list_dialog_nodes_options.pageLimit()),
      'include_count' => String.valueOf(list_dialog_nodes_options.includeCount()),
      'sort' => list_dialog_nodes_options.xsort(),
      'cursor' => list_dialog_nodes_options.cursor()
    });
    return (ConversationV1Models.DialogNodeCollection) createServiceCall(builder.build(), ConversationV1Models.DialogNodeCollection.class);
  }

  /**
   * Update dialog node.
   *
   * Update information for a dialog node.
   *
   * @param update_dialog_node_options the {@link ConversationV1Models.UpdateDialogNodeOptions} containing the options for the call
   * @return the {@link ConversationV1Models.DialogNode} with the response
   */
  public ConversationV1Models.DialogNode updateDialogNode(ConversationV1Models.UpdateDialogNodeOptions update_dialog_node_options) {
    IBMWatsonValidator.notNull(update_dialog_node_options, 'update_dialog_node_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/dialog_nodes/{1}', new String[]{ update_dialog_node_options.workspaceId(), update_dialog_node_options.dialogNode() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_dialog_node_options.nodeType() != null) {
      contentJson.put('type', update_dialog_node_options.nodeType());
    }
    if (update_dialog_node_options.newActions() != null) {
      contentJson.put('actions', update_dialog_node_options.newActions());
    }
    if (update_dialog_node_options.newConditions() != null) {
      contentJson.put('conditions', update_dialog_node_options.newConditions());
    }
    if (update_dialog_node_options.newContext() != null) {
      contentJson.put('context', update_dialog_node_options.newContext());
    }
    if (update_dialog_node_options.newPreviousSibling() != null) {
      contentJson.put('previous_sibling', update_dialog_node_options.newPreviousSibling());
    }
    if (update_dialog_node_options.newVariable() != null) {
      contentJson.put('variable', update_dialog_node_options.newVariable());
    }
    if (update_dialog_node_options.newMetadata() != null) {
      contentJson.put('metadata', update_dialog_node_options.newMetadata());
    }
    if (update_dialog_node_options.newTitle() != null) {
      contentJson.put('title', update_dialog_node_options.newTitle());
    }
    if (update_dialog_node_options.newDescription() != null) {
      contentJson.put('description', update_dialog_node_options.newDescription());
    }
    if (update_dialog_node_options.newEventName() != null) {
      contentJson.put('event_name', update_dialog_node_options.newEventName());
    }
    if (update_dialog_node_options.newNextStep() != null) {
      contentJson.put('next_step', update_dialog_node_options.newNextStep());
    }
    if (update_dialog_node_options.newOutput() != null) {
      contentJson.put('output', update_dialog_node_options.newOutput());
    }
    if (update_dialog_node_options.newParent() != null) {
      contentJson.put('parent', update_dialog_node_options.newParent());
    }
    contentJson.put('dialog_node', update_dialog_node_options.newDialogNode());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.DialogNode) createServiceCall(builder.build(), ConversationV1Models.DialogNode.class);
  }

  /**
   * List log events in a workspace.
   *
   * List log events in a specific workspace.
   *
   * @param list_logs_options the {@link ConversationV1Models.ListLogsOptions} containing the options for the call
   * @return the {@link ConversationV1Models.LogCollection} with the response
   */
  public ConversationV1Models.LogCollection listLogs(ConversationV1Models.ListLogsOptions list_logs_options) {
    IBMWatsonValidator.notNull(list_logs_options, 'list_logs_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/logs', new String[]{ list_logs_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'sort' => list_logs_options.xsort(),
      'filter' => list_logs_options.filter(),
      'page_limit' => String.valueOf(list_logs_options.pageLimit()),
      'cursor' => list_logs_options.cursor()
    });
    return (ConversationV1Models.LogCollection) createServiceCall(builder.build(), ConversationV1Models.LogCollection.class);
  }

  /**
   * Create counterexample.
   *
   * Add a new counterexample to a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param create_counterexample_options the {@link ConversationV1Models.CreateCounterexampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Counterexample} with the response
   */
  public ConversationV1Models.Counterexample createCounterexample(ConversationV1Models.CreateCounterexampleOptions create_counterexample_options) {
    IBMWatsonValidator.notNull(create_counterexample_options, 'create_counterexample_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/counterexamples', new String[]{ create_counterexample_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', create_counterexample_options.text());
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Counterexample) createServiceCall(builder.build(), ConversationV1Models.Counterexample.class);
  }

  /**
   * Delete counterexample.
   *
   * Delete a counterexample from a workspace. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param delete_counterexample_options the {@link ConversationV1Models.DeleteCounterexampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCounterexample(ConversationV1Models.DeleteCounterexampleOptions delete_counterexample_options) {
    IBMWatsonValidator.notNull(delete_counterexample_options, 'delete_counterexample_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ delete_counterexample_options.workspaceId(), delete_counterexample_options.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get counterexample.
   *
   * Get information about a counterexample. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param get_counterexample_options the {@link ConversationV1Models.GetCounterexampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Counterexample} with the response
   */
  public ConversationV1Models.Counterexample getCounterexample(ConversationV1Models.GetCounterexampleOptions get_counterexample_options) {
    IBMWatsonValidator.notNull(get_counterexample_options, 'get_counterexample_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ get_counterexample_options.workspaceId(), get_counterexample_options.text() }));
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
   * @param list_counterexamples_options the {@link ConversationV1Models.ListCounterexamplesOptions} containing the options for the call
   * @return the {@link ConversationV1Models.CounterexampleCollection} with the response
   */
  public ConversationV1Models.CounterexampleCollection listCounterexamples(ConversationV1Models.ListCounterexamplesOptions list_counterexamples_options) {
    IBMWatsonValidator.notNull(list_counterexamples_options, 'list_counterexamples_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/workspaces/{0}/counterexamples', new String[]{ list_counterexamples_options.workspaceId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'page_limit' => String.valueOf(list_counterexamples_options.pageLimit()),
      'include_count' => String.valueOf(list_counterexamples_options.includeCount()),
      'sort' => list_counterexamples_options.xsort(),
      'cursor' => list_counterexamples_options.cursor()
    });
    return (ConversationV1Models.CounterexampleCollection) createServiceCall(builder.build(), ConversationV1Models.CounterexampleCollection.class);
  }

  /**
   * Update counterexample.
   *
   * Update the text of a counterexample. Counterexamples are examples that have been marked as irrelevant input.
   *
   * @param update_counterexample_options the {@link ConversationV1Models.UpdateCounterexampleOptions} containing the options for the call
   * @return the {@link ConversationV1Models.Counterexample} with the response
   */
  public ConversationV1Models.Counterexample updateCounterexample(ConversationV1Models.UpdateCounterexampleOptions update_counterexample_options) {
    IBMWatsonValidator.notNull(update_counterexample_options, 'update_counterexample_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/workspaces/{0}/counterexamples/{1}', new String[]{ update_counterexample_options.workspaceId(), update_counterexample_options.text() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_counterexample_options.newText() != null) {
      contentJson.put('text', update_counterexample_options.newText());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (ConversationV1Models.Counterexample) createServiceCall(builder.build(), ConversationV1Models.Counterexample.class);
  }

}
