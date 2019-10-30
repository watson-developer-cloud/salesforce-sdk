@isTest
private class IBMAssistantV2Test {
  private static IBMAssistantV2 service;

  static {
    service = new IBMAssistantV2('2019-02-28', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testCaptureGroupModel() {
    Test.startTest();
    String xGroup = 'x_group';
    List<Long> location = new List<Long> { 10L } ;

    IBMAssistantV2Models.CaptureGroup testRequestModel = new IBMAssistantV2Models.CaptureGroupBuilder()
      .xGroup(xGroup)
      .location(location)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xGroup, testRequestModel.getXGroup());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testCreateSessionOptionsModel() {
    Test.startTest();
    String assistantId = 'assistant_id';

    IBMAssistantV2Models.CreateSessionOptions testRequestModel = new IBMAssistantV2Models.CreateSessionOptionsBuilder()
      .assistantId(assistantId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(assistantId, testRequestModel.assistantId());
    Test.stopTest();
  }
  static testMethod void testDeleteSessionOptionsModel() {
    Test.startTest();
    String assistantId = 'assistant_id';
    String sessionId = 'session_id';

    IBMAssistantV2Models.DeleteSessionOptions testRequestModel = new IBMAssistantV2Models.DeleteSessionOptionsBuilder()
      .assistantId(assistantId)
      .sessionId(sessionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(assistantId, testRequestModel.assistantId());
    System.assertEquals(sessionId, testRequestModel.sessionId());
    Test.stopTest();
  }
  static testMethod void testDialogLogMessageModel() {
    Test.startTest();
    String level = 'level';
    String message = 'message';

    IBMAssistantV2Models.DialogLogMessage testRequestModel = new IBMAssistantV2Models.DialogLogMessage();
    testRequestModel.setLevel(level);
    testRequestModel.setMessage(message);

    System.assertEquals(level, testRequestModel.getLevel());
    System.assertEquals(message, testRequestModel.getMessage());
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

    IBMAssistantV2Models.DialogNodeAction testRequestModel = new IBMAssistantV2Models.DialogNodeAction();
    testRequestModel.setName(name);
    testRequestModel.setXType(xType);
    testRequestModel.setParameters(parameters);
    testRequestModel.setResultVariable(resultVariable);
    testRequestModel.setCredentials(credentials);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(parameters, testRequestModel.getParameters());
    System.assertEquals(resultVariable, testRequestModel.getResultVariable());
    System.assertEquals(credentials, testRequestModel.getCredentials());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputOptionsElementModel() {
    Test.startTest();
    String label = 'label';
    IBMAssistantV2Models.DialogNodeOutputOptionsElementValue value = new IBMAssistantV2Models.DialogNodeOutputOptionsElementValue();

    IBMAssistantV2Models.DialogNodeOutputOptionsElement testRequestModel = new IBMAssistantV2Models.DialogNodeOutputOptionsElement();
    testRequestModel.setLabel(label);
    testRequestModel.setValue(value);

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(value, testRequestModel.getValue());
    Test.stopTest();
  }
  static testMethod void testDialogNodeOutputOptionsElementValueModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageInput input = new IBMAssistantV2Models.MessageInputBuilder()
      .build();

    IBMAssistantV2Models.DialogNodeOutputOptionsElementValue testRequestModel = new IBMAssistantV2Models.DialogNodeOutputOptionsElementValue();
    testRequestModel.setInput(input);

    System.assertEquals(input, testRequestModel.getInput());
    Test.stopTest();
  }
  static testMethod void testDialogNodesVisitedModel() {
    Test.startTest();
    String dialogNode = 'dialog_node';
    String title = 'title';
    String conditions = 'conditions';

    IBMAssistantV2Models.DialogNodesVisited testRequestModel = new IBMAssistantV2Models.DialogNodesVisited();
    testRequestModel.setDialogNode(dialogNode);
    testRequestModel.setTitle(title);
    testRequestModel.setConditions(conditions);

    System.assertEquals(dialogNode, testRequestModel.getDialogNode());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(conditions, testRequestModel.getConditions());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionModel() {
    Test.startTest();
    String label = 'label';
    IBMAssistantV2Models.DialogSuggestionValue value = new IBMAssistantV2Models.DialogSuggestionValue();
    IBMWatsonMapModel output = new IBMWatsonMapModel();
    output.put('output_key', 'output');

    IBMAssistantV2Models.DialogSuggestion testRequestModel = new IBMAssistantV2Models.DialogSuggestion();
    testRequestModel.setLabel(label);
    testRequestModel.setValue(value);
    testRequestModel.setOutput(output);

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(value, testRequestModel.getValue());
    System.assertEquals(output, testRequestModel.getOutput());
    Test.stopTest();
  }
  static testMethod void testDialogSuggestionValueModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageInput input = new IBMAssistantV2Models.MessageInputBuilder()
      .build();

    IBMAssistantV2Models.DialogSuggestionValue testRequestModel = new IBMAssistantV2Models.DialogSuggestionValue();
    testRequestModel.setInput(input);

    System.assertEquals(input, testRequestModel.getInput());
    Test.stopTest();
  }
  static testMethod void testMessageContextModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageContextGlobal xGlobal = new IBMAssistantV2Models.MessageContextGlobalBuilder()
      .build();
    IBMAssistantV2Models.MessageContextSkills skills = new IBMAssistantV2Models.MessageContextSkillsBuilder()
      .build();

    IBMAssistantV2Models.MessageContext testRequestModel = new IBMAssistantV2Models.MessageContextBuilder()
      .xGlobal(xGlobal)
      .skills(skills)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xGlobal, testRequestModel.getXGlobal());
    System.assertEquals(skills, testRequestModel.getSkills());
    Test.stopTest();
  }
  static testMethod void testMessageContextGlobalModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageContextGlobalSystem xSystem = new IBMAssistantV2Models.MessageContextGlobalSystemBuilder()
      .build();

    IBMAssistantV2Models.MessageContextGlobal testRequestModel = new IBMAssistantV2Models.MessageContextGlobalBuilder()
      .xSystem(xSystem)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xSystem, testRequestModel.getXSystem());
    Test.stopTest();
  }
  static testMethod void testMessageContextGlobalSystemModel() {
    Test.startTest();
    String timezone = 'timezone';
    String userId = 'user_id';
    Long turnCount = 10L;

    IBMAssistantV2Models.MessageContextGlobalSystem testRequestModel = new IBMAssistantV2Models.MessageContextGlobalSystemBuilder()
      .timezone(timezone)
      .userId(userId)
      .turnCount(turnCount)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(timezone, testRequestModel.getTimezone());
    System.assertEquals(userId, testRequestModel.getUserId());
    System.assertEquals(turnCount, testRequestModel.getTurnCount());
    Test.stopTest();
  }
  static testMethod void testMessageContextSkillModel() {
    Test.startTest();
    IBMWatsonMapModel userDefined = new IBMWatsonMapModel();
    userDefined.put('userDefined_key', 'user_defined');

    IBMAssistantV2Models.MessageContextSkill testRequestModel = new IBMAssistantV2Models.MessageContextSkillBuilder()
      .userDefined(userDefined)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(userDefined, testRequestModel.getUserDefined());
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
    String messageType = 'message_type';
    String text = 'text';
    IBMAssistantV2Models.MessageInputOptions options = new IBMAssistantV2Models.MessageInputOptionsBuilder()
      .build();
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV2Models.RuntimeIntent intentsItem = new IBMAssistantV2Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV2Models.RuntimeIntent> intents = new List<IBMAssistantV2Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV2Models.RuntimeEntity entitiesItem = new IBMAssistantV2Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV2Models.RuntimeEntity> entities = new List<IBMAssistantV2Models.RuntimeEntity> { entitiesItem } ;
    String suggestionId = 'suggestion_id';

    IBMAssistantV2Models.MessageInput testRequestModel = new IBMAssistantV2Models.MessageInputBuilder()
      .messageType(messageType)
      .text(text)
      .options(options)
      .intents(intents)
      .entities(entities)
      .suggestionId(suggestionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(messageType, testRequestModel.getMessageType());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(options, testRequestModel.getOptions());
    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(suggestionId, testRequestModel.getSuggestionId());
    Test.stopTest();
  }
  static testMethod void testMessageInputOptionsModel() {
    Test.startTest();
    Boolean debug = true;
    Boolean restart = true;
    Boolean alternateIntents = true;
    Boolean returnContext = true;

    IBMAssistantV2Models.MessageInputOptions testRequestModel = new IBMAssistantV2Models.MessageInputOptionsBuilder()
      .debug(debug)
      .restart(restart)
      .alternateIntents(alternateIntents)
      .returnContext(returnContext)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(debug, testRequestModel.getDebug());
    System.assertEquals(restart, testRequestModel.getRestart());
    System.assertEquals(alternateIntents, testRequestModel.getAlternateIntents());
    System.assertEquals(returnContext, testRequestModel.getReturnContext());
    Test.stopTest();
  }
  static testMethod void testMessageOptionsModel() {
    Test.startTest();
    String assistantId = 'assistant_id';
    String sessionId = 'session_id';
    IBMAssistantV2Models.MessageInput input = new IBMAssistantV2Models.MessageInputBuilder()
      .build();
    IBMAssistantV2Models.MessageContext context = new IBMAssistantV2Models.MessageContextBuilder()
      .build();

    IBMAssistantV2Models.MessageOptions testRequestModel = new IBMAssistantV2Models.MessageOptionsBuilder()
      .assistantId(assistantId)
      .sessionId(sessionId)
      .input(input)
      .context(context)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(assistantId, testRequestModel.assistantId());
    System.assertEquals(sessionId, testRequestModel.sessionId());
    System.assertEquals(input, testRequestModel.input());
    System.assertEquals(context, testRequestModel.context());
    Test.stopTest();
  }
  static testMethod void testMessageOutputModel() {
    Test.startTest();
    String responseType = 'response_type';
    IBMAssistantV2Models.RuntimeResponseGeneric genericItem = new IBMAssistantV2Models.RuntimeResponseGenericBuilder()
      .responseType(responseType)
      .build();
    List<IBMAssistantV2Models.RuntimeResponseGeneric> generic = new List<IBMAssistantV2Models.RuntimeResponseGeneric> { genericItem } ;
    String intent = 'intent';
    Double confidence = 0.5;
    IBMAssistantV2Models.RuntimeIntent intentsItem = new IBMAssistantV2Models.RuntimeIntentBuilder()
      .intent(intent)
      .confidence(confidence)
      .build();
    List<IBMAssistantV2Models.RuntimeIntent> intents = new List<IBMAssistantV2Models.RuntimeIntent> { intentsItem } ;
    String entity = 'entity';
    List<Long> location = new List<Long> { 10L } ;
    String value = 'value';
    IBMAssistantV2Models.RuntimeEntity entitiesItem = new IBMAssistantV2Models.RuntimeEntityBuilder()
      .entity(entity)
      .location(location)
      .value(value)
      .build();
    List<IBMAssistantV2Models.RuntimeEntity> entities = new List<IBMAssistantV2Models.RuntimeEntity> { entitiesItem } ;
    String name = 'name';
    String resultVariable = 'result_variable';
    IBMAssistantV2Models.DialogNodeAction actionsItem = new IBMAssistantV2Models.DialogNodeAction();
    List<IBMAssistantV2Models.DialogNodeAction> actions = new List<IBMAssistantV2Models.DialogNodeAction> { actionsItem } ;
    IBMAssistantV2Models.MessageOutputDebug debug = new IBMAssistantV2Models.MessageOutputDebug();
    IBMWatsonMapModel userDefined = new IBMWatsonMapModel();
    userDefined.put('userDefined_key', 'user_defined');

    IBMAssistantV2Models.MessageOutput testRequestModel = new IBMAssistantV2Models.MessageOutput();
    testRequestModel.setGeneric(generic);
    testRequestModel.setIntents(intents);
    testRequestModel.setEntities(entities);
    testRequestModel.setActions(actions);
    testRequestModel.setDebug(debug);
    testRequestModel.setUserDefined(userDefined);

    System.assertEquals(generic, testRequestModel.getGeneric());
    System.assertEquals(intents, testRequestModel.getIntents());
    System.assertEquals(entities, testRequestModel.getEntities());
    System.assertEquals(actions, testRequestModel.getActions());
    System.assertEquals(debug, testRequestModel.getDebug());
    System.assertEquals(userDefined, testRequestModel.getUserDefined());
    Test.stopTest();
  }
  static testMethod void testMessageOutputDebugModel() {
    Test.startTest();
    IBMAssistantV2Models.DialogNodesVisited nodesVisitedItem = new IBMAssistantV2Models.DialogNodesVisited();
    List<IBMAssistantV2Models.DialogNodesVisited> nodesVisited = new List<IBMAssistantV2Models.DialogNodesVisited> { nodesVisitedItem } ;
    String level = 'level';
    String message = 'message';
    IBMAssistantV2Models.DialogLogMessage logMessagesItem = new IBMAssistantV2Models.DialogLogMessage();
    List<IBMAssistantV2Models.DialogLogMessage> logMessages = new List<IBMAssistantV2Models.DialogLogMessage> { logMessagesItem } ;
    Boolean branchExited = true;
    String branchExitedReason = 'branch_exited_reason';

    IBMAssistantV2Models.MessageOutputDebug testRequestModel = new IBMAssistantV2Models.MessageOutputDebug();
    testRequestModel.setNodesVisited(nodesVisited);
    testRequestModel.setLogMessages(logMessages);
    testRequestModel.setBranchExited(branchExited);
    testRequestModel.setBranchExitedReason(branchExitedReason);

    System.assertEquals(nodesVisited, testRequestModel.getNodesVisited());
    System.assertEquals(logMessages, testRequestModel.getLogMessages());
    System.assertEquals(branchExited, testRequestModel.getBranchExited());
    System.assertEquals(branchExitedReason, testRequestModel.getBranchExitedReason());
    Test.stopTest();
  }
  static testMethod void testMessageResponseModel() {
    Test.startTest();
    IBMAssistantV2Models.MessageOutput output = new IBMAssistantV2Models.MessageOutput();
    IBMAssistantV2Models.MessageContext context = new IBMAssistantV2Models.MessageContextBuilder()
      .build();

    IBMAssistantV2Models.MessageResponse testRequestModel = new IBMAssistantV2Models.MessageResponse();
    testRequestModel.setOutput(output);
    testRequestModel.setContext(context);

    System.assertEquals(output, testRequestModel.getOutput());
    System.assertEquals(context, testRequestModel.getContext());
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
    IBMAssistantV2Models.CaptureGroup groupsItem = new IBMAssistantV2Models.CaptureGroupBuilder()
      .xGroup(xGroup)
      .build();
    List<IBMAssistantV2Models.CaptureGroup> groups = new List<IBMAssistantV2Models.CaptureGroup> { groupsItem } ;

    IBMAssistantV2Models.RuntimeEntity testRequestModel = new IBMAssistantV2Models.RuntimeEntityBuilder()
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

    IBMAssistantV2Models.RuntimeIntent testRequestModel = new IBMAssistantV2Models.RuntimeIntentBuilder()
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
    IBMAssistantV2Models.DialogNodeOutputOptionsElementValue value = new IBMAssistantV2Models.DialogNodeOutputOptionsElementValue();
    IBMAssistantV2Models.DialogNodeOutputOptionsElement optionsItem = new IBMAssistantV2Models.DialogNodeOutputOptionsElement();
    List<IBMAssistantV2Models.DialogNodeOutputOptionsElement> options = new List<IBMAssistantV2Models.DialogNodeOutputOptionsElement> { optionsItem } ;
    String messageToHumanAgent = 'message_to_human_agent';
    IBMAssistantV2Models.DialogSuggestionValue dialogSuggestionValue = new IBMAssistantV2Models.DialogSuggestionValue();
    IBMAssistantV2Models.DialogSuggestion suggestionsItem = new IBMAssistantV2Models.DialogSuggestion();
    List<IBMAssistantV2Models.DialogSuggestion> suggestions = new List<IBMAssistantV2Models.DialogSuggestion> { suggestionsItem } ;
    String header = 'header';
    String id = 'id';
    IBMAssistantV2Models.SearchResultMetadata resultMetadata = new IBMAssistantV2Models.SearchResultMetadata();
    IBMAssistantV2Models.SearchResult resultsItem = new IBMAssistantV2Models.SearchResult();
    List<IBMAssistantV2Models.SearchResult> results = new List<IBMAssistantV2Models.SearchResult> { resultsItem } ;

    IBMAssistantV2Models.RuntimeResponseGeneric testRequestModel = new IBMAssistantV2Models.RuntimeResponseGenericBuilder()
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
      .suggestions(suggestions)
      .header(header)
      .results(results)
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
    System.assertEquals(suggestions, testRequestModel.getSuggestions());
    System.assertEquals(header, testRequestModel.getHeader());
    System.assertEquals(results, testRequestModel.getResults());
    Test.stopTest();
  }
  static testMethod void testSearchResultModel() {
    Test.startTest();
    String id = 'id';
    IBMAssistantV2Models.SearchResultMetadata resultMetadata = new IBMAssistantV2Models.SearchResultMetadata();
    String body = 'body';
    String title = 'title';
    String url = 'url';
    IBMAssistantV2Models.SearchResultHighlight highlight = new IBMAssistantV2Models.SearchResultHighlight();

    IBMAssistantV2Models.SearchResult testRequestModel = new IBMAssistantV2Models.SearchResult();
    testRequestModel.setId(id);
    testRequestModel.setResultMetadata(resultMetadata);
    testRequestModel.setBody(body);
    testRequestModel.setTitle(title);
    testRequestModel.setUrl(url);
    testRequestModel.setHighlight(highlight);

    System.assertEquals(id, testRequestModel.getId());
    System.assertEquals(resultMetadata, testRequestModel.getResultMetadata());
    System.assertEquals(body, testRequestModel.getBody());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(highlight, testRequestModel.getHighlight());
    Test.stopTest();
  }
  static testMethod void testSearchResultHighlightModel() {
    Test.startTest();
    List<String> body = new List<String> { 'body' } ;
    List<String> title = new List<String> { 'title' } ;
    List<String> url = new List<String> { 'url' } ;

    IBMAssistantV2Models.SearchResultHighlight testRequestModel = new IBMAssistantV2Models.SearchResultHighlight();
    testRequestModel.setBody(body);
    testRequestModel.setTitle(title);
    testRequestModel.setUrl(url);

    System.assertEquals(body, testRequestModel.getBody());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(url, testRequestModel.getUrl());
    Test.stopTest();
  }
  static testMethod void testSearchResultMetadataModel() {
    Test.startTest();
    Double confidence = 0.5;
    Double score = 0.5;

    IBMAssistantV2Models.SearchResultMetadata testRequestModel = new IBMAssistantV2Models.SearchResultMetadata();
    testRequestModel.setConfidence(confidence);
    testRequestModel.setScore(score);

    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(score, testRequestModel.getScore());
    Test.stopTest();
  }
  static testMethod void testSessionResponseModel() {
    Test.startTest();
    String sessionId = 'session_id';

    IBMAssistantV2Models.SessionResponse testRequestModel = new IBMAssistantV2Models.SessionResponse();
    testRequestModel.setSessionId(sessionId);

    System.assertEquals(sessionId, testRequestModel.getSessionId());
    Test.stopTest();
  }


  static testMethod void testCreateSession() {
    String body = IBMWatsonMockResponses.assistantV2SessionResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String assistantId = 'assistant_id';

    IBMAssistantV2Models.CreateSessionOptions options = new IBMAssistantV2Models.CreateSessionOptionsBuilder()
      .assistantId(assistantId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV2Models.SessionResponse response = service.createSession(options);

    System.assertEquals(
      'session_id',
      response.getSessionId()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteSession() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String assistantId = 'assistant_id';
    String sessionId = 'session_id';

    IBMAssistantV2Models.DeleteSessionOptions options = new IBMAssistantV2Models.DeleteSessionOptionsBuilder()
      .assistantId(assistantId)
      .sessionId(sessionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteSession(options);

    Test.stopTest();
  }
  static testMethod void testMessage() {
    String body = IBMWatsonMockResponses.assistantV2MessageResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String assistantId = 'assistant_id';
    String sessionId = 'session_id';

    IBMAssistantV2Models.MessageOptions options = new IBMAssistantV2Models.MessageOptionsBuilder()
      .assistantId(assistantId)
      .sessionId(sessionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMAssistantV2Models.MessageResponse response = service.message(options);

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
      'message_type',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getMessageType()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getDebug()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getRestart()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getAlternateIntents()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getOptions().getReturnContext()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'suggestion_id',
      response.getOutput().getGeneric().get(0).getOptions().get(0).getValue().getInput().getSuggestionId()
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
      'label',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getLabel()
    );
    System.assertEquals(
      'message_type',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getMessageType()
    );
    System.assertEquals(
      'text',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getText()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getDebug()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getRestart()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getAlternateIntents()
    );
    System.assertEquals(
      true,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getOptions().getReturnContext()
    );
    System.assertEquals(
      'intent',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'suggestion_id',
      response.getOutput().getGeneric().get(0).getSuggestions().get(0).getValue().getInput().getSuggestionId()
    );
    System.assertEquals(
      'header',
      response.getOutput().getGeneric().get(0).getHeader()
    );
    System.assertEquals(
      'id',
      response.getOutput().getGeneric().get(0).getResults().get(0).getId()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getResults().get(0).getResultMetadata().getConfidence()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getGeneric().get(0).getResults().get(0).getResultMetadata().getScore()
    );
    System.assertEquals(
      'body',
      response.getOutput().getGeneric().get(0).getResults().get(0).getBody()
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getResults().get(0).getTitle()
    );
    System.assertEquals(
      'url',
      response.getOutput().getGeneric().get(0).getResults().get(0).getUrl()
    );
    System.assertEquals(
      'body',
      response.getOutput().getGeneric().get(0).getResults().get(0).getHighlight().getBody().get(0)
    );
    System.assertEquals(
      'title',
      response.getOutput().getGeneric().get(0).getResults().get(0).getHighlight().getTitle().get(0)
    );
    System.assertEquals(
      'url',
      response.getOutput().getGeneric().get(0).getResults().get(0).getHighlight().getUrl().get(0)
    );
    System.assertEquals(
      'intent',
      response.getOutput().getIntents().get(0).getIntent()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getIntents().get(0).getConfidence()
    );
    System.assertEquals(
      'entity',
      response.getOutput().getEntities().get(0).getEntity()
    );
    System.assertEquals(
      10L,
      response.getOutput().getEntities().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'value',
      response.getOutput().getEntities().get(0).getValue()
    );
    System.assertEquals(
      0.5,
      response.getOutput().getEntities().get(0).getConfidence()
    );
    System.assertEquals(
      'group',
      response.getOutput().getEntities().get(0).getGroups().get(0).getXGroup()
    );
    System.assertEquals(
      10L,
      response.getOutput().getEntities().get(0).getGroups().get(0).getLocation().get(0)
    );
    System.assertEquals(
      'name',
      response.getOutput().getActions().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getOutput().getActions().get(0).getXType()
    );
    System.assertEquals(
      'result_variable',
      response.getOutput().getActions().get(0).getResultVariable()
    );
    System.assertEquals(
      'credentials',
      response.getOutput().getActions().get(0).getCredentials()
    );
    System.assertEquals(
      'dialog_node',
      response.getOutput().getDebug().getNodesVisited().get(0).getDialogNode()
    );
    System.assertEquals(
      'title',
      response.getOutput().getDebug().getNodesVisited().get(0).getTitle()
    );
    System.assertEquals(
      'conditions',
      response.getOutput().getDebug().getNodesVisited().get(0).getConditions()
    );
    System.assertEquals(
      'level',
      response.getOutput().getDebug().getLogMessages().get(0).getLevel()
    );
    System.assertEquals(
      'message',
      response.getOutput().getDebug().getLogMessages().get(0).getMessage()
    );
    System.assertEquals(
      true,
      response.getOutput().getDebug().getBranchExited()
    );
    System.assertEquals(
      'branch_exited_reason',
      response.getOutput().getDebug().getBranchExitedReason()
    );
    System.assertEquals(
      'timezone',
      response.getContext().getXGlobal().getXSystem().getTimezone()
    );
    System.assertEquals(
      'user_id',
      response.getContext().getXGlobal().getXSystem().getUserId()
    );
    System.assertEquals(
      10L,
      response.getContext().getXGlobal().getXSystem().getTurnCount()
    );

    Test.stopTest();
  }
}
