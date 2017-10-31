public with sharing class ConversationV1FunctionalTests {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_conversation_v1_test';
  private static String VERSION_2017_05_26 = '2017-05-26';
  private static String workspaceId = '<workspaceId>';

  public static IBMConversationV1Models.Workspace testCreateWorkspace() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateWorkspaceOptions createWorkspaceOptions = new IBMConversationV1Models.CreateWorkspaceOptionsBuilder()
      .name('functional-test-workspace')
      .description('workspace description')
      .language('en')
      .build();
    IBMConversationV1Models.Workspace response = conversation.createWorkspace(createWorkspaceOptions);

    return response;
  }

  public static void testDeleteWorkspace() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteWorkspaceOptions deleteOptions = new IBMConversationV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    conversation.deleteWorkspace(deleteOptions);
  }

  public static IBMConversationV1Models.WorkspaceExport testGetWorkspace() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetWorkspaceOptions getOptions = new IBMConversationV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.WorkspaceExport response = conversation.getWorkspace(getOptions);

    return response;
  }

  public static IBMConversationV1Models.Workspace updateWorkspace() {
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

  public static IBMConversationV1Models.Value createValue() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateValueOptions createOptions = new IBMConversationV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Dog')
      .build();
    IBMConversationV1Models.Value response = conversation.createValue(createOptions);

    return response;
  }

  public static void deleteValue() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteValueOptions deleteOptions = new IBMConversationV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Dog')
      .build();
    conversation.deleteValue(deleteOptions);
  }

  public static IBMConversationV1Models.ValueExport getValue() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetValueOptions getOptions = new IBMConversationV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Cat')
      .exportField(true)
      .build();
    IBMConversationV1Models.ValueExport response = conversation.getValue(getOptions);

    return response;
  }

  public static IBMConversationV1Models.Value updateValue() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateValueOptions updateOptions = new IBMConversationV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Cat')
      .addNewSynonyms('Kitty')
      .build();
    IBMConversationV1Models.Value response = conversation.updateValue(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.ValueCollection listValues() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListValuesOptions listOptions = new IBMConversationV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .build();
    IBMConversationV1Models.ValueCollection response = conversation.listValues(listOptions);

    return response;
  }

  public static IBMConversationV1Models.MessageResponse message() {
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

  public static IBMConversationV1Models.Intent createIntent() {
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

  public static void deleteIntent() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteIntentOptions deleteOptions = new IBMConversationV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    conversation.deleteIntent(deleteOptions);
  }

  public static IBMConversationV1Models.IntentExport getIntent() {
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

  public static IBMConversationV1Models.IntentCollection listIntents() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListIntentsOptions listOptions = new IBMConversationV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    IBMConversationV1Models.IntentCollection response = conversation.listIntents(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Intent updateIntent() {
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

  public static IBMConversationV1Models.Example createExample() {
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

  public static void deleteExample() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteExampleOptions deleteOptions = new IBMConversationV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    conversation.deleteExample(deleteOptions);
  }

  public static IBMConversationV1Models.Example getExample() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetExampleOptions getOptions = new IBMConversationV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('this is a test')
      .build();
    IBMConversationV1Models.Example response = conversation.getExample(getOptions);

    return response;
  }

  public static IBMConversationV1Models.ExampleCollection listExamples() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListExamplesOptions listOptions = new IBMConversationV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    IBMConversationV1Models.ExampleCollection response = conversation.listExamples(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Example updateExample() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateExampleOptions updateOptions = new IBMConversationV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('this is a test')
      .newText('Does this work?')
      .build();
    IBMConversationV1Models.Example response = conversation.updateExample(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.Entity createEntity() {
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

  public static void deleteEntity() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteEntityOptions deleteOptions = new IBMConversationV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .build();
    conversation.deleteEntity(deleteOptions);
  }

  public static IBMConversationV1Models.EntityExport getEntity() {
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

  public static IBMConversationV1Models.EntityCollection listEntities() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListEntitiesOptions listOptions = new IBMConversationV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    IBMConversationV1Models.EntityCollection response = conversation.listEntities(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Entity updateEntity() {
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

  public static IBMConversationV1Models.Synonym createSynonym() {
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

  public static void deleteSynonym() {
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

  public static IBMConversationV1Models.Synonym getSynonym() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetSynonymOptions getOptions = new IBMConversationV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Beantown')
      .build();
    IBMConversationV1Models.Synonym response = conversation.getSynonym(getOptions);

    return response;
  }

  public static IBMConversationV1Models.SynonymCollection listSynonyms() {
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

  public static IBMConversationV1Models.Synonym updateSynonym() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateSynonymOptions updateOptions = new IBMConversationV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Beantown')
      .newSynonym('City of Champions')
      .build();
    IBMConversationV1Models.Synonym response = conversation.updateSynonym(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNode createDialogNode() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateDialogNodeOptions createOptions = new IBMConversationV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.createDialogNode(createOptions);

    return response;
  }

  public static void deleteDialogNode() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteDialogNodeOptions deleteOptions = new IBMConversationV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    conversation.deleteDialogNode(deleteOptions);
  }

  public static IBMConversationV1Models.DialogNode getDialogNode() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetDialogNodeOptions getOptions = new IBMConversationV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('Welcome')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.getDialogNode(getOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNodeCollection listDialogNodes() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListDialogNodesOptions listOptions = new IBMConversationV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.DialogNodeCollection response = conversation.listDialogNodes(listOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNode updateDialogNode() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateDialogNodeOptions updateOptions = new IBMConversationV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('Welcome')
      .newDialogNode('New Name')
      .newDescription('This is a new description')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.updateDialogNode(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.LogCollection listLogs() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListLogsOptions listOptions = new IBMConversationV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.LogCollection response = conversation.listLogs(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Counterexample testCreateCounterexample() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.CreateCounterexampleOptions createOptions = new IBMConversationV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.createCounterexample(createOptions);

    return response;
  }

  public static void testDeleteCounterexample() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.DeleteCounterexampleOptions deleteOptions = new IBMConversationV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    conversation.deleteCounterexample(deleteOptions);
  }

  public static IBMConversationV1Models.Counterexample testGetCounterexample() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.GetCounterexampleOptions getOptions = new IBMConversationV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('text')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.getCounterexample(getOptions);

    return response;
  }

  public static IBMConversationV1Models.CounterexampleCollection testListCounterexamples() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.ListCounterexamplesOptions listOptions = new IBMConversationV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.CounterexampleCollection response = conversation.listCounterexamples(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Counterexample testUpdateCounterexample() {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    conversation.setEndPoint(NAMED_CREDENTIALS);

    IBMConversationV1Models.UpdateCounterexampleOptions updateOptions = new IBMConversationV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('text')
      .newText('new text')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.updateCounterexample(updateOptions);

    return response;
  }
}
