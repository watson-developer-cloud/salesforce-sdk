public class ConversationV1FunctionalTests {
  private static String username;
  private static String password;
  private static String workspaceId;

  static {
    username = '<username>';
    password = '<password>';
    workspaceId = '<workspaceId>';
  }

  public static ConversationV1Models.Workspace testCreateWorkspace() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.CreateWorkspaceOptions createWorkspaceOptions = new ConversationV1Models.CreateWorkspaceOptionsBuilder()
      .name('functional-test-workspace')
      .description('workspace description')
      .language('en')
      .build();
    ConversationV1Models.Workspace response = conversation.createWorkspace(createWorkspaceOptions);

    return response;
  }

  public static void testDeleteWorkspace() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteWorkspaceOptions deleteOptions = new ConversationV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    conversation.deleteWorkspace(deleteOptions);
  }

  public static ConversationV1Models.WorkspaceExport testGetWorkspace() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetWorkspaceOptions getOptions = new ConversationV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    ConversationV1Models.WorkspaceExport response = conversation.getWorkspace(getOptions);

    return response;
  }

  public static ConversationV1Models.Workspace updateWorkspace() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateWorkspaceOptions updateOptions = new ConversationV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .name('new test workspace')
      .description('new description')
      .build();
    ConversationV1Models.Workspace response = conversation.updateWorkspace(updateOptions);

    return response;
  }

  public static ConversationV1Models.WorkspaceCollection testListWorkspaces() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListWorkspacesOptions listOptions = new ConversationV1Models.ListWorkspacesOptionsBuilder()
      .build();
    ConversationV1Models.WorkspaceCollection response = conversation.listWorkspaces(listOptions);

    return response;
  }

  public static ConversationV1Models.Value createValue() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.CreateValueOptions createOptions = new ConversationV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Dog')
      .build();
    ConversationV1Models.Value response = conversation.createValue(createOptions);

    return response;
  }

  public static void deleteValue() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteValueOptions deleteOptions = new ConversationV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Dog')
      .build();
    conversation.deleteValue(deleteOptions);
  }

  public static ConversationV1Models.ValueExport getValue() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetValueOptions getOptions = new ConversationV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Cat')
      .exportField(true)
      .build();
    ConversationV1Models.ValueExport response = conversation.getValue(getOptions);

    return response;
  }

  public static ConversationV1Models.Value updateValue() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateValueOptions updateOptions = new ConversationV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .value('Cat')
      .addNewSynonyms('Kitty')
      .build();
    ConversationV1Models.Value response = conversation.updateValue(updateOptions);

    return response;
  }

  public static ConversationV1Models.ValueCollection listValues() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListValuesOptions listOptions = new ConversationV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .build();
    ConversationV1Models.ValueCollection response = conversation.listValues(listOptions);

    return response;
  }

  public static ConversationV1Models.MessageResponse message() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.InputData input = new ConversationV1Models.InputDataBuilder()
      .text('This is a message')
      .build();
    ConversationV1Models.MessageOptions messageOptions = new ConversationV1Models.MessageOptionsBuilder()
      .workspaceId(workspaceId)
      .input(input)
      .build();
    ConversationV1Models.MessageResponse response = conversation.message(messageOptions);

    return response;
  }

  public static ConversationV1Models.Intent createIntent() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.CreateIntentOptions createOptions = new ConversationV1Models.CreateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .description('new intent to test')
      .build();
    ConversationV1Models.Intent response = conversation.createIntent(createOptions);

    return response;
  }

  public static void deleteIntent() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteIntentOptions deleteOptions = new ConversationV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    conversation.deleteIntent(deleteOptions);
  }

  public static ConversationV1Models.IntentExport getIntent() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetIntentOptions getOptions = new ConversationV1Models.GetIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .exportField(true)
      .build();
    ConversationV1Models.IntentExport response = conversation.getIntent(getOptions);

    return response;
  }

  public static ConversationV1Models.IntentCollection listIntents() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListIntentsOptions listOptions = new ConversationV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    ConversationV1Models.IntentCollection response = conversation.listIntents(listOptions);

    return response;
  }

  public static ConversationV1Models.Intent updateIntent() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateIntentOptions updateOptions = new ConversationV1Models.UpdateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .newDescription('new description!')
      .build();
    ConversationV1Models.Intent response = conversation.updateIntent(updateOptions);

    return response;
  }

  public static ConversationV1Models.Example createExample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.CreateExampleOptions createOptions = new ConversationV1Models.CreateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    ConversationV1Models.Example response = conversation.createExample(createOptions);

    return response;
  }

  public static void deleteExample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteExampleOptions deleteOptions = new ConversationV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    conversation.deleteExample(deleteOptions);
  }

  public static ConversationV1Models.Example getExample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetExampleOptions getOptions = new ConversationV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('this is a test')
      .build();
    ConversationV1Models.Example response = conversation.getExample(getOptions);

    return response;
  }

  public static ConversationV1Models.ExampleCollection listExamples() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListExamplesOptions listOptions = new ConversationV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    ConversationV1Models.ExampleCollection response = conversation.listExamples(listOptions);

    return response;
  }

  public static ConversationV1Models.Example updateExample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateExampleOptions updateOptions = new ConversationV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('this is a test')
      .newText('Does this work?')
      .build();
    ConversationV1Models.Example response = conversation.updateExample(updateOptions);

    return response;
  }

  public static ConversationV1Models.Entity createEntity() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('Boston', 'nice');
    ConversationV1Models.CreateEntityOptions createOptions = new ConversationV1Models.CreateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .description('A city')
      .metadata(metadata)
      .fuzzyMatch(false)
      .build();
    ConversationV1Models.Entity response = conversation.createEntity(createOptions);

    return response;
  }

  public static void deleteEntity() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteEntityOptions deleteOptions = new ConversationV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('TestEntity')
      .build();
    conversation.deleteEntity(deleteOptions);
  }

  public static ConversationV1Models.EntityExport getEntity() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetEntityOptions getOptions = new ConversationV1Models.GetEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .exportField(true)
      .build();
    ConversationV1Models.EntityExport response = conversation.getEntity(getOptions);

    return response;
  }

  public static ConversationV1Models.EntityCollection listEntities() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListEntitiesOptions listOptions = new ConversationV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    ConversationV1Models.EntityCollection response = conversation.listEntities(listOptions);

    return response;
  }

  public static ConversationV1Models.Entity updateEntity() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateEntityOptions updateOptions = new ConversationV1Models.UpdateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .newDescription('This description is new')
      .build();
    ConversationV1Models.Entity response = conversation.updateEntity(updateOptions);

    return response;
  }

  public static ConversationV1Models.Synonym createSynonym() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.CreateSynonymOptions createOptions = new ConversationV1Models.CreateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    ConversationV1Models.Synonym response = conversation.createSynonym(createOptions);

    return response;
  }

  public static void deleteSynonym() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteSynonymOptions deleteOptions = new ConversationV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    conversation.deleteSynonym(deleteOptions);
  }

  public static ConversationV1Models.Synonym getSynonym() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetSynonymOptions getOptions = new ConversationV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Beantown')
      .build();
    ConversationV1Models.Synonym response = conversation.getSynonym(getOptions);

    return response;
  }

  public static ConversationV1Models.SynonymCollection listSynonyms() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListSynonymsOptions listOptions = new ConversationV1Models.ListSynonymsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    ConversationV1Models.SynonymCollection response = conversation.listSynonyms(listOptions);

    return response;
  }

  public static ConversationV1Models.Synonym updateSynonym() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateSynonymOptions updateOptions = new ConversationV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Beantown')
      .newSynonym('City of Champions')
      .build();
    ConversationV1Models.Synonym response = conversation.updateSynonym(updateOptions);

    return response;
  }

  public static ConversationV1Models.DialogNode createDialogNode() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.CreateDialogNodeOptions createOptions = new ConversationV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    ConversationV1Models.DialogNode response = conversation.createDialogNode(createOptions);

    return response;
  }

  public static void deleteDialogNode() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteDialogNodeOptions deleteOptions = new ConversationV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    conversation.deleteDialogNode(deleteOptions);
  }

  public static ConversationV1Models.DialogNode getDialogNode() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetDialogNodeOptions getOptions = new ConversationV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('Welcome')
      .build();
    ConversationV1Models.DialogNode response = conversation.getDialogNode(getOptions);

    return response;
  }

  public static ConversationV1Models.DialogNodeCollection listDialogNodes() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListDialogNodesOptions listOptions = new ConversationV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    ConversationV1Models.DialogNodeCollection response = conversation.listDialogNodes(listOptions);

    return response;
  }

  public static ConversationV1Models.DialogNode updateDialogNode() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateDialogNodeOptions updateOptions = new ConversationV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('Welcome')
      .newDialogNode('New Name')
      .newDescription('This is a new description')
      .build();
    ConversationV1Models.DialogNode response = conversation.updateDialogNode(updateOptions);

    return response;
  }

  public static ConversationV1Models.LogCollection listLogs() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListLogsOptions listOptions = new ConversationV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    ConversationV1Models.LogCollection response = conversation.listLogs(listOptions);

    return response;
  }

  public static ConversationV1Models.Counterexample testCreateCounterexample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.CreateCounterexampleOptions createOptions = new ConversationV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    ConversationV1Models.Counterexample response = conversation.createCounterexample(createOptions);

    return response;
  }

  public static void testDeleteCounterexample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.DeleteCounterexampleOptions deleteOptions = new ConversationV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    conversation.deleteCounterexample(deleteOptions);
  }

  public static ConversationV1Models.Counterexample testGetCounterexample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.GetCounterexampleOptions getOptions = new ConversationV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('text')
      .build();
    ConversationV1Models.Counterexample response = conversation.getCounterexample(getOptions);

    return response;
  }

  public static ConversationV1Models.CounterexampleCollection testListCounterexamples() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.ListCounterexamplesOptions listOptions = new ConversationV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    ConversationV1Models.CounterexampleCollection response = conversation.listCounterexamples(listOptions);

    return response;
  }

  public static ConversationV1Models.Counterexample testUpdateCounterexample() {
    ConversationV1 conversation = new ConversationV1(ConversationV1.VERSION_DATE_2017_05_26);
    conversation.setUsernameAndPassword(username, password);

    ConversationV1Models.UpdateCounterexampleOptions updateOptions = new ConversationV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('text')
      .newText('new text')
      .build();
    ConversationV1Models.Counterexample response = conversation.updateCounterexample(updateOptions);

    return response;
  }
}