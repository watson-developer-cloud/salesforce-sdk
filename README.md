# IBM Watson Salesforce SDK

[![Build Status](https://travis-ci.com/germanattanasio/salesforce-sdk.svg?token=KTpTGKpqxmhtwWo4UVVC&branch=master)](https://travis-ci.com/germanattanasio/salesforce-sdk)

The IBM Watson Salesforce SDK uses the [Watson Developer Cloud](http://www.ibm.com/watson/developercloud/) services to help you solve complex problems using Apex in your Salesforce environment. Currently, this SDK supports two Watson services: Conversation and Discovery. More are planned to be added in the future.

## Installation

If you do not have the Watson Salesforce SDK installed yet, you can do so using this unmanaged package: [link].

If you already have a previous version installed, you can update it using the following steps:

1. Clone this repository from GitHub using the following command:
    ```bash
    git clone git@github.com:germanattanasio/salesforce-sdk.git
    ```

2. Install the [Force.com Migration Tool](http://www.salesforce.com/us/developer/docs/daas/Content/forcemigrationtool_install.htm) plugin for Ant, if you don't already have it.

3. Edit `install/build.properties` to insert your Salesforce username and password.  Since you will be using the API to access Salesforce, remember to [append your Security Token](http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_concepts_security.htm#topic-title_login_token) to your password.

4. Open your command line to the `install` folder, then deploy using Ant:

    ```bash
    $ ant deployZip
    ```

## Getting Started

### Getting Service Credentials

Using the Watson services require service credentials in [Bluemix](https://console.bluemix.net), meaning you will need to create a Bluemix account if you do not have one already.

To get your service-specific credentials, follow these steps:

1. Log in to [Bluemix](https://console.bluemix.net)

2. Create an instance of the desired service:
    1. In the Bluemix **Catalog**, select the service you want to use.
    2. Click **Create**.

3. Copy your credentials:
    1. On the left side of the page, click **Service Credentials**, and then **View credentials** to view your service credentials.
    2. Copy `url`, `username` and `password`.

### Using the Services

Getting started using a service is very simple! Here is an example of using the Discovery service to get a list of your current environments:

```java
IBMWatsonDiscovery discovery = new IBMWatsonDiscovery('2017-09-01');
discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
discovery.setUsernameAndPassword(<username>, <password>);
IBMWatsonDiscoveryV1Models.ListEnvironmentResponse environmentList 
  = discovery.ListEnvironmentRequest(<environmentName>);
```

## Contributing

If you're interested in helping to make this project better, see [Contributing.md](.github/Contributing.md).

## License

This library is licensed under the MIT license. Full license text is
available in [LICENSE](LICENSE).
