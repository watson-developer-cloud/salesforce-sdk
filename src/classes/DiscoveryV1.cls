/**
 * The IBM Watson Discovery Service is a cognitive search and content analytics engine that you can add to applications
 * to identify patterns, trends and actionable insights to drive better decision-making. Securely unify structured and
 * unstructured data with pre-enriched content, and use a simplified query language to eliminate the need for manual
 * filtering of results.
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/discovery.html">Discovery</a>
 */
public class DiscoveryV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/discovery/api';
  private String versionDate;

  /** The Constant VERSION_DATE_2017_09_01. */
    public static final String VERSION_DATE_2017_09_01 = '2017-09-01';
  /** The Constant VERSION_DATE_2017_08_01. */
    public static final String VERSION_DATE_2017_08_01 = '2017-08-01';
  /** The Constant VERSION_DATE_2017_07_19. */
    public static final String VERSION_DATE_2017_07_19 = '2017-07-19';
  /** The Constant VERSION_DATE_2017_06_25. */
    public static final String VERSION_DATE_2017_06_25 = '2017-06-25';
  /** The Constant VERSION_DATE_2016_12_01. */
    public static final String VERSION_DATE_2016_12_01 = '2016-12-01';
  /**
   * Instantiates a new `DiscoveryV1`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public DiscoveryV1(String versionDate) {
    this.ServiceName = 'Discovery';
    if ((getEndPoint() == null) || String.isBlank(getEndPoint())) {
      setEndPoint(URL);
    }
    if(String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.RuntimeException('Version cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `DiscoveryV1` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public DiscoveryV1(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Add an environment.
   *
   * Creates a new environment.  You can create only one environment per service instance. An attempt to create another environment results in an error.
   *
   * @param create_environment_options the {@link DiscoveryV1Models.CreateEnvironmentOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Environment} with the response
   */
  public DiscoveryV1Models.Environment createEnvironment(DiscoveryV1Models.CreateEnvironmentOptions create_environment_options) {
    IBMWatsonValidator.notNull(create_environment_options, 'create_environment_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + '/v1/environments');
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('name', create_environment_options.name());
    if (create_environment_options.description() != null) {
      contentJson.put('description', create_environment_options.description());
    }
    if (create_environment_options.size() != null) {
      contentJson.put('size', create_environment_options.size());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.Environment) createServiceCall(builder.build(), DiscoveryV1Models.Environment.class);
  }

  /**
   * Delete environment.
   *
   * @param delete_environment_options the {@link DiscoveryV1Models.DeleteEnvironmentOptions} containing the options for the call
   * @return the service call
   */
  public void deleteEnvironment(DiscoveryV1Models.DeleteEnvironmentOptions delete_environment_options) {
    IBMWatsonValidator.notNull(delete_environment_options, 'delete_environment_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/environments/{0}', new String[]{ delete_environment_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get environment info.
   *
   * @param get_environment_options the {@link DiscoveryV1Models.GetEnvironmentOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Environment} with the response
   */
  public DiscoveryV1Models.Environment getEnvironment(DiscoveryV1Models.GetEnvironmentOptions get_environment_options) {
    IBMWatsonValidator.notNull(get_environment_options, 'get_environment_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}', new String[]{ get_environment_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.Environment) createServiceCall(builder.build(), DiscoveryV1Models.Environment.class);
  }

  /**
   * List environments.
   *
   * List existing environments for the service instance.
   *
   * @param list_environments_options the {@link DiscoveryV1Models.ListEnvironmentsOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.ListEnvironmentsResponse} with the response
   */
  public DiscoveryV1Models.ListEnvironmentsResponse listEnvironments(DiscoveryV1Models.ListEnvironmentsOptions list_environments_options) {
    builder = IBMWatsonRequestBuilder.http_get(URL + '/v1/environments');
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'name' => list_environments_options.name()
    });
    return (DiscoveryV1Models.ListEnvironmentsResponse) createServiceCall(builder.build(), DiscoveryV1Models.ListEnvironmentsResponse.class);
  }

  /**
   * List fields in specified collecitons.
   *
   * Gets a list of the unique fields (and their types) stored in the indexes of the specified collecitons.
   *
   * @param list_fields_options the {@link DiscoveryV1Models.ListFieldsOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.ListCollectionFieldsResponse} with the response
   */
  public DiscoveryV1Models.ListCollectionFieldsResponse listFields(DiscoveryV1Models.ListFieldsOptions list_fields_options) {
    IBMWatsonValidator.notNull(list_fields_options, 'list_fields_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/fields', new String[]{ list_fields_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'collection_ids' => String.valueOf(list_fields_options.collectionIds())
    });
    return (DiscoveryV1Models.ListCollectionFieldsResponse) createServiceCall(builder.build(), DiscoveryV1Models.ListCollectionFieldsResponse.class);
  }

  /**
   * Update an environment.
   *
   * Updates an environment. The environment's `name` and  `description` parameters can be changed. You must specify a `name` for the environment.
   *
   * @param update_environment_options the {@link DiscoveryV1Models.UpdateEnvironmentOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Environment} with the response
   */
  public DiscoveryV1Models.Environment updateEnvironment(DiscoveryV1Models.UpdateEnvironmentOptions update_environment_options) {
    IBMWatsonValidator.notNull(update_environment_options, 'update_environment_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_put(URL + String.format('/v1/environments/{0}', new String[]{ update_environment_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_environment_options.name() != null) {
      contentJson.put('name', update_environment_options.name());
    }
    if (update_environment_options.description() != null) {
      contentJson.put('description', update_environment_options.description());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.Environment) createServiceCall(builder.build(), DiscoveryV1Models.Environment.class);
  }

  /**
   * Add configuration.
   *
   * Creates a new configuration.  If the input configuration contains the `configuration_id`, `created`, or `updated` properties, then they are ignored and overridden by the system, and an error is not returned so that the overridden fields do not need to be removed when copying a configuration.  The configuration can contain unrecognized JSON fields. Any such fields are ignored and do not generate an error. This makes it easier to use newer configuration files with older versions of the API and the service. It also makes it possible for the tooling to add additional metadata and information to the configuration.
   *
   * @param create_configuration_options the {@link DiscoveryV1Models.CreateConfigurationOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Configuration} with the response
   */
  public DiscoveryV1Models.Configuration createConfiguration(DiscoveryV1Models.CreateConfigurationOptions create_configuration_options) {
    IBMWatsonValidator.notNull(create_configuration_options, 'create_configuration_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/environments/{0}/configurations', new String[]{ create_configuration_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (create_configuration_options.name() != null) {
      contentJson.put('name', create_configuration_options.name());
    }
    if (create_configuration_options.description() != null) {
      contentJson.put('description', create_configuration_options.description());
    }
    if (create_configuration_options.conversions() != null) {
      contentJson.put('conversions', create_configuration_options.conversions());
    }
    if (create_configuration_options.enrichments() != null) {
      contentJson.put('enrichments', create_configuration_options.enrichments());
    }
    if (create_configuration_options.normalizations() != null) {
      contentJson.put('normalizations', create_configuration_options.normalizations());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.Configuration) createServiceCall(builder.build(), DiscoveryV1Models.Configuration.class);
  }

  /**
   * Delete a configuration.
   *
   * The deletion is performed unconditionally. A configuration deletion request succeeds even if the configuration is referenced by a collection or document ingestion. However, documents that have already been submitted for processing continue to use the deleted configuration. Documents are always processed with a snapshot of the configuration as it existed at the time the document was submitted.
   *
   * @param delete_configuration_options the {@link DiscoveryV1Models.DeleteConfigurationOptions} containing the options for the call
   * @return the service call
   */
  public void deleteConfiguration(DiscoveryV1Models.DeleteConfigurationOptions delete_configuration_options) {
    IBMWatsonValidator.notNull(delete_configuration_options, 'delete_configuration_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/environments/{0}/configurations/{1}', new String[]{ delete_configuration_options.environmentId(), delete_configuration_options.configurationId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get configuration details.
   *
   * @param get_configuration_options the {@link DiscoveryV1Models.GetConfigurationOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Configuration} with the response
   */
  public DiscoveryV1Models.Configuration getConfiguration(DiscoveryV1Models.GetConfigurationOptions get_configuration_options) {
    IBMWatsonValidator.notNull(get_configuration_options, 'get_configuration_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/configurations/{1}', new String[]{ get_configuration_options.environmentId(), get_configuration_options.configurationId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.Configuration) createServiceCall(builder.build(), DiscoveryV1Models.Configuration.class);
  }

  /**
   * List configurations.
   *
   * Lists existing configurations for the service instance.
   *
   * @param list_configurations_options the {@link DiscoveryV1Models.ListConfigurationsOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.ListConfigurationsResponse} with the response
   */
  public DiscoveryV1Models.ListConfigurationsResponse listConfigurations(DiscoveryV1Models.ListConfigurationsOptions list_configurations_options) {
    IBMWatsonValidator.notNull(list_configurations_options, 'list_configurations_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/configurations', new String[]{ list_configurations_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'name' => list_configurations_options.name()
    });
    return (DiscoveryV1Models.ListConfigurationsResponse) createServiceCall(builder.build(), DiscoveryV1Models.ListConfigurationsResponse.class);
  }

  /**
   * Update a configuration.
   *
   * Replaces an existing configuration.   * Completely replaces the original configuration.   * The `configuration_id`, `updated`, and `created` fields are accepted in the request, but they are ignored, and an error is not generated. It is also acceptable for users to submit an updated configuration with none of the three properties.   * Documents are processed with a snapshot of the configuration as it was at the time the document was submitted to be ingested. This means that already submitted documents will not see any updates made to the configuration.
   *
   * @param update_configuration_options the {@link DiscoveryV1Models.UpdateConfigurationOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Configuration} with the response
   */
  public DiscoveryV1Models.Configuration updateConfiguration(DiscoveryV1Models.UpdateConfigurationOptions update_configuration_options) {
    IBMWatsonValidator.notNull(update_configuration_options, 'update_configuration_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_put(URL + String.format('/v1/environments/{0}/configurations/{1}', new String[]{ update_configuration_options.environmentId(), update_configuration_options.configurationId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_configuration_options.name() != null) {
      contentJson.put('name', update_configuration_options.name());
    }
    if (update_configuration_options.description() != null) {
      contentJson.put('description', update_configuration_options.description());
    }
    if (update_configuration_options.conversions() != null) {
      contentJson.put('conversions', update_configuration_options.conversions());
    }
    if (update_configuration_options.enrichments() != null) {
      contentJson.put('enrichments', update_configuration_options.enrichments());
    }
    if (update_configuration_options.normalizations() != null) {
      contentJson.put('normalizations', update_configuration_options.normalizations());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.Configuration) createServiceCall(builder.build(), DiscoveryV1Models.Configuration.class);
  }

  /**
   * Test configuration.
   *
   * Runs a sample document through the default or your configuration and returns diagnostic information designed to help you understand how the document was processed. The document is not added to the index.
   *
   * @param test_configuration_in_environment_options the {@link DiscoveryV1Models.TestConfigurationInEnvironmentOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.TestDocument} with the response
   */
  /*public DiscoveryV1Models.TestDocument testConfigurationInEnvironment(DiscoveryV1Models.TestConfigurationInEnvironmentOptions test_configuration_in_environment_options) {
    IBMWatsonValidator.notNull(test_configuration_in_environment_options, 'test_configuration_in_environment_options cannot be null');
    IBMWatsonValidator.isTrue((test_configuration_in_environment_options.configuration() != null) || (test_configuration_in_environment_options.file() != null) || (test_configuration_in_environment_options.metadata() != null), 'At least one of configuration, file, or metadata must be supplied.');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/environments/{0}/preview', new String[]{ test_configuration_in_environment_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'step' => test_configuration_in_environment_options.step(),
      'configuration_id' => test_configuration_in_environment_options.configurationId()
    });
    MultipartBody.Builder multipartBuilder = new MultipartBody.Builder();
    multipartBuilder.setType(MultipartBody.FORM);
    if (test_configuration_in_environment_options.configuration() != null) {
      multipartBuilder.addFormDataPart('configuration', test_configuration_in_environment_options.configuration());
    }
    if (test_configuration_in_environment_options.file() != null) {
      RequestBody file_body = RequestUtils.inputStreamBody(test_configuration_in_environment_options.file(), test_configuration_in_environment_options.fileContentType());
      multipartBuilder.addFormDataPart('file', test_configuration_in_environment_options.filename(), file_body);
    }
    if (test_configuration_in_environment_options.metadata() != null) {
      multipartBuilder.addFormDataPart('metadata', test_configuration_in_environment_options.metadata());
    }
    builder.body(multipartBuilder.build());
    return (DiscoveryV1Models.TestDocument) createServiceCall(builder.build(), DiscoveryV1Models.TestDocument.class);
  }*/

  /**
   * Create a collection.
   *
   * @param create_collection_options the {@link DiscoveryV1Models.CreateCollectionOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Collection} with the response
   */
  public DiscoveryV1Models.Collection createCollection(DiscoveryV1Models.CreateCollectionOptions create_collection_options) {
    IBMWatsonValidator.notNull(create_collection_options, 'create_collection_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/environments/{0}/collections', new String[]{ create_collection_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('name', create_collection_options.name());
    if (create_collection_options.description() != null) {
      contentJson.put('description', create_collection_options.description());
    }
    if (create_collection_options.configurationId() != null) {
      contentJson.put('configuration_id', create_collection_options.configurationId());
    }
    if (create_collection_options.language() != null) {
      contentJson.put('language', create_collection_options.language());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.Collection) createServiceCall(builder.build(), DiscoveryV1Models.Collection.class);
  }

  /**
   * Delete a collection.
   *
   * @param delete_collection_options the {@link DiscoveryV1Models.DeleteCollectionOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCollection(DiscoveryV1Models.DeleteCollectionOptions delete_collection_options) {
    IBMWatsonValidator.notNull(delete_collection_options, 'delete_collection_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/environments/{0}/collections/{1}', new String[]{ delete_collection_options.environmentId(), delete_collection_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get collection details.
   *
   * @param get_collection_options the {@link DiscoveryV1Models.GetCollectionOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Collection} with the response
   */
  public DiscoveryV1Models.Collection getCollection(DiscoveryV1Models.GetCollectionOptions get_collection_options) {
    IBMWatsonValidator.notNull(get_collection_options, 'get_collection_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}', new String[]{ get_collection_options.environmentId(), get_collection_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.Collection) createServiceCall(builder.build(), DiscoveryV1Models.Collection.class);
  }

  /**
   * List unique fields.
   *
   * Gets a list of the unique fields (and their types) stored in the index.
   *
   * @param list_collection_fields_options the {@link DiscoveryV1Models.ListCollectionFieldsOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.ListCollectionFieldsResponse} with the response
   */
  public DiscoveryV1Models.ListCollectionFieldsResponse listCollectionFields(DiscoveryV1Models.ListCollectionFieldsOptions list_collection_fields_options) {
    IBMWatsonValidator.notNull(list_collection_fields_options, 'list_collection_fields_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}/fields', new String[]{ list_collection_fields_options.environmentId(), list_collection_fields_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.ListCollectionFieldsResponse) createServiceCall(builder.build(), DiscoveryV1Models.ListCollectionFieldsResponse.class);
  }

  /**
   * List collections.
   *
   * Lists existing collections for the service instance.
   *
   * @param list_collections_options the {@link DiscoveryV1Models.ListCollectionsOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.ListCollectionsResponse} with the response
   */
  public DiscoveryV1Models.ListCollectionsResponse listCollections(DiscoveryV1Models.ListCollectionsOptions list_collections_options) {
    IBMWatsonValidator.notNull(list_collections_options, 'list_collections_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections', new String[]{ list_collections_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'name' => list_collections_options.name()
    });
    return (DiscoveryV1Models.ListCollectionsResponse) createServiceCall(builder.build(), DiscoveryV1Models.ListCollectionsResponse.class);
  }

  /**
   * Update a collection.
   *
   * @param update_collection_options the {@link DiscoveryV1Models.UpdateCollectionOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.Collection} with the response
   */
  public DiscoveryV1Models.Collection updateCollection(DiscoveryV1Models.UpdateCollectionOptions update_collection_options) {
    IBMWatsonValidator.notNull(update_collection_options, 'update_collection_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_put(URL + String.format('/v1/environments/{0}/collections/{1}', new String[]{ update_collection_options.environmentId(), update_collection_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_collection_options.name() != null) {
      contentJson.put('name', update_collection_options.name());
    }
    if (update_collection_options.description() != null) {
      contentJson.put('description', update_collection_options.description());
    }
    if (update_collection_options.configurationId() != null) {
      contentJson.put('configuration_id', update_collection_options.configurationId());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.Collection) createServiceCall(builder.build(), DiscoveryV1Models.Collection.class);
  }

  /**
   * Add a document.
   *
   * Add a document to a collection with optional metadata.    * The `version` query parameter is still required.    * Returns immediately after the system has accepted the document for processing.    * The user must provide document content, metadata, or both. If the request is missing both document content and metadata, it is rejected.    * The user can set the `Content-Type` parameter on the `file` part to indicate the media type of the document. If the `Content-Type` parameter is missing or is one of the generic media types (for example, `application/octet-stream`), then the service attempts to automatically detect the document's media type.    * The following field names are reserved and will be filtered out if present after normalization: `id`, `score`, `highlight`, and any field with the prefix of: `_`, `+`, or `-`    * Fields with empty name values after normalization are filtered out before indexing.    * Fields containing the following characters after normalization are filtered out before indexing: `#` and `,`.
   *
   * @param add_document_options the {@link DiscoveryV1Models.AddDocumentOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.DocumentAccepted} with the response
   */
  /*public DiscoveryV1Models.DocumentAccepted addDocument(DiscoveryV1Models.AddDocumentOptions add_document_options) {
    IBMWatsonValidator.notNull(add_document_options, 'add_document_options cannot be null');
    IBMWatsonValidator.isTrue((add_document_options.file() != null) || (add_document_options.metadata() != null), 'At least one of file or metadata must be supplied.');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/environments/{0}/collections/{1}/documents', new String[]{ add_document_options.environmentId(), add_document_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    MultipartBody.Builder multipartBuilder = new MultipartBody.Builder();
    multipartBuilder.setType(MultipartBody.FORM);
    if (add_document_options.file() != null) {
      RequestBody file_body = RequestUtils.inputStreamBody(add_document_options.file(), add_document_options.fileContentType());
      multipartBuilder.addFormDataPart('file', add_document_options.filename(), file_body);
    }
    if (add_document_options.metadata() != null) {
      multipartBuilder.addFormDataPart('metadata', add_document_options.metadata());
    }
    builder.body(multipartBuilder.build());
    return (DiscoveryV1Models.DocumentAccepted) createServiceCall(builder.build(), DiscoveryV1Models.DocumentAccepted.class);
  }*/

  /**
   * Delete a document.
   *
   * If the given document ID is invalid, or if the document is not found, then the a success response is returned (HTTP status code `200`) with the status set to 'deleted'.
   *
   * @param delete_document_options the {@link DiscoveryV1Models.DeleteDocumentOptions} containing the options for the call
   * @return the service call
   */
  public void deleteDocument(DiscoveryV1Models.DeleteDocumentOptions delete_document_options) {
    IBMWatsonValidator.notNull(delete_document_options, 'delete_document_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/environments/{0}/collections/{1}/documents/{2}', new String[]{ delete_document_options.environmentId(), delete_document_options.collectionId(), delete_document_options.documentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Get document details.
   *
   * Fetch status details about a submitted document. **Note:** this operation does not return the document itself. Instead, it returns only the document's processing status and any notices (warnings or errors) that were generated when the document was ingested. Use the query API to retrieve the actual document content.
   *
   * @param get_document_status_options the {@link DiscoveryV1Models.GetDocumentStatusOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.DocumentStatus} with the response
   */
  public DiscoveryV1Models.DocumentStatus getDocumentStatus(DiscoveryV1Models.GetDocumentStatusOptions get_document_status_options) {
    IBMWatsonValidator.notNull(get_document_status_options, 'get_document_status_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}/documents/{2}', new String[]{ get_document_status_options.environmentId(), get_document_status_options.collectionId(), get_document_status_options.documentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.DocumentStatus) createServiceCall(builder.build(), DiscoveryV1Models.DocumentStatus.class);
  }

  /**
   * Update a document.
   *
   * Replace an existing document. Starts ingesting a document with optional metadata.
   *
   * @param update_document_options the {@link DiscoveryV1Models.UpdateDocumentOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.DocumentAccepted} with the response
   */
  /*public DiscoveryV1Models.DocumentAccepted updateDocument(DiscoveryV1Models.UpdateDocumentOptions update_document_options) {
    IBMWatsonValidator.notNull(update_document_options, 'update_document_options cannot be null');
    IBMWatsonValidator.isTrue((update_document_options.file() != null) || (update_document_options.metadata() != null), 'At least one of file or metadata must be supplied.');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/environments/{0}/collections/{1}/documents/{2}', new String[]{ update_document_options.environmentId(), update_document_options.collectionId(), update_document_options.documentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    MultipartBody.Builder multipartBuilder = new MultipartBody.Builder();
    multipartBuilder.setType(MultipartBody.FORM);
    if (update_document_options.file() != null) {
      RequestBody file_body = RequestUtils.inputStreamBody(update_document_options.file(), update_document_options.fileContentType());
      multipartBuilder.addFormDataPart('file', update_document_options.filename(), file_body);
    }
    if (update_document_options.metadata() != null) {
      multipartBuilder.addFormDataPart('metadata', update_document_options.metadata());
    }
    builder.body(multipartBuilder.build());
    return (DiscoveryV1Models.DocumentAccepted) createServiceCall(builder.build(), DiscoveryV1Models.DocumentAccepted.class);
  }*/

  /**
   * Query documents in multiple collections.
   *
   * See the [Discovery service documentation](https://console.bluemix.net/docs/services/discovery/using.html) for more details.
   *
   * @param federated_query_options the {@link DiscoveryV1Models.FederatedQueryOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.QueryResponse} with the response
   */
  public DiscoveryV1Models.QueryResponse federatedQuery(DiscoveryV1Models.FederatedQueryOptions federated_query_options) {
    IBMWatsonValidator.notNull(federated_query_options, 'federated_query_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/query', new String[]{ federated_query_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'collection_ids' => String.valueOf(federated_query_options.collectionIds()),
      'filter' => federated_query_options.filter(),
      'query' => federated_query_options.query(),
      'natural_language_query' => federated_query_options.naturalLanguageQuery(),
      'aggregation' => federated_query_options.aggregation(),
      'count' => String.valueOf(federated_query_options.count()),
      'return_fields' => String.valueOf(federated_query_options.returnFields()),
      'offset' => String.valueOf(federated_query_options.offset()),
      'sort' => String.valueOf(federated_query_options.xsort()),
      'highlight' => String.valueOf(federated_query_options.highlight()),
      'deduplicate' => String.valueOf(federated_query_options.deduplicate()),
      'deduplicate.field' => federated_query_options.deduplicateField()
    });
    return (DiscoveryV1Models.QueryResponse) createServiceCall(builder.build(), DiscoveryV1Models.QueryResponse.class);
  }

  /**
   * Query multiple collection system notices.
   *
   * Queries for notices (errors or warnings) that might have been generated by the system. Notices are generated when ingesting documents and performing relevance training. See the [Discovery service documentation](https://console.bluemix.net/docs/services/discovery/using.html) for more details on the query language.
   *
   * @param federated_query_notices_options the {@link DiscoveryV1Models.FederatedQueryNoticesOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.QueryNoticesResponse} with the response
   */
  public DiscoveryV1Models.QueryNoticesResponse federatedQueryNotices(DiscoveryV1Models.FederatedQueryNoticesOptions federated_query_notices_options) {
    IBMWatsonValidator.notNull(federated_query_notices_options, 'federated_query_notices_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/notices', new String[]{ federated_query_notices_options.environmentId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'collection_ids' => String.valueOf(federated_query_notices_options.collectionIds()),
      'filter' => federated_query_notices_options.filter(),
      'query' => federated_query_notices_options.query(),
      'natural_language_query' => federated_query_notices_options.naturalLanguageQuery(),
      'aggregation' => federated_query_notices_options.aggregation(),
      'count' => String.valueOf(federated_query_notices_options.count()),
      'return_fields' => String.valueOf(federated_query_notices_options.returnFields()),
      'offset' => String.valueOf(federated_query_notices_options.offset()),
      'sort' => String.valueOf(federated_query_notices_options.xsort()),
      'highlight' => String.valueOf(federated_query_notices_options.highlight()),
      'deduplicate.field' => federated_query_notices_options.deduplicateField()
    });
    return (DiscoveryV1Models.QueryNoticesResponse) createServiceCall(builder.build(), DiscoveryV1Models.QueryNoticesResponse.class);
  }

  /**
   * Query documents.
   *
   * See the [Discovery service documentation](https://console.bluemix.net/docs/services/discovery/using.html) for more details.
   *
   * @param query_options the {@link DiscoveryV1Models.QueryOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.QueryResponse} with the response
   */
  public DiscoveryV1Models.QueryResponse query(DiscoveryV1Models.QueryOptions query_options) {
    IBMWatsonValidator.notNull(query_options, 'query_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}/query', new String[]{ query_options.environmentId(), query_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'filter' => query_options.filter(),
      'query' => query_options.query(),
      'natural_language_query' => query_options.naturalLanguageQuery(),
      'passages' => String.valueOf(query_options.passages()),
      'aggregation' => query_options.aggregation(),
      'count' => String.valueOf(query_options.count()),
      'return' => String.valueOf(query_options.returnFields()),
      'offset' => String.valueOf(query_options.offset()),
      'sort' => String.valueOf(query_options.xsort()),
      'highlight' => String.valueOf(query_options.highlight()),
      'passages.fields' => String.valueOf(query_options.passagesFields()),
      'passages.count' => String.valueOf(query_options.passagesCount()),
      'passages.characters' => String.valueOf(query_options.passagesCharacters()),
      'deduplicate' => String.valueOf(query_options.deduplicate()),
      'deduplicate.field' => query_options.deduplicateField()
    });
    return (DiscoveryV1Models.QueryResponse) createServiceCall(builder.build(), DiscoveryV1Models.QueryResponse.class);
  }

  /**
   * Query system notices.
   *
   * Queries for notices (errors or warnings) that might have been generated by the system. Notices are generated when ingesting documents and performing relevance training. See the [Discovery service documentation](https://console.bluemix.net/docs/services/discovery/using.html) for more details on the query language.
   *
   * @param query_notices_options the {@link DiscoveryV1Models.QueryNoticesOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.QueryNoticesResponse} with the response
   */
  public DiscoveryV1Models.QueryNoticesResponse queryNotices(DiscoveryV1Models.QueryNoticesOptions query_notices_options) {
    IBMWatsonValidator.notNull(query_notices_options, 'query_notices_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}/notices', new String[]{ query_notices_options.environmentId(), query_notices_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate,
      'filter' => query_notices_options.filter(),
      'query' => query_notices_options.query(),
      'natural_language_query' => query_notices_options.naturalLanguageQuery(),
      'passages' => String.valueOf(query_notices_options.passages()),
      'aggregation' => query_notices_options.aggregation(),
      'count' => String.valueOf(query_notices_options.count()),
      'return_fields' => String.valueOf(query_notices_options.returnFields()),
      'offset' => String.valueOf(query_notices_options.offset()),
      'sort' => String.valueOf(query_notices_options.xsort()),
      'highlight' => String.valueOf(query_notices_options.highlight()),
      'passages.fields' => String.valueOf(query_notices_options.passagesFields()),
      'passages.count' => String.valueOf(query_notices_options.passagesCount()),
      'passages.characters' => String.valueOf(query_notices_options.passagesCharacters()),
      'deduplicate.field' => query_notices_options.deduplicateField()
    });
    return (DiscoveryV1Models.QueryNoticesResponse) createServiceCall(builder.build(), DiscoveryV1Models.QueryNoticesResponse.class);
  }

  /**
   * Adds a query to the training data for this collection. The query can contain a filter and natural language query.
   *
   * @param add_training_data_options the {@link DiscoveryV1Models.AddTrainingDataOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.TrainingQuery} with the response
   */
  public DiscoveryV1Models.TrainingQuery addTrainingData(DiscoveryV1Models.AddTrainingDataOptions add_training_data_options) {
    IBMWatsonValidator.notNull(add_training_data_options, 'add_training_data_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/environments/{0}/collections/{1}/training_data', new String[]{ add_training_data_options.environmentId(), add_training_data_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (add_training_data_options.naturalLanguageQuery() != null) {
      contentJson.put('natural_language_query', add_training_data_options.naturalLanguageQuery());
    }
    if (add_training_data_options.filter() != null) {
      contentJson.put('filter', add_training_data_options.filter());
    }
    if (add_training_data_options.examples() != null) {
      contentJson.put('examples', add_training_data_options.examples());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.TrainingQuery) createServiceCall(builder.build(), DiscoveryV1Models.TrainingQuery.class);
  }

  /**
   * Adds a new example to this training data query.
   *
   * @param create_training_example_options the {@link DiscoveryV1Models.CreateTrainingExampleOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.TrainingExample} with the response
   */
  public DiscoveryV1Models.TrainingExample createTrainingExample(DiscoveryV1Models.CreateTrainingExampleOptions create_training_example_options) {
    IBMWatsonValidator.notNull(create_training_example_options, 'create_training_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_post(URL + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples', new String[]{ create_training_example_options.environmentId(), create_training_example_options.collectionId(), create_training_example_options.queryId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (create_training_example_options.documentId() != null) {
      contentJson.put('document_id', create_training_example_options.documentId());
    }
    if (create_training_example_options.crossReference() != null) {
      contentJson.put('cross_reference', create_training_example_options.crossReference());
    }
    if (create_training_example_options.relevance() != null) {
      contentJson.put('relevance', create_training_example_options.relevance());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.TrainingExample) createServiceCall(builder.build(), DiscoveryV1Models.TrainingExample.class);
  }

  /**
   * Clears all training data for this collection.
   *
   * @param delete_all_training_data_options the {@link DiscoveryV1Models.DeleteAllTrainingDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteAllTrainingData(DiscoveryV1Models.DeleteAllTrainingDataOptions delete_all_training_data_options) {
    IBMWatsonValidator.notNull(delete_all_training_data_options, 'delete_all_training_data_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/environments/{0}/collections/{1}/training_data', new String[]{ delete_all_training_data_options.environmentId(), delete_all_training_data_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Removes the training data and all associated examples from the training data set.
   *
   * @param delete_training_data_options the {@link DiscoveryV1Models.DeleteTrainingDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteTrainingData(DiscoveryV1Models.DeleteTrainingDataOptions delete_training_data_options) {
    IBMWatsonValidator.notNull(delete_training_data_options, 'delete_training_data_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}', new String[]{ delete_training_data_options.environmentId(), delete_training_data_options.collectionId(), delete_training_data_options.queryId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Removes the example with the given ID for the training data query.
   *
   * @param delete_training_example_options the {@link DiscoveryV1Models.DeleteTrainingExampleOptions} containing the options for the call
   * @return the service call
   */
  public void deleteTrainingExample(DiscoveryV1Models.DeleteTrainingExampleOptions delete_training_example_options) {
    IBMWatsonValidator.notNull(delete_training_example_options, 'delete_training_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_delete(URL + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples/{3}', new String[]{ delete_training_example_options.environmentId(), delete_training_example_options.collectionId(), delete_training_example_options.queryId(), delete_training_example_options.exampleId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    createServiceCall(builder.build(), null);
  }

  /**
   * Shows details for a specific training data query, including the query string and all examples.
   *
   * @param get_training_data_options the {@link DiscoveryV1Models.GetTrainingDataOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.TrainingQuery} with the response
   */
  public DiscoveryV1Models.TrainingQuery getTrainingData(DiscoveryV1Models.GetTrainingDataOptions get_training_data_options) {
    IBMWatsonValidator.notNull(get_training_data_options, 'get_training_data_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}', new String[]{ get_training_data_options.environmentId(), get_training_data_options.collectionId(), get_training_data_options.queryId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.TrainingQuery) createServiceCall(builder.build(), DiscoveryV1Models.TrainingQuery.class);
  }

  /**
   * Gets the details for this training example.
   *
   * @param get_training_example_options the {@link DiscoveryV1Models.GetTrainingExampleOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.TrainingExample} with the response
   */
  public DiscoveryV1Models.TrainingExample getTrainingExample(DiscoveryV1Models.GetTrainingExampleOptions get_training_example_options) {
    IBMWatsonValidator.notNull(get_training_example_options, 'get_training_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples/{3}', new String[]{ get_training_example_options.environmentId(), get_training_example_options.collectionId(), get_training_example_options.queryId(), get_training_example_options.exampleId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.TrainingExample) createServiceCall(builder.build(), DiscoveryV1Models.TrainingExample.class);
  }

  /**
   * Lists the training data for this collection.
   *
   * @param list_training_data_options the {@link DiscoveryV1Models.ListTrainingDataOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.TrainingDataSet} with the response
   */
  public DiscoveryV1Models.TrainingDataSet listTrainingData(DiscoveryV1Models.ListTrainingDataOptions list_training_data_options) {
    IBMWatsonValidator.notNull(list_training_data_options, 'list_training_data_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_get(URL + String.format('/v1/environments/{0}/collections/{1}/training_data', new String[]{ list_training_data_options.environmentId(), list_training_data_options.collectionId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    return (DiscoveryV1Models.TrainingDataSet) createServiceCall(builder.build(), DiscoveryV1Models.TrainingDataSet.class);
  }

  /**
   * Changes the label or cross reference query for this training example.
   *
   * @param update_training_example_options the {@link DiscoveryV1Models.UpdateTrainingExampleOptions} containing the options for the call
   * @return the {@link DiscoveryV1Models.TrainingExample} with the response
   */
  public DiscoveryV1Models.TrainingExample updateTrainingExample(DiscoveryV1Models.UpdateTrainingExampleOptions update_training_example_options) {
    IBMWatsonValidator.notNull(update_training_example_options, 'update_training_example_options cannot be null');
    builder = IBMWatsonRequestBuilder.http_put(URL + String.format('/v1/environments/{0}/collections/{1}/training_data/{2}/examples/{3}', new String[]{ update_training_example_options.environmentId(), update_training_example_options.collectionId(), update_training_example_options.queryId(), update_training_example_options.exampleId() }));
    builder.queryParams(new Map<String, String> {
      'version' => versionDate
    });
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (update_training_example_options.crossReference() != null) {
      contentJson.put('cross_reference', update_training_example_options.crossReference());
    }
    if (update_training_example_options.relevance() != null) {
      contentJson.put('relevance', update_training_example_options.relevance());
    }
    builder.bodyJson(JSON.serialize(contentJson));
    return (DiscoveryV1Models.TrainingExample) createServiceCall(builder.build(), DiscoveryV1Models.TrainingExample.class);
  }

}
