@isTest
private class IBMAssistantV1Test {
  private static IBMAssistantV1 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMAssistantV1('2019-02-28', new IBMWatsonNoAuthAuthenticator());
    mockFile = new IBMWatsonFile.FileBuilder()
      .name('mock-file.txt')
      .description('Test file')
      .contentType('text/plain')
      .body(blob.valueOf('Test string'))
      .build();
  }

  static IBMWatsonMapModel createMockMap() {
    IBMWatsonMapModel mockMap = new IBMWatsonMapModel();
    mockMap.put('testKey', 'testVal');
    return mockMap;
  }

  static testMethod void testCaptureGroupModel() {
    Test.startTest();

    IBMAssistantV1Models.CaptureGroup testRequestModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getXGroup());
    System.assertEquals(new List<Long> { 38 }, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testContextModel() {
    Test.startTest();
    IBMAssistantV1Models.MessageContextMetadata messageContextMetadataModel = new IBMAssistantV1Models.MessageContextMetadataBuilder()
      .deployment('testString')
      .userId('testString')
      .build();
    IBMAssistantV1Models.SystemResponse systemResponseModel = new IBMAssistantV1Models.SystemResponseBuilder()
      .build();

    IBMAssistantV1Models.Context testRequestModel = new IBMAssistantV1Models.ContextBuilder()
      .conversationId('testString')
      .xSystem(systemResponseModel)
      .metadata(messageContextMetadataModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getConversationId());
    System.assertEquals(systemResponseModel, testRequestModel.getXSystem());
    System.assertEquals(messageContextMetadataModel, testRequestModel.getMetadata());
    Test.stopTest();
  }
  static testMethod void testCounterexampleModel() {
    Test.startTest();

    IBMAssistantV1Models.Counterexample testRequestModel = new IBMAssistantV1Models.CounterexampleBuilder()
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testCreateCounterexampleOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.CreateCounterexampleOptions testRequestModel = new IBMAssistantV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testCreateDialogNodeOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();

    IBMAssistantV1Models.CreateDialogNodeOptions testRequestModel = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .description('testString')
      .conditions('testString')
      .parent('testString')
      .previousSibling('testString')
      .output(dialogNodeOutputModel)
      .context(createMockMap())
      .metadata(createMockMap())
      .nextStep(dialogNodeNextStepModel)
      .title('testString')
      .xType('standard')
      .eventName('focus')
      .variable('testString')
      .actions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .digressIn('not_available')
      .digressOut('allow_returning')
      .digressOutSlots('not_allowed')
      .userLabel('testString')
      .disambiguationOptOut(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.dialogNode());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals('testString', testRequestModel.conditions());
    System.assertEquals('testString', testRequestModel.parent());
    System.assertEquals('testString', testRequestModel.previousSibling());
    System.assertEquals(dialogNodeOutputModel, testRequestModel.output());
    System.assertEquals(createMockMap(), testRequestModel.context());
    System.assertEquals(createMockMap(), testRequestModel.metadata());
    System.assertEquals(dialogNodeNextStepModel, testRequestModel.nextStep());
    System.assertEquals('testString', testRequestModel.title());
    System.assertEquals('standard', testRequestModel.xType());
    System.assertEquals('focus', testRequestModel.eventName());
    System.assertEquals('testString', testRequestModel.variable());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel }, testRequestModel.actions());
    System.assertEquals('not_available', testRequestModel.digressIn());
    System.assertEquals('allow_returning', testRequestModel.digressOut());
    System.assertEquals('not_allowed', testRequestModel.digressOutSlots());
    System.assertEquals('testString', testRequestModel.userLabel());
    System.assertEquals(true, testRequestModel.disambiguationOptOut());
    Test.stopTest();
  }
  static testMethod void testCreateEntityModel() {
    Test.startTest();
    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();

    IBMAssistantV1Models.CreateEntity testRequestModel = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity('testString')
      .description('testString')
      .metadata(createMockMap())
      .fuzzyMatch(true)
      .values(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals(createMockMap(), testRequestModel.metadata());
    System.assertEquals(true, testRequestModel.fuzzyMatch());
    System.assertEquals(new List<IBMAssistantV1Models.CreateValue> { createValueModel }, testRequestModel.values());
    Test.stopTest();
  }
  static testMethod void testCreateEntityOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();

    IBMAssistantV1Models.CreateEntityOptions testRequestModel = new IBMAssistantV1Models.CreateEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .description('testString')
      .metadata(createMockMap())
      .fuzzyMatch(true)
      .values(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals(createMockMap(), testRequestModel.metadata());
    System.assertEquals(true, testRequestModel.fuzzyMatch());
    System.assertEquals(new List<IBMAssistantV1Models.CreateValue> { createValueModel }, testRequestModel.values());
    Test.stopTest();
  }
  static testMethod void testCreateExampleOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();

    IBMAssistantV1Models.CreateExampleOptions testRequestModel = new IBMAssistantV1Models.CreateExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals(new List<IBMAssistantV1Models.Mention> { mentionModel }, testRequestModel.mentions());
    Test.stopTest();
  }
  static testMethod void testCreateIntentModel() {
    Test.startTest();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();

    IBMAssistantV1Models.CreateIntent testRequestModel = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent('testString')
      .description('testString')
      .examples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals(new List<IBMAssistantV1Models.Example> { exampleModel }, testRequestModel.examples());
    Test.stopTest();
  }
  static testMethod void testCreateIntentOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();

    IBMAssistantV1Models.CreateIntentOptions testRequestModel = new IBMAssistantV1Models.CreateIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .description('testString')
      .examples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals(new List<IBMAssistantV1Models.Example> { exampleModel }, testRequestModel.examples());
    Test.stopTest();
  }
  static testMethod void testCreateSynonymOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.CreateSynonymOptions testRequestModel = new IBMAssistantV1Models.CreateSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals('testString', testRequestModel.synonym());
    Test.stopTest();
  }
  static testMethod void testCreateValueModel() {
    Test.startTest();

    IBMAssistantV1Models.CreateValue testRequestModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals(createMockMap(), testRequestModel.metadata());
    System.assertEquals('synonyms', testRequestModel.xType());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.synonyms());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.patterns());
    Test.stopTest();
  }
  static testMethod void testCreateValueOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.CreateValueOptions testRequestModel = new IBMAssistantV1Models.CreateValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals(createMockMap(), testRequestModel.metadata());
    System.assertEquals('synonyms', testRequestModel.xType());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.synonyms());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.patterns());
    Test.stopTest();
  }
  static testMethod void testCreateWorkspaceOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.WebhookHeader webhookHeaderModel = new IBMAssistantV1Models.WebhookHeaderBuilder()
      .name('testString')
      .value('testString')
      .build();
    IBMAssistantV1Models.Webhook webhookModel = new IBMAssistantV1Models.WebhookBuilder()
      .url('testString')
      .name('testString')
      .headers(new List<IBMAssistantV1Models.WebhookHeader> { webhookHeaderModel })
      .build();
    IBMAssistantV1Models.Counterexample counterexampleModel = new IBMAssistantV1Models.CounterexampleBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();
    IBMAssistantV1Models.DialogNode dialogNodeModel = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode('testString')
      .description('testString')
      .conditions('testString')
      .parent('testString')
      .previousSibling('testString')
      .output(dialogNodeOutputModel)
      .context(createMockMap())
      .metadata(createMockMap())
      .nextStep(dialogNodeNextStepModel)
      .title('testString')
      .xType('standard')
      .eventName('focus')
      .variable('testString')
      .actions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .digressIn('not_available')
      .digressOut('allow_returning')
      .digressOutSlots('not_allowed')
      .userLabel('testString')
      .disambiguationOptOut(true)
      .build();
    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    IBMAssistantV1Models.CreateEntity createEntityModel = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity('testString')
      .description('testString')
      .metadata(createMockMap())
      .fuzzyMatch(true)
      .values(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .build();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    IBMAssistantV1Models.CreateIntent createIntentModel = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent('testString')
      .description('testString')
      .examples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsOffTopic workspaceSystemSettingsOffTopicModel = new IBMAssistantV1Models.WorkspaceSystemSettingsOffTopicBuilder()
      .enabled(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation workspaceSystemSettingsDisambiguationModel = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .prompt('testString')
      .noneOfTheAbovePrompt('testString')
      .enabled(true)
      .sensitivity('auto')
      .randomize(true)
      .maxSuggestions(38)
      .suggestionTextPolicy('testString')
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsTooling workspaceSystemSettingsToolingModel = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettings workspaceSystemSettingsModel = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .tooling(workspaceSystemSettingsToolingModel)
      .disambiguation(workspaceSystemSettingsDisambiguationModel)
      .humanAgentAssist(createMockMap())
      .offTopic(workspaceSystemSettingsOffTopicModel)
      .build();

    IBMAssistantV1Models.CreateWorkspaceOptions testRequestModel = new IBMAssistantV1Models.CreateWorkspaceOptionsBuilder()
      .name('testString')
      .description('testString')
      .language('testString')
      .metadata(createMockMap())
      .learningOptOut(true)
      .systemSettings(workspaceSystemSettingsModel)
      .intents(new List<IBMAssistantV1Models.CreateIntent> { createIntentModel })
      .entities(new List<IBMAssistantV1Models.CreateEntity> { createEntityModel })
      .dialogNodes(new List<IBMAssistantV1Models.DialogNode> { dialogNodeModel })
      .counterexamples(new List<IBMAssistantV1Models.Counterexample> { counterexampleModel })
      .webhooks(new List<IBMAssistantV1Models.Webhook> { webhookModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals('testString', testRequestModel.language());
    System.assertEquals(createMockMap(), testRequestModel.metadata());
    System.assertEquals(true, testRequestModel.learningOptOut());
    System.assertEquals(workspaceSystemSettingsModel, testRequestModel.systemSettings());
    System.assertEquals(new List<IBMAssistantV1Models.CreateIntent> { createIntentModel }, testRequestModel.intents());
    System.assertEquals(new List<IBMAssistantV1Models.CreateEntity> { createEntityModel }, testRequestModel.entities());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNode> { dialogNodeModel }, testRequestModel.dialogNodes());
    System.assertEquals(new List<IBMAssistantV1Models.Counterexample> { counterexampleModel }, testRequestModel.counterexamples());
    System.assertEquals(new List<IBMAssistantV1Models.Webhook> { webhookModel }, testRequestModel.webhooks());
    Test.stopTest();
  }
  static testMethod void testDeleteCounterexampleOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteCounterexampleOptions testRequestModel = new IBMAssistantV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testDeleteDialogNodeOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteDialogNodeOptions testRequestModel = new IBMAssistantV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.dialogNode());
    Test.stopTest();
  }
  static testMethod void testDeleteEntityOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteEntityOptions testRequestModel = new IBMAssistantV1Models.DeleteEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    Test.stopTest();
  }
  static testMethod void testDeleteExampleOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteExampleOptions testRequestModel = new IBMAssistantV1Models.DeleteExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals('testString', testRequestModel.text());
    Test.stopTest();
  }
  static testMethod void testDeleteIntentOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteIntentOptions testRequestModel = new IBMAssistantV1Models.DeleteIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    Test.stopTest();
  }
  static testMethod void testDeleteSynonymOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteSynonymOptions testRequestModel = new IBMAssistantV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals('testString', testRequestModel.synonym());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteUserDataOptions testRequestModel = new IBMAssistantV1Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDeleteValueOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteValueOptions testRequestModel = new IBMAssistantV1Models.DeleteValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    Test.stopTest();
  }
  static testMethod void testDeleteWorkspaceOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.DeleteWorkspaceOptions testRequestModel = new IBMAssistantV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    Test.stopTest();
  }
  static testMethod void testDialogNodeModel() {
    Test.startTest();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();

    IBMAssistantV1Models.DialogNode testRequestModel = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode('testString')
      .description('testString')
      .conditions('testString')
      .parent('testString')
      .previousSibling('testString')
      .output(dialogNodeOutputModel)
      .context(createMockMap())
      .metadata(createMockMap())
      .nextStep(dialogNodeNextStepModel)
      .title('testString')
      .xType('standard')
      .eventName('focus')
      .variable('testString')
      .actions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .digressIn('not_available')
      .digressOut('allow_returning')
      .digressOutSlots('not_allowed')
      .userLabel('testString')
      .disambiguationOptOut(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getDialogNode());
    System.assertEquals('testString', testRequestModel.getDescription());
    System.assertEquals('testString', testRequestModel.getConditions());
    System.assertEquals('testString', testRequestModel.getParent());
    System.assertEquals('testString', testRequestModel.getPreviousSibling());
    System.assertEquals(dialogNodeOutputModel, testRequestModel.getOutput());
    System.assertEquals(createMockMap(), testRequestModel.getContext());
    System.assertEquals(createMockMap(), testRequestModel.getMetadata());
    System.assertEquals(dialogNodeNextStepModel, testRequestModel.getNextStep());
    System.assertEquals('testString', testRequestModel.getTitle());
    System.assertEquals('standard', testRequestModel.getXType());
    System.assertEquals('focus', testRequestModel.getEventName());
    System.assertEquals('testString', testRequestModel.getVariable());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel }, testRequestModel.getActions());
    System.assertEquals('not_available', testRequestModel.getDigressIn());
    System.assertEquals('allow_returning', testRequestModel.getDigressOut());
    System.assertEquals('not_allowed', testRequestModel.getDigressOutSlots());
    System.assertEquals('testString', testRequestModel.getUserLabel());
    System.assertEquals(true, testRequestModel.getDisambiguationOptOut());
    Test.stopTest();
  }
  static testMethod void testDialogNodeActionModel() {
    Test.startTest();

    IBMAssistantV1Models.DialogNodeAction testRequestModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getName());
    System.assertEquals('client', testRequestModel.getXType());
    System.assertEquals(createMockMap(), testRequestModel.getParameters());
    System.assertEquals('testString', testRequestModel.getResultVariable());
    System.assertEquals('testString', testRequestModel.getCredentials());
    Test.stopTest();
  }
  static testMethod void testDialogNodeNextStepModel() {
    Test.startTest();

    IBMAssistantV1Models.DialogNodeNextStep testRequestModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('get_user_input', testRequestModel.getBehavior());
    System.assertEquals('testString', testRequestModel.getDialogNode());
    System.assertEquals('condition', testRequestModel.getSelector());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputModel() {
    Test.startTest();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();

    IBMAssistantV1Models.DialogNodeOutput testRequestModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel }, testRequestModel.getGeneric());
    System.assertEquals(dialogNodeOutputModifiersModel, testRequestModel.getModifiers());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputGenericModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();

    IBMAssistantV1Models.DialogNodeOutputGeneric testRequestModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('text', testRequestModel.getResponseType());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel }, testRequestModel.getValues());
    System.assertEquals('sequential', testRequestModel.getSelectionPolicy());
    System.assertEquals('testString', testRequestModel.getDelimiter());
    System.assertEquals(38, testRequestModel.getXTime());
    System.assertEquals(true, testRequestModel.getTyping());
    System.assertEquals('testString', testRequestModel.getSource());
    System.assertEquals('testString', testRequestModel.getTitle());
    System.assertEquals('testString', testRequestModel.getDescription());
    System.assertEquals('dropdown', testRequestModel.getPreference());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel }, testRequestModel.getOptions());
    System.assertEquals('testString', testRequestModel.getMessageToHumanAgent());
    System.assertEquals('testString', testRequestModel.getQuery());
    System.assertEquals('natural_language', testRequestModel.getQueryType());
    System.assertEquals('testString', testRequestModel.getFilter());
    System.assertEquals('testString', testRequestModel.getDiscoveryVersion());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputModifiersModel() {
    Test.startTest();

    IBMAssistantV1Models.DialogNodeOutputModifiers testRequestModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.getOverwrite());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputOptionsElementModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();

    IBMAssistantV1Models.DialogNodeOutputOptionsElement testRequestModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getLabel());
    System.assertEquals(dialogNodeOutputOptionsElementValueModel, testRequestModel.getValue());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputOptionsElementValueModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();

    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue testRequestModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(messageInputModel, testRequestModel.getInput());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel }, testRequestModel.getIntents());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel }, testRequestModel.getEntities());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputTextValuesElementModel() {
    Test.startTest();

    IBMAssistantV1Models.DialogNodeOutputTextValuesElement testRequestModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testDialogNodeVisitedDetailsModel() {
    Test.startTest();

    IBMAssistantV1Models.DialogNodeVisitedDetails testRequestModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getDialogNode());
    System.assertEquals('testString', testRequestModel.getTitle());
    System.assertEquals('testString', testRequestModel.getConditions());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogSuggestionResponseGeneric dialogSuggestionResponseGenericModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.DialogNodeVisitedDetails dialogNodeVisitedDetailsModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();
    IBMAssistantV1Models.DialogSuggestionOutput dialogSuggestionOutputModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel })
      .build();
    IBMAssistantV1Models.DialogSuggestionValue dialogSuggestionValueModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();

    IBMAssistantV1Models.DialogSuggestion testRequestModel = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label('testString')
      .value(dialogSuggestionValueModel)
      .output(dialogSuggestionOutputModel)
      .dialogNode('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getLabel());
    System.assertEquals(dialogSuggestionValueModel, testRequestModel.getValue());
    System.assertEquals(dialogSuggestionOutputModel, testRequestModel.getOutput());
    System.assertEquals('testString', testRequestModel.getDialogNode());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionOutputModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogSuggestionResponseGeneric dialogSuggestionResponseGenericModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.DialogNodeVisitedDetails dialogNodeVisitedDetailsModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();

    IBMAssistantV1Models.DialogSuggestionOutput testRequestModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<String> { 'testString' }, testRequestModel.getNodesVisited());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel }, testRequestModel.getNodesVisitedDetails());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.getText());
    System.assertEquals(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel }, testRequestModel.getGeneric());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionResponseGenericModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();

    IBMAssistantV1Models.DialogSuggestionResponseGeneric testRequestModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('text', testRequestModel.getResponseType());
    System.assertEquals('testString', testRequestModel.getText());
    System.assertEquals(38, testRequestModel.getXTime());
    System.assertEquals(true, testRequestModel.getTyping());
    System.assertEquals('testString', testRequestModel.getSource());
    System.assertEquals('testString', testRequestModel.getTitle());
    System.assertEquals('testString', testRequestModel.getDescription());
    System.assertEquals('dropdown', testRequestModel.getPreference());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel }, testRequestModel.getOptions());
    System.assertEquals('testString', testRequestModel.getMessageToHumanAgent());
    System.assertEquals('testString', testRequestModel.getDialogNode());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionValueModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();

    IBMAssistantV1Models.DialogSuggestionValue testRequestModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(messageInputModel, testRequestModel.getInput());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel }, testRequestModel.getIntents());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel }, testRequestModel.getEntities());
    Test.stopTest();
  }
  static testMethod void testExampleModel() {
    Test.startTest();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();

    IBMAssistantV1Models.Example testRequestModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getText());
    System.assertEquals(new List<IBMAssistantV1Models.Mention> { mentionModel }, testRequestModel.getMentions());
    Test.stopTest();
  }
  static testMethod void testGetCounterexampleOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetCounterexampleOptions testRequestModel = new IBMAssistantV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetDialogNodeOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetDialogNodeOptions testRequestModel = new IBMAssistantV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.dialogNode());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetEntityOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetEntityOptions testRequestModel = new IBMAssistantV1Models.GetEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .xExport(true)
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetExampleOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetExampleOptions testRequestModel = new IBMAssistantV1Models.GetExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetIntentOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetIntentOptions testRequestModel = new IBMAssistantV1Models.GetIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .xExport(true)
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetSynonymOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetSynonymOptions testRequestModel = new IBMAssistantV1Models.GetSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals('testString', testRequestModel.synonym());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetValueOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetValueOptions testRequestModel = new IBMAssistantV1Models.GetValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .xExport(true)
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testGetWorkspaceOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.GetWorkspaceOptions testRequestModel = new IBMAssistantV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId('testString')
      .xExport(true)
      .includeAudit(true)
      .xSort('stable')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(true, testRequestModel.includeAudit());
    System.assertEquals('stable', testRequestModel.xSort());
    Test.stopTest();
  }
  static testMethod void testListAllLogsOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListAllLogsOptions testRequestModel = new IBMAssistantV1Models.ListAllLogsOptionsBuilder()
      .filter('testString')
      .xSort('testString')
      .pageLimit(38)
      .cursor('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.filter());
    System.assertEquals('testString', testRequestModel.xSort());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('testString', testRequestModel.cursor());
    Test.stopTest();
  }
  static testMethod void testListCounterexamplesOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListCounterexamplesOptions testRequestModel = new IBMAssistantV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId('testString')
      .pageLimit(38)
      .xSort('text')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('text', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListDialogNodesOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListDialogNodesOptions testRequestModel = new IBMAssistantV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId('testString')
      .pageLimit(38)
      .xSort('dialog_node')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('dialog_node', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListEntitiesOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListEntitiesOptions testRequestModel = new IBMAssistantV1Models.ListEntitiesOptionsBuilder()
      .workspaceId('testString')
      .xExport(true)
      .pageLimit(38)
      .xSort('entity')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('entity', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListExamplesOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListExamplesOptions testRequestModel = new IBMAssistantV1Models.ListExamplesOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .pageLimit(38)
      .xSort('text')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('text', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListIntentsOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListIntentsOptions testRequestModel = new IBMAssistantV1Models.ListIntentsOptionsBuilder()
      .workspaceId('testString')
      .xExport(true)
      .pageLimit(38)
      .xSort('intent')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('intent', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListLogsOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListLogsOptions testRequestModel = new IBMAssistantV1Models.ListLogsOptionsBuilder()
      .workspaceId('testString')
      .xSort('testString')
      .filter('testString')
      .pageLimit(38)
      .cursor('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.filter());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('testString', testRequestModel.cursor());
    Test.stopTest();
  }
  static testMethod void testListMentionsOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListMentionsOptions testRequestModel = new IBMAssistantV1Models.ListMentionsOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .xExport(true)
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListSynonymsOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListSynonymsOptions testRequestModel = new IBMAssistantV1Models.ListSynonymsOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .pageLimit(38)
      .xSort('synonym')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('synonym', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListValuesOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListValuesOptions testRequestModel = new IBMAssistantV1Models.ListValuesOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .xExport(true)
      .pageLimit(38)
      .xSort('value')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals(true, testRequestModel.xExport());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('value', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testListWorkspacesOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.ListWorkspacesOptions testRequestModel = new IBMAssistantV1Models.ListWorkspacesOptionsBuilder()
      .pageLimit(38)
      .xSort('name')
      .cursor('testString')
      .includeAudit(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('name', testRequestModel.xSort());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals(true, testRequestModel.includeAudit());
    Test.stopTest();
  }
  static testMethod void testLogMessageModel() {
    Test.startTest();

    IBMAssistantV1Models.LogMessage testRequestModel = new IBMAssistantV1Models.LogMessageBuilder()
      .level('info')
      .msg('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('info', testRequestModel.getLevel());
    System.assertEquals('testString', testRequestModel.getMsg());
    Test.stopTest();
  }
  static testMethod void testMentionModel() {
    Test.startTest();

    IBMAssistantV1Models.Mention testRequestModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getEntity());
    System.assertEquals(new List<Long> { 38 }, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testMessageContextMetadataModel() {
    Test.startTest();

    IBMAssistantV1Models.MessageContextMetadata testRequestModel = new IBMAssistantV1Models.MessageContextMetadataBuilder()
      .deployment('testString')
      .userId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getDeployment());
    System.assertEquals('testString', testRequestModel.getUserId());
    Test.stopTest();
  }
  static testMethod void testMessageInputModel() {
    Test.startTest();

    IBMAssistantV1Models.MessageInput testRequestModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testMessageOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogSuggestionResponseGeneric dialogSuggestionResponseGenericModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.DialogNodeVisitedDetails dialogNodeVisitedDetailsModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();
    IBMAssistantV1Models.DialogSuggestionOutput dialogSuggestionOutputModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel })
      .build();
    IBMAssistantV1Models.DialogSuggestionValue dialogSuggestionValueModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogSuggestion dialogSuggestionModel = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label('testString')
      .value(dialogSuggestionValueModel)
      .output(dialogSuggestionOutputModel)
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.RuntimeResponseGeneric runtimeResponseGenericModel = new IBMAssistantV1Models.RuntimeResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .suggestions(new List<IBMAssistantV1Models.DialogSuggestion> { dialogSuggestionModel })
      .build();
    IBMAssistantV1Models.LogMessage logMessageModel = new IBMAssistantV1Models.LogMessageBuilder()
      .level('info')
      .msg('testString')
      .build();
    IBMAssistantV1Models.OutputData outputDataModel = new IBMAssistantV1Models.OutputDataBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .logMessages(new List<IBMAssistantV1Models.LogMessage> { logMessageModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.RuntimeResponseGeneric> { runtimeResponseGenericModel })
      .build();
    IBMAssistantV1Models.MessageContextMetadata messageContextMetadataModel = new IBMAssistantV1Models.MessageContextMetadataBuilder()
      .deployment('testString')
      .userId('testString')
      .build();
    IBMAssistantV1Models.SystemResponse systemResponseModel = new IBMAssistantV1Models.SystemResponseBuilder()
      .build();
    IBMAssistantV1Models.Context contextModel = new IBMAssistantV1Models.ContextBuilder()
      .conversationId('testString')
      .xSystem(systemResponseModel)
      .metadata(messageContextMetadataModel)
      .build();

    IBMAssistantV1Models.MessageOptions testRequestModel = new IBMAssistantV1Models.MessageOptionsBuilder()
      .workspaceId('testString')
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .alternateIntents(true)
      .context(contextModel)
      .output(outputDataModel)
      .nodesVisitedDetails(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals(messageInputModel, testRequestModel.input());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel }, testRequestModel.intents());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel }, testRequestModel.entities());
    System.assertEquals(true, testRequestModel.alternateIntents());
    System.assertEquals(contextModel, testRequestModel.context());
    System.assertEquals(outputDataModel, testRequestModel.output());
    System.assertEquals(true, testRequestModel.nodesVisitedDetails());
    Test.stopTest();
  }
  static testMethod void testMessageRequestModel() {
    Test.startTest();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogSuggestionResponseGeneric dialogSuggestionResponseGenericModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.DialogNodeVisitedDetails dialogNodeVisitedDetailsModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();
    IBMAssistantV1Models.DialogSuggestionOutput dialogSuggestionOutputModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel })
      .build();
    IBMAssistantV1Models.DialogSuggestionValue dialogSuggestionValueModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogSuggestion dialogSuggestionModel = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label('testString')
      .value(dialogSuggestionValueModel)
      .output(dialogSuggestionOutputModel)
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.RuntimeResponseGeneric runtimeResponseGenericModel = new IBMAssistantV1Models.RuntimeResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .suggestions(new List<IBMAssistantV1Models.DialogSuggestion> { dialogSuggestionModel })
      .build();
    IBMAssistantV1Models.LogMessage logMessageModel = new IBMAssistantV1Models.LogMessageBuilder()
      .level('info')
      .msg('testString')
      .build();
    IBMAssistantV1Models.OutputData outputDataModel = new IBMAssistantV1Models.OutputDataBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .logMessages(new List<IBMAssistantV1Models.LogMessage> { logMessageModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.RuntimeResponseGeneric> { runtimeResponseGenericModel })
      .build();
    IBMAssistantV1Models.MessageContextMetadata messageContextMetadataModel = new IBMAssistantV1Models.MessageContextMetadataBuilder()
      .deployment('testString')
      .userId('testString')
      .build();
    IBMAssistantV1Models.SystemResponse systemResponseModel = new IBMAssistantV1Models.SystemResponseBuilder()
      .build();
    IBMAssistantV1Models.Context contextModel = new IBMAssistantV1Models.ContextBuilder()
      .conversationId('testString')
      .xSystem(systemResponseModel)
      .metadata(messageContextMetadataModel)
      .build();

    IBMAssistantV1Models.MessageRequest testRequestModel = new IBMAssistantV1Models.MessageRequestBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .alternateIntents(true)
      .context(contextModel)
      .output(outputDataModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(messageInputModel, testRequestModel.getInput());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel }, testRequestModel.getIntents());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel }, testRequestModel.getEntities());
    System.assertEquals(true, testRequestModel.getAlternateIntents());
    System.assertEquals(contextModel, testRequestModel.getContext());
    System.assertEquals(outputDataModel, testRequestModel.getOutput());
    Test.stopTest();
  }
  static testMethod void testOutputDataModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogSuggestionResponseGeneric dialogSuggestionResponseGenericModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.DialogNodeVisitedDetails dialogNodeVisitedDetailsModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();
    IBMAssistantV1Models.DialogSuggestionOutput dialogSuggestionOutputModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel })
      .build();
    IBMAssistantV1Models.DialogSuggestionValue dialogSuggestionValueModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogSuggestion dialogSuggestionModel = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label('testString')
      .value(dialogSuggestionValueModel)
      .output(dialogSuggestionOutputModel)
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.RuntimeResponseGeneric runtimeResponseGenericModel = new IBMAssistantV1Models.RuntimeResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .suggestions(new List<IBMAssistantV1Models.DialogSuggestion> { dialogSuggestionModel })
      .build();
    IBMAssistantV1Models.LogMessage logMessageModel = new IBMAssistantV1Models.LogMessageBuilder()
      .level('info')
      .msg('testString')
      .build();

    IBMAssistantV1Models.OutputData testRequestModel = new IBMAssistantV1Models.OutputDataBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .logMessages(new List<IBMAssistantV1Models.LogMessage> { logMessageModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.RuntimeResponseGeneric> { runtimeResponseGenericModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<String> { 'testString' }, testRequestModel.getNodesVisited());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel }, testRequestModel.getNodesVisitedDetails());
    System.assertEquals(new List<IBMAssistantV1Models.LogMessage> { logMessageModel }, testRequestModel.getLogMessages());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.getText());
    System.assertEquals(new List<IBMAssistantV1Models.RuntimeResponseGeneric> { runtimeResponseGenericModel }, testRequestModel.getGeneric());
    Test.stopTest();
  }
  static testMethod void testRuntimeEntityModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();

    IBMAssistantV1Models.RuntimeEntity testRequestModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getEntity());
    System.assertEquals(new List<Long> { 38 }, testRequestModel.getLocation());
    System.assertEquals('testString', testRequestModel.getValue());
    System.assertEquals((Double) 72.5, testRequestModel.getConfidence());
    System.assertEquals(createMockMap(), testRequestModel.getMetadata());
    System.assertEquals(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel }, testRequestModel.getGroups());
    Test.stopTest();
  }
  static testMethod void testRuntimeIntentModel() {
    Test.startTest();

    IBMAssistantV1Models.RuntimeIntent testRequestModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getIntent());
    System.assertEquals((Double) 72.5, testRequestModel.getConfidence());
    Test.stopTest();
  }
  static testMethod void testRuntimeResponseGenericModel() {
    Test.startTest();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogSuggestionResponseGeneric dialogSuggestionResponseGenericModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.DialogNodeVisitedDetails dialogNodeVisitedDetailsModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();
    IBMAssistantV1Models.DialogSuggestionOutput dialogSuggestionOutputModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel })
      .build();
    IBMAssistantV1Models.DialogSuggestionValue dialogSuggestionValueModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogSuggestion dialogSuggestionModel = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label('testString')
      .value(dialogSuggestionValueModel)
      .output(dialogSuggestionOutputModel)
      .dialogNode('testString')
      .build();

    IBMAssistantV1Models.RuntimeResponseGeneric testRequestModel = new IBMAssistantV1Models.RuntimeResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .suggestions(new List<IBMAssistantV1Models.DialogSuggestion> { dialogSuggestionModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('text', testRequestModel.getResponseType());
    System.assertEquals('testString', testRequestModel.getText());
    System.assertEquals(38, testRequestModel.getXTime());
    System.assertEquals(true, testRequestModel.getTyping());
    System.assertEquals('testString', testRequestModel.getSource());
    System.assertEquals('testString', testRequestModel.getTitle());
    System.assertEquals('testString', testRequestModel.getDescription());
    System.assertEquals('dropdown', testRequestModel.getPreference());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel }, testRequestModel.getOptions());
    System.assertEquals('testString', testRequestModel.getMessageToHumanAgent());
    System.assertEquals('testString', testRequestModel.getDialogNode());
    System.assertEquals(new List<IBMAssistantV1Models.DialogSuggestion> { dialogSuggestionModel }, testRequestModel.getSuggestions());
    Test.stopTest();
  }
  static testMethod void testSynonymModel() {
    Test.startTest();

    IBMAssistantV1Models.Synonym testRequestModel = new IBMAssistantV1Models.SynonymBuilder()
      .synonym('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getSynonym());
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

    IBMAssistantV1Models.UpdateCounterexampleOptions testRequestModel = new IBMAssistantV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .newText('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals('testString', testRequestModel.newText());
    Test.stopTest();
  }
  static testMethod void testUpdateDialogNodeOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();

    IBMAssistantV1Models.UpdateDialogNodeOptions testRequestModel = new IBMAssistantV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .newDialogNode('testString')
      .newDescription('testString')
      .newConditions('testString')
      .newParent('testString')
      .newPreviousSibling('testString')
      .newOutput(dialogNodeOutputModel)
      .newContext(createMockMap())
      .newMetadata(createMockMap())
      .newNextStep(dialogNodeNextStepModel)
      .newTitle('testString')
      .newType('standard')
      .newEventName('focus')
      .newVariable('testString')
      .newActions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .newDigressIn('not_available')
      .newDigressOut('allow_returning')
      .newDigressOutSlots('not_allowed')
      .newUserLabel('testString')
      .newDisambiguationOptOut(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.dialogNode());
    System.assertEquals('testString', testRequestModel.newDialogNode());
    System.assertEquals('testString', testRequestModel.newDescription());
    System.assertEquals('testString', testRequestModel.newConditions());
    System.assertEquals('testString', testRequestModel.newParent());
    System.assertEquals('testString', testRequestModel.newPreviousSibling());
    System.assertEquals(dialogNodeOutputModel, testRequestModel.newOutput());
    System.assertEquals(createMockMap(), testRequestModel.newContext());
    System.assertEquals(createMockMap(), testRequestModel.newMetadata());
    System.assertEquals(dialogNodeNextStepModel, testRequestModel.newNextStep());
    System.assertEquals('testString', testRequestModel.newTitle());
    System.assertEquals('standard', testRequestModel.newType());
    System.assertEquals('focus', testRequestModel.newEventName());
    System.assertEquals('testString', testRequestModel.newVariable());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel }, testRequestModel.newActions());
    System.assertEquals('not_available', testRequestModel.newDigressIn());
    System.assertEquals('allow_returning', testRequestModel.newDigressOut());
    System.assertEquals('not_allowed', testRequestModel.newDigressOutSlots());
    System.assertEquals('testString', testRequestModel.newUserLabel());
    System.assertEquals(true, testRequestModel.newDisambiguationOptOut());
    Test.stopTest();
  }
  static testMethod void testUpdateEntityOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();

    IBMAssistantV1Models.UpdateEntityOptions testRequestModel = new IBMAssistantV1Models.UpdateEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .newEntity('testString')
      .newDescription('testString')
      .newMetadata(createMockMap())
      .newFuzzyMatch(true)
      .newValues(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.newEntity());
    System.assertEquals('testString', testRequestModel.newDescription());
    System.assertEquals(createMockMap(), testRequestModel.newMetadata());
    System.assertEquals(true, testRequestModel.newFuzzyMatch());
    System.assertEquals(new List<IBMAssistantV1Models.CreateValue> { createValueModel }, testRequestModel.newValues());
    Test.stopTest();
  }
  static testMethod void testUpdateExampleOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();

    IBMAssistantV1Models.UpdateExampleOptions testRequestModel = new IBMAssistantV1Models.UpdateExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .newText('testString')
      .newMentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals('testString', testRequestModel.text());
    System.assertEquals('testString', testRequestModel.newText());
    System.assertEquals(new List<IBMAssistantV1Models.Mention> { mentionModel }, testRequestModel.newMentions());
    Test.stopTest();
  }
  static testMethod void testUpdateIntentOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();

    IBMAssistantV1Models.UpdateIntentOptions testRequestModel = new IBMAssistantV1Models.UpdateIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .newIntent('testString')
      .newDescription('testString')
      .newExamples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.intent());
    System.assertEquals('testString', testRequestModel.newIntent());
    System.assertEquals('testString', testRequestModel.newDescription());
    System.assertEquals(new List<IBMAssistantV1Models.Example> { exampleModel }, testRequestModel.newExamples());
    Test.stopTest();
  }
  static testMethod void testUpdateSynonymOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.UpdateSynonymOptions testRequestModel = new IBMAssistantV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .newSynonym('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals('testString', testRequestModel.synonym());
    System.assertEquals('testString', testRequestModel.newSynonym());
    Test.stopTest();
  }
  static testMethod void testUpdateValueOptionsModel() {
    Test.startTest();

    IBMAssistantV1Models.UpdateValueOptions testRequestModel = new IBMAssistantV1Models.UpdateValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .newValue('testString')
      .newMetadata(createMockMap())
      .newType('synonyms')
      .newSynonyms(new List<String> { 'testString' })
      .newPatterns(new List<String> { 'testString' })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.entity());
    System.assertEquals('testString', testRequestModel.value());
    System.assertEquals('testString', testRequestModel.newValue());
    System.assertEquals(createMockMap(), testRequestModel.newMetadata());
    System.assertEquals('synonyms', testRequestModel.newType());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.newSynonyms());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.newPatterns());
    Test.stopTest();
  }
  static testMethod void testUpdateWorkspaceOptionsModel() {
    Test.startTest();
    IBMAssistantV1Models.WebhookHeader webhookHeaderModel = new IBMAssistantV1Models.WebhookHeaderBuilder()
      .name('testString')
      .value('testString')
      .build();
    IBMAssistantV1Models.Webhook webhookModel = new IBMAssistantV1Models.WebhookBuilder()
      .url('testString')
      .name('testString')
      .headers(new List<IBMAssistantV1Models.WebhookHeader> { webhookHeaderModel })
      .build();
    IBMAssistantV1Models.Counterexample counterexampleModel = new IBMAssistantV1Models.CounterexampleBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();
    IBMAssistantV1Models.DialogNode dialogNodeModel = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode('testString')
      .description('testString')
      .conditions('testString')
      .parent('testString')
      .previousSibling('testString')
      .output(dialogNodeOutputModel)
      .context(createMockMap())
      .metadata(createMockMap())
      .nextStep(dialogNodeNextStepModel)
      .title('testString')
      .xType('standard')
      .eventName('focus')
      .variable('testString')
      .actions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .digressIn('not_available')
      .digressOut('allow_returning')
      .digressOutSlots('not_allowed')
      .userLabel('testString')
      .disambiguationOptOut(true)
      .build();
    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    IBMAssistantV1Models.CreateEntity createEntityModel = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity('testString')
      .description('testString')
      .metadata(createMockMap())
      .fuzzyMatch(true)
      .values(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .build();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    IBMAssistantV1Models.CreateIntent createIntentModel = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent('testString')
      .description('testString')
      .examples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsOffTopic workspaceSystemSettingsOffTopicModel = new IBMAssistantV1Models.WorkspaceSystemSettingsOffTopicBuilder()
      .enabled(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation workspaceSystemSettingsDisambiguationModel = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .prompt('testString')
      .noneOfTheAbovePrompt('testString')
      .enabled(true)
      .sensitivity('auto')
      .randomize(true)
      .maxSuggestions(38)
      .suggestionTextPolicy('testString')
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsTooling workspaceSystemSettingsToolingModel = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettings workspaceSystemSettingsModel = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .tooling(workspaceSystemSettingsToolingModel)
      .disambiguation(workspaceSystemSettingsDisambiguationModel)
      .humanAgentAssist(createMockMap())
      .offTopic(workspaceSystemSettingsOffTopicModel)
      .build();

    IBMAssistantV1Models.UpdateWorkspaceOptions testRequestModel = new IBMAssistantV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId('testString')
      .name('testString')
      .description('testString')
      .language('testString')
      .metadata(createMockMap())
      .learningOptOut(true)
      .systemSettings(workspaceSystemSettingsModel)
      .intents(new List<IBMAssistantV1Models.CreateIntent> { createIntentModel })
      .entities(new List<IBMAssistantV1Models.CreateEntity> { createEntityModel })
      .dialogNodes(new List<IBMAssistantV1Models.DialogNode> { dialogNodeModel })
      .counterexamples(new List<IBMAssistantV1Models.Counterexample> { counterexampleModel })
      .webhooks(new List<IBMAssistantV1Models.Webhook> { webhookModel })
      .append(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.workspaceId());
    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('testString', testRequestModel.description());
    System.assertEquals('testString', testRequestModel.language());
    System.assertEquals(createMockMap(), testRequestModel.metadata());
    System.assertEquals(true, testRequestModel.learningOptOut());
    System.assertEquals(workspaceSystemSettingsModel, testRequestModel.systemSettings());
    System.assertEquals(new List<IBMAssistantV1Models.CreateIntent> { createIntentModel }, testRequestModel.intents());
    System.assertEquals(new List<IBMAssistantV1Models.CreateEntity> { createEntityModel }, testRequestModel.entities());
    System.assertEquals(new List<IBMAssistantV1Models.DialogNode> { dialogNodeModel }, testRequestModel.dialogNodes());
    System.assertEquals(new List<IBMAssistantV1Models.Counterexample> { counterexampleModel }, testRequestModel.counterexamples());
    System.assertEquals(new List<IBMAssistantV1Models.Webhook> { webhookModel }, testRequestModel.webhooks());
    System.assertEquals(true, testRequestModel.append());
    Test.stopTest();
  }
  static testMethod void testWebhookModel() {
    Test.startTest();
    IBMAssistantV1Models.WebhookHeader webhookHeaderModel = new IBMAssistantV1Models.WebhookHeaderBuilder()
      .name('testString')
      .value('testString')
      .build();

    IBMAssistantV1Models.Webhook testRequestModel = new IBMAssistantV1Models.WebhookBuilder()
      .url('testString')
      .name('testString')
      .headers(new List<IBMAssistantV1Models.WebhookHeader> { webhookHeaderModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getUrl());
    System.assertEquals('testString', testRequestModel.getName());
    System.assertEquals(new List<IBMAssistantV1Models.WebhookHeader> { webhookHeaderModel }, testRequestModel.getHeaders());
    Test.stopTest();
  }
  static testMethod void testWebhookHeaderModel() {
    Test.startTest();

    IBMAssistantV1Models.WebhookHeader testRequestModel = new IBMAssistantV1Models.WebhookHeaderBuilder()
      .name('testString')
      .value('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getName());
    System.assertEquals('testString', testRequestModel.getValue());
    Test.stopTest();
  }
  static testMethod void testWorkspaceSystemSettingsModel() {
    Test.startTest();
    IBMAssistantV1Models.WorkspaceSystemSettingsOffTopic workspaceSystemSettingsOffTopicModel = new IBMAssistantV1Models.WorkspaceSystemSettingsOffTopicBuilder()
      .enabled(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation workspaceSystemSettingsDisambiguationModel = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .prompt('testString')
      .noneOfTheAbovePrompt('testString')
      .enabled(true)
      .sensitivity('auto')
      .randomize(true)
      .maxSuggestions(38)
      .suggestionTextPolicy('testString')
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsTooling workspaceSystemSettingsToolingModel = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(true)
      .build();

    IBMAssistantV1Models.WorkspaceSystemSettings testRequestModel = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .tooling(workspaceSystemSettingsToolingModel)
      .disambiguation(workspaceSystemSettingsDisambiguationModel)
      .humanAgentAssist(createMockMap())
      .offTopic(workspaceSystemSettingsOffTopicModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(workspaceSystemSettingsToolingModel, testRequestModel.getTooling());
    System.assertEquals(workspaceSystemSettingsDisambiguationModel, testRequestModel.getDisambiguation());
    System.assertEquals(createMockMap(), testRequestModel.getHumanAgentAssist());
    System.assertEquals(workspaceSystemSettingsOffTopicModel, testRequestModel.getOffTopic());
    Test.stopTest();
  }
  static testMethod void testWorkspaceSystemSettingsDisambiguationModel() {
    Test.startTest();

    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation testRequestModel = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .prompt('testString')
      .noneOfTheAbovePrompt('testString')
      .enabled(true)
      .sensitivity('auto')
      .randomize(true)
      .maxSuggestions(38)
      .suggestionTextPolicy('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getPrompt());
    System.assertEquals('testString', testRequestModel.getNoneOfTheAbovePrompt());
    System.assertEquals(true, testRequestModel.getEnabled());
    System.assertEquals('auto', testRequestModel.getSensitivity());
    System.assertEquals(true, testRequestModel.getRandomize());
    System.assertEquals(38, testRequestModel.getMaxSuggestions());
    System.assertEquals('testString', testRequestModel.getSuggestionTextPolicy());
    Test.stopTest();
  }
  static testMethod void testWorkspaceSystemSettingsOffTopicModel() {
    Test.startTest();

    IBMAssistantV1Models.WorkspaceSystemSettingsOffTopic testRequestModel = new IBMAssistantV1Models.WorkspaceSystemSettingsOffTopicBuilder()
      .enabled(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.getEnabled());
    Test.stopTest();
  }
  static testMethod void testWorkspaceSystemSettingsToolingModel() {
    Test.startTest();

    IBMAssistantV1Models.WorkspaceSystemSettingsTooling testRequestModel = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.getStoreGenericResponses());
    Test.stopTest();
  }

  static testMethod void testMessage() {
    String mockResponseBody = '{"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "alternate_intents": true, "context": {"conversation_id": "conversationId", "system": {}, "metadata": {"deployment": "deployment", "user_id": "userId"}}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "log_messages": [{"level": "level", "msg": "msg"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode", "suggestions": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode"}]}, "dialog_node": "dialogNode"}]}]}, "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogSuggestionResponseGeneric dialogSuggestionResponseGenericModel = new IBMAssistantV1Models.DialogSuggestionResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.DialogNodeVisitedDetails dialogNodeVisitedDetailsModel = new IBMAssistantV1Models.DialogNodeVisitedDetailsBuilder()
      .dialogNode('testString')
      .title('testString')
      .conditions('testString')
      .build();
    IBMAssistantV1Models.DialogSuggestionOutput dialogSuggestionOutputModel = new IBMAssistantV1Models.DialogSuggestionOutputBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.DialogSuggestionResponseGeneric> { dialogSuggestionResponseGenericModel })
      .build();
    IBMAssistantV1Models.DialogSuggestionValue dialogSuggestionValueModel = new IBMAssistantV1Models.DialogSuggestionValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogSuggestion dialogSuggestionModel = new IBMAssistantV1Models.DialogSuggestionBuilder()
      .label('testString')
      .value(dialogSuggestionValueModel)
      .output(dialogSuggestionOutputModel)
      .dialogNode('testString')
      .build();
    IBMAssistantV1Models.RuntimeResponseGeneric runtimeResponseGenericModel = new IBMAssistantV1Models.RuntimeResponseGenericBuilder()
      .responseType('text')
      .text('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .dialogNode('testString')
      .suggestions(new List<IBMAssistantV1Models.DialogSuggestion> { dialogSuggestionModel })
      .build();
    IBMAssistantV1Models.LogMessage logMessageModel = new IBMAssistantV1Models.LogMessageBuilder()
      .level('info')
      .msg('testString')
      .build();
    IBMAssistantV1Models.OutputData outputDataModel = new IBMAssistantV1Models.OutputDataBuilder()
      .nodesVisited(new List<String> { 'testString' })
      .nodesVisitedDetails(new List<IBMAssistantV1Models.DialogNodeVisitedDetails> { dialogNodeVisitedDetailsModel })
      .logMessages(new List<IBMAssistantV1Models.LogMessage> { logMessageModel })
      .text(new List<String> { 'testString' })
      .generic(new List<IBMAssistantV1Models.RuntimeResponseGeneric> { runtimeResponseGenericModel })
      .build();
    IBMAssistantV1Models.MessageContextMetadata messageContextMetadataModel = new IBMAssistantV1Models.MessageContextMetadataBuilder()
      .deployment('testString')
      .userId('testString')
      .build();
    IBMAssistantV1Models.SystemResponse systemResponseModel = new IBMAssistantV1Models.SystemResponseBuilder()
      .build();
    IBMAssistantV1Models.Context contextModel = new IBMAssistantV1Models.ContextBuilder()
      .conversationId('testString')
      .xSystem(systemResponseModel)
      .metadata(messageContextMetadataModel)
      .build();
    IBMAssistantV1Models.MessageOptions messageOptionsModel = new IBMAssistantV1Models.MessageOptionsBuilder()
      .workspaceId('testString')
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .alternateIntents(true)
      .context(contextModel)
      .output(outputDataModel)
      .nodesVisitedDetails(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.MessageResponse response = service.message(messageOptionsModel);
    System.assert(response.getInput().getText() != null);
    System.assert(response.getIntents().get(0).getIntent() != null);
    System.assert(response.getIntents().get(0).getConfidence() != null);
    System.assert(response.getEntities().get(0).getEntity() != null);
    System.assert(response.getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getEntities().get(0).getValue() != null);
    System.assert(response.getEntities().get(0).getConfidence() != null);
    System.assert(response.getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getAlternateIntents() != null);
    System.assert(response.getContext().getConversationId() != null);
    System.assert(response.getContext().getMetadata().getDeployment() != null);
    System.assert(response.getContext().getMetadata().getUserId() != null);
    System.assert(response.getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getOutput().getLogMessages().get(0).getLevel() != null);
    System.assert(response.getOutput().getLogMessages().get(0).getMsg() != null);
    System.assert(response.getOutput().getText().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode() != null);
    System.assert(response.getActions().get(0).getName() != null);
    System.assert(response.getActions().get(0).getXType() != null);
    System.assert(response.getActions().get(0).getResultVariable() != null);
    System.assert(response.getActions().get(0).getCredentials() != null);

    Test.stopTest();
  }
  static testMethod void testListWorkspaces() {
    String mockResponseBody = '{"workspaces": [{"name": "name", "description": "description", "language": "language", "metadata": {}, "learning_opt_out": true, "system_settings": {"tooling": {"store_generic_responses": false}, "disambiguation": {"prompt": "prompt", "none_of_the_above_prompt": "noneOfTheAbovePrompt", "enabled": false, "sensitivity": "sensitivity", "randomize": false, "max_suggestions": "14", "suggestion_text_policy": "suggestionTextPolicy"}, "human_agent_assist": {}, "off_topic": {"enabled": false}}, "workspace_id": "workspaceId", "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "intents": [{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "entities": [{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "dialog_nodes": [{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "counterexamples": [{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "webhooks": [{"url": "url", "name": "name", "headers": [{"name": "name", "value": "value"}]}]}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListWorkspacesOptions listWorkspacesOptionsModel = new IBMAssistantV1Models.ListWorkspacesOptionsBuilder()
      .pageLimit(38)
      .xSort('name')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.WorkspaceCollection response = service.listWorkspaces(listWorkspacesOptionsModel);
    System.assert(response.getWorkspaces().get(0).getName() != null);
    System.assert(response.getWorkspaces().get(0).getDescription() != null);
    System.assert(response.getWorkspaces().get(0).getLanguage() != null);
    System.assert(response.getWorkspaces().get(0).getLearningOptOut() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getTooling().getStoreGenericResponses() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getPrompt() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getEnabled() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getSensitivity() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getRandomize() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getMaxSuggestions() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getDisambiguation().getSuggestionTextPolicy() != null);
    System.assert(response.getWorkspaces().get(0).getSystemSettings().getOffTopic().getEnabled() != null);
    System.assert(response.getWorkspaces().get(0).getWorkspaceId() != null);
    System.assert(response.getWorkspaces().get(0).getStatus() != null);
    System.assert(response.getWorkspaces().get(0).getCreated() != null);
    System.assert(response.getWorkspaces().get(0).getUpdated() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getIntent() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getDescription() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getCreated() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getUpdated() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getText() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getCreated() != null);
    System.assert(response.getWorkspaces().get(0).getIntents().get(0).getExamples().get(0).getUpdated() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getEntity() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getDescription() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getFuzzyMatch() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getCreated() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getUpdated() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getValue() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getXType() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getCreated() != null);
    System.assert(response.getWorkspaces().get(0).getEntities().get(0).getValues().get(0).getUpdated() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getDialogNode() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getDescription() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getConditions() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getParent() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getPreviousSibling() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getNextStep().getBehavior() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getNextStep().getDialogNode() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getNextStep().getSelector() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getTitle() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getXType() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getEventName() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getVariable() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getName() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getXType() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getResultVariable() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getActions().get(0).getCredentials() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getDigressIn() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getDigressOut() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getDigressOutSlots() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getUserLabel() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getDisambiguationOptOut() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getDisabled() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getCreated() != null);
    System.assert(response.getWorkspaces().get(0).getDialogNodes().get(0).getUpdated() != null);
    System.assert(response.getWorkspaces().get(0).getCounterexamples().get(0).getText() != null);
    System.assert(response.getWorkspaces().get(0).getCounterexamples().get(0).getCreated() != null);
    System.assert(response.getWorkspaces().get(0).getCounterexamples().get(0).getUpdated() != null);
    System.assert(response.getWorkspaces().get(0).getWebhooks().get(0).getUrl() != null);
    System.assert(response.getWorkspaces().get(0).getWebhooks().get(0).getName() != null);
    System.assert(response.getWorkspaces().get(0).getWebhooks().get(0).getHeaders().get(0).getName() != null);
    System.assert(response.getWorkspaces().get(0).getWebhooks().get(0).getHeaders().get(0).getValue() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateWorkspace() {
    String mockResponseBody = '{"name": "name", "description": "description", "language": "language", "metadata": {}, "learning_opt_out": true, "system_settings": {"tooling": {"store_generic_responses": false}, "disambiguation": {"prompt": "prompt", "none_of_the_above_prompt": "noneOfTheAbovePrompt", "enabled": false, "sensitivity": "sensitivity", "randomize": false, "max_suggestions": "14", "suggestion_text_policy": "suggestionTextPolicy"}, "human_agent_assist": {}, "off_topic": {"enabled": false}}, "workspace_id": "workspaceId", "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "intents": [{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "entities": [{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "dialog_nodes": [{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "counterexamples": [{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "webhooks": [{"url": "url", "name": "name", "headers": [{"name": "name", "value": "value"}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.WebhookHeader webhookHeaderModel = new IBMAssistantV1Models.WebhookHeaderBuilder()
      .name('testString')
      .value('testString')
      .build();
    IBMAssistantV1Models.Webhook webhookModel = new IBMAssistantV1Models.WebhookBuilder()
      .url('testString')
      .name('testString')
      .headers(new List<IBMAssistantV1Models.WebhookHeader> { webhookHeaderModel })
      .build();
    IBMAssistantV1Models.Counterexample counterexampleModel = new IBMAssistantV1Models.CounterexampleBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();
    IBMAssistantV1Models.DialogNode dialogNodeModel = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode('testString')
      .description('testString')
      .conditions('testString')
      .parent('testString')
      .previousSibling('testString')
      .output(dialogNodeOutputModel)
      .context(createMockMap())
      .metadata(createMockMap())
      .nextStep(dialogNodeNextStepModel)
      .title('testString')
      .xType('standard')
      .eventName('focus')
      .variable('testString')
      .actions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .digressIn('not_available')
      .digressOut('allow_returning')
      .digressOutSlots('not_allowed')
      .userLabel('testString')
      .disambiguationOptOut(true)
      .build();
    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    IBMAssistantV1Models.CreateEntity createEntityModel = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity('testString')
      .description('testString')
      .metadata(createMockMap())
      .fuzzyMatch(true)
      .values(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .build();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    IBMAssistantV1Models.CreateIntent createIntentModel = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent('testString')
      .description('testString')
      .examples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsOffTopic workspaceSystemSettingsOffTopicModel = new IBMAssistantV1Models.WorkspaceSystemSettingsOffTopicBuilder()
      .enabled(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation workspaceSystemSettingsDisambiguationModel = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .prompt('testString')
      .noneOfTheAbovePrompt('testString')
      .enabled(true)
      .sensitivity('auto')
      .randomize(true)
      .maxSuggestions(38)
      .suggestionTextPolicy('testString')
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsTooling workspaceSystemSettingsToolingModel = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettings workspaceSystemSettingsModel = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .tooling(workspaceSystemSettingsToolingModel)
      .disambiguation(workspaceSystemSettingsDisambiguationModel)
      .humanAgentAssist(createMockMap())
      .offTopic(workspaceSystemSettingsOffTopicModel)
      .build();
    IBMAssistantV1Models.CreateWorkspaceOptions createWorkspaceOptionsModel = new IBMAssistantV1Models.CreateWorkspaceOptionsBuilder()
      .name('testString')
      .description('testString')
      .language('testString')
      .metadata(createMockMap())
      .learningOptOut(true)
      .systemSettings(workspaceSystemSettingsModel)
      .intents(new List<IBMAssistantV1Models.CreateIntent> { createIntentModel })
      .entities(new List<IBMAssistantV1Models.CreateEntity> { createEntityModel })
      .dialogNodes(new List<IBMAssistantV1Models.DialogNode> { dialogNodeModel })
      .counterexamples(new List<IBMAssistantV1Models.Counterexample> { counterexampleModel })
      .webhooks(new List<IBMAssistantV1Models.Webhook> { webhookModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Workspace response = service.createWorkspace(createWorkspaceOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getLearningOptOut() != null);
    System.assert(response.getSystemSettings().getTooling().getStoreGenericResponses() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getPrompt() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getEnabled() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getSensitivity() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getRandomize() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getMaxSuggestions() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getSuggestionTextPolicy() != null);
    System.assert(response.getSystemSettings().getOffTopic().getEnabled() != null);
    System.assert(response.getWorkspaceId() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getIntents().get(0).getIntent() != null);
    System.assert(response.getIntents().get(0).getDescription() != null);
    System.assert(response.getIntents().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getUpdated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getText() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getUpdated() != null);
    System.assert(response.getEntities().get(0).getEntity() != null);
    System.assert(response.getEntities().get(0).getDescription() != null);
    System.assert(response.getEntities().get(0).getFuzzyMatch() != null);
    System.assert(response.getEntities().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getUpdated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getValue() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getXType() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getUpdated() != null);
    System.assert(response.getDialogNodes().get(0).getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getConditions() != null);
    System.assert(response.getDialogNodes().get(0).getParent() != null);
    System.assert(response.getDialogNodes().get(0).getPreviousSibling() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getBehavior() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getSelector() != null);
    System.assert(response.getDialogNodes().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getEventName() != null);
    System.assert(response.getDialogNodes().get(0).getVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getName() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getResultVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getCredentials() != null);
    System.assert(response.getDialogNodes().get(0).getDigressIn() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOut() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOutSlots() != null);
    System.assert(response.getDialogNodes().get(0).getUserLabel() != null);
    System.assert(response.getDialogNodes().get(0).getDisambiguationOptOut() != null);
    System.assert(response.getDialogNodes().get(0).getDisabled() != null);
    System.assert(response.getDialogNodes().get(0).getCreated() != null);
    System.assert(response.getDialogNodes().get(0).getUpdated() != null);
    System.assert(response.getCounterexamples().get(0).getText() != null);
    System.assert(response.getCounterexamples().get(0).getCreated() != null);
    System.assert(response.getCounterexamples().get(0).getUpdated() != null);
    System.assert(response.getWebhooks().get(0).getUrl() != null);
    System.assert(response.getWebhooks().get(0).getName() != null);
    System.assert(response.getWebhooks().get(0).getHeaders().get(0).getName() != null);
    System.assert(response.getWebhooks().get(0).getHeaders().get(0).getValue() != null);

    Test.stopTest();
  }
  static testMethod void testGetWorkspace() {
    String mockResponseBody = '{"name": "name", "description": "description", "language": "language", "metadata": {}, "learning_opt_out": true, "system_settings": {"tooling": {"store_generic_responses": false}, "disambiguation": {"prompt": "prompt", "none_of_the_above_prompt": "noneOfTheAbovePrompt", "enabled": false, "sensitivity": "sensitivity", "randomize": false, "max_suggestions": "14", "suggestion_text_policy": "suggestionTextPolicy"}, "human_agent_assist": {}, "off_topic": {"enabled": false}}, "workspace_id": "workspaceId", "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "intents": [{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "entities": [{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "dialog_nodes": [{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "counterexamples": [{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "webhooks": [{"url": "url", "name": "name", "headers": [{"name": "name", "value": "value"}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetWorkspaceOptions getWorkspaceOptionsModel = new IBMAssistantV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId('testString')
      .xExport(true)
      .includeAudit(true)
      .xSort('stable')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Workspace response = service.getWorkspace(getWorkspaceOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getLearningOptOut() != null);
    System.assert(response.getSystemSettings().getTooling().getStoreGenericResponses() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getPrompt() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getEnabled() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getSensitivity() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getRandomize() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getMaxSuggestions() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getSuggestionTextPolicy() != null);
    System.assert(response.getSystemSettings().getOffTopic().getEnabled() != null);
    System.assert(response.getWorkspaceId() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getIntents().get(0).getIntent() != null);
    System.assert(response.getIntents().get(0).getDescription() != null);
    System.assert(response.getIntents().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getUpdated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getText() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getUpdated() != null);
    System.assert(response.getEntities().get(0).getEntity() != null);
    System.assert(response.getEntities().get(0).getDescription() != null);
    System.assert(response.getEntities().get(0).getFuzzyMatch() != null);
    System.assert(response.getEntities().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getUpdated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getValue() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getXType() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getUpdated() != null);
    System.assert(response.getDialogNodes().get(0).getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getConditions() != null);
    System.assert(response.getDialogNodes().get(0).getParent() != null);
    System.assert(response.getDialogNodes().get(0).getPreviousSibling() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getBehavior() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getSelector() != null);
    System.assert(response.getDialogNodes().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getEventName() != null);
    System.assert(response.getDialogNodes().get(0).getVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getName() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getResultVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getCredentials() != null);
    System.assert(response.getDialogNodes().get(0).getDigressIn() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOut() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOutSlots() != null);
    System.assert(response.getDialogNodes().get(0).getUserLabel() != null);
    System.assert(response.getDialogNodes().get(0).getDisambiguationOptOut() != null);
    System.assert(response.getDialogNodes().get(0).getDisabled() != null);
    System.assert(response.getDialogNodes().get(0).getCreated() != null);
    System.assert(response.getDialogNodes().get(0).getUpdated() != null);
    System.assert(response.getCounterexamples().get(0).getText() != null);
    System.assert(response.getCounterexamples().get(0).getCreated() != null);
    System.assert(response.getCounterexamples().get(0).getUpdated() != null);
    System.assert(response.getWebhooks().get(0).getUrl() != null);
    System.assert(response.getWebhooks().get(0).getName() != null);
    System.assert(response.getWebhooks().get(0).getHeaders().get(0).getName() != null);
    System.assert(response.getWebhooks().get(0).getHeaders().get(0).getValue() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateWorkspace() {
    String mockResponseBody = '{"name": "name", "description": "description", "language": "language", "metadata": {}, "learning_opt_out": true, "system_settings": {"tooling": {"store_generic_responses": false}, "disambiguation": {"prompt": "prompt", "none_of_the_above_prompt": "noneOfTheAbovePrompt", "enabled": false, "sensitivity": "sensitivity", "randomize": false, "max_suggestions": "14", "suggestion_text_policy": "suggestionTextPolicy"}, "human_agent_assist": {}, "off_topic": {"enabled": false}}, "workspace_id": "workspaceId", "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "intents": [{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "entities": [{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "dialog_nodes": [{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "counterexamples": [{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "webhooks": [{"url": "url", "name": "name", "headers": [{"name": "name", "value": "value"}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.WebhookHeader webhookHeaderModel = new IBMAssistantV1Models.WebhookHeaderBuilder()
      .name('testString')
      .value('testString')
      .build();
    IBMAssistantV1Models.Webhook webhookModel = new IBMAssistantV1Models.WebhookBuilder()
      .url('testString')
      .name('testString')
      .headers(new List<IBMAssistantV1Models.WebhookHeader> { webhookHeaderModel })
      .build();
    IBMAssistantV1Models.Counterexample counterexampleModel = new IBMAssistantV1Models.CounterexampleBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();
    IBMAssistantV1Models.DialogNode dialogNodeModel = new IBMAssistantV1Models.DialogNodeBuilder()
      .dialogNode('testString')
      .description('testString')
      .conditions('testString')
      .parent('testString')
      .previousSibling('testString')
      .output(dialogNodeOutputModel)
      .context(createMockMap())
      .metadata(createMockMap())
      .nextStep(dialogNodeNextStepModel)
      .title('testString')
      .xType('standard')
      .eventName('focus')
      .variable('testString')
      .actions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .digressIn('not_available')
      .digressOut('allow_returning')
      .digressOutSlots('not_allowed')
      .userLabel('testString')
      .disambiguationOptOut(true)
      .build();
    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    IBMAssistantV1Models.CreateEntity createEntityModel = new IBMAssistantV1Models.CreateEntityBuilder()
      .entity('testString')
      .description('testString')
      .metadata(createMockMap())
      .fuzzyMatch(true)
      .values(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .build();
    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    IBMAssistantV1Models.CreateIntent createIntentModel = new IBMAssistantV1Models.CreateIntentBuilder()
      .intent('testString')
      .description('testString')
      .examples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsOffTopic workspaceSystemSettingsOffTopicModel = new IBMAssistantV1Models.WorkspaceSystemSettingsOffTopicBuilder()
      .enabled(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation workspaceSystemSettingsDisambiguationModel = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .prompt('testString')
      .noneOfTheAbovePrompt('testString')
      .enabled(true)
      .sensitivity('auto')
      .randomize(true)
      .maxSuggestions(38)
      .suggestionTextPolicy('testString')
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsTooling workspaceSystemSettingsToolingModel = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(true)
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettings workspaceSystemSettingsModel = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .tooling(workspaceSystemSettingsToolingModel)
      .disambiguation(workspaceSystemSettingsDisambiguationModel)
      .humanAgentAssist(createMockMap())
      .offTopic(workspaceSystemSettingsOffTopicModel)
      .build();
    IBMAssistantV1Models.UpdateWorkspaceOptions updateWorkspaceOptionsModel = new IBMAssistantV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId('testString')
      .name('testString')
      .description('testString')
      .language('testString')
      .metadata(createMockMap())
      .learningOptOut(true)
      .systemSettings(workspaceSystemSettingsModel)
      .intents(new List<IBMAssistantV1Models.CreateIntent> { createIntentModel })
      .entities(new List<IBMAssistantV1Models.CreateEntity> { createEntityModel })
      .dialogNodes(new List<IBMAssistantV1Models.DialogNode> { dialogNodeModel })
      .counterexamples(new List<IBMAssistantV1Models.Counterexample> { counterexampleModel })
      .webhooks(new List<IBMAssistantV1Models.Webhook> { webhookModel })
      .append(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Workspace response = service.updateWorkspace(updateWorkspaceOptionsModel);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getLanguage() != null);
    System.assert(response.getLearningOptOut() != null);
    System.assert(response.getSystemSettings().getTooling().getStoreGenericResponses() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getPrompt() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getNoneOfTheAbovePrompt() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getEnabled() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getSensitivity() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getRandomize() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getMaxSuggestions() != null);
    System.assert(response.getSystemSettings().getDisambiguation().getSuggestionTextPolicy() != null);
    System.assert(response.getSystemSettings().getOffTopic().getEnabled() != null);
    System.assert(response.getWorkspaceId() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getIntents().get(0).getIntent() != null);
    System.assert(response.getIntents().get(0).getDescription() != null);
    System.assert(response.getIntents().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getUpdated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getText() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getUpdated() != null);
    System.assert(response.getEntities().get(0).getEntity() != null);
    System.assert(response.getEntities().get(0).getDescription() != null);
    System.assert(response.getEntities().get(0).getFuzzyMatch() != null);
    System.assert(response.getEntities().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getUpdated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getValue() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getXType() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getUpdated() != null);
    System.assert(response.getDialogNodes().get(0).getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getConditions() != null);
    System.assert(response.getDialogNodes().get(0).getParent() != null);
    System.assert(response.getDialogNodes().get(0).getPreviousSibling() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getBehavior() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getSelector() != null);
    System.assert(response.getDialogNodes().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getEventName() != null);
    System.assert(response.getDialogNodes().get(0).getVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getName() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getResultVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getCredentials() != null);
    System.assert(response.getDialogNodes().get(0).getDigressIn() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOut() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOutSlots() != null);
    System.assert(response.getDialogNodes().get(0).getUserLabel() != null);
    System.assert(response.getDialogNodes().get(0).getDisambiguationOptOut() != null);
    System.assert(response.getDialogNodes().get(0).getDisabled() != null);
    System.assert(response.getDialogNodes().get(0).getCreated() != null);
    System.assert(response.getDialogNodes().get(0).getUpdated() != null);
    System.assert(response.getCounterexamples().get(0).getText() != null);
    System.assert(response.getCounterexamples().get(0).getCreated() != null);
    System.assert(response.getCounterexamples().get(0).getUpdated() != null);
    System.assert(response.getWebhooks().get(0).getUrl() != null);
    System.assert(response.getWebhooks().get(0).getName() != null);
    System.assert(response.getWebhooks().get(0).getHeaders().get(0).getName() != null);
    System.assert(response.getWebhooks().get(0).getHeaders().get(0).getValue() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteWorkspace() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteWorkspaceOptions deleteWorkspaceOptionsModel = new IBMAssistantV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteWorkspace(deleteWorkspaceOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListIntents() {
    String mockResponseBody = '{"intents": [{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListIntentsOptions listIntentsOptionsModel = new IBMAssistantV1Models.ListIntentsOptionsBuilder()
      .workspaceId('testString')
      .xExport(true)
      .pageLimit(38)
      .xSort('intent')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.IntentCollection response = service.listIntents(listIntentsOptionsModel);
    System.assert(response.getIntents().get(0).getIntent() != null);
    System.assert(response.getIntents().get(0).getDescription() != null);
    System.assert(response.getIntents().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getUpdated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getText() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getCreated() != null);
    System.assert(response.getIntents().get(0).getExamples().get(0).getUpdated() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateIntent() {
    String mockResponseBody = '{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    IBMAssistantV1Models.CreateIntentOptions createIntentOptionsModel = new IBMAssistantV1Models.CreateIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .description('testString')
      .examples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Intent response = service.createIntent(createIntentOptionsModel);
    System.assert(response.getIntent() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getExamples().get(0).getText() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getExamples().get(0).getCreated() != null);
    System.assert(response.getExamples().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetIntent() {
    String mockResponseBody = '{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetIntentOptions getIntentOptionsModel = new IBMAssistantV1Models.GetIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .xExport(true)
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Intent response = service.getIntent(getIntentOptionsModel);
    System.assert(response.getIntent() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getExamples().get(0).getText() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getExamples().get(0).getCreated() != null);
    System.assert(response.getExamples().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateIntent() {
    String mockResponseBody = '{"intent": "intent", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.Example exampleModel = new IBMAssistantV1Models.ExampleBuilder()
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .build();
    IBMAssistantV1Models.UpdateIntentOptions updateIntentOptionsModel = new IBMAssistantV1Models.UpdateIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .newIntent('testString')
      .newDescription('testString')
      .newExamples(new List<IBMAssistantV1Models.Example> { exampleModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Intent response = service.updateIntent(updateIntentOptionsModel);
    System.assert(response.getIntent() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getExamples().get(0).getText() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getExamples().get(0).getCreated() != null);
    System.assert(response.getExamples().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteIntent() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteIntentOptions deleteIntentOptionsModel = new IBMAssistantV1Models.DeleteIntentOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteIntent(deleteIntentOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListExamples() {
    String mockResponseBody = '{"examples": [{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListExamplesOptions listExamplesOptionsModel = new IBMAssistantV1Models.ListExamplesOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .pageLimit(38)
      .xSort('text')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.ExampleCollection response = service.listExamples(listExamplesOptionsModel);
    System.assert(response.getExamples().get(0).getText() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getEntity() != null);
    System.assert(response.getExamples().get(0).getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getExamples().get(0).getCreated() != null);
    System.assert(response.getExamples().get(0).getUpdated() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateExample() {
    String mockResponseBody = '{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.CreateExampleOptions createExampleOptionsModel = new IBMAssistantV1Models.CreateExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .mentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Example response = service.createExample(createExampleOptionsModel);
    System.assert(response.getText() != null);
    System.assert(response.getMentions().get(0).getEntity() != null);
    System.assert(response.getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetExample() {
    String mockResponseBody = '{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetExampleOptions getExampleOptionsModel = new IBMAssistantV1Models.GetExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Example response = service.getExample(getExampleOptionsModel);
    System.assert(response.getText() != null);
    System.assert(response.getMentions().get(0).getEntity() != null);
    System.assert(response.getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateExample() {
    String mockResponseBody = '{"text": "text", "mentions": [{"entity": "entity", "location": ["8"]}], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.Mention mentionModel = new IBMAssistantV1Models.MentionBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.UpdateExampleOptions updateExampleOptionsModel = new IBMAssistantV1Models.UpdateExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .newText('testString')
      .newMentions(new List<IBMAssistantV1Models.Mention> { mentionModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Example response = service.updateExample(updateExampleOptionsModel);
    System.assert(response.getText() != null);
    System.assert(response.getMentions().get(0).getEntity() != null);
    System.assert(response.getMentions().get(0).getLocation().get(0) != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteExample() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteExampleOptions deleteExampleOptionsModel = new IBMAssistantV1Models.DeleteExampleOptionsBuilder()
      .workspaceId('testString')
      .intent('testString')
      .text('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteExample(deleteExampleOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListCounterexamples() {
    String mockResponseBody = '{"counterexamples": [{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListCounterexamplesOptions listCounterexamplesOptionsModel = new IBMAssistantV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId('testString')
      .pageLimit(38)
      .xSort('text')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.CounterexampleCollection response = service.listCounterexamples(listCounterexamplesOptionsModel);
    System.assert(response.getCounterexamples().get(0).getText() != null);
    System.assert(response.getCounterexamples().get(0).getCreated() != null);
    System.assert(response.getCounterexamples().get(0).getUpdated() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateCounterexample() {
    String mockResponseBody = '{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.CreateCounterexampleOptions createCounterexampleOptionsModel = new IBMAssistantV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Counterexample response = service.createCounterexample(createCounterexampleOptionsModel);
    System.assert(response.getText() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetCounterexample() {
    String mockResponseBody = '{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetCounterexampleOptions getCounterexampleOptionsModel = new IBMAssistantV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Counterexample response = service.getCounterexample(getCounterexampleOptionsModel);
    System.assert(response.getText() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateCounterexample() {
    String mockResponseBody = '{"text": "text", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.UpdateCounterexampleOptions updateCounterexampleOptionsModel = new IBMAssistantV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .newText('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Counterexample response = service.updateCounterexample(updateCounterexampleOptionsModel);
    System.assert(response.getText() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteCounterexample() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteCounterexampleOptions deleteCounterexampleOptionsModel = new IBMAssistantV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId('testString')
      .text('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCounterexample(deleteCounterexampleOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListEntities() {
    String mockResponseBody = '{"entities": [{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListEntitiesOptions listEntitiesOptionsModel = new IBMAssistantV1Models.ListEntitiesOptionsBuilder()
      .workspaceId('testString')
      .xExport(true)
      .pageLimit(38)
      .xSort('entity')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.EntityCollection response = service.listEntities(listEntitiesOptionsModel);
    System.assert(response.getEntities().get(0).getEntity() != null);
    System.assert(response.getEntities().get(0).getDescription() != null);
    System.assert(response.getEntities().get(0).getFuzzyMatch() != null);
    System.assert(response.getEntities().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getUpdated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getValue() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getXType() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getCreated() != null);
    System.assert(response.getEntities().get(0).getValues().get(0).getUpdated() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateEntity() {
    String mockResponseBody = '{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    IBMAssistantV1Models.CreateEntityOptions createEntityOptionsModel = new IBMAssistantV1Models.CreateEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .description('testString')
      .metadata(createMockMap())
      .fuzzyMatch(true)
      .values(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Entity response = service.createEntity(createEntityOptionsModel);
    System.assert(response.getEntity() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getFuzzyMatch() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getValues().get(0).getValue() != null);
    System.assert(response.getValues().get(0).getXType() != null);
    System.assert(response.getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getValues().get(0).getCreated() != null);
    System.assert(response.getValues().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetEntity() {
    String mockResponseBody = '{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetEntityOptions getEntityOptionsModel = new IBMAssistantV1Models.GetEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .xExport(true)
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Entity response = service.getEntity(getEntityOptionsModel);
    System.assert(response.getEntity() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getFuzzyMatch() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getValues().get(0).getValue() != null);
    System.assert(response.getValues().get(0).getXType() != null);
    System.assert(response.getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getValues().get(0).getCreated() != null);
    System.assert(response.getValues().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateEntity() {
    String mockResponseBody = '{"entity": "entity", "description": "description", "metadata": {}, "fuzzy_match": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.CreateValue createValueModel = new IBMAssistantV1Models.CreateValueBuilder()
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .build();
    IBMAssistantV1Models.UpdateEntityOptions updateEntityOptionsModel = new IBMAssistantV1Models.UpdateEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .newEntity('testString')
      .newDescription('testString')
      .newMetadata(createMockMap())
      .newFuzzyMatch(true)
      .newValues(new List<IBMAssistantV1Models.CreateValue> { createValueModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Entity response = service.updateEntity(updateEntityOptionsModel);
    System.assert(response.getEntity() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getFuzzyMatch() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getValues().get(0).getValue() != null);
    System.assert(response.getValues().get(0).getXType() != null);
    System.assert(response.getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getValues().get(0).getCreated() != null);
    System.assert(response.getValues().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteEntity() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteEntityOptions deleteEntityOptionsModel = new IBMAssistantV1Models.DeleteEntityOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteEntity(deleteEntityOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListMentions() {
    String mockResponseBody = '{"examples": [{"text": "text", "intent": "intent", "location": ["8"]}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListMentionsOptions listMentionsOptionsModel = new IBMAssistantV1Models.ListMentionsOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .xExport(true)
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.EntityMentionCollection response = service.listMentions(listMentionsOptionsModel);
    System.assert(response.getExamples().get(0).getText() != null);
    System.assert(response.getExamples().get(0).getIntent() != null);
    System.assert(response.getExamples().get(0).getLocation().get(0) != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testListValues() {
    String mockResponseBody = '{"values": [{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListValuesOptions listValuesOptionsModel = new IBMAssistantV1Models.ListValuesOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .xExport(true)
      .pageLimit(38)
      .xSort('value')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.ValueCollection response = service.listValues(listValuesOptionsModel);
    System.assert(response.getValues().get(0).getValue() != null);
    System.assert(response.getValues().get(0).getXType() != null);
    System.assert(response.getValues().get(0).getSynonyms().get(0) != null);
    System.assert(response.getValues().get(0).getPatterns().get(0) != null);
    System.assert(response.getValues().get(0).getCreated() != null);
    System.assert(response.getValues().get(0).getUpdated() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateValue() {
    String mockResponseBody = '{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.CreateValueOptions createValueOptionsModel = new IBMAssistantV1Models.CreateValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .metadata(createMockMap())
      .xType('synonyms')
      .synonyms(new List<String> { 'testString' })
      .patterns(new List<String> { 'testString' })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Value response = service.createValue(createValueOptionsModel);
    System.assert(response.getValue() != null);
    System.assert(response.getXType() != null);
    System.assert(response.getSynonyms().get(0) != null);
    System.assert(response.getPatterns().get(0) != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetValue() {
    String mockResponseBody = '{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetValueOptions getValueOptionsModel = new IBMAssistantV1Models.GetValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .xExport(true)
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Value response = service.getValue(getValueOptionsModel);
    System.assert(response.getValue() != null);
    System.assert(response.getXType() != null);
    System.assert(response.getSynonyms().get(0) != null);
    System.assert(response.getPatterns().get(0) != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateValue() {
    String mockResponseBody = '{"value": "value", "metadata": {}, "type": "xType", "synonyms": ["synonym"], "patterns": ["pattern"], "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.UpdateValueOptions updateValueOptionsModel = new IBMAssistantV1Models.UpdateValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .newValue('testString')
      .newMetadata(createMockMap())
      .newType('synonyms')
      .newSynonyms(new List<String> { 'testString' })
      .newPatterns(new List<String> { 'testString' })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Value response = service.updateValue(updateValueOptionsModel);
    System.assert(response.getValue() != null);
    System.assert(response.getXType() != null);
    System.assert(response.getSynonyms().get(0) != null);
    System.assert(response.getPatterns().get(0) != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteValue() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteValueOptions deleteValueOptionsModel = new IBMAssistantV1Models.DeleteValueOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteValue(deleteValueOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListSynonyms() {
    String mockResponseBody = '{"synonyms": [{"synonym": "synonym", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListSynonymsOptions listSynonymsOptionsModel = new IBMAssistantV1Models.ListSynonymsOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .pageLimit(38)
      .xSort('synonym')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.SynonymCollection response = service.listSynonyms(listSynonymsOptionsModel);
    System.assert(response.getSynonyms().get(0).getSynonym() != null);
    System.assert(response.getSynonyms().get(0).getCreated() != null);
    System.assert(response.getSynonyms().get(0).getUpdated() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateSynonym() {
    String mockResponseBody = '{"synonym": "synonym", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.CreateSynonymOptions createSynonymOptionsModel = new IBMAssistantV1Models.CreateSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Synonym response = service.createSynonym(createSynonymOptionsModel);
    System.assert(response.getSynonym() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetSynonym() {
    String mockResponseBody = '{"synonym": "synonym", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetSynonymOptions getSynonymOptionsModel = new IBMAssistantV1Models.GetSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Synonym response = service.getSynonym(getSynonymOptionsModel);
    System.assert(response.getSynonym() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateSynonym() {
    String mockResponseBody = '{"synonym": "synonym", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.UpdateSynonymOptions updateSynonymOptionsModel = new IBMAssistantV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .newSynonym('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.Synonym response = service.updateSynonym(updateSynonymOptionsModel);
    System.assert(response.getSynonym() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteSynonym() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteSynonymOptions deleteSynonymOptionsModel = new IBMAssistantV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId('testString')
      .entity('testString')
      .value('testString')
      .synonym('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteSynonym(deleteSynonymOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListDialogNodes() {
    String mockResponseBody = '{"dialog_nodes": [{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}], "pagination": {"refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5", "matched": "7", "refresh_cursor": "refreshCursor", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListDialogNodesOptions listDialogNodesOptionsModel = new IBMAssistantV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId('testString')
      .pageLimit(38)
      .xSort('dialog_node')
      .cursor('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNodeCollection response = service.listDialogNodes(listDialogNodesOptionsModel);
    System.assert(response.getDialogNodes().get(0).getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getConditions() != null);
    System.assert(response.getDialogNodes().get(0).getParent() != null);
    System.assert(response.getDialogNodes().get(0).getPreviousSibling() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getDialogNodes().get(0).getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getBehavior() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getDialogNode() != null);
    System.assert(response.getDialogNodes().get(0).getNextStep().getSelector() != null);
    System.assert(response.getDialogNodes().get(0).getTitle() != null);
    System.assert(response.getDialogNodes().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getEventName() != null);
    System.assert(response.getDialogNodes().get(0).getVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getName() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getXType() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getResultVariable() != null);
    System.assert(response.getDialogNodes().get(0).getActions().get(0).getCredentials() != null);
    System.assert(response.getDialogNodes().get(0).getDigressIn() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOut() != null);
    System.assert(response.getDialogNodes().get(0).getDigressOutSlots() != null);
    System.assert(response.getDialogNodes().get(0).getUserLabel() != null);
    System.assert(response.getDialogNodes().get(0).getDisambiguationOptOut() != null);
    System.assert(response.getDialogNodes().get(0).getDisabled() != null);
    System.assert(response.getDialogNodes().get(0).getCreated() != null);
    System.assert(response.getDialogNodes().get(0).getUpdated() != null);
    System.assert(response.getPagination().getRefreshUrl() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getTotal() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getRefreshCursor() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testCreateDialogNode() {
    String mockResponseBody = '{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();
    IBMAssistantV1Models.CreateDialogNodeOptions createDialogNodeOptionsModel = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .description('testString')
      .conditions('testString')
      .parent('testString')
      .previousSibling('testString')
      .output(dialogNodeOutputModel)
      .context(createMockMap())
      .metadata(createMockMap())
      .nextStep(dialogNodeNextStepModel)
      .title('testString')
      .xType('standard')
      .eventName('focus')
      .variable('testString')
      .actions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .digressIn('not_available')
      .digressOut('allow_returning')
      .digressOutSlots('not_allowed')
      .userLabel('testString')
      .disambiguationOptOut(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNode response = service.createDialogNode(createDialogNodeOptionsModel);
    System.assert(response.getDialogNode() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getConditions() != null);
    System.assert(response.getParent() != null);
    System.assert(response.getPreviousSibling() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getNextStep().getBehavior() != null);
    System.assert(response.getNextStep().getDialogNode() != null);
    System.assert(response.getNextStep().getSelector() != null);
    System.assert(response.getTitle() != null);
    System.assert(response.getXType() != null);
    System.assert(response.getEventName() != null);
    System.assert(response.getVariable() != null);
    System.assert(response.getActions().get(0).getName() != null);
    System.assert(response.getActions().get(0).getXType() != null);
    System.assert(response.getActions().get(0).getResultVariable() != null);
    System.assert(response.getActions().get(0).getCredentials() != null);
    System.assert(response.getDigressIn() != null);
    System.assert(response.getDigressOut() != null);
    System.assert(response.getDigressOutSlots() != null);
    System.assert(response.getUserLabel() != null);
    System.assert(response.getDisambiguationOptOut() != null);
    System.assert(response.getDisabled() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetDialogNode() {
    String mockResponseBody = '{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.GetDialogNodeOptions getDialogNodeOptionsModel = new IBMAssistantV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .includeAudit(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNode response = service.getDialogNode(getDialogNodeOptionsModel);
    System.assert(response.getDialogNode() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getConditions() != null);
    System.assert(response.getParent() != null);
    System.assert(response.getPreviousSibling() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getNextStep().getBehavior() != null);
    System.assert(response.getNextStep().getDialogNode() != null);
    System.assert(response.getNextStep().getSelector() != null);
    System.assert(response.getTitle() != null);
    System.assert(response.getXType() != null);
    System.assert(response.getEventName() != null);
    System.assert(response.getVariable() != null);
    System.assert(response.getActions().get(0).getName() != null);
    System.assert(response.getActions().get(0).getXType() != null);
    System.assert(response.getActions().get(0).getResultVariable() != null);
    System.assert(response.getActions().get(0).getCredentials() != null);
    System.assert(response.getDigressIn() != null);
    System.assert(response.getDigressOut() != null);
    System.assert(response.getDigressOutSlots() != null);
    System.assert(response.getUserLabel() != null);
    System.assert(response.getDisambiguationOptOut() != null);
    System.assert(response.getDisabled() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateDialogNode() {
    String mockResponseBody = '{"dialog_node": "dialogNode", "description": "description", "conditions": "conditions", "parent": "parent", "previous_sibling": "previousSibling", "output": {"generic": [{"response_type": "responseType", "values": [{"text": "text"}], "selection_policy": "selectionPolicy", "delimiter": "delimiter", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "query": "query", "query_type": "queryType", "filter": "filter", "discovery_version": "discoveryVersion"}], "modifiers": {"overwrite": false}}, "context": {}, "metadata": {}, "next_step": {"behavior": "behavior", "dialog_node": "dialogNode", "selector": "selector"}, "title": "title", "type": "xType", "event_name": "eventName", "variable": "variable", "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "digress_in": "digressIn", "digress_out": "digressOut", "digress_out_slots": "digressOutSlots", "user_label": "userLabel", "disambiguation_opt_out": true, "disabled": true, "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DialogNodeAction dialogNodeActionModel = new IBMAssistantV1Models.DialogNodeActionBuilder()
      .name('testString')
      .xType('client')
      .parameters(createMockMap())
      .resultVariable('testString')
      .credentials('testString')
      .build();
    IBMAssistantV1Models.DialogNodeNextStep dialogNodeNextStepModel = new IBMAssistantV1Models.DialogNodeNextStepBuilder()
      .behavior('get_user_input')
      .dialogNode('testString')
      .selector('condition')
      .build();
    IBMAssistantV1Models.DialogNodeOutputModifiers dialogNodeOutputModifiersModel = new IBMAssistantV1Models.DialogNodeOutputModifiersBuilder()
      .overwrite(true)
      .build();
    IBMAssistantV1Models.CaptureGroup captureGroupModel = new IBMAssistantV1Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV1Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV1Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV1Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV1Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV1Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV1Models.MessageInput messageInputModel = new IBMAssistantV1Models.MessageInputBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElementValue dialogNodeOutputOptionsElementValueModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementValueBuilder()
      .input(messageInputModel)
      .intents(new List<IBMAssistantV1Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV1Models.RuntimeEntity> { runtimeEntityModel })
      .build();
    IBMAssistantV1Models.DialogNodeOutputOptionsElement dialogNodeOutputOptionsElementModel = new IBMAssistantV1Models.DialogNodeOutputOptionsElementBuilder()
      .label('testString')
      .value(dialogNodeOutputOptionsElementValueModel)
      .build();
    IBMAssistantV1Models.DialogNodeOutputTextValuesElement dialogNodeOutputTextValuesElementModel = new IBMAssistantV1Models.DialogNodeOutputTextValuesElementBuilder()
      .text('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutputGeneric dialogNodeOutputGenericModel = new IBMAssistantV1Models.DialogNodeOutputGenericBuilder()
      .responseType('text')
      .values(new List<IBMAssistantV1Models.DialogNodeOutputTextValuesElement> { dialogNodeOutputTextValuesElementModel })
      .selectionPolicy('sequential')
      .delimiter('testString')
      .xTime(38)
      .typing(true)
      .source('testString')
      .title('testString')
      .description('testString')
      .preference('dropdown')
      .options(new List<IBMAssistantV1Models.DialogNodeOutputOptionsElement> { dialogNodeOutputOptionsElementModel })
      .messageToHumanAgent('testString')
      .query('testString')
      .queryType('natural_language')
      .filter('testString')
      .discoveryVersion('testString')
      .build();
    IBMAssistantV1Models.DialogNodeOutput dialogNodeOutputModel = new IBMAssistantV1Models.DialogNodeOutputBuilder()
      .generic(new List<IBMAssistantV1Models.DialogNodeOutputGeneric> { dialogNodeOutputGenericModel })
      .modifiers(dialogNodeOutputModifiersModel)
      .build();
    IBMAssistantV1Models.UpdateDialogNodeOptions updateDialogNodeOptionsModel = new IBMAssistantV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .newDialogNode('testString')
      .newDescription('testString')
      .newConditions('testString')
      .newParent('testString')
      .newPreviousSibling('testString')
      .newOutput(dialogNodeOutputModel)
      .newContext(createMockMap())
      .newMetadata(createMockMap())
      .newNextStep(dialogNodeNextStepModel)
      .newTitle('testString')
      .newType('standard')
      .newEventName('focus')
      .newVariable('testString')
      .newActions(new List<IBMAssistantV1Models.DialogNodeAction> { dialogNodeActionModel })
      .newDigressIn('not_available')
      .newDigressOut('allow_returning')
      .newDigressOutSlots('not_allowed')
      .newUserLabel('testString')
      .newDisambiguationOptOut(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.DialogNode response = service.updateDialogNode(updateDialogNodeOptionsModel);
    System.assert(response.getDialogNode() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getConditions() != null);
    System.assert(response.getParent() != null);
    System.assert(response.getPreviousSibling() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getValues().get(0).getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSelectionPolicy() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDelimiter() != null);
    System.assert(response.getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getQuery() != null);
    System.assert(response.getOutput().getGeneric().get(0).getQueryType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getFilter() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDiscoveryVersion() != null);
    System.assert(response.getOutput().getModifiers().getOverwrite() != null);
    System.assert(response.getNextStep().getBehavior() != null);
    System.assert(response.getNextStep().getDialogNode() != null);
    System.assert(response.getNextStep().getSelector() != null);
    System.assert(response.getTitle() != null);
    System.assert(response.getXType() != null);
    System.assert(response.getEventName() != null);
    System.assert(response.getVariable() != null);
    System.assert(response.getActions().get(0).getName() != null);
    System.assert(response.getActions().get(0).getXType() != null);
    System.assert(response.getActions().get(0).getResultVariable() != null);
    System.assert(response.getActions().get(0).getCredentials() != null);
    System.assert(response.getDigressIn() != null);
    System.assert(response.getDigressOut() != null);
    System.assert(response.getDigressOutSlots() != null);
    System.assert(response.getUserLabel() != null);
    System.assert(response.getDisambiguationOptOut() != null);
    System.assert(response.getDisabled() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteDialogNode() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteDialogNodeOptions deleteDialogNodeOptionsModel = new IBMAssistantV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId('testString')
      .dialogNode('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteDialogNode(deleteDialogNodeOptionsModel);

    Test.stopTest();
  }
  static testMethod void testListLogs() {
    String mockResponseBody = '{"logs": [{"request": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "alternate_intents": true, "context": {"conversation_id": "conversationId", "system": {}, "metadata": {"deployment": "deployment", "user_id": "userId"}}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "log_messages": [{"level": "level", "msg": "msg"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode", "suggestions": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode"}]}, "dialog_node": "dialogNode"}]}]}, "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}]}, "response": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "alternate_intents": true, "context": {"conversation_id": "conversationId", "system": {}, "metadata": {"deployment": "deployment", "user_id": "userId"}}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "log_messages": [{"level": "level", "msg": "msg"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode", "suggestions": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode"}]}, "dialog_node": "dialogNode"}]}]}, "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}]}, "log_id": "logId", "request_timestamp": "requestTimestamp", "response_timestamp": "responseTimestamp", "workspace_id": "workspaceId", "language": "language"}], "pagination": {"next_url": "nextUrl", "matched": "7", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListLogsOptions listLogsOptionsModel = new IBMAssistantV1Models.ListLogsOptionsBuilder()
      .workspaceId('testString')
      .xSort('testString')
      .filter('testString')
      .pageLimit(38)
      .cursor('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.LogCollection response = service.listLogs(listLogsOptionsModel);
    System.assert(response.getLogs().get(0).getRequest().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getAlternateIntents() != null);
    System.assert(response.getLogs().get(0).getRequest().getContext().getConversationId() != null);
    System.assert(response.getLogs().get(0).getRequest().getContext().getMetadata().getDeployment() != null);
    System.assert(response.getLogs().get(0).getRequest().getContext().getMetadata().getUserId() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getLevel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getMsg() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getName() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getXType() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getResultVariable() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getCredentials() != null);
    System.assert(response.getLogs().get(0).getResponse().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getAlternateIntents() != null);
    System.assert(response.getLogs().get(0).getResponse().getContext().getConversationId() != null);
    System.assert(response.getLogs().get(0).getResponse().getContext().getMetadata().getDeployment() != null);
    System.assert(response.getLogs().get(0).getResponse().getContext().getMetadata().getUserId() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getLevel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getMsg() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getName() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getXType() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getResultVariable() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getCredentials() != null);
    System.assert(response.getLogs().get(0).getLogId() != null);
    System.assert(response.getLogs().get(0).getRequestTimestamp() != null);
    System.assert(response.getLogs().get(0).getResponseTimestamp() != null);
    System.assert(response.getLogs().get(0).getWorkspaceId() != null);
    System.assert(response.getLogs().get(0).getLanguage() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testListAllLogs() {
    String mockResponseBody = '{"logs": [{"request": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "alternate_intents": true, "context": {"conversation_id": "conversationId", "system": {}, "metadata": {"deployment": "deployment", "user_id": "userId"}}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "log_messages": [{"level": "level", "msg": "msg"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode", "suggestions": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode"}]}, "dialog_node": "dialogNode"}]}]}, "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}]}, "response": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "alternate_intents": true, "context": {"conversation_id": "conversationId", "system": {}, "metadata": {"deployment": "deployment", "user_id": "userId"}}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "log_messages": [{"level": "level", "msg": "msg"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode", "suggestions": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}, "output": {"nodes_visited": ["nodesVisited"], "nodes_visited_details": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "text": ["text"], "generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"text": "text"}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}]}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "dialog_node": "dialogNode"}]}, "dialog_node": "dialogNode"}]}]}, "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}]}, "log_id": "logId", "request_timestamp": "requestTimestamp", "response_timestamp": "responseTimestamp", "workspace_id": "workspaceId", "language": "language"}], "pagination": {"next_url": "nextUrl", "matched": "7", "next_cursor": "nextCursor"}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.ListAllLogsOptions listAllLogsOptionsModel = new IBMAssistantV1Models.ListAllLogsOptionsBuilder()
      .filter('testString')
      .xSort('testString')
      .pageLimit(38)
      .cursor('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV1Models.LogCollection response = service.listAllLogs(listAllLogsOptionsModel);
    System.assert(response.getLogs().get(0).getRequest().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getAlternateIntents() != null);
    System.assert(response.getLogs().get(0).getRequest().getContext().getConversationId() != null);
    System.assert(response.getLogs().get(0).getRequest().getContext().getMetadata().getDeployment() != null);
    System.assert(response.getLogs().get(0).getRequest().getContext().getMetadata().getUserId() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getLevel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getLogMessages().get(0).getMsg() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getName() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getXType() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getResultVariable() != null);
    System.assert(response.getLogs().get(0).getRequest().getActions().get(0).getCredentials() != null);
    System.assert(response.getLogs().get(0).getResponse().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getAlternateIntents() != null);
    System.assert(response.getLogs().get(0).getResponse().getContext().getConversationId() != null);
    System.assert(response.getLogs().get(0).getResponse().getContext().getMetadata().getDeployment() != null);
    System.assert(response.getLogs().get(0).getResponse().getContext().getMetadata().getUserId() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getLevel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getMsg() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisited().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getNodesVisitedDetails().get(0).getConditions() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getText().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getIntent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getIntents().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getEntity() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getValue() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getConfidence() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getOptions().get(0).getValue().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getOutput().getGeneric().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getOutput().getGeneric().get(0).getSuggestions().get(0).getDialogNode() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getName() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getXType() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getResultVariable() != null);
    System.assert(response.getLogs().get(0).getResponse().getActions().get(0).getCredentials() != null);
    System.assert(response.getLogs().get(0).getLogId() != null);
    System.assert(response.getLogs().get(0).getRequestTimestamp() != null);
    System.assert(response.getLogs().get(0).getResponseTimestamp() != null);
    System.assert(response.getLogs().get(0).getWorkspaceId() != null);
    System.assert(response.getLogs().get(0).getLanguage() != null);
    System.assert(response.getPagination().getNextUrl() != null);
    System.assert(response.getPagination().getMatched() != null);
    System.assert(response.getPagination().getNextCursor() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteUserData() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV1Models.DeleteUserDataOptions deleteUserDataOptionsModel = new IBMAssistantV1Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(deleteUserDataOptionsModel);

    Test.stopTest();
  }
}
