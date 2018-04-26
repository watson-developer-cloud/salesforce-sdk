@isTest
private class IBMConversationV1Test {

  private static String workspaceName;
  private static String workspaceDescription;
  private static String workspaceLanguage;
  private static String workspaceId;
  private static IBMWatsonMapModel metadata;
  private static String timeCreated;
  private static String timeUpdated;
  private static Boolean learningOptOut;
  private static String intentName;
  private static String intentDescription;
  private static String exampleText;
  private static String entityName;
  private static String entityDescription;
  private static String valueName;
  private static String valuePattern;
  private static String valueSynonym;
  private static String counterexampleText;
  private static String refreshUrl;
  private static String nextUrl;
  private static Long paginationTotal;
  private static Long paginationMatched;
  private static Double confidence;
  private static Long entityLocation;
  private static String messageInput;
  private static Boolean alternateIntents;
  private static String conversationId;
  private static String systemResponseKey;
  private static Long systemResponseValue;
  private static String messageResponse;
  private static String nodeVisited;
  private static String nodeVisitedDetailsNode;
  private static String nodeVisitedDetailsTitle;
  private static String nodeVisitedDetailsCondition;
  private static String logMessageLevel;
  private static String logMessageText;
  private static String requestTimestamp;
  private static String responseTimestamp;
  private static String logId;
  private static Boolean fuzzyMatch;
  private static String dialogNodeName;
  private static String dialogNodeDescription;
  private static String dialogNodeTitle;
  private static String dialogNodeConditions;
  private static String dialogNodeParent;
  private static String dialogNodePreviousSibling;
  private static IBMWatsonMapModel dialogNodeOutput;
  private static IBMWatsonMapModel dialogNodeContext;
  private static String nextStepBehavior;
  private static String nextStepDialogNode;
  private static String nextStepSelector;
  private static String actionName;
  private static String actionType;
  private static IBMWatsonMapModel actionParameters;
  private static String actionResultVariable;
  private static String actionCredentials;
  private static String dialogNodeType;
  private static String dialogNodeEventName;
  private static String dialogNodeVariable;
  private static String dialogNodeDigressIn;
  private static String dialogNodeDigressOut;
  private static String dialogNodeDigressOutSlots;
  private static String nextCursor;
  private static String refreshCursor;


  static {
    workspaceName = 'test_workspace';
    workspaceDescription = 'Description of ' + workspaceName;
    workspaceLanguage = 'en';
    workspaceId = '123456789';
    metadata = new IBMWatsonMapModel();
    metadata.put('code', 'test_code');
    timeCreated = '"2015-12-06T23:53:59.153Z"';
    timeUpdated = '"2017-10-18T15:44:56.800"';
    learningOptOut = false;
    intentName = 'test_intent';
    intentDescription = 'Description of ' + intentName;
    exampleText = 'Example of ' + intentName;
    entityName = 'test_entity';
    entityDescription = 'Description of ' + entityName;
    valueName = 'Value of ' + entityName;
    valuePattern = 'test_pattern';
    valueSynonym = 'Synonym for value of ' + entityName;
    counterexampleText = 'Counterexample for ' + workspaceName;
    refreshUrl = '/v1/workspaces?version=2016-01-24&page_limit=1';
    nextUrl = '/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1';
    paginationTotal = 1;
    paginationMatched = 1;
    confidence = 0.314159;
    entityLocation = 10;
    messageInput = 'This is a message';
    alternateIntents = false;
    conversationId = '0000000';
    systemResponseKey = 'dialog_turn_counter';
    systemResponseValue = 5;
    messageResponse = 'This is a response';
    nodeVisited = 'node_1';
    nodeVisitedDetailsNode = 'node';
    nodeVisitedDetailsTitle = 'node_title';
    nodeVisitedDetailsCondition = '#condition';
    logMessageLevel = 'warn';
    logMessageText = 'test_warning';
    requestTimestamp = '2017-12-06T23:53:59.153Z';
    responseTimestamp = '2017-12-06T23:54:59.153Z';
    logId = '987654321';
    fuzzyMatch = false;
    dialogNodeName = 'dialog_node';
    dialogNodeDescription = 'Description of ' + dialogNodeName;
    dialogNodeTitle = 'dialog_node_title';
    dialogNodeConditions = '#test';
    dialogNodeParent = 'parent';
    dialogNodePreviousSibling = 'sibling';
    dialogNodeOutput = new IBMWatsonMapModel();
    dialogNodeOutput.put('text', 'output text');
    dialogNodeContext = new IBMWatsonMapModel();
    dialogNodeContext.put('context', 'context_val');
    nextStepBehavior = 'behavior';
    nextStepDialogNode = 'next_dialog_node';
    nextStepSelector = 'body';
    actionName = 'action';
    actionType = 'server';
    actionParameters = new IBMWatsonMapModel();
    actionParameters.put('param_1', 'param_1_val');
    actionResultVariable = 'action_var';
    actionCredentials = 'creds';
    dialogNodeType = 'standard';
    dialogNodeEventName = 'dialog_node_event';
    dialogNodeVariable = 'dialog_node_var';
    dialogNodeDigressIn = 'returns';
    dialogNodeDigressOut = 'allow_all';
    dialogNodeDigressOutSlots = 'allow_all';
    nextCursor = 'next_cursor';
    refreshCursor = 'refresh_cursor';
  }

  static testMethod void testCreateWorkspace() {
    String body = IBMWatsonMockResponses.workspace();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');
    IBMConversationV1Models.CreateCounterexample counterexample = new IBMConversationV1Models.CreateCounterexampleBuilder('text')
      .text(counterexampleText)
      .build();
    counterexample = counterexample.newBuilder().build();
    IBMConversationV1Models.CreateExample createExample=new IBMConversationV1Models.CreateExampleBuilder('example').text('example').build();
    createExample = createExample.newBuilder().build();
    IBMConversationV1Models.CreateIntent createIntent = new IBMConversationV1Models.CreateIntentBuilder(intentName)
      .intent(intentName)
      .description('test')
      .examples(new List<IBMConversationV1Models.CreateExample>{createExample})
      .addExamples(createExample)
      .build();
    createIntent = createIntent.newBuilder().build();
    IBMConversationV1Models.DialogNodeAction  dialogNodeAction = new IBMConversationV1Models.DialogNodeAction();
    dialogNodeAction.setName('test');
    dialogNodeAction.setType('test');
    dialogNodeAction.setParameters(metadata);
    dialogNodeAction.setResultVariable('test');
    dialogNodeAction.setCredentials('test');
    IBMConversationV1Models.DialogNodeNextStep dialogNodeNextStep=new IBMConversationV1Models.DialogNodeNextStep();
    dialogNodeNextStep.setBehavior('test');
    dialogNodeNextStep.setDialogNode('test');
    dialogNodeNextStep.setSelector('test');
    IBMConversationV1Models.CreateDialogNode createDialogNode = new IBMConversationV1Models.CreateDialogNodeBuilder()
    .addActions(dialogNodeAction)
    .dialogNode('test')
    .description('test')
    .conditions('test')
    .parent('test')
    .previousSibling('test')
    .output(metadata)
    .context(metadata)
    .metadata(metadata)
    .nextStep(dialogNodeNextStep)
    .actions(new List<IBMConversationV1Models.DialogNodeAction>{dialogNodeAction})
    .title('test')
    .typeField('test')
    .eventName('test')
    .variable('test')
    .build();
    createDialogNode = createDialogNode.newBuilder().build();
    IBMConversationV1Models.CreateValue createValue = new IBMConversationV1Models.CreateValueBuilder('test')
      .addSynonyms('test')
      .addPatterns('test')
      .value('test')
      .metadata(metadata)
      .synonyms(new List<String>{'test1', 'test2'})
      .patterns(new List<String>{'test1', 'test2'})
      .typeField('test')
      .build();
    createValue = createValue.newBuilder().build();
    IBMConversationV1Models.CreateEntity createEntity = new IBMConversationV1Models.CreateEntityBuilder('test')
      .addValues(createValue)
      .entity('test')
      .description('test')
      .metadata(metadata)
      .values(new List<IBMConversationV1Models.CreateValue>{createValue})
      .build();
    createEntity = createEntity.newBuilder().build();
    IBMConversationV1Models.CreateWorkspaceOptions createWorkspaceOptions = new IBMConversationV1Models.CreateWorkspaceOptionsBuilder()
      .name(workspaceName)
      .description(workspaceDescription)
      .addCounterexamples(counterexample)
      .counterexamples(new List<IBMConversationV1Models.CreateCounterexample>{counterexample})
      .addIntents(createIntent)
      .intents(new List<IBMConversationV1Models.CreateIntent>{createIntent})
      .addDialogNodes(createDialogNode)
      .dialogNodes(new List<IBMConversationV1Models.CreateDialogNode>{createDialogNode})
      .addentities(createEntity)
      .entities(new List<IBMConversationV1Models.CreateEntity>{createEntity})
      .language(workspaceLanguage)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
     createWorkspaceOptions = createWorkspaceOptions.newBuilder().build();
    IBMConversationV1Models.Workspace response = conversation.createWorkspace(createWorkspaceOptions);

    System.assertEquals(response.getName(), workspaceName);
    System.assertEquals(response.getDescription(), workspaceDescription);
    System.assertEquals(response.getLanguage(), workspaceLanguage);
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getWorkspaceId(), workspaceId);
    System.assertEquals(response.getLearningOptOut(), learningOptOut);
    Test.stopTest();
  }

  static testMethod void testDeleteWorkspace() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteWorkspaceOptions deleteOptions = new IBMConversationV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteWorkspace(deleteOptions);

    Test.stopTest();
  }

  static testMethod void testGetWorkspace() {
    String body = IBMWatsonMockResponses.workspaceExport();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetWorkspaceOptions getOptions = new IBMConversationV1Models.GetWorkspaceOptionsBuilder()
      .includeAudit(true)
      .workspaceId(workspaceId)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.WorkspaceExport response = conversation.getWorkspace(getOptions);

    System.assertEquals(response.getName(), workspaceName);
    System.assertEquals(response.getDescription(), workspaceDescription);
    System.assertEquals(response.getLanguage(), workspaceLanguage);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getIntents().get(0).getIntent(), intentName);
    System.assertEquals(response.getIntents().get(0).getDescription(), intentDescription);
    System.assertEquals(response.getIntents().get(0).getExamples().get(0).getText(), exampleText);
    System.assertEquals(response.getEntities().get(0).getEntity(), entityName);
    System.assertEquals(response.getEntities().get(0).getDescription(), entityDescription);
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getValue(), valueName);
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getSynonyms().get(0), valueSynonym);
    System.assertEquals(response.getCounterexamples().get(0).getText(), counterexampleText);
    System.assertEquals(response.getDialogNodes(), new List<IBMConversationV1Models.DialogNode>());
    Test.stopTest();
  }

  static testMethod void updateWorkspace() {
    String body = IBMWatsonMockResponses.workspace();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateWorkspaceOptions updateOptions = new IBMConversationV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .append(false)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.Workspace response = conversation.updateWorkspace(updateOptions);

    System.assertEquals(response.getName(), workspaceName);
    System.assertEquals(response.getDescription(), workspaceDescription);
    System.assertEquals(response.getLanguage(), workspaceLanguage);
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getWorkspaceId(), workspaceId);
    System.assertEquals(response.getLearningOptOut(), learningOptOut);
    Test.stopTest();
  }

  static testMethod void testListWorkspaces() {
    String body = IBMWatsonMockResponses.workspaceCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListWorkspacesOptions listOptions = new IBMConversationV1Models.ListWorkspacesOptionsBuilder()
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.WorkspaceCollection response = conversation.listWorkspaces(listOptions);

    System.assertEquals(response.getWorkspaces().get(0).getName(), workspaceName);
    System.assertEquals(response.getWorkspaces().get(0).getDescription(), workspaceDescription);
    System.assertEquals(response.getWorkspaces().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getWorkspaces().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getWorkspaces().get(0).getMetadata(), metadata);
    System.assertEquals(response.getWorkspaces().get(0).getWorkspaceId(), workspaceId);
    System.assertEquals(response.getWorkspaces().get(0).getLearningOptOut(), learningOptOut);
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    Test.stopTest();
  }

  static testMethod void createValue() {
    String body = IBMWatsonMockResponses.value();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateValueOptions createOptions = new IBMConversationV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .metadata(metadata)
      .addPatterns(valuePattern)
      .addSynonyms(valueSynonym)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.Value response = conversation.createValue(createOptions);

    System.assertEquals(response.getValue(), valueName);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getPatterns().get(0), valuePattern);
    System.assertEquals(response.getSynonyms().get(0), valueSynonym);
    Test.stopTest();
  }

  static testMethod void deleteValue() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteValueOptions deleteOptions = new IBMConversationV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteValue(deleteOptions);

    Test.stopTest();
  }

  static testMethod void getValue() {
    String body = IBMWatsonMockResponses.value();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetValueOptions getOptions = new IBMConversationV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .exportField(true)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.ValueExport response = conversation.getValue(getOptions);

    System.assertEquals(response.getValue(), valueName);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getPatterns().get(0), valuePattern);
    System.assertEquals(response.getSynonyms().get(0), valueSynonym);
    Test.stopTest();
  }

  static testMethod void updateValue() {
    String body = IBMWatsonMockResponses.value();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateValueOptions updateOptions = new IBMConversationV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .newMetadata(metadata)
      .addNewPatterns(valuePattern)
      .addNewSynonyms(valueSynonym)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.Value response = conversation.updateValue(updateOptions);

    System.assertEquals(response.getValue(), valueName);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getPatterns().get(0), valuePattern);
    System.assertEquals(response.getSynonyms().get(0), valueSynonym);
    Test.stopTest();
  }

  static testMethod void listValues() {
    String body = IBMWatsonMockResponses.valueCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListValuesOptions listOptions = new IBMConversationV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.ValueCollection response = conversation.listValues(listOptions);

    System.assertEquals(response.getValues().get(0).getValue(), valueName);
    System.assertEquals(response.getValues().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getValues().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getValues().get(0).getMetadata(), metadata);
    System.assertEquals(response.getValues().get(0).getPatterns().get(0), valuePattern);
    System.assertEquals(response.getValues().get(0).getSynonyms().get(0), valueSynonym);
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    Test.stopTest();
  }

  static testMethod void message() {
    String body = IBMWatsonMockResponses.messageResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.InputData input = new IBMConversationV1Models.InputDataBuilder()
      .text(messageInput)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    input = input.newBuilder().build();
    IBMConversationV1Models.MessageOptions messageOptions = new IBMConversationV1Models.MessageOptionsBuilder()
      .workspaceId(workspaceId)
      .input(input)
      .alternateIntents(alternateIntents)
      .nodesVisitedDetails(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    messageOptions = messageOptions.newBuilder().build();
    IBMConversationV1Models.MessageResponse response = conversation.message(messageOptions);

    System.assertEquals(response.getIntents().get(0).getIntent(), intentName);
    System.assertEquals(response.getIntents().get(0).getConfidence(), confidence);
    System.assertEquals(response.getEntities().get(0).getEntity(), entityName);
    System.assertEquals(response.getEntities().get(0).getLocation().get(0), entityLocation);
    System.assertEquals(response.getEntities().get(0).getValue(), valueName);
    System.assertEquals(response.getEntities().get(0).getConfidence(), confidence);
    System.assertEquals(response.getInput().getText(), messageInput);
    System.assertEquals(response.getAlternateIntents(), alternateIntents);
    System.assertEquals(response.getContext().getConversationId(), conversationId);
    System.assertEquals(Long.valueOf((String) response.getContext().getSystem().get(systemResponseKey)), systemResponseValue);
    System.assertEquals(response.getOutput().getText().get(0), messageResponse);
    System.assertEquals(response.getOutput().getNodesVisited().get(0), nodeVisited);
    System.assertEquals(response.getOutput().getNodesVisitedDetails().get(0).getDialogNode(), nodeVisitedDetailsNode);
    System.assertEquals(response.getOutput().getNodesVisitedDetails().get(0).getTitle(), nodeVisitedDetailsTitle);
    System.assertEquals(response.getOutput().getNodesVisitedDetails().get(0).getConditions(), nodeVisitedDetailsCondition);
    System.assertEquals(response.getOutput().getLogMessages().get(0).getLevel(), logMessageLevel);
    System.assertEquals(response.getOutput().getLogMessages().get(0).getMsg(), logMessageText);
    System.assert(response.getOutput().getNodesVisitedDetails() != null);
    Test.stopTest();
  }

  static testMethod void createIntent() {
    String body = IBMWatsonMockResponses.intent();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateIntentOptions createOptions = new IBMConversationV1Models.CreateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .description(intentDescription)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.Intent response = conversation.createIntent(createOptions);

    System.assertEquals(response.getIntent(), intentName);
    System.assertEquals(response.getDescription(), intentDescription);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void deleteIntent() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteIntentOptions deleteOptions = new IBMConversationV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteIntent(deleteOptions);

    Test.stopTest();
  }

  static testMethod void getIntent() {
    String body = IBMWatsonMockResponses.intentExport();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetIntentOptions getOptions = new IBMConversationV1Models.GetIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .exportField(true)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.IntentExport response = conversation.getIntent(getOptions);

    System.assertEquals(response.getIntent(), intentName);
    System.assertEquals(response.getDescription(), intentDescription);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getExamples().get(0).getText(), exampleText);
    System.assertEquals(response.getExamples().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getExamples().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void listIntents() {
    String body = IBMWatsonMockResponses.intentCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListIntentsOptions listOptions = new IBMConversationV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.IntentCollection response = conversation.listIntents(listOptions);

    System.assertEquals(response.getIntents().get(0).getIntent(), intentName);
    System.assertEquals(response.getIntents().get(0).getDescription(), intentDescription);
    System.assertEquals(response.getIntents().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getIntents().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getIntents().get(0).getExamples().get(0).getText(), exampleText);
    System.assertEquals(response.getIntents().get(0).getExamples().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getIntents().get(0).getExamples().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    System.assertEquals(response.getPagination().getNextCursor(), nextCursor);
    System.assertEquals(response.getPagination().getRefreshCursor(), refreshCursor);
    Test.stopTest();
  }

  static testMethod void updateIntent() {
    String body = IBMWatsonMockResponses.intent();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateIntentOptions updateOptions = new IBMConversationV1Models.UpdateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .newDescription(intentDescription)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.Intent response = conversation.updateIntent(updateOptions);

    System.assertEquals(response.getIntent(), intentName);
    System.assertEquals(response.getDescription(), intentDescription);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void createExample() {
    String body = IBMWatsonMockResponses.example();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateExampleOptions createOptions = new IBMConversationV1Models.CreateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .text(exampleText)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.Example response = conversation.createExample(createOptions);

    System.assertEquals(response.getText(), exampleText);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void deleteExample() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteExampleOptions deleteOptions = new IBMConversationV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .text('example A')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteExample(deleteOptions);

    Test.stopTest();
  }

  static testMethod void getExample() {
    String body = IBMWatsonMockResponses.example();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetExampleOptions getOptions = new IBMConversationV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .text(exampleText)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.Example response = conversation.getExample(getOptions);

    System.assertEquals(response.getText(), exampleText);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void listExamples() {
    String body = IBMWatsonMockResponses.exampleCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListExamplesOptions listOptions = new IBMConversationV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.ExampleCollection response = conversation.listExamples(listOptions);

    System.assertEquals(response.getExamples().get(0).getText(), exampleText);
    System.assertEquals(response.getExamples().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getExamples().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    Test.stopTest();
  }

  static testMethod void updateExample() {
    String body = IBMWatsonMockResponses.example();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateExampleOptions updateOptions = new IBMConversationV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent(intentName)
      .text(exampleText)
      .newText(exampleText)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.Example response = conversation.updateExample(updateOptions);

    System.assertEquals(response.getText(), exampleText);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void createEntity() {
    String body = IBMWatsonMockResponses.entity();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateEntityOptions createOptions = new IBMConversationV1Models.CreateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .description(entityDescription)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.Entity response = conversation.createEntity(createOptions);

    System.assertEquals(response.getEntity(), entityName);
    System.assertEquals(response.getDescription(), entityDescription);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getFuzzyMatch(), fuzzyMatch);
    Test.stopTest();
  }

  static testMethod void deleteEntity() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteEntityOptions deleteOptions = new IBMConversationV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteEntity(deleteOptions);

    Test.stopTest();
  }

  static testMethod void getEntity() {
    String body = IBMWatsonMockResponses.entityExport();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetEntityOptions getOptions = new IBMConversationV1Models.GetEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .exportField(true)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.EntityExport response = conversation.getEntity(getOptions);

    System.assertEquals(response.getEntity(), entityName);
    System.assertEquals(response.getDescription(), entityDescription);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getFuzzyMatch(), fuzzyMatch);
    System.assertEquals(response.getValues().get(0).getValue(), valueName);
    System.assertEquals(response.getValues().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getValues().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getValues().get(0).getMetadata(), metadata);
    System.assertEquals(response.getValues().get(0).getPatterns().get(0), valuePattern);
    System.assertEquals(response.getValues().get(0).getSynonyms().get(0), valueSynonym);
    Test.stopTest();
  }

  static testMethod void listEntities() {
    String body = IBMWatsonMockResponses.entityCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListEntitiesOptions listOptions = new IBMConversationV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.EntityCollection response = conversation.listEntities(listOptions);

    System.assertEquals(response.getEntities().get(0).getEntity(), entityName);
    System.assertEquals(response.getEntities().get(0).getDescription(), entityDescription);
    System.assertEquals(response.getEntities().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getEntities().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getEntities().get(0).getMetadata(), metadata);
    System.assertEquals(response.getEntities().get(0).getFuzzyMatch(), fuzzyMatch);
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getValue(), valueName);
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getMetadata(), metadata);
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getPatterns().get(0), valuePattern);
    System.assertEquals(response.getEntities().get(0).getValues().get(0).getSynonyms().get(0), valueSynonym);
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    Test.stopTest();
  }

  static testMethod void updateEntity() {
    String body = IBMWatsonMockResponses.entity();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateEntityOptions updateOptions = new IBMConversationV1Models.UpdateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .newDescription(entityDescription)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.Entity response = conversation.updateEntity(updateOptions);

    System.assertEquals(response.getEntity(), entityName);
    System.assertEquals(response.getDescription(), entityDescription);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getFuzzyMatch(), fuzzyMatch);
    Test.stopTest();
  }

  static testMethod void createSynonym() {
    String body = IBMWatsonMockResponses.synonym();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateSynonymOptions createOptions = new IBMConversationV1Models.CreateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .synonym(valueSynonym)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.Synonym response = conversation.createSynonym(createOptions);

    System.assertEquals(response.getSynonym(), valueSynonym);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void deleteSynonym() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteSynonymOptions deleteOptions = new IBMConversationV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .synonym(valueSynonym)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteSynonym(deleteOptions);

    Test.stopTest();
  }

  static testMethod void getSynonym() {
    String body = IBMWatsonMockResponses.synonym();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetSynonymOptions getOptions = new IBMConversationV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .synonym(valueSynonym)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.Synonym response = conversation.getSynonym(getOptions);

    System.assertEquals(response.getSynonym(), valueSynonym);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void listSynonyms() {
    String body = IBMWatsonMockResponses.synonymCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListSynonymsOptions listOptions = new IBMConversationV1Models.ListSynonymsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.SynonymCollection response = conversation.listSynonyms(listOptions);

    System.assertEquals(response.getSynonyms().get(0).getSynonym(), valueSynonym);
    System.assertEquals(response.getSynonyms().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getSynonyms().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    Test.stopTest();
  }

  static testMethod void updateSynonym() {
    String body = IBMWatsonMockResponses.synonym();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateSynonymOptions updateOptions = new IBMConversationV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity(entityName)
      .value(valueName)
      .synonym(valueSynonym)
      .newSynonym(valueSynonym)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.Synonym response = conversation.updateSynonym(updateOptions);

    System.assertEquals(response.getSynonym(), valueSynonym);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void createDialogNode() {
    String body = IBMWatsonMockResponses.dialogNode();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
        200,
        'Success',
        body,
        null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateDialogNodeOptions createOptions = new IBMConversationV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNodeName)
      .digressIn(dialogNodeDigressIn)
      .digressOut(dialogNodeDigressOut)
      .digressOutSlots(dialogNodeDigressOutSlots)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.DialogNode response = conversation.createDialogNode(createOptions);

    System.assertEquals(response.getDialogNode(), dialogNodeName);
    System.assertEquals(response.getDescription(), dialogNodeDescription);
    System.assertEquals(response.getTitle(), dialogNodeTitle);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getConditions(), dialogNodeConditions);
    System.assertEquals(response.getParent(), dialogNodeParent);
    System.assertEquals(response.getPreviousSibling(), dialogNodePreviousSibling);
    System.assertEquals(response.getNextStep().getDialogNode(), nextStepDialogNode);
    System.assertEquals(response.getNextStep().getBehavior(), nextStepBehavior);
    System.assertEquals(response.getNextStep().getSelector(), nextStepSelector);
    System.assertEquals(response.getOutput(), dialogNodeOutput);
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getContext(), dialogNodeContext);
    System.assertEquals(response.getActions().get(0).getName(), actionName);
    System.assertEquals(response.getActions().get(0).getType(), actionType);
    System.assertEquals(response.getActions().get(0).getParameters(), actionParameters);
    System.assertEquals(response.getActions().get(0).getResultVariable(), actionResultVariable);
    System.assertEquals(response.getActions().get(0).getCredentials(), actionCredentials);
    System.assertEquals(response.getType(), dialogNodeType);
    System.assertEquals(response.getEventName(), dialogNodeEventName);
    System.assertEquals(response.getVariable(), dialogNodeVariable);
    System.assertEquals(response.getDigressIn(), dialogNodeDigressIn);
    System.assertEquals(response.getDigressOut(), dialogNodeDigressOut);
    System.assertEquals(response.getDigressOutSlots(), dialogNodeDigressOutSlots);
    Test.stopTest();
  }

  static testMethod void deleteDialogNode() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteDialogNodeOptions deleteOptions = new IBMConversationV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNodeName)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteDialogNode(deleteOptions);

    Test.stopTest();
  }

  static testMethod void getDialogNode() {
    String body = IBMWatsonMockResponses.dialogNode();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetDialogNodeOptions getOptions = new IBMConversationV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNodeName)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.DialogNode response = conversation.getDialogNode(getOptions);

    System.assertEquals(response.getDialogNode(), dialogNodeName);
    System.assertEquals(response.getDescription(), dialogNodeDescription);
    System.assertEquals(response.getTitle(), dialogNodeTitle);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getConditions(), dialogNodeConditions);
    System.assertEquals(response.getParent(), dialogNodeParent);
    System.assertEquals(response.getPreviousSibling(), dialogNodePreviousSibling);
    System.assertEquals(response.getNextStep().getDialogNode(), nextStepDialogNode);
    System.assertEquals(response.getNextStep().getBehavior(), nextStepBehavior);
    System.assertEquals(response.getNextStep().getSelector(), nextStepSelector);
    System.assertEquals(response.getOutput(), dialogNodeOutput);
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getContext(), dialogNodeContext);
    System.assertEquals(response.getActions().get(0).getName(), actionName);
    System.assertEquals(response.getActions().get(0).getType(), actionType);
    System.assertEquals(response.getActions().get(0).getParameters(), actionParameters);
    System.assertEquals(response.getActions().get(0).getResultVariable(), actionResultVariable);
    System.assertEquals(response.getActions().get(0).getCredentials(), actionCredentials);
    System.assertEquals(response.getType(), dialogNodeType);
    System.assertEquals(response.getEventName(), dialogNodeEventName);
    System.assertEquals(response.getVariable(), dialogNodeVariable);
    Test.stopTest();
  }

  static testMethod void listDialogNodes() {
    String body = IBMWatsonMockResponses.dialogNodeCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListDialogNodesOptions listOptions = new IBMConversationV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.DialogNodeCollection response = conversation.listDialogNodes(listOptions);

    System.assertEquals(response.getDialogNodes().get(0).getDialogNode(), dialogNodeName);
    System.assertEquals(response.getDialogNodes().get(0).getDescription(), dialogNodeDescription);
    System.assertEquals(response.getDialogNodes().get(0).getTitle(), dialogNodeTitle);
    System.assertEquals(response.getDialogNodes().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getDialogNodes().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getDialogNodes().get(0).getConditions(), dialogNodeConditions);
    System.assertEquals(response.getDialogNodes().get(0).getParent(), dialogNodeParent);
    System.assertEquals(response.getDialogNodes().get(0).getPreviousSibling(), dialogNodePreviousSibling);
    System.assertEquals(response.getDialogNodes().get(0).getNextStep().getDialogNode(), nextStepDialogNode);
    System.assertEquals(response.getDialogNodes().get(0).getNextStep().getBehavior(), nextStepBehavior);
    System.assertEquals(response.getDialogNodes().get(0).getNextStep().getSelector(), nextStepSelector);
    System.assertEquals(response.getDialogNodes().get(0).getOutput(), dialogNodeOutput);
    System.assertEquals(response.getDialogNodes().get(0).getMetadata(), metadata);
    System.assertEquals(response.getDialogNodes().get(0).getContext(), dialogNodeContext);
    System.assertEquals(response.getDialogNodes().get(0).getActions().get(0).getName(), actionName);
    System.assertEquals(response.getDialogNodes().get(0).getActions().get(0).getParameters(), actionParameters);
    System.assertEquals(response.getDialogNodes().get(0).getActions().get(0).getResultVariable(), actionResultVariable);
    System.assertEquals(response.getDialogNodes().get(0).getActions().get(0).getCredentials(), actionCredentials);
    System.assertEquals(response.getDialogNodes().get(0).getEventName(), dialogNodeEventName);
    System.assertEquals(response.getDialogNodes().get(0).getVariable(), dialogNodeVariable);
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    Test.stopTest();
  }

  static testMethod void updateDialogNode() {
    String body = IBMWatsonMockResponses.dialogNode();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateDialogNodeOptions updateOptions = new IBMConversationV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode(dialogNodeName)
      .newDialogNode(dialogNodeName)
      .newDescription(dialogNodeDescription)
      .newDigressIn(dialogNodeDigressIn)
      .newDigressOut(dialogNodeDigressOut)
      .newDigressOutSlots(dialogNodeDigressOutSlots)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.DialogNode response = conversation.updateDialogNode(updateOptions);

    System.assertEquals(response.getDialogNode(), dialogNodeName);
    System.assertEquals(response.getDescription(), dialogNodeDescription);
    System.assertEquals(response.getTitle(), dialogNodeTitle);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getConditions(), dialogNodeConditions);
    System.assertEquals(response.getParent(), dialogNodeParent);
    System.assertEquals(response.getPreviousSibling(), dialogNodePreviousSibling);
    System.assertEquals(response.getNextStep().getDialogNode(), nextStepDialogNode);
    System.assertEquals(response.getNextStep().getBehavior(), nextStepBehavior);
    System.assertEquals(response.getNextStep().getSelector(), nextStepSelector);
    System.assertEquals(response.getOutput(), dialogNodeOutput);
    System.assertEquals(response.getMetadata(), metadata);
    System.assertEquals(response.getContext(), dialogNodeContext);
    System.assertEquals(response.getActions().get(0).getName(), actionName);
    System.assertEquals(response.getActions().get(0).getParameters(), actionParameters);
    System.assertEquals(response.getActions().get(0).getResultVariable(), actionResultVariable);
    System.assertEquals(response.getActions().get(0).getCredentials(), actionCredentials);
    System.assertEquals(response.getEventName(), dialogNodeEventName);
    System.assertEquals(response.getVariable(), dialogNodeVariable);
    System.assertEquals(response.getDigressIn(), dialogNodeDigressIn);
    System.assertEquals(response.getDigressOut(), dialogNodeDigressOut);
    System.assertEquals(response.getDigressOutSlots(), dialogNodeDigressOutSlots);
    Test.stopTest();
  }

  static testMethod void listLogs() {
    String body = IBMWatsonMockResponses.logCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListLogsOptions listOptions = new IBMConversationV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.LogCollection response = conversation.listLogs(listOptions);

    System.assertEquals(response.getLogs().get(0).getRequest().getInput().text(), messageInput);
    System.assertEquals(response.getLogs().get(0).getResponse().getIntents().get(0).getIntent(), intentName);
    System.assertEquals(response.getLogs().get(0).getResponse().getIntents().get(0).getConfidence(), confidence);
    System.assertEquals(response.getLogs().get(0).getResponse().getEntities().get(0).getEntity(), entityName);
    System.assertEquals(response.getLogs().get(0).getResponse().getEntities().get(0).getLocation().get(0), entityLocation);
    System.assertEquals(response.getLogs().get(0).getResponse().getEntities().get(0).getValue(), valueName);
    System.assertEquals(response.getLogs().get(0).getResponse().getEntities().get(0).getConfidence(), confidence);
    System.assertEquals(response.getLogs().get(0).getResponse().getInput().getText(), messageInput);
    System.assertEquals(response.getLogs().get(0).getResponse().getAlternateIntents(), alternateIntents);
    System.assertEquals(response.getLogs().get(0).getResponse().getContext().getConversationId(), conversationId);
    System.assertEquals(Long.valueOf((String)response.getLogs().get(0).getResponse().getContext().getSystem().get(systemResponseKey)), systemResponseValue);
    System.assertEquals(response.getLogs().get(0).getResponse().getOutput().getText().get(0), messageResponse);
    System.assertEquals(response.getLogs().get(0).getResponse().getOutput().getNodesVisited().get(0), nodeVisited);
    System.assertEquals(response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getLevel(), logMessageLevel);
    System.assertEquals(response.getLogs().get(0).getResponse().getOutput().getLogMessages().get(0).getMsg(), logMessageText);
    System.assertEquals(response.getLogs().get(0).getLanguage(), workspaceLanguage);
    System.assertEquals(response.getLogs().get(0).getWorkspaceId(), workspaceId);
    System.assertEquals(response.getLogs().get(0).getRequestTimestamp(), requestTimestamp);
    System.assertEquals(response.getLogs().get(0).getResponseTimestamp(), responseTimestamp);
    System.assertEquals(response.getLogs().get(0).getLogId(), logId);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    System.assertEquals(response.getPagination().getNextCursor(), nextCursor);
    Test.stopTest();
  }

  static testMethod void testCreateCounterexample() {
    String body = IBMWatsonMockResponses.counterexample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateCounterexampleOptions createOptions = new IBMConversationV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(counterexampleText)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.Counterexample response = conversation.createCounterexample(createOptions);

    System.assertEquals(response.getText(), counterexampleText);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void testCreateCounterexample2() {
    String body = IBMWatsonMockResponses.counterexample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.CreateCounterexampleOptions createOptions =
      new IBMConversationV1Models.CreateCounterexampleOptionsBuilder(workspaceId,counterexampleText)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    createOptions = createOptions.newBuilder().build();
    IBMConversationV1Models.Counterexample response = conversation.createCounterexample(createOptions);

    System.assertEquals(response.getText(), counterexampleText);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void testDeleteCounterexample() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.DeleteCounterexampleOptions deleteOptions = new IBMConversationV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(counterexampleText)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    deleteOptions = deleteOptions.newBuilder().build();
    conversation.deleteCounterexample(deleteOptions);

    Test.stopTest();
  }

  static testMethod void testGetCounterexample() {
    String body = IBMWatsonMockResponses.counterexample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.GetCounterexampleOptions getOptions = new IBMConversationV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(counterexampleText)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    getOptions = getOptions.newBuilder().build();
    IBMConversationV1Models.Counterexample response = conversation.getCounterexample(getOptions);

    System.assertEquals(response.getText(), counterexampleText);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }

  static testMethod void testListCounterexamples() {
    String body = IBMWatsonMockResponses.counterexampleCollection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.ListCounterexamplesOptions listOptions = new IBMConversationV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .includeAudit(true)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    listOptions = listOptions.newBuilder().build();
    IBMConversationV1Models.CounterexampleCollection response = conversation.listCounterexamples(listOptions);

    System.assertEquals(response.getCounterexamples().get(0).getText(), counterexampleText);
    System.assertEquals(response.getCounterexamples().get(0).getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getCounterexamples().get(0).getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    System.assertEquals(response.getPagination().getRefreshUrl(), refreshUrl);
    System.assertEquals(response.getPagination().getNextUrl(), nextUrl);
    System.assertEquals(response.getPagination().getTotal(), paginationTotal);
    System.assertEquals(response.getPagination().getMatched(), paginationMatched);
    Test.stopTest();
  }

  static testMethod void testUpdateCounterexample() {
    String body = IBMWatsonMockResponses.counterexample();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMConversationV1 conversation = new IBMConversationV1('2018-02-16');
    conversation.setUsernameAndPassword('username', 'password');

    IBMConversationV1Models.UpdateCounterexampleOptions updateOptions = new IBMConversationV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text(counterexampleText)
      .newText(counterexampleText)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    updateOptions = updateOptions.newBuilder().build();
    IBMConversationV1Models.Counterexample response = conversation.updateCounterexample(updateOptions);

    System.assertEquals(response.getText(), counterexampleText);
    System.assertEquals(response.getCreated(), (Datetime) JSON.deserialize(timeCreated, Datetime.class));
    System.assertEquals(response.getUpdated(), (Datetime) JSON.deserialize(timeUpdated, Datetime.class));
    Test.stopTest();
  }
}