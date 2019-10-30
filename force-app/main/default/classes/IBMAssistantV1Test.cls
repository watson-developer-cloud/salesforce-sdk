@isTest
private class IBMAssistantV1Test {
  private static IBMAssistantV1 service;

  static {
    service = new IBMAssistantV1('2019-02-28', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testCaptureGroupModel() {
    Test.startTest();
    String xGroup = 'x_group';
    List<Long> location = new List<Long> { 10L } ;

    IBMAssistantV1Models.CaptureGroup testRequestModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup(xGroup)
      .location(location)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xGroup, testRequestModel.getXGroup());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testContextModel() {
    Test.startTest();
    String conversationId = 'conversation_id';
    IBMAssistantV1Models.SystemResponse xSystem = new IBMAssistantV1Models.SystemResponseBuilder()
      .build();
    IBMAssistantV1Models.MessageContextMetadata metadata = new IBMAssistantV1Models.MessageContextMetadataBuilder()
      .build();

    IBMAssistantV1Models.Context testRequestModel = new IBMAssistantV1Models.ContextBuilder()
      .conversationId(conversationId)
      .xSystem(xSystem)
      .metadata(metadata)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(conversationId, testRequestModel.getConversationId());
    System.assertEquals(xSystem, testRequestModel.getXSystem());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    Test.stopTest();
  }
  static testMethod void testCounterexampleModel() {
    Test.startTest();
    String text = 'text';

    IBMAssistantV1Models.Counterexample testRequestModel = new IBMAssistantV1Models.CounterexampleBuilder()
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testCounterexampleCollectionModel() {
    Test.startTest();
    String text = 'text';
    IBMAssistantV1Models.Counterexample counterexamplesItem = new IBMAssistantV1Models.CounterexampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Counterexample> counterexamples = new List<IBMAssistantV1Models.Counterexample> { counterexamplesItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.CounterexampleCollection testRequestModel = new IBMAssistantV1Models.CounterexampleCollection();
    testRequestModel.setCounterexamples(counterexamples);
    testRequestModel.setPagination(pagination);

    System.assertEquals(counterexamples, testRequestModel.getCounterexamples());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testCreateCounterexampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String text = 'text';

    IBMAssistantV1Models.CreateCounterexampleOptions testRequestModel = new IBMAssistantV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(text, testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testCreateDialogNodeOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';
    String description = 'description';
    String conditions = 'conditions';
    String parent = 'parent';
    String previousSibling = 'previous_sibling';
    IBMAssistantV1Models.DialogNodeOutput output = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .build();
    IBMWatsonMapModel context = new IBMWatsonMapModel();
    context.put('context_key', 'context');
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String behavior = 'behavior';
    IBMAssistantV1Models.DialogNodeNextStep nextStep = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior(behavior)
      .build();
    String title = 'title';
    String xType = 'x_type';
    String eventName = 'event_name';
    String variable = 'variable';
    String name = 'name';
    String resultVariable = 'result_variable';
    IBMAssistantV1Models.DialogNodeAction actionsItem = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name(name)
      .resultVariable(resultVariable)
      .build();
    List<IBMAssistantV1Models.DialogNodeAction> actions = new List<IBMAssistantV1Models.DialogNodeAction> { actionsItem } ;
    String digressIn = 'digress_in';
    String digressOut = 'digress_out';
    String digressOutSlots = 'digress_out_slots';
    String userLabel = 'user_label';

    IBMAssistantV1Models.CreateDialogNodeOptions testRequestModel = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .description(description)
      .conditions(conditions)
      .parent(parent)
      .previousSibling(previousSibling)
      .output(output)
      .context(context)
      .metadata(metadata)
      .nextStep(nextStep)
      .title(title)
      .xType(xType)
      .eventName(eventName)
      .variable(variable)
      .actions(actions)
      .digressIn(digressIn)
      .digressOut(digressOut)
      .digressOutSlots(digressOutSlots)
      .userLabel(userLabel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(dialogNode, testRequestModel.dialogNode());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(conditions, testRequestModel.conditions());
    System.assertEquals(parent, testRequestModel.parent());
    System.assertEquals(previousSibling, testRequestModel.previousSibling());
    System.assertEquals(output, testRequestModel.output());
    System.assertEquals(context, testRequestModel.context());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(nextStep, testRequestModel.nextStep());
    System.assertEquals(title, testRequestModel.title());
    System.assertEquals(xType, testRequestModel.xType());
    System.assertEquals(eventName, testRequestModel.eventName());
    System.assertEquals(variable, testRequestModel.variable());
    System.assertEquals(actions, testRequestModel.actions());
    System.assertEquals(digressIn, testRequestModel.digressIn());
    System.assertEquals(digressOut, testRequestModel.digressOut());
    System.assertEquals(digressOutSlots, testRequestModel.digressOutSlots());
    System.assertEquals(userLabel, testRequestModel.userLabel());
    Test.stopTest();
  }
  static testMethod void testCreateEntityModel() {
    Test.startTest();
    String entity = 'entity';
    String description = 'description';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    Boolean fuzzyMatch = true;
    String value = 'value';
    IBMAssistantV1Models.CreateValue valuesItem = new IBMAssistantV1Models.CreateValueBuilder()
      .value(value)
      .build();
    List<IBMAssistantV1Models.CreateValue> values = new List<IBMAssistantV1Models.CreateValue> { valuesItem } ;

    IBMAssistantV1Models.CreateEntity testRequestModel = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity(entity)
      .description(description)
      .metadata(metadata)
      .fuzzyMatch(fuzzyMatch)
      .values(values)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(fuzzyMatch, testRequestModel.fuzzyMatch());
    System.assertEquals(values, testRequestModel.values());
    Test.stopTest();
  }
  static testMethod void testCreateEntityOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String description = 'description';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    Boolean fuzzyMatch = true;
    String value = 'value';
    IBMAssistantV1Models.CreateValue valuesItem = new IBMAssistantV1Models.CreateValueBuilder()
      .value(value)
      .build();
    List<IBMAssistantV1Models.CreateValue> values = new List<IBMAssistantV1Models.CreateValue> { valuesItem } ;

    IBMAssistantV1Models.CreateEntityOptions testRequestModel = new IBMAssistantV1Models.CreateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .description(description)
      .metadata(metadata)
      .fuzzyMatch(fuzzyMatch)
      .values(values)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(fuzzyMatch, testRequestModel.fuzzyMatch());
    System.assertEquals(values, testRequestModel.values());
    Test.stopTest();
  }
  static testMethod void testCreateExampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    IBMAssistantV1Models.Mention mentionsItem = new IBMAssistantV1Models.MentionBuilder()
      .entity(entity)
      .location(location)
      .build();
    List<IBMAssistantV1Models.Mention> mentions = new List<IBMAssistantV1Models.Mention> { mentionsItem } ;

    IBMAssistantV1Models.CreateExampleOptions testRequestModel = new IBMAssistantV1Models.CreateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .mentions(mentions)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(mentions, testRequestModel.mentions());
    Test.stopTest();
  }
  static testMethod void testCreateIntentModel() {
    Test.startTest();
    String intent = 'intent';
    String description = 'description';
    String text = 'text';
    IBMAssistantV1Models.Example examplesItem = new IBMAssistantV1Models.ExampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Example> examples = new List<IBMAssistantV1Models.Example> { examplesItem } ;

    IBMAssistantV1Models.CreateIntent testRequestModel = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent(intent)
      .description(description)
      .examples(examples)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(examples, testRequestModel.examples());
    Test.stopTest();
  }
  static testMethod void testCreateIntentOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String description = 'description';
    String text = 'text';
    IBMAssistantV1Models.Example examplesItem = new IBMAssistantV1Models.ExampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Example> examples = new List<IBMAssistantV1Models.Example> { examplesItem } ;

    IBMAssistantV1Models.CreateIntentOptions testRequestModel = new IBMAssistantV1Models.CreateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .description(description)
      .examples(examples)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(examples, testRequestModel.examples());
    Test.stopTest();
  }
  static testMethod void testCreateSynonymOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';

    IBMAssistantV1Models.CreateSynonymOptions testRequestModel = new IBMAssistantV1Models.CreateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(synonym, testRequestModel.synonym());
    Test.stopTest();
  }
  static testMethod void testCreateValueModel() {
    Test.startTest();
    String value = 'value';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String xType = 'x_type';
    List<String> synonyms = new List<String> { 'synonyms' } ;
    List<String> patterns = new List<String> { 'patterns' } ;

    IBMAssistantV1Models.CreateValue testRequestModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value(value)
      .metadata(metadata)
      .xType(xType)
      .synonyms(synonyms)
      .patterns(patterns)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(xType, testRequestModel.xType());
    System.assertEquals(synonyms, testRequestModel.synonyms());
    System.assertEquals(patterns, testRequestModel.patterns());
    Test.stopTest();
  }
  static testMethod void testCreateValueOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String xType = 'x_type';
    List<String> synonyms = new List<String> { 'synonyms' } ;
    List<String> patterns = new List<String> { 'patterns' } ;

    IBMAssistantV1Models.CreateValueOptions testRequestModel = new IBMAssistantV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .metadata(metadata)
      .xType(xType)
      .synonyms(synonyms)
      .patterns(patterns)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(xType, testRequestModel.xType());
    System.assertEquals(synonyms, testRequestModel.synonyms());
    System.assertEquals(patterns, testRequestModel.patterns());
    Test.stopTest();
  }
  static testMethod void testCreateWorkspaceOptionsModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';
    String language = 'language';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    Boolean learningOptOut = true;
    IBMAssistantV1Models.WorkspaceSystemSettings systemSettings = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .build();
    String intent = 'intent';
    IBMAssistantV1Models.CreateIntent intentsItem = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent(intent)
      .build();
    List<IBMAssistantV1Models.CreateIntent> intents = new List<IBMAssistantV1Models.CreateIntent> { intentsItem } ;
    String entity = 'entity';
    IBMAssistantV1Models.CreateEntity entitiesItem = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity(entity)
      .build();
    List<IBMAssistantV1Models.CreateEntity> entities = new List<IBMAssistantV1Models.CreateEntity> { entitiesItem } ;
    String dialogNode = 'dialog_node';
    IBMAssistantV1Models.DialogNode dialogNodesItem = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode(dialogNode)
      .build();
    List<IBMAssistantV1Models.DialogNode> dialogNodes = new List<IBMAssistantV1Models.DialogNode> { dialogNodesItem } ;
    String text = 'text';
    IBMAssistantV1Models.Counterexample counterexamplesItem = new IBMAssistantV1Models.CounterexampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Counterexample> counterexamples = new List<IBMAssistantV1Models.Counterexample> { counterexamplesItem } ;

    IBMAssistantV1Models.CreateWorkspaceOptions testRequestModel = new IBMAssistantV1Models.CreateWorkspaceOptionsBuilder()
      .name(name)
      .description(description)
      .language(language)
      .metadata(metadata)
      .learningOptOut(learningOptOut)
      .systemSettings(systemSettings)
      .intents(intents)
      .entities(entities)
      .dialogNodes(dialogNodes)
      .counterexamples(counterexamples)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(language, testRequestModel.language());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(learningOptOut, testRequestModel.learningOptOut());
    System.assertEquals(systemSettings, testRequestModel.systemSettings());
    System.assertEquals(intents, testRequestModel.intents());
    System.assertEquals(entities, testRequestModel.entities());
    System.assertEquals(dialogNodes, testRequestModel.dialogNodes());
    System.assertEquals(counterexamples, testRequestModel.counterexamples());
    Test.stopTest();
  }
  static testMethod void testDeleteCounterexampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String text = 'text';

    IBMAssistantV1Models.DeleteCounterexampleOptions testRequestModel = new IBMAssistantV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(text, testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testDeleteDialogNodeOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';

    IBMAssistantV1Models.DeleteDialogNodeOptions testRequestModel = new IBMAssistantV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(dialogNode, testRequestModel.dialogNode());
    Test.stopTest();
  }
  static testMethod void testDeleteEntityOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';

    IBMAssistantV1Models.DeleteEntityOptions testRequestModel = new IBMAssistantV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    Test.stopTest();
  }
  static testMethod void testDeleteExampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';

    IBMAssistantV1Models.DeleteExampleOptions testRequestModel = new IBMAssistantV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(text, testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testDeleteIntentOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';

    IBMAssistantV1Models.DeleteIntentOptions testRequestModel = new IBMAssistantV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    Test.stopTest();
  }
  static testMethod void testDeleteSynonymOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';

    IBMAssistantV1Models.DeleteSynonymOptions testRequestModel = new IBMAssistantV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(synonym, testRequestModel.synonym());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();
    String customerId = 'customer_id';

    IBMAssistantV1Models.DeleteUserDataOptions testRequestModel = new IBMAssistantV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customerId, testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDeleteValueOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.DeleteValueOptions testRequestModel = new IBMAssistantV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    Test.stopTest();
  }
  static testMethod void testDeleteWorkspaceOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.DeleteWorkspaceOptions testRequestModel = new IBMAssistantV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    Test.stopTest();
  }
  static testMethod void testDialogNodeModel() {
    Test.startTest();
    String dialogNode = 'dialog_node';
    String description = 'description';
    String conditions = 'conditions';
    String parent = 'parent';
    String previousSibling = 'previous_sibling';
    IBMAssistantV1Models.DialogNodeOutput output = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .build();
    IBMWatsonMapModel context = new IBMWatsonMapModel();
    context.put('context_key', 'context');
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String behavior = 'behavior';
    IBMAssistantV1Models.DialogNodeNextStep nextStep = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior(behavior)
      .build();
    String title = 'title';
    String xType = 'x_type';
    String eventName = 'event_name';
    String variable = 'variable';
    String name = 'name';
    String resultVariable = 'result_variable';
    IBMAssistantV1Models.DialogNodeAction actionsItem = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name(name)
      .resultVariable(resultVariable)
      .build();
    List<IBMAssistantV1Models.DialogNodeAction> actions = new List<IBMAssistantV1Models.DialogNodeAction> { actionsItem } ;
    String digressIn = 'digress_in';
    String digressOut = 'digress_out';
    String digressOutSlots = 'digress_out_slots';
    String userLabel = 'user_label';

    IBMAssistantV1Models.DialogNode testRequestModel = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode(dialogNode)
      .description(description)
      .conditions(conditions)
      .parent(parent)
      .previousSibling(previousSibling)
      .output(output)
      .context(context)
      .metadata(metadata)
      .nextStep(nextStep)
      .title(title)
      .xType(xType)
      .eventName(eventName)
      .variable(variable)
      .actions(actions)
      .digressIn(digressIn)
      .digressOut(digressOut)
      .digressOutSlots(digressOutSlots)
      .userLabel(userLabel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(dialogNode, testRequestModel.getDialogNode());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(conditions, testRequestModel.getConditions());
    System.assertEquals(parent, testRequestModel.getParent());
    System.assertEquals(previousSibling, testRequestModel.getPreviousSibling());
    System.assertEquals(output, testRequestModel.getOutput());
    System.assertEquals(context, testRequestModel.getContext());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(nextStep, testRequestModel.getNextStep());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(eventName, testRequestModel.getEventName());
    System.assertEquals(variable, testRequestModel.getVariable());
    System.assertEquals(actions, testRequestModel.getActions());
    System.assertEquals(digressIn, testRequestModel.getDigressIn());
    System.assertEquals(digressOut, testRequestModel.getDigressOut());
    System.assertEquals(digressOutSlots, testRequestModel.getDigressOutSlots());
    System.assertEquals(userLabel, testRequestModel.getUserLabel());
    Test.stopTest();
  }
  static testMethod void testDialogNodeActionModel() {
    Test.startTest();
    String name = 'name';
    String xType = 'x_type';
    IBMWatsonMapModel parameters = new IBMWatsonMapModel();
    parameters.put('parameters_key', 'parameters');
    String resultVariable = 'result_variable';
    String credentials = 'credentials';

    IBMAssistantV1Models.DialogNodeAction testRequestModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name(name)
      .xType(xType)
      .parameters(parameters)
      .resultVariable(resultVariable)
      .credentials(credentials)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(parameters, testRequestModel.getParameters());
    System.assertEquals(resultVariable, testRequestModel.getResultVariable());
    System.assertEquals(credentials, testRequestModel.getCredentials());
    Test.stopTest();
  }
  static testMethod void testDialogNodeCollectionModel() {
    Test.startTest();
    String dialogNode = 'dialog_node';
    IBMAssistantV1Models.DialogNode dialogNodesItem = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode(dialogNode)
      .build();
    List<IBMAssistantV1Models.DialogNode> dialogNodes = new List<IBMAssistantV1Models.DialogNode> { dialogNodesItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.DialogNodeCollection testRequestModel = new IBMAssistantV1Models.DialogNodeCollection();
    testRequestModel.setDialogNodes(dialogNodes);
    testRequestModel.setPagination(pagination);

    System.assertEquals(dialogNodes, testRequestModel.getDialogNodes());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testDialogNodeNextStepModel() {
    Test.startTest();
    String behavior = 'behavior';
    String dialogNode = 'dialog_node';
    String selector = 'selector';

    IBMAssistantV1Models.DialogNodeNextStep testRequestModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior(behavior)
      .dialogNode(dialogNode)
      .selector(selector)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(behavior, testRequestModel.getBehavior());
    System.assertEquals(dialogNode, testRequestModel.getDialogNode());
    System.assertEquals(selector, testRequestModel.getSelector());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputModel() {
    Test.startTest();
    String responseType = 'response_type';
    IBMAssistantV1Models.DialogNodeOutputGeneric genericItem = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType(responseType)
      .build();
    List<IBMAssistantV1Models.DialogNodeOutputGeneric> generic = new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { genericItem } ;
    IBMAssistantV1Models.DialogNodeOutputModifiers modifiers = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .build();

    IBMAssistantV1Models.DialogNodeOutput testRequestModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(generic)
      .modifiers(modifiers)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(generic, testRequestModel.getGeneric());
    System.assertEquals(modifiers, testRequestModel.getModifiers());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputGenericModel() {
    Test.startTest();
    String responseType = 'response_type';
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement valuesItem = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .build();
    List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> values = new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { valuesItem } ;
    String selectionPolicy = 'selection_policy';
    String delimiter = 'delimiter';
    Long xTime = 10L;
    Boolean typing = true;
    String source = 'source';
    String title = 'title';
    String description = 'description';
    String preference = 'preference';
    String label = 'label';
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue value = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement optionsItem = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label(label)
      .value(value)
      .build();
    List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> options = new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { optionsItem } ;
    String messageToHumanAgent = 'message_to_human_agent';
    String query = 'query';
    String queryType = 'query_type';
    String filter = 'filter';
    String discoveryVersion = 'discovery_version';

    IBMAssistantV1Models.DialogNodeOutputGeneric testRequestModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType(responseType)
      .values(values)
      .selectionPolicy(selectionPolicy)
      .delimiter(delimiter)
      .xTime(xTime)
      .typing(typing)
      .source(source)
      .title(title)
      .description(description)
      .preference(preference)
      .options(options)
      .messageToHumanAgent(messageToHumanAgent)
      .query(query)
      .queryType(queryType)
      .filter(filter)
      .discoveryVersion(discoveryVersion)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(responseType, testRequestModel.getResponseType());
    System.assertEquals(values, testRequestModel.getValues());
    System.assertEquals(selectionPolicy, testRequestModel.getSelectionPolicy());
    System.assertEquals(delimiter, testRequestModel.getDelimiter());
    System.assertEquals(xTime, testRequestModel.getXTime());
    System.assertEquals(typing, testRequestModel.getTyping());
    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(preference, testRequestModel.getPreference());
    System.assertEquals(options, testRequestModel.getOptions());
    System.assertEquals(messageToHumanAgent, testRequestModel.getMessageToHumanAgent());
    System.assertEquals(query, testRequestModel.getQuery());
    System.assertEquals(queryType, testRequestModel.getQueryType());
    System.assertEquals(filter, testRequestModel.getFilter());
    System.assertEquals(discoveryVersion, testRequestModel.getDiscoveryVersion());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputModifiersModel() {
    Test.startTest();
    Boolean overwrite = true;

    IBMAssistantV1Models.DialogNodeOutputModifiers testRequestModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(overwrite)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(overwrite, testRequestModel.getOverwrite());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputOptionsElementModel() {
    Test.startTest();
    String label = 'label';
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue value = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .build();

    IBMAssistantV1Models.DialogNodeOutputOptionsElement testRequestModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label(label)
      .value(value)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(value, testRequestModel.getValue());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputOptionsElementValueModel() {
    Test.startTest();
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV1Models.RuntimeIntent intentsItem = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV1Models.RuntimeIntent> intents = new List<IBMAssistantV1Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV1Models.RuntimeEntity entitiesItem = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV1Models.RuntimeEntity> entities = new List<IBMAssistantV1Models.RuntimeEntity> { entitiesItem } ;

    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue testRequestModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(input)
      .intents(intents)
      .entities(entities)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(input, testRequestModel.getInput());
    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(entities, testRequestModel.getEntities());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputTextValuesElementModel() {
    Test.startTest();
    String text = 'text';

    IBMAssistantV1Models.DialogNodeOutputTextValuesElement testRequestModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testDialogNodeVisitedDetailsModel() {
    Test.startTest();
    String dialogNode = 'dialog_node';
    String title = 'title';
    String conditions = 'conditions';

    IBMAssistantV1Models.DialogNodeVisitedDetails testRequestModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode(dialogNode)
      .title(title)
      .conditions(conditions)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(dialogNode, testRequestModel.getDialogNode());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(conditions, testRequestModel.getConditions());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionModel() {
    Test.startTest();
    String label = 'label';
    IBMAssistantV1Models.DialogSuggestionValue value = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .build();
    List<String> text = new List<String> { 'text' } ;
    IBMAssistantV1Models.DialogSuggestionOutput output = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .text(text)
      .build();
    String dialogNode = 'dialog_node';

    IBMAssistantV1Models.DialogSuggestion testRequestModel = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label(label)
      .value(value)
      .output(output)
      .dialogNode(dialogNode)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(value, testRequestModel.getValue());
    System.assertEquals(output, testRequestModel.getOutput());
    System.assertEquals(dialogNode, testRequestModel.getDialogNode());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionOutputModel() {
    Test.startTest();
    List<String> nodesVisited = new List<String> { 'nodes_visited' } ;
    IBMAssistantV1Models.DialogNodeVisitedDetails nodesVisitedDetailsItem = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .build();
    List<IBMAssistantV1Models.DialogNodeVisitedDetails> nodesVisitedDetails = new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { nodesVisitedDetailsItem } ;
    List<String> text = new List<String> { 'text' } ;
    String responseType = 'response_type';
    IBMAssistantV1Models.DialogSuggestionResponseGeneric genericItem = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType(responseType)
      .build();
    List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> generic = new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { genericItem } ;

    IBMAssistantV1Models.DialogSuggestionOutput testRequestModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(nodesVisited)
      .nodesVisitedDetails(nodesVisitedDetails)
      .text(text)
      .generic(generic)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(nodesVisited, testRequestModel.getNodesVisited());
    System.assertEquals(nodesVisitedDetails, testRequestModel.getNodesVisitedDetails());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(generic, testRequestModel.getGeneric());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionResponseGenericModel() {
    Test.startTest();
    String responseType = 'response_type';
    String text = 'text';
    Long xTime = 10L;
    Boolean typing = true;
    String source = 'source';
    String title = 'title';
    String description = 'description';
    String preference = 'preference';
    String label = 'label';
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue value = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement optionsItem = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label(label)
      .value(value)
      .build();
    List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> options = new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { optionsItem } ;
    String messageToHumanAgent = 'message_to_human_agent';
    String dialogNode = 'dialog_node';

    IBMAssistantV1Models.DialogSuggestionResponseGeneric testRequestModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType(responseType)
      .text(text)
      .xTime(xTime)
      .typing(typing)
      .source(source)
      .title(title)
      .description(description)
      .preference(preference)
      .options(options)
      .messageToHumanAgent(messageToHumanAgent)
      .dialogNode(dialogNode)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(responseType, testRequestModel.getResponseType());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(xTime, testRequestModel.getXTime());
    System.assertEquals(typing, testRequestModel.getTyping());
    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(preference, testRequestModel.getPreference());
    System.assertEquals(options, testRequestModel.getOptions());
    System.assertEquals(messageToHumanAgent, testRequestModel.getMessageToHumanAgent());
    System.assertEquals(dialogNode, testRequestModel.getDialogNode());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionValueModel() {
    Test.startTest();
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV1Models.RuntimeIntent intentsItem = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV1Models.RuntimeIntent> intents = new List<IBMAssistantV1Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV1Models.RuntimeEntity entitiesItem = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV1Models.RuntimeEntity> entities = new List<IBMAssistantV1Models.RuntimeEntity> { entitiesItem } ;

    IBMAssistantV1Models.DialogSuggestionValue testRequestModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(input)
      .intents(intents)
      .entities(entities)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(input, testRequestModel.getInput());
    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(entities, testRequestModel.getEntities());
    Test.stopTest();
  }
  static testMethod void testEntityModel() {
    Test.startTest();
    String entity = 'entity';
    String description = 'description';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    Boolean fuzzyMatch = true;
    String value = 'value';
    String xType = 'x_type';
    IBMAssistantV1Models.Value valuesItem = new IBMAssistantV1Models.ValueBuilder()
      .value(value)
      .xType(xType)
      .build();
    List<IBMAssistantV1Models.Value> values = new List<IBMAssistantV1Models.Value> { valuesItem } ;

    IBMAssistantV1Models.Entity testRequestModel = new IBMAssistantV1Models.Entity();
    testRequestModel.setEntity(entity);
    testRequestModel.setDescription(description);
    testRequestModel.setMetadata(metadata);
    testRequestModel.setFuzzyMatch(fuzzyMatch);
    testRequestModel.setValues(values);

    System.assertEquals(entity, testRequestModel.getEntity());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(fuzzyMatch, testRequestModel.getFuzzyMatch());
    System.assertEquals(values, testRequestModel.getValues());
    Test.stopTest();
  }
  static testMethod void testEntityCollectionModel() {
    Test.startTest();
    String entity = 'entity';
    IBMAssistantV1Models.Entity entitiesItem = new IBMAssistantV1Models.Entity();
    List<IBMAssistantV1Models.Entity> entities = new List<IBMAssistantV1Models.Entity> { entitiesItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.EntityCollection testRequestModel = new IBMAssistantV1Models.EntityCollection();
    testRequestModel.setEntities(entities);
    testRequestModel.setPagination(pagination);

    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testEntityMentionModel() {
    Test.startTest();
    String text = 'text';
    String intent = 'intent';
    List<Long> location = new List<Long> { 10L } ;

    IBMAssistantV1Models.EntityMention testRequestModel = new IBMAssistantV1Models.EntityMention();
    testRequestModel.setText(text);
    testRequestModel.setIntent(intent);
    testRequestModel.setLocation(location);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(intent, testRequestModel.getIntent());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testEntityMentionCollectionModel() {
    Test.startTest();
    String text = 'text';
    String intent = 'intent';
    List<Long> location = new List<Long> { 10L } ;
    IBMAssistantV1Models.EntityMention examplesItem = new IBMAssistantV1Models.EntityMention();
    List<IBMAssistantV1Models.EntityMention> examples = new List<IBMAssistantV1Models.EntityMention> { examplesItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.EntityMentionCollection testRequestModel = new IBMAssistantV1Models.EntityMentionCollection();
    testRequestModel.setExamples(examples);
    testRequestModel.setPagination(pagination);

    System.assertEquals(examples, testRequestModel.getExamples());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testExampleModel() {
    Test.startTest();
    String text = 'text';
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    IBMAssistantV1Models.Mention mentionsItem = new IBMAssistantV1Models.MentionBuilder()
      .entity(entity)
      .location(location)
      .build();
    List<IBMAssistantV1Models.Mention> mentions = new List<IBMAssistantV1Models.Mention> { mentionsItem } ;

    IBMAssistantV1Models.Example testRequestModel = new IBMAssistantV1Models.ExampleBuilder()
      .text(text)
      .mentions(mentions)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(mentions, testRequestModel.getMentions());
    Test.stopTest();
  }
  static testMethod void testExampleCollectionModel() {
    Test.startTest();
    String text = 'text';
    IBMAssistantV1Models.Example examplesItem = new IBMAssistantV1Models.ExampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Example> examples = new List<IBMAssistantV1Models.Example> { examplesItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.ExampleCollection testRequestModel = new IBMAssistantV1Models.ExampleCollection();
    testRequestModel.setExamples(examples);
    testRequestModel.setPagination(pagination);

    System.assertEquals(examples, testRequestModel.getExamples());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testGetCounterexampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String text = 'text';
    Boolean includeAudit = true;

    IBMAssistantV1Models.GetCounterexampleOptions testRequestModel = new IBMAssistantV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetDialogNodeOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';
    Boolean includeAudit = true;

    IBMAssistantV1Models.GetDialogNodeOptions testRequestModel = new IBMAssistantV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(dialogNode, testRequestModel.dialogNode());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetEntityOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    Boolean xExport = true;
    Boolean includeAudit = true;

    IBMAssistantV1Models.GetEntityOptions testRequestModel = new IBMAssistantV1Models.GetEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .xExport(xExport)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetExampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';
    Boolean includeAudit = true;

    IBMAssistantV1Models.GetExampleOptions testRequestModel = new IBMAssistantV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetIntentOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    Boolean xExport = true;
    Boolean includeAudit = true;

    IBMAssistantV1Models.GetIntentOptions testRequestModel = new IBMAssistantV1Models.GetIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .xExport(xExport)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetSynonymOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';
    Boolean includeAudit = true;

    IBMAssistantV1Models.GetSynonymOptions testRequestModel = new IBMAssistantV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(synonym, testRequestModel.synonym());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetValueOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    Boolean xExport = true;
    Boolean includeAudit = true;

    IBMAssistantV1Models.GetValueOptions testRequestModel = new IBMAssistantV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .xExport(xExport)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetWorkspaceOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    Boolean xExport = true;
    Boolean includeAudit = true;
    String xSort = 'x_sort';

    IBMAssistantV1Models.GetWorkspaceOptions testRequestModel = new IBMAssistantV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .xExport(xExport)
      .includeAudit(includeAudit)
      .xSort(xSort)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    System.assertEquals(xSort, testRequestModel.xSort());
    Test.stopTest();
  }
  static testMethod void testIntentModel() {
    Test.startTest();
    String intent = 'intent';
    String description = 'description';
    String text = 'text';
    IBMAssistantV1Models.Example examplesItem = new IBMAssistantV1Models.ExampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Example> examples = new List<IBMAssistantV1Models.Example> { examplesItem } ;

    IBMAssistantV1Models.Intent testRequestModel = new IBMAssistantV1Models.Intent();
    testRequestModel.setIntent(intent);
    testRequestModel.setDescription(description);
    testRequestModel.setExamples(examples);

    System.assertEquals(intent, testRequestModel.getIntent());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(examples, testRequestModel.getExamples());
    Test.stopTest();
  }
  static testMethod void testIntentCollectionModel() {
    Test.startTest();
    String intent = 'intent';
    IBMAssistantV1Models.Intent intentsItem = new IBMAssistantV1Models.Intent();
    List<IBMAssistantV1Models.Intent> intents = new List<IBMAssistantV1Models.Intent> { intentsItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.IntentCollection testRequestModel = new IBMAssistantV1Models.IntentCollection();
    testRequestModel.setIntents(intents);
    testRequestModel.setPagination(pagination);

    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testListAllLogsOptionsModel() {
    Test.startTest();
    String filter = 'filter';
    String xSort = 'x_sort';
    Long pageLimit = 10L;
    String cursor = 'cursor';

    IBMAssistantV1Models.ListAllLogsOptions testRequestModel = new IBMAssistantV1Models.ListAllLogsOptionsBuilder()
      .filter(filter)
      .xSort(xSort)
      .pageLimit(pageLimit)
      .cursor(cursor)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(cursor, testRequestModel.cursor());
    Test.stopTest();
  }
  static testMethod void testListCounterexamplesOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListCounterexamplesOptions testRequestModel = new IBMAssistantV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListDialogNodesOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListDialogNodesOptions testRequestModel = new IBMAssistantV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListEntitiesOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    Boolean xExport = true;
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListEntitiesOptions testRequestModel = new IBMAssistantV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .xExport(xExport)
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListExamplesOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListExamplesOptions testRequestModel = new IBMAssistantV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListIntentsOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    Boolean xExport = true;
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListIntentsOptions testRequestModel = new IBMAssistantV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .xExport(xExport)
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListLogsOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String xSort = 'x_sort';
    String filter = 'filter';
    Long pageLimit = 10L;
    String cursor = 'cursor';

    IBMAssistantV1Models.ListLogsOptions testRequestModel = new IBMAssistantV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .xSort(xSort)
      .filter(filter)
      .pageLimit(pageLimit)
      .cursor(cursor)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(filter, testRequestModel.filter());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(cursor, testRequestModel.cursor());
    Test.stopTest();
  }
  static testMethod void testListMentionsOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    Boolean xExport = true;
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListMentionsOptions testRequestModel = new IBMAssistantV1Models.ListMentionsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .xExport(xExport)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListSynonymsOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListSynonymsOptions testRequestModel = new IBMAssistantV1Models.ListSynonymsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListValuesOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    Boolean xExport = true;
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListValuesOptions testRequestModel = new IBMAssistantV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .xExport(xExport)
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(xExport, testRequestModel.xExport());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListWorkspacesOptionsModel() {
    Test.startTest();
    Long pageLimit = 10L;
    String xSort = 'x_sort';
    String cursor = 'cursor';
    Boolean includeAudit = true;

    IBMAssistantV1Models.ListWorkspacesOptions testRequestModel = new IBMAssistantV1Models.ListWorkspacesOptionsBuilder()
      .pageLimit(pageLimit)
      .xSort(xSort)
      .cursor(cursor)
      .includeAudit(includeAudit)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(includeAudit, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testLogModel() {
    Test.startTest();
    IBMAssistantV1Models.MessageRequest request = new IBMAssistantV1Models.MessageRequestBuilder()
      .build();
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV1Models.RuntimeIntent intentsItem = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV1Models.RuntimeIntent> intents = new List<IBMAssistantV1Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV1Models.RuntimeEntity entitiesItem = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV1Models.RuntimeEntity> entities = new List<IBMAssistantV1Models.RuntimeEntity> { entitiesItem } ;
    IBMAssistantV1Models.Context context = new IBMAssistantV1Models.ContextBuilder()
      .build();
    String level = 'level';
    String msg = 'msg';
    IBMAssistantV1Models.LogMessage logMessagesItem = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    List<IBMAssistantV1Models.LogMessage> logMessages = new List<IBMAssistantV1Models.LogMessage> { logMessagesItem } ;
    List<String> text = new List<String> { 'text' } ;
    IBMAssistantV1Models.OutputData output = new IBMAssistantV1Models.OutputDataBuilder()
      .logMessages(logMessages)
      .text(text)
      .build();
    IBMAssistantV1Models.MessageResponse response = new IBMAssistantV1Models.MessageResponse();
    String logId = 'log_id';
    String requestTimestamp = 'request_timestamp';
    String responseTimestamp = 'response_timestamp';
    String workspaceId = 'workspace_id';
    String language = 'language';

    IBMAssistantV1Models.Log testRequestModel = new IBMAssistantV1Models.Log();
    testRequestModel.setRequest(request);
    testRequestModel.setResponse(response);
    testRequestModel.setLogId(logId);
    testRequestModel.setRequestTimestamp(requestTimestamp);
    testRequestModel.setResponseTimestamp(responseTimestamp);
    testRequestModel.setWorkspaceId(workspaceId);
    testRequestModel.setLanguage(language);

    System.assertEquals(request, testRequestModel.getRequest());
    System.assertEquals(response, testRequestModel.getResponse());
    System.assertEquals(logId, testRequestModel.getLogId());
    System.assertEquals(requestTimestamp, testRequestModel.getRequestTimestamp());
    System.assertEquals(responseTimestamp, testRequestModel.getResponseTimestamp());
    System.assertEquals(workspaceId, testRequestModel.getWorkspaceId());
    System.assertEquals(language, testRequestModel.getLanguage());
    Test.stopTest();
  }
  static testMethod void testLogCollectionModel() {
    Test.startTest();
    IBMAssistantV1Models.MessageRequest request = new IBMAssistantV1Models.MessageRequestBuilder()
      .build();
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV1Models.RuntimeIntent intentsItem = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV1Models.RuntimeIntent> intents = new List<IBMAssistantV1Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV1Models.RuntimeEntity entitiesItem = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV1Models.RuntimeEntity> entities = new List<IBMAssistantV1Models.RuntimeEntity> { entitiesItem } ;
    IBMAssistantV1Models.Context context = new IBMAssistantV1Models.ContextBuilder()
      .build();
    String level = 'level';
    String msg = 'msg';
    IBMAssistantV1Models.LogMessage logMessagesItem = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    List<IBMAssistantV1Models.LogMessage> logMessages = new List<IBMAssistantV1Models.LogMessage> { logMessagesItem } ;
    List<String> text = new List<String> { 'text' } ;
    IBMAssistantV1Models.OutputData output = new IBMAssistantV1Models.OutputDataBuilder()
      .logMessages(logMessages)
      .text(text)
      .build();
    IBMAssistantV1Models.MessageResponse response = new IBMAssistantV1Models.MessageResponse();
    String logId = 'log_id';
    String requestTimestamp = 'request_timestamp';
    String responseTimestamp = 'response_timestamp';
    String workspaceId = 'workspace_id';
    String language = 'language';
    IBMAssistantV1Models.Log logsItem = new IBMAssistantV1Models.Log();
    List<IBMAssistantV1Models.Log> logs = new List<IBMAssistantV1Models.Log> { logsItem } ;
    IBMAssistantV1Models.LogPagination pagination = new IBMAssistantV1Models.LogPagination();

    IBMAssistantV1Models.LogCollection testRequestModel = new IBMAssistantV1Models.LogCollection();
    testRequestModel.setLogs(logs);
    testRequestModel.setPagination(pagination);

    System.assertEquals(logs, testRequestModel.getLogs());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testLogMessageModel() {
    Test.startTest();
    String level = 'level';
    String msg = 'msg';

    IBMAssistantV1Models.LogMessage testRequestModel = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(level, testRequestModel.getLevel());
    System.assertEquals(msg, testRequestModel.getMsg());
    Test.stopTest();
  }
  static testMethod void testLogPaginationModel() {
    Test.startTest();
    String nextUrl = 'next_url';
    Long matched = 10L;
    String nextCursor = 'next_cursor';

    IBMAssistantV1Models.LogPagination testRequestModel = new IBMAssistantV1Models.LogPagination();
    testRequestModel.setNextUrl(nextUrl);
    testRequestModel.setMatched(matched);
    testRequestModel.setNextCursor(nextCursor);

    System.assertEquals(nextUrl, testRequestModel.getNextUrl());
    System.assertEquals(matched, testRequestModel.getMatched());
    System.assertEquals(nextCursor, testRequestModel.getNextCursor());
    Test.stopTest();
  }
  static testMethod void testMentionModel() {
    Test.startTest();
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;

    IBMAssistantV1Models.Mention testRequestModel = new IBMAssistantV1Models.MentionBuilder()
      .entity(entity)
      .location(location)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(entity, testRequestModel.getEntity());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testMessageContextMetadataModel() {
    Test.startTest();
    String deployment = 'deployment';
    String userId = 'user_id';

    IBMAssistantV1Models.MessageContextMetadata testRequestModel = new IBMAssistantV1Models.MessageContextMetadataBuilder()
      .deployment(deployment)
      .userId(userId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(deployment, testRequestModel.getDeployment());
    System.assertEquals(userId, testRequestModel.getUserId());
    Test.stopTest();
  }
  static testMethod void testMessageInputModel() {
    Test.startTest();
    String text = 'text';

    IBMAssistantV1Models.MessageInput testRequestModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text(text)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testMessageOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV1Models.RuntimeIntent intentsItem = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV1Models.RuntimeIntent> intents = new List<IBMAssistantV1Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV1Models.RuntimeEntity entitiesItem = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV1Models.RuntimeEntity> entities = new List<IBMAssistantV1Models.RuntimeEntity> { entitiesItem } ;
    Boolean alternateIntents = true;
    IBMAssistantV1Models.Context context = new IBMAssistantV1Models.ContextBuilder()
      .build();
    String level = 'level';
    String msg = 'msg';
    IBMAssistantV1Models.LogMessage logMessagesItem = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    List<IBMAssistantV1Models.LogMessage> logMessages = new List<IBMAssistantV1Models.LogMessage> { logMessagesItem } ;
    List<String> text = new List<String> { 'text' } ;
    IBMAssistantV1Models.OutputData output = new IBMAssistantV1Models.OutputDataBuilder()
      .logMessages(logMessages)
      .text(text)
      .build();
    Boolean nodesVisitedDetails = true;

    IBMAssistantV1Models.MessageOptions testRequestModel = new IBMAssistantV1Models.MessageOptionsBuilder()
      .workspaceId(workspaceId)
      .input(input)
      .intents(intents)
      .entities(entities)
      .alternateIntents(alternateIntents)
      .context(context)
      .output(output)
      .nodesVisitedDetails(nodesVisitedDetails)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(input, testRequestModel.input());
    System.assertEquals(intents, testRequestModel.intents());
    System.assertEquals(entities, testRequestModel.entities());
    System.assertEquals(alternateIntents, testRequestModel.alternateIntents());
    System.assertEquals(context, testRequestModel.context());
    System.assertEquals(output, testRequestModel.output());
    System.assertEquals(nodesVisitedDetails, testRequestModel.nodesVisitedDetails());
    Test.stopTest();
  }
  static testMethod void testMessageRequestModel() {
    Test.startTest();
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV1Models.RuntimeIntent intentsItem = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV1Models.RuntimeIntent> intents = new List<IBMAssistantV1Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV1Models.RuntimeEntity entitiesItem = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV1Models.RuntimeEntity> entities = new List<IBMAssistantV1Models.RuntimeEntity> { entitiesItem } ;
    Boolean alternateIntents = true;
    IBMAssistantV1Models.Context context = new IBMAssistantV1Models.ContextBuilder()
      .build();
    String level = 'level';
    String msg = 'msg';
    IBMAssistantV1Models.LogMessage logMessagesItem = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    List<IBMAssistantV1Models.LogMessage> logMessages = new List<IBMAssistantV1Models.LogMessage> { logMessagesItem } ;
    List<String> text = new List<String> { 'text' } ;
    IBMAssistantV1Models.OutputData output = new IBMAssistantV1Models.OutputDataBuilder()
      .logMessages(logMessages)
      .text(text)
      .build();

    IBMAssistantV1Models.MessageRequest testRequestModel = new IBMAssistantV1Models.MessageRequestBuilder()
      .input(input)
      .intents(intents)
      .entities(entities)
      .alternateIntents(alternateIntents)
      .context(context)
      .output(output)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(input, testRequestModel.getInput());
    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(alternateIntents, testRequestModel.getAlternateIntents());
    System.assertEquals(context, testRequestModel.getContext());
    System.assertEquals(output, testRequestModel.getOutput());
    Test.stopTest();
  }
  static testMethod void testMessageResponseModel() {
    Test.startTest();
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV1Models.RuntimeIntent intentsItem = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV1Models.RuntimeIntent> intents = new List<IBMAssistantV1Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV1Models.RuntimeEntity entitiesItem = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV1Models.RuntimeEntity> entities = new List<IBMAssistantV1Models.RuntimeEntity> { entitiesItem } ;
    Boolean alternateIntents = true;
    IBMAssistantV1Models.Context context = new IBMAssistantV1Models.ContextBuilder()
      .build();
    String level = 'level';
    String msg = 'msg';
    IBMAssistantV1Models.LogMessage logMessagesItem = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    List<IBMAssistantV1Models.LogMessage> logMessages = new List<IBMAssistantV1Models.LogMessage> { logMessagesItem } ;
    List<String> text = new List<String> { 'text' } ;
    IBMAssistantV1Models.OutputData output = new IBMAssistantV1Models.OutputDataBuilder()
      .logMessages(logMessages)
      .text(text)
      .build();

    IBMAssistantV1Models.MessageResponse testRequestModel = new IBMAssistantV1Models.MessageResponse();
    testRequestModel.setInput(input);
    testRequestModel.setIntents(intents);
    testRequestModel.setEntities(entities);
    testRequestModel.setAlternateIntents(alternateIntents);
    testRequestModel.setContext(context);
    testRequestModel.setOutput(output);

    System.assertEquals(input, testRequestModel.getInput());
    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(alternateIntents, testRequestModel.getAlternateIntents());
    System.assertEquals(context, testRequestModel.getContext());
    System.assertEquals(output, testRequestModel.getOutput());
    Test.stopTest();
  }
  static testMethod void testOutputDataModel() {
    Test.startTest();
    List<String> nodesVisited = new List<String> { 'nodes_visited' } ;
    IBMAssistantV1Models.DialogNodeVisitedDetails nodesVisitedDetailsItem = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .build();
    List<IBMAssistantV1Models.DialogNodeVisitedDetails> nodesVisitedDetails = new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { nodesVisitedDetailsItem } ;
    String level = 'level';
    String msg = 'msg';
    IBMAssistantV1Models.LogMessage logMessagesItem = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    List<IBMAssistantV1Models.LogMessage> logMessages = new List<IBMAssistantV1Models.LogMessage> { logMessagesItem } ;
    List<String> text = new List<String> { 'text' } ;
    String responseType = 'response_type';
    IBMAssistantV1Models.RuntimeResponseGeneric genericItem = new IBMAssistantV1Models.RuntimeResponseGenericBuilder()
      .responseType(responseType)
      .build();
    List<IBMAssistantV1Models.RuntimeResponseGeneric> generic = new List<IBMAssistantV1Models.RuntimeResponseGeneric> { genericItem } ;

    IBMAssistantV1Models.OutputData testRequestModel = new IBMAssistantV1Models.OutputDataBuilder()
      .nodesVisited(nodesVisited)
      .nodesVisitedDetails(nodesVisitedDetails)
      .logMessages(logMessages)
      .text(text)
      .generic(generic)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(nodesVisited, testRequestModel.getNodesVisited());
    System.assertEquals(nodesVisitedDetails, testRequestModel.getNodesVisitedDetails());
    System.assertEquals(logMessages, testRequestModel.getLogMessages());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(generic, testRequestModel.getGeneric());
    Test.stopTest();
  }
  static testMethod void testPaginationModel() {
    Test.startTest();
    String refreshUrl = 'refresh_url';
    String nextUrl = 'next_url';
    Long total = 10L;
    Long matched = 10L;
    String refreshCursor = 'refresh_cursor';
    String nextCursor = 'next_cursor';

    IBMAssistantV1Models.Pagination testRequestModel = new IBMAssistantV1Models.Pagination();
    testRequestModel.setRefreshUrl(refreshUrl);
    testRequestModel.setNextUrl(nextUrl);
    testRequestModel.setTotal(total);
    testRequestModel.setMatched(matched);
    testRequestModel.setRefreshCursor(refreshCursor);
    testRequestModel.setNextCursor(nextCursor);

    System.assertEquals(refreshUrl, testRequestModel.getRefreshUrl());
    System.assertEquals(nextUrl, testRequestModel.getNextUrl());
    System.assertEquals(total, testRequestModel.getTotal());
    System.assertEquals(matched, testRequestModel.getMatched());
    System.assertEquals(refreshCursor, testRequestModel.getRefreshCursor());
    System.assertEquals(nextCursor, testRequestModel.getNextCursor());
    Test.stopTest();
  }
  static testMethod void testRuntimeEntityModel() {
    Test.startTest();
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    Double confidence = 0.5;
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String xGroup = 'x_group';
    IBMAssistantV1Models.CaptureGroup groupsItem = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup(xGroup)
      .build();
    List<IBMAssistantV1Models.CaptureGroup> groups = new List<IBMAssistantV1Models.CaptureGroup> { groupsItem } ;

    IBMAssistantV1Models.RuntimeEntity testRequestModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .confidence(confidence)
      .metadata(metadata)
      .groups(groups)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(entity, testRequestModel.getEntity());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(value, testRequestModel.getValue());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(groups, testRequestModel.getGroups());
    Test.stopTest();
  }
  static testMethod void testRuntimeIntentModel() {
    Test.startTest();
    String intent = 'intent';
    Double confidence = 0.5;

    IBMAssistantV1Models.RuntimeIntent testRequestModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(intent, testRequestModel.getIntent());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    Test.stopTest();
  }
  static testMethod void testRuntimeResponseGenericModel() {
    Test.startTest();
    String responseType = 'response_type';
    String text = 'text';
    Long xTime = 10L;
    Boolean typing = true;
    String source = 'source';
    String title = 'title';
    String description = 'description';
    String preference = 'preference';
    String label = 'label';
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue value = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement optionsItem = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label(label)
      .value(value)
      .build();
    List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> options = new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { optionsItem } ;
    String messageToHumanAgent = 'message_to_human_agent';
    String dialogNode = 'dialog_node';
    IBMAssistantV1Models.DialogSuggestionValue dialogSuggestionValue = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .build();
    IBMAssistantV1Models.DialogSuggestion suggestionsItem = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label(label)
      .value(dialogSuggestionValue)
      .build();
    List<IBMAssistantV1Models.DialogSuggestion> suggestions = new List<IBMAssistantV1Models.DialogSuggestion> { suggestionsItem } ;

    IBMAssistantV1Models.RuntimeResponseGeneric testRequestModel = new IBMAssistantV1Models.RuntimeResponseGenericBuilder()
      .responseType(responseType)
      .text(text)
      .xTime(xTime)
      .typing(typing)
      .source(source)
      .title(title)
      .description(description)
      .preference(preference)
      .options(options)
      .messageToHumanAgent(messageToHumanAgent)
      .dialogNode(dialogNode)
      .suggestions(suggestions)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(responseType, testRequestModel.getResponseType());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(xTime, testRequestModel.getXTime());
    System.assertEquals(typing, testRequestModel.getTyping());
    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(preference, testRequestModel.getPreference());
    System.assertEquals(options, testRequestModel.getOptions());
    System.assertEquals(messageToHumanAgent, testRequestModel.getMessageToHumanAgent());
    System.assertEquals(dialogNode, testRequestModel.getDialogNode());
    System.assertEquals(suggestions, testRequestModel.getSuggestions());
    Test.stopTest();
  }
  static testMethod void testSynonymModel() {
    Test.startTest();
    String synonym = 'synonym';

    IBMAssistantV1Models.Synonym testRequestModel = new IBMAssistantV1Models.SynonymBuilder()
      .synonym(synonym)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(synonym, testRequestModel.getSynonym());
    Test.stopTest();
  }
  static testMethod void testSynonymCollectionModel() {
    Test.startTest();
    String synonym = 'synonym';
    IBMAssistantV1Models.Synonym synonymsItem = new IBMAssistantV1Models.SynonymBuilder()
      .synonym(synonym)
      .build();
    List<IBMAssistantV1Models.Synonym> synonyms = new List<IBMAssistantV1Models.Synonym> { synonymsItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.SynonymCollection testRequestModel = new IBMAssistantV1Models.SynonymCollection();
    testRequestModel.setSynonyms(synonyms);
    testRequestModel.setPagination(pagination);

    System.assertEquals(synonyms, testRequestModel.getSynonyms());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testSystemResponseModel() {
    Test.startTest();

    IBMAssistantV1Models.SystemResponse testRequestModel = new IBMAssistantV1Models.SystemResponseBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testUpdateCounterexampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String text = 'text';
    String newText = 'new_text';

    IBMAssistantV1Models.UpdateCounterexampleOptions testRequestModel = new IBMAssistantV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .newText(newText)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(newText, testRequestModel.newText());
    Test.stopTest();
  }
  static testMethod void testUpdateDialogNodeOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';
    String newDialogNode = 'new_dialog_node';
    String newDescription = 'new_description';
    String newConditions = 'new_conditions';
    String newParent = 'new_parent';
    String newPreviousSibling = 'new_previous_sibling';
    IBMAssistantV1Models.DialogNodeOutput newOutput = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .build();
    IBMWatsonMapModel newContext = new IBMWatsonMapModel();
    newContext.put('newContext_key', 'new_context');
    IBMWatsonMapModel newMetadata = new IBMWatsonMapModel();
    newMetadata.put('newMetadata_key', 'new_metadata');
    String behavior = 'behavior';
    IBMAssistantV1Models.DialogNodeNextStep newNextStep = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior(behavior)
      .build();
    String newTitle = 'new_title';
    String newType = 'new_type';
    String newEventName = 'new_event_name';
    String newVariable = 'new_variable';
    String name = 'name';
    String resultVariable = 'result_variable';
    IBMAssistantV1Models.DialogNodeAction newActionsItem = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name(name)
      .resultVariable(resultVariable)
      .build();
    List<IBMAssistantV1Models.DialogNodeAction> newActions = new List<IBMAssistantV1Models.DialogNodeAction> { newActionsItem } ;
    String newDigressIn = 'new_digress_in';
    String newDigressOut = 'new_digress_out';
    String newDigressOutSlots = 'new_digress_out_slots';
    String newUserLabel = 'new_user_label';

    IBMAssistantV1Models.UpdateDialogNodeOptions testRequestModel = new IBMAssistantV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .newDialogNode(newDialogNode)
      .newDescription(newDescription)
      .newConditions(newConditions)
      .newParent(newParent)
      .newPreviousSibling(newPreviousSibling)
      .newOutput(newOutput)
      .newContext(newContext)
      .newMetadata(newMetadata)
      .newNextStep(newNextStep)
      .newTitle(newTitle)
      .newType(newType)
      .newEventName(newEventName)
      .newVariable(newVariable)
      .newActions(newActions)
      .newDigressIn(newDigressIn)
      .newDigressOut(newDigressOut)
      .newDigressOutSlots(newDigressOutSlots)
      .newUserLabel(newUserLabel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(dialogNode, testRequestModel.dialogNode());
    System.assertEquals(newDialogNode, testRequestModel.newDialogNode());
    System.assertEquals(newDescription, testRequestModel.newDescription());
    System.assertEquals(newConditions, testRequestModel.newConditions());
    System.assertEquals(newParent, testRequestModel.newParent());
    System.assertEquals(newPreviousSibling, testRequestModel.newPreviousSibling());
    System.assertEquals(newOutput, testRequestModel.newOutput());
    System.assertEquals(newContext, testRequestModel.newContext());
    System.assertEquals(newMetadata, testRequestModel.newMetadata());
    System.assertEquals(newNextStep, testRequestModel.newNextStep());
    System.assertEquals(newTitle, testRequestModel.newTitle());
    System.assertEquals(newType, testRequestModel.newType());
    System.assertEquals(newEventName, testRequestModel.newEventName());
    System.assertEquals(newVariable, testRequestModel.newVariable());
    System.assertEquals(newActions, testRequestModel.newActions());
    System.assertEquals(newDigressIn, testRequestModel.newDigressIn());
    System.assertEquals(newDigressOut, testRequestModel.newDigressOut());
    System.assertEquals(newDigressOutSlots, testRequestModel.newDigressOutSlots());
    System.assertEquals(newUserLabel, testRequestModel.newUserLabel());
    Test.stopTest();
  }
  static testMethod void testUpdateEntityOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String newEntity = 'new_entity';
    String newDescription = 'new_description';
    IBMWatsonMapModel newMetadata = new IBMWatsonMapModel();
    newMetadata.put('newMetadata_key', 'new_metadata');
    Boolean newFuzzyMatch = true;
    String value = 'value';
    IBMAssistantV1Models.CreateValue newValuesItem = new IBMAssistantV1Models.CreateValueBuilder()
      .value(value)
      .build();
    List<IBMAssistantV1Models.CreateValue> newValues = new List<IBMAssistantV1Models.CreateValue> { newValuesItem } ;

    IBMAssistantV1Models.UpdateEntityOptions testRequestModel = new IBMAssistantV1Models.UpdateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .newEntity(newEntity)
      .newDescription(newDescription)
      .newMetadata(newMetadata)
      .newFuzzyMatch(newFuzzyMatch)
      .newValues(newValues)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(newEntity, testRequestModel.newEntity());
    System.assertEquals(newDescription, testRequestModel.newDescription());
    System.assertEquals(newMetadata, testRequestModel.newMetadata());
    System.assertEquals(newFuzzyMatch, testRequestModel.newFuzzyMatch());
    System.assertEquals(newValues, testRequestModel.newValues());
    Test.stopTest();
  }
  static testMethod void testUpdateExampleOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';
    String newText = 'new_text';
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    IBMAssistantV1Models.Mention newMentionsItem = new IBMAssistantV1Models.MentionBuilder()
      .entity(entity)
      .location(location)
      .build();
    List<IBMAssistantV1Models.Mention> newMentions = new List<IBMAssistantV1Models.Mention> { newMentionsItem } ;

    IBMAssistantV1Models.UpdateExampleOptions testRequestModel = new IBMAssistantV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .newText(newText)
      .newMentions(newMentions)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(text, testRequestModel.text());
    System.assertEquals(newText, testRequestModel.newText());
    System.assertEquals(newMentions, testRequestModel.newMentions());
    Test.stopTest();
  }
  static testMethod void testUpdateIntentOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String newIntent = 'new_intent';
    String newDescription = 'new_description';
    String text = 'text';
    IBMAssistantV1Models.Example newExamplesItem = new IBMAssistantV1Models.ExampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Example> newExamples = new List<IBMAssistantV1Models.Example> { newExamplesItem } ;

    IBMAssistantV1Models.UpdateIntentOptions testRequestModel = new IBMAssistantV1Models.UpdateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .newIntent(newIntent)
      .newDescription(newDescription)
      .newExamples(newExamples)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(intent, testRequestModel.intent());
    System.assertEquals(newIntent, testRequestModel.newIntent());
    System.assertEquals(newDescription, testRequestModel.newDescription());
    System.assertEquals(newExamples, testRequestModel.newExamples());
    Test.stopTest();
  }
  static testMethod void testUpdateSynonymOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';
    String newSynonym = 'new_synonym';

    IBMAssistantV1Models.UpdateSynonymOptions testRequestModel = new IBMAssistantV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .newSynonym(newSynonym)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(synonym, testRequestModel.synonym());
    System.assertEquals(newSynonym, testRequestModel.newSynonym());
    Test.stopTest();
  }
  static testMethod void testUpdateValueOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String newValue = 'new_value';
    IBMWatsonMapModel newMetadata = new IBMWatsonMapModel();
    newMetadata.put('newMetadata_key', 'new_metadata');
    String newType = 'new_type';
    List<String> newSynonyms = new List<String> { 'new_synonyms' } ;
    List<String> newPatterns = new List<String> { 'new_patterns' } ;

    IBMAssistantV1Models.UpdateValueOptions testRequestModel = new IBMAssistantV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .newValue(newValue)
      .newMetadata(newMetadata)
      .newType(newType)
      .newSynonyms(newSynonyms)
      .newPatterns(newPatterns)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(entity, testRequestModel.entity());
    System.assertEquals(value, testRequestModel.value());
    System.assertEquals(newValue, testRequestModel.newValue());
    System.assertEquals(newMetadata, testRequestModel.newMetadata());
    System.assertEquals(newType, testRequestModel.newType());
    System.assertEquals(newSynonyms, testRequestModel.newSynonyms());
    System.assertEquals(newPatterns, testRequestModel.newPatterns());
    Test.stopTest();
  }
  static testMethod void testUpdateWorkspaceOptionsModel() {
    Test.startTest();
    String workspaceId = 'workspace_id';
    String name = 'name';
    String description = 'description';
    String language = 'language';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    Boolean learningOptOut = true;
    IBMAssistantV1Models.WorkspaceSystemSettings systemSettings = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .build();
    String intent = 'intent';
    IBMAssistantV1Models.CreateIntent intentsItem = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent(intent)
      .build();
    List<IBMAssistantV1Models.CreateIntent> intents = new List<IBMAssistantV1Models.CreateIntent> { intentsItem } ;
    String entity = 'entity';
    IBMAssistantV1Models.CreateEntity entitiesItem = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity(entity)
      .build();
    List<IBMAssistantV1Models.CreateEntity> entities = new List<IBMAssistantV1Models.CreateEntity> { entitiesItem } ;
    String dialogNode = 'dialog_node';
    IBMAssistantV1Models.DialogNode dialogNodesItem = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode(dialogNode)
      .build();
    List<IBMAssistantV1Models.DialogNode> dialogNodes = new List<IBMAssistantV1Models.DialogNode> { dialogNodesItem } ;
    String text = 'text';
    IBMAssistantV1Models.Counterexample counterexamplesItem = new IBMAssistantV1Models.CounterexampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Counterexample> counterexamples = new List<IBMAssistantV1Models.Counterexample> { counterexamplesItem } ;
    Boolean append = true;

    IBMAssistantV1Models.UpdateWorkspaceOptions testRequestModel = new IBMAssistantV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .name(name)
      .description(description)
      .language(language)
      .metadata(metadata)
      .learningOptOut(learningOptOut)
      .systemSettings(systemSettings)
      .intents(intents)
      .entities(entities)
      .dialogNodes(dialogNodes)
      .counterexamples(counterexamples)
      .append(append)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceId, testRequestModel.workspaceId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    System.assertEquals(language, testRequestModel.language());
    System.assertEquals(metadata, testRequestModel.metadata());
    System.assertEquals(learningOptOut, testRequestModel.learningOptOut());
    System.assertEquals(systemSettings, testRequestModel.systemSettings());
    System.assertEquals(intents, testRequestModel.intents());
    System.assertEquals(entities, testRequestModel.entities());
    System.assertEquals(dialogNodes, testRequestModel.dialogNodes());
    System.assertEquals(counterexamples, testRequestModel.counterexamples());
    System.assertEquals(append, testRequestModel.append());
    Test.stopTest();
  }
  static testMethod void testValueModel() {
    Test.startTest();
    String value = 'value';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    String xType = 'x_type';
    List<String> synonyms = new List<String> { 'synonyms' } ;
    List<String> patterns = new List<String> { 'patterns' } ;

    IBMAssistantV1Models.Value testRequestModel = new IBMAssistantV1Models.ValueBuilder()
      .value(value)
      .metadata(metadata)
      .xType(xType)
      .synonyms(synonyms)
      .patterns(patterns)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(value, testRequestModel.getValue());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(synonyms, testRequestModel.getSynonyms());
    System.assertEquals(patterns, testRequestModel.getPatterns());
    Test.stopTest();
  }
  static testMethod void testValueCollectionModel() {
    Test.startTest();
    String value = 'value';
    String xType = 'x_type';
    IBMAssistantV1Models.Value valuesItem = new IBMAssistantV1Models.ValueBuilder()
      .value(value)
      .xType(xType)
      .build();
    List<IBMAssistantV1Models.Value> values = new List<IBMAssistantV1Models.Value> { valuesItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.ValueCollection testRequestModel = new IBMAssistantV1Models.ValueCollection();
    testRequestModel.setValues(values);
    testRequestModel.setPagination(pagination);

    System.assertEquals(values, testRequestModel.getValues());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testWorkspaceModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';
    String language = 'language';
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('metadata_key', 'metadata');
    Boolean learningOptOut = true;
    IBMAssistantV1Models.WorkspaceSystemSettings systemSettings = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .build();
    String intent = 'intent';
    IBMAssistantV1Models.Intent intentsItem = new IBMAssistantV1Models.Intent();
    List<IBMAssistantV1Models.Intent> intents = new List<IBMAssistantV1Models.Intent> { intentsItem } ;
    String entity = 'entity';
    IBMAssistantV1Models.Entity entitiesItem = new IBMAssistantV1Models.Entity();
    List<IBMAssistantV1Models.Entity> entities = new List<IBMAssistantV1Models.Entity> { entitiesItem } ;
    String dialogNode = 'dialog_node';
    IBMAssistantV1Models.DialogNode dialogNodesItem = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode(dialogNode)
      .build();
    List<IBMAssistantV1Models.DialogNode> dialogNodes = new List<IBMAssistantV1Models.DialogNode> { dialogNodesItem } ;
    String text = 'text';
    IBMAssistantV1Models.Counterexample counterexamplesItem = new IBMAssistantV1Models.CounterexampleBuilder()
      .text(text)
      .build();
    List<IBMAssistantV1Models.Counterexample> counterexamples = new List<IBMAssistantV1Models.Counterexample> { counterexamplesItem } ;

    IBMAssistantV1Models.Workspace testRequestModel = new IBMAssistantV1Models.Workspace();
    testRequestModel.setName(name);
    testRequestModel.setDescription(description);
    testRequestModel.setLanguage(language);
    testRequestModel.setMetadata(metadata);
    testRequestModel.setLearningOptOut(learningOptOut);
    testRequestModel.setSystemSettings(systemSettings);
    testRequestModel.setIntents(intents);
    testRequestModel.setEntities(entities);
    testRequestModel.setDialogNodes(dialogNodes);
    testRequestModel.setCounterexamples(counterexamples);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(metadata, testRequestModel.getMetadata());
    System.assertEquals(learningOptOut, testRequestModel.getLearningOptOut());
    System.assertEquals(systemSettings, testRequestModel.getSystemSettings());
    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(dialogNodes, testRequestModel.getDialogNodes());
    System.assertEquals(counterexamples, testRequestModel.getCounterexamples());
    Test.stopTest();
  }
  static testMethod void testWorkspaceCollectionModel() {
    Test.startTest();
    String name = 'name';
    String language = 'language';
    Boolean learningOptOut = true;
    String workspaceId = 'workspace_id';
    IBMAssistantV1Models.Workspace workspacesItem = new IBMAssistantV1Models.Workspace();
    List<IBMAssistantV1Models.Workspace> workspaces = new List<IBMAssistantV1Models.Workspace> { workspacesItem } ;
    String refreshUrl = 'refresh_url';
    IBMAssistantV1Models.Pagination pagination = new IBMAssistantV1Models.Pagination();

    IBMAssistantV1Models.WorkspaceCollection testRequestModel = new IBMAssistantV1Models.WorkspaceCollection();
    testRequestModel.setWorkspaces(workspaces);
    testRequestModel.setPagination(pagination);

    System.assertEquals(workspaces, testRequestModel.getWorkspaces());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testWorkspaceSystemSettingsModel() {
    Test.startTest();
    IBMAssistantV1Models.WorkspaceSystemSettingsTooling tooling = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation disambiguation = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .build();
    IBMWatsonMapModel humanAgentAssist = new IBMWatsonMapModel();
    humanAgentAssist.put('humanAgentAssist_key', 'human_agent_assist');

    IBMAssistantV1Models.WorkspaceSystemSettings testRequestModel = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .tooling(tooling)
      .disambiguation(disambiguation)
      .humanAgentAssist(humanAgentAssist)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(tooling, testRequestModel.getTooling());
    System.assertEquals(disambiguation, testRequestModel.getDisambiguation());
    System.assertEquals(humanAgentAssist, testRequestModel.getHumanAgentAssist());
    Test.stopTest();
  }
  static testMethod void testWorkspaceSystemSettingsDisambiguationModel() {
    Test.startTest();
    String prompt = 'prompt';
    String noneOfTheAbovePrompt = 'none_of_the_above_prompt';
    Boolean enabled = true;
    String sensitivity = 'sensitivity';

    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation testRequestModel = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .prompt(prompt)
      .noneOfTheAbovePrompt(noneOfTheAbovePrompt)
      .enabled(enabled)
      .sensitivity(sensitivity)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(prompt, testRequestModel.getPrompt());
    System.assertEquals(noneOfTheAbovePrompt, testRequestModel.getNoneOfTheAbovePrompt());
    System.assertEquals(enabled, testRequestModel.getEnabled());
    System.assertEquals(sensitivity, testRequestModel.getSensitivity());
    Test.stopTest();
  }
  static testMethod void testWorkspaceSystemSettingsToolingModel() {
    Test.startTest();
    Boolean storeGenericResponses = true;

    IBMAssistantV1Models.WorkspaceSystemSettingsTooling testRequestModel = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(storeGenericResponses)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(storeGenericResponses, testRequestModel.getStoreGenericResponses());
    Test.stopTest();
  }


  static testMethod void testMessage() {
    String body = IBMWatsonMockResponses.assistantV1MessageResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    Double confidence = 0.5;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    String level = 'level';
    String msg = 'msg';
    IBMAssistantV1Models.LogMessage logMessagesItem = new IBMAssistantV1Models.LogMessageBuilder()
      .level(level)
      .msg(msg)
      .build();
    List<IBMAssistantV1Models.LogMessage> logMessages = new List<IBMAssistantV1Models.LogMessage> { logMessagesItem } ;
    List<String> text = new List<String> { 'text' } ;

    IBMAssistantV1Models.MessageOptions options = new IBMAssistantV1Models.MessageOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.MessageResponse response = service.message(options);

    System.assertEquals(
      'text',
      response.getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      true,
      response.getAlternateIntents()
    );
    System.assertEquals(
      'conversation_id',
      response.getContext().getConversationId()
    );
    System.assertEquals(
      'deployment',
      response.getContext().getMetadata().getDeployment()
    );
    System.assertEquals(
      'user_id',
      response.getContext().getMetadata().getUserId()
    );
    System.assertEquals(
      'nodes_visited',
      response.getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'level',
      response.getOutput().getLogMessages().get(0).getLevel()
    );
    System.assertEquals(
      'msg',
      response.getOutput().getLogMessages().get(0).getMsg()
    );
    System.assertEquals(
      'text',
      response.getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'label',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'nodes_visited',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'dialog_node',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode()
    );
    System.assertEquals(
      'name',
      response.getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getActions().get(0).getCredentials()
    );

    Test.stopTest();
  }
  static testMethod void testListWorkspaces() {
    String body = IBMWatsonMockResponses.assistantV1WorkspaceCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMAssistantV1Models.ListWorkspacesOptions options = new IBMAssistantV1Models.ListWorkspacesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.WorkspaceCollection response = service.listWorkspaces(options);

    System.assertEquals(
      'name',
      response.getWorkspaces().get(0).getName()
    );
    System.assertEquals(
      'description',
      response.getWorkspaces().get(0).getDescription()
    );
    System.assertEquals(
      'language',
      response.getWorkspaces().get(0).getLanguage()
    );
    System.assertEquals(
      true,
      response.getWorkspaces().get(0).getLearningOptOut()
    );
    System.assertEquals(
      true,
      response.getWorkspaces().get(0).getSystemSettings().getTooling().getStoreGenericResponses()
    );
    System.assertEquals(
      'prompt',
      response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getPrompt()
    );
    System.assertEquals(
      'none_of_the_above_prompt',
      response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt()
    );
    System.assertEquals(
      true,
      response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getEnabled()
    );
    System.assertEquals(
      'sensitivity',
      response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getSensitivity()
    );
    System.assertEquals(
      'workspace_id',
      response.getWorkspaces().get(0).getWorkspaceId()
    );
    System.assertEquals(
      'status',
      response.getWorkspaces().get(0).getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getUpdated()
    );
    System.assertEquals(
      'intent',
      response.getWorkspaces().get(0).getIntents().get(0).getIntent()
    );
    System.assertEquals(
      'description',
      response.getWorkspaces().get(0).getIntents().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getIntents().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getIntents().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getUpdated()
    );
    System.assertEquals(
      'entity',
      response.getWorkspaces().get(0).getEntities().get(0).getEntity()
    );
    System.assertEquals(
      'description',
      response.getWorkspaces().get(0).getEntities().get(0).getDescription()
    );
    System.assertEquals(
      true,
      response.getWorkspaces().get(0).getEntities().get(0).getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getEntities().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getEntities().get(0).getUpdated()
    );
    System.assertEquals(
      'value',
      response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getUpdated()
    );
    System.assertEquals(
      'dialog_node',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getConditions()
    );
    System.assertEquals(
      'parent',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getTitle()
    );
    System.assertEquals(
      'type',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getXType()
    );
    System.assertEquals(
      'event_name',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getEventName()
    );
    System.assertEquals(
      'variable',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getVariable()
    );
    System.assertEquals(
      'name',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getWorkspaces().get(0).getDialogNodes().get(0).getUserLabel()
    );
    System.assertEquals(
      true,
      response.getWorkspaces().get(0).getDialogNodes().get(0).getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getDialogNodes().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getDialogNodes().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getWorkspaces().get(0).getCounterexamples().get(0).getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getCounterexamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getWorkspaces().get(0).getCounterexamples().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateWorkspace() {
    String body = IBMWatsonMockResponses.assistantV1Workspace();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String intent = 'intent';
    String entity = 'entity';
    String dialogNode = 'dialog_node';
    String text = 'text';

    IBMAssistantV1Models.CreateWorkspaceOptions options = new IBMAssistantV1Models.CreateWorkspaceOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Workspace response = service.createWorkspace(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      true,
      response.getLearningOptOut()
    );
    System.assertEquals(
      true,
      response.getSystemSettings().getTooling().getStoreGenericResponses()
    );
    System.assertEquals(
      'prompt',
      response.getSystemSettings().getDisambiguation().getPrompt()
    );
    System.assertEquals(
      'none_of_the_above_prompt',
      response.getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt()
    );
    System.assertEquals(
      true,
      response.getSystemSettings().getDisambiguation().getEnabled()
    );
    System.assertEquals(
      'sensitivity',
      response.getSystemSettings().getDisambiguation().getSensitivity()
    );
    System.assertEquals(
      'workspace_id',
      response.getWorkspaceId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'intent',
      response.getIntents().get(0).getIntent()
    );
    System.assertEquals(
      'description',
      response.getIntents().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getIntents().get(0).getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getUpdated()
    );
    System.assertEquals(
      'entity',
      response.getEntities().get(0).getEntity()
    );
    System.assertEquals(
      'description',
      response.getEntities().get(0).getDescription()
    );
    System.assertEquals(
      true,
      response.getEntities().get(0).getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getUpdated()
    );
    System.assertEquals(
      'value',
      response.getEntities().get(0).getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getEntities().get(0).getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getEntities().get(0).getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getEntities().get(0).getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getUpdated()
    );
    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getDialogNodes().get(0).getConditions()
    );
    System.assertEquals(
      'parent',
      response.getDialogNodes().get(0).getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getDialogNodes().get(0).getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getDialogNodes().get(0).getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getDialogNodes().get(0).getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getTitle()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getXType()
    );
    System.assertEquals(
      'event_name',
      response.getDialogNodes().get(0).getEventName()
    );
    System.assertEquals(
      'variable',
      response.getDialogNodes().get(0).getVariable()
    );
    System.assertEquals(
      'name',
      response.getDialogNodes().get(0).getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getDialogNodes().get(0).getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getDialogNodes().get(0).getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getDialogNodes().get(0).getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getDialogNodes().get(0).getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getDialogNodes().get(0).getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getDialogNodes().get(0).getUserLabel()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getCounterexamples().get(0).getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetWorkspace() {
    String body = IBMWatsonMockResponses.assistantV1Workspace();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.GetWorkspaceOptions options = new IBMAssistantV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Workspace response = service.getWorkspace(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      true,
      response.getLearningOptOut()
    );
    System.assertEquals(
      true,
      response.getSystemSettings().getTooling().getStoreGenericResponses()
    );
    System.assertEquals(
      'prompt',
      response.getSystemSettings().getDisambiguation().getPrompt()
    );
    System.assertEquals(
      'none_of_the_above_prompt',
      response.getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt()
    );
    System.assertEquals(
      true,
      response.getSystemSettings().getDisambiguation().getEnabled()
    );
    System.assertEquals(
      'sensitivity',
      response.getSystemSettings().getDisambiguation().getSensitivity()
    );
    System.assertEquals(
      'workspace_id',
      response.getWorkspaceId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'intent',
      response.getIntents().get(0).getIntent()
    );
    System.assertEquals(
      'description',
      response.getIntents().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getIntents().get(0).getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getUpdated()
    );
    System.assertEquals(
      'entity',
      response.getEntities().get(0).getEntity()
    );
    System.assertEquals(
      'description',
      response.getEntities().get(0).getDescription()
    );
    System.assertEquals(
      true,
      response.getEntities().get(0).getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getUpdated()
    );
    System.assertEquals(
      'value',
      response.getEntities().get(0).getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getEntities().get(0).getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getEntities().get(0).getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getEntities().get(0).getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getUpdated()
    );
    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getDialogNodes().get(0).getConditions()
    );
    System.assertEquals(
      'parent',
      response.getDialogNodes().get(0).getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getDialogNodes().get(0).getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getDialogNodes().get(0).getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getDialogNodes().get(0).getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getTitle()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getXType()
    );
    System.assertEquals(
      'event_name',
      response.getDialogNodes().get(0).getEventName()
    );
    System.assertEquals(
      'variable',
      response.getDialogNodes().get(0).getVariable()
    );
    System.assertEquals(
      'name',
      response.getDialogNodes().get(0).getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getDialogNodes().get(0).getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getDialogNodes().get(0).getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getDialogNodes().get(0).getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getDialogNodes().get(0).getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getDialogNodes().get(0).getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getDialogNodes().get(0).getUserLabel()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getCounterexamples().get(0).getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateWorkspace() {
    String body = IBMWatsonMockResponses.assistantV1Workspace();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String entity = 'entity';
    String dialogNode = 'dialog_node';
    String text = 'text';

    IBMAssistantV1Models.UpdateWorkspaceOptions options = new IBMAssistantV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Workspace response = service.updateWorkspace(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      true,
      response.getLearningOptOut()
    );
    System.assertEquals(
      true,
      response.getSystemSettings().getTooling().getStoreGenericResponses()
    );
    System.assertEquals(
      'prompt',
      response.getSystemSettings().getDisambiguation().getPrompt()
    );
    System.assertEquals(
      'none_of_the_above_prompt',
      response.getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt()
    );
    System.assertEquals(
      true,
      response.getSystemSettings().getDisambiguation().getEnabled()
    );
    System.assertEquals(
      'sensitivity',
      response.getSystemSettings().getDisambiguation().getSensitivity()
    );
    System.assertEquals(
      'workspace_id',
      response.getWorkspaceId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'intent',
      response.getIntents().get(0).getIntent()
    );
    System.assertEquals(
      'description',
      response.getIntents().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getIntents().get(0).getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getUpdated()
    );
    System.assertEquals(
      'entity',
      response.getEntities().get(0).getEntity()
    );
    System.assertEquals(
      'description',
      response.getEntities().get(0).getDescription()
    );
    System.assertEquals(
      true,
      response.getEntities().get(0).getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getUpdated()
    );
    System.assertEquals(
      'value',
      response.getEntities().get(0).getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getEntities().get(0).getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getEntities().get(0).getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getEntities().get(0).getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getUpdated()
    );
    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getDialogNodes().get(0).getConditions()
    );
    System.assertEquals(
      'parent',
      response.getDialogNodes().get(0).getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getDialogNodes().get(0).getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getDialogNodes().get(0).getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getDialogNodes().get(0).getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getTitle()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getXType()
    );
    System.assertEquals(
      'event_name',
      response.getDialogNodes().get(0).getEventName()
    );
    System.assertEquals(
      'variable',
      response.getDialogNodes().get(0).getVariable()
    );
    System.assertEquals(
      'name',
      response.getDialogNodes().get(0).getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getDialogNodes().get(0).getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getDialogNodes().get(0).getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getDialogNodes().get(0).getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getDialogNodes().get(0).getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getDialogNodes().get(0).getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getDialogNodes().get(0).getUserLabel()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getCounterexamples().get(0).getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteWorkspace() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.DeleteWorkspaceOptions options = new IBMAssistantV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteWorkspace(options);

    Test.stopTest();
  }
  static testMethod void testListIntents() {
    String body = IBMWatsonMockResponses.assistantV1IntentCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.ListIntentsOptions options = new IBMAssistantV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.IntentCollection response = service.listIntents(options);

    System.assertEquals(
      'intent',
      response.getIntents().get(0).getIntent()
    );
    System.assertEquals(
      'description',
      response.getIntents().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getUpdated()
    );
    System.assertEquals(
      'text',
      response.getIntents().get(0).getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getIntents().get(0).getExamples().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateIntent() {
    String body = IBMWatsonMockResponses.assistantV1Intent();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';

    IBMAssistantV1Models.CreateIntentOptions options = new IBMAssistantV1Models.CreateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Intent response = service.createIntent(options);

    System.assertEquals(
      'intent',
      response.getIntent()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'text',
      response.getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetIntent() {
    String body = IBMWatsonMockResponses.assistantV1Intent();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';

    IBMAssistantV1Models.GetIntentOptions options = new IBMAssistantV1Models.GetIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Intent response = service.getIntent(options);

    System.assertEquals(
      'intent',
      response.getIntent()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'text',
      response.getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateIntent() {
    String body = IBMWatsonMockResponses.assistantV1Intent();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';

    IBMAssistantV1Models.UpdateIntentOptions options = new IBMAssistantV1Models.UpdateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Intent response = service.updateIntent(options);

    System.assertEquals(
      'intent',
      response.getIntent()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'text',
      response.getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteIntent() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';

    IBMAssistantV1Models.DeleteIntentOptions options = new IBMAssistantV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteIntent(options);

    Test.stopTest();
  }
  static testMethod void testListExamples() {
    String body = IBMWatsonMockResponses.assistantV1ExampleCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';

    IBMAssistantV1Models.ListExamplesOptions options = new IBMAssistantV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.ExampleCollection response = service.listExamples(options);

    System.assertEquals(
      'text',
      response.getExamples().get(0).getText()
    );
    System.assertEquals(
      'entity',
      response.getExamples().get(0).getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getExamples().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateExample() {
    String body = IBMWatsonMockResponses.assistantV1Example();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;

    IBMAssistantV1Models.CreateExampleOptions options = new IBMAssistantV1Models.CreateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Example response = service.createExample(options);

    System.assertEquals(
      'text',
      response.getText()
    );
    System.assertEquals(
      'entity',
      response.getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetExample() {
    String body = IBMWatsonMockResponses.assistantV1Example();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';

    IBMAssistantV1Models.GetExampleOptions options = new IBMAssistantV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Example response = service.getExample(options);

    System.assertEquals(
      'text',
      response.getText()
    );
    System.assertEquals(
      'entity',
      response.getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateExample() {
    String body = IBMWatsonMockResponses.assistantV1Example();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;

    IBMAssistantV1Models.UpdateExampleOptions options = new IBMAssistantV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Example response = service.updateExample(options);

    System.assertEquals(
      'text',
      response.getText()
    );
    System.assertEquals(
      'entity',
      response.getMentions().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getMentions().get(0).getLocation().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteExample() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String intent = 'intent';
    String text = 'text';

    IBMAssistantV1Models.DeleteExampleOptions options = new IBMAssistantV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intent)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteExample(options);

    Test.stopTest();
  }
  static testMethod void testListCounterexamples() {
    String body = IBMWatsonMockResponses.assistantV1CounterexampleCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.ListCounterexamplesOptions options = new IBMAssistantV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.CounterexampleCollection response = service.listCounterexamples(options);

    System.assertEquals(
      'text',
      response.getCounterexamples().get(0).getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCounterexamples().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateCounterexample() {
    String body = IBMWatsonMockResponses.assistantV1Counterexample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String text = 'text';

    IBMAssistantV1Models.CreateCounterexampleOptions options = new IBMAssistantV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Counterexample response = service.createCounterexample(options);

    System.assertEquals(
      'text',
      response.getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetCounterexample() {
    String body = IBMWatsonMockResponses.assistantV1Counterexample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String text = 'text';

    IBMAssistantV1Models.GetCounterexampleOptions options = new IBMAssistantV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Counterexample response = service.getCounterexample(options);

    System.assertEquals(
      'text',
      response.getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateCounterexample() {
    String body = IBMWatsonMockResponses.assistantV1Counterexample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String text = 'text';

    IBMAssistantV1Models.UpdateCounterexampleOptions options = new IBMAssistantV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Counterexample response = service.updateCounterexample(options);

    System.assertEquals(
      'text',
      response.getText()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteCounterexample() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String text = 'text';

    IBMAssistantV1Models.DeleteCounterexampleOptions options = new IBMAssistantV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(text)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCounterexample(options);

    Test.stopTest();
  }
  static testMethod void testListEntities() {
    String body = IBMWatsonMockResponses.assistantV1EntityCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.ListEntitiesOptions options = new IBMAssistantV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.EntityCollection response = service.listEntities(options);

    System.assertEquals(
      'entity',
      response.getEntities().get(0).getEntity()
    );
    System.assertEquals(
      'description',
      response.getEntities().get(0).getDescription()
    );
    System.assertEquals(
      true,
      response.getEntities().get(0).getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getUpdated()
    );
    System.assertEquals(
      'value',
      response.getEntities().get(0).getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getEntities().get(0).getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getEntities().get(0).getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getEntities().get(0).getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getEntities().get(0).getValues().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateEntity() {
    String body = IBMWatsonMockResponses.assistantV1Entity();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.CreateEntityOptions options = new IBMAssistantV1Models.CreateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Entity response = service.createEntity(options);

    System.assertEquals(
      'entity',
      response.getEntity()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      true,
      response.getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'value',
      response.getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetEntity() {
    String body = IBMWatsonMockResponses.assistantV1Entity();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';

    IBMAssistantV1Models.GetEntityOptions options = new IBMAssistantV1Models.GetEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Entity response = service.getEntity(options);

    System.assertEquals(
      'entity',
      response.getEntity()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      true,
      response.getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'value',
      response.getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateEntity() {
    String body = IBMWatsonMockResponses.assistantV1Entity();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.UpdateEntityOptions options = new IBMAssistantV1Models.UpdateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Entity response = service.updateEntity(options);

    System.assertEquals(
      'entity',
      response.getEntity()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      true,
      response.getFuzzyMatch()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      'value',
      response.getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteEntity() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';

    IBMAssistantV1Models.DeleteEntityOptions options = new IBMAssistantV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteEntity(options);

    Test.stopTest();
  }
  static testMethod void testListMentions() {
    String body = IBMWatsonMockResponses.assistantV1EntityMentionCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';

    IBMAssistantV1Models.ListMentionsOptions options = new IBMAssistantV1Models.ListMentionsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.EntityMentionCollection response = service.listMentions(options);

    System.assertEquals(
      'text',
      response.getExamples().get(0).getText()
    );
    System.assertEquals(
      'intent',
      response.getExamples().get(0).getIntent()
    );
    System.assertEquals(
      10L,
      response.getExamples().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testListValues() {
    String body = IBMWatsonMockResponses.assistantV1ValueCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';

    IBMAssistantV1Models.ListValuesOptions options = new IBMAssistantV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.ValueCollection response = service.listValues(options);

    System.assertEquals(
      'value',
      response.getValues().get(0).getValue()
    );
    System.assertEquals(
      'type',
      response.getValues().get(0).getXType()
    );
    System.assertEquals(
      'synonym',
      response.getValues().get(0).getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getValues().get(0).getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getValues().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateValue() {
    String body = IBMWatsonMockResponses.assistantV1Value();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.CreateValueOptions options = new IBMAssistantV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Value response = service.createValue(options);

    System.assertEquals(
      'value',
      response.getValue()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );
    System.assertEquals(
      'synonym',
      response.getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetValue() {
    String body = IBMWatsonMockResponses.assistantV1Value();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.GetValueOptions options = new IBMAssistantV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Value response = service.getValue(options);

    System.assertEquals(
      'value',
      response.getValue()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );
    System.assertEquals(
      'synonym',
      response.getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateValue() {
    String body = IBMWatsonMockResponses.assistantV1Value();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.UpdateValueOptions options = new IBMAssistantV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Value response = service.updateValue(options);

    System.assertEquals(
      'value',
      response.getValue()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );
    System.assertEquals(
      'synonym',
      response.getSynonyms().get(0)
    );
    System.assertEquals(
      'pattern',
      response.getPatterns().get(0)
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteValue() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.DeleteValueOptions options = new IBMAssistantV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteValue(options);

    Test.stopTest();
  }
  static testMethod void testListSynonyms() {
    String body = IBMWatsonMockResponses.assistantV1SynonymCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';

    IBMAssistantV1Models.ListSynonymsOptions options = new IBMAssistantV1Models.ListSynonymsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.SynonymCollection response = service.listSynonyms(options);

    System.assertEquals(
      'synonym',
      response.getSynonyms().get(0).getSynonym()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getSynonyms().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getSynonyms().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateSynonym() {
    String body = IBMWatsonMockResponses.assistantV1Synonym();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';

    IBMAssistantV1Models.CreateSynonymOptions options = new IBMAssistantV1Models.CreateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Synonym response = service.createSynonym(options);

    System.assertEquals(
      'synonym',
      response.getSynonym()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetSynonym() {
    String body = IBMWatsonMockResponses.assistantV1Synonym();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';

    IBMAssistantV1Models.GetSynonymOptions options = new IBMAssistantV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Synonym response = service.getSynonym(options);

    System.assertEquals(
      'synonym',
      response.getSynonym()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateSynonym() {
    String body = IBMWatsonMockResponses.assistantV1Synonym();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';

    IBMAssistantV1Models.UpdateSynonymOptions options = new IBMAssistantV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Synonym response = service.updateSynonym(options);

    System.assertEquals(
      'synonym',
      response.getSynonym()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteSynonym() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String entity = 'entity';
    String value = 'value';
    String synonym = 'synonym';

    IBMAssistantV1Models.DeleteSynonymOptions options = new IBMAssistantV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entity)
      .value(value)
      .synonym(synonym)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteSynonym(options);

    Test.stopTest();
  }
  static testMethod void testListDialogNodes() {
    String body = IBMWatsonMockResponses.assistantV1DialogNodeCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.ListDialogNodesOptions options = new IBMAssistantV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNodeCollection response = service.listDialogNodes(options);

    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getDialogNodes().get(0).getConditions()
    );
    System.assertEquals(
      'parent',
      response.getDialogNodes().get(0).getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getDialogNodes().get(0).getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getDialogNodes().get(0).getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getDialogNodes().get(0).getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getDialogNodes().get(0).getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getDialogNodes().get(0).getTitle()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getXType()
    );
    System.assertEquals(
      'event_name',
      response.getDialogNodes().get(0).getEventName()
    );
    System.assertEquals(
      'variable',
      response.getDialogNodes().get(0).getVariable()
    );
    System.assertEquals(
      'name',
      response.getDialogNodes().get(0).getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getDialogNodes().get(0).getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getDialogNodes().get(0).getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getDialogNodes().get(0).getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getDialogNodes().get(0).getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getDialogNodes().get(0).getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getDialogNodes().get(0).getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getDialogNodes().get(0).getUserLabel()
    );
    System.assertEquals(
      true,
      response.getDialogNodes().get(0).getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getDialogNodes().get(0).getUpdated()
    );
    System.assertEquals(
      'refresh_url',
      response.getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getTotal()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testCreateDialogNode() {
    String body = IBMWatsonMockResponses.assistantV1DialogNode();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';
    String behavior = 'behavior';
    String name = 'name';
    String resultVariable = 'result_variable';

    IBMAssistantV1Models.CreateDialogNodeOptions options = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNode response = service.createDialogNode(options);

    System.assertEquals(
      'dialog_node',
      response.getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getConditions()
    );
    System.assertEquals(
      'parent',
      response.getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getTitle()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );
    System.assertEquals(
      'event_name',
      response.getEventName()
    );
    System.assertEquals(
      'variable',
      response.getVariable()
    );
    System.assertEquals(
      'name',
      response.getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getUserLabel()
    );
    System.assertEquals(
      true,
      response.getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetDialogNode() {
    String body = IBMWatsonMockResponses.assistantV1DialogNode();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';

    IBMAssistantV1Models.GetDialogNodeOptions options = new IBMAssistantV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNode response = service.getDialogNode(options);

    System.assertEquals(
      'dialog_node',
      response.getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getConditions()
    );
    System.assertEquals(
      'parent',
      response.getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getTitle()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );
    System.assertEquals(
      'event_name',
      response.getEventName()
    );
    System.assertEquals(
      'variable',
      response.getVariable()
    );
    System.assertEquals(
      'name',
      response.getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getUserLabel()
    );
    System.assertEquals(
      true,
      response.getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateDialogNode() {
    String body = IBMWatsonMockResponses.assistantV1DialogNode();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';
    String behavior = 'behavior';
    String name = 'name';
    String resultVariable = 'result_variable';

    IBMAssistantV1Models.UpdateDialogNodeOptions options = new IBMAssistantV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNode response = service.updateDialogNode(options);

    System.assertEquals(
      'dialog_node',
      response.getDialogNode()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'conditions',
      response.getConditions()
    );
    System.assertEquals(
      'parent',
      response.getParent()
    );
    System.assertEquals(
      'previous_sibling',
      response.getPreviousSibling()
    );
    System.assertEquals(
      'response_type',
      response.getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getValues().get(0).getText()
    );
    System.assertEquals(
      'selection_policy',
      response.getOutput().getGeneric().get(0).getSelectionPolicy()
    );
    System.assertEquals(
      'delimiter',
      response.getOutput().getGeneric().get(0).getDelimiter()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'query',
      response.getOutput().getGeneric().get(0).getQuery()
    );
    System.assertEquals(
      'query_type',
      response.getOutput().getGeneric().get(0).getQueryType()
    );
    System.assertEquals(
      'filter',
      response.getOutput().getGeneric().get(0).getFilter()
    );
    System.assertEquals(
      'discovery_version',
      response.getOutput().getGeneric().get(0).getDiscoveryVersion()
    );
    System.assertEquals(
      true,
      response.getOutput().getModifiers().getOverwrite()
    );
    System.assertEquals(
      'behavior',
      response.getNextStep().getBehavior()
    );
    System.assertEquals(
      'dialog_node',
      response.getNextStep().getDialogNode()
    );
    System.assertEquals(
      'selector',
      response.getNextStep().getSelector()
    );
    System.assertEquals(
      'title',
      response.getTitle()
    );
    System.assertEquals(
      'type',
      response.getXType()
    );
    System.assertEquals(
      'event_name',
      response.getEventName()
    );
    System.assertEquals(
      'variable',
      response.getVariable()
    );
    System.assertEquals(
      'name',
      response.getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'digress_in',
      response.getDigressIn()
    );
    System.assertEquals(
      'digress_out',
      response.getDigressOut()
    );
    System.assertEquals(
      'digress_out_slots',
      response.getDigressOutSlots()
    );
    System.assertEquals(
      'user_label',
      response.getUserLabel()
    );
    System.assertEquals(
      true,
      response.getDisabled()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteDialogNode() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';
    String dialogNode = 'dialog_node';

    IBMAssistantV1Models.DeleteDialogNodeOptions options = new IBMAssistantV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNode)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteDialogNode(options);

    Test.stopTest();
  }
  static testMethod void testListLogs() {
    String body = IBMWatsonMockResponses.assistantV1LogCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String workspaceId = 'workspace_id';

    IBMAssistantV1Models.ListLogsOptions options = new IBMAssistantV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.LogCollection response = service.listLogs(options);

    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getRequest().getAlternateIntents()
    );
    System.assertEquals(
      'conversation_id',
      response.getLogs().get(0).getRequest().getContext().getConversationId()
    );
    System.assertEquals(
      'deployment',
      response.getLogs().get(0).getRequest().getContext().getMetadata().getDeployment()
    );
    System.assertEquals(
      'user_id',
      response.getLogs().get(0).getRequest().getContext().getMetadata().getUserId()
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'level',
      response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getLevel()
    );
    System.assertEquals(
      'msg',
      response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getMsg()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode()
    );
    System.assertEquals(
      'name',
      response.getLogs().get(0).getRequest().getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getLogs().get(0).getRequest().getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getLogs().get(0).getRequest().getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getLogs().get(0).getRequest().getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getResponse().getAlternateIntents()
    );
    System.assertEquals(
      'conversation_id',
      response.getLogs().get(0).getResponse().getContext().getConversationId()
    );
    System.assertEquals(
      'deployment',
      response.getLogs().get(0).getResponse().getContext().getMetadata().getDeployment()
    );
    System.assertEquals(
      'user_id',
      response.getLogs().get(0).getResponse().getContext().getMetadata().getUserId()
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'level',
      response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getLevel()
    );
    System.assertEquals(
      'msg',
      response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getMsg()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode()
    );
    System.assertEquals(
      'name',
      response.getLogs().get(0).getResponse().getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getLogs().get(0).getResponse().getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getLogs().get(0).getResponse().getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getLogs().get(0).getResponse().getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'log_id',
      response.getLogs().get(0).getLogId()
    );
    System.assertEquals(
      'request_timestamp',
      response.getLogs().get(0).getRequestTimestamp()
    );
    System.assertEquals(
      'response_timestamp',
      response.getLogs().get(0).getResponseTimestamp()
    );
    System.assertEquals(
      'workspace_id',
      response.getLogs().get(0).getWorkspaceId()
    );
    System.assertEquals(
      'language',
      response.getLogs().get(0).getLanguage()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testListAllLogs() {
    String body = IBMWatsonMockResponses.assistantV1LogCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String filter = 'filter';

    IBMAssistantV1Models.ListAllLogsOptions options = new IBMAssistantV1Models.ListAllLogsOptionsBuilder()
      .filter(filter)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.LogCollection response = service.listAllLogs(options);

    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getRequest().getAlternateIntents()
    );
    System.assertEquals(
      'conversation_id',
      response.getLogs().get(0).getRequest().getContext().getConversationId()
    );
    System.assertEquals(
      'deployment',
      response.getLogs().get(0).getRequest().getContext().getMetadata().getDeployment()
    );
    System.assertEquals(
      'user_id',
      response.getLogs().get(0).getRequest().getContext().getMetadata().getUserId()
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'level',
      response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getLevel()
    );
    System.assertEquals(
      'msg',
      response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getMsg()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode()
    );
    System.assertEquals(
      'name',
      response.getLogs().get(0).getRequest().getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getLogs().get(0).getRequest().getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getLogs().get(0).getRequest().getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getLogs().get(0).getRequest().getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getResponse().getAlternateIntents()
    );
    System.assertEquals(
      'conversation_id',
      response.getLogs().get(0).getResponse().getContext().getConversationId()
    );
    System.assertEquals(
      'deployment',
      response.getLogs().get(0).getResponse().getContext().getMetadata().getDeployment()
    );
    System.assertEquals(
      'user_id',
      response.getLogs().get(0).getResponse().getContext().getMetadata().getUserId()
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'level',
      response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getLevel()
    );
    System.assertEquals(
      'msg',
      response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getMsg()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'nodes_visited',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0)
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0)
    );
    System.assertEquals(
      'response_type',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime()
    );
    System.assertEquals(
      true,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping()
    );
    System.assertEquals(
      'source',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource()
    );
    System.assertEquals(
      'title',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle()
    );
    System.assertEquals(
      'description',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription()
    );
    System.assertEquals(
      'preference',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference()
    );
    System.assertEquals(
      'label',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel()
    );
    System.assertEquals(
      'text',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      'intent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'message_to_human_agent',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent()
    );
    System.assertEquals(
      'topic',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode()
    );
    System.assertEquals(
      'dialog_node',
      response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode()
    );
    System.assertEquals(
      'name',
      response.getLogs().get(0).getResponse().getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getLogs().get(0).getResponse().getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getLogs().get(0).getResponse().getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getLogs().get(0).getResponse().getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'log_id',
      response.getLogs().get(0).getLogId()
    );
    System.assertEquals(
      'request_timestamp',
      response.getLogs().get(0).getRequestTimestamp()
    );
    System.assertEquals(
      'response_timestamp',
      response.getLogs().get(0).getResponseTimestamp()
    );
    System.assertEquals(
      'workspace_id',
      response.getLogs().get(0).getWorkspaceId()
    );
    System.assertEquals(
      'language',
      response.getLogs().get(0).getLanguage()
    );
    System.assertEquals(
      'next_url',
      response.getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getPagination().getMatched()
    );
    System.assertEquals(
      'next_cursor',
      response.getPagination().getNextCursor()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteUserData() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customerId = 'customer_id';

    IBMAssistantV1Models.DeleteUserDataOptions options = new IBMAssistantV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(options);

    Test.stopTest();
  }
}
