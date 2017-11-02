# Discovery Lab

## Introduction
In this lab, you'll get the chance to try out the new Watson Salesforce SDK by interacting with the Watson Discovery API in Apex. After completing the lab, you should be familiar with:

 - Instantiating a Watson service instance in IBM Cloud
 - Deploying the Watson Salesforce SDK to your Salesforce org
 - Using the Watson Discovery API with Apex

 If throughout the lab you have any other questions, you can find more details about the Discovery service [here](https://www.ibm.com/watson/services/discovery/). Otherwise, let's get started!

## Setup
### IBM Cloud
To get started using any Watson service, you need to first create it and get the credentials in IBM Cloud, which up until recently was named Bluemix. If you already have an IBM Cloud account, log in [here](https://console.bluemix.net/registration/?target=/catalog/services/discovery&cm_mmc=OSocial_Wechat-_-Watson+Core_Watson+Core+-+Platform-_-WW_WW-_-salesforce&cm_mmca1=000000OF&cm_mmca2=10000409&) to be taken straight to the Discovery service creation page. If you do not yet have an account, create one and follow the above link again after receiving the confirmation email.

Once you're at the service creation page, you can click "Create" on the bottom right to instantiate your Discovery service. 

![Discovery service creation page](readme_images/create_service_page.png "Discovery service creation page")

Now that we have an instance, we're first going to grab some of the credentials that we'll need to use to use later when authenticating with the SDK. To find those credentials, click on the "Service credentials" menu item:

![Go to service credentials](readme_images/go_to_credentials.png "Go to service credentials")

From this page, click on the "New credential" button. Don't worry about filling in any extra information. You should now be able to view your new credential to get your username and password. Make note of them or keep this tab open for later.

Next, we're going to create a Discovery environment to hold our data collections. Go back to the previous page and click the "Launch tool" button in the center of the screen to get to the Discovery tooling. Here is where you can upload documents in different collections to query.

![Discovery launch tool](readme_images/launch_tool.png "Discovery launch tool")

To create your environment, click on the gear icon at the top-right of the page.

![Create environment](readme_images/create_environment.png "Create environment")

When prompted to create a collection, go ahead and exit out of the prompt. We'll do that through the SDK later on. First though, we'll need to get things set up in our Salesforce environment.

### Salesforce
[Log in](https://login.salesforce.com/) to your Salesforce developer environment, and then follow the instructions on the [Watson Salesforce SDK GitHub page]() - **need link** - README to deploy the SDK to your developer org. Automatic and manual deployment using Salesforce DX are both supported, as well as manual deployment using Ant.

Now, you should have all of the SDK classes loaded into your developer environment. The last piece of setup is adding your Discovery credentials to authenticate with the service. The preferred way to add these is using named credentials, and you can also find the instructions for this in the SDK README.

Now it's time to start using the SDK!

## Using the SDK
Head over to the Developer Console in your Salesforce, where we'll be putting our Apex code to call the Discovery service. For most of the Discovery methods, we need to supply an environment ID. This corresponds to the environment we created in the Discovery tooling in the setup portion of this lab. Lucky for us, the SDK provides a `listEnvironments` method to get that ID.

**Note:** If at any point in the coding section you would like to take a closer look at the many API endpoints and models in the Discovery service, you can go to the [Discovery API explorer](https://watson-api-explorer.mybluemix.net/apis/discovery-v1). This is a handy resource for future use, allowing you to see all of the operations, sample requests and responses, and to make sample API calls by inputting your credentials at the top of the page.

Before performing any actions, we need to create an instance of a Discovery object, whose class is named `IBMDiscoveryV1` in the Apex SDK. We can do this with just one line:

```apex
IBMDiscoveryV1 discovery = new IBMDiscoveryV1(IBMDiscoveryV1.VERSION_DATE_2017_09_01);
```

The argument passed into the constructor is the version date, and the possible values are exposed as static `String`s in the service classes. Using the latest version ensures the most up-to-date functionality, but the option is there to use older versions if any app-specific functionality would be broken otherwise.

Note as well that no code has to be written for authentication, as we set up the named credentials earlier in this lab. However, if we didn't set that up, we could use the `setUsernameAndPassword` method to get the same result.

Now, we can use our new `discovery` object to make the `listEnvironments` call. This can be done with the following code:

```apex
IBMDiscoveryV1Models.ListEnvironmentsOptions options 
  = new IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder().build();
IBMDiscoveryV1Models.ListEnvironmentsResponse response 
  = discovery.listEnvironments(options);
```

It's important to note the pattern here, as it's consistent across the SDK. Before calling a method, we first create an appropriately named `Options` class using the builder pattern. With the builder, we specify any parameters we'd like to send as options. We then pass the options variable into our method and get some model as a result. In this particular example, we didn't send any additional options, but the pattern will become more apparent as we go through the lab.

Now that we have our resulting object, we can access its properties or print it out. By default, all response models in the SDK print out in JSON, coinciding with the service response and making debugging simple. To demonstrate, we'll print out our `ListEnvironmentsResponse` model and see what came back from the service:

```apex
System.debug(response);
```

Be sure to check the "Debug Only" option to see only the desired output. After putting the above code together and executing, you should see something like the following, with the highlighted property the desired ID. Be sure to write this down for later use.

![listEnvironments response](readme_images/list_environments_response.png "listEnvironments response")

Congratulations! You've made your first successful Watson Discovery call using Apex in just 4 lines of code.



- Query discovery news to get idea of service
- Create new collection
- Upload some documents
- Query those documents


## Conclusion
Final words, maybe helpful links to check out for later.