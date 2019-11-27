# IBM Watson Salesforce SDK

[![Build Status](https://travis-ci.org/watson-developer-cloud/salesforce-sdk.svg?branch=master)](https://travis-ci.org/watson-developer-cloud/salesforce-sdk/)
[![Slack](http://wdc-slack-inviter.mybluemix.net/badge.svg)](https://wdc-slack-inviter.mybluemix.net)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

The IBM Watson Salesforce SDK uses the [Watson API](http://www.ibm.com/watson/developercloud/) services to help you solve complex problems using Apex in your Salesforce environment. If you'd like, you can follow along with our video playlist [here](https://www.youtube.com/playlist?list=PLZDyxLlNKRY8qrs90oRPvVHocJhYOOj3n) to start using the SDK. Otherwise, continue reading to learn how to get started.

**NOTE:** The new Discovery v2 service (`IBMDiscoveryV2`) is only accessible on Cloud Pak for Data. See the [ICP/Cloud Pak for Data](#icp/cloud-pak-for-data) section for more information on how to get set up.

## Before you begin

* You need an [IBM Cloud][ibm-cloud-onboarding] account.

### Getting credentials
To find out which authentication to use, view the service credentials. You find the service credentials for authentication the same way for all Watson services:

1. Go to the IBM Cloud [Dashboard](https://cloud.ibm.com) page.
1. Either click an existing Watson service instance in your [resource list](https://cloud.ibm.com/resources) or click [**Create resource > AI**](https://cloud.ibm.com/catalog?category=ai) and create a service instance.
1. Click on the **Manage** item in the left nav bar of your service instance.

On this page, you should be able to see your credentials for accessing your service instance.

You'll also need a Salesforce account to run your Apex code. To get one, you can visit [this link](https://developer.salesforce.com/signup).

## Installation

There are three supported installation methods: automatically using Salesforce DX, manually using Salesforce DX, and manually using the Ant build tool. By default, all classes in the SDK will be deployed to your Salesforce org, but using Ant allows you to specify which services you want to deploy to save space. Note though that this is **only** supported with the Ant build tool method.

### Salesforce DX automatic deployment

You can automatically deploy the SDK to a new scratch environment using the _Deploy to SFDX_ button.

_Note: To use the automatic deployment button, you must log in using a **Dev Hub** org. If you do not have one, there should be a link to get one after you click the button._

[![Deploy](https://deploy-to-sfdx.com/dist/assets/images/DeployToSFDX.svg)](https://deploy-to-sfdx.com/)

### Salesforce DX manual deployment

You can also manually deploy the SDK code using the Salesforce DX CLI, which you can install [here](https://developer.salesforce.com/tools/sfdxcli).

The first step to manual deployment is cloning the repository from GitHub using the following command:

```bash
git clone https://github.com/watson-developer-cloud/salesforce-sdk
```

Be sure to navigate to the cloned directory before continuing.

To deploy to a scratch org, do the following:

1. Create a new scratch environment (optional if you don't want to re-use an existing one):

    ```bash
    sfdx force:org:create -a watson-sdk -s -f config/project-scratch-def.json
    ```

1. Push the source to the scratch environment:

    ```bash
    sfdx force:source:push
    ```

If you want to use the Watson SDK within a non-scratch environment you can follow these steps:

1. Authenticate the Salesforce DX CLI to the target environment:

    ```bash
    sfdx force:auth:web:login --setdefaultusername
    ```
    In the browser window that opens, sign in to your org with your credentials. More information [here](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_auth_web_flow.htm)

1. Convert the source code:

    ```bash
    sfdx force:source:convert -d mdapioutput/
    ```

1. Deploy the source code:

    ```bash
    sfdx force:mdapi:deploy -d mdapioutput/ -w 100
    ```

## Installation using the Ant Build Tool

Finally, you can also install or update the SDK using the Ant Build Tool. This method also allows you to specify which services you'd like to deploy.

1. Clone this repository from GitHub using the following command:

    ```bash
    git clone https://github.com/watson-developer-cloud/salesforce-sdk
    ```

1. Edit `install/build.properties` to insert your Salesforce username and password.  Since you will be using the API to access Salesforce, remember to [append your Security Token](http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_concepts_security.htm#topic-title_login_token) to your password.

1. Open your command line to the `install` folder, then deploy using Ant:

    ```bash
    ant deployWatson
    ```

    By default, this will deploy all of the classes. To specify a service, use the `-Dservice` flag. Here is an example of just deploying the Watson Assistant service:

    ```bash
    ant deployWatson -Dservice=assistant
    ```

    Valid service names are all services listed [here](https://cloud.ibm.com/catalog/?category=watson) written as one word (e.g. Visual Recognition becomes visualrecognition). The parameter is case-insensitive. To deploy multiple services, just run the command again with the next desired service flag.

## Authentication
To access your Watson services through Apex, you'll need to authenticate with your service credentials. There are two ways to do this: [using a credential file](#using-a-credential-file) or [specifying credentials in the Apex code](#specifying-credentials-in-the-apex-code).

**Note:** Previously, it was possible to authenticate using a token in a header called `X-Watson-Authorization-Token`. This method is deprecated. The token continues to work with Cloud Foundry services, but is not supported for services that use Identity and Access Management (IAM) authentication. See [here](#using-iam) for details.

### Using a credential file

With a credential file, you just need to put the file in the right place and the SDK will do the work of parsing it and authenticating. You can get this file by clicking the **Download** button for the credentials in the **Manage** tab of your service instance.

Once you've downloaded your file, you'll need to do the following:

1. Log in to your Salesforce dashboard
1. Go to _Setup_ by clicking on the gear icon on the top right of the page
1. Enter _Static Resources_ in the quick find box and select the highlighted entry
1. Create a new static resource
1. Enter the name **ibm_credentials** (:point_left: this must be the name!)
1. Upload the file you downloaded from the service dashboard page
1. Set the cache control to **Public**

Once this is done, you're good to go! As an example, if you uploaded a credential file for your Discovery service, you just need to do the following in your code

```java
IBMWatsonAuthenticator authenticator = new IBMWatsonConfigBasedAuthenticatorFactory('discovery');
IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2019-04-30', authenticator);
```

and you'll be authenticated :white_check_mark:

If you're using more than one service at a time in your code and get two different credetnial files, just put the contents together in one file and upload it to your Static Resources with the same name as above. The SDK will handle assigning credentials to their appropriate services.

### Specifying credentials in the Apex code

If the methods above don't work for you, setting credentials in the code is always an option. The examples below just show the minimum required arguments for each `IBMWatsonAuthenticator` implementation, but there are other constructors you can play with for more options.

#### Username and password

```java
IBMWatsonAuthenticator authenticator = new IBMWatsonBasicAuthenticator('USERNAME', 'PASSWORD');
IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2019-04-30', authenticator);
discovery.setServiceURL('URL');
```

#### Using IAM

```java
IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator('API_KEY');
IBMDiscoveryV1 service = new IBMDiscoveryV1('2019-04-30', authenticator);
service.setServiceURL('URL');
```

#### ICP

```java
IBMWatsonAuthenticator authenticator =
  new IBMWatsonBasicAuthenticator('USERNAME', 'PASSWORD');
IBMDiscoveryV1 service = new IBMDiscoveryV1('2019-04-30', authenticator);
service.setServiceURL('SERVICE ICP URL');
```

**Note:** Make sure you've got your self-signed certificate all set up in your Salesforce organization for this to work properly.

#### Cloud Pak for Data

```java
IBMWatsonAuthenticator authenticator =
  new IBMWatsonCloudPakForDataAuthenticator('CP4D TOKEN EXCHANGE BASE URL', 'USERNAME', 'PASSWORD');
IBMDiscoveryV1 service = new IBMDiscoveryV1('2019-04-30', authenticator);
service.setServiceURL('SERVICE CP4D URL');
```

### Setting remote site settings

The final piece of setup to access Watson services from your Salesforce environment is setting your remote site settings. To do so:

1. Go to _Setup_ by clicking on the gear icon on the top right of the Salesforce dashboard
1. Enter _Remote Site Settings_ in the quick find box and select the highlighted entry
1. Click _New Remote Site_
1. Add whatever name you desire, with the following URL: `https://gateway.watsonplatform.net/`
1. Click _Save_

If you're authenticating with IAM, you'll also need to add your IAM URL in your remote site settings. The default URL is `https://iam.cloud.ibm.com/identity/token`.

## Examples

Getting started using a service is very simple! All services follow the same pattern of service instantiation, option building, and requesting. To get an idea, below is an example of using the Discovery service to get a list of your current environments:

```java
IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator('API_KEY');
IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2019-04-30', authenticator);

// configuring options for listing environments
IBMDiscoveryV1Models.ListEnvironmentsOptions options =
  new IBMDiscoveryV1Models.ListEnvironmentsOptionsBuilder()
    .build();

// making request
IBMDiscoveryV1Models.ListEnvironmentsResponse environmentList = discovery.listEnvironments(options);
System.debug(environmentList);
```

Similarly, here is an example of creating an intent in the Watson Assistant service:

```java
IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator('API_KEY');
IBMAssistantV1 assistant = new IBMAssistantV1('2019-02-28', authenticator);

// configuring options for creating intent
IBMAssistantV1Models.CreateIntentOptions options =
  new IBMAssistantV1Models.CreateIntentOptionsBuilder()
    .workspaceId('<workspace_id>')
    .intentName('MyIntent')
    .description('This is an example of creating an intent!')
    .build();

// making request
IBMAssistantV1Models.Intent intent = assistant.createIntent(options);
System.debug(intent);
```

The manner of instantiating and using services should be consistent no matter which you decide to use, which should make it easy to explore the many capabilities Watson services have to offer.

## Request and response headers

The SDK supports sending custom headers with any request as well as parsing headers that are returned by the service.

To send request headers, simply add them as a property when building up your `Options` model. Here's an example in the Discovery service:

```java
IBMDiscoveryV1Models.QueryOptions options =
  new IBMDiscoveryV1Models.QueryOptionsBuilder()
    .environmentId('<environment_id>')
    .collectionId('<collection_id>')
    .naturalLanguageQuery('Articles about the Boston Celtics')
    .addHeader('Custon-Header', 'custom_value') // custom header added here
    .build();
```

To get headers returned by the service, call the `getHeaders()` method on a response model. This is what it looks like to get the headers returned after making the above call:

```java
IBMDiscoveryV1Models.QueryResponse response = discovery.query(options);
Map<String, String> responseHeaders = response.getHeaders();
```

## Using the SDK with Lightning

The Watson Salesforce SDK models are Lightning-ready, meaning that you can access model properties through Javascript for your Lightning apps. Everything should work as expected, but it's important to note that there are two ways to go about dealing with dynamic models through Javascript. These models are ones which may have properties unknown until runtime and which extend `IBMWatsonDynamicModel`.

### Using the `additionalProperties` object

Dynamic models have an extra "AuraEnabled" property called `additionalProperties`, which is a map that holds all of the dynamic properties returned with the model. If you're dealing with a dynamic model in your Javascript code and want to access any dynamic properties, you can do the following:

```javascript
action.setCallback(this, function(response) {
  var resp = response.getReturnValue(); // resp is a dynamic model
  console.log(resp.additionalProperties["enriched_text"]["concepts"][0]["text"]);
});
$A.enqueueAction(action);
```

Any properties within the `additionalProperties` object can be accessed exactly like a generic Javascript object.

### Using the model string representation

If going through the `additionalProperties` object is undesired for any reason, you can still access the dynamic properties as top-level properties with a small workaround. All models in the SDK override the `toString()` method to output the models as pretty-printed JSON with the additional properties brought up to the top level. Therefore, if you tweak your server-side controller to return the string representation instead of the model object, as follows:

```apex
public class ServerSideController {
  @AuraEnabled
  public static String query(String environmentId, String collectionId) {
    IBMDiscoveryV1 discovery = new IBMDiscoveryV1('2019-04-30');
    IBMDiscoveryV1Models.QueryOptions options = new IBMDiscoveryV1Models.QueryOptionsBuilder(environmentId, collectionId)
      .naturalLanguageQuery('example query')
      .build();
    IBMDiscoveryV1Models.QueryResponse response = discovery.query(options);

    // IMPORTANT: return the string instead of the model
    return response.toString();
  }
}
```

you can use `JSON.parse()` to access the whole object as a generic JSON object. Here is an example of accessing the same property in Javascript using this aternate method:

```javascript
action.setCallback(this, function(response) {
  var resp = response.getReturnValue(); // resp is now the string representation of our dynamic model
  console.log(JSON.parse(resp)["enriched_text"]["concepts"][0]["text"]);
});
$A.enqueueAction(action);
```

Both methods shown above will print out the same information.

## WebSocket support
Both the Text to Speech and Speech to Text services have API endpoints which support the use of WebSockets. However, the use of WebSockets are not supported natively by Apex. If you would like to take advantage of this functionality, the recommendation would be to leverage the [Watson Speech Javascript SDK](https://github.com/watson-developer-cloud/speech-javascript-sdk).

The above library adds minimal overhead and will allow for the use of WebSockets. Also, being Javascript, this SDK can integrate smoothly with Lightning apps and be used alongside the Salesforce SDK.

## ICP/Cloud Pak for Data
If you're using this SDK to interact with a service on IBM Cloud Private (ICP) or Cloud Pak for Data (CP4D), you'll need to add your self-signed certificate to your Salesforce organization. You can do this in the Certificate and Key Management section of the security settings.

## Functional tests

The `force-app/main/test` folder contains the example calls for each service. These examples are used for functional testing of services. Developers can use them for reference and testing the installed SDK.

## Featured projects
We'd love to highlight cool open-source projects that use this SDK! If you'd like to get your project added to the list, feel free to make an issue linking us to it.

## Contributing

If you're interested in helping to make this project better, see [Contributing.md](.github/Contributing.md).

## License

This library is licensed under the MIT license. Full license text is
available in [LICENSE](LICENSE).

[ibm-cloud-onboarding]: http://cloud.ibm.com/registration?target=/developer/watson&cm_sp=WatsonPlatform-WatsonServices-_-OnPageNavLink-IBMWatson_SDKs-_-SalesForce