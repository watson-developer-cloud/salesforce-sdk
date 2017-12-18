public with sharing class IBMConversationV1FTests {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_conversation_v1_test';
  private static String URL = 'https://gateway.watsonplatform.net/conversation/api';
  private static String VERSION_2017_05_26 = '2017-05-26';

  /**
   *  Test run functional tests.
   */
  public static void runAllTests(String username, String password) {
    String workspaceId=testCreateWorkspace(username, password).getWorkspaceId();
    testGetWorkspace(workspaceId, username, password);
    updateWorkspace(workspaceId, username, password);
    testListWorkspaces(username, password);
    message(workspaceId, username, password);
    createIntent(workspaceId, username, password);
    getIntent(workspaceId, username, password);
    listIntents(workspaceId, username, password);
    updateIntent(workspaceId, username, password);
    createExample(workspaceId, username, password);
    getExample(workspaceId, username, password);
    listExamples(workspaceId, username, password);
    updateExample(workspaceId, username, password);
    createEntity(workspaceId, username, password);
    getEntity(workspaceId, username, password);
    listEntities(workspaceId, username, password);
    updateEntity(workspaceId, username, password);
    createValue(workspaceId, username, password);
    getValue(workspaceId, username, password);
    updateValue(workspaceId, username, password);
    listValues(workspaceId, username, password);
    createSynonym(workspaceId, username, password);
    getSynonym(workspaceId, username, password);
    listSynonyms(workspaceId, username, password);
    updateSynonym(workspaceId, username, password);
    createDialogNode(workspaceId, username, password);
    getDialogNode(workspaceId, username, password);
    listDialogNodes(workspaceId, username, password);
    updateDialogNode(workspaceId, username, password);
    listLogs(workspaceId, username, password);
    testCreateCounterexample(workspaceId, username, password);
    testGetCounterexample(workspaceId, username, password);
    testListCounterexamples(workspaceId, username, password);
    testUpdateCounterexample(workspaceId, username, password);
    testDeleteCounterexample(workspaceId, username, password);
    deleteDialogNode(workspaceId, username, password);
    deleteSynonym(workspaceId, username, password);
    deleteValue(workspaceId, username, password);
    deleteEntity(workspaceId, username, password);
    deleteIntent(workspaceId, username, password);
    testDeleteWorkspace(workspaceId, username, password);
  }
  public static IBMConversationV1Models.Workspace testCreateWorkspace(String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    //conversation.setEndPoint(NAMED_CREDENTIALS);(Use either named credentials or username and paasword as below)
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.CreateWorkspaceOptions createWorkspaceOptions = new IBMConversationV1Models.CreateWorkspaceOptionsBuilder()
      .name('functional-test-workspace')
      .description('workspace description')
      .language('en')
      .build();
    IBMConversationV1Models.Workspace response = conversation.createWorkspace(createWorkspaceOptions);
    System.debug('IBMConversationV1FTests.testCreateWorkspace(): ' + response);
    return response;
  }

  public static void testDeleteWorkspace(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.DeleteWorkspaceOptions deleteOptions = new IBMConversationV1Models.DeleteWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    conversation.deleteWorkspace(deleteOptions);
  }

  public static IBMConversationV1Models.WorkspaceExport testGetWorkspace(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetWorkspaceOptions getOptions = new IBMConversationV1Models.GetWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.WorkspaceExport response = conversation.getWorkspace(getOptions);

    return response;
  }

  public static IBMConversationV1Models.Workspace updateWorkspace(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.UpdateWorkspaceOptions updateOptions = new IBMConversationV1Models.UpdateWorkspaceOptionsBuilder()
      .workspaceId(workspaceId)
      .name('new test workspace')
      .description('new description')
      .build();
    IBMConversationV1Models.Workspace response = conversation.updateWorkspace(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.WorkspaceCollection testListWorkspaces(String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListWorkspacesOptions listOptions = new IBMConversationV1Models.ListWorkspacesOptionsBuilder()
      .build();
    IBMConversationV1Models.WorkspaceCollection response = conversation.listWorkspaces(listOptions);

    return response;
  }

  public static IBMConversationV1Models.MessageResponse message(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

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

  public static IBMConversationV1Models.Intent createIntent(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.CreateIntentOptions createOptions = new IBMConversationV1Models.CreateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .description('new intent to test')
      .build();
    IBMConversationV1Models.Intent response = conversation.createIntent(createOptions);

    return response;
  }

  public static void deleteIntent(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.DeleteIntentOptions deleteOptions = new IBMConversationV1Models.DeleteIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    conversation.deleteIntent(deleteOptions);
  }

  public static IBMConversationV1Models.IntentExport getIntent(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetIntentOptions getOptions = new IBMConversationV1Models.GetIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .exportField(true)
      .build();
    IBMConversationV1Models.IntentExport response = conversation.getIntent(getOptions);

    return response;
  }

  public static IBMConversationV1Models.IntentCollection listIntents(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListIntentsOptions listOptions = new IBMConversationV1Models.ListIntentsOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    IBMConversationV1Models.IntentCollection response = conversation.listIntents(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Intent updateIntent(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.UpdateIntentOptions updateOptions = new IBMConversationV1Models.UpdateIntentOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .newDescription('new description!')
      .build();
    IBMConversationV1Models.Intent response = conversation.updateIntent(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.Example createExample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.CreateExampleOptions createOptions = new IBMConversationV1Models.CreateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    IBMConversationV1Models.Example response = conversation.createExample(createOptions);

    return response;
  }

  public static void deleteExample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.DeleteExampleOptions deleteOptions = new IBMConversationV1Models.DeleteExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('Does this work?')
      .build();
    conversation.deleteExample(deleteOptions);
  }

  public static IBMConversationV1Models.Example getExample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetExampleOptions getOptions = new IBMConversationV1Models.GetExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .build();
    IBMConversationV1Models.Example response = conversation.getExample(getOptions);

    return response;
  }

  public static IBMConversationV1Models.ExampleCollection listExamples(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListExamplesOptions listOptions = new IBMConversationV1Models.ListExamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .build();
    IBMConversationV1Models.ExampleCollection response = conversation.listExamples(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Example updateExample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.UpdateExampleOptions updateOptions = new IBMConversationV1Models.UpdateExampleOptionsBuilder()
      .workspaceId(workspaceId)
      .intent('TestIntent')
      .text('example A')
      .newText('Does this work?')
      .build();
    IBMConversationV1Models.Example response = conversation.updateExample(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.Entity createEntity(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

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

  public static void deleteEntity(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.DeleteEntityOptions deleteOptions = new IBMConversationV1Models.DeleteEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .build();
    conversation.deleteEntity(deleteOptions);
  }

  public static IBMConversationV1Models.EntityExport getEntity(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetEntityOptions getOptions = new IBMConversationV1Models.GetEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .exportField(true)
      .build();
    IBMConversationV1Models.EntityExport response = conversation.getEntity(getOptions);

    return response;
  }

  public static IBMConversationV1Models.EntityCollection listEntities(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListEntitiesOptions listOptions = new IBMConversationV1Models.ListEntitiesOptionsBuilder()
      .workspaceId(workspaceId)
      .exportField(true)
      .build();
    IBMConversationV1Models.EntityCollection response = conversation.listEntities(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Entity updateEntity(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.UpdateEntityOptions updateOptions = new IBMConversationV1Models.UpdateEntityOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .newDescription('This description is new')
      .build();
    IBMConversationV1Models.Entity response = conversation.updateEntity(updateOptions);

    return response;
  }
  
  public static IBMConversationV1Models.Value createValue(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.CreateValueOptions createOptions = new IBMConversationV1Models.CreateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    IBMConversationV1Models.Value response = conversation.createValue(createOptions);

    return response;
  }

  public static void deleteValue(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.DeleteValueOptions deleteOptions = new IBMConversationV1Models.DeleteValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    conversation.deleteValue(deleteOptions);
  }

  public static IBMConversationV1Models.ValueExport getValue(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetValueOptions getOptions = new IBMConversationV1Models.GetValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .exportField(true)
      .build();
    IBMConversationV1Models.ValueExport response = conversation.getValue(getOptions);

    return response;
  }

  public static IBMConversationV1Models.Value updateValue(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.UpdateValueOptions updateOptions = new IBMConversationV1Models.UpdateValueOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .addNewSynonyms('Kitty')
      .build();
    IBMConversationV1Models.Value response = conversation.updateValue(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.ValueCollection listValues(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListValuesOptions listOptions = new IBMConversationV1Models.ListValuesOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .build();
    IBMConversationV1Models.ValueCollection response = conversation.listValues(listOptions);

    return response;
  }
  
  public static IBMConversationV1Models.Synonym createSynonym(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.CreateSynonymOptions createOptions = new IBMConversationV1Models.CreateSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    IBMConversationV1Models.Synonym response = conversation.createSynonym(createOptions);

    return response;
  }

  public static void deleteSynonym(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.DeleteSynonymOptions deleteOptions = new IBMConversationV1Models.DeleteSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('The Hub')
      .build();
    conversation.deleteSynonym(deleteOptions);
  }

  public static IBMConversationV1Models.Synonym getSynonym(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetSynonymOptions getOptions = new IBMConversationV1Models.GetSynonymOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .synonym('Kitty')
      .build();
    IBMConversationV1Models.Synonym response = conversation.getSynonym(getOptions);

    return response;
  }

  public static IBMConversationV1Models.SynonymCollection listSynonyms(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListSynonymsOptions listOptions = new IBMConversationV1Models.ListSynonymsOptionsBuilder()
      .workspaceId(workspaceId)
      .entity('City')
      .value('Boston')
      .build();
    IBMConversationV1Models.SynonymCollection response = conversation.listSynonyms(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Synonym updateSynonym(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

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

  public static IBMConversationV1Models.DialogNode createDialogNode(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.CreateDialogNodeOptions createOptions = new IBMConversationV1Models.CreateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.createDialogNode(createOptions);

    return response;
  }

  public static void deleteDialogNode(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.DeleteDialogNodeOptions deleteOptions = new IBMConversationV1Models.DeleteDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('New Name')
      .build();
    conversation.deleteDialogNode(deleteOptions);
  }

  public static IBMConversationV1Models.DialogNode getDialogNode(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetDialogNodeOptions getOptions = new IBMConversationV1Models.GetDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.getDialogNode(getOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNodeCollection listDialogNodes(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListDialogNodesOptions listOptions = new IBMConversationV1Models.ListDialogNodesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.DialogNodeCollection response = conversation.listDialogNodes(listOptions);

    return response;
  }

  public static IBMConversationV1Models.DialogNode updateDialogNode(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.UpdateDialogNodeOptions updateOptions = new IBMConversationV1Models.UpdateDialogNodeOptionsBuilder()
      .workspaceId(workspaceId)
      .dialogNode('new_dialog_name')
      .newDialogNode('New Name')
      .newDescription('This is a new description')
      .build();
    IBMConversationV1Models.DialogNode response = conversation.updateDialogNode(updateOptions);

    return response;
  }

  public static IBMConversationV1Models.LogCollection listLogs(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListLogsOptions listOptions = new IBMConversationV1Models.ListLogsOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.LogCollection response = conversation.listLogs(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Counterexample testCreateCounterexample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.CreateCounterexampleOptions createOptions = new IBMConversationV1Models.CreateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.createCounterexample(createOptions);

    return response;
  }

  public static void testDeleteCounterexample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }
    IBMConversationV1Models.DeleteCounterexampleOptions deleteOptions = new IBMConversationV1Models.DeleteCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('new text')
      .build();
    conversation.deleteCounterexample(deleteOptions);
  }

  public static IBMConversationV1Models.Counterexample testGetCounterexample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.GetCounterexampleOptions getOptions = new IBMConversationV1Models.GetCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.getCounterexample(getOptions);

    return response;
  }

  public static IBMConversationV1Models.CounterexampleCollection testListCounterexamples(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.ListCounterexamplesOptions listOptions = new IBMConversationV1Models.ListCounterexamplesOptionsBuilder()
      .workspaceId(workspaceId)
      .build();
    IBMConversationV1Models.CounterexampleCollection response = conversation.listCounterexamples(listOptions);

    return response;
  }

  public static IBMConversationV1Models.Counterexample testUpdateCounterexample(String workspaceId, String username, String password) {
    IBMConversationV1 conversation = new IBMConversationV1(IBMConversationV1.VERSION_DATE_2017_05_26);
    if (username != null && password != null) {
      conversation.setEndPoint(URL);
      conversation.setUsernameAndPassword(username, password);
    }

    IBMConversationV1Models.UpdateCounterexampleOptions updateOptions = new IBMConversationV1Models.UpdateCounterexampleOptionsBuilder()
      .workspaceId(workspaceId)
      .text('Text for a counterexample')
      .newText('new text')
      .build();
    IBMConversationV1Models.Counterexample response = conversation.updateCounterexample(updateOptions);

    return response;
  }
}