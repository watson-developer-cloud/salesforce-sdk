/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 *
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class ConversationV1Test {

  private static String workspaceName;
  private static String workspaceDescription;
  private static String workspaceLanguage;
  private static String workspaceId;
  private static Map<String, String> metadata;
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
  private static Map<String, String> dialogNodeOutput;
  private static Map<String, String> dialogNodeContext;
  private static String nextStepBehavior;
  private static String nextStepDialogNode;
  private static String nextStepSelector;
  private static String actionName;
  private static String actionType;
  private static Map<String, String> actionParameters;
  private static String actionResultVariable;
  private static String actionCredentials;
  private static String dialogNodeType;
  private static String dialogNodeEventName;
  private static String dialogNodeVariable;


  static {
    workspaceName = 'test_workspace';
    workspaceDescription = 'Description of ' + workspaceName;
    workspaceLanguage = 'en';
    workspaceId = '123456789';
    metadata = new Map<String, String> { 'code' => 'test_code' };
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
    dialogNodeOutput = new Map<String, String> { 'text' => 'output text' };
    dialogNodeContext = new Map<String, String> { 'context' => 'context_val' };
    nextStepBehavior = 'behavior';
    nextStepDialogNode = 'next_dialog_node';
    nextStepSelector = 'body';
    actionName = 'action';
    actionType = 'server';
    actionParameters = new Map<String, String> { 'param_1' => 'param_1_val' };
    actionResultVariable = 'action_var';
    actionCredentials = 'creds';
    dialogNodeType = 'standard';
    dialogNodeEventName = 'dialog_node_event';
    dialogNodeVariable = 'dialog_node_var';
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.CreateWorkspaceOptions createWorkspaceOptions = new ConversationV1Models.CreateWorkspaceOptionsBuilder()
        .name(workspaceName)
        .description(workspaceDescription)
        .language(workspaceLanguage)
        .build();
    ConversationV1Models.Workspace response = conversation.createWorkspace(createWorkspaceOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.DeleteWorkspaceOptions deleteOptions = new ConversationV1Models.DeleteWorkspaceOptionsBuilder()
        .workspaceId(workspaceId)
        .build();
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.GetWorkspaceOptions getOptions = new ConversationV1Models.GetWorkspaceOptionsBuilder()
        .workspaceId(workspaceId)
        .build();
    ConversationV1Models.WorkspaceExport response = conversation.getWorkspace(getOptions);

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
    System.assertEquals(response.getDialogNodes(), new List<ConversationV1Models.DialogNode>());
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.UpdateWorkspaceOptions updateOptions = new ConversationV1Models.UpdateWorkspaceOptionsBuilder()
        .workspaceId(workspaceId)
        .build();
    ConversationV1Models.Workspace response = conversation.updateWorkspace(updateOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListWorkspacesOptions listOptions = new ConversationV1Models.ListWorkspacesOptionsBuilder()
        .build();
    ConversationV1Models.WorkspaceCollection response = conversation.listWorkspaces(listOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.CreateValueOptions createOptions = new ConversationV1Models.CreateValueOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .metadata(metadata)
        .addPatterns(valuePattern)
        .addSynonyms(valueSynonym)
        .build();
    ConversationV1Models.Value response = conversation.createValue(createOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.DeleteValueOptions deleteOptions = new ConversationV1Models.DeleteValueOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .build();
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.GetValueOptions getOptions = new ConversationV1Models.GetValueOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .exportField(true)
        .build();
    ConversationV1Models.ValueExport response = conversation.getValue(getOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.UpdateValueOptions updateOptions = new ConversationV1Models.UpdateValueOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .newMetadata(metadata)
        .addNewPatterns(valuePattern)
        .addNewSynonyms(valueSynonym)
        .build();
    ConversationV1Models.Value response = conversation.updateValue(updateOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListValuesOptions listOptions = new ConversationV1Models.ListValuesOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .build();
    ConversationV1Models.ValueCollection response = conversation.listValues(listOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.InputData input = new ConversationV1Models.InputDataBuilder()
        .text(messageInput)
        .build();
    ConversationV1Models.MessageOptions messageOptions = new ConversationV1Models.MessageOptionsBuilder()
        .workspaceId(workspaceId)
        .input(input)
        .alternateIntents(alternateIntents)
        .build();
    ConversationV1Models.MessageResponse response = conversation.message(messageOptions);

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
    System.assertEquals(response.getOutput().getLogMessages().get(0).getLevel(), logMessageLevel);
    System.assertEquals(response.getOutput().getLogMessages().get(0).getMsg(), logMessageText);
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.CreateIntentOptions createOptions = new ConversationV1Models.CreateIntentOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .description(intentDescription)
        .build();
    ConversationV1Models.Intent response = conversation.createIntent(createOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.DeleteIntentOptions deleteOptions = new ConversationV1Models.DeleteIntentOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .build();
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.GetIntentOptions getOptions = new ConversationV1Models.GetIntentOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .exportField(true)
        .build();
    ConversationV1Models.IntentExport response = conversation.getIntent(getOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListIntentsOptions listOptions = new ConversationV1Models.ListIntentsOptionsBuilder()
        .workspaceId(workspaceId)
        .exportField(true)
        .build();
    ConversationV1Models.IntentCollection response = conversation.listIntents(listOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.UpdateIntentOptions updateOptions = new ConversationV1Models.UpdateIntentOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .newDescription(intentDescription)
        .build();
    ConversationV1Models.Intent response = conversation.updateIntent(updateOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.CreateExampleOptions createOptions = new ConversationV1Models.CreateExampleOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .text(exampleText)
        .build();
    ConversationV1Models.Example response = conversation.createExample(createOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.DeleteExampleOptions deleteOptions = new ConversationV1Models.DeleteExampleOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .text('example A')
        .build();
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.GetExampleOptions getOptions = new ConversationV1Models.GetExampleOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .text(exampleText)
        .build();
    ConversationV1Models.Example response = conversation.getExample(getOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListExamplesOptions listOptions = new ConversationV1Models.ListExamplesOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .build();
    ConversationV1Models.ExampleCollection response = conversation.listExamples(listOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.UpdateExampleOptions updateOptions = new ConversationV1Models.UpdateExampleOptionsBuilder()
        .workspaceId(workspaceId)
        .intent(intentName)
        .text(exampleText)
        .newText(exampleText)
        .build();
    ConversationV1Models.Example response = conversation.updateExample(updateOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.CreateEntityOptions createOptions = new ConversationV1Models.CreateEntityOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .description(entityDescription)
        .build();
    ConversationV1Models.Entity response = conversation.createEntity(createOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.DeleteEntityOptions deleteOptions = new ConversationV1Models.DeleteEntityOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .build();
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.GetEntityOptions getOptions = new ConversationV1Models.GetEntityOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .exportField(true)
        .build();
    ConversationV1Models.EntityExport response = conversation.getEntity(getOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListEntitiesOptions listOptions = new ConversationV1Models.ListEntitiesOptionsBuilder()
        .workspaceId(workspaceId)
        .exportField(true)
        .build();
    ConversationV1Models.EntityCollection response = conversation.listEntities(listOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.UpdateEntityOptions updateOptions = new ConversationV1Models.UpdateEntityOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .newDescription(entityDescription)
        .build();
    ConversationV1Models.Entity response = conversation.updateEntity(updateOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.CreateSynonymOptions createOptions = new ConversationV1Models.CreateSynonymOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .synonym(valueSynonym)
        .build();
    ConversationV1Models.Synonym response = conversation.createSynonym(createOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.DeleteSynonymOptions deleteOptions = new ConversationV1Models.DeleteSynonymOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .synonym(valueSynonym)
        .build();
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.GetSynonymOptions getOptions = new ConversationV1Models.GetSynonymOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .synonym(valueSynonym)
        .build();
    ConversationV1Models.Synonym response = conversation.getSynonym(getOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListSynonymsOptions listOptions = new ConversationV1Models.ListSynonymsOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .build();
    ConversationV1Models.SynonymCollection response = conversation.listSynonyms(listOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.UpdateSynonymOptions updateOptions = new ConversationV1Models.UpdateSynonymOptionsBuilder()
        .workspaceId(workspaceId)
        .entity(entityName)
        .value(valueName)
        .synonym(valueSynonym)
        .newSynonym(valueSynonym)
        .build();
    ConversationV1Models.Synonym response = conversation.updateSynonym(updateOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.CreateDialogNodeOptions createOptions = new ConversationV1Models.CreateDialogNodeOptionsBuilder()
        .workspaceId(workspaceId)
        .dialogNode(dialogNodeName)
        .build();
    ConversationV1Models.DialogNode response = conversation.createDialogNode(createOptions);

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

  static testMethod void deleteDialogNode() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
        200,
        'Success',
        body,
        null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.DeleteDialogNodeOptions deleteOptions = new ConversationV1Models.DeleteDialogNodeOptionsBuilder()
        .workspaceId(workspaceId)
        .dialogNode(dialogNodeName)
        .build();
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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.GetDialogNodeOptions getOptions = new ConversationV1Models.GetDialogNodeOptionsBuilder()
        .workspaceId(workspaceId)
        .dialogNode(dialogNodeName)
        .build();
    ConversationV1Models.DialogNode response = conversation.getDialogNode(getOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListDialogNodesOptions listOptions = new ConversationV1Models.ListDialogNodesOptionsBuilder()
        .workspaceId(workspaceId)
        .build();
    ConversationV1Models.DialogNodeCollection response = conversation.listDialogNodes(listOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.UpdateDialogNodeOptions updateOptions = new ConversationV1Models.UpdateDialogNodeOptionsBuilder()
        .workspaceId(workspaceId)
        .dialogNode(dialogNodeName)
        .newDialogNode(dialogNodeName)
        .newDescription(dialogNodeDescription)
        .build();
    ConversationV1Models.DialogNode response = conversation.updateDialogNode(updateOptions);

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

    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword('username', 'password');

    ConversationV1Models.ListLogsOptions listOptions = new ConversationV1Models.ListLogsOptionsBuilder()
        .workspaceId(workspaceId)
        .build();
    ConversationV1Models.LogCollection response = conversation.listLogs(listOptions);

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
    Test.stopTest();
  }
}