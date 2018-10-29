/**
 * The IBM Watson&trade; Discovery Service is a cognitive search and content analytics engine that you can add to
 * applications to identify patterns, trends and actionable insights to drive better decision-making. Securely unify
 * structured and unstructured data with pre-enriched content, and use a simplified query language to eliminate the need
 * for manual filtering of results.
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/discovery.html">Discovery</a>
 */
public class IBMDiscoveryV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/discovery/api';

  private String versionDate;

  /**
   * Instantiates a new `IBMDiscoveryV1`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMDiscoveryV1(String versionDate) {
    super('watson_discovery_v1');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMDiscoveryV1` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public IBMDiscoveryV1(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Instantiates a new `IBMDiscoveryV1` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMDiscoveryV1(String versionDate, IBMWatsonIAMOptions iamOptions) {
    this(versionDate);
    setIamCredentials(iamOptions);
  }

  /**
   * Create an environment.
   *
   * Creates a new environment for private data. An environment must be created before collections can be created.
   *
   * **Note**: You can create only one environment for private data per service instance. An attempt to create another
   * environment results in an error.
   *
   * @param createEnvironmentOptions the {@link IBMDiscoveryV1Models.CreateEnvironmentOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Environment} with the response
   */
  public IBMDiscoveryV1Models.Environment createEnvironment(IBMDiscoveryV1Models.CreateEnvironmentOptions createEnvironmentOptions) {
    IBMWatsonValidator.notNull(createEnvironmentOptions, 'createEnvironmentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/environments');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createEnvironmentOptions != null) ? createEnvironmentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('name', createEnvironmentOptions.name());
    if (createEnvironmentOptions.description() != null) {
      contentJson.put('description', createEnvironmentOptions.description());
    }
    if (createEnvironmentOptions.size() != null) {
      contentJson.put('size', createEnvironmentOptions.size());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Environment) createServiceCall(builder.build(), IBMDiscoveryV1Models.Environment.class);
  }

  /**
   * Delete environment.
   *
   * @param deleteEnvironmentOptions the {@link IBMDiscoveryV1Models.DeleteEnvironmentOptions} containing the options for the call
   * @return the service call
   */
  public void deleteEnvironment(IBMDiscoveryV1Models.DeleteEnvironmentOptions deleteEnvironmentOptions) {
    IBMWatsonValidator.notNull(deleteEnvironmentOptions, 'deleteEnvironmentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}', new String[]{ deleteEnvironmentOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteEnvironmentOptions != null) ? deleteEnvironmentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get environment info.
   *
   * @param getEnvironmentOptions the {@link IBMDiscoveryV1Models.GetEnvironmentOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Environment} with the response
   */
  public IBMDiscoveryV1Models.Environment getEnvironment(IBMDiscoveryV1Models.GetEnvironmentOptions getEnvironmentOptions) {
    IBMWatsonValidator.notNull(getEnvironmentOptions, 'getEnvironmentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}', new String[]{ getEnvironmentOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getEnvironmentOptions != null) ? getEnvironmentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.Environment) createServiceCall(builder.build(), IBMDiscoveryV1Models.Environment.class);
  }

  /**
   * List environments.
   *
   * List existing environments for the service instance.
   *
   * @param listEnvironmentsOptions the {@link IBMDiscoveryV1Models.ListEnvironmentsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.ListEnvironmentsResponse} with the response
   */
  public IBMDiscoveryV1Models.ListEnvironmentsResponse listEnvironments(IBMDiscoveryV1Models.ListEnvironmentsOptions listEnvironmentsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/environments');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listEnvironmentsOptions != null) ? listEnvironmentsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listEnvironmentsOptions != null && listEnvironmentsOptions.name() != null) {
      builder.query('name', listEnvironmentsOptions.name());
    }

    return (IBMDiscoveryV1Models.ListEnvironmentsResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.ListEnvironmentsResponse.class);
  }

  /**
   * List fields across collections.
   *
   * Gets a list of the unique fields (and their types) stored in the indexes of the specified collections.
   *
   * @param listFieldsOptions the {@link IBMDiscoveryV1Models.ListFieldsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.ListCollectionFieldsResponse} with the response
   */
  public IBMDiscoveryV1Models.ListCollectionFieldsResponse listFields(IBMDiscoveryV1Models.ListFieldsOptions listFieldsOptions) {
    IBMWatsonValidator.notNull(listFieldsOptions, 'listFieldsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/fields', new String[]{ listFieldsOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listFieldsOptions != null) ? listFieldsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listFieldsOptions.collectionIds() != null) {
      builder.query('collection_ids', String.join(listFieldsOptions.collectionIds(), ','));
    }

    return (IBMDiscoveryV1Models.ListCollectionFieldsResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.ListCollectionFieldsResponse.class);
  }

  /**
   * Update an environment.
   *
   * Updates an environment. The environment's **name** and  **description** parameters can be changed. You must specify
   * a **name** for the environment.
   *
   * @param updateEnvironmentOptions the {@link IBMDiscoveryV1Models.UpdateEnvironmentOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Environment} with the response
   */
  public IBMDiscoveryV1Models.Environment updateEnvironment(IBMDiscoveryV1Models.UpdateEnvironmentOptions updateEnvironmentOptions) {
    IBMWatsonValidator.notNull(updateEnvironmentOptions, 'updateEnvironmentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/environments/{0}', new String[]{ updateEnvironmentOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateEnvironmentOptions != null) ? updateEnvironmentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateEnvironmentOptions.name() != null) {
      contentJson.put('name', updateEnvironmentOptions.name());
    }
    if (updateEnvironmentOptions.description() != null) {
      contentJson.put('description', updateEnvironmentOptions.description());
    }
    if (updateEnvironmentOptions.size() != null) {
      contentJson.put('size', updateEnvironmentOptions.size());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Environment) createServiceCall(builder.build(), IBMDiscoveryV1Models.Environment.class);
  }

  /**
   * Add configuration.
   *
   * Creates a new configuration.
   *
   * If the input configuration contains the **configuration_id**, **created**, or **updated** properties, then they are
   * ignored and overridden by the system, and an error is not returned so that the overridden fields do not need to be
   * removed when copying a configuration.
   *
   * The configuration can contain unrecognized JSON fields. Any such fields are ignored and do not generate an error.
   * This makes it easier to use newer configuration files with older versions of the API and the service. It also makes
   * it possible for the tooling to add additional metadata and information to the configuration.
   *
   * @param createConfigurationOptions the {@link IBMDiscoveryV1Models.CreateConfigurationOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Configuration} with the response
   */
  public IBMDiscoveryV1Models.Configuration createConfiguration(IBMDiscoveryV1Models.CreateConfigurationOptions createConfigurationOptions) {
    IBMWatsonValidator.notNull(createConfigurationOptions, 'createConfigurationOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/configurations', new String[]{ createConfigurationOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createConfigurationOptions != null) ? createConfigurationOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (createConfigurationOptions.name() != null) {
      contentJson.put('name', createConfigurationOptions.name());
    }
    if (createConfigurationOptions.description() != null) {
      contentJson.put('description', createConfigurationOptions.description());
    }
    if (createConfigurationOptions.conversions() != null) {
      contentJson.put('conversions', createConfigurationOptions.conversions());
    }
    if (createConfigurationOptions.enrichments() != null) {
      contentJson.put('enrichments', createConfigurationOptions.enrichments());
    }
    if (createConfigurationOptions.normalizations() != null) {
      contentJson.put('normalizations', createConfigurationOptions.normalizations());
    }
    if (createConfigurationOptions.source() != null) {
      contentJson.put('source', createConfigurationOptions.source());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Configuration) createServiceCall(builder.build(), IBMDiscoveryV1Models.Configuration.class);
  }

  /**
   * Delete a configuration.
   *
   * The deletion is performed unconditionally. A configuration deletion request succeeds even if the configuration is
   * referenced by a collection or document ingestion. However, documents that have already been submitted for
   * processing continue to use the deleted configuration. Documents are always processed with a snapshot of the
   * configuration as it existed at the time the document was submitted.
   *
   * @param deleteConfigurationOptions the {@link IBMDiscoveryV1Models.DeleteConfigurationOptions} containing the options for the call
   * @return the service call
   */
  public void deleteConfiguration(IBMDiscoveryV1Models.DeleteConfigurationOptions deleteConfigurationOptions) {
    IBMWatsonValidator.notNull(deleteConfigurationOptions, 'deleteConfigurationOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/configurations/{1}', new String[]{ deleteConfigurationOptions.environmentId(), deleteConfigurationOptions.configurationId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteConfigurationOptions != null) ? deleteConfigurationOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get configuration details.
   *
   * @param getConfigurationOptions the {@link IBMDiscoveryV1Models.GetConfigurationOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Configuration} with the response
   */
  public IBMDiscoveryV1Models.Configuration getConfiguration(IBMDiscoveryV1Models.GetConfigurationOptions getConfigurationOptions) {
    IBMWatsonValidator.notNull(getConfigurationOptions, 'getConfigurationOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/configurations/{1}', new String[]{ getConfigurationOptions.environmentId(), getConfigurationOptions.configurationId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getConfigurationOptions != null) ? getConfigurationOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.Configuration) createServiceCall(builder.build(), IBMDiscoveryV1Models.Configuration.class);
  }

  /**
   * List configurations.
   *
   * Lists existing configurations for the service instance.
   *
   * @param listConfigurationsOptions the {@link IBMDiscoveryV1Models.ListConfigurationsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.ListConfigurationsResponse} with the response
   */
  public IBMDiscoveryV1Models.ListConfigurationsResponse listConfigurations(IBMDiscoveryV1Models.ListConfigurationsOptions listConfigurationsOptions) {
    IBMWatsonValidator.notNull(listConfigurationsOptions, 'listConfigurationsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/configurations', new String[]{ listConfigurationsOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listConfigurationsOptions != null) ? listConfigurationsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listConfigurationsOptions.name() != null) {
      builder.query('name', listConfigurationsOptions.name());
    }

    return (IBMDiscoveryV1Models.ListConfigurationsResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.ListConfigurationsResponse.class);
  }

  /**
   * Update a configuration.
   *
   * Replaces an existing configuration.
   *   * Completely replaces the original configuration.
   *   * The **configuration_id**, **updated**, and **created** fields are accepted in the request, but they are
   * ignored, and an error is not generated. It is also acceptable for users to submit an updated configuration with
   * none of the three properties.
   *   * Documents are processed with a snapshot of the configuration as it was at the time the document was submitted
   * to be ingested. This means that already submitted documents will not see any updates made to the configuration.
   *
   * @param updateConfigurationOptions the {@link IBMDiscoveryV1Models.UpdateConfigurationOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Configuration} with the response
   */
  public IBMDiscoveryV1Models.Configuration updateConfiguration(IBMDiscoveryV1Models.UpdateConfigurationOptions updateConfigurationOptions) {
    IBMWatsonValidator.notNull(updateConfigurationOptions, 'updateConfigurationOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/environments/{0}/configurations/{1}', new String[]{ updateConfigurationOptions.environmentId(), updateConfigurationOptions.configurationId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateConfigurationOptions != null) ? updateConfigurationOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateConfigurationOptions.name() != null) {
      contentJson.put('name', updateConfigurationOptions.name());
    }
    if (updateConfigurationOptions.description() != null) {
      contentJson.put('description', updateConfigurationOptions.description());
    }
    if (updateConfigurationOptions.conversions() != null) {
      contentJson.put('conversions', updateConfigurationOptions.conversions());
    }
    if (updateConfigurationOptions.enrichments() != null) {
      contentJson.put('enrichments', updateConfigurationOptions.enrichments());
    }
    if (updateConfigurationOptions.normalizations() != null) {
      contentJson.put('normalizations', updateConfigurationOptions.normalizations());
    }
    if (updateConfigurationOptions.source() != null) {
      contentJson.put('source', updateConfigurationOptions.source());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Configuration) createServiceCall(builder.build(), IBMDiscoveryV1Models.Configuration.class);
  }

  /**
   * Test configuration.
   *
   * Runs a sample document through the default or your configuration and returns diagnostic information designed to
   * help you understand how the document was processed. The document is not added to the index.
   *
   * @param testConfigurationInEnvironmentOptions the {@link IBMDiscoveryV1Models.TestConfigurationInEnvironmentOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TestDocument} with the response
   */
  public IBMDiscoveryV1Models.TestDocument testConfigurationInEnvironment(IBMDiscoveryV1Models.TestConfigurationInEnvironmentOptions testConfigurationInEnvironmentOptions) {
    IBMWatsonValidator.notNull(testConfigurationInEnvironmentOptions, 'testConfigurationInEnvironmentOptions cannot be null');
    IBMWatsonValidator.isTrue((testConfigurationInEnvironmentOptions.configuration() != null) || (testConfigurationInEnvironmentOptions.file() != null) || (testConfigurationInEnvironmentOptions.metadata() != null), 'At least one of configuration, file, or metadata must be supplied.');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/preview', new String[]{ testConfigurationInEnvironmentOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (testConfigurationInEnvironmentOptions != null) ? testConfigurationInEnvironmentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (testConfigurationInEnvironmentOptions.step() != null) {
      builder.query('step', testConfigurationInEnvironmentOptions.step());
    }
    if (testConfigurationInEnvironmentOptions.configurationId() != null) {
      builder.query('configuration_id', testConfigurationInEnvironmentOptions.configurationId());
    }
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (testConfigurationInEnvironmentOptions.configuration() != null) {
      multipartBuilder.addFormDataPart('configuration', testConfigurationInEnvironmentOptions.configuration());
    }
    if (testConfigurationInEnvironmentOptions.file() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(testConfigurationInEnvironmentOptions.file(), testConfigurationInEnvironmentOptions.fileContentType());
      multipartBuilder.addFormDataPart('file', testConfigurationInEnvironmentOptions.filename(), fileBody);
    }
    if (testConfigurationInEnvironmentOptions.metadata() != null) {
      multipartBuilder.addFormDataPart('metadata', testConfigurationInEnvironmentOptions.metadata());
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMDiscoveryV1Models.TestDocument) createServiceCall(builder.build(), IBMDiscoveryV1Models.TestDocument.class);
  }

  /**
   * Create a collection.
   *
   * @param createCollectionOptions the {@link IBMDiscoveryV1Models.CreateCollectionOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Collection} with the response
   */
  public IBMDiscoveryV1Models.Collection createCollection(IBMDiscoveryV1Models.CreateCollectionOptions createCollectionOptions) {
    IBMWatsonValidator.notNull(createCollectionOptions, 'createCollectionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections', new String[]{ createCollectionOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createCollectionOptions != null) ? createCollectionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('name', createCollectionOptions.name());
    if (createCollectionOptions.description() != null) {
      contentJson.put('description', createCollectionOptions.description());
    }
    if (createCollectionOptions.configurationId() != null) {
      contentJson.put('configuration_id', createCollectionOptions.configurationId());
    }
    if (createCollectionOptions.language() != null) {
      contentJson.put('language', createCollectionOptions.language());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Collection) createServiceCall(builder.build(), IBMDiscoveryV1Models.Collection.class);
  }

  /**
   * Delete a collection.
   *
   * @param deleteCollectionOptions the {@link IBMDiscoveryV1Models.DeleteCollectionOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCollection(IBMDiscoveryV1Models.DeleteCollectionOptions deleteCollectionOptions) {
    IBMWatsonValidator.notNull(deleteCollectionOptions, 'deleteCollectionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}', new String[]{ deleteCollectionOptions.environmentId(), deleteCollectionOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteCollectionOptions != null) ? deleteCollectionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get collection details.
   *
   * @param getCollectionOptions the {@link IBMDiscoveryV1Models.GetCollectionOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Collection} with the response
   */
  public IBMDiscoveryV1Models.Collection getCollection(IBMDiscoveryV1Models.GetCollectionOptions getCollectionOptions) {
    IBMWatsonValidator.notNull(getCollectionOptions, 'getCollectionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}', new String[]{ getCollectionOptions.environmentId(), getCollectionOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getCollectionOptions != null) ? getCollectionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.Collection) createServiceCall(builder.build(), IBMDiscoveryV1Models.Collection.class);
  }

  /**
   * List collection fields.
   *
   * Gets a list of the unique fields (and their types) stored in the index.
   *
   * @param listCollectionFieldsOptions the {@link IBMDiscoveryV1Models.ListCollectionFieldsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.ListCollectionFieldsResponse} with the response
   */
  public IBMDiscoveryV1Models.ListCollectionFieldsResponse listCollectionFields(IBMDiscoveryV1Models.ListCollectionFieldsOptions listCollectionFieldsOptions) {
    IBMWatsonValidator.notNull(listCollectionFieldsOptions, 'listCollectionFieldsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/fields', new String[]{ listCollectionFieldsOptions.environmentId(), listCollectionFieldsOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listCollectionFieldsOptions != null) ? listCollectionFieldsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.ListCollectionFieldsResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.ListCollectionFieldsResponse.class);
  }

  /**
   * List collections.
   *
   * Lists existing collections for the service instance.
   *
   * @param listCollectionsOptions the {@link IBMDiscoveryV1Models.ListCollectionsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.ListCollectionsResponse} with the response
   */
  public IBMDiscoveryV1Models.ListCollectionsResponse listCollections(IBMDiscoveryV1Models.ListCollectionsOptions listCollectionsOptions) {
    IBMWatsonValidator.notNull(listCollectionsOptions, 'listCollectionsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections', new String[]{ listCollectionsOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listCollectionsOptions != null) ? listCollectionsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listCollectionsOptions.name() != null) {
      builder.query('name', listCollectionsOptions.name());
    }

    return (IBMDiscoveryV1Models.ListCollectionsResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.ListCollectionsResponse.class);
  }

  /**
   * Update a collection.
   *
   * @param updateCollectionOptions the {@link IBMDiscoveryV1Models.UpdateCollectionOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Collection} with the response
   */
  public IBMDiscoveryV1Models.Collection updateCollection(IBMDiscoveryV1Models.UpdateCollectionOptions updateCollectionOptions) {
    IBMWatsonValidator.notNull(updateCollectionOptions, 'updateCollectionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}', new String[]{ updateCollectionOptions.environmentId(), updateCollectionOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateCollectionOptions != null) ? updateCollectionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateCollectionOptions.name() != null) {
      contentJson.put('name', updateCollectionOptions.name());
    }
    if (updateCollectionOptions.description() != null) {
      contentJson.put('description', updateCollectionOptions.description());
    }
    if (updateCollectionOptions.configurationId() != null) {
      contentJson.put('configuration_id', updateCollectionOptions.configurationId());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Collection) createServiceCall(builder.build(), IBMDiscoveryV1Models.Collection.class);
  }

  /**
   * Create or update expansion list.
   *
   * Create or replace the Expansion list for this collection. The maximum number of expanded terms per collection is
   * `500`.
   * The current expansion list is replaced with the uploaded content.
   *
   * @param createExpansionsOptions the {@link IBMDiscoveryV1Models.CreateExpansionsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Expansions} with the response
   */
  public IBMDiscoveryV1Models.Expansions createExpansions(IBMDiscoveryV1Models.CreateExpansionsOptions createExpansionsOptions) {
    IBMWatsonValidator.notNull(createExpansionsOptions, 'createExpansionsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/expansions', new String[]{ createExpansionsOptions.environmentId(), createExpansionsOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createExpansionsOptions != null) ? createExpansionsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (createExpansionsOptions.expansions() != null) {
      contentJson.put('expansions', createExpansionsOptions.expansions());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Expansions) createServiceCall(builder.build(), IBMDiscoveryV1Models.Expansions.class);
  }

  /**
   * Create tokenization dictionary.
   *
   * Upload a custom tokenization dictionary to use with the specified collection.
   *
   * @param createTokenizationDictionaryOptions the {@link IBMDiscoveryV1Models.CreateTokenizationDictionaryOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TokenDictStatusResponse} with the response
   */
  public IBMDiscoveryV1Models.TokenDictStatusResponse createTokenizationDictionary(IBMDiscoveryV1Models.CreateTokenizationDictionaryOptions createTokenizationDictionaryOptions) {
    IBMWatsonValidator.notNull(createTokenizationDictionaryOptions, 'createTokenizationDictionaryOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/word_lists/tokenization_dictionary', new String[]{ createTokenizationDictionaryOptions.environmentId(), createTokenizationDictionaryOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createTokenizationDictionaryOptions != null) ? createTokenizationDictionaryOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (createTokenizationDictionaryOptions.tokenizationRules() != null) {
      contentJson.put('tokenization_rules', createTokenizationDictionaryOptions.tokenizationRules());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.TokenDictStatusResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.TokenDictStatusResponse.class);
  }

  /**
   * Delete the expansion list.
   *
   * Remove the expansion information for this collection. The expansion list must be deleted to disable query expansion
   * for a collection.
   *
   * @param deleteExpansionsOptions the {@link IBMDiscoveryV1Models.DeleteExpansionsOptions} containing the options for the call
   * @return the service call
   */
  public void deleteExpansions(IBMDiscoveryV1Models.DeleteExpansionsOptions deleteExpansionsOptions) {
    IBMWatsonValidator.notNull(deleteExpansionsOptions, 'deleteExpansionsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/expansions', new String[]{ deleteExpansionsOptions.environmentId(), deleteExpansionsOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteExpansionsOptions != null) ? deleteExpansionsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get the expansion list.
   *
   * Returns the current expansion list for the specified collection. If an expansion list is not specified, an object
   * with empty expansion arrays is returned.
   *
   * @param listExpansionsOptions the {@link IBMDiscoveryV1Models.ListExpansionsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Expansions} with the response
   */
  public IBMDiscoveryV1Models.Expansions listExpansions(IBMDiscoveryV1Models.ListExpansionsOptions listExpansionsOptions) {
    IBMWatsonValidator.notNull(listExpansionsOptions, 'listExpansionsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/expansions', new String[]{ listExpansionsOptions.environmentId(), listExpansionsOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listExpansionsOptions != null) ? listExpansionsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.Expansions) createServiceCall(builder.build(), IBMDiscoveryV1Models.Expansions.class);
  }

  /**
   * Add a document.
   *
   * Add a document to a collection with optional metadata.
   *
   *   * The **version** query parameter is still required.
   *
   *   * Returns immediately after the system has accepted the document for processing.
   *
   *   * The user must provide document content, metadata, or both. If the request is missing both document content and
   * metadata, it is rejected.
   *
   *   * The user can set the **Content-Type** parameter on the **file** part to indicate the media type of the
   * document. If the **Content-Type** parameter is missing or is one of the generic media types (for example,
   * `application/octet-stream`), then the service attempts to automatically detect the document's media type.
   *
   *   * The following field names are reserved and will be filtered out if present after normalization: `id`, `score`,
   * `highlight`, and any field with the prefix of: `_`, `+`, or `-`
   *
   *   * Fields with empty name values after normalization are filtered out before indexing.
   *
   *   * Fields containing the following characters after normalization are filtered out before indexing: `#` and `,`.
   *
   * @param addDocumentOptions the {@link IBMDiscoveryV1Models.AddDocumentOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.DocumentAccepted} with the response
   */
  public IBMDiscoveryV1Models.DocumentAccepted addDocument(IBMDiscoveryV1Models.AddDocumentOptions addDocumentOptions) {
    IBMWatsonValidator.notNull(addDocumentOptions, 'addDocumentOptions cannot be null');
    IBMWatsonValidator.isTrue((addDocumentOptions.file() != null) || (addDocumentOptions.metadata() != null), 'At least one of file or metadata must be supplied.');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/documents', new String[]{ addDocumentOptions.environmentId(), addDocumentOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (addDocumentOptions != null) ? addDocumentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (addDocumentOptions.file() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(addDocumentOptions.file(), addDocumentOptions.fileContentType());
      multipartBuilder.addFormDataPart('file', addDocumentOptions.filename(), fileBody);
    }
    if (addDocumentOptions.metadata() != null) {
      multipartBuilder.addFormDataPart('metadata', addDocumentOptions.metadata());
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMDiscoveryV1Models.DocumentAccepted) createServiceCall(builder.build(), IBMDiscoveryV1Models.DocumentAccepted.class);
  }

  /**
   * Delete a document.
   *
   * If the given document ID is invalid, or if the document is not found, then the a success response is returned (HTTP
   * status code `200`) with the status set to 'deleted'.
   *
   * @param deleteDocumentOptions the {@link IBMDiscoveryV1Models.DeleteDocumentOptions} containing the options for the call
   * @return the service call
   */
  public void deleteDocument(IBMDiscoveryV1Models.DeleteDocumentOptions deleteDocumentOptions) {
    IBMWatsonValidator.notNull(deleteDocumentOptions, 'deleteDocumentOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/documents/{2}', new String[]{ deleteDocumentOptions.environmentId(), deleteDocumentOptions.collectionId(), deleteDocumentOptions.documentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteDocumentOptions != null) ? deleteDocumentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get document details.
   *
   * Fetch status details about a submitted document. **Note:** this operation does not return the document itself.
   * Instead, it returns only the document's processing status and any notices (warnings or errors) that were generated
   * when the document was ingested. Use the query API to retrieve the actual document content.
   *
   * @param getDocumentStatusOptions the {@link IBMDiscoveryV1Models.GetDocumentStatusOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.DocumentStatus} with the response
   */
  public IBMDiscoveryV1Models.DocumentStatus getDocumentStatus(IBMDiscoveryV1Models.GetDocumentStatusOptions getDocumentStatusOptions) {
    IBMWatsonValidator.notNull(getDocumentStatusOptions, 'getDocumentStatusOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/documents/{2}', new String[]{ getDocumentStatusOptions.environmentId(), getDocumentStatusOptions.collectionId(), getDocumentStatusOptions.documentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getDocumentStatusOptions != null) ? getDocumentStatusOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.DocumentStatus) createServiceCall(builder.build(), IBMDiscoveryV1Models.DocumentStatus.class);
  }

  /**
   * Update a document.
   *
   * Replace an existing document. Starts ingesting a document with optional metadata.
   *
   * @param updateDocumentOptions the {@link IBMDiscoveryV1Models.UpdateDocumentOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.DocumentAccepted} with the response
   */
  public IBMDiscoveryV1Models.DocumentAccepted updateDocument(IBMDiscoveryV1Models.UpdateDocumentOptions updateDocumentOptions) {
    IBMWatsonValidator.notNull(updateDocumentOptions, 'updateDocumentOptions cannot be null');
    IBMWatsonValidator.isTrue((updateDocumentOptions.file() != null) || (updateDocumentOptions.metadata() != null), 'At least one of file or metadata must be supplied.');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/documents/{2}', new String[]{ updateDocumentOptions.environmentId(), updateDocumentOptions.collectionId(), updateDocumentOptions.documentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateDocumentOptions != null) ? updateDocumentOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (updateDocumentOptions.file() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(updateDocumentOptions.file(), updateDocumentOptions.fileContentType());
      multipartBuilder.addFormDataPart('file', updateDocumentOptions.filename(), fileBody);
    }
    if (updateDocumentOptions.metadata() != null) {
      multipartBuilder.addFormDataPart('metadata', updateDocumentOptions.metadata());
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMDiscoveryV1Models.DocumentAccepted) createServiceCall(builder.build(), IBMDiscoveryV1Models.DocumentAccepted.class);
  }

  /**
   * Long environment queries.
   *
   * Complex queries might be too long for a standard method query. By using this method, you can construct longer
   * queries. However, these queries may take longer to complete than the standard method. For details, see the
   * [Discovery service documentation](https://console.bluemix.net/docs/services/discovery/using.html).
   *
   * @param federatedQueryOptions the {@link IBMDiscoveryV1Models.FederatedQueryOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.QueryResponse} with the response
   */
  public IBMDiscoveryV1Models.QueryResponse federatedQuery(IBMDiscoveryV1Models.FederatedQueryOptions federatedQueryOptions) {
    IBMWatsonValidator.notNull(federatedQueryOptions, 'federatedQueryOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/query', new String[]{ federatedQueryOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    if (federatedQueryOptions.loggingOptOut() != null) {
      builder.addHeader('X-Watson-Logging-Opt-Out', federatedQueryOptions.loggingOptOut());
    }
    Map<String, String> requestHeaders = (federatedQueryOptions != null) ? federatedQueryOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (federatedQueryOptions.filter() != null) {
      contentJson.put('filter', federatedQueryOptions.filter());
    }
    if (federatedQueryOptions.query() != null) {
      contentJson.put('query', federatedQueryOptions.query());
    }
    if (federatedQueryOptions.naturalLanguageQuery() != null) {
      contentJson.put('natural_language_query', federatedQueryOptions.naturalLanguageQuery());
    }
    if (federatedQueryOptions.passages() != null) {
      contentJson.put('passages', federatedQueryOptions.passages());
    }
    if (federatedQueryOptions.aggregation() != null) {
      contentJson.put('aggregation', federatedQueryOptions.aggregation());
    }
    if (federatedQueryOptions.count() != null) {
      contentJson.put('count', federatedQueryOptions.count());
    }
    if (federatedQueryOptions.returnFields() != null) {
      contentJson.put('return', federatedQueryOptions.returnFields());
    }
    if (federatedQueryOptions.offset() != null) {
      contentJson.put('offset', federatedQueryOptions.offset());
    }
    if (federatedQueryOptions.xsort() != null) {
      contentJson.put('sort', federatedQueryOptions.xsort());
    }
    if (federatedQueryOptions.highlight() != null) {
      contentJson.put('highlight', federatedQueryOptions.highlight());
    }
    if (federatedQueryOptions.passagesFields() != null) {
      contentJson.put('passages.fields', federatedQueryOptions.passagesFields());
    }
    if (federatedQueryOptions.passagesCount() != null) {
      contentJson.put('passages.count', federatedQueryOptions.passagesCount());
    }
    if (federatedQueryOptions.passagesCharacters() != null) {
      contentJson.put('passages.characters', federatedQueryOptions.passagesCharacters());
    }
    if (federatedQueryOptions.deduplicate() != null) {
      contentJson.put('deduplicate', federatedQueryOptions.deduplicate());
    }
    if (federatedQueryOptions.deduplicateField() != null) {
      contentJson.put('deduplicate.field', federatedQueryOptions.deduplicateField());
    }
    if (federatedQueryOptions.collectionIds() != null) {
      contentJson.put('collection_ids', federatedQueryOptions.collectionIds());
    }
    if (federatedQueryOptions.similar() != null) {
      contentJson.put('similar', federatedQueryOptions.similar());
    }
    if (federatedQueryOptions.similarDocumentIds() != null) {
      contentJson.put('similar.document_ids', federatedQueryOptions.similarDocumentIds());
    }
    if (federatedQueryOptions.similarFields() != null) {
      contentJson.put('similar.fields', federatedQueryOptions.similarFields());
    }
    if (federatedQueryOptions.bias() != null) {
      contentJson.put('bias', federatedQueryOptions.bias());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.QueryResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.QueryResponse.class);
  }

  /**
   * Query multiple collection system notices.
   *
   * Queries for notices (errors or warnings) that might have been generated by the system. Notices are generated when
   * ingesting documents and performing relevance training. See the [Discovery service
   * documentation](https://console.bluemix.net/docs/services/discovery/using.html) for more details on the query
   * language.
   *
   * @param federatedQueryNoticesOptions the {@link IBMDiscoveryV1Models.FederatedQueryNoticesOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.QueryNoticesResponse} with the response
   */
  public IBMDiscoveryV1Models.QueryNoticesResponse federatedQueryNotices(IBMDiscoveryV1Models.FederatedQueryNoticesOptions federatedQueryNoticesOptions) {
    IBMWatsonValidator.notNull(federatedQueryNoticesOptions, 'federatedQueryNoticesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/notices', new String[]{ federatedQueryNoticesOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (federatedQueryNoticesOptions != null) ? federatedQueryNoticesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (federatedQueryNoticesOptions.collectionIds() != null) {
      builder.query('collection_ids', String.join(federatedQueryNoticesOptions.collectionIds(), ','));
    }
    if (federatedQueryNoticesOptions.filter() != null) {
      builder.query('filter', federatedQueryNoticesOptions.filter());
    }
    if (federatedQueryNoticesOptions.query() != null) {
      builder.query('query', federatedQueryNoticesOptions.query());
    }
    if (federatedQueryNoticesOptions.naturalLanguageQuery() != null) {
      builder.query('natural_language_query', federatedQueryNoticesOptions.naturalLanguageQuery());
    }
    if (federatedQueryNoticesOptions.aggregation() != null) {
      builder.query('aggregation', federatedQueryNoticesOptions.aggregation());
    }
    if (federatedQueryNoticesOptions.count() != null) {
      builder.query('count', String.valueOf(federatedQueryNoticesOptions.count()));
    }
    if (federatedQueryNoticesOptions.returnFields() != null) {
      builder.query('return', String.join(federatedQueryNoticesOptions.returnFields(), ','));
    }
    if (federatedQueryNoticesOptions.offset() != null) {
      builder.query('offset', String.valueOf(federatedQueryNoticesOptions.offset()));
    }
    if (federatedQueryNoticesOptions.xsort() != null) {
      builder.query('sort', String.join(federatedQueryNoticesOptions.xsort(), ','));
    }
    if (federatedQueryNoticesOptions.highlight() != null) {
      builder.query('highlight', String.valueOf(federatedQueryNoticesOptions.highlight()));
    }
    if (federatedQueryNoticesOptions.deduplicateField() != null) {
      builder.query('deduplicate.field', federatedQueryNoticesOptions.deduplicateField());
    }
    if (federatedQueryNoticesOptions.similar() != null) {
      builder.query('similar', String.valueOf(federatedQueryNoticesOptions.similar()));
    }
    if (federatedQueryNoticesOptions.similarDocumentIds() != null) {
      builder.query('similar.document_ids', String.join(federatedQueryNoticesOptions.similarDocumentIds(), ','));
    }
    if (federatedQueryNoticesOptions.similarFields() != null) {
      builder.query('similar.fields', String.join(federatedQueryNoticesOptions.similarFields(), ','));
    }

    return (IBMDiscoveryV1Models.QueryNoticesResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.QueryNoticesResponse.class);
  }

  /**
   * Long collection queries.
   *
   * Complex queries might be too long for a standard method query. By using this method, you can construct longer
   * queries. However, these queries may take longer to complete than the standard method. For details, see the
   * [Discovery service documentation](https://console.bluemix.net/docs/services/discovery/using.html).
   *
   * @param queryOptions the {@link IBMDiscoveryV1Models.QueryOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.QueryResponse} with the response
   */
  public IBMDiscoveryV1Models.QueryResponse query(IBMDiscoveryV1Models.QueryOptions queryOptions) {
    IBMWatsonValidator.notNull(queryOptions, 'queryOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/query', new String[]{ queryOptions.environmentId(), queryOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    if (queryOptions.loggingOptOut() != null) {
      builder.addHeader('X-Watson-Logging-Opt-Out', queryOptions.loggingOptOut());
    }
    Map<String, String> requestHeaders = (queryOptions != null) ? queryOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (queryOptions.filter() != null) {
      contentJson.put('filter', queryOptions.filter());
    }
    if (queryOptions.query() != null) {
      contentJson.put('query', queryOptions.query());
    }
    if (queryOptions.naturalLanguageQuery() != null) {
      contentJson.put('natural_language_query', queryOptions.naturalLanguageQuery());
    }
    if (queryOptions.passages() != null) {
      contentJson.put('passages', queryOptions.passages());
    }
    if (queryOptions.aggregation() != null) {
      contentJson.put('aggregation', queryOptions.aggregation());
    }
    if (queryOptions.count() != null) {
      contentJson.put('count', queryOptions.count());
    }
    if (queryOptions.returnFields() != null) {
      contentJson.put('return', queryOptions.returnFields());
    }
    if (queryOptions.offset() != null) {
      contentJson.put('offset', queryOptions.offset());
    }
    if (queryOptions.xsort() != null) {
      contentJson.put('sort', queryOptions.xsort());
    }
    if (queryOptions.highlight() != null) {
      contentJson.put('highlight', queryOptions.highlight());
    }
    if (queryOptions.passagesFields() != null) {
      contentJson.put('passages.fields', queryOptions.passagesFields());
    }
    if (queryOptions.passagesCount() != null) {
      contentJson.put('passages.count', queryOptions.passagesCount());
    }
    if (queryOptions.passagesCharacters() != null) {
      contentJson.put('passages.characters', queryOptions.passagesCharacters());
    }
    if (queryOptions.deduplicate() != null) {
      contentJson.put('deduplicate', queryOptions.deduplicate());
    }
    if (queryOptions.deduplicateField() != null) {
      contentJson.put('deduplicate.field', queryOptions.deduplicateField());
    }
    if (queryOptions.collectionIds() != null) {
      contentJson.put('collection_ids', queryOptions.collectionIds());
    }
    if (queryOptions.similar() != null) {
      contentJson.put('similar', queryOptions.similar());
    }
    if (queryOptions.similarDocumentIds() != null) {
      contentJson.put('similar.document_ids', queryOptions.similarDocumentIds());
    }
    if (queryOptions.similarFields() != null) {
      contentJson.put('similar.fields', queryOptions.similarFields());
    }
    if (queryOptions.bias() != null) {
      contentJson.put('bias', queryOptions.bias());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.QueryResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.QueryResponse.class);
  }

  /**
   * Knowledge Graph entity query.
   *
   * See the [Knowledge Graph documentation](https://console.bluemix.net/docs/services/discovery/building-kg.html) for
   * more details.
   *
   * @param queryEntitiesOptions the {@link IBMDiscoveryV1Models.QueryEntitiesOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.QueryEntitiesResponse} with the response
   */
  public IBMDiscoveryV1Models.QueryEntitiesResponse queryEntities(IBMDiscoveryV1Models.QueryEntitiesOptions queryEntitiesOptions) {
    IBMWatsonValidator.notNull(queryEntitiesOptions, 'queryEntitiesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/query_entities', new String[]{ queryEntitiesOptions.environmentId(), queryEntitiesOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (queryEntitiesOptions != null) ? queryEntitiesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (queryEntitiesOptions.feature() != null) {
      contentJson.put('feature', queryEntitiesOptions.feature());
    }
    if (queryEntitiesOptions.entity() != null) {
      contentJson.put('entity', queryEntitiesOptions.entity());
    }
    if (queryEntitiesOptions.context() != null) {
      contentJson.put('context', queryEntitiesOptions.context());
    }
    if (queryEntitiesOptions.count() != null) {
      contentJson.put('count', queryEntitiesOptions.count());
    }
    if (queryEntitiesOptions.evidenceCount() != null) {
      contentJson.put('evidence_count', queryEntitiesOptions.evidenceCount());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.QueryEntitiesResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.QueryEntitiesResponse.class);
  }

  /**
   * Query system notices.
   *
   * Queries for notices (errors or warnings) that might have been generated by the system. Notices are generated when
   * ingesting documents and performing relevance training. See the [Discovery service
   * documentation](https://console.bluemix.net/docs/services/discovery/using.html) for more details on the query
   * language.
   *
   * @param queryNoticesOptions the {@link IBMDiscoveryV1Models.QueryNoticesOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.QueryNoticesResponse} with the response
   */
  public IBMDiscoveryV1Models.QueryNoticesResponse queryNotices(IBMDiscoveryV1Models.QueryNoticesOptions queryNoticesOptions) {
    IBMWatsonValidator.notNull(queryNoticesOptions, 'queryNoticesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/notices', new String[]{ queryNoticesOptions.environmentId(), queryNoticesOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (queryNoticesOptions != null) ? queryNoticesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (queryNoticesOptions.filter() != null) {
      builder.query('filter', queryNoticesOptions.filter());
    }
    if (queryNoticesOptions.query() != null) {
      builder.query('query', queryNoticesOptions.query());
    }
    if (queryNoticesOptions.naturalLanguageQuery() != null) {
      builder.query('natural_language_query', queryNoticesOptions.naturalLanguageQuery());
    }
    if (queryNoticesOptions.passages() != null) {
      builder.query('passages', String.valueOf(queryNoticesOptions.passages()));
    }
    if (queryNoticesOptions.aggregation() != null) {
      builder.query('aggregation', queryNoticesOptions.aggregation());
    }
    if (queryNoticesOptions.count() != null) {
      builder.query('count', String.valueOf(queryNoticesOptions.count()));
    }
    if (queryNoticesOptions.returnFields() != null) {
      builder.query('return', String.join(queryNoticesOptions.returnFields(), ','));
    }
    if (queryNoticesOptions.offset() != null) {
      builder.query('offset', String.valueOf(queryNoticesOptions.offset()));
    }
    if (queryNoticesOptions.xsort() != null) {
      builder.query('sort', String.join(queryNoticesOptions.xsort(), ','));
    }
    if (queryNoticesOptions.highlight() != null) {
      builder.query('highlight', String.valueOf(queryNoticesOptions.highlight()));
    }
    if (queryNoticesOptions.passagesFields() != null) {
      builder.query('passages.fields', String.join(queryNoticesOptions.passagesFields(), ','));
    }
    if (queryNoticesOptions.passagesCount() != null) {
      builder.query('passages.count', String.valueOf(queryNoticesOptions.passagesCount()));
    }
    if (queryNoticesOptions.passagesCharacters() != null) {
      builder.query('passages.characters', String.valueOf(queryNoticesOptions.passagesCharacters()));
    }
    if (queryNoticesOptions.deduplicateField() != null) {
      builder.query('deduplicate.field', queryNoticesOptions.deduplicateField());
    }
    if (queryNoticesOptions.similar() != null) {
      builder.query('similar', String.valueOf(queryNoticesOptions.similar()));
    }
    if (queryNoticesOptions.similarDocumentIds() != null) {
      builder.query('similar.document_ids', String.join(queryNoticesOptions.similarDocumentIds(), ','));
    }
    if (queryNoticesOptions.similarFields() != null) {
      builder.query('similar.fields', String.join(queryNoticesOptions.similarFields(), ','));
    }

    return (IBMDiscoveryV1Models.QueryNoticesResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.QueryNoticesResponse.class);
  }

  /**
   * Knowledge Graph relationship query.
   *
   * See the [Knowledge Graph documentation](https://console.bluemix.net/docs/services/discovery/building-kg.html) for
   * more details.
   *
   * @param queryRelationsOptions the {@link IBMDiscoveryV1Models.QueryRelationsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.QueryRelationsResponse} with the response
   */
  public IBMDiscoveryV1Models.QueryRelationsResponse queryRelations(IBMDiscoveryV1Models.QueryRelationsOptions queryRelationsOptions) {
    IBMWatsonValidator.notNull(queryRelationsOptions, 'queryRelationsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/query_relations', new String[]{ queryRelationsOptions.environmentId(), queryRelationsOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (queryRelationsOptions != null) ? queryRelationsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (queryRelationsOptions.entities() != null) {
      contentJson.put('entities', queryRelationsOptions.entities());
    }
    if (queryRelationsOptions.context() != null) {
      contentJson.put('context', queryRelationsOptions.context());
    }
    if (queryRelationsOptions.xsort() != null) {
      contentJson.put('sort', queryRelationsOptions.xsort());
    }
    if (queryRelationsOptions.filter() != null) {
      contentJson.put('filter', queryRelationsOptions.filter());
    }
    if (queryRelationsOptions.count() != null) {
      contentJson.put('count', queryRelationsOptions.count());
    }
    if (queryRelationsOptions.evidenceCount() != null) {
      contentJson.put('evidence_count', queryRelationsOptions.evidenceCount());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.QueryRelationsResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.QueryRelationsResponse.class);
  }

  /**
   * Add query to training data.
   *
   * Adds a query to the training data for this collection. The query can contain a filter and natural language query.
   *
   * @param addTrainingDataOptions the {@link IBMDiscoveryV1Models.AddTrainingDataOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TrainingQuery} with the response
   */
  public IBMDiscoveryV1Models.TrainingQuery addTrainingData(IBMDiscoveryV1Models.AddTrainingDataOptions addTrainingDataOptions) {
    IBMWatsonValidator.notNull(addTrainingDataOptions, 'addTrainingDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data', new String[]{ addTrainingDataOptions.environmentId(), addTrainingDataOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (addTrainingDataOptions != null) ? addTrainingDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (addTrainingDataOptions.naturalLanguageQuery() != null) {
      contentJson.put('natural_language_query', addTrainingDataOptions.naturalLanguageQuery());
    }
    if (addTrainingDataOptions.filter() != null) {
      contentJson.put('filter', addTrainingDataOptions.filter());
    }
    if (addTrainingDataOptions.examples() != null) {
      contentJson.put('examples', addTrainingDataOptions.examples());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.TrainingQuery) createServiceCall(builder.build(), IBMDiscoveryV1Models.TrainingQuery.class);
  }

  /**
   * Add example to training data query.
   *
   * Adds a example to this training data query.
   *
   * @param createTrainingExampleOptions the {@link IBMDiscoveryV1Models.CreateTrainingExampleOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TrainingExample} with the response
   */
  public IBMDiscoveryV1Models.TrainingExample createTrainingExample(IBMDiscoveryV1Models.CreateTrainingExampleOptions createTrainingExampleOptions) {
    IBMWatsonValidator.notNull(createTrainingExampleOptions, 'createTrainingExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples', new String[]{ createTrainingExampleOptions.environmentId(), createTrainingExampleOptions.collectionId(), createTrainingExampleOptions.queryId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createTrainingExampleOptions != null) ? createTrainingExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (createTrainingExampleOptions.documentId() != null) {
      contentJson.put('document_id', createTrainingExampleOptions.documentId());
    }
    if (createTrainingExampleOptions.crossReference() != null) {
      contentJson.put('cross_reference', createTrainingExampleOptions.crossReference());
    }
    if (createTrainingExampleOptions.relevance() != null) {
      contentJson.put('relevance', createTrainingExampleOptions.relevance());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.TrainingExample) createServiceCall(builder.build(), IBMDiscoveryV1Models.TrainingExample.class);
  }

  /**
   * Delete all training data.
   *
   * Deletes all training data from a collection.
   *
   * @param deleteAllTrainingDataOptions the {@link IBMDiscoveryV1Models.DeleteAllTrainingDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteAllTrainingData(IBMDiscoveryV1Models.DeleteAllTrainingDataOptions deleteAllTrainingDataOptions) {
    IBMWatsonValidator.notNull(deleteAllTrainingDataOptions, 'deleteAllTrainingDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data', new String[]{ deleteAllTrainingDataOptions.environmentId(), deleteAllTrainingDataOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteAllTrainingDataOptions != null) ? deleteAllTrainingDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Delete a training data query.
   *
   * Removes the training data query and all associated examples from the training data set.
   *
   * @param deleteTrainingDataOptions the {@link IBMDiscoveryV1Models.DeleteTrainingDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteTrainingData(IBMDiscoveryV1Models.DeleteTrainingDataOptions deleteTrainingDataOptions) {
    IBMWatsonValidator.notNull(deleteTrainingDataOptions, 'deleteTrainingDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}', new String[]{ deleteTrainingDataOptions.environmentId(), deleteTrainingDataOptions.collectionId(), deleteTrainingDataOptions.queryId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteTrainingDataOptions != null) ? deleteTrainingDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Delete example for training data query.
   *
   * Deletes the example document with the given ID from the training data query.
   *
   * @param deleteTrainingExampleOptions the {@link IBMDiscoveryV1Models.DeleteTrainingExampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteTrainingExample(IBMDiscoveryV1Models.DeleteTrainingExampleOptions deleteTrainingExampleOptions) {
    IBMWatsonValidator.notNull(deleteTrainingExampleOptions, 'deleteTrainingExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples/{3}', new String[]{ deleteTrainingExampleOptions.environmentId(), deleteTrainingExampleOptions.collectionId(), deleteTrainingExampleOptions.queryId(), deleteTrainingExampleOptions.exampleId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteTrainingExampleOptions != null) ? deleteTrainingExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get details about a query.
   *
   * Gets details for a specific training data query, including the query string and all examples.
   *
   * @param getTrainingDataOptions the {@link IBMDiscoveryV1Models.GetTrainingDataOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TrainingQuery} with the response
   */
  public IBMDiscoveryV1Models.TrainingQuery getTrainingData(IBMDiscoveryV1Models.GetTrainingDataOptions getTrainingDataOptions) {
    IBMWatsonValidator.notNull(getTrainingDataOptions, 'getTrainingDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}', new String[]{ getTrainingDataOptions.environmentId(), getTrainingDataOptions.collectionId(), getTrainingDataOptions.queryId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getTrainingDataOptions != null) ? getTrainingDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.TrainingQuery) createServiceCall(builder.build(), IBMDiscoveryV1Models.TrainingQuery.class);
  }

  /**
   * Get details for training data example.
   *
   * Gets the details for this training example.
   *
   * @param getTrainingExampleOptions the {@link IBMDiscoveryV1Models.GetTrainingExampleOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TrainingExample} with the response
   */
  public IBMDiscoveryV1Models.TrainingExample getTrainingExample(IBMDiscoveryV1Models.GetTrainingExampleOptions getTrainingExampleOptions) {
    IBMWatsonValidator.notNull(getTrainingExampleOptions, 'getTrainingExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples/{3}', new String[]{ getTrainingExampleOptions.environmentId(), getTrainingExampleOptions.collectionId(), getTrainingExampleOptions.queryId(), getTrainingExampleOptions.exampleId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getTrainingExampleOptions != null) ? getTrainingExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.TrainingExample) createServiceCall(builder.build(), IBMDiscoveryV1Models.TrainingExample.class);
  }

  /**
   * List training data.
   *
   * Lists the training data for the specified collection.
   *
   * @param listTrainingDataOptions the {@link IBMDiscoveryV1Models.ListTrainingDataOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TrainingDataSet} with the response
   */
  public IBMDiscoveryV1Models.TrainingDataSet listTrainingData(IBMDiscoveryV1Models.ListTrainingDataOptions listTrainingDataOptions) {
    IBMWatsonValidator.notNull(listTrainingDataOptions, 'listTrainingDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data', new String[]{ listTrainingDataOptions.environmentId(), listTrainingDataOptions.collectionId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listTrainingDataOptions != null) ? listTrainingDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.TrainingDataSet) createServiceCall(builder.build(), IBMDiscoveryV1Models.TrainingDataSet.class);
  }

  /**
   * List examples for a training data query.
   *
   * List all examples for this training data query.
   *
   * @param listTrainingExamplesOptions the {@link IBMDiscoveryV1Models.ListTrainingExamplesOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TrainingExampleList} with the response
   */
  public IBMDiscoveryV1Models.TrainingExampleList listTrainingExamples(IBMDiscoveryV1Models.ListTrainingExamplesOptions listTrainingExamplesOptions) {
    IBMWatsonValidator.notNull(listTrainingExamplesOptions, 'listTrainingExamplesOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples', new String[]{ listTrainingExamplesOptions.environmentId(), listTrainingExamplesOptions.collectionId(), listTrainingExamplesOptions.queryId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listTrainingExamplesOptions != null) ? listTrainingExamplesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.TrainingExampleList) createServiceCall(builder.build(), IBMDiscoveryV1Models.TrainingExampleList.class);
  }

  /**
   * Change label or cross reference for example.
   *
   * Changes the label or cross reference query for this training data example.
   *
   * @param updateTrainingExampleOptions the {@link IBMDiscoveryV1Models.UpdateTrainingExampleOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.TrainingExample} with the response
   */
  public IBMDiscoveryV1Models.TrainingExample updateTrainingExample(IBMDiscoveryV1Models.UpdateTrainingExampleOptions updateTrainingExampleOptions) {
    IBMWatsonValidator.notNull(updateTrainingExampleOptions, 'updateTrainingExampleOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples/{3}', new String[]{ updateTrainingExampleOptions.environmentId(), updateTrainingExampleOptions.collectionId(), updateTrainingExampleOptions.queryId(), updateTrainingExampleOptions.exampleId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateTrainingExampleOptions != null) ? updateTrainingExampleOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateTrainingExampleOptions.crossReference() != null) {
      contentJson.put('cross_reference', updateTrainingExampleOptions.crossReference());
    }
    if (updateTrainingExampleOptions.relevance() != null) {
      contentJson.put('relevance', updateTrainingExampleOptions.relevance());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.TrainingExample) createServiceCall(builder.build(), IBMDiscoveryV1Models.TrainingExample.class);
  }

  /**
   * Delete labeled data.
   *
   * Deletes all data associated with a specified customer ID. The method has no effect if no data is associated with
   * the customer ID.
   *
   * You associate a customer ID with data by passing the **X-Watson-Metadata** header with a request that passes data.
   * For more information about personal data and customer IDs, see [Information
   * security](https://console.bluemix.net/docs/services/discovery/information-security.html).
   *
   * @param deleteUserDataOptions the {@link IBMDiscoveryV1Models.DeleteUserDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteUserData(IBMDiscoveryV1Models.DeleteUserDataOptions deleteUserDataOptions) {
    IBMWatsonValidator.notNull(deleteUserDataOptions, 'deleteUserDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + '/v1/user_data');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteUserDataOptions != null) ? deleteUserDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (deleteUserDataOptions.customerId() != null) {
      builder.query('customer_id', deleteUserDataOptions.customerId());
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Create event.
   *
   * The **Events** API can be used to create log entries that are associated with specific queries. For example, you
   * can record which documents in the results set were \"clicked\" by a user and when that click occured.
   *
   * @param createEventOptions the {@link IBMDiscoveryV1Models.CreateEventOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.CreateEventResponse} with the response
   */
  public IBMDiscoveryV1Models.CreateEventResponse createEvent(IBMDiscoveryV1Models.CreateEventOptions createEventOptions) {
    IBMWatsonValidator.notNull(createEventOptions, 'createEventOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/events');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createEventOptions != null) ? createEventOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('type', createEventOptions.xtype());
    contentJson.put('data', createEventOptions.data());
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.CreateEventResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.CreateEventResponse.class);
  }

  /**
   * Percentage of queries with an associated event.
   *
   * The percentage of queries using the **natural_language_query** parameter that have a corresponding \"click\" event
   * over a specified time window.  This metric requires having integrated event tracking in your application using the
   * **Events** API.
   *
   * @param getMetricsEventRateOptions the {@link IBMDiscoveryV1Models.GetMetricsEventRateOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.MetricResponse} with the response
   */
  public IBMDiscoveryV1Models.MetricResponse getMetricsEventRate(IBMDiscoveryV1Models.GetMetricsEventRateOptions getMetricsEventRateOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/metrics/event_rate');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getMetricsEventRateOptions != null) ? getMetricsEventRateOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getMetricsEventRateOptions != null && getMetricsEventRateOptions.startTime() != null) {
      builder.query('start_time', String.valueOf(getMetricsEventRateOptions.startTime()));
    }
    if (getMetricsEventRateOptions != null && getMetricsEventRateOptions.endTime() != null) {
      builder.query('end_time', String.valueOf(getMetricsEventRateOptions.endTime()));
    }
    if (getMetricsEventRateOptions != null && getMetricsEventRateOptions.resultType() != null) {
      builder.query('result_type', getMetricsEventRateOptions.resultType());
    }

    return (IBMDiscoveryV1Models.MetricResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.MetricResponse.class);
  }

  /**
   * Number of queries over time.
   *
   * Total number of queries using the **natural_language_query** parameter over a specific time window.
   *
   * @param getMetricsQueryOptions the {@link IBMDiscoveryV1Models.GetMetricsQueryOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.MetricResponse} with the response
   */
  public IBMDiscoveryV1Models.MetricResponse getMetricsQuery(IBMDiscoveryV1Models.GetMetricsQueryOptions getMetricsQueryOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/metrics/number_of_queries');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getMetricsQueryOptions != null) ? getMetricsQueryOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getMetricsQueryOptions != null && getMetricsQueryOptions.startTime() != null) {
      builder.query('start_time', String.valueOf(getMetricsQueryOptions.startTime()));
    }
    if (getMetricsQueryOptions != null && getMetricsQueryOptions.endTime() != null) {
      builder.query('end_time', String.valueOf(getMetricsQueryOptions.endTime()));
    }
    if (getMetricsQueryOptions != null && getMetricsQueryOptions.resultType() != null) {
      builder.query('result_type', getMetricsQueryOptions.resultType());
    }

    return (IBMDiscoveryV1Models.MetricResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.MetricResponse.class);
  }

  /**
   * Number of queries with an event over time.
   *
   * Total number of queries using the **natural_language_query** parameter that have a corresponding \"click\" event
   * over a specified time window. This metric requires having integrated event tracking in your application using the
   * **Events** API.
   *
   * @param getMetricsQueryEventOptions the {@link IBMDiscoveryV1Models.GetMetricsQueryEventOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.MetricResponse} with the response
   */
  public IBMDiscoveryV1Models.MetricResponse getMetricsQueryEvent(IBMDiscoveryV1Models.GetMetricsQueryEventOptions getMetricsQueryEventOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/metrics/number_of_queries_with_event');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getMetricsQueryEventOptions != null) ? getMetricsQueryEventOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getMetricsQueryEventOptions != null && getMetricsQueryEventOptions.startTime() != null) {
      builder.query('start_time', String.valueOf(getMetricsQueryEventOptions.startTime()));
    }
    if (getMetricsQueryEventOptions != null && getMetricsQueryEventOptions.endTime() != null) {
      builder.query('end_time', String.valueOf(getMetricsQueryEventOptions.endTime()));
    }
    if (getMetricsQueryEventOptions != null && getMetricsQueryEventOptions.resultType() != null) {
      builder.query('result_type', getMetricsQueryEventOptions.resultType());
    }

    return (IBMDiscoveryV1Models.MetricResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.MetricResponse.class);
  }

  /**
   * Number of queries with no search results over time.
   *
   * Total number of queries using the **natural_language_query** parameter that have no results returned over a
   * specified time window.
   *
   * @param getMetricsQueryNoResultsOptions the {@link IBMDiscoveryV1Models.GetMetricsQueryNoResultsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.MetricResponse} with the response
   */
  public IBMDiscoveryV1Models.MetricResponse getMetricsQueryNoResults(IBMDiscoveryV1Models.GetMetricsQueryNoResultsOptions getMetricsQueryNoResultsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/metrics/number_of_queries_with_no_search_results');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getMetricsQueryNoResultsOptions != null) ? getMetricsQueryNoResultsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getMetricsQueryNoResultsOptions != null && getMetricsQueryNoResultsOptions.startTime() != null) {
      builder.query('start_time', String.valueOf(getMetricsQueryNoResultsOptions.startTime()));
    }
    if (getMetricsQueryNoResultsOptions != null && getMetricsQueryNoResultsOptions.endTime() != null) {
      builder.query('end_time', String.valueOf(getMetricsQueryNoResultsOptions.endTime()));
    }
    if (getMetricsQueryNoResultsOptions != null && getMetricsQueryNoResultsOptions.resultType() != null) {
      builder.query('result_type', getMetricsQueryNoResultsOptions.resultType());
    }

    return (IBMDiscoveryV1Models.MetricResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.MetricResponse.class);
  }

  /**
   * Most frequent query tokens with an event.
   *
   * The most frequent query tokens parsed from the **natural_language_query** parameter and their corresponding
   * \"click\" event rate within the recording period (queries and events are stored for 30 days). A query token is an
   * individual word or unigram within the query string.
   *
   * @param getMetricsQueryTokenEventOptions the {@link IBMDiscoveryV1Models.GetMetricsQueryTokenEventOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.MetricTokenResponse} with the response
   */
  public IBMDiscoveryV1Models.MetricTokenResponse getMetricsQueryTokenEvent(IBMDiscoveryV1Models.GetMetricsQueryTokenEventOptions getMetricsQueryTokenEventOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/metrics/top_query_tokens_with_event_rate');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getMetricsQueryTokenEventOptions != null) ? getMetricsQueryTokenEventOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (getMetricsQueryTokenEventOptions != null && getMetricsQueryTokenEventOptions.count() != null) {
      builder.query('count', String.valueOf(getMetricsQueryTokenEventOptions.count()));
    }

    return (IBMDiscoveryV1Models.MetricTokenResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.MetricTokenResponse.class);
  }

  /**
   * Search the query and event log.
   *
   * Searches the query and event log to find query sessions that match the specified criteria. Searching the **logs**
   * endpoint uses the standard Discovery query syntax for the parameters that are supported.
   *
   * @param queryLogOptions the {@link IBMDiscoveryV1Models.QueryLogOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.LogQueryResponse} with the response
   */
  public IBMDiscoveryV1Models.LogQueryResponse queryLog(IBMDiscoveryV1Models.QueryLogOptions queryLogOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/logs');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (queryLogOptions != null) ? queryLogOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (queryLogOptions != null && queryLogOptions.filter() != null) {
      builder.query('filter', queryLogOptions.filter());
    }
    if (queryLogOptions != null && queryLogOptions.query() != null) {
      builder.query('query', queryLogOptions.query());
    }
    if (queryLogOptions != null && queryLogOptions.count() != null) {
      builder.query('count', String.valueOf(queryLogOptions.count()));
    }
    if (queryLogOptions != null && queryLogOptions.offset() != null) {
      builder.query('offset', String.valueOf(queryLogOptions.offset()));
    }
    if (queryLogOptions != null && queryLogOptions.xsort() != null) {
      builder.query('sort', String.join(queryLogOptions.xsort(), ','));
    }

    return (IBMDiscoveryV1Models.LogQueryResponse) createServiceCall(builder.build(), IBMDiscoveryV1Models.LogQueryResponse.class);
  }

  /**
   * Create credentials.
   *
   * Creates a set of credentials to connect to a remote source. Created credentials are used in a configuration to
   * associate a collection with the remote source.
   *
   * **Note:** All credentials are sent over an encrypted connection and encrypted at rest.
   *
   * @param createCredentialsOptions the {@link IBMDiscoveryV1Models.CreateCredentialsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Credentials} with the response
   */
  public IBMDiscoveryV1Models.Credentials createCredentials(IBMDiscoveryV1Models.CreateCredentialsOptions createCredentialsOptions) {
    IBMWatsonValidator.notNull(createCredentialsOptions, 'createCredentialsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/environments/{0}/credentials', new String[]{ createCredentialsOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createCredentialsOptions != null) ? createCredentialsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (createCredentialsOptions.sourceType() != null) {
      contentJson.put('source_type', createCredentialsOptions.sourceType());
    }
    if (createCredentialsOptions.credentialDetails() != null) {
      contentJson.put('credential_details', createCredentialsOptions.credentialDetails());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Credentials) createServiceCall(builder.build(), IBMDiscoveryV1Models.Credentials.class);
  }

  /**
   * Delete credentials.
   *
   * Deletes a set of stored credentials from your Discovery instance.
   *
   * @param deleteCredentialsOptions the {@link IBMDiscoveryV1Models.DeleteCredentialsOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCredentials(IBMDiscoveryV1Models.DeleteCredentialsOptions deleteCredentialsOptions) {
    IBMWatsonValidator.notNull(deleteCredentialsOptions, 'deleteCredentialsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/environments/{0}/credentials/{1}', new String[]{ deleteCredentialsOptions.environmentId(), deleteCredentialsOptions.credentialId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (deleteCredentialsOptions != null) ? deleteCredentialsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * View Credentials.
   *
   * Returns details about the specified credentials.
   *
   *  **Note:** Secure credential information such as a password or SSH key is never returned and must be obtained from
   * the source system.
   *
   * @param getCredentialsOptions the {@link IBMDiscoveryV1Models.GetCredentialsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Credentials} with the response
   */
  public IBMDiscoveryV1Models.Credentials getCredentials(IBMDiscoveryV1Models.GetCredentialsOptions getCredentialsOptions) {
    IBMWatsonValidator.notNull(getCredentialsOptions, 'getCredentialsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/credentials/{1}', new String[]{ getCredentialsOptions.environmentId(), getCredentialsOptions.credentialId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getCredentialsOptions != null) ? getCredentialsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.Credentials) createServiceCall(builder.build(), IBMDiscoveryV1Models.Credentials.class);
  }

  /**
   * List credentials.
   *
   * List all the source credentials that have been created for this service instance.
   *
   *  **Note:**  All credentials are sent over an encrypted connection and encrypted at rest.
   *
   * @param listCredentialsOptions the {@link IBMDiscoveryV1Models.ListCredentialsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.CredentialsList} with the response
   */
  public IBMDiscoveryV1Models.CredentialsList listCredentials(IBMDiscoveryV1Models.ListCredentialsOptions listCredentialsOptions) {
    IBMWatsonValidator.notNull(listCredentialsOptions, 'listCredentialsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/environments/{0}/credentials', new String[]{ listCredentialsOptions.environmentId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listCredentialsOptions != null) ? listCredentialsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMDiscoveryV1Models.CredentialsList) createServiceCall(builder.build(), IBMDiscoveryV1Models.CredentialsList.class);
  }

  /**
   * Update credentials.
   *
   * Updates an existing set of source credentials.
   *
   * **Note:** All credentials are sent over an encrypted connection and encrypted at rest.
   *
   * @param updateCredentialsOptions the {@link IBMDiscoveryV1Models.UpdateCredentialsOptions} containing the options for the call
   * @return the {@link IBMDiscoveryV1Models.Credentials} with the response
   */
  public IBMDiscoveryV1Models.Credentials updateCredentials(IBMDiscoveryV1Models.UpdateCredentialsOptions updateCredentialsOptions) {
    IBMWatsonValidator.notNull(updateCredentialsOptions, 'updateCredentialsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/environments/{0}/credentials/{1}', new String[]{ updateCredentialsOptions.environmentId(), updateCredentialsOptions.credentialId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateCredentialsOptions != null) ? updateCredentialsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateCredentialsOptions.sourceType() != null) {
      contentJson.put('source_type', updateCredentialsOptions.sourceType());
    }
    if (updateCredentialsOptions.credentialDetails() != null) {
      contentJson.put('credential_details', updateCredentialsOptions.credentialDetails());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMDiscoveryV1Models.Credentials) createServiceCall(builder.build(), IBMDiscoveryV1Models.Credentials.class);
  }

}
