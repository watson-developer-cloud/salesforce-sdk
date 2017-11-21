public with sharing class IBMConversationV1FTests {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_conversation_v1_test';
  private static String VERSION_2017_05_26 = '2017-05-26';
 // private static String workspaceId = 'c7e447ed-4dca-44b1-b48e-7b9275f409bd';
  /**
   *  Test run functional tests.
   */
  public static void runAllTests()
  {
    String workspaceId=testCreateWorkspace().getWorkspaceId();
    testGetWorkspace(workspaceId);
    updateWorkspace(workspaceId);
    testListWorkspaces();
    message(workspaceId);
    createIntent(workspaceId);
    getIntent(workspaceId);
    listIntents(workspaceId);
    updateIntent(workspaceId);
    createExample(workspaceId);
    getExample(workspaceId);
    listExamples(workspaceId);
    updateExample(workspaceId);
    createEntity(workspaceId);
    getEntity(workspaceId);
    listEntities(workspaceId);
    updateEntity(workspaceId);
    createValue(workspaceId);
    getValue(workspaceId);
    updateValue(workspaceId);
    listValues(workspaceId);
    createSynonym(workspaceId);
    getSynonym(workspaceId);
    listSynonyms(workspaceId);
    updateSynonym(workspaceId);
    createDialogNode(workspaceId);
    getDialogNode(workspaceId);
    listDialogNodes(workspaceId);
    updateDialogNode(workspaceId);
    listLogs(workspaceId);
    testCreateCounterexample(workspaceId);
    testGetCounterexample(workspaceId);
    testListCounterexamples(workspaceId);
    testUpdateCounterexample(workspaceId);
    testDeleteCounterexample(workspaceId);
    deleteDialogNode(workspaceId);
    deleteSynonym(workspaceId);
    deleteValue(workspaceId);
    deleteEntity(workspaceId);
    //deleteExample(workspaceId);
    deleteIntent(workspaceId);
    testDeleteWorkspace(workspaceId);
  }
  public static IBMConversationV1Models.Workspace testCreateWorkspace() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateWorkspaceOptions createWorkspaceOptions = new IBMConversationV1Models.CreateWorkspaceOptionsBuilder()
      .name('functional-test-workspace')
      .description('workspace description')
      .language('en')
      .build();
    IBMConversationV1Models.Workspace response = conversation.createWorkspace(createWorkspaceOptions);
    System.debug('IBMConversationV1FTests.testCreateWorkspace(): ' + response);
    return response;
  }

  public static void testDeleteWorkspace(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteWorkspaceOptions deleteOptions = new IBMConversationV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    conversation.deleteWorkspace(deleteOptions);
  }

  public static IBMConversationV1Models.WorkspaceExport testGetWorkspace(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetWorkspaceOptions getOptions = new IBMConversationV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.WorkspaceExport response = conversation.getWorkspace(getOptions);

    return response;
  }

  public static IBMConversationV1Models.Workspace updateWorkspace(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateWorkspaceOptions updateOptions = new IBMConversationV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .name('new test workspace')
      .description('new description')
      .build();
    IBMConversationV1Models.Workspace response = conversation.updateWorkspace(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.WorkspaceCollection testListWorkspaces() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListWorkspacesOptions listOptions = new IBMConversationV1Models.ListWorkspacesOptionsBuilder()
      .build();
    IBMConversationV1Models.WorkspaceCollection response = conversation.listWorkspaces(listOptions);

    return response;
  }

  public static IBMConversationV1Models.MessageResponse message(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.InputData input = new IBMConversationV1Models.InputDataBuilder()
      .text('This is a message')
      .build();
    IBMConversationV1Models.MessageOptions messageOptions = new IBMConversationV1Models.MessageOptionsBuilder()
      .workspaceId(workspaceId)
      .input(input)
      .build();
    IBMConversationV1Models.MessageResponse response = conversation.message(messageOptions);

    return response;
  }

  public static IBMConversationV1Models.Intent createIntent(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateIntentOptions createOptions = new IBMConversationV1Models.CreateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .description('new intent to test')
      .build();
    IBMConversationV1Models.Intent response = conversation.createIntent(createOptions);

    return response;
  }

  public static void deleteIntent(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteIntentOptions deleteOptions = new IBMConversationV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    conversation.deleteIntent(deleteOptions);
  }

  public static IBMConversationV1Models.IntentExport getIntent(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetIntentOptions getOptions = new IBMConversationV1Models.GetIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .exportField(true)
      .build();
    IBMConversationV1Models.IntentExport response = conversation.getIntent(getOptions);

    return response;
  }

  public static IBMConversationV1Models.IntentCollection listIntents(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListIntentsOptions listOptions = new IBMConversationV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    IBMConversationV1Models.IntentCollection response = conversation.listIntents(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Intent updateIntent(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateIntentOptions updateOptions = new IBMConversationV1Models.UpdateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .newDescription('new description!')
      .build();
    IBMConversationV1Models.Intent response = conversation.updateIntent(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.Example createExample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateExampleOptions createOptions = new IBMConversationV1Models.CreateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    IBMConversationV1Models.Example response = conversation.createExample(createOptions);

    return response;
  }

  public static void deleteExample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteExampleOptions deleteOptions = new IBMConversationV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('Does this work?')
      .build();
    conversation.deleteExample(deleteOptions);
  }

  public static IBMConversationV1Models.Example getExample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetExampleOptions getOptions = new IBMConversationV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    IBMConversationV1Models.Example response = conversation.getExample(getOptions);

    return response;
  }

  public static IBMConversationV1Models.ExampleCollection listExamples(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListExamplesOptions listOptions = new IBMConversationV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    IBMConversationV1Models.ExampleCollection response = conversation.listExamples(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Example updateExample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateExampleOptions updateOptions = new IBMConversationV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .newText('Does this work?')
      .build();
    IBMConversationV1Models.Example response = conversation.updateExample(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.Entity createEntity(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('Boston', 'nice');
    IBMConversationV1Models.CreateEntityOptions createOptions = new IBMConversationV1Models.CreateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .description('A city')
      .metadata(metadata)
      .fuzzyMatch(false)
      .build();
    IBMConversationV1Models.Entity response = conversation.createEntity(createOptions);

    return response;
  }

  public static void deleteEntity(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteEntityOptions deleteOptions = new IBMConversationV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .build();
    conversation.deleteEntity(deleteOptions);
  }

  public static IBMConversationV1Models.EntityExport getEntity(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetEntityOptions getOptions = new IBMConversationV1Models.GetEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .exportField(true)
      .build();
    IBMConversationV1Models.EntityExport response = conversation.getEntity(getOptions);

    return response;
  }

  public static IBMConversationV1Models.EntityCollection listEntities(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListEntitiesOptions listOptions = new IBMConversationV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    IBMConversationV1Models.EntityCollection response = conversation.listEntities(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Entity updateEntity(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateEntityOptions updateOptions = new IBMConversationV1Models.UpdateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .newDescription('This description is new')
      .build();
    IBMConversationV1Models.Entity response = conversation.updateEntity(updateOptions);

    return response;
  }
  
  public static IBMConversationV1Models.Value createValue(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateValueOptions createOptions = new IBMConversationV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    IBMConversationV1Models.Value response = conversation.createValue(createOptions);

    return response;
  }

  public static void deleteValue(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteValueOptions deleteOptions = new IBMConversationV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    conversation.deleteValue(deleteOptions);
  }

  public static IBMConversationV1Models.ValueExport getValue(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetValueOptions getOptions = new IBMConversationV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .exportField(true)
      .build();
    IBMConversationV1Models.ValueExport response = conversation.getValue(getOptions);

    return response;
  }

  public static IBMConversationV1Models.Value updateValue(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateValueOptions updateOptions = new IBMConversationV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .addNewSynonyms('Kitty')
      .build();
    IBMConversationV1Models.Value response = conversation.updateValue(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.ValueCollection listValues(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListValuesOptions listOptions = new IBMConversationV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .build();
    IBMConversationV1Models.ValueCollection response = conversation.listValues(listOptions);

    return response;
  }
  
  public static IBMConversationV1Models.Synonym createSynonym(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateSynonymOptions createOptions = new IBMConversationV1Models.CreateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    IBMConversationV1Models.Synonym response = conversation.createSynonym(createOptions);

    return response;
  }

  public static void deleteSynonym(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteSynonymOptions deleteOptions = new IBMConversationV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    conversation.deleteSynonym(deleteOptions);
  }

  public static IBMConversationV1Models.Synonym getSynonym(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetSynonymOptions getOptions = new IBMConversationV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Kitty')
      .build();
    IBMConversationV1Models.Synonym response = conversation.getSynonym(getOptions);

    return response;
  }

  public static IBMConversationV1Models.SynonymCollection listSynonyms(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListSynonymsOptions listOptions = new IBMConversationV1Models.ListSynonymsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    IBMConversationV1Models.SynonymCollection response = conversation.listSynonyms(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Synonym updateSynonym(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateSynonymOptions updateOptions = new IBMConversationV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Kitty')
      .newSynonym('City of Champions')
      .build();
    IBMConversationV1Models.Synonym response = conversation.updateSynonym(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNode createDialogNode(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateDialogNodeOptions createOptions = new IBMConversationV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.createDialogNode(createOptions);

    return response;
  }

  public static void deleteDialogNode(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteDialogNodeOptions deleteOptions = new IBMConversationV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('New Name')
      .build();
    conversation.deleteDialogNode(deleteOptions);
  }

  public static IBMConversationV1Models.DialogNode getDialogNode(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetDialogNodeOptions getOptions = new IBMConversationV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.getDialogNode(getOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNodeCollection listDialogNodes(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListDialogNodesOptions listOptions = new IBMConversationV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.DialogNodeCollection response = conversation.listDialogNodes(listOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNode updateDialogNode(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateDialogNodeOptions updateOptions = new IBMConversationV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .newDialogNode('New Name')
      .newDescription('This is a new description')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.updateDialogNode(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.LogCollection listLogs(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListLogsOptions listOptions = new IBMConversationV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.LogCollection response = conversation.listLogs(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Counterexample testCreateCounterexample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateCounterexampleOptions createOptions = new IBMConversationV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.createCounterexample(createOptions);

    return response;
  }

  public static void testDeleteCounterexample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);
    IBMConversationV1Models.DeleteCounterexampleOptions deleteOptions = new IBMConversationV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('new text')
      .build();
    conversation.deleteCounterexample(deleteOptions);
  }

  public static IBMConversationV1Models.Counterexample testGetCounterexample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetCounterexampleOptions getOptions = new IBMConversationV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.getCounterexample(getOptions);

    return response;
  }

  public static IBMConversationV1Models.CounterexampleCollection testListCounterexamples(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListCounterexamplesOptions listOptions = new IBMConversationV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.CounterexampleCollection response = conversation.listCounterexamples(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Counterexample testUpdateCounterexample(String workspaceId) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateCounterexampleOptions updateOptions = new IBMConversationV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .newText('new text')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.updateCounterexample(updateOptions);

    return response;
  }
}