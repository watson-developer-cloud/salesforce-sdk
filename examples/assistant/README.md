# IBM Watson Salesforce SDK - Assistant Lab

## Introduction
In this lab, you'll get the chance to try out the new Watson Salesforce SDK by interacting with the Watson Assistant API in Apex. After completing the lab, you should have a better idea of the capabilities of the Watson Assistant service and be familiar with the general structure of the SDK.

If throughout the lab you have any other questions, you can find more details about the Assistant service [here](https://www.ibm.com/watson/services/conversation/). Additionally, if you're curious about any API details, you can find them in the [API explorer](https://watson-api-explorer.mybluemix.net/apis/assistant-v1). Otherwise, let's get started!

## Setup
Using the SDK requires the following setup steps:

- Sign up/login to IBM Cloud
- Create desired Watson service instance
- Deploy SDK to your Salesforce org (for the lab, the quickest option will be the manual deployment to a non-scratch org)
- Set named credentials and remote site settings in Salesforce

These steps are detailed in the README of the [Watson Salesforce SDK GitHub page](https://github.com/watson-developer-cloud/salesforce-sdk).

Once those steps are complete, you should be ready to continue with the lab.

## Getting Familiar with Assistant
Before starting with the SDK, it'll be helpful to take a look at our new Assistant service instance and get familiar with it a little bit. To do so, open the Assistant tooling. You can do this by going to the Watson section of IBM Cloud, navigating to your **Existing Services**, and clicking **Launch tool**.

![Launch tool button](readme_images/launch_tool.png "Launch tool button")

Once you're in the tool, you'll see a page listing Assistant **workspaces**. You'll also see that one has already been created for you called Car Dashboard - Sample. This is the workspace that we'll be building on in this lab. Go ahead and click on it to edit it.

We'll be doing our editing through the SDK, but it might be helpful to keep this tab open to get a more visual representation of what's going on. You'll also be able to see changes/additions you make programmatically.

As a quick primer, a Assistant workspace is made up of **dialog nodes** structured in a tree. Dialog nodes can recognize references to **intents** and **entities** and respond accordingly. More detailed information can be found [here](https://console.bluemix.net/docs/services/conversation/configure-workspace.html#configuring-a-conversation-workspace), but that should be enough to continue in this lab.

# might be deleted - start

This sample workspace is designed to mimic a smart car assistant that you can ask questions or issue commands to while driving. Currently, the assistant is set up to recognize a question about the weather, but can't give any information beyond that. You can see that by going to the **Dialog** section of the tooling and finding the **#weather** node, which has no children.

![Weather node](readme_images/weather_node.png "Weather node")

In fact, go ahead and delete it by clicking **Delete** in the options menu on the right side of the dialog node. We'll create a new one in a bit.

# might be deleted - end

## Using the SDK
### 1. Creating Entities
Head over to the Developer Console in your Salesforce environment, where we'll be putting our Apex code to call the Assistant service. You can get there by clicking on the gear icon in the top right of the Salesforce dashboard:

![Developer console](readme_images/developer_console.png "Developer console")

**After running each snippet, be sure to clear your code and start fresh for the next one.**

Before performing any actions, we need to create an instance of a Assistant object, whose class is named IBMAssistantV1 in the Apex SDK. We can do this with just one line:

```apex
IBMAssistantV1 assistant = new IBMAssistantV1('2018-02-16');
```

The argument passed into the constructor is the version date, and the possible values are exposed as static strings in the service classes. Using the latest version ensures the most up-to-date functionality, but the option is there to use older versions if any app-specific functionality would be broken otherwise.

Note as well that no code has to be written for authentication, as we set up the named credentials earlier in this lab. However, if we didn't set that up, we could use the `setUsernameAndPassword` method to get the same result.

The first thing we'll do is create two new **entities**: `city` and `city_bad`. These will contain values for cities with good weather and bad weather respectively. Here's what all the code you should run looks like:

```apex
IBMAssistantV1 assistant = new IBMAssistantV1('2018-02-16');

// configuring the two entities we want to create
IBMAssistantV1Models.CreateEntityOptions createCityOptions
  = new IBMAssistantV1Models.CreateEntityOptionsBuilder()
    .workspaceId('WORKSPACE_ID') // enter your workspace ID here!
    .entity('city')
    .description('Cities with good weather.')
    .build();
IBMAssistantV1Models.CreateEntityOptions createCityBadOptions
  = new IBMAssistantV1Models.CreateEntityOptionsBuilder()
    .workspaceId('WORKSPACE_ID') // enter your workspace ID here!
    .entity('city_bad')
    .description('Cities with bad weather.')
    .build();

// calling services to create our two entities
IBMAssistantV1Models.Entity cityEntity = assistant.createEntity(createCityOptions);
IBMAssistantV1Models.Entity cityBadEntity = assistant.createEntity(createCityBadOptions);

// printing API call results
System.debug('city: ' + cityEntity);
System.debug('city_bad: ' + cityBadEntity);
```

Note that in the above code, a placeholder was added for the `workspaceId` parameter of the configuration options. This is a unique value corresponding to your Assistant workspace, which can be found here in the tooling:

![Workspace ID](readme_images/workspace_id.png "Workspace ID")

Be sure to keep it handy, as it will be used throughout the lab for other API calls.

It's important to note the pattern here, as it's consistent across the SDK. Before calling a method, we first create an appropriately named Options class using the builder pattern. With the builder, we specify any parameters we'd like to send as options. We then pass the options variable into our method and get some model as a result. With our resulting object, we can access its properties or print it out. By default, all response models in the SDK print out in JSON, coinciding with the service response and making debugging simple.

To execute the provided code, click on the "Execute" button at the bottom of the anonymous code window. Ensure the "Open Log" option is checked. If a log window doesn't open up automatically, double-click on the top row of the "Logs" window at the bottom of the page to do so. After running the code, you should be able to see the following result in the Developer Console after checking the "Debug Only" option for the logs:

![createEntity results](readme_images/create_entities_result.png "createEntity results")

You can also check back in your Assistant workspace to verify that your new entities have been created:

![New entities](readme_images/new_entities.png "New entities")

Congratulations! You've made your first successful Watson Assistant call using Apex. Let's continue exploring more of the Assistant API.

### 2. Adding Values to our Entities
Now that we have our entities, we're going to populate them with **values**: basically cities that have good and bad weather. Replace your previous code with the following, making sure to update the `WORKSPACE_ID`s with our workspace ID from your Assistant workspace. Once that's done, execute it.

```apex
IBMAssistantV1 assistant = new IBMAssistantV1('2018-02-16');

// create lists of good and bad weather cities
List<IBMAssistantV1Models.CreateValue> cityValues
  = new List<IBMAssistantV1Models.CreateValue> {
    new IBMAssistantV1Models.CreateValueBuilder()
      .value('San Francisco')
      .build(),
    new IBMAssistantV1Models.CreateValueBuilder()
      .value('Honolulu')
      .build(),
    new IBMAssistantV1Models.CreateValueBuilder()
      .value('Miami')
      .build()
  };
List<IBMAssistantV1Models.CreateValue> cityBadValues
  = new List<IBMAssistantV1Models.CreateValue> {
    new IBMAssistantV1Models.CreateValueBuilder()
      .value('Boston')
      .build(),
    new IBMAssistantV1Models.CreateValueBuilder()
      .value('Anchorage')
      .build(),
    new IBMAssistantV1Models.CreateValueBuilder()
      .value('Rochester')
      .build()
  };

// configure calls to update city and city_bad entities
IBMAssistantV1Models.UpdateEntityOptions updateCityOptions
  = new IBMAssistantV1Models.UpdateEntityOptionsBuilder()
    .workspaceId('WORKSPACE_ID') // enter your workspace ID here!
    .entity('city')
    .newValues(cityValues)
    .build();
IBMAssistantV1Models.UpdateEntityOptions updateCityBadOptions
  = new IBMAssistantV1Models.UpdateEntityOptionsBuilder()
    .workspaceId('WORKSPACE_ID') // enter your workspace ID here!
    .entity('city_bad')
    .newValues(cityBadValues)
    .build();

// make API calls
assistant.updateEntity(updateCityOptions);
assistant.updateEntity(updateCityBadOptions);
```

In the above code we don't bother grabbing the responses from the API calls since they won't tell us anything new. If you want to verify that the calls worked, check out the entities in the Watson Assistant tooling again and you should see the new values.

### 3. Creating New Dialog Nodes
Now that we have some cities for good and bad weather, we can modify the dialog to handle these values. We'll start by creating a new dialog node to replace the old weather one we deleted at the beginning of this lab.

```apex
IBMAssistantV1 assistant = new IBMAssistantV1('2018-02-16');

// set output for weather node
IBMWatsonMapModel output = new IBMWatsonMapModel();
output.put('text', 'Can you just remind me what city we\'re in again?');

// create weather node
IBMAssistantV1Models.CreateDialogNodeOptions createOptions = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
  .workspaceId('WORKSPACE_ID') // enter your workspace ID here!
  .dialogNode('weather')
  .conditions('#weather')
  .previousSibling('Start And Initialize Context')
  .output(output)
  .build();

// make API call and print resulting model
IBMAssistantV1Models.DialogNode dialogNode = assistant.createDialogNode(createOptions);
System.debug(dialogNode);
```

Run the above code and refresh the **Dialog** tab of the tooling and you should see a dialog node called `weather` added back to the tree. We also set a few other important attributes on this dialog node.

With the `conditions` parameter, we specify the conditions that trigger our dialog node. In this case, `#weather` corresponds to the weather **intent**. If you go to the **Intents** tab in the Assistant service and click on `#weather` you can see that we have some preset examples of what a weather intent might look like. Watson Assistant is trained on these examples to recognize user input that falls in this category, triggering the `#weather` intent. When that happens, our new dialog node will be active.

![Weather intent](readme_images/weather_intent.png "Weather intent")

Besides the very important `conditions` parameter, we've also set the `output` as text and the `previousSibling`, which just determines where in the tree our dialog node will be placed. In our case, we place it right after the first node.

Now that our service can recognize a weather inquiry, we can add the two child nodes to respond to the user's location. By default, the `weather` node we created will trigger and then wait for further user input. These next two nodes will handle that response. Run this first:

```apex
IBMAssistantV1 assistant = new IBMAssistantV1('2018-02-16');

// set output for city node
IBMWatsonMapModel output = new IBMWatsonMapModel();
output.put('text', 'The weather is looking great as always!');

// create city node
IBMAssistantV1Models.CreateDialogNodeOptions createOptions = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
  .workspaceId('WORKSPACE_ID') // enter your workspace ID here!
  .dialogNode('city')
  .conditions('@city')
  .parent('weather')
  .output(output)
  .build();

// make API call and print resulting model
IBMAssistantV1Models.DialogNode dialogNode = assistant.createDialogNode(createOptions);
System.debug(dialogNode);
```

And then this:

```apex
IBMAssistantV1 assistant = new IBMAssistantV1('2018-02-16');

// set output for city_bad node
IBMWatsonMapModel output = new IBMWatsonMapModel();
output.put('text', 'Sorry, it\'s not looking too nice out.');

// create city_bad node
IBMAssistantV1Models.CreateDialogNodeOptions createOptions = new IBMAssistantV1Models.CreateDialogNodeOptionsBuilder()
  .workspaceId('WORKSPACE_ID') // enter your workspace ID here!
  .dialogNode('city_bad')
  .conditions('@city_bad')
  .parent('weather')
  .previousSibling('city')
  .output(output)
  .build();

// make API call and print resulting model
IBMAssistantV1Models.DialogNode dialogNode = assistant.createDialogNode(createOptions);
System.debug(dialogNode);
```

The above code snippets should look pretty similar to when we created the `weather` node. The two major changes are with the `conditions` and `parent` parameters.

You'll notice that in this case, the `conditions` we chose are prepended with an `@`. This refers to an **entity**, and they should look very familiar! The `city` node triggers when it recognizes a `@city` entity and the `city_bad` node triggers when it recognizes a `@city_bad` entity, both of which we created and populated earlier.

The `parent` parameter specifies that both of these nodes can only be triggered after the `weather` dialog node. Remember, you can refresh your Assistant tooling screen to get a feel for the new structure of your dialog tree.

### 4. Talking to our Smart Car Assistant

Now, for the moment of truth. Let's go ahead and simulate a small dialog with our updated chatbot by sending three messages. We'll also carry around a `Context` object, which the Assistant service uses to follow chains of conversation. We'll then just loop through the messages, calling the service and updating our context each time:

```apex
IBMAssistantV1 assistant = new IBMAssistantV1('2018-02-16');

// set messages and initial context
List<String> messages = new List<String> {
  'Hello!',
  'How does the weather look today?',
  'I\'m in San Francisco right now.'
};
IBMAssistantV1Models.Context context = null;

// loop through messages, printing output after each one
for (String message : messages) {
  IBMAssistantV1Models.InputData input
    = new IBMAssistantV1Models.InputDataBuilder()
      .text(message)
      .build();
  IBMAssistantV1Models.MessageOptions options
    = new IBMAssistantV1Models.MessageOptionsBuilder()
      .workspaceId('WORKSPACE_ID') // Place your workspace ID here!
      .input(input)
      .context(context)
      .build();
  IBMAssistantV1Models.MessageResponse response = assistant.message(options);

  String reply = response.getOutput().getText().get(0);
  System.debug(String.format('MESSAGE: {0}', new String[]{ message }));
  System.debug(String.format('RESPONSE: {0}\n', new String[]{ reply }));

  context = response.getContext();
}
```

If you run this in your Developer Console, you should see something like the following output:

```
MESSAGE: Hello!
RESPONSE: Hi. It looks like a nice drive today. What would you like me to do?

MESSAGE: How does the weather look today?
RESPONSE: Can you just remind me what city we're in again?

MESSAGE: I'm in San Francisco right now.
RESPONSE: The weather is looking great as always!
```

## Conclusion
Congratulations! You've completed the lab and hopefully feel more familiar with the Watson Salesforce SDK and navigating IBM Cloud to create and manage your Watson services. We hope that the new SDK will make it easy to integrate Watson into your Salesforce apps by offering a simple, consistent interface.

If you're interested in exploring further or would like some resources to reference in the future, below are some helpful links:

- [**IBM Cloud console**](https://console.bluemix.net/) - Where to create and manage Watson services
- [**Watson documentation**](https://console.bluemix.net/developer/watson/documentation) - Where to find all documentation on the various Watson services
- [**Watson API explorer**](https://watson-api-explorer.mybluemix.net/) - Where to see detailed API information and make sample calls
- [**Watson APIs GitHub Organization**](https://github.com/watson-developer-cloud) - Public GitHub organization containing other SDKs, starter kits, etc.