@isTest
private class IBMAssistantV2Test {
  private static String VERSION;

  private static String ASSISTANT_ID;
  private static String SESSION_ID;
  private static String TIMEZONE;
  private static Long TURN_COUNT;
  private static String USER_ID;
  private static String GROUP_STR;
  private static List<Long> LOCATION;
  private static Double CONFIDENCE;
  private static String ENTITY;
  private static IBMWatsonMapModel KEY_VAL;
  private static String VALUE;
  private static String INTENT;
  private static String TEXT;
  private static String SUGGESTION_ID;
  private static String MESSAGE;
  private static String CONDITIONS;
  private static String TITLE;
  private static String DIALOG_NODE;
  private static String NAME;
  private static String RESULT_VARIABLE;
  private static String CREDENTIALS;
  private static String DESCRIPTION;
  private static Long TIME_VAL;
  private static String SOURCE;
  private static String TOPIC;
  private static String LABEL;
  private static String ACTION_TYPE;
  private static String BRANCH_EXITED_REASON;
  private static String INFO;
  private static String BUTTON;

  static {
    VERSION = '2018-09-20';
    ASSISTANT_ID = 'assistant_id';
    SESSION_ID = 'session_id';
    TIMEZONE = 'timezone';
    TURN_COUNT = 10;
    USER_ID = 'user_id';
    GROUP_STR = 'group';
    LOCATION = new List<Long> { 1, 2 };
    CONFIDENCE = 0.0;
    ENTITY = 'entity';
    KEY_VAL = new IBMWatsonMapModel();
    KEY_VAL.put('key', 'value');
    VALUE = 'value';
    INTENT = 'intent';
    TEXT = 'text';
    SUGGESTION_ID = 'suggestion_id';
    MESSAGE = 'message';
    CONDITIONS = 'conditions';
    TITLE = 'title';
    DIALOG_NODE = 'dialog_node';
    NAME = 'name';
    RESULT_VARIABLE = 'result_variable';
    CREDENTIALS = 'credentials';
    DESCRIPTION = 'description';
    TIME_VAL = 1234;
    SOURCE = 'source';
    TOPIC = 'topic';
    LABEL = 'label';
    ACTION_TYPE = 'client';
    BRANCH_EXITED_REASON = 'completed';
    INFO = 'info';
    BUTTON = 'button';
  }

  static testMethod void testCaptureGroup() {
    Test.startTest();

    IBMAssistantV2Models.CaptureGroup captureGroup = new IBMAssistantV2Models.CaptureGroup();
    captureGroup.setXgroup(GROUP_STR);
    captureGroup.setLocation(LOCATION);

    System.assertEquals(GROUP_STR, captureGroup.getXgroup());
    System.assertEquals(LOCATION, captureGroup.getLocation());
    Test.stopTest();
  }

  static testMethod void testCreateSessionOptions() {
    Test.startTest();

    IBMAssistantV2Models.CreateSessionOptions createSessionOptions = new IBMAssistantV2Models.CreateSessionOptionsBuilder()
        .assistantId(ASSISTANT_ID)
        .build();
    createSessionOptions = createSessionOptions.newBuilder().build();

    System.assertEquals(ASSISTANT_ID, createSessionOptions.assistantId());
    Test.stopTest();
  }

  static testMethod void testDeleteSessionOptions() {
    Test.startTest();

    IBMAssistantV2Models.DeleteSessionOptions deleteSessionOptions = new IBMAssistantV2Models.DeleteSessionOptionsBuilder()
        .assistantId(ASSISTANT_ID)
        .sessionId(SESSION_ID)
        .build();
    deleteSessionOptions = deleteSessionOptions.newBuilder().build();

    System.assertEquals(ASSISTANT_ID, deleteSessionOptions.assistantId());
    System.assertEquals(SESSION_ID, deleteSessionOptions.sessionId());
    Test.stopTest();
  }

  static testMethod void testMessageContextGlobalSystem() {
    Test.startTest();

    IBMAssistantV2Models.MessageContextGlobalSystem messageContextGlobalSystem = new IBMAssistantV2Models.MessageContextGlobalSystem();
    messageContextGlobalSystem.setTimezone(TIMEZONE);
    messageContextGlobalSystem.setTurnCount(TURN_COUNT);
    messageContextGlobalSystem.setUserId(USER_ID);

    System.assertEquals(TIMEZONE, messageContextGlobalSystem.getTimezone());
    System.assertEquals(TURN_COUNT, messageContextGlobalSystem.getTurnCount());
    System.assertEquals(USER_ID, messageContextGlobalSystem.getUserId());
    Test.stopTest();
  }

  static testMethod void testMessageContextGlobal() {
    Test.startTest();

    IBMAssistantV2Models.MessageContextGlobalSystem messageContextGlobalSystem = new IBMAssistantV2Models.MessageContextGlobalSystem();

    IBMAssistantV2Models.MessageContextGlobal messageContextGlobal = new IBMAssistantV2Models.MessageContextGlobal();
    messageContextGlobal.setXsystem(messageContextGlobalSystem);

    System.assertEquals(messageContextGlobalSystem, messageContextGlobal.getXsystem());
    Test.stopTest();
  }

  static testMethod void testMessageContext() {
    Test.startTest();

    IBMAssistantV2Models.MessageContextGlobal messageContextGlobal = new IBMAssistantV2Models.MessageContextGlobal();
    IBMAssistantV2Models.MessageContextSkills messageContextSkills = new IBMAssistantV2Models.MessageContextSkills();

    IBMAssistantV2Models.MessageContext messageContext = new IBMAssistantV2Models.MessageContext();
    messageContext.setXglobal(messageContextGlobal);
    messageContext.setSkills(messageContextSkills);

    System.assertEquals(messageContextGlobal, messageContext.getXglobal());
    System.assertEquals(messageContextSkills, messageContext.getSkills());
    Test.stopTest();
  }

  static testMethod void testMessageInput() {
    Test.startTest();

    IBMAssistantV2Models.RuntimeEntity entity1 = new IBMAssistantV2Models.RuntimeEntity();
    entity1.setEntity(ENTITY);
    entity1.setLocation(LOCATION);
    entity1.setValue(VALUE);
    IBMAssistantV2Models.RuntimeEntity entity2 = new IBMAssistantV2Models.RuntimeEntity();
    entity2.setEntity(ENTITY);
    entity2.setLocation(LOCATION);
    entity2.setValue(VALUE);
    List<IBMAssistantV2Models.RuntimeEntity> entityList = new List<IBMAssistantV2Models.RuntimeEntity>();
    entityList.add(entity1);
    IBMAssistantV2Models.RuntimeIntent intent1 = new IBMAssistantV2Models.RuntimeIntent();
    intent1.setConfidence(CONFIDENCE);
    intent1.setIntent(INTENT);
    IBMAssistantV2Models.RuntimeIntent intent2 = new IBMAssistantV2Models.RuntimeIntent();
    intent2.setConfidence(CONFIDENCE);
    intent2.setIntent(INTENT);
    List<IBMAssistantV2Models.RuntimeIntent> intentList = new List<IBMAssistantV2Models.RuntimeIntent>();
    intentList.add(intent1);
    IBMAssistantV2Models.MessageInputOptions inputOptions = new IBMAssistantV2Models.MessageInputOptions();

    IBMAssistantV2Models.MessageInput messageInput = new IBMAssistantV2Models.MessageInputBuilder()
        .messageType(TEXT)
        .entities(entityList)
        .addEntities(entity2)
        .intents(intentList)
        .addIntents(intent2)
        .options(inputOptions)
        .suggestionId(SUGGESTION_ID)
        .text(TEXT)
        .build();
    messageInput = messageInput.newBuilder().build();

    entityList.add(entity2);
    intentList.add(intent2);
    System.assertEquals(TEXT, messageInput.getMessageType());
    System.assertEquals(entityList, messageInput.getEntities());
    System.assertEquals(intentList, messageInput.getIntents());
    System.assertEquals(inputOptions, messageInput.getOptions());
    System.assertEquals(SUGGESTION_ID, messageInput.getSuggestionId());
    System.assertEquals(TEXT, messageInput.getText());
    Test.stopTest();
  }

  static testMethod void testMessageInputOptions() {
    Test.startTest();

    IBMAssistantV2Models.MessageInputOptions inputOptions = new IBMAssistantV2Models.MessageInputOptions();
    inputOptions.setAlternateIntents(true);
    inputOptions.setDebug(true);
    inputOptions.setRestart(true);
    inputOptions.setReturnContext(true);

    System.assert(inputOptions.getAlternateIntents());
    System.assert(inputOptions.getDebug());
    System.assert(inputOptions.getRestart());
    System.assert(inputOptions.getReturnContext());
    Test.stopTest();
  }

  static testMethod void testMessageOptions() {
    Test.startTest();

    IBMAssistantV2Models.MessageContext messageContext = new IBMAssistantV2Models.MessageContext();
    IBMAssistantV2Models.MessageInput messageInput = new IBMAssistantV2Models.MessageInputBuilder().build();

    IBMAssistantV2Models.MessageOptions messageOptions = new IBMAssistantV2Models.MessageOptionsBuilder()
        .assistantId(ASSISTANT_ID)
        .context(messageContext)
        .input(messageInput)
        .sessionId(SESSION_ID)
        .build();
    messageOptions = messageOptions.newBuilder().build();

    System.assertEquals(ASSISTANT_ID, messageOptions.assistantId());
    System.assertEquals(messageContext, messageOptions.context());
    System.assertEquals(messageInput, messageOptions.input());
    System.assertEquals(SESSION_ID, messageOptions.sessionId());
    Test.stopTest();
  }

  static testMethod void testRuntimeEntity() {
    Test.startTest();

    IBMAssistantV2Models.CaptureGroup captureGroup = new IBMAssistantV2Models.CaptureGroup();
    captureGroup.setXgroup(GROUP_STR);
    List<IBMAssistantV2Models.CaptureGroup> captureGroupList = new List<IBMAssistantV2Models.CaptureGroup> { captureGroup };

    IBMAssistantV2Models.RuntimeEntity runtimeEntity = new IBMAssistantV2Models.RuntimeEntity();
    runtimeEntity.setConfidence(CONFIDENCE);
    runtimeEntity.setEntity(ENTITY);
    runtimeEntity.setGroups(captureGroupList);
    runtimeEntity.setLocation(LOCATION);
    runtimeEntity.setMetadata(KEY_VAL);
    runtimeEntity.setValue(VALUE);

    System.assertEquals(CONFIDENCE, runtimeEntity.getConfidence());
    System.assertEquals(ENTITY, runtimeEntity.getEntity());
    System.assertEquals(captureGroupList, runtimeEntity.getGroups());
    System.assertEquals(LOCATION, runtimeEntity.getLocation());
    System.assertEquals(KEY_VAL, runtimeEntity.getMetadata());
    System.assertEquals(VALUE, runtimeEntity.getValue());
    Test.stopTest();
  }

  static testMethod void testRuntimeIntent() {
    Test.startTest();

    IBMAssistantV2Models.RuntimeIntent runtimeIntent = new IBMAssistantV2Models.RuntimeIntent();
    runtimeIntent.setConfidence(CONFIDENCE);
    runtimeIntent.setIntent(INTENT);

    System.assertEquals(CONFIDENCE, runtimeIntent.getConfidence());
    System.assertEquals(INTENT, runtimeIntent.getIntent());
    Test.stopTest();
  }

  static testMethod void testMessage() {
    String body = IBMWatsonMockResponses.messageResponseV2();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV2 service = new IBMAssistantV2(VERSION);
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    service.setIamCredentials(iamOptions);

    IBMAssistantV2Models.MessageOptions messageOptions = new IBMAssistantV2Models.MessageOptionsBuilder()
        .assistantId(ASSISTANT_ID)
        .sessionId(SESSION_ID)
        .build();
    IBMAssistantV2Models.MessageResponse response = service.message(messageOptions);

    System.assert(response.getContext() != null);
    System.assert(response.getOutput() != null);

    System.assertEquals(ACTION_TYPE, response.getOutput().getActions().get(0).getActionType());
    System.assertEquals(NAME, response.getOutput().getActions().get(0).getName());
    System.assertEquals(KEY_VAL, response.getOutput().getActions().get(0).getParameters());
    System.assertEquals(RESULT_VARIABLE, response.getOutput().getActions().get(0).getResultVariable());
    System.assertEquals(CREDENTIALS, response.getOutput().getActions().get(0).getCredentials());
    System.assertEquals(BRANCH_EXITED_REASON, response.getOutput().getDebug().getBranchExitedReason());
    System.assertEquals(INFO, response.getOutput().getDebug().getLogMessages().get(0).getLevel());
    System.assertEquals(MESSAGE, response.getOutput().getDebug().getLogMessages().get(0).getMessage());
    System.assertEquals(CONDITIONS, response.getOutput().getDebug().getNodesVisited().get(0).getConditions());
    System.assertEquals(TITLE, response.getOutput().getDebug().getNodesVisited().get(0).getTitle());
    System.assertEquals(DIALOG_NODE, response.getOutput().getDebug().getNodesVisited().get(0).getDialogNode());
    System.assert(response.getOutput().getDebug().getBranchExited());
    System.assertEquals(DESCRIPTION, response.getOutput().getGeneric().get(0).getDescription());
    System.assertEquals(TEXT, response.getOutput().getGeneric().get(0).getResponseType());
    System.assertEquals(BUTTON, response.getOutput().getGeneric().get(0).getPreference());
    System.assertEquals(TEXT, response.getOutput().getGeneric().get(0).getText());
    System.assertEquals(TIME_VAL, response.getOutput().getGeneric().get(0).getXtime());
    System.assert(response.getOutput().getGeneric().get(0).getTyping());
    System.assertEquals(SOURCE, response.getOutput().getGeneric().get(0).getSource());
    System.assertEquals(TITLE, response.getOutput().getGeneric().get(0).getTitle());
    System.assertEquals(MESSAGE, response.getOutput().getGeneric().get(0).getMessageToHumanAgent());
    System.assertEquals(TOPIC, response.getOutput().getGeneric().get(0).getTopic());
    System.assertEquals(LABEL, response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel());
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput() != null);
    System.assertEquals(LABEL, response.getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel());
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue() != null);
    Test.stopTest();
  }

  static testMethod void testCreateSession() {
    String body = IBMWatsonMockResponses.sessionResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV2 service = new IBMAssistantV2(VERSION);
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    service.setUsernameAndPassword('username', 'password');

    IBMAssistantV2Models.CreateSessionOptions createSessionOptions = new IBMAssistantV2Models.CreateSessionOptionsBuilder()
        .assistantId(ASSISTANT_ID)
        .build();
    IBMAssistantV2Models.SessionResponse response = service.createSession(createSessionOptions);

    System.assert(response != null);
    System.assertEquals(SESSION_ID, response.getSessionId());
    Test.stopTest();
  }

  static testMethod void testDeleteSession() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV2 service = new IBMAssistantV2(VERSION);
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    service.setUsernameAndPassword('username', 'password');

    IBMAssistantV2Models.DeleteSessionOptions deleteSessionOptions = new IBMAssistantV2Models.DeleteSessionOptionsBuilder()
        .assistantId(ASSISTANT_ID)
        .sessionId(SESSION_ID)
        .build();
    service.deleteSession(deleteSessionOptions);

    Test.stopTest();
  }
}
