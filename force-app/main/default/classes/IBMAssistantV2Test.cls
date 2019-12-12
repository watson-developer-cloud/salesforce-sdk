@isTest
private class IBMAssistantV2Test {
  private static IBMAssistantV2 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMAssistantV2('2019-02-28', new IBMWatsonNoAuthAuthenticator());
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

    IBMAssistantV2Models.CaptureGroup testRequestModel = new IBMAssistantV2Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getXGroup());
    System.assertEquals(new List<Long> { 38 }, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testCreateSessionOptionsModel() {
    Test.startTest();

    IBMAssistantV2Models.CreateSessionOptions testRequestModel = new IBMAssistantV2Models.CreateSessionOptionsBuilder()
      .assistantId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.assistantId());
    Test.stopTest();
  }
  static testMethod void testDeleteSessionOptionsModel() {
    Test.startTest();

    IBMAssistantV2Models.DeleteSessionOptions testRequestModel = new IBMAssistantV2Models.DeleteSessionOptionsBuilder()
      .assistantId('testString')
      .sessionId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.assistantId());
    System.assertEquals('testString', testRequestModel.sessionId());
    Test.stopTest();
  }
  static testMethod void testMessageContextModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageContextSkills messageContextSkillsModel = new IBMAssistantV2Models.MessageContextSkillsBuilder()
      .build();
    IBMAssistantV2Models.MessageContextGlobalSystem messageContextGlobalSystemModel = new IBMAssistantV2Models.MessageContextGlobalSystemBuilder()
      .timezone('testString')
      .userId('testString')
      .turnCount(38)
      .build();
    IBMAssistantV2Models.MessageContextGlobal messageContextGlobalModel = new IBMAssistantV2Models.MessageContextGlobalBuilder()
      .xSystem(messageContextGlobalSystemModel)
      .build();

    IBMAssistantV2Models.MessageContext testRequestModel = new IBMAssistantV2Models.MessageContextBuilder()
      .xGlobal(messageContextGlobalModel)
      .skills(messageContextSkillsModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(messageContextGlobalModel, testRequestModel.getXGlobal());
    System.assertEquals(messageContextSkillsModel, testRequestModel.getSkills());
    Test.stopTest();
  }
  static testMethod void testMessageContextGlobalModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageContextGlobalSystem messageContextGlobalSystemModel = new IBMAssistantV2Models.MessageContextGlobalSystemBuilder()
      .timezone('testString')
      .userId('testString')
      .turnCount(38)
      .build();

    IBMAssistantV2Models.MessageContextGlobal testRequestModel = new IBMAssistantV2Models.MessageContextGlobalBuilder()
      .xSystem(messageContextGlobalSystemModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(messageContextGlobalSystemModel, testRequestModel.getXSystem());
    Test.stopTest();
  }
  static testMethod void testMessageContextGlobalSystemModel() {
    Test.startTest();

    IBMAssistantV2Models.MessageContextGlobalSystem testRequestModel = new IBMAssistantV2Models.MessageContextGlobalSystemBuilder()
      .timezone('testString')
      .userId('testString')
      .turnCount(38)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getTimezone());
    System.assertEquals('testString', testRequestModel.getUserId());
    System.assertEquals(38, testRequestModel.getTurnCount());
    Test.stopTest();
  }
  static testMethod void testMessageContextSkillModel() {
    Test.startTest();

    IBMAssistantV2Models.MessageContextSkill testRequestModel = new IBMAssistantV2Models.MessageContextSkillBuilder()
      .userDefined(createMockMap())
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(createMockMap(), testRequestModel.getUserDefined());
    Test.stopTest();
  }
  static testMethod void testMessageContextSkillsModel() {
    Test.startTest();

    IBMAssistantV2Models.MessageContextSkills testRequestModel = new IBMAssistantV2Models.MessageContextSkillsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testMessageInputModel() {
    Test.startTest();
    IBMAssistantV2Models.CaptureGroup captureGroupModel = new IBMAssistantV2Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV2Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV2Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV2Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV2Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV2Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV2Models.MessageInputOptions messageInputOptionsModel = new IBMAssistantV2Models.MessageInputOptionsBuilder()
      .debug(true)
      .restart(true)
      .alternateIntents(true)
      .returnContext(true)
      .build();

    IBMAssistantV2Models.MessageInput testRequestModel = new IBMAssistantV2Models.MessageInputBuilder()
      .messageType('text')
      .text('testString')
      .options(messageInputOptionsModel)
      .intents(new List<IBMAssistantV2Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV2Models.RuntimeEntity> { runtimeEntityModel })
      .suggestionId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('text', testRequestModel.getMessageType());
    System.assertEquals('testString', testRequestModel.getText());
    System.assertEquals(messageInputOptionsModel, testRequestModel.getOptions());
    System.assertEquals(new List<IBMAssistantV2Models.RuntimeIntent> { runtimeIntentModel }, testRequestModel.getIntents());
    System.assertEquals(new List<IBMAssistantV2Models.RuntimeEntity> { runtimeEntityModel }, testRequestModel.getEntities());
    System.assertEquals('testString', testRequestModel.getSuggestionId());
    Test.stopTest();
  }
  static testMethod void testMessageInputOptionsModel() {
    Test.startTest();

    IBMAssistantV2Models.MessageInputOptions testRequestModel = new IBMAssistantV2Models.MessageInputOptionsBuilder()
      .debug(true)
      .restart(true)
      .alternateIntents(true)
      .returnContext(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.getDebug());
    System.assertEquals(true, testRequestModel.getRestart());
    System.assertEquals(true, testRequestModel.getAlternateIntents());
    System.assertEquals(true, testRequestModel.getReturnContext());
    Test.stopTest();
  }
  static testMethod void testMessageOptionsModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageContextSkills messageContextSkillsModel = new IBMAssistantV2Models.MessageContextSkillsBuilder()
      .build();
    IBMAssistantV2Models.MessageContextGlobalSystem messageContextGlobalSystemModel = new IBMAssistantV2Models.MessageContextGlobalSystemBuilder()
      .timezone('testString')
      .userId('testString')
      .turnCount(38)
      .build();
    IBMAssistantV2Models.MessageContextGlobal messageContextGlobalModel = new IBMAssistantV2Models.MessageContextGlobalBuilder()
      .xSystem(messageContextGlobalSystemModel)
      .build();
    IBMAssistantV2Models.MessageContext messageContextModel = new IBMAssistantV2Models.MessageContextBuilder()
      .xGlobal(messageContextGlobalModel)
      .skills(messageContextSkillsModel)
      .build();
    IBMAssistantV2Models.CaptureGroup captureGroupModel = new IBMAssistantV2Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV2Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV2Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV2Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV2Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV2Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV2Models.MessageInputOptions messageInputOptionsModel = new IBMAssistantV2Models.MessageInputOptionsBuilder()
      .debug(true)
      .restart(true)
      .alternateIntents(true)
      .returnContext(true)
      .build();
    IBMAssistantV2Models.MessageInput messageInputModel = new IBMAssistantV2Models.MessageInputBuilder()
      .messageType('text')
      .text('testString')
      .options(messageInputOptionsModel)
      .intents(new List<IBMAssistantV2Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV2Models.RuntimeEntity> { runtimeEntityModel })
      .suggestionId('testString')
      .build();

    IBMAssistantV2Models.MessageOptions testRequestModel = new IBMAssistantV2Models.MessageOptionsBuilder()
      .assistantId('testString')
      .sessionId('testString')
      .input(messageInputModel)
      .context(messageContextModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.assistantId());
    System.assertEquals('testString', testRequestModel.sessionId());
    System.assertEquals(messageInputModel, testRequestModel.input());
    System.assertEquals(messageContextModel, testRequestModel.context());
    Test.stopTest();
  }
  static testMethod void testRuntimeEntityModel() {
    Test.startTest();
    IBMAssistantV2Models.CaptureGroup captureGroupModel = new IBMAssistantV2Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();

    IBMAssistantV2Models.RuntimeEntity testRequestModel = new IBMAssistantV2Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV2Models.CaptureGroup> { captureGroupModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getEntity());
    System.assertEquals(new List<Long> { 38 }, testRequestModel.getLocation());
    System.assertEquals('testString', testRequestModel.getValue());
    System.assertEquals((Double) 72.5, testRequestModel.getConfidence());
    System.assertEquals(createMockMap(), testRequestModel.getMetadata());
    System.assertEquals(new List<IBMAssistantV2Models.CaptureGroup> { captureGroupModel }, testRequestModel.getGroups());
    Test.stopTest();
  }
  static testMethod void testRuntimeIntentModel() {
    Test.startTest();

    IBMAssistantV2Models.RuntimeIntent testRequestModel = new IBMAssistantV2Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getIntent());
    System.assertEquals((Double) 72.5, testRequestModel.getConfidence());
    Test.stopTest();
  }

  static testMethod void testCreateSession() {
    String mockResponseBody = '{"session_id": "sessionId"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV2Models.CreateSessionOptions createSessionOptionsModel = new IBMAssistantV2Models.CreateSessionOptionsBuilder()
      .assistantId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV2Models.SessionResponse response = service.createSession(createSessionOptionsModel);
    System.assert(response.getSessionId() != null);

    Test.stopTest();
  }
  static testMethod void testDeleteSession() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV2Models.DeleteSessionOptions deleteSessionOptionsModel = new IBMAssistantV2Models.DeleteSessionOptionsBuilder()
      .assistantId('testString')
      .sessionId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteSession(deleteSessionOptionsModel);

    Test.stopTest();
  }
  static testMethod void testMessage() {
    String mockResponseBody = '{"output": {"generic": [{"response_type": "responseType", "text": "text", "time": "5", "typing": true, "source": "source", "title": "title", "description": "description", "preference": "preference", "options": [{"label": "label", "value": {"input": {"message_type": "messageType", "text": "text", "options": {"debug": false, "restart": false, "alternate_intents": true, "return_context": false}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "suggestion_id": "suggestionId"}}}], "message_to_human_agent": "messageToHumanAgent", "topic": "topic", "suggestions": [{"label": "label", "value": {"input": {"message_type": "messageType", "text": "text", "options": {"debug": false, "restart": false, "alternate_intents": true, "return_context": false}, "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "suggestion_id": "suggestionId"}}, "output": {}}], "header": "header", "results": [{"id": "id", "result_metadata": {"confidence": "10", "score": "5"}, "body": "body", "title": "title", "url": "url", "highlight": {"body": ["body"], "title": ["title"], "url": ["url"]}}]}], "intents": [{"intent": "intent", "confidence": "10"}], "entities": [{"entity": "entity", "location": ["8"], "value": "value", "confidence": "10", "metadata": {}, "groups": [{"group": "xGroup", "location": ["8"]}]}], "actions": [{"name": "name", "type": "xType", "parameters": {}, "result_variable": "resultVariable", "credentials": "credentials"}], "debug": {"nodes_visited": [{"dialog_node": "dialogNode", "title": "title", "conditions": "conditions"}], "log_messages": [{"level": "level", "message": "message"}], "branch_exited": true, "branch_exited_reason": "branchExitedReason"}, "user_defined": {}}, "context": {"global": {"system": {"timezone": "timezone", "user_id": "userId", "turn_count": "9"}}, "skills": {}}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMAssistantV2Models.MessageContextSkills messageContextSkillsModel = new IBMAssistantV2Models.MessageContextSkillsBuilder()
      .build();
    IBMAssistantV2Models.MessageContextGlobalSystem messageContextGlobalSystemModel = new IBMAssistantV2Models.MessageContextGlobalSystemBuilder()
      .timezone('testString')
      .userId('testString')
      .turnCount(38)
      .build();
    IBMAssistantV2Models.MessageContextGlobal messageContextGlobalModel = new IBMAssistantV2Models.MessageContextGlobalBuilder()
      .xSystem(messageContextGlobalSystemModel)
      .build();
    IBMAssistantV2Models.MessageContext messageContextModel = new IBMAssistantV2Models.MessageContextBuilder()
      .xGlobal(messageContextGlobalModel)
      .skills(messageContextSkillsModel)
      .build();
    IBMAssistantV2Models.CaptureGroup captureGroupModel = new IBMAssistantV2Models.CaptureGroupBuilder()
      .xGroup('testString')
      .location(new List<Long> { 38 })
      .build();
    IBMAssistantV2Models.RuntimeEntity runtimeEntityModel = new IBMAssistantV2Models.RuntimeEntityBuilder()
      .entity('testString')
      .location(new List<Long> { 38 })
      .value('testString')
      .confidence((Double) 72.5)
      .metadata(createMockMap())
      .groups(new List<IBMAssistantV2Models.CaptureGroup> { captureGroupModel })
      .build();
    IBMAssistantV2Models.RuntimeIntent runtimeIntentModel = new IBMAssistantV2Models.RuntimeIntentBuilder()
      .intent('testString')
      .confidence((Double) 72.5)
      .build();
    IBMAssistantV2Models.MessageInputOptions messageInputOptionsModel = new IBMAssistantV2Models.MessageInputOptionsBuilder()
      .debug(true)
      .restart(true)
      .alternateIntents(true)
      .returnContext(true)
      .build();
    IBMAssistantV2Models.MessageInput messageInputModel = new IBMAssistantV2Models.MessageInputBuilder()
      .messageType('text')
      .text('testString')
      .options(messageInputOptionsModel)
      .intents(new List<IBMAssistantV2Models.RuntimeIntent> { runtimeIntentModel })
      .entities(new List<IBMAssistantV2Models.RuntimeEntity> { runtimeEntityModel })
      .suggestionId('testString')
      .build();
    IBMAssistantV2Models.MessageOptions messageOptionsModel = new IBMAssistantV2Models.MessageOptionsBuilder()
      .assistantId('testString')
      .sessionId('testString')
      .input(messageInputModel)
      .context(messageContextModel)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV2Models.MessageResponse response = service.message(messageOptionsModel);
    System.assert(response.getOutput().getGeneric().get(0).getResponseType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getXTime() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTyping() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSource() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getDescription() != null);
    System.assert(response.getOutput().getGeneric().get(0).getPreference() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getMessageType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getDebug() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getRestart() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getAlternateIntents() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getReturnContext() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getSuggestionId() != null);
    System.assert(response.getOutput().getGeneric().get(0).getMessageToHumanAgent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getTopic() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getMessageType() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getDebug() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getRestart() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getAlternateIntents() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getReturnContext() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getSuggestionId() != null);
    System.assert(response.getOutput().getGeneric().get(0).getHeader() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getId() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getResultMetadata().getConfidence() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getResultMetadata().getScore() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getBody() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getTitle() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getUrl() != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getHighlight().getBody().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getHighlight().getTitle().get(0) != null);
    System.assert(response.getOutput().getGeneric().get(0).getResults().get(0).getHighlight().getUrl().get(0) != null);
    System.assert(response.getOutput().getIntents().get(0).getIntent() != null);
    System.assert(response.getOutput().getIntents().get(0).getConfidence() != null);
    System.assert(response.getOutput().getEntities().get(0).getEntity() != null);
    System.assert(response.getOutput().getEntities().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getEntities().get(0).getValue() != null);
    System.assert(response.getOutput().getEntities().get(0).getConfidence() != null);
    System.assert(response.getOutput().getEntities().get(0).getGroups().get(0).getXGroup() != null);
    System.assert(response.getOutput().getEntities().get(0).getGroups().get(0).getLocation().get(0) != null);
    System.assert(response.getOutput().getActions().get(0).getName() != null);
    System.assert(response.getOutput().getActions().get(0).getXType() != null);
    System.assert(response.getOutput().getActions().get(0).getResultVariable() != null);
    System.assert(response.getOutput().getActions().get(0).getCredentials() != null);
    System.assert(response.getOutput().getDebug().getNodesVisited().get(0).getDialogNode() != null);
    System.assert(response.getOutput().getDebug().getNodesVisited().get(0).getTitle() != null);
    System.assert(response.getOutput().getDebug().getNodesVisited().get(0).getConditions() != null);
    System.assert(response.getOutput().getDebug().getLogMessages().get(0).getLevel() != null);
    System.assert(response.getOutput().getDebug().getLogMessages().get(0).getMessage() != null);
    System.assert(response.getOutput().getDebug().getBranchExited() != null);
    System.assert(response.getOutput().getDebug().getBranchExitedReason() != null);
    System.assert(response.getContext().getXGlobal().getXSystem().getTimezone() != null);
    System.assert(response.getContext().getXGlobal().getXSystem().getUserId() != null);
    System.assert(response.getContext().getXGlobal().getXSystem().getTurnCount() != null);

    Test.stopTest();
  }
}
