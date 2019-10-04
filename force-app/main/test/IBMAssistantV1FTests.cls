public with sharing class IBMAssistantV1FTests {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_assistant_v1_test';
  private static String URL = 'https://gateway.watsonplatform.net/assistant/api';
  private static String VERSION = '2019-02-28';

  /**
   *  Test run functional tests.
   */
  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMAssistantV1 assistant = new IBMAssistantV1(VERSION, authenticator);
    assistant.setServiceURL(URL);

    String workspaceId=testCreateWorkspace(assistant).getWorkspaceId();
    testGetWorkspace(assistant, workspaceId);
    updateWorkspace(assistant, workspaceId);
    testListWorkspaces(assistant);
    message(assistant, workspaceId);
    createIntent(assistant, workspaceId);
    getIntent(assistant, workspaceId);
    listIntents(assistant, workspaceId);
    updateIntent(assistant, workspaceId);
    createExample(assistant, workspaceId);
    getExample(assistant, workspaceId);
    listExamples(assistant, workspaceId);
    updateExample(assistant, workspaceId);
    createEntity(assistant, workspaceId);
    getEntity(assistant, workspaceId);
    listEntities(assistant, workspaceId);
    updateEntity(assistant, workspaceId);
    createValue(assistant, workspaceId);
    getValue(assistant, workspaceId);
    updateValue(assistant, workspaceId);
    listValues(assistant, workspaceId);
    createSynonym(assistant, workspaceId);
    getSynonym(assistant, workspaceId);
    listSynonyms(assistant, workspaceId);
    updateSynonym(assistant, workspaceId);
    createDialogNode(assistant, workspaceId);
    getDialogNode(assistant, workspaceId);
    listDialogNodes(assistant, workspaceId);
    updateDialogNode(assistant, workspaceId);
    listLogs(assistant, workspaceId);
    testCreateCounterexample(assistant, workspaceId);
    testGetCounterexample(assistant, workspaceId);
    testListCounterexamples(assistant, workspaceId);
    testUpdateCounterexample(assistant, workspaceId);
    testDeleteCounterexample(assistant, workspaceId);
    deleteDialogNode(assistant, workspaceId);
    deleteSynonym(assistant, workspaceId);
    deleteValue(assistant, workspaceId);
    deleteEntity(assistant, workspaceId);
    deleteIntent(assistant, workspaceId);
    testDeleteWorkspace(assistant, workspaceId);
  }
  public static IBMAssistantV1Models.Workspace testCreateWorkspace(IBMAssistantV1 assistant) {
    IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguation disambiguation = new IBMAssistantV1Models.WorkspaceSystemSettingsDisambiguationBuilder()
      .enabled(true)
      .noneOfTheAbovePrompt('none of the above')
      .prompt('prompt')
      .sensitivity('high')
      .build();
    IBMAssistantV1Models.WorkspaceSystemSettingsTooling tooling = new IBMAssistantV1Models.WorkspaceSystemSettingsToolingBuilder()
      .storeGenericResponses(true)
      .build();
    IBMWatsonMapModel humanAgentAssist = new IBMWatsonMapModel();
    humanAgentAssist.put('help', 'ok');
    IBMAssistantV1Models.WorkspaceSystemSettings systemSettings = new IBMAssistantV1Models.WorkspaceSystemSettingsBuilder()
      .disambiguation(disambiguation)
      .tooling(tooling)
      .humanAgentAssist(humanAgentAssist)
      .build();

    IBMAssistantV1Models.CreateWorkspaceOptions createWorkspaceOptions = new IBMAssistantV1Models.CreateWorkspaceOptionsBuilder()
      .name('functional-test-workspace')
      .description('workspace description')
      .language('en')
      .systemSettings(systemSettings)
      .build();
    IBMAssistantV1Models.Workspace response = assistant.createWorkspace(createWorkspaceOptions);
    System.debug('IBMAssistantV1FTests.testCreateWorkspace(): ' + response);
    return response;
  }

  public static void testDeleteWorkspace(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteWorkspaceOptions deleteOptions = new IBMAssistantV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    assistant.deleteWorkspace(deleteOptions);
  }

  public static IBMAssistantV1Models.Workspace testGetWorkspace(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetWorkspaceOptions getOptions = new IBMAssistantV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMAssistantV1Models.Workspace response = assistant.getWorkspace(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.Workspace updateWorkspace(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateWorkspaceOptions updateOptions = new IBMAssistantV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .name('new test workspace')
      .description('new description')
      .build();
    IBMAssistantV1Models.Workspace response = assistant.updateWorkspace(updateOptions);

    return response;
  }

  public static IBMAssistantV1Models.WorkspaceCollection testListWorkspaces(IBMAssistantV1 assistant) {
    IBMAssistantV1Models.ListWorkspacesOptions listOptions = new IBMAssistantV1Models.ListWorkspacesOptionsBuilder()
      .build();
    IBMAssistantV1Models.WorkspaceCollection response = assistant.listWorkspaces(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.MessageResponse message(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.MessageInput input = new IBMAssistantV1Models.MessageInputBuilder()
      .text('This is a message')
      .build();
    IBMAssistantV1Models.MessageOptions messageOptions = new IBMAssistantV1Models.MessageOptionsBuilder()
      .workspaceId(workspaceId)
      .input(input)
      .build();
    IBMAssistantV1Models.MessageResponse response = assistant.message(messageOptions);

    return response;
  }

  public static IBMAssistantV1Models.Intent createIntent(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.CreateIntentOptions createOptions = new IBMAssistantV1Models.CreateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .description('new intent to test')
      .build();
    IBMAssistantV1Models.Intent response = assistant.createIntent(createOptions);

    return response;
  }

  public static void deleteIntent(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteIntentOptions deleteOptions = new IBMAssistantV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    assistant.deleteIntent(deleteOptions);
  }

  public static IBMAssistantV1Models.Intent getIntent(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetIntentOptions getOptions = new IBMAssistantV1Models.GetIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .xexport(true)
      .build();
    IBMAssistantV1Models.Intent response = assistant.getIntent(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.IntentCollection listIntents(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListIntentsOptions listOptions = new IBMAssistantV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .xexport(true)
      .build();
    IBMAssistantV1Models.IntentCollection response = assistant.listIntents(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.Intent updateIntent(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateIntentOptions updateOptions = new IBMAssistantV1Models.UpdateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .newDescription('new description!')
      .build();
    IBMAssistantV1Models.Intent response = assistant.updateIntent(updateOptions);

    return response;
  }

  public static IBMAssistantV1Models.Example createExample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.Mention mention1 = new IBMAssistantV1Models.MentionBuilder()
      .entity('entity')
      .location(new List<Long> { 0L, 10L })
      .build();
    List<IBMAssistantV1Models.Mention> mentionList = new List<IBMAssistantV1Models.Mention>();
    mentionList.add(mention1);

    IBMAssistantV1Models.CreateExampleOptions createOptions = new IBMAssistantV1Models.CreateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .mentions(mentionList)
      .build();
    IBMAssistantV1Models.Example response = assistant.createExample(createOptions);

    return response;
  }

  public static void deleteExample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteExampleOptions deleteOptions = new IBMAssistantV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('Does this work?')
      .build();
    assistant.deleteExample(deleteOptions);
  }

  public static IBMAssistantV1Models.Example getExample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetExampleOptions getOptions = new IBMAssistantV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    IBMAssistantV1Models.Example response = assistant.getExample(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.ExampleCollection listExamples(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListExamplesOptions listOptions = new IBMAssistantV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    IBMAssistantV1Models.ExampleCollection response = assistant.listExamples(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.Example updateExample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateExampleOptions updateOptions = new IBMAssistantV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .newText('Does this work?')
      .build();
    IBMAssistantV1Models.Example response = assistant.updateExample(updateOptions);

    return response;
  }

  public static IBMAssistantV1Models.Entity createEntity(IBMAssistantV1 assistant, String workspaceId) {
    IBMWatsonMapModel metadata = new IBMWatsonMapModel();
    metadata.put('Boston', 'nice');
    IBMAssistantV1Models.CreateEntityOptions createOptions = new IBMAssistantV1Models.CreateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .description('A city')
      .metadata(metadata)
      .fuzzyMatch(false)
      .build();
    IBMAssistantV1Models.Entity response = assistant.createEntity(createOptions);

    return response;
  }

  public static void deleteEntity(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteEntityOptions deleteOptions = new IBMAssistantV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .build();
    assistant.deleteEntity(deleteOptions);
  }

  public static IBMAssistantV1Models.Entity getEntity(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetEntityOptions getOptions = new IBMAssistantV1Models.GetEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .xexport(true)
      .build();
    IBMAssistantV1Models.Entity response = assistant.getEntity(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.EntityCollection listEntities(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListEntitiesOptions listOptions = new IBMAssistantV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .xexport(true)
      .build();
    IBMAssistantV1Models.EntityCollection response = assistant.listEntities(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.Entity updateEntity(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateEntityOptions updateOptions = new IBMAssistantV1Models.UpdateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .newDescription('This description is new')
      .build();
    IBMAssistantV1Models.Entity response = assistant.updateEntity(updateOptions);

    return response;
  }
  
  public static IBMAssistantV1Models.Value createValue(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.CreateValueOptions createOptions = new IBMAssistantV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    IBMAssistantV1Models.Value response = assistant.createValue(createOptions);

    return response;
  }

  public static void deleteValue(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteValueOptions deleteOptions = new IBMAssistantV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    assistant.deleteValue(deleteOptions);
  }

  public static IBMAssistantV1Models.Value getValue(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetValueOptions getOptions = new IBMAssistantV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .xexport(true)
      .build();
    IBMAssistantV1Models.Value response = assistant.getValue(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.Value updateValue(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateValueOptions updateOptions = new IBMAssistantV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .addNewSynonyms('Kitty')
      .build();
    IBMAssistantV1Models.Value response = assistant.updateValue(updateOptions);

    return response;
  }

  public static IBMAssistantV1Models.ValueCollection listValues(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListValuesOptions listOptions = new IBMAssistantV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .build();
    IBMAssistantV1Models.ValueCollection response = assistant.listValues(listOptions);

    return response;
  }
  
  public static IBMAssistantV1Models.Synonym createSynonym(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.CreateSynonymOptions createOptions = new IBMAssistantV1Models.CreateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    IBMAssistantV1Models.Synonym response = assistant.createSynonym(createOptions);

    return response;
  }

  public static void deleteSynonym(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteSynonymOptions deleteOptions = new IBMAssistantV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    assistant.deleteSynonym(deleteOptions);
  }

  public static IBMAssistantV1Models.Synonym getSynonym(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetSynonymOptions getOptions = new IBMAssistantV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Kitty')
      .build();
    IBMAssistantV1Models.Synonym response = assistant.getSynonym(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.SynonymCollection listSynonyms(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListSynonymsOptions listOptions = new IBMAssistantV1Models.ListSynonymsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    IBMAssistantV1Models.SynonymCollection response = assistant.listSynonyms(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.Synonym updateSynonym(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateSynonymOptions updateOptions = new IBMAssistantV1Models.UpdateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Kitty')
      .newSynonym('City of Champions')
      .build();
    IBMAssistantV1Models.Synonym response = assistant.updateSynonym(updateOptions);

    return response;
  }

  public static IBMAssistantV1Models.DialogNode createDialogNode(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.CreateDialogNodeOptions createOptions = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    IBMAssistantV1Models.DialogNode response = assistant.createDialogNode(createOptions);

    return response;
  }

  public static void deleteDialogNode(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteDialogNodeOptions deleteOptions = new IBMAssistantV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('New Name')
      .build();
    assistant.deleteDialogNode(deleteOptions);
  }

  public static IBMAssistantV1Models.DialogNode getDialogNode(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetDialogNodeOptions getOptions = new IBMAssistantV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    IBMAssistantV1Models.DialogNode response = assistant.getDialogNode(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.DialogNodeCollection listDialogNodes(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListDialogNodesOptions listOptions = new IBMAssistantV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMAssistantV1Models.DialogNodeCollection response = assistant.listDialogNodes(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.DialogNode updateDialogNode(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateDialogNodeOptions updateOptions = new IBMAssistantV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .newDialogNode('New Name')
      .newDescription('This is a new description')
      .build();
    IBMAssistantV1Models.DialogNode response = assistant.updateDialogNode(updateOptions);

    return response;
  }

  public static IBMAssistantV1Models.LogCollection listLogs(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListLogsOptions listOptions = new IBMAssistantV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMAssistantV1Models.LogCollection response = assistant.listLogs(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.Counterexample testCreateCounterexample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.CreateCounterexampleOptions createOptions = new IBMAssistantV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    IBMAssistantV1Models.Counterexample response = assistant.createCounterexample(createOptions);

    return response;
  }

  public static void testDeleteCounterexample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.DeleteCounterexampleOptions deleteOptions = new IBMAssistantV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('new text')
      .build();
    assistant.deleteCounterexample(deleteOptions);
  }

  public static IBMAssistantV1Models.Counterexample testGetCounterexample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.GetCounterexampleOptions getOptions = new IBMAssistantV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    IBMAssistantV1Models.Counterexample response = assistant.getCounterexample(getOptions);

    return response;
  }

  public static IBMAssistantV1Models.CounterexampleCollection testListCounterexamples(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.ListCounterexamplesOptions listOptions = new IBMAssistantV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMAssistantV1Models.CounterexampleCollection response = assistant.listCounterexamples(listOptions);

    return response;
  }

  public static IBMAssistantV1Models.Counterexample testUpdateCounterexample(IBMAssistantV1 assistant, String workspaceId) {
    IBMAssistantV1Models.UpdateCounterexampleOptions updateOptions = new IBMAssistantV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .newText('new text')
      .build();
    IBMAssistantV1Models.Counterexample response = assistant.updateCounterexample(updateOptions);

    return response;
  }
}