public class IBMDiscoveryV1Models {
  /**
   * The addDocument options.
   */
  public class AddDocumentOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private IBMWatsonFile file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the file_serialized_name.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file_serialized_name
     */
    public IBMWatsonFile file() {
      return file_serialized_name;
    }
    /**
     * Gets the filename_serialized_name.
     *
     * The filename for file.
     *
     * @return the filename_serialized_name
     */
    public String filename() {
      return filename_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1 MB are rejected. Example:  ``` {   "Creator": "Johnny Appleseed",   "Subject": "Apples" } ```.
     *
     * @return the metadata_serialized_name
     */
    public String metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the file_content_type_serialized_name.
     *
     * The content type of file.
     *
     * @return the file_content_type_serialized_name
     */
    public String fileContentType() {
      return file_content_type_serialized_name;
    }
    private AddDocumentOptions(AddDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      file_serialized_name = builder.file_serialized_name;
      filename_serialized_name = builder.filename_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      file_content_type_serialized_name = builder.file_content_type_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder newBuilder() {
      return new AddDocumentOptionsBuilder(this);
    }

  }

  /**
   * AddDocumentOptions Builder.
   */
  public class AddDocumentOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private IBMWatsonFile file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;

    private AddDocumentOptionsBuilder(AddDocumentOptions addDocumentOptions) {
      environment_id_serialized_name = addDocumentOptions.environment_id_serialized_name;
      collection_id_serialized_name = addDocumentOptions.collection_id_serialized_name;
      file_serialized_name = addDocumentOptions.file_serialized_name;
      filename_serialized_name = addDocumentOptions.filename_serialized_name;
      metadata_serialized_name = addDocumentOptions.metadata_serialized_name;
      file_content_type_serialized_name = addDocumentOptions.file_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public AddDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public AddDocumentOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a AddDocumentOptions.
     *
     * @return the addDocumentOptions
     */
    public AddDocumentOptions build() {
      return new AddDocumentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the file_serialized_name.
     *
     * @param file the file
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder file(IBMWatsonFile file) {
      this.file_serialized_name = file;
      return this;
    }

    /**
     * Set the filename_serialized_name.
     *
     * @param filename the filename
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder filename(String filename) {
      this.filename_serialized_name = filename;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder metadata(String metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the file_content_type_serialized_name.
     *
     * @param fileContentType the fileContentType
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder fileContentType(String fileContentType) {
      this.file_content_type_serialized_name = fileContentType;
      return this;
    }
  }

  /**
   * The addTrainingData options.
   */
  public class AddTrainingDataOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String natural_language_query_serialized_name;
    private String filter_serialized_name;
    private List<TrainingExample> examples_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the natural_language_query_serialized_name.
     *
     * @return the natural_language_query_serialized_name
     */
    public String naturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the examples_serialized_name.
     *
     * @return the examples_serialized_name
     */
    public List<TrainingExample> examples() {
      return examples_serialized_name;
    }
    private AddTrainingDataOptions(AddTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      natural_language_query_serialized_name = builder.natural_language_query_serialized_name;
      filter_serialized_name = builder.filter_serialized_name;
      examples_serialized_name = builder.examples_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder newBuilder() {
      return new AddTrainingDataOptionsBuilder(this);
    }

  }

  /**
   * AddTrainingDataOptions Builder.
   */
  public class AddTrainingDataOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String natural_language_query_serialized_name;
    private String filter_serialized_name;
    private List<TrainingExample> examples_serialized_name;

    private AddTrainingDataOptionsBuilder(AddTrainingDataOptions addTrainingDataOptions) {
      environment_id_serialized_name = addTrainingDataOptions.environment_id_serialized_name;
      collection_id_serialized_name = addTrainingDataOptions.collection_id_serialized_name;
      natural_language_query_serialized_name = addTrainingDataOptions.natural_language_query_serialized_name;
      filter_serialized_name = addTrainingDataOptions.filter_serialized_name;
      examples_serialized_name = addTrainingDataOptions.examples_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public AddTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public AddTrainingDataOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a AddTrainingDataOptions.
     *
     * @return the addTrainingDataOptions
     */
    public AddTrainingDataOptions build() {
      return new AddTrainingDataOptions(this);
    }

    /**
     * Adds an examples to examples_serialized_name.
     *
     * @param examples the new examples
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder addExamples(TrainingExample examples) {
      IBMWatsonValidator.notNull(examples, 'examples cannot be null');
      if (this.examples_serialized_name == null) {
        this.examples_serialized_name = new List<TrainingExample>();
      }
      this.examples_serialized_name.add(examples);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder filter(String filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the examples_serialized_name.
     * Existing examples_serialized_name will be replaced.
     *
     * @param examples the examples
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder examples(List<TrainingExample> examples) {
      this.examples_serialized_name = examples;
      return this;
    }
  }

  /**
   * AggregationResult.
   */
  public class AggregationResult extends IBMWatsonGenericModel {
    private String key_serialized_name;
    private Long matching_results_serialized_name;
    private List<QueryAggregation> aggregations_serialized_name;
    /**
     * Gets the key_serialized_name.
     *
     * Key that matched the aggregation type.
     *
     * @return the key_serialized_name
     */
    @AuraEnabled
    public String getKey() {
      return key_serialized_name;
    }
    /**
     * Gets the matching_results_serialized_name.
     *
     * Number of matching results.
     *
     * @return the matching_results_serialized_name
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
    /**
     * Gets the aggregations_serialized_name.
     *
     * Aggregations returned in the case of chained aggregations.
     *
     * @return the aggregations_serialized_name
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }

    /**
     * Sets the key_serialized_name.
     *
     * @param key the new key
     */
    public void setKey(final String key) {
      this.key_serialized_name = key;
    }

    /**
     * Sets the matching_results_serialized_name.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AggregationResult ret = (AggregationResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for aggregations_serialized_name
      List<QueryAggregation> newAggregations = new List<QueryAggregation>();
      List<QueryAggregation> deserializedAggregations = ret.getAggregations();
      if (deserializedAggregations != null) {
        for (Integer i = 0; i < deserializedAggregations.size(); i++) {
          QueryAggregation currentItem = ret.getAggregations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aggregations_serialized_name');
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryAggregation.class);
          newAggregations.add(newItem);
        }
        ret.setAggregations(newAggregations);
      }

      return ret;
    }
  }

  /**
   * Calculation.
   */
  public class Calculation extends IBMWatsonGenericModel {
    private Double value_serialized_name;
    /**
     * Gets the value_serialized_name.
     *
     * Value of the aggregation. (For 'max' and 'min' type).
     *
     * @return the value_serialized_name
     */
    @AuraEnabled
    public Double getValue() {
      return value_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Calculation ret = (Calculation) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A collection for storing documents.
   */
  public class Collection extends IBMWatsonGenericModel {
    private String collection_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String status_serialized_name;
    private String configuration_id_serialized_name;
    private String language_serialized_name;
    private DocumentCounts document_counts_serialized_name;
    private CollectionDiskUsage disk_usage_serialized_name;
    private TrainingStatus training_status_serialized_name;
    /**
     * Gets the collection_id_serialized_name.
     *
     * The unique identifier of the collection.
     *
     * @return the collection_id_serialized_name
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the collection.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the collection.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The creation date of the collection in the format yyyy-MM-dd'T'HH:mmcon:ss.SSS'Z'.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp of when the collection was last updated in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The status of the collection.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The unique identifier of the collection's configuration.
     *
     * @return the configuration_id_serialized_name
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the documents stored in the collection. Permitted values include `en_us` (U.S. English), `de` (German), and `es` (Spanish).
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the document_counts_serialized_name.
     *
     * The object providing information about the documents in the collection. Present only when retrieving details of a collection.
     *
     * @return the document_counts_serialized_name
     */
    @AuraEnabled
    public DocumentCounts getDocumentCounts() {
      return document_counts_serialized_name;
    }
    /**
     * Gets the disk_usage_serialized_name.
     *
     * The object providing information about the disk usage of the collection. Present only when retrieving details of a collection.
     *
     * @return the disk_usage_serialized_name
     */
    @AuraEnabled
    public CollectionDiskUsage getDiskUsage() {
      return disk_usage_serialized_name;
    }
    /**
     * Gets the training_status_serialized_name.
     *
     * Provides information about the status of relevance training for collection.
     *
     * @return the training_status_serialized_name
     */
    @AuraEnabled
    public TrainingStatus getTrainingStatus() {
      return training_status_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the configuration_id_serialized_name.
     *
     * @param configurationId the new configurationId
     */
    public void setConfigurationId(final String configurationId) {
      this.configuration_id_serialized_name = configurationId;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the document_counts_serialized_name.
     *
     * @param documentCounts the new documentCounts
     */
    public void setDocumentCounts(final DocumentCounts documentCounts) {
      this.document_counts_serialized_name = documentCounts;
    }

    /**
     * Sets the disk_usage_serialized_name.
     *
     * @param diskUsage the new diskUsage
     */
    public void setDiskUsage(final CollectionDiskUsage diskUsage) {
      this.disk_usage_serialized_name = diskUsage;
    }

    /**
     * Sets the training_status_serialized_name.
     *
     * @param trainingStatus the new trainingStatus
     */
    public void setTrainingStatus(final TrainingStatus trainingStatus) {
      this.training_status_serialized_name = trainingStatus;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Map<String, Object> trainingStatus = (Map<String, Object>) jsonMap.remove('training_status_serialized_name');
      Collection ret = (Collection) super.deserialize(JSON.serialize(jsonMap), jsonMap, classType);

      // calling custom deserializer for document_counts_serialized_name
      DocumentCounts newDocumentCounts = (DocumentCounts) new DocumentCounts().deserialize(JSON.serialize(ret.getDocumentCounts()), (Map<String, Object>) jsonMap.get('document_counts_serialized_name'), DocumentCounts.class);
      ret.setDocumentCounts(newDocumentCounts);

      // calling custom deserializer for disk_usage_serialized_name
      CollectionDiskUsage newDiskUsage = (CollectionDiskUsage) new CollectionDiskUsage().deserialize(JSON.serialize(ret.getDiskUsage()), (Map<String, Object>) jsonMap.get('disk_usage_serialized_name'), CollectionDiskUsage.class);
      ret.setDiskUsage(newDiskUsage);

      // calling custom deserializer for training_status_serialized_name
      TrainingStatus newTrainingStatus = (TrainingStatus) new TrainingStatus().deserialize(JSON.serialize(trainingStatus), trainingStatus, TrainingStatus.class);
      ret.setTrainingStatus(newTrainingStatus);

      return ret;
    }
  }

  /**
   * Summary of the disk usage statistics for this collection.
   */
  public class CollectionDiskUsage extends IBMWatsonGenericModel {
    private Long used_bytes_serialized_name;
    /**
     * Gets the used_bytes_serialized_name.
     *
     * Number of bytes used by the collection.
     *
     * @return the used_bytes_serialized_name
     */
    @AuraEnabled
    public Long getUsedBytes() {
      return used_bytes_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CollectionDiskUsage ret = (CollectionDiskUsage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Summary of the collection usage in the environment.
   */
  public class CollectionUsage extends IBMWatsonGenericModel {
    private Long available_serialized_name;
    private Long maximum_allowed_serialized_name;
    /**
     * Gets the available_serialized_name.
     *
     * Number of active collections in the environment.
     *
     * @return the available_serialized_name
     */
    @AuraEnabled
    public Long getAvailable() {
      return available_serialized_name;
    }
    /**
     * Gets the maximum_allowed_serialized_name.
     *
     * Total number of collections allowed in the environment.
     *
     * @return the maximum_allowed_serialized_name
     */
    @AuraEnabled
    public Long getMaximumAllowed() {
      return maximum_allowed_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CollectionUsage ret = (CollectionUsage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A custom configuration for the environment.
   */
  public class Configuration extends IBMWatsonGenericModel {
    private String configuration_id_serialized_name;
    private String name_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String description_serialized_name;
    private Conversions conversions_serialized_name;
    private List<Enrichment> enrichments_serialized_name;
    private List<NormalizationOperation> normalizations_serialized_name;
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The unique identifier of the configuration.
     *
     * @return the configuration_id_serialized_name
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the configuration.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The creation date of the configuration in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp of when the configuration was last updated in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the configuration, if available.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the conversions_serialized_name.
     *
     * The document conversion settings for the configuration.
     *
     * @return the conversions_serialized_name
     */
    @AuraEnabled
    public Conversions getConversions() {
      return conversions_serialized_name;
    }
    /**
     * Gets the enrichments_serialized_name.
     *
     * An array of document enrichment settings for the configuration.
     *
     * @return the enrichments_serialized_name
     */
    @AuraEnabled
    public List<Enrichment> getEnrichments() {
      return enrichments_serialized_name;
    }
    /**
     * Gets the normalizations_serialized_name.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the normalizations_serialized_name
     */
    @AuraEnabled
    public List<NormalizationOperation> getNormalizations() {
      return normalizations_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the conversions_serialized_name.
     *
     * @param conversions the new conversions
     */
    public void setConversions(final Conversions conversions) {
      this.conversions_serialized_name = conversions;
    }

    /**
     * Sets the enrichments_serialized_name.
     *
     * @param enrichments the new enrichments
     */
    public void setEnrichments(final List<Enrichment> enrichments) {
      this.enrichments_serialized_name = enrichments;
    }

    /**
     * Sets the normalizations_serialized_name.
     *
     * @param normalizations the new normalizations
     */
    public void setNormalizations(final List<NormalizationOperation> normalizations) {
      this.normalizations_serialized_name = normalizations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Configuration ret = (Configuration) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for conversions_serialized_name
      Conversions newConversions = (Conversions) new Conversions().deserialize(JSON.serialize(ret.getConversions()), (Map<String, Object>) jsonMap.get('conversions_serialized_name'), Conversions.class);
      ret.setConversions(newConversions);

      // calling custom deserializer for enrichments_serialized_name
      List<Enrichment> newEnrichments = new List<Enrichment>();
      List<Enrichment> deserializedEnrichments = ret.getEnrichments();
      if (deserializedEnrichments != null) {
        for (Integer i = 0; i < deserializedEnrichments.size(); i++) {
          Enrichment currentItem = ret.getEnrichments().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('enrichments_serialized_name');
          Enrichment newItem = (Enrichment) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Enrichment.class);
          newEnrichments.add(newItem);
        }
        ret.setEnrichments(newEnrichments);
      }

      // calling custom deserializer for normalizations_serialized_name
      List<NormalizationOperation> newNormalizations = new List<NormalizationOperation>();
      List<NormalizationOperation> deserializedNormalizations = ret.getNormalizations();
      if (deserializedNormalizations != null) {
        for (Integer i = 0; i < deserializedNormalizations.size(); i++) {
          NormalizationOperation currentItem = ret.getNormalizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('normalizations_serialized_name');
          NormalizationOperation newItem = (NormalizationOperation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), NormalizationOperation.class);
          newNormalizations.add(newItem);
        }
        ret.setNormalizations(newNormalizations);
      }

      return ret;
    }
  }

  /**
   * Document conversion settings.
   */
  public class Conversions extends IBMWatsonGenericModel {
    private PdfSettings pdf_serialized_name;
    private WordSettings word_serialized_name;
    private HtmlSettings html_serialized_name;
    private List<NormalizationOperation> json_normalizations_serialized_name;
    /**
     * Gets the pdf_serialized_name.
     *
     * A list of PDF conversion settings.
     *
     * @return the pdf_serialized_name
     */
    @AuraEnabled
    public PdfSettings getPdf() {
      return pdf_serialized_name;
    }
    /**
     * Gets the word_serialized_name.
     *
     * A list of Word conversion settings.
     *
     * @return the word_serialized_name
     */
    @AuraEnabled
    public WordSettings getWord() {
      return word_serialized_name;
    }
    /**
     * Gets the html_serialized_name.
     *
     * A list of HTML conversion settings.
     *
     * @return the html_serialized_name
     */
    @AuraEnabled
    public HtmlSettings getHtml() {
      return html_serialized_name;
    }
    /**
     * Gets the json_normalizations_serialized_name.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the json_normalizations_serialized_name
     */
    @AuraEnabled
    public List<NormalizationOperation> getJsonNormalizations() {
      return json_normalizations_serialized_name;
    }

    /**
     * Sets the pdf_serialized_name.
     *
     * @param pdf the new pdf
     */
    public void setPdf(final PdfSettings pdf) {
      this.pdf_serialized_name = pdf;
    }

    /**
     * Sets the word_serialized_name.
     *
     * @param word the new word
     */
    public void setWord(final WordSettings word) {
      this.word_serialized_name = word;
    }

    /**
     * Sets the html_serialized_name.
     *
     * @param html the new html
     */
    public void setHtml(final HtmlSettings html) {
      this.html_serialized_name = html;
    }

    /**
     * Sets the json_normalizations_serialized_name.
     *
     * @param jsonNormalizations the new jsonNormalizations
     */
    public void setJsonNormalizations(final List<NormalizationOperation> jsonNormalizations) {
      this.json_normalizations_serialized_name = jsonNormalizations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Conversions ret = (Conversions) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for pdf_serialized_name
      PdfSettings newPdf = (PdfSettings) new PdfSettings().deserialize(JSON.serialize(ret.getPdf()), (Map<String, Object>) jsonMap.get('pdf_serialized_name'), PdfSettings.class);
      ret.setPdf(newPdf);

      // calling custom deserializer for word_serialized_name
      WordSettings newWord = (WordSettings) new WordSettings().deserialize(JSON.serialize(ret.getWord()), (Map<String, Object>) jsonMap.get('word_serialized_name'), WordSettings.class);
      ret.setWord(newWord);

      // calling custom deserializer for html_serialized_name
      HtmlSettings newHtml = (HtmlSettings) new HtmlSettings().deserialize(JSON.serialize(ret.getHtml()), (Map<String, Object>) jsonMap.get('html_serialized_name'), HtmlSettings.class);
      ret.setHtml(newHtml);

      // calling custom deserializer for json_normalizations_serialized_name
      List<NormalizationOperation> newJsonNormalizations = new List<NormalizationOperation>();
      List<NormalizationOperation> deserializedJsonNormalizations = ret.getJsonNormalizations();
      if (deserializedJsonNormalizations != null) {
        for (Integer i = 0; i < deserializedJsonNormalizations.size(); i++) {
          NormalizationOperation currentItem = ret.getJsonNormalizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('json_normalizations_serialized_name');
          NormalizationOperation newItem = (NormalizationOperation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), NormalizationOperation.class);
          newJsonNormalizations.add(newItem);
        }
        ret.setJsonNormalizations(newJsonNormalizations);
      }

      return ret;
    }
  }

  /**
   * The createCollection options.
   */
  public class CreateCollectionOptions {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String configuration_id_serialized_name;
    private String language_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the collection to be created.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * A description of the collection.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The ID of the configuration in which the collection is to be created.
     *
     * @return the configuration_id_serialized_name
     */
    public String configurationId() {
      return configuration_id_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the documents stored in the collection, in the form of an ISO 639-1 language code.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    private CreateCollectionOptions(CreateCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.name_serialized_name, 'name_serialized_name cannot be null');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      configuration_id_serialized_name = builder.configuration_id_serialized_name;
      language_serialized_name = builder.language_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder newBuilder() {
      return new CreateCollectionOptionsBuilder(this);
    }

  }

  /**
   * CreateCollectionOptions Builder.
   */
  public class CreateCollectionOptionsBuilder {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String configuration_id_serialized_name;
    private String language_serialized_name;

    private CreateCollectionOptionsBuilder(CreateCollectionOptions createCollectionOptions) {
      environment_id_serialized_name = createCollectionOptions.environment_id_serialized_name;
      name_serialized_name = createCollectionOptions.name_serialized_name;
      description_serialized_name = createCollectionOptions.description_serialized_name;
      configuration_id_serialized_name = createCollectionOptions.configuration_id_serialized_name;
      language_serialized_name = createCollectionOptions.language_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param name the name
     */
    public CreateCollectionOptionsBuilder(String environmentId, String name) {
      this.environment_id_serialized_name = environmentId;
      this.name_serialized_name = name;
    }

    /**
     * Builds a CreateCollectionOptions.
     *
     * @return the createCollectionOptions
     */
    public CreateCollectionOptions build() {
      return new CreateCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configurationId the configurationId
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder configurationId(String configurationId) {
      this.configuration_id_serialized_name = configurationId;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }
  }

  /**
   * The createConfiguration options.
   */
  public class CreateConfigurationOptions {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private Conversions conversions_serialized_name;
    private List<Enrichment> enrichments_serialized_name;
    private List<NormalizationOperation> normalizations_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the configuration.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the configuration, if available.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the conversions_serialized_name.
     *
     * The document conversion settings for the configuration.
     *
     * @return the conversions_serialized_name
     */
    public Conversions conversions() {
      return conversions_serialized_name;
    }
    /**
     * Gets the enrichments_serialized_name.
     *
     * An array of document enrichment settings for the configuration.
     *
     * @return the enrichments_serialized_name
     */
    public List<Enrichment> enrichments() {
      return enrichments_serialized_name;
    }
    /**
     * Gets the normalizations_serialized_name.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the normalizations_serialized_name
     */
    public List<NormalizationOperation> normalizations() {
      return normalizations_serialized_name;
    }
    private CreateConfigurationOptions(CreateConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      conversions_serialized_name = builder.conversions_serialized_name;
      enrichments_serialized_name = builder.enrichments_serialized_name;
      normalizations_serialized_name = builder.normalizations_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder newBuilder() {
      return new CreateConfigurationOptionsBuilder(this);
    }

  }

  /**
   * CreateConfigurationOptions Builder.
   */
  public class CreateConfigurationOptionsBuilder {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private Conversions conversions_serialized_name;
    private List<Enrichment> enrichments_serialized_name;
    private List<NormalizationOperation> normalizations_serialized_name;

    private CreateConfigurationOptionsBuilder(CreateConfigurationOptions createConfigurationOptions) {
      environment_id_serialized_name = createConfigurationOptions.environment_id_serialized_name;
      name_serialized_name = createConfigurationOptions.name_serialized_name;
      description_serialized_name = createConfigurationOptions.description_serialized_name;
      conversions_serialized_name = createConfigurationOptions.conversions_serialized_name;
      enrichments_serialized_name = createConfigurationOptions.enrichments_serialized_name;
      normalizations_serialized_name = createConfigurationOptions.normalizations_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public CreateConfigurationOptionsBuilder(String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Builds a CreateConfigurationOptions.
     *
     * @return the createConfigurationOptions
     */
    public CreateConfigurationOptions build() {
      return new CreateConfigurationOptions(this);
    }

    /**
     * Adds an enrichments to enrichments_serialized_name.
     *
     * @param enrichments the new enrichments
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addEnrichments(Enrichment enrichments) {
      IBMWatsonValidator.notNull(enrichments, 'enrichments cannot be null');
      if (this.enrichments_serialized_name == null) {
        this.enrichments_serialized_name = new List<Enrichment>();
      }
      this.enrichments_serialized_name.add(enrichments);
      return this;
    }

    /**
     * Adds an normalizations to normalizations_serialized_name.
     *
     * @param normalizations the new normalizations
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addNormalizations(NormalizationOperation normalizations) {
      IBMWatsonValidator.notNull(normalizations, 'normalizations cannot be null');
      if (this.normalizations_serialized_name == null) {
        this.normalizations_serialized_name = new List<NormalizationOperation>();
      }
      this.normalizations_serialized_name.add(normalizations);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the conversions_serialized_name.
     *
     * @param conversions the conversions
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder conversions(Conversions conversions) {
      this.conversions_serialized_name = conversions;
      return this;
    }

    /**
     * Set the enrichments_serialized_name.
     * Existing enrichments_serialized_name will be replaced.
     *
     * @param enrichments the enrichments
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder enrichments(List<Enrichment> enrichments) {
      this.enrichments_serialized_name = enrichments;
      return this;
    }

    /**
     * Set the normalizations_serialized_name.
     * Existing normalizations_serialized_name will be replaced.
     *
     * @param normalizations the normalizations
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder normalizations(List<NormalizationOperation> normalizations) {
      this.normalizations_serialized_name = normalizations;
      return this;
    }

    /**
     * Set the configuration.
     *
     * @param configuration the configuration
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder configuration(Configuration configuration) {
      this.name_serialized_name = configuration.getName();
      this.description_serialized_name = configuration.getDescription();
      this.conversions_serialized_name = configuration.getConversions();
      this.enrichments_serialized_name = configuration.getEnrichments();
      this.normalizations_serialized_name = configuration.getNormalizations();
      return this;
    }
  }

  /**
   * The createEnvironment options.
   */
  public class CreateEnvironmentOptions {
    private String name_serialized_name;
    private String description_serialized_name;
    private Long size_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * Name that identifies the environment.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * Description of the environment.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the size_serialized_name.
     *
     * **Deprecated**: Size of the environment.
     *
     * @return the size_serialized_name
     */
    public Long size() {
      return size_serialized_name;
    }
    private CreateEnvironmentOptions(CreateEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name_serialized_name, 'name_serialized_name cannot be null');
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      size_serialized_name = builder.size_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder newBuilder() {
      return new CreateEnvironmentOptionsBuilder(this);
    }

  }

  /**
   * CreateEnvironmentOptions Builder.
   */
  public class CreateEnvironmentOptionsBuilder {
    private String name_serialized_name;
    private String description_serialized_name;
    private Long size_serialized_name;

    private CreateEnvironmentOptionsBuilder(CreateEnvironmentOptions createEnvironmentOptions) {
      name_serialized_name = createEnvironmentOptions.name_serialized_name;
      description_serialized_name = createEnvironmentOptions.description_serialized_name;
      size_serialized_name = createEnvironmentOptions.size_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param name the name
     */
    public CreateEnvironmentOptionsBuilder(String name) {
      this.name_serialized_name = name;
    }

    /**
     * Builds a CreateEnvironmentOptions.
     *
     * @return the createEnvironmentOptions
     */
    public CreateEnvironmentOptions build() {
      return new CreateEnvironmentOptions(this);
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the size_serialized_name.
     *
     * @param size the size
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder size(Long size) {
      this.size_serialized_name = size;
      return this;
    }
  }

  /**
   * The createTrainingExample options.
   */
  public class CreateTrainingExampleOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String document_id_serialized_name;
    private String cross_reference_serialized_name;
    private Long relevance_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * The ID of the query used for training.
     *
     * @return the query_id_serialized_name
     */
    public String queryId() {
      return query_id_serialized_name;
    }
    /**
     * Gets the document_id_serialized_name.
     *
     * @return the document_id_serialized_name
     */
    public String documentId() {
      return document_id_serialized_name;
    }
    /**
     * Gets the cross_reference_serialized_name.
     *
     * @return the cross_reference_serialized_name
     */
    public String crossReference() {
      return cross_reference_serialized_name;
    }
    /**
     * Gets the relevance_serialized_name.
     *
     * @return the relevance_serialized_name
     */
    public Long relevance() {
      return relevance_serialized_name;
    }
    private CreateTrainingExampleOptions(CreateTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id_serialized_name, 'query_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      query_id_serialized_name = builder.query_id_serialized_name;
      document_id_serialized_name = builder.document_id_serialized_name;
      cross_reference_serialized_name = builder.cross_reference_serialized_name;
      relevance_serialized_name = builder.relevance_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder newBuilder() {
      return new CreateTrainingExampleOptionsBuilder(this);
    }

  }

  /**
   * CreateTrainingExampleOptions Builder.
   */
  public class CreateTrainingExampleOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String document_id_serialized_name;
    private String cross_reference_serialized_name;
    private Long relevance_serialized_name;

    private CreateTrainingExampleOptionsBuilder(CreateTrainingExampleOptions createTrainingExampleOptions) {
      environment_id_serialized_name = createTrainingExampleOptions.environment_id_serialized_name;
      collection_id_serialized_name = createTrainingExampleOptions.collection_id_serialized_name;
      query_id_serialized_name = createTrainingExampleOptions.query_id_serialized_name;
      document_id_serialized_name = createTrainingExampleOptions.document_id_serialized_name;
      cross_reference_serialized_name = createTrainingExampleOptions.cross_reference_serialized_name;
      relevance_serialized_name = createTrainingExampleOptions.relevance_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param queryId the queryId
     */
    public CreateTrainingExampleOptionsBuilder(String environmentId, String collectionId, String queryId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.query_id_serialized_name = queryId;
    }

    /**
     * Builds a CreateTrainingExampleOptions.
     *
     * @return the createTrainingExampleOptions
     */
    public CreateTrainingExampleOptions build() {
      return new CreateTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param queryId the queryId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder queryId(String queryId) {
      this.query_id_serialized_name = queryId;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param documentId the documentId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder documentId(String documentId) {
      this.document_id_serialized_name = documentId;
      return this;
    }

    /**
     * Set the cross_reference_serialized_name.
     *
     * @param crossReference the crossReference
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder crossReference(String crossReference) {
      this.cross_reference_serialized_name = crossReference;
      return this;
    }

    /**
     * Set the relevance_serialized_name.
     *
     * @param relevance the relevance
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder relevance(Long relevance) {
      this.relevance_serialized_name = relevance;
      return this;
    }

    /**
     * Set the trainingExample.
     *
     * @param trainingExample the trainingExample
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder trainingExample(TrainingExample trainingExample) {
      this.document_id_serialized_name = trainingExample.getDocumentId();
      this.cross_reference_serialized_name = trainingExample.getCrossReference();
      this.relevance_serialized_name = trainingExample.getRelevance();
      return this;
    }
  }

  /**
   * The deleteAllTrainingData options.
   */
  public class DeleteAllTrainingDataOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    private DeleteAllTrainingDataOptions(DeleteAllTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder newBuilder() {
      return new DeleteAllTrainingDataOptionsBuilder(this);
    }

  }

  /**
   * DeleteAllTrainingDataOptions Builder.
   */
  public class DeleteAllTrainingDataOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;

    private DeleteAllTrainingDataOptionsBuilder(DeleteAllTrainingDataOptions deleteAllTrainingDataOptions) {
      environment_id_serialized_name = deleteAllTrainingDataOptions.environment_id_serialized_name;
      collection_id_serialized_name = deleteAllTrainingDataOptions.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteAllTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public DeleteAllTrainingDataOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a DeleteAllTrainingDataOptions.
     *
     * @return the deleteAllTrainingDataOptions
     */
    public DeleteAllTrainingDataOptions build() {
      return new DeleteAllTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }
  }

  /**
   * The deleteCollection options.
   */
  public class DeleteCollectionOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    private DeleteCollectionOptions(DeleteCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder newBuilder() {
      return new DeleteCollectionOptionsBuilder(this);
    }

  }

  /**
   * DeleteCollectionOptions Builder.
   */
  public class DeleteCollectionOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;

    private DeleteCollectionOptionsBuilder(DeleteCollectionOptions deleteCollectionOptions) {
      environment_id_serialized_name = deleteCollectionOptions.environment_id_serialized_name;
      collection_id_serialized_name = deleteCollectionOptions.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public DeleteCollectionOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a DeleteCollectionOptions.
     *
     * @return the deleteCollectionOptions
     */
    public DeleteCollectionOptions build() {
      return new DeleteCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }
  }

  /**
   * The deleteConfiguration options.
   */
  public class DeleteConfigurationOptions {
    private String environment_id_serialized_name;
    private String configuration_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The ID of the configuration.
     *
     * @return the configuration_id_serialized_name
     */
    public String configurationId() {
      return configuration_id_serialized_name;
    }
    private DeleteConfigurationOptions(DeleteConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configuration_id_serialized_name, 'configuration_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      configuration_id_serialized_name = builder.configuration_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder newBuilder() {
      return new DeleteConfigurationOptionsBuilder(this);
    }

  }

  /**
   * DeleteConfigurationOptions Builder.
   */
  public class DeleteConfigurationOptionsBuilder {
    private String environment_id_serialized_name;
    private String configuration_id_serialized_name;

    private DeleteConfigurationOptionsBuilder(DeleteConfigurationOptions deleteConfigurationOptions) {
      environment_id_serialized_name = deleteConfigurationOptions.environment_id_serialized_name;
      configuration_id_serialized_name = deleteConfigurationOptions.configuration_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param configurationId the configurationId
     */
    public DeleteConfigurationOptionsBuilder(String environmentId, String configurationId) {
      this.environment_id_serialized_name = environmentId;
      this.configuration_id_serialized_name = configurationId;
    }

    /**
     * Builds a DeleteConfigurationOptions.
     *
     * @return the deleteConfigurationOptions
     */
    public DeleteConfigurationOptions build() {
      return new DeleteConfigurationOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configurationId the configurationId
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder configurationId(String configurationId) {
      this.configuration_id_serialized_name = configurationId;
      return this;
    }
  }

  /**
   * The deleteDocument options.
   */
  public class DeleteDocumentOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String document_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the document_id_serialized_name.
     *
     * The ID of the document.
     *
     * @return the document_id_serialized_name
     */
    public String documentId() {
      return document_id_serialized_name;
    }
    private DeleteDocumentOptions(DeleteDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.document_id_serialized_name, 'document_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      document_id_serialized_name = builder.document_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder newBuilder() {
      return new DeleteDocumentOptionsBuilder(this);
    }

  }

  /**
   * DeleteDocumentOptions Builder.
   */
  public class DeleteDocumentOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String document_id_serialized_name;

    private DeleteDocumentOptionsBuilder(DeleteDocumentOptions deleteDocumentOptions) {
      environment_id_serialized_name = deleteDocumentOptions.environment_id_serialized_name;
      collection_id_serialized_name = deleteDocumentOptions.collection_id_serialized_name;
      document_id_serialized_name = deleteDocumentOptions.document_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param documentId the documentId
     */
    public DeleteDocumentOptionsBuilder(String environmentId, String collectionId, String documentId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.document_id_serialized_name = documentId;
    }

    /**
     * Builds a DeleteDocumentOptions.
     *
     * @return the deleteDocumentOptions
     */
    public DeleteDocumentOptions build() {
      return new DeleteDocumentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param documentId the documentId
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder documentId(String documentId) {
      this.document_id_serialized_name = documentId;
      return this;
    }
  }

  /**
   * The deleteEnvironment options.
   */
  public class DeleteEnvironmentOptions {
    private String environment_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    private DeleteEnvironmentOptions(DeleteEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteEnvironmentOptions builder
     */
    public DeleteEnvironmentOptionsBuilder newBuilder() {
      return new DeleteEnvironmentOptionsBuilder(this);
    }

  }

  /**
   * DeleteEnvironmentOptions Builder.
   */
  public class DeleteEnvironmentOptionsBuilder {
    private String environment_id_serialized_name;

    private DeleteEnvironmentOptionsBuilder(DeleteEnvironmentOptions deleteEnvironmentOptions) {
      environment_id_serialized_name = deleteEnvironmentOptions.environment_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public DeleteEnvironmentOptionsBuilder(String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Builds a DeleteEnvironmentOptions.
     *
     * @return the deleteEnvironmentOptions
     */
    public DeleteEnvironmentOptions build() {
      return new DeleteEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the DeleteEnvironmentOptions builder
     */
    public DeleteEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }
  }

  /**
   * The deleteTrainingData options.
   */
  public class DeleteTrainingDataOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * The ID of the query used for training.
     *
     * @return the query_id_serialized_name
     */
    public String queryId() {
      return query_id_serialized_name;
    }
    private DeleteTrainingDataOptions(DeleteTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id_serialized_name, 'query_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      query_id_serialized_name = builder.query_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder newBuilder() {
      return new DeleteTrainingDataOptionsBuilder(this);
    }

  }

  /**
   * DeleteTrainingDataOptions Builder.
   */
  public class DeleteTrainingDataOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;

    private DeleteTrainingDataOptionsBuilder(DeleteTrainingDataOptions deleteTrainingDataOptions) {
      environment_id_serialized_name = deleteTrainingDataOptions.environment_id_serialized_name;
      collection_id_serialized_name = deleteTrainingDataOptions.collection_id_serialized_name;
      query_id_serialized_name = deleteTrainingDataOptions.query_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param queryId the queryId
     */
    public DeleteTrainingDataOptionsBuilder(String environmentId, String collectionId, String queryId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.query_id_serialized_name = queryId;
    }

    /**
     * Builds a DeleteTrainingDataOptions.
     *
     * @return the deleteTrainingDataOptions
     */
    public DeleteTrainingDataOptions build() {
      return new DeleteTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param queryId the queryId
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder queryId(String queryId) {
      this.query_id_serialized_name = queryId;
      return this;
    }
  }

  /**
   * The deleteTrainingExample options.
   */
  public class DeleteTrainingExampleOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String example_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * The ID of the query used for training.
     *
     * @return the query_id_serialized_name
     */
    public String queryId() {
      return query_id_serialized_name;
    }
    /**
     * Gets the example_id_serialized_name.
     *
     * The ID of the document as it is indexed.
     *
     * @return the example_id_serialized_name
     */
    public String exampleId() {
      return example_id_serialized_name;
    }
    private DeleteTrainingExampleOptions(DeleteTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id_serialized_name, 'query_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.example_id_serialized_name, 'example_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      query_id_serialized_name = builder.query_id_serialized_name;
      example_id_serialized_name = builder.example_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder newBuilder() {
      return new DeleteTrainingExampleOptionsBuilder(this);
    }

  }

  /**
   * DeleteTrainingExampleOptions Builder.
   */
  public class DeleteTrainingExampleOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String example_id_serialized_name;

    private DeleteTrainingExampleOptionsBuilder(DeleteTrainingExampleOptions deleteTrainingExampleOptions) {
      environment_id_serialized_name = deleteTrainingExampleOptions.environment_id_serialized_name;
      collection_id_serialized_name = deleteTrainingExampleOptions.collection_id_serialized_name;
      query_id_serialized_name = deleteTrainingExampleOptions.query_id_serialized_name;
      example_id_serialized_name = deleteTrainingExampleOptions.example_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param queryId the queryId
     * @param exampleId the exampleId
     */
    public DeleteTrainingExampleOptionsBuilder(String environmentId, String collectionId, String queryId, String exampleId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.query_id_serialized_name = queryId;
      this.example_id_serialized_name = exampleId;
    }

    /**
     * Builds a DeleteTrainingExampleOptions.
     *
     * @return the deleteTrainingExampleOptions
     */
    public DeleteTrainingExampleOptions build() {
      return new DeleteTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param queryId the queryId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder queryId(String queryId) {
      this.query_id_serialized_name = queryId;
      return this;
    }

    /**
     * Set the example_id_serialized_name.
     *
     * @param exampleId the exampleId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder exampleId(String exampleId) {
      this.example_id_serialized_name = exampleId;
      return this;
    }
  }

  /**
   * Summary of the disk usage statistics for the environment.
   */
  public class DiskUsage extends IBMWatsonGenericModel {
    private Long used_bytes_serialized_name;
    private Long maximum_allowed_bytes_serialized_name;
    private Long total_bytes_serialized_name;
    private String used_serialized_name;
    private String total_serialized_name;
    private Double percent_used_serialized_name;
    /**
     * Gets the used_bytes_serialized_name.
     *
     * Number of bytes used on the environment's disk capacity.
     *
     * @return the used_bytes_serialized_name
     */
    @AuraEnabled
    public Long getUsedBytes() {
      return used_bytes_serialized_name;
    }
    /**
     * Gets the maximum_allowed_bytes_serialized_name.
     *
     * Total number of bytes available in the environment's disk capacity.
     *
     * @return the maximum_allowed_bytes_serialized_name
     */
    @AuraEnabled
    public Long getMaximumAllowedBytes() {
      return maximum_allowed_bytes_serialized_name;
    }
    /**
     * Gets the total_bytes_serialized_name.
     *
     * **Deprecated**: Total number of bytes available in the environment's disk capacity.
     *
     * @return the total_bytes_serialized_name
     */
    @AuraEnabled
    public Long getTotalBytes() {
      return total_bytes_serialized_name;
    }
    /**
     * Gets the used_serialized_name.
     *
     * **Deprecated**: Amount of disk capacity used, in KB or GB format.
     *
     * @return the used_serialized_name
     */
    @AuraEnabled
    public String getUsed() {
      return used_serialized_name;
    }
    /**
     * Gets the total_serialized_name.
     *
     * **Deprecated**: Total amount of the environment's disk capacity, in KB or GB format.
     *
     * @return the total_serialized_name
     */
    @AuraEnabled
    public String getTotal() {
      return total_serialized_name;
    }
    /**
     * Gets the percent_used_serialized_name.
     *
     * **Deprecated**: Percentage of the environment's disk capacity that is being used.
     *
     * @return the percent_used_serialized_name
     */
    @AuraEnabled
    public Double getPercentUsed() {
      return percent_used_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DiskUsage ret = (DiskUsage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * DocumentAccepted.
   */
  public class DocumentAccepted extends IBMWatsonGenericModel {
    private String document_id_serialized_name;
    private String status_serialized_name;
    private List<Notice> notices_serialized_name;
    /**
     * Gets the document_id_serialized_name.
     *
     * The unique identifier of the ingested document.
     *
     * @return the document_id_serialized_name
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * Status of the document in the ingestion process.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the notices_serialized_name.
     *
     * Array of notices produced by the document-ingestion process.
     *
     * @return the notices_serialized_name
     */
    @AuraEnabled
    public List<Notice> getNotices() {
      return notices_serialized_name;
    }

    /**
     * Sets the document_id_serialized_name.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices the new notices
     */
    public void setNotices(final List<Notice> notices) {
      this.notices_serialized_name = notices;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocumentAccepted ret = (DocumentAccepted) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for notices_serialized_name
      List<Notice> newNotices = new List<Notice>();
      List<Notice> deserializedNotices = ret.getNotices();
      if (deserializedNotices != null) {
        for (Integer i = 0; i < deserializedNotices.size(); i++) {
          Notice currentItem = ret.getNotices().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('notices_serialized_name');
          Notice newItem = (Notice) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Notice.class);
          newNotices.add(newItem);
        }
        ret.setNotices(newNotices);
      }

      return ret;
    }
  }

  /**
   * DocumentCounts.
   */
  public class DocumentCounts extends IBMWatsonGenericModel {
    private Long available_serialized_name;
    private Long processing_serialized_name;
    private Long failed_serialized_name;
    /**
     * Gets the available_serialized_name.
     *
     * The total number of available documents in the collection.
     *
     * @return the available_serialized_name
     */
    @AuraEnabled
    public Long getAvailable() {
      return available_serialized_name;
    }
    /**
     * Gets the processing_serialized_name.
     *
     * The number of documents in the collection that are currently being processed.
     *
     * @return the processing_serialized_name
     */
    @AuraEnabled
    public Long getProcessing() {
      return processing_serialized_name;
    }
    /**
     * Gets the failed_serialized_name.
     *
     * The number of documents in the collection that failed to be ingested.
     *
     * @return the failed_serialized_name
     */
    @AuraEnabled
    public Long getFailed() {
      return failed_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocumentCounts ret = (DocumentCounts) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * DocumentSnapshot.
   */
  public class DocumentSnapshot extends IBMWatsonGenericModel {
    private String step_serialized_name;
    private IBMWatsonMapModel snapshot_serialized_name;
    /**
     * Gets the step_serialized_name.
     *
     * @return the step_serialized_name
     */
    @AuraEnabled
    public String getStep() {
      return step_serialized_name;
    }
    /**
     * Gets the snapshot_serialized_name.
     *
     * @return the snapshot_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getSnapshot() {
      return snapshot_serialized_name;
    }

    /**
     * Sets the step_serialized_name.
     *
     * @param step the new step
     */
    public void setStep(final String step) {
      this.step_serialized_name = step;
    }

    /**
     * Sets the snapshot_serialized_name.
     *
     * @param snapshot the new snapshot
     */
    public void setSnapshot(final IBMWatsonMapModel snapshot) {
      this.snapshot_serialized_name = snapshot;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocumentSnapshot ret = (DocumentSnapshot) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for snapshot_serialized_name
      IBMWatsonMapModel newSnapshot = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getSnapshot()), (Map<String, Object>) jsonMap.get('snapshot_serialized_name'), IBMWatsonMapModel.class);
      ret.setSnapshot(newSnapshot);

      return ret;
    }
  }

  /**
   * Status information about a submitted document.
   */
  public class DocumentStatus extends IBMWatsonGenericModel {
    private String document_id_serialized_name;
    private String configuration_id_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String status_serialized_name;
    private String status_description_serialized_name;
    private String filename_serialized_name;
    private String file_type_serialized_name;
    private String sha1_serialized_name;
    private List<Notice> notices_serialized_name;
    /**
     * Gets the document_id_serialized_name.
     *
     * The unique identifier of the document.
     *
     * @return the document_id_serialized_name
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The unique identifier for the configuration.
     *
     * @return the configuration_id_serialized_name
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The creation date of the document in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * Date of the most recent document update, in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * Status of the document in the ingestion process.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the status_description_serialized_name.
     *
     * Description of the document status.
     *
     * @return the status_description_serialized_name
     */
    @AuraEnabled
    public String getStatusDescription() {
      return status_description_serialized_name;
    }
    /**
     * Gets the filename_serialized_name.
     *
     * Name of the original source file (if available).
     *
     * @return the filename_serialized_name
     */
    @AuraEnabled
    public String getFilename() {
      return filename_serialized_name;
    }
    /**
     * Gets the file_type_serialized_name.
     *
     * The type of the original source file.
     *
     * @return the file_type_serialized_name
     */
    @AuraEnabled
    public String getFileType() {
      return file_type_serialized_name;
    }
    /**
     * Gets the sha1_serialized_name.
     *
     * The SHA-1 hash of the original source file (formatted as a hexadecimal string).
     *
     * @return the sha1_serialized_name
     */
    @AuraEnabled
    public String getSha1() {
      return sha1_serialized_name;
    }
    /**
     * Gets the notices_serialized_name.
     *
     * Array of notices produced by the document-ingestion process.
     *
     * @return the notices_serialized_name
     */
    @AuraEnabled
    public List<Notice> getNotices() {
      return notices_serialized_name;
    }

    /**
     * Sets the filename_serialized_name.
     *
     * @param filename the new filename
     */
    public void setFilename(final String filename) {
      this.filename_serialized_name = filename;
    }

    /**
     * Sets the file_type_serialized_name.
     *
     * @param fileType the new fileType
     */
    public void setFileType(final String fileType) {
      this.file_type_serialized_name = fileType;
    }

    /**
     * Sets the sha1_serialized_name.
     *
     * @param sha1 the new sha1
     */
    public void setSha1(final String sha1) {
      this.sha1_serialized_name = sha1;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices the new notices
     */
    public void setNotices(final List<Notice> notices) {
      this.notices_serialized_name = notices;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocumentStatus ret = (DocumentStatus) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for notices_serialized_name
      List<Notice> newNotices = new List<Notice>();
      List<Notice> deserializedNotices = ret.getNotices();
      if (deserializedNotices != null) {
        for (Integer i = 0; i < deserializedNotices.size(); i++) {
          Notice currentItem = ret.getNotices().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('notices_serialized_name');
          Notice newItem = (Notice) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Notice.class);
          newNotices.add(newItem);
        }
        ret.setNotices(newNotices);
      }

      return ret;
    }
  }

  /**
   * Enrichment.
   */
  public class Enrichment extends IBMWatsonGenericModel {
    private String description_serialized_name;
    private String destination_field_serialized_name;
    private String source_field_serialized_name;
    private Boolean overwrite_serialized_name;
    private String enrichment_serialized_name;
    private Boolean ignore_downstream_errors_serialized_name;
    private EnrichmentOptions options_serialized_name;
    /**
     * Gets the description_serialized_name.
     *
     * Describes what the enrichment step does.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the destination_field_serialized_name.
     *
     * Field where enrichments will be stored. This field must already exist or be at most 1 level deeper than an existing field. For example, if `text` is a top-level field with no sub-fields, `text.foo` is a valid destination but `text.foo.bar` is not.
     *
     * @return the destination_field_serialized_name
     */
    @AuraEnabled
    public String getDestinationField() {
      return destination_field_serialized_name;
    }
    /**
     * Gets the source_field_serialized_name.
     *
     * Field to be enriched.
     *
     * @return the source_field_serialized_name
     */
    @AuraEnabled
    public String getSourceField() {
      return source_field_serialized_name;
    }
    /**
     * Gets the overwrite_serialized_name.
     *
     * Indicates that the enrichments will overwrite the destination_field field if it already exists.
     *
     * @return the overwrite_serialized_name
     */
    @AuraEnabled
    public Boolean getOverwrite() {
      return overwrite_serialized_name;
    }
    /**
     * Gets the enrichment_serialized_name.
     *
     * Name of the enrichment service to call. Current options are `natural_language_understanding` and `elements`.   When using `natual_language_understanding`, the `options` object must contain Natural Language Understanding Options.   When using `elements` the `options` object must contain Element Classification options. Additionally, when using the `elements` enrichment the configuration specified and files ingested must meet all the criteria specified in [the documentation](https://console.bluemix.net/docs/services/discovery/element-classification.html)     Previous API versions also supported `alchemy_language`.
     *
     * @return the enrichment_serialized_name
     */
    @AuraEnabled
    public String getEnrichment() {
      return enrichment_serialized_name;
    }
    /**
     * Gets the ignore_downstream_errors_serialized_name.
     *
     * If true, then most errors generated during the enrichment process will be treated as warnings and will not cause the document to fail processing.
     *
     * @return the ignore_downstream_errors_serialized_name
     */
    @AuraEnabled
    public Boolean getIgnoreDownstreamErrors() {
      return ignore_downstream_errors_serialized_name;
    }
    /**
     * Gets the options_serialized_name.
     *
     * A list of options specific to the enrichment.
     *
     * @return the options_serialized_name
     */
    @AuraEnabled
    public EnrichmentOptions getOptions() {
      return options_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the destination_field_serialized_name.
     *
     * @param destinationField the new destinationField
     */
    public void setDestinationField(final String destinationField) {
      this.destination_field_serialized_name = destinationField;
    }

    /**
     * Sets the source_field_serialized_name.
     *
     * @param sourceField the new sourceField
     */
    public void setSourceField(final String sourceField) {
      this.source_field_serialized_name = sourceField;
    }

    /**
     * Sets the overwrite_serialized_name.
     *
     * @param overwrite the new overwrite
     */
    public void setOverwrite(final Boolean overwrite) {
      this.overwrite_serialized_name = overwrite;
    }

    /**
     * Sets the enrichment_serialized_name.
     *
     * @param enrichment the new enrichment
     */
    public void setEnrichment(final String enrichment) {
      this.enrichment_serialized_name = enrichment;
    }

    /**
     * Sets the ignore_downstream_errors_serialized_name.
     *
     * @param ignoreDownstreamErrors the new ignoreDownstreamErrors
     */
    public void setIgnoreDownstreamErrors(final Boolean ignoreDownstreamErrors) {
      this.ignore_downstream_errors_serialized_name = ignoreDownstreamErrors;
    }

    /**
     * Sets the options_serialized_name.
     *
     * @param options the new options
     */
    public void setOptions(final EnrichmentOptions options) {
      this.options_serialized_name = options;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Enrichment ret = (Enrichment) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for options_serialized_name
      EnrichmentOptions newOptions = (EnrichmentOptions) new EnrichmentOptions().deserialize(JSON.serialize(ret.getOptions()), (Map<String, Object>) jsonMap.get('options_serialized_name'), EnrichmentOptions.class);
      ret.setOptions(newOptions);

      return ret;
    }
  }

  /**
   * Options which are specific to a particular enrichment.
   */
  public class EnrichmentOptions extends IBMWatsonGenericModel {
    private NluEnrichmentFeatures features_serialized_name;
    private String model_serialized_name;
    /**
     * Gets the features_serialized_name.
     *
     * An object representing the enrichment features that will be applied to the specified field.
     *
     * @return the features_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentFeatures getFeatures() {
      return features_serialized_name;
    }
    /**
     * Gets the model_serialized_name.
     *
     * *For use with `elements` enrichments only.* The element extraction model to use. Models available are: `contract`.
     *
     * @return the model_serialized_name
     */
    @AuraEnabled
    public String getModel() {
      return model_serialized_name;
    }

    /**
     * Sets the features_serialized_name.
     *
     * @param features the new features
     */
    public void setFeatures(final NluEnrichmentFeatures features) {
      this.features_serialized_name = features;
    }

    /**
     * Sets the model_serialized_name.
     *
     * @param model the new model
     */
    public void setModel(final String model) {
      this.model_serialized_name = model;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EnrichmentOptions ret = (EnrichmentOptions) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for features_serialized_name
      NluEnrichmentFeatures newFeatures = (NluEnrichmentFeatures) new NluEnrichmentFeatures().deserialize(JSON.serialize(ret.getFeatures()), (Map<String, Object>) jsonMap.get('features_serialized_name'), NluEnrichmentFeatures.class);
      ret.setFeatures(newFeatures);

      return ret;
    }
  }

  /**
   * Details about an environment.
   */
  public class Environment extends IBMWatsonGenericModel {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String status_serialized_name;
    private Boolean read_only_serialized_name;
    private Long size_serialized_name;
    private IndexCapacity index_capacity_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * Unique identifier for the environment.
     *
     * @return the environment_id_serialized_name
     */
    @AuraEnabled
    public String getEnvironmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * Name that identifies the environment.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * Description of the environment.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * Creation date of the environment, in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * Date of most recent environment update, in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * Status of the environment.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the read_only_serialized_name.
     *
     * If true, then the environment contains read-only collections which are maintained by IBM.
     *
     * @return the read_only_serialized_name
     */
    @AuraEnabled
    public Boolean getReadOnly() {
      return read_only_serialized_name;
    }
    /**
     * Gets the size_serialized_name.
     *
     * **Deprecated**: Size of the environment.
     *
     * @return the size_serialized_name
     */
    @AuraEnabled
    public Long getSize() {
      return size_serialized_name;
    }
    /**
     * Gets the index_capacity_serialized_name.
     *
     * Details about the resource usage and capacity of the environment.
     *
     * @return the index_capacity_serialized_name
     */
    @AuraEnabled
    public IndexCapacity getIndexCapacity() {
      return index_capacity_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the size_serialized_name.
     *
     * @param size the new size
     */
    public void setSize(final long size) {
      this.size_serialized_name = size;
    }

    /**
     * Sets the index_capacity_serialized_name.
     *
     * @param indexCapacity the new indexCapacity
     */
    public void setIndexCapacity(final IndexCapacity indexCapacity) {
      this.index_capacity_serialized_name = indexCapacity;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Environment ret = (Environment) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for index_capacity_serialized_name
      IndexCapacity newIndexCapacity = (IndexCapacity) new IndexCapacity().deserialize(JSON.serialize(ret.getIndexCapacity()), (Map<String, Object>) jsonMap.get('index_capacity_serialized_name'), IndexCapacity.class);
      ret.setIndexCapacity(newIndexCapacity);

      return ret;
    }
  }

  /**
   * Summary of the document usage statistics for the environment.
   */
  public class EnvironmentDocuments extends IBMWatsonGenericModel {
    private Long indexed_serialized_name;
    private Long maximum_allowed_serialized_name;
    /**
     * Gets the indexed_serialized_name.
     *
     * Number of documents indexed for the environment.
     *
     * @return the indexed_serialized_name
     */
    @AuraEnabled
    public Long getIndexed() {
      return indexed_serialized_name;
    }
    /**
     * Gets the maximum_allowed_serialized_name.
     *
     * Total number of documents allowed in the environment's capacity.
     *
     * @return the maximum_allowed_serialized_name
     */
    @AuraEnabled
    public Long getMaximumAllowed() {
      return maximum_allowed_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EnvironmentDocuments ret = (EnvironmentDocuments) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The federatedQueryNotices options.
   */
  public class FederatedQueryNoticesOptions {
    private String environment_id_serialized_name;
    private List<String> collection_ids_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private String deduplicate_field_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_ids_serialized_name.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collection_ids_serialized_name
     */
    public List<String> collectionIds() {
      return collection_ids_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the query_serialized_name.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query_serialized_name
     */
    public String query() {
      return query_serialized_name;
    }
    /**
     * Gets the natural_language_query_serialized_name.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query_serialized_name
     */
    public String naturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
    /**
     * Gets the aggregation_serialized_name.
     *
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation_serialized_name
     */
    public String aggregation() {
      return aggregation_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * Number of documents to return.
     *
     * @return the count_serialized_name
     */
    public Long count() {
      return count_serialized_name;
    }
    /**
     * Gets the return_serialized_name.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the return_serialized_name
     */
    public List<String> returnField() {
      return return_serialized_name;
    }
    /**
     * Gets the offset_serialized_name.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset_serialized_name
     */
    public Long offset() {
      return offset_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the sort_serialized_name
     */
    public List<String> sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the highlight_serialized_name.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight_serialized_name
     */
    public Boolean highlight() {
      return highlight_serialized_name;
    }
    /**
     * Gets the deduplicate_field_serialized_name.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field_serialized_name
     */
    public String deduplicateField() {
      return deduplicate_field_serialized_name;
    }
    private FederatedQueryNoticesOptions(FederatedQueryNoticesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.collection_ids_serialized_name, 'collection_ids_serialized_name cannot be null');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_ids_serialized_name = builder.collection_ids_serialized_name;
      filter_serialized_name = builder.filter_serialized_name;
      query_serialized_name = builder.query_serialized_name;
      natural_language_query_serialized_name = builder.natural_language_query_serialized_name;
      aggregation_serialized_name = builder.aggregation_serialized_name;
      count_serialized_name = builder.count_serialized_name;
      return_serialized_name = builder.return_serialized_name;
      offset_serialized_name = builder.offset_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      highlight_serialized_name = builder.highlight_serialized_name;
      deduplicate_field_serialized_name = builder.deduplicate_field_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder newBuilder() {
      return new FederatedQueryNoticesOptionsBuilder(this);
    }

  }

  /**
   * FederatedQueryNoticesOptions Builder.
   */
  public class FederatedQueryNoticesOptionsBuilder {
    private String environment_id_serialized_name;
    private List<String> collection_ids_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private String deduplicate_field_serialized_name;

    private FederatedQueryNoticesOptionsBuilder(FederatedQueryNoticesOptions federatedQueryNoticesOptions) {
      environment_id_serialized_name = federatedQueryNoticesOptions.environment_id_serialized_name;
      collection_ids_serialized_name = federatedQueryNoticesOptions.collection_ids_serialized_name;
      filter_serialized_name = federatedQueryNoticesOptions.filter_serialized_name;
      query_serialized_name = federatedQueryNoticesOptions.query_serialized_name;
      natural_language_query_serialized_name = federatedQueryNoticesOptions.natural_language_query_serialized_name;
      aggregation_serialized_name = federatedQueryNoticesOptions.aggregation_serialized_name;
      count_serialized_name = federatedQueryNoticesOptions.count_serialized_name;
      return_serialized_name = federatedQueryNoticesOptions.return_serialized_name;
      offset_serialized_name = federatedQueryNoticesOptions.offset_serialized_name;
      sort_serialized_name = federatedQueryNoticesOptions.sort_serialized_name;
      highlight_serialized_name = federatedQueryNoticesOptions.highlight_serialized_name;
      deduplicate_field_serialized_name = federatedQueryNoticesOptions.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public FederatedQueryNoticesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionIds the collectionIds
     */
    public FederatedQueryNoticesOptionsBuilder(String environmentId, List<String> collectionIds) {
      this.environment_id_serialized_name = environmentId;
      this.collection_ids_serialized_name = collectionIds;
    }

    /**
     * Builds a FederatedQueryNoticesOptions.
     *
     * @return the federatedQueryNoticesOptions
     */
    public FederatedQueryNoticesOptions build() {
      return new FederatedQueryNoticesOptions(this);
    }

    /**
     * Adds an collectionIds to collection_ids_serialized_name.
     *
     * @param collectionIds the new collectionIds
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addCollectionIds(String collectionIds) {
      IBMWatsonValidator.notNull(collectionIds, 'collectionIds cannot be null');
      if (this.collection_ids_serialized_name == null) {
        this.collection_ids_serialized_name = new List<String>();
      }
      this.collection_ids_serialized_name.add(collectionIds);
      return this;
    }

    /**
     * Adds an returnVar to return_serialized_name.
     *
     * @param returnVar the new returnVar
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addReturn(String returnVar) {
      IBMWatsonValidator.notNull(returnVar, 'returnVar cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(returnVar);
      return this;
    }

    /**
     * Adds an sortVar to sort_serialized_name.
     *
     * @param sortVar the new sortVar
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addSort(String sortVar) {
      IBMWatsonValidator.notNull(sortVar, 'sortVar cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sortVar);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_ids_serialized_name.
     * Existing collection_ids_serialized_name will be replaced.
     *
     * @param collectionIds the collectionIds
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder collectionIds(List<String> collectionIds) {
      this.collection_ids_serialized_name = collectionIds;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder filter(String filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query the query
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder query(String query) {
      this.query_serialized_name = query;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation the aggregation
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder aggregation(String aggregation) {
      this.aggregation_serialized_name = aggregation;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count the count
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder count(Long count) {
      this.count_serialized_name = count;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param returnVar the returnVar
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder returnField(List<String> returnVar) {
      this.return_serialized_name = returnVar;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset the offset
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder offset(Long offset) {
      this.offset_serialized_name = offset;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sortVar the sortVar
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder sortField(List<String> sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight the highlight
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder highlight(Boolean highlight) {
      this.highlight_serialized_name = highlight;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicateField the deduplicateField
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicate_field_serialized_name = deduplicateField;
      return this;
    }
  }

  /**
   * The federatedQuery options.
   */
  public class FederatedQueryOptions {
    private String environment_id_serialized_name;
    private List<String> collection_ids_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private Boolean deduplicate_serialized_name;
    private String deduplicate_field_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_ids_serialized_name.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collection_ids_serialized_name
     */
    public List<String> collectionIds() {
      return collection_ids_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the query_serialized_name.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query_serialized_name
     */
    public String query() {
      return query_serialized_name;
    }
    /**
     * Gets the natural_language_query_serialized_name.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query_serialized_name
     */
    public String naturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
    /**
     * Gets the aggregation_serialized_name.
     *
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation_serialized_name
     */
    public String aggregation() {
      return aggregation_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * Number of documents to return.
     *
     * @return the count_serialized_name
     */
    public Long count() {
      return count_serialized_name;
    }
    /**
     * Gets the return_serialized_name.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the return_serialized_name
     */
    public List<String> returnField() {
      return return_serialized_name;
    }
    /**
     * Gets the offset_serialized_name.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset_serialized_name
     */
    public Long offset() {
      return offset_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the sort_serialized_name
     */
    public List<String> sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the highlight_serialized_name.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight_serialized_name
     */
    public Boolean highlight() {
      return highlight_serialized_name;
    }
    /**
     * Gets the deduplicate_serialized_name.
     *
     * When `true` and used with a Watson Discovery News collection, duplicate results (based on the contents of the `title` field) are removed. Duplicate comparison is limited to the current query only, `offset` is not considered. Defaults to `false`. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_serialized_name
     */
    public Boolean deduplicate() {
      return deduplicate_serialized_name;
    }
    /**
     * Gets the deduplicate_field_serialized_name.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field_serialized_name
     */
    public String deduplicateField() {
      return deduplicate_field_serialized_name;
    }
    private FederatedQueryOptions(FederatedQueryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.collection_ids_serialized_name, 'collection_ids_serialized_name cannot be null');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_ids_serialized_name = builder.collection_ids_serialized_name;
      filter_serialized_name = builder.filter_serialized_name;
      query_serialized_name = builder.query_serialized_name;
      natural_language_query_serialized_name = builder.natural_language_query_serialized_name;
      aggregation_serialized_name = builder.aggregation_serialized_name;
      count_serialized_name = builder.count_serialized_name;
      return_serialized_name = builder.return_serialized_name;
      offset_serialized_name = builder.offset_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      highlight_serialized_name = builder.highlight_serialized_name;
      deduplicate_serialized_name = builder.deduplicate_serialized_name;
      deduplicate_field_serialized_name = builder.deduplicate_field_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder newBuilder() {
      return new FederatedQueryOptionsBuilder(this);
    }

  }

  /**
   * FederatedQueryOptions Builder.
   */
  public class FederatedQueryOptionsBuilder {
    private String environment_id_serialized_name;
    private List<String> collection_ids_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private Boolean deduplicate_serialized_name;
    private String deduplicate_field_serialized_name;

    private FederatedQueryOptionsBuilder(FederatedQueryOptions federatedQueryOptions) {
      environment_id_serialized_name = federatedQueryOptions.environment_id_serialized_name;
      collection_ids_serialized_name = federatedQueryOptions.collection_ids_serialized_name;
      filter_serialized_name = federatedQueryOptions.filter_serialized_name;
      query_serialized_name = federatedQueryOptions.query_serialized_name;
      natural_language_query_serialized_name = federatedQueryOptions.natural_language_query_serialized_name;
      aggregation_serialized_name = federatedQueryOptions.aggregation_serialized_name;
      count_serialized_name = federatedQueryOptions.count_serialized_name;
      return_serialized_name = federatedQueryOptions.return_serialized_name;
      offset_serialized_name = federatedQueryOptions.offset_serialized_name;
      sort_serialized_name = federatedQueryOptions.sort_serialized_name;
      highlight_serialized_name = federatedQueryOptions.highlight_serialized_name;
      deduplicate_serialized_name = federatedQueryOptions.deduplicate_serialized_name;
      deduplicate_field_serialized_name = federatedQueryOptions.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public FederatedQueryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionIds the collectionIds
     */
    public FederatedQueryOptionsBuilder(String environmentId, List<String> collectionIds) {
      this.environment_id_serialized_name = environmentId;
      this.collection_ids_serialized_name = collectionIds;
    }

    /**
     * Builds a FederatedQueryOptions.
     *
     * @return the federatedQueryOptions
     */
    public FederatedQueryOptions build() {
      return new FederatedQueryOptions(this);
    }

    /**
     * Adds an collectionIds to collection_ids_serialized_name.
     *
     * @param collectionIds the new collectionIds
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addCollectionIds(String collectionIds) {
      IBMWatsonValidator.notNull(collectionIds, 'collectionIds cannot be null');
      if (this.collection_ids_serialized_name == null) {
        this.collection_ids_serialized_name = new List<String>();
      }
      this.collection_ids_serialized_name.add(collectionIds);
      return this;
    }

    /**
     * Adds an returnVar to return_serialized_name.
     *
     * @param returnVar the new returnVar
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addReturn(String returnVar) {
      IBMWatsonValidator.notNull(returnVar, 'returnVar cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(returnVar);
      return this;
    }

    /**
     * Adds an sortVar to sort_serialized_name.
     *
     * @param sortVar the new sortVar
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addSort(String sortVar) {
      IBMWatsonValidator.notNull(sortVar, 'sortVar cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sortVar);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_ids_serialized_name.
     * Existing collection_ids_serialized_name will be replaced.
     *
     * @param collectionIds the collectionIds
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder collectionIds(List<String> collectionIds) {
      this.collection_ids_serialized_name = collectionIds;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder filter(String filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query the query
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder query(String query) {
      this.query_serialized_name = query;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation the aggregation
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder aggregation(String aggregation) {
      this.aggregation_serialized_name = aggregation;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count the count
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder count(Long count) {
      this.count_serialized_name = count;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param returnVar the returnVar
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder returnField(List<String> returnVar) {
      this.return_serialized_name = returnVar;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset the offset
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder offset(Long offset) {
      this.offset_serialized_name = offset;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sortVar the sortVar
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder sortField(List<String> sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight the highlight
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder highlight(Boolean highlight) {
      this.highlight_serialized_name = highlight;
      return this;
    }

    /**
     * Set the deduplicate_serialized_name.
     *
     * @param deduplicate the deduplicate
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder deduplicate(Boolean deduplicate) {
      this.deduplicate_serialized_name = deduplicate;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicateField the deduplicateField
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicate_field_serialized_name = deduplicateField;
      return this;
    }
  }

  /**
   * Field.
   */
  public class Field extends IBMWatsonGenericModel {
    private String field_serialized_name;
    private String type_serialized_name;
    /**
     * Gets the field_serialized_name.
     *
     * The name of the field.
     *
     * @return the field_serialized_name
     */
    @AuraEnabled
    public String getField() {
      return field_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * The type of the field.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Field ret = (Field) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * FontSetting.
   */
  public class FontSetting extends IBMWatsonGenericModel {
    private Long level_serialized_name;
    private Long min_size_serialized_name;
    private Long max_size_serialized_name;
    private Boolean bold_serialized_name;
    private Boolean italic_serialized_name;
    private String name_serialized_name;
    /**
     * Gets the level_serialized_name.
     *
     * @return the level_serialized_name
     */
    @AuraEnabled
    public Long getLevel() {
      return level_serialized_name;
    }
    /**
     * Gets the min_size_serialized_name.
     *
     * @return the min_size_serialized_name
     */
    @AuraEnabled
    public Long getMinSize() {
      return min_size_serialized_name;
    }
    /**
     * Gets the max_size_serialized_name.
     *
     * @return the max_size_serialized_name
     */
    @AuraEnabled
    public Long getMaxSize() {
      return max_size_serialized_name;
    }
    /**
     * Gets the bold_serialized_name.
     *
     * @return the bold_serialized_name
     */
    @AuraEnabled
    public Boolean getBold() {
      return bold_serialized_name;
    }
    /**
     * Gets the italic_serialized_name.
     *
     * @return the italic_serialized_name
     */
    @AuraEnabled
    public Boolean getItalic() {
      return italic_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }

    /**
     * Sets the level_serialized_name.
     *
     * @param level the new level
     */
    public void setLevel(final long level) {
      this.level_serialized_name = level;
    }

    /**
     * Sets the min_size_serialized_name.
     *
     * @param minSize the new minSize
     */
    public void setMinSize(final long minSize) {
      this.min_size_serialized_name = minSize;
    }

    /**
     * Sets the max_size_serialized_name.
     *
     * @param maxSize the new maxSize
     */
    public void setMaxSize(final long maxSize) {
      this.max_size_serialized_name = maxSize;
    }

    /**
     * Sets the bold_serialized_name.
     *
     * @param bold the new bold
     */
    public void setBold(final Boolean bold) {
      this.bold_serialized_name = bold;
    }

    /**
     * Sets the italic_serialized_name.
     *
     * @param italic the new italic
     */
    public void setItalic(final Boolean italic) {
      this.italic_serialized_name = italic;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      FontSetting ret = (FontSetting) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The getCollection options.
   */
  public class GetCollectionOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    private GetCollectionOptions(GetCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder newBuilder() {
      return new GetCollectionOptionsBuilder(this);
    }

  }

  /**
   * GetCollectionOptions Builder.
   */
  public class GetCollectionOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;

    private GetCollectionOptionsBuilder(GetCollectionOptions getCollectionOptions) {
      environment_id_serialized_name = getCollectionOptions.environment_id_serialized_name;
      collection_id_serialized_name = getCollectionOptions.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public GetCollectionOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a GetCollectionOptions.
     *
     * @return the getCollectionOptions
     */
    public GetCollectionOptions build() {
      return new GetCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }
  }

  /**
   * The getConfiguration options.
   */
  public class GetConfigurationOptions {
    private String environment_id_serialized_name;
    private String configuration_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The ID of the configuration.
     *
     * @return the configuration_id_serialized_name
     */
    public String configurationId() {
      return configuration_id_serialized_name;
    }
    private GetConfigurationOptions(GetConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configuration_id_serialized_name, 'configuration_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      configuration_id_serialized_name = builder.configuration_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder newBuilder() {
      return new GetConfigurationOptionsBuilder(this);
    }

  }

  /**
   * GetConfigurationOptions Builder.
   */
  public class GetConfigurationOptionsBuilder {
    private String environment_id_serialized_name;
    private String configuration_id_serialized_name;

    private GetConfigurationOptionsBuilder(GetConfigurationOptions getConfigurationOptions) {
      environment_id_serialized_name = getConfigurationOptions.environment_id_serialized_name;
      configuration_id_serialized_name = getConfigurationOptions.configuration_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param configurationId the configurationId
     */
    public GetConfigurationOptionsBuilder(String environmentId, String configurationId) {
      this.environment_id_serialized_name = environmentId;
      this.configuration_id_serialized_name = configurationId;
    }

    /**
     * Builds a GetConfigurationOptions.
     *
     * @return the getConfigurationOptions
     */
    public GetConfigurationOptions build() {
      return new GetConfigurationOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configurationId the configurationId
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder configurationId(String configurationId) {
      this.configuration_id_serialized_name = configurationId;
      return this;
    }
  }

  /**
   * The getDocumentStatus options.
   */
  public class GetDocumentStatusOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String document_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the document_id_serialized_name.
     *
     * The ID of the document.
     *
     * @return the document_id_serialized_name
     */
    public String documentId() {
      return document_id_serialized_name;
    }
    private GetDocumentStatusOptions(GetDocumentStatusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.document_id_serialized_name, 'document_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      document_id_serialized_name = builder.document_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder newBuilder() {
      return new GetDocumentStatusOptionsBuilder(this);
    }

  }

  /**
   * GetDocumentStatusOptions Builder.
   */
  public class GetDocumentStatusOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String document_id_serialized_name;

    private GetDocumentStatusOptionsBuilder(GetDocumentStatusOptions getDocumentStatusOptions) {
      environment_id_serialized_name = getDocumentStatusOptions.environment_id_serialized_name;
      collection_id_serialized_name = getDocumentStatusOptions.collection_id_serialized_name;
      document_id_serialized_name = getDocumentStatusOptions.document_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetDocumentStatusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param documentId the documentId
     */
    public GetDocumentStatusOptionsBuilder(String environmentId, String collectionId, String documentId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.document_id_serialized_name = documentId;
    }

    /**
     * Builds a GetDocumentStatusOptions.
     *
     * @return the getDocumentStatusOptions
     */
    public GetDocumentStatusOptions build() {
      return new GetDocumentStatusOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param documentId the documentId
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder documentId(String documentId) {
      this.document_id_serialized_name = documentId;
      return this;
    }
  }

  /**
   * The getEnvironment options.
   */
  public class GetEnvironmentOptions {
    private String environment_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    private GetEnvironmentOptions(GetEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetEnvironmentOptions builder
     */
    public GetEnvironmentOptionsBuilder newBuilder() {
      return new GetEnvironmentOptionsBuilder(this);
    }

  }

  /**
   * GetEnvironmentOptions Builder.
   */
  public class GetEnvironmentOptionsBuilder {
    private String environment_id_serialized_name;

    private GetEnvironmentOptionsBuilder(GetEnvironmentOptions getEnvironmentOptions) {
      environment_id_serialized_name = getEnvironmentOptions.environment_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public GetEnvironmentOptionsBuilder(String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Builds a GetEnvironmentOptions.
     *
     * @return the getEnvironmentOptions
     */
    public GetEnvironmentOptions build() {
      return new GetEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the GetEnvironmentOptions builder
     */
    public GetEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }
  }

  /**
   * The getTrainingData options.
   */
  public class GetTrainingDataOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * The ID of the query used for training.
     *
     * @return the query_id_serialized_name
     */
    public String queryId() {
      return query_id_serialized_name;
    }
    private GetTrainingDataOptions(GetTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id_serialized_name, 'query_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      query_id_serialized_name = builder.query_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder newBuilder() {
      return new GetTrainingDataOptionsBuilder(this);
    }

  }

  /**
   * GetTrainingDataOptions Builder.
   */
  public class GetTrainingDataOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;

    private GetTrainingDataOptionsBuilder(GetTrainingDataOptions getTrainingDataOptions) {
      environment_id_serialized_name = getTrainingDataOptions.environment_id_serialized_name;
      collection_id_serialized_name = getTrainingDataOptions.collection_id_serialized_name;
      query_id_serialized_name = getTrainingDataOptions.query_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param queryId the queryId
     */
    public GetTrainingDataOptionsBuilder(String environmentId, String collectionId, String queryId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.query_id_serialized_name = queryId;
    }

    /**
     * Builds a GetTrainingDataOptions.
     *
     * @return the getTrainingDataOptions
     */
    public GetTrainingDataOptions build() {
      return new GetTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param queryId the queryId
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder queryId(String queryId) {
      this.query_id_serialized_name = queryId;
      return this;
    }
  }

  /**
   * The getTrainingExample options.
   */
  public class GetTrainingExampleOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String example_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * The ID of the query used for training.
     *
     * @return the query_id_serialized_name
     */
    public String queryId() {
      return query_id_serialized_name;
    }
    /**
     * Gets the example_id_serialized_name.
     *
     * The ID of the document as it is indexed.
     *
     * @return the example_id_serialized_name
     */
    public String exampleId() {
      return example_id_serialized_name;
    }
    private GetTrainingExampleOptions(GetTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id_serialized_name, 'query_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.example_id_serialized_name, 'example_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      query_id_serialized_name = builder.query_id_serialized_name;
      example_id_serialized_name = builder.example_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder newBuilder() {
      return new GetTrainingExampleOptionsBuilder(this);
    }

  }

  /**
   * GetTrainingExampleOptions Builder.
   */
  public class GetTrainingExampleOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String example_id_serialized_name;

    private GetTrainingExampleOptionsBuilder(GetTrainingExampleOptions getTrainingExampleOptions) {
      environment_id_serialized_name = getTrainingExampleOptions.environment_id_serialized_name;
      collection_id_serialized_name = getTrainingExampleOptions.collection_id_serialized_name;
      query_id_serialized_name = getTrainingExampleOptions.query_id_serialized_name;
      example_id_serialized_name = getTrainingExampleOptions.example_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param queryId the queryId
     * @param exampleId the exampleId
     */
    public GetTrainingExampleOptionsBuilder(String environmentId, String collectionId, String queryId, String exampleId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.query_id_serialized_name = queryId;
      this.example_id_serialized_name = exampleId;
    }

    /**
     * Builds a GetTrainingExampleOptions.
     *
     * @return the getTrainingExampleOptions
     */
    public GetTrainingExampleOptions build() {
      return new GetTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param queryId the queryId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder queryId(String queryId) {
      this.query_id_serialized_name = queryId;
      return this;
    }

    /**
     * Set the example_id_serialized_name.
     *
     * @param exampleId the exampleId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder exampleId(String exampleId) {
      this.example_id_serialized_name = exampleId;
      return this;
    }
  }

  /**
   * Histogram.
   */
  public class Histogram extends IBMWatsonGenericModel {
    private Long interval_serialized_name;
    /**
     * Gets the interval_serialized_name.
     *
     * Interval of the aggregation. (For 'histogram' type).
     *
     * @return the interval_serialized_name
     */
    @AuraEnabled
    public Long getInterval() {
      return interval_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Histogram ret = (Histogram) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A list of HTML conversion settings.
   */
  public class HtmlSettings extends IBMWatsonGenericModel {
    private List<String> exclude_tags_completely_serialized_name;
    private List<String> exclude_tags_keep_content_serialized_name;
    private XPathPatterns keep_content_serialized_name;
    private XPathPatterns exclude_content_serialized_name;
    private List<String> keep_tag_attributes_serialized_name;
    private List<String> exclude_tag_attributes_serialized_name;
    /**
     * Gets the exclude_tags_completely_serialized_name.
     *
     * @return the exclude_tags_completely_serialized_name
     */
    @AuraEnabled
    public List<String> getExcludeTagsCompletely() {
      return exclude_tags_completely_serialized_name;
    }
    /**
     * Gets the exclude_tags_keep_content_serialized_name.
     *
     * @return the exclude_tags_keep_content_serialized_name
     */
    @AuraEnabled
    public List<String> getExcludeTagsKeepContent() {
      return exclude_tags_keep_content_serialized_name;
    }
    /**
     * Gets the keep_content_serialized_name.
     *
     * @return the keep_content_serialized_name
     */
    @AuraEnabled
    public XPathPatterns getKeepContent() {
      return keep_content_serialized_name;
    }
    /**
     * Gets the exclude_content_serialized_name.
     *
     * @return the exclude_content_serialized_name
     */
    @AuraEnabled
    public XPathPatterns getExcludeContent() {
      return exclude_content_serialized_name;
    }
    /**
     * Gets the keep_tag_attributes_serialized_name.
     *
     * @return the keep_tag_attributes_serialized_name
     */
    @AuraEnabled
    public List<String> getKeepTagAttributes() {
      return keep_tag_attributes_serialized_name;
    }
    /**
     * Gets the exclude_tag_attributes_serialized_name.
     *
     * @return the exclude_tag_attributes_serialized_name
     */
    @AuraEnabled
    public List<String> getExcludeTagAttributes() {
      return exclude_tag_attributes_serialized_name;
    }

    /**
     * Sets the exclude_tags_completely_serialized_name.
     *
     * @param excludeTagsCompletely the new excludeTagsCompletely
     */
    public void setExcludeTagsCompletely(final List<String> excludeTagsCompletely) {
      this.exclude_tags_completely_serialized_name = excludeTagsCompletely;
    }

    /**
     * Sets the exclude_tags_keep_content_serialized_name.
     *
     * @param excludeTagsKeepContent the new excludeTagsKeepContent
     */
    public void setExcludeTagsKeepContent(final List<String> excludeTagsKeepContent) {
      this.exclude_tags_keep_content_serialized_name = excludeTagsKeepContent;
    }

    /**
     * Sets the keep_content_serialized_name.
     *
     * @param keepContent the new keepContent
     */
    public void setKeepContent(final XPathPatterns keepContent) {
      this.keep_content_serialized_name = keepContent;
    }

    /**
     * Sets the exclude_content_serialized_name.
     *
     * @param excludeContent the new excludeContent
     */
    public void setExcludeContent(final XPathPatterns excludeContent) {
      this.exclude_content_serialized_name = excludeContent;
    }

    /**
     * Sets the keep_tag_attributes_serialized_name.
     *
     * @param keepTagAttributes the new keepTagAttributes
     */
    public void setKeepTagAttributes(final List<String> keepTagAttributes) {
      this.keep_tag_attributes_serialized_name = keepTagAttributes;
    }

    /**
     * Sets the exclude_tag_attributes_serialized_name.
     *
     * @param excludeTagAttributes the new excludeTagAttributes
     */
    public void setExcludeTagAttributes(final List<String> excludeTagAttributes) {
      this.exclude_tag_attributes_serialized_name = excludeTagAttributes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      HtmlSettings ret = (HtmlSettings) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for keep_content_serialized_name
      XPathPatterns newKeepContent = (XPathPatterns) new XPathPatterns().deserialize(JSON.serialize(ret.getKeepContent()), (Map<String, Object>) jsonMap.get('keep_content_serialized_name'), XPathPatterns.class);
      ret.setKeepContent(newKeepContent);

      // calling custom deserializer for exclude_content_serialized_name
      XPathPatterns newExcludeContent = (XPathPatterns) new XPathPatterns().deserialize(JSON.serialize(ret.getExcludeContent()), (Map<String, Object>) jsonMap.get('exclude_content_serialized_name'), XPathPatterns.class);
      ret.setExcludeContent(newExcludeContent);

      return ret;
    }
  }

  /**
   * Details about the resource usage and capacity of the environment.
   */
  public class IndexCapacity extends IBMWatsonGenericModel {
    private EnvironmentDocuments documents_serialized_name;
    private DiskUsage disk_usage_serialized_name;
    private CollectionUsage collections_serialized_name;
    private MemoryUsage memory_usage_serialized_name;
    /**
     * Gets the documents_serialized_name.
     *
     * Summary of the document usage statistics for the environment.
     *
     * @return the documents_serialized_name
     */
    @AuraEnabled
    public EnvironmentDocuments getDocuments() {
      return documents_serialized_name;
    }
    /**
     * Gets the disk_usage_serialized_name.
     *
     * Summary of the disk usage of the environment.
     *
     * @return the disk_usage_serialized_name
     */
    @AuraEnabled
    public DiskUsage getDiskUsage() {
      return disk_usage_serialized_name;
    }
    /**
     * Gets the collections_serialized_name.
     *
     * Summary of the collection usage in the environment.
     *
     * @return the collections_serialized_name
     */
    @AuraEnabled
    public CollectionUsage getCollections() {
      return collections_serialized_name;
    }
    /**
     * Gets the memory_usage_serialized_name.
     *
     * **Deprecated**: Summary of the memory usage of the environment.
     *
     * @return the memory_usage_serialized_name
     */
    @AuraEnabled
    public MemoryUsage getMemoryUsage() {
      return memory_usage_serialized_name;
    }

    /**
     * Sets the documents_serialized_name.
     *
     * @param documents the new documents
     */
    public void setDocuments(final EnvironmentDocuments documents) {
      this.documents_serialized_name = documents;
    }

    /**
     * Sets the disk_usage_serialized_name.
     *
     * @param diskUsage the new diskUsage
     */
    public void setDiskUsage(final DiskUsage diskUsage) {
      this.disk_usage_serialized_name = diskUsage;
    }

    /**
     * Sets the collections_serialized_name.
     *
     * @param collections the new collections
     */
    public void setCollections(final CollectionUsage collections) {
      this.collections_serialized_name = collections;
    }

    /**
     * Sets the memory_usage_serialized_name.
     *
     * @param memoryUsage the new memoryUsage
     */
    public void setMemoryUsage(final MemoryUsage memoryUsage) {
      this.memory_usage_serialized_name = memoryUsage;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      IndexCapacity ret = (IndexCapacity) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for documents_serialized_name
      EnvironmentDocuments newDocuments = (EnvironmentDocuments) new EnvironmentDocuments().deserialize(JSON.serialize(ret.getDocuments()), (Map<String, Object>) jsonMap.get('documents_serialized_name'), EnvironmentDocuments.class);
      ret.setDocuments(newDocuments);

      // calling custom deserializer for disk_usage_serialized_name
      DiskUsage newDiskUsage = (DiskUsage) new DiskUsage().deserialize(JSON.serialize(ret.getDiskUsage()), (Map<String, Object>) jsonMap.get('disk_usage_serialized_name'), DiskUsage.class);
      ret.setDiskUsage(newDiskUsage);

      // calling custom deserializer for collections_serialized_name
      CollectionUsage newCollections = (CollectionUsage) new CollectionUsage().deserialize(JSON.serialize(ret.getCollections()), (Map<String, Object>) jsonMap.get('collections_serialized_name'), CollectionUsage.class);
      ret.setCollections(newCollections);

      // calling custom deserializer for memory_usage_serialized_name
      MemoryUsage newMemoryUsage = (MemoryUsage) new MemoryUsage().deserialize(JSON.serialize(ret.getMemoryUsage()), (Map<String, Object>) jsonMap.get('memory_usage_serialized_name'), MemoryUsage.class);
      ret.setMemoryUsage(newMemoryUsage);

      return ret;
    }
  }

  /**
   * The listCollectionFields options.
   */
  public class ListCollectionFieldsOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    private ListCollectionFieldsOptions(ListCollectionFieldsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder newBuilder() {
      return new ListCollectionFieldsOptionsBuilder(this);
    }

  }

  /**
   * ListCollectionFieldsOptions Builder.
   */
  public class ListCollectionFieldsOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;

    private ListCollectionFieldsOptionsBuilder(ListCollectionFieldsOptions listCollectionFieldsOptions) {
      environment_id_serialized_name = listCollectionFieldsOptions.environment_id_serialized_name;
      collection_id_serialized_name = listCollectionFieldsOptions.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCollectionFieldsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public ListCollectionFieldsOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a ListCollectionFieldsOptions.
     *
     * @return the listCollectionFieldsOptions
     */
    public ListCollectionFieldsOptions build() {
      return new ListCollectionFieldsOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }
  }

  /**
   * The list of fetched fields.  The fields are returned using a fully qualified name format, however, the format differs slightly from that used by the query operations.    * Fields which contain nested JSON objects are assigned a type of "nested".    * Fields which belong to a nested object are prefixed with `.properties` (for example, `warnings.properties.severity` means that the `warnings` object has a property called `severity`).    * Fields returned from the News collection are prefixed with `v{N}-fullnews-t3-{YEAR}.mappings` (for example, `v5-fullnews-t3-2016.mappings.text.properties.author`).
   */
  public class ListCollectionFieldsResponse extends IBMWatsonGenericModel {
    private List<Field> fields_serialized_name;
    /**
     * Gets the fields_serialized_name.
     *
     * An array containing information about each field in the collections.
     *
     * @return the fields_serialized_name
     */
    @AuraEnabled
    public List<Field> getFields() {
      return fields_serialized_name;
    }

    /**
     * Sets the fields_serialized_name.
     *
     * @param fields the new fields
     */
    public void setFields(final List<Field> fields) {
      this.fields_serialized_name = fields;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ListCollectionFieldsResponse ret = (ListCollectionFieldsResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for fields_serialized_name
      List<Field> newFields = new List<Field>();
      List<Field> deserializedFields = ret.getFields();
      if (deserializedFields != null) {
        for (Integer i = 0; i < deserializedFields.size(); i++) {
          Field currentItem = ret.getFields().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('fields_serialized_name');
          Field newItem = (Field) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Field.class);
          newFields.add(newItem);
        }
        ret.setFields(newFields);
      }

      return ret;
    }
  }

  /**
   * The listCollections options.
   */
  public class ListCollectionsOptions {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * Find collections with the given name.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    private ListCollectionsOptions(ListCollectionsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder newBuilder() {
      return new ListCollectionsOptionsBuilder(this);
    }

  }

  /**
   * ListCollectionsOptions Builder.
   */
  public class ListCollectionsOptionsBuilder {
    private String environment_id_serialized_name;
    private String name_serialized_name;

    private ListCollectionsOptionsBuilder(ListCollectionsOptions listCollectionsOptions) {
      environment_id_serialized_name = listCollectionsOptions.environment_id_serialized_name;
      name_serialized_name = listCollectionsOptions.name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCollectionsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public ListCollectionsOptionsBuilder(String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Builds a ListCollectionsOptions.
     *
     * @return the listCollectionsOptions
     */
    public ListCollectionsOptions build() {
      return new ListCollectionsOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }
  }

  /**
   * ListCollectionsResponse.
   */
  public class ListCollectionsResponse extends IBMWatsonGenericModel {
    private List<Collection> collections_serialized_name;
    /**
     * Gets the collections_serialized_name.
     *
     * An array containing information about each collection in the environment.
     *
     * @return the collections_serialized_name
     */
    @AuraEnabled
    public List<Collection> getCollections() {
      return collections_serialized_name;
    }

    /**
     * Sets the collections_serialized_name.
     *
     * @param collections the new collections
     */
    public void setCollections(final List<Collection> collections) {
      this.collections_serialized_name = collections;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ListCollectionsResponse ret = (ListCollectionsResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for collections_serialized_name
      List<Collection> newCollections = new List<Collection>();
      List<Collection> deserializedCollections = ret.getCollections();
      if (deserializedCollections != null) {
        for (Integer i = 0; i < deserializedCollections.size(); i++) {
          Collection currentItem = ret.getCollections().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('collections_serialized_name');
          Collection newItem = (Collection) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Collection.class);
          newCollections.add(newItem);
        }
        ret.setCollections(newCollections);
      }

      return ret;
    }
  }

  /**
   * The listConfigurations options.
   */
  public class ListConfigurationsOptions {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * Find configurations with the given name.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    private ListConfigurationsOptions(ListConfigurationsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder newBuilder() {
      return new ListConfigurationsOptionsBuilder(this);
    }

  }

  /**
   * ListConfigurationsOptions Builder.
   */
  public class ListConfigurationsOptionsBuilder {
    private String environment_id_serialized_name;
    private String name_serialized_name;

    private ListConfigurationsOptionsBuilder(ListConfigurationsOptions listConfigurationsOptions) {
      environment_id_serialized_name = listConfigurationsOptions.environment_id_serialized_name;
      name_serialized_name = listConfigurationsOptions.name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListConfigurationsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public ListConfigurationsOptionsBuilder(String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Builds a ListConfigurationsOptions.
     *
     * @return the listConfigurationsOptions
     */
    public ListConfigurationsOptions build() {
      return new ListConfigurationsOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }
  }

  /**
   * ListConfigurationsResponse.
   */
  public class ListConfigurationsResponse extends IBMWatsonGenericModel {
    private List<Configuration> configurations_serialized_name;
    /**
     * Gets the configurations_serialized_name.
     *
     * An array of Configurations that are available for the service instance.
     *
     * @return the configurations_serialized_name
     */
    @AuraEnabled
    public List<Configuration> getConfigurations() {
      return configurations_serialized_name;
    }

    /**
     * Sets the configurations_serialized_name.
     *
     * @param configurations the new configurations
     */
    public void setConfigurations(final List<Configuration> configurations) {
      this.configurations_serialized_name = configurations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ListConfigurationsResponse ret = (ListConfigurationsResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for configurations_serialized_name
      List<Configuration> newConfigurations = new List<Configuration>();
      List<Configuration> deserializedConfigurations = ret.getConfigurations();
      if (deserializedConfigurations != null) {
        for (Integer i = 0; i < deserializedConfigurations.size(); i++) {
          Configuration currentItem = ret.getConfigurations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('configurations_serialized_name');
          Configuration newItem = (Configuration) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Configuration.class);
          newConfigurations.add(newItem);
        }
        ret.setConfigurations(newConfigurations);
      }

      return ret;
    }
  }

  /**
   * The listEnvironments options.
   */
  public class ListEnvironmentsOptions {
    private String name_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * Show only the environment with the given name.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    private ListEnvironmentsOptions(ListEnvironmentsOptionsBuilder builder) {
      name_serialized_name = builder.name_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListEnvironmentsOptions builder
     */
    public ListEnvironmentsOptionsBuilder newBuilder() {
      return new ListEnvironmentsOptionsBuilder(this);
    }

  }

  /**
   * ListEnvironmentsOptions Builder.
   */
  public class ListEnvironmentsOptionsBuilder {
    private String name_serialized_name;

    private ListEnvironmentsOptionsBuilder(ListEnvironmentsOptions listEnvironmentsOptions) {
      name_serialized_name = listEnvironmentsOptions.name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListEnvironmentsOptionsBuilder() {
    }

    /**
     * Builds a ListEnvironmentsOptions.
     *
     * @return the listEnvironmentsOptions
     */
    public ListEnvironmentsOptions build() {
      return new ListEnvironmentsOptions(this);
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the ListEnvironmentsOptions builder
     */
    public ListEnvironmentsOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }
  }

  /**
   * ListEnvironmentsResponse.
   */
  public class ListEnvironmentsResponse extends IBMWatsonGenericModel {
    private List<Environment> environments_serialized_name;
    /**
     * Gets the environments_serialized_name.
     *
     * An array of [environments] that are available for the service instance.
     *
     * @return the environments_serialized_name
     */
    @AuraEnabled
    public List<Environment> getEnvironments() {
      return environments_serialized_name;
    }

    /**
     * Sets the environments_serialized_name.
     *
     * @param environments the new environments
     */
    public void setEnvironments(final List<Environment> environments) {
      this.environments_serialized_name = environments;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ListEnvironmentsResponse ret = (ListEnvironmentsResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for environments_serialized_name
      List<Environment> newEnvironments = new List<Environment>();
      List<Environment> deserializedEnvironments = ret.getEnvironments();
      if (deserializedEnvironments != null) {
        for (Integer i = 0; i < deserializedEnvironments.size(); i++) {
          Environment currentItem = ret.getEnvironments().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('environments_serialized_name');
          Environment newItem = (Environment) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Environment.class);
          newEnvironments.add(newItem);
        }
        ret.setEnvironments(newEnvironments);
      }

      return ret;
    }
  }

  /**
   * The listFields options.
   */
  public class ListFieldsOptions {
    private String environment_id_serialized_name;
    private List<String> collection_ids_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_ids_serialized_name.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collection_ids_serialized_name
     */
    public List<String> collectionIds() {
      return collection_ids_serialized_name;
    }
    private ListFieldsOptions(ListFieldsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.collection_ids_serialized_name, 'collection_ids_serialized_name cannot be null');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_ids_serialized_name = builder.collection_ids_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder newBuilder() {
      return new ListFieldsOptionsBuilder(this);
    }

  }

  /**
   * ListFieldsOptions Builder.
   */
  public class ListFieldsOptionsBuilder {
    private String environment_id_serialized_name;
    private List<String> collection_ids_serialized_name;

    private ListFieldsOptionsBuilder(ListFieldsOptions listFieldsOptions) {
      environment_id_serialized_name = listFieldsOptions.environment_id_serialized_name;
      collection_ids_serialized_name = listFieldsOptions.collection_ids_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListFieldsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionIds the collectionIds
     */
    public ListFieldsOptionsBuilder(String environmentId, List<String> collectionIds) {
      this.environment_id_serialized_name = environmentId;
      this.collection_ids_serialized_name = collectionIds;
    }

    /**
     * Builds a ListFieldsOptions.
     *
     * @return the listFieldsOptions
     */
    public ListFieldsOptions build() {
      return new ListFieldsOptions(this);
    }

    /**
     * Adds an collectionIds to collection_ids_serialized_name.
     *
     * @param collectionIds the new collectionIds
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder addCollectionIds(String collectionIds) {
      IBMWatsonValidator.notNull(collectionIds, 'collectionIds cannot be null');
      if (this.collection_ids_serialized_name == null) {
        this.collection_ids_serialized_name = new List<String>();
      }
      this.collection_ids_serialized_name.add(collectionIds);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_ids_serialized_name.
     * Existing collection_ids_serialized_name will be replaced.
     *
     * @param collectionIds the collectionIds
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder collectionIds(List<String> collectionIds) {
      this.collection_ids_serialized_name = collectionIds;
      return this;
    }
  }

  /**
   * The listTrainingData options.
   */
  public class ListTrainingDataOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    private ListTrainingDataOptions(ListTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder newBuilder() {
      return new ListTrainingDataOptionsBuilder(this);
    }

  }

  /**
   * ListTrainingDataOptions Builder.
   */
  public class ListTrainingDataOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;

    private ListTrainingDataOptionsBuilder(ListTrainingDataOptions listTrainingDataOptions) {
      environment_id_serialized_name = listTrainingDataOptions.environment_id_serialized_name;
      collection_id_serialized_name = listTrainingDataOptions.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public ListTrainingDataOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a ListTrainingDataOptions.
     *
     * @return the listTrainingDataOptions
     */
    public ListTrainingDataOptions build() {
      return new ListTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }
  }

  /**
   * The listTrainingExamples options.
   */
  public class ListTrainingExamplesOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * The ID of the query used for training.
     *
     * @return the query_id_serialized_name
     */
    public String queryId() {
      return query_id_serialized_name;
    }
    private ListTrainingExamplesOptions(ListTrainingExamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id_serialized_name, 'query_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      query_id_serialized_name = builder.query_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder newBuilder() {
      return new ListTrainingExamplesOptionsBuilder(this);
    }

  }

  /**
   * ListTrainingExamplesOptions Builder.
   */
  public class ListTrainingExamplesOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;

    private ListTrainingExamplesOptionsBuilder(ListTrainingExamplesOptions listTrainingExamplesOptions) {
      environment_id_serialized_name = listTrainingExamplesOptions.environment_id_serialized_name;
      collection_id_serialized_name = listTrainingExamplesOptions.collection_id_serialized_name;
      query_id_serialized_name = listTrainingExamplesOptions.query_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListTrainingExamplesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param queryId the queryId
     */
    public ListTrainingExamplesOptionsBuilder(String environmentId, String collectionId, String queryId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.query_id_serialized_name = queryId;
    }

    /**
     * Builds a ListTrainingExamplesOptions.
     *
     * @return the listTrainingExamplesOptions
     */
    public ListTrainingExamplesOptions build() {
      return new ListTrainingExamplesOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param queryId the queryId
     * @return the ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder queryId(String queryId) {
      this.query_id_serialized_name = queryId;
      return this;
    }
  }

  /**
   * **Deprecated**: Summary of the memory usage statistics for this environment.
   */
  public class MemoryUsage extends IBMWatsonGenericModel {
    private Long used_bytes_serialized_name;
    private Long total_bytes_serialized_name;
    private String used_serialized_name;
    private String total_serialized_name;
    private Double percent_used_serialized_name;
    /**
     * Gets the used_bytes_serialized_name.
     *
     * **Deprecated**: Number of bytes used in the environment's memory capacity.
     *
     * @return the used_bytes_serialized_name
     */
    @AuraEnabled
    public Long getUsedBytes() {
      return used_bytes_serialized_name;
    }
    /**
     * Gets the total_bytes_serialized_name.
     *
     * **Deprecated**: Total number of bytes available in the environment's memory capacity.
     *
     * @return the total_bytes_serialized_name
     */
    @AuraEnabled
    public Long getTotalBytes() {
      return total_bytes_serialized_name;
    }
    /**
     * Gets the used_serialized_name.
     *
     * **Deprecated**: Amount of memory capacity used, in KB or GB format.
     *
     * @return the used_serialized_name
     */
    @AuraEnabled
    public String getUsed() {
      return used_serialized_name;
    }
    /**
     * Gets the total_serialized_name.
     *
     * **Deprecated**: Total amount of the environment's memory capacity, in KB or GB format.
     *
     * @return the total_serialized_name
     */
    @AuraEnabled
    public String getTotal() {
      return total_serialized_name;
    }
    /**
     * Gets the percent_used_serialized_name.
     *
     * **Deprecated**: Percentage of the environment's memory capacity that is being used.
     *
     * @return the percent_used_serialized_name
     */
    @AuraEnabled
    public Double getPercentUsed() {
      return percent_used_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MemoryUsage ret = (MemoryUsage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An object that indicates the Categories enrichment will be applied to the specified field.
   */
  public class NluEnrichmentCategories extends IBMWatsonDynamicModel {
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the dynamic properties attached to NluEnrichmentCategories.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentCategories ret = (NluEnrichmentCategories) super.deserialize(jsonString, jsonMap, classType);

      Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

      for (String key : jsonMap.keySet()) {
        if (!baseProps.contains(key)) {
          ret.put(key, jsonMap.get(key));
        }
      }

      return ret;
    }
  }

  /**
   * An object specifying the emotion detection enrichment and related parameters.
   */
  public class NluEnrichmentEmotion extends IBMWatsonGenericModel {
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;
    /**
     * Gets the document_serialized_name.
     *
     * When `true`, emotion detection is performed on the entire field.
     *
     * @return the document_serialized_name
     */
    @AuraEnabled
    public Boolean getDocument() {
      return document_serialized_name;
    }
    /**
     * Gets the targets_serialized_name.
     *
     * A comma-separated list of target strings that will have any associated emotions detected.
     *
     * @return the targets_serialized_name
     */
    @AuraEnabled
    public List<String> getTargets() {
      return targets_serialized_name;
    }

    /**
     * Sets the document_serialized_name.
     *
     * @param document the new document
     */
    public void setDocument(final Boolean document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the targets_serialized_name.
     *
     * @param targets the new targets
     */
    public void setTargets(final List<String> targets) {
      this.targets_serialized_name = targets;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentEmotion ret = (NluEnrichmentEmotion) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An object speficying the Entities enrichment and related parameters.
   */
  public class NluEnrichmentEntities extends IBMWatsonGenericModel {
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;
    private Long limit_serialized_name;
    private Boolean mentions_serialized_name;
    private Boolean mention_types_serialized_name;
    private Boolean sentence_location_serialized_name;
    private String model_serialized_name;
    /**
     * Gets the sentiment_serialized_name.
     *
     * When `true`, sentiment analysis of entities will be performed on the specified field.
     *
     * @return the sentiment_serialized_name
     */
    @AuraEnabled
    public Boolean getSentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * When `true`, emotion detection of entities will be performed on the specified field.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public Boolean getEmotion() {
      return emotion_serialized_name;
    }
    /**
     * Gets the limit_serialized_name.
     *
     * The maximum number of entities to extract for each instance of the specified field.
     *
     * @return the limit_serialized_name
     */
    @AuraEnabled
    public Long getLimit() {
      return limit_serialized_name;
    }
    /**
     * Gets the mentions_serialized_name.
     *
     * When `true`, the number of mentions of each identified entity is recorded. The default is `false`.
     *
     * @return the mentions_serialized_name
     */
    @AuraEnabled
    public Boolean getMentions() {
      return mentions_serialized_name;
    }
    /**
     * Gets the mention_types_serialized_name.
     *
     * When `true`, the types of mentions for each idetifieid entity is recorded. The default is `false`.
     *
     * @return the mention_types_serialized_name
     */
    @AuraEnabled
    public Boolean getMentionTypes() {
      return mention_types_serialized_name;
    }
    /**
     * Gets the sentence_location_serialized_name.
     *
     * When `true`, a list of sentence locations for each instance of each identified entity is recorded. The default is `false`.
     *
     * @return the sentence_location_serialized_name
     */
    @AuraEnabled
    public Boolean getSentenceLocation() {
      return sentence_location_serialized_name;
    }
    /**
     * Gets the model_serialized_name.
     *
     * The enrichement model to use with entity extraction. May be a custom model provided by Watson Knowledge Studio, the public model for use with Knowledge Graph `en-news`, or the default public model `alchemy`.
     *
     * @return the model_serialized_name
     */
    @AuraEnabled
    public String getModel() {
      return model_serialized_name;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final Boolean sentiment) {
      this.sentiment_serialized_name = sentiment;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final Boolean emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the limit_serialized_name.
     *
     * @param limitVar the new limitVar
     */
    public void setLimit(final long limitVar) {
      this.limit_serialized_name = limitVar;
    }

    /**
     * Sets the mentions_serialized_name.
     *
     * @param mentions the new mentions
     */
    public void setMentions(final Boolean mentions) {
      this.mentions_serialized_name = mentions;
    }

    /**
     * Sets the mention_types_serialized_name.
     *
     * @param mentionTypes the new mentionTypes
     */
    public void setMentionTypes(final Boolean mentionTypes) {
      this.mention_types_serialized_name = mentionTypes;
    }

    /**
     * Sets the sentence_location_serialized_name.
     *
     * @param sentenceLocation the new sentenceLocation
     */
    public void setSentenceLocation(final Boolean sentenceLocation) {
      this.sentence_location_serialized_name = sentenceLocation;
    }

    /**
     * Sets the model_serialized_name.
     *
     * @param model the new model
     */
    public void setModel(final String model) {
      this.model_serialized_name = model;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentEntities ret = (NluEnrichmentEntities) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * NluEnrichmentFeatures.
   */
  public class NluEnrichmentFeatures extends IBMWatsonGenericModel {
    private NluEnrichmentKeywords keywords_serialized_name;
    private NluEnrichmentEntities entities_serialized_name;
    private NluEnrichmentSentiment sentiment_serialized_name;
    private NluEnrichmentEmotion emotion_serialized_name;
    private NluEnrichmentCategories categories_serialized_name;
    private NluEnrichmentSemanticRoles semantic_roles_serialized_name;
    private NluEnrichmentRelations relations_serialized_name;
    /**
     * Gets the keywords_serialized_name.
     *
     * An object specifying the Keyword enrichment and related parameters.
     *
     * @return the keywords_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentKeywords getKeywords() {
      return keywords_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * An object speficying the Entities enrichment and related parameters.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentEntities getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * An object specifying the sentiment extraction enrichment and related parameters.
     *
     * @return the sentiment_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentSentiment getSentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * An object specifying the emotion detection enrichment and related parameters.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentEmotion getEmotion() {
      return emotion_serialized_name;
    }
    /**
     * Gets the categories_serialized_name.
     *
     * An object specifying the categories enrichment and related parameters.
     *
     * @return the categories_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentCategories getCategories() {
      return categories_serialized_name;
    }
    /**
     * Gets the semantic_roles_serialized_name.
     *
     * An object specifiying the semantic roles enrichment and related parameters.
     *
     * @return the semantic_roles_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentSemanticRoles getSemanticRoles() {
      return semantic_roles_serialized_name;
    }
    /**
     * Gets the relations_serialized_name.
     *
     * An object specifying the relations enrichment and related parameters.
     *
     * @return the relations_serialized_name
     */
    @AuraEnabled
    public NluEnrichmentRelations getRelations() {
      return relations_serialized_name;
    }

    /**
     * Sets the keywords_serialized_name.
     *
     * @param keywords the new keywords
     */
    public void setKeywords(final NluEnrichmentKeywords keywords) {
      this.keywords_serialized_name = keywords;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final NluEnrichmentEntities entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final NluEnrichmentSentiment sentiment) {
      this.sentiment_serialized_name = sentiment;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final NluEnrichmentEmotion emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the categories_serialized_name.
     *
     * @param categories the new categories
     */
    public void setCategories(final NluEnrichmentCategories categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the semantic_roles_serialized_name.
     *
     * @param semanticRoles the new semanticRoles
     */
    public void setSemanticRoles(final NluEnrichmentSemanticRoles semanticRoles) {
      this.semantic_roles_serialized_name = semanticRoles;
    }

    /**
     * Sets the relations_serialized_name.
     *
     * @param relations the new relations
     */
    public void setRelations(final NluEnrichmentRelations relations) {
      this.relations_serialized_name = relations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentFeatures ret = (NluEnrichmentFeatures) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for keywords_serialized_name
      NluEnrichmentKeywords newKeywords = (NluEnrichmentKeywords) new NluEnrichmentKeywords().deserialize(JSON.serialize(ret.getKeywords()), (Map<String, Object>) jsonMap.get('keywords_serialized_name'), NluEnrichmentKeywords.class);
      ret.setKeywords(newKeywords);

      // calling custom deserializer for entities_serialized_name
      NluEnrichmentEntities newEntities = (NluEnrichmentEntities) new NluEnrichmentEntities().deserialize(JSON.serialize(ret.getEntities()), (Map<String, Object>) jsonMap.get('entities_serialized_name'), NluEnrichmentEntities.class);
      ret.setEntities(newEntities);

      // calling custom deserializer for sentiment_serialized_name
      NluEnrichmentSentiment newSentiment = (NluEnrichmentSentiment) new NluEnrichmentSentiment().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), NluEnrichmentSentiment.class);
      ret.setSentiment(newSentiment);

      // calling custom deserializer for emotion_serialized_name
      NluEnrichmentEmotion newEmotion = (NluEnrichmentEmotion) new NluEnrichmentEmotion().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), NluEnrichmentEmotion.class);
      ret.setEmotion(newEmotion);

      // calling custom deserializer for categories_serialized_name
      NluEnrichmentCategories newCategories = (NluEnrichmentCategories) new NluEnrichmentCategories().deserialize(JSON.serialize(ret.getCategories()), (Map<String, Object>) jsonMap.get('categories_serialized_name'), NluEnrichmentCategories.class);
      ret.setCategories(newCategories);

      // calling custom deserializer for semantic_roles_serialized_name
      NluEnrichmentSemanticRoles newSemanticRoles = (NluEnrichmentSemanticRoles) new NluEnrichmentSemanticRoles().deserialize(JSON.serialize(ret.getSemanticRoles()), (Map<String, Object>) jsonMap.get('semantic_roles_serialized_name'), NluEnrichmentSemanticRoles.class);
      ret.setSemanticRoles(newSemanticRoles);

      // calling custom deserializer for relations_serialized_name
      NluEnrichmentRelations newRelations = (NluEnrichmentRelations) new NluEnrichmentRelations().deserialize(JSON.serialize(ret.getRelations()), (Map<String, Object>) jsonMap.get('relations_serialized_name'), NluEnrichmentRelations.class);
      ret.setRelations(newRelations);

      return ret;
    }
  }

  /**
   * An object specifying the Keyword enrichment and related parameters.
   */
  public class NluEnrichmentKeywords extends IBMWatsonGenericModel {
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;
    private Long limit_serialized_name;
    /**
     * Gets the sentiment_serialized_name.
     *
     * When `true`, sentiment analysis of keywords will be performed on the specified field.
     *
     * @return the sentiment_serialized_name
     */
    @AuraEnabled
    public Boolean getSentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * When `true`, emotion detection of keywords will be performed on the specified field.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public Boolean getEmotion() {
      return emotion_serialized_name;
    }
    /**
     * Gets the limit_serialized_name.
     *
     * The maximum number of keywords to extract for each instance of the specified field.
     *
     * @return the limit_serialized_name
     */
    @AuraEnabled
    public Long getLimit() {
      return limit_serialized_name;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final Boolean sentiment) {
      this.sentiment_serialized_name = sentiment;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final Boolean emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the limit_serialized_name.
     *
     * @param limitVar the new limitVar
     */
    public void setLimit(final long limitVar) {
      this.limit_serialized_name = limitVar;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentKeywords ret = (NluEnrichmentKeywords) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An object specifying the relations enrichment and related parameters.
   */
  public class NluEnrichmentRelations extends IBMWatsonGenericModel {
    private String model_serialized_name;
    /**
     * Gets the model_serialized_name.
     *
     * *For use with `natural_language_understanding` enrichments only.* The enrichement model to use with relationship extraction. May be a custom model provided by Watson Knowledge Studio, the public model for use with Knowledge Graph `en-news`, the default is`en-news`.
     *
     * @return the model_serialized_name
     */
    @AuraEnabled
    public String getModel() {
      return model_serialized_name;
    }

    /**
     * Sets the model_serialized_name.
     *
     * @param model the new model
     */
    public void setModel(final String model) {
      this.model_serialized_name = model;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentRelations ret = (NluEnrichmentRelations) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An object specifiying the semantic roles enrichment and related parameters.
   */
  public class NluEnrichmentSemanticRoles extends IBMWatsonGenericModel {
    private Boolean entities_serialized_name;
    private Boolean keywords_serialized_name;
    private Long limit_serialized_name;
    /**
     * Gets the entities_serialized_name.
     *
     * When `true` entities are extracted from the identified sentence parts.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public Boolean getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the keywords_serialized_name.
     *
     * When `true`, keywords are extracted from the identified sentence parts.
     *
     * @return the keywords_serialized_name
     */
    @AuraEnabled
    public Boolean getKeywords() {
      return keywords_serialized_name;
    }
    /**
     * Gets the limit_serialized_name.
     *
     * The maximum number of semantic roles enrichments to extact from each instance of the specified field.
     *
     * @return the limit_serialized_name
     */
    @AuraEnabled
    public Long getLimit() {
      return limit_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final Boolean entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the keywords_serialized_name.
     *
     * @param keywords the new keywords
     */
    public void setKeywords(final Boolean keywords) {
      this.keywords_serialized_name = keywords;
    }

    /**
     * Sets the limit_serialized_name.
     *
     * @param limitVar the new limitVar
     */
    public void setLimit(final long limitVar) {
      this.limit_serialized_name = limitVar;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentSemanticRoles ret = (NluEnrichmentSemanticRoles) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An object specifying the sentiment extraction enrichment and related parameters.
   */
  public class NluEnrichmentSentiment extends IBMWatsonGenericModel {
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;
    /**
     * Gets the document_serialized_name.
     *
     * When `true`, sentiment analysis is performed on the entire field.
     *
     * @return the document_serialized_name
     */
    @AuraEnabled
    public Boolean getDocument() {
      return document_serialized_name;
    }
    /**
     * Gets the targets_serialized_name.
     *
     * A comma-separated list of target strings that will have any associated sentiment analyzed.
     *
     * @return the targets_serialized_name
     */
    @AuraEnabled
    public List<String> getTargets() {
      return targets_serialized_name;
    }

    /**
     * Sets the document_serialized_name.
     *
     * @param document the new document
     */
    public void setDocument(final Boolean document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the targets_serialized_name.
     *
     * @param targets the new targets
     */
    public void setTargets(final List<String> targets) {
      this.targets_serialized_name = targets;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentSentiment ret = (NluEnrichmentSentiment) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * NormalizationOperation.
   */
  public class NormalizationOperation extends IBMWatsonGenericModel {
    private String operation_serialized_name;
    private String source_field_serialized_name;
    private String destination_field_serialized_name;
    /**
     * Gets the operation_serialized_name.
     *
     * Identifies what type of operation to perform.   **copy** - Copies the value of the `source_field` to the `destination_field` field. If the `destination_field` already exists, then the value of the `source_field` overwrites the original value of the `destination_field`.   **move** - Renames (moves) the `source_field` to the `destination_field`. If the `destination_field` already exists, then the value of the `source_field` overwrites the original value of the `destination_field`. Rename is identical to copy, except that the `source_field` is removed after the value has been copied to the `destination_field` (it is the same as a _copy_ followed by a _remove_).   **merge** - Merges the value of the `source_field` with the value of the `destination_field`. The `destination_field` is converted into an array if it is not already an array, and the value of the `source_field` is appended to the array. This operation removes the `source_field` after the merge. If the `source_field` does not exist in the current document, then the `destination_field` is still converted into an array (if it is not an array already). This is ensures the type for `destination_field` is consistent across all documents.   **remove** - Deletes the `source_field` field. The `destination_field` is ignored for this operation.   **remove_nulls** - Removes all nested null (blank) leif values from the JSON tree. `source_field` and `destination_field` are ignored by this operation because _remove_nulls_ operates on the entire JSON tree. Typically, `remove_nulls` is invoked as the last normalization operation (if it is inoked at all, it can be time-expensive).
     *
     * @return the operation_serialized_name
     */
    @AuraEnabled
    public String getOperation() {
      return operation_serialized_name;
    }
    /**
     * Gets the source_field_serialized_name.
     *
     * The source field for the operation.
     *
     * @return the source_field_serialized_name
     */
    @AuraEnabled
    public String getSourceField() {
      return source_field_serialized_name;
    }
    /**
     * Gets the destination_field_serialized_name.
     *
     * The destination field for the operation.
     *
     * @return the destination_field_serialized_name
     */
    @AuraEnabled
    public String getDestinationField() {
      return destination_field_serialized_name;
    }

    /**
     * Sets the operation_serialized_name.
     *
     * @param operation the new operation
     */
    public void setOperation(final String operation) {
      this.operation_serialized_name = operation;
    }

    /**
     * Sets the source_field_serialized_name.
     *
     * @param sourceField the new sourceField
     */
    public void setSourceField(final String sourceField) {
      this.source_field_serialized_name = sourceField;
    }

    /**
     * Sets the destination_field_serialized_name.
     *
     * @param destinationField the new destinationField
     */
    public void setDestinationField(final String destinationField) {
      this.destination_field_serialized_name = destinationField;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NormalizationOperation ret = (NormalizationOperation) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A notice produced for the collection.
   */
  public class Notice extends IBMWatsonGenericModel {
    private String notice_id_serialized_name;
    private Datetime created_serialized_name;
    private String document_id_serialized_name;
    private String query_id_serialized_name;
    private String severity_serialized_name;
    private String step_serialized_name;
    private String description_serialized_name;
    /**
     * Gets the notice_id_serialized_name.
     *
     * Identifies the notice. Many notices might have the same ID. This field exists so that user applications can programmatically identify a notice and take automatic corrective action.
     *
     * @return the notice_id_serialized_name
     */
    @AuraEnabled
    public String getNoticeId() {
      return notice_id_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The creation date of the collection in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the document_id_serialized_name.
     *
     * Unique identifier of the document.
     *
     * @return the document_id_serialized_name
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * Unique identifier of the query used for relevance training.
     *
     * @return the query_id_serialized_name
     */
    @AuraEnabled
    public String getQueryId() {
      return query_id_serialized_name;
    }
    /**
     * Gets the severity_serialized_name.
     *
     * Severity level of the notice.
     *
     * @return the severity_serialized_name
     */
    @AuraEnabled
    public String getSeverity() {
      return severity_serialized_name;
    }
    /**
     * Gets the step_serialized_name.
     *
     * Ingestion or training step in which the notice occurred.
     *
     * @return the step_serialized_name
     */
    @AuraEnabled
    public String getStep() {
      return step_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the notice.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Notice ret = (Notice) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * PdfHeadingDetection.
   */
  public class PdfHeadingDetection extends IBMWatsonGenericModel {
    private List<FontSetting> fonts_serialized_name;
    /**
     * Gets the fonts_serialized_name.
     *
     * @return the fonts_serialized_name
     */
    @AuraEnabled
    public List<FontSetting> getFonts() {
      return fonts_serialized_name;
    }

    /**
     * Sets the fonts_serialized_name.
     *
     * @param fonts the new fonts
     */
    public void setFonts(final List<FontSetting> fonts) {
      this.fonts_serialized_name = fonts;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      PdfHeadingDetection ret = (PdfHeadingDetection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for fonts_serialized_name
      List<FontSetting> newFonts = new List<FontSetting>();
      List<FontSetting> deserializedFonts = ret.getFonts();
      if (deserializedFonts != null) {
        for (Integer i = 0; i < deserializedFonts.size(); i++) {
          FontSetting currentItem = ret.getFonts().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('fonts_serialized_name');
          FontSetting newItem = (FontSetting) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), FontSetting.class);
          newFonts.add(newItem);
        }
        ret.setFonts(newFonts);
      }

      return ret;
    }
  }

  /**
   * A list of PDF conversion settings.
   */
  public class PdfSettings extends IBMWatsonGenericModel {
    private PdfHeadingDetection heading_serialized_name;
    /**
     * Gets the heading_serialized_name.
     *
     * @return the heading_serialized_name
     */
    @AuraEnabled
    public PdfHeadingDetection getHeading() {
      return heading_serialized_name;
    }

    /**
     * Sets the heading_serialized_name.
     *
     * @param heading the new heading
     */
    public void setHeading(final PdfHeadingDetection heading) {
      this.heading_serialized_name = heading;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      PdfSettings ret = (PdfSettings) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for heading_serialized_name
      PdfHeadingDetection newHeading = (PdfHeadingDetection) new PdfHeadingDetection().deserialize(JSON.serialize(ret.getHeading()), (Map<String, Object>) jsonMap.get('heading_serialized_name'), PdfHeadingDetection.class);
      ret.setHeading(newHeading);

      return ret;
    }
  }

  /**
   * An aggregation produced by the Discovery service to analyze the input provided.
   */
  public class QueryAggregation extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String field_serialized_name;
    private List<AggregationResult> results_serialized_name;
    private String match_serialized_name;
    private Long matching_results_serialized_name;
    private List<QueryAggregation> aggregations_serialized_name;
    /**
     * Gets the type_serialized_name.
     *
     * The type of aggregation command used. For example: term, filter, max, min, etc.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the field_serialized_name.
     *
     * The field where the aggregation is located in the document.
     *
     * @return the field_serialized_name
     */
    @AuraEnabled
    public String getField() {
      return field_serialized_name;
    }
    /**
     * Gets the results_serialized_name.
     *
     * @return the results_serialized_name
     */
    @AuraEnabled
    public List<AggregationResult> getResults() {
      return results_serialized_name;
    }
    /**
     * Gets the match_serialized_name.
     *
     * The match the aggregated results queried for.
     *
     * @return the match_serialized_name
     */
    @AuraEnabled
    public String getMatch() {
      return match_serialized_name;
    }
    /**
     * Gets the matching_results_serialized_name.
     *
     * Number of matching results.
     *
     * @return the matching_results_serialized_name
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
    /**
     * Gets the aggregations_serialized_name.
     *
     * Aggregations returned by the Discovery service.
     *
     * @return the aggregations_serialized_name
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    /**
     * Sets the field_serialized_name.
     *
     * @param field the new field
     */
    public void setField(final String field) {
      this.field_serialized_name = field;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results the new results
     */
    public void setResults(final List<AggregationResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the match_serialized_name.
     *
     * @param match the new match
     */
    public void setMatch(final String match) {
      this.match_serialized_name = match;
    }

    /**
     * Sets the matching_results_serialized_name.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryAggregation ret = (QueryAggregation) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results_serialized_name
      List<AggregationResult> newResults = new List<AggregationResult>();
      List<AggregationResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          AggregationResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          AggregationResult newItem = (AggregationResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AggregationResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      // calling custom deserializer for aggregations_serialized_name
      List<QueryAggregation> newAggregations = new List<QueryAggregation>();
      List<QueryAggregation> deserializedAggregations = ret.getAggregations();
      if (deserializedAggregations != null) {
        for (Integer i = 0; i < deserializedAggregations.size(); i++) {
          QueryAggregation currentItem = ret.getAggregations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aggregations_serialized_name');
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryAggregation.class);
          newAggregations.add(newItem);
        }
        ret.setAggregations(newAggregations);
      }

      return ret;
    }
  }

  /**
   * Entity text to provide context for the queried entity and rank based on that association. For example, if you wanted to query the city of London in England your query would look for `London` with the context of `England`.
   */
  public class QueryEntitiesContext extends IBMWatsonGenericModel {
    private String text_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * Entity text to provide context for the queried entity and rank based on that association. For example, if you wanted to query the city of London in England your query would look for `London` with the context of `England`.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryEntitiesContext ret = (QueryEntitiesContext) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A text string that appears within the entity text field.
   */
  public class QueryEntitiesEntity extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String type_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * Entity text content.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * The type of the specified entity.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryEntitiesEntity ret = (QueryEntitiesEntity) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The queryEntities options.
   */
  public class QueryEntitiesOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String feature_serialized_name;
    private QueryEntitiesEntity entity_serialized_name;
    private QueryEntitiesContext context_serialized_name;
    private Long count_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the feature_serialized_name.
     *
     * The entity query feature to perform. Must be `disambiguate`.
     *
     * @return the feature_serialized_name
     */
    public String feature() {
      return feature_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * A text string that appears within the entity text field.
     *
     * @return the entity_serialized_name
     */
    public QueryEntitiesEntity entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the context_serialized_name.
     *
     * Entity text to provide context for the queried entity and rank based on that association. For example, if you wanted to query the city of London in England your query would look for `London` with the context of `England`.
     *
     * @return the context_serialized_name
     */
    public QueryEntitiesContext context() {
      return context_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * The number of results to return. The default is `10`. The maximum is `1000`.
     *
     * @return the count_serialized_name
     */
    public Long count() {
      return count_serialized_name;
    }
    private QueryEntitiesOptions(QueryEntitiesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      feature_serialized_name = builder.feature_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      context_serialized_name = builder.context_serialized_name;
      count_serialized_name = builder.count_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder newBuilder() {
      return new QueryEntitiesOptionsBuilder(this);
    }

  }

  /**
   * QueryEntitiesOptions Builder.
   */
  public class QueryEntitiesOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String feature_serialized_name;
    private QueryEntitiesEntity entity_serialized_name;
    private QueryEntitiesContext context_serialized_name;
    private Long count_serialized_name;

    private QueryEntitiesOptionsBuilder(QueryEntitiesOptions queryEntitiesOptions) {
      environment_id_serialized_name = queryEntitiesOptions.environment_id_serialized_name;
      collection_id_serialized_name = queryEntitiesOptions.collection_id_serialized_name;
      feature_serialized_name = queryEntitiesOptions.feature_serialized_name;
      entity_serialized_name = queryEntitiesOptions.entity_serialized_name;
      context_serialized_name = queryEntitiesOptions.context_serialized_name;
      count_serialized_name = queryEntitiesOptions.count_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryEntitiesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public QueryEntitiesOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a QueryEntitiesOptions.
     *
     * @return the queryEntitiesOptions
     */
    public QueryEntitiesOptions build() {
      return new QueryEntitiesOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the feature_serialized_name.
     *
     * @param feature the feature
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder feature(String feature) {
      this.feature_serialized_name = feature;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder entity(QueryEntitiesEntity entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context the context
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder context(QueryEntitiesContext context) {
      this.context_serialized_name = context;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count the count
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder count(Long count) {
      this.count_serialized_name = count;
      return this;
    }
  }

  /**
   * An array of entities resulting from the query.
   */
  public class QueryEntitiesResponse extends IBMWatsonGenericModel {
    private List<QueryEntitiesEntity> entities_serialized_name;
    /**
     * Gets the entities_serialized_name.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<QueryEntitiesEntity> getEntities() {
      return entities_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<QueryEntitiesEntity> entities) {
      this.entities_serialized_name = entities;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryEntitiesResponse ret = (QueryEntitiesResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities_serialized_name
      List<QueryEntitiesEntity> newEntities = new List<QueryEntitiesEntity>();
      List<QueryEntitiesEntity> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          QueryEntitiesEntity currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          QueryEntitiesEntity newItem = (QueryEntitiesEntity) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryEntitiesEntity.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      return ret;
    }
  }

  /**
   * QueryFilterType.
   */
  public class QueryFilterType extends IBMWatsonGenericModel {
    private List<String> exclude_serialized_name;
    private List<String> include_serialized_name;
    /**
     * Gets the exclude_serialized_name.
     *
     * A comma-separated list of types to exclude.
     *
     * @return the exclude_serialized_name
     */
    @AuraEnabled
    public List<String> getExclude() {
      return exclude_serialized_name;
    }
    /**
     * Gets the include_serialized_name.
     *
     * A comma-separated list of types to include. All other types are excluded.
     *
     * @return the include_serialized_name
     */
    @AuraEnabled
    public List<String> getInclude() {
      return include_serialized_name;
    }

    /**
     * Sets the exclude_serialized_name.
     *
     * @param exclude the new exclude
     */
    public void setExclude(final List<String> exclude) {
      this.exclude_serialized_name = exclude;
    }

    /**
     * Sets the include_serialized_name.
     *
     * @param include the new include
     */
    public void setInclude(final List<String> include) {
      this.include_serialized_name = include;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryFilterType ret = (QueryFilterType) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The queryNotices options.
   */
  public class QueryNoticesOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private Boolean passages_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private List<String> passages_fields_serialized_name;
    private Long passages_count_serialized_name;
    private Long passages_characters_serialized_name;
    private String deduplicate_field_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the query_serialized_name.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query_serialized_name
     */
    public String query() {
      return query_serialized_name;
    }
    /**
     * Gets the natural_language_query_serialized_name.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query_serialized_name
     */
    public String naturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
    /**
     * Gets the passages_serialized_name.
     *
     * A passages query that returns the most relevant passages from the results.
     *
     * @return the passages_serialized_name
     */
    public Boolean passages() {
      return passages_serialized_name;
    }
    /**
     * Gets the aggregation_serialized_name.
     *
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation_serialized_name
     */
    public String aggregation() {
      return aggregation_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * Number of documents to return.
     *
     * @return the count_serialized_name
     */
    public Long count() {
      return count_serialized_name;
    }
    /**
     * Gets the return_serialized_name.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the return_serialized_name
     */
    public List<String> returnField() {
      return return_serialized_name;
    }
    /**
     * Gets the offset_serialized_name.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset_serialized_name
     */
    public Long offset() {
      return offset_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the sort_serialized_name
     */
    public List<String> sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the highlight_serialized_name.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight_serialized_name
     */
    public Boolean highlight() {
      return highlight_serialized_name;
    }
    /**
     * Gets the passages_fields_serialized_name.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all top-level fields are included.
     *
     * @return the passages_fields_serialized_name
     */
    public List<String> passagesFields() {
      return passages_fields_serialized_name;
    }
    /**
     * Gets the passages_count_serialized_name.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found. The default is `10`. The maximum is `100`.
     *
     * @return the passages_count_serialized_name
     */
    public Long passagesCount() {
      return passages_count_serialized_name;
    }
    /**
     * Gets the passages_characters_serialized_name.
     *
     * The approximate number of characters that any one passage will have. The default is `400`. The minimum is `50`. The maximum is `2000`.
     *
     * @return the passages_characters_serialized_name
     */
    public Long passagesCharacters() {
      return passages_characters_serialized_name;
    }
    /**
     * Gets the deduplicate_field_serialized_name.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field_serialized_name
     */
    public String deduplicateField() {
      return deduplicate_field_serialized_name;
    }
    private QueryNoticesOptions(QueryNoticesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      filter_serialized_name = builder.filter_serialized_name;
      query_serialized_name = builder.query_serialized_name;
      natural_language_query_serialized_name = builder.natural_language_query_serialized_name;
      passages_serialized_name = builder.passages_serialized_name;
      aggregation_serialized_name = builder.aggregation_serialized_name;
      count_serialized_name = builder.count_serialized_name;
      return_serialized_name = builder.return_serialized_name;
      offset_serialized_name = builder.offset_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      highlight_serialized_name = builder.highlight_serialized_name;
      passages_fields_serialized_name = builder.passages_fields_serialized_name;
      passages_count_serialized_name = builder.passages_count_serialized_name;
      passages_characters_serialized_name = builder.passages_characters_serialized_name;
      deduplicate_field_serialized_name = builder.deduplicate_field_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder newBuilder() {
      return new QueryNoticesOptionsBuilder(this);
    }

  }

  /**
   * QueryNoticesOptions Builder.
   */
  public class QueryNoticesOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private Boolean passages_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private List<String> passages_fields_serialized_name;
    private Long passages_count_serialized_name;
    private Long passages_characters_serialized_name;
    private String deduplicate_field_serialized_name;

    private QueryNoticesOptionsBuilder(QueryNoticesOptions queryNoticesOptions) {
      environment_id_serialized_name = queryNoticesOptions.environment_id_serialized_name;
      collection_id_serialized_name = queryNoticesOptions.collection_id_serialized_name;
      filter_serialized_name = queryNoticesOptions.filter_serialized_name;
      query_serialized_name = queryNoticesOptions.query_serialized_name;
      natural_language_query_serialized_name = queryNoticesOptions.natural_language_query_serialized_name;
      passages_serialized_name = queryNoticesOptions.passages_serialized_name;
      aggregation_serialized_name = queryNoticesOptions.aggregation_serialized_name;
      count_serialized_name = queryNoticesOptions.count_serialized_name;
      return_serialized_name = queryNoticesOptions.return_serialized_name;
      offset_serialized_name = queryNoticesOptions.offset_serialized_name;
      sort_serialized_name = queryNoticesOptions.sort_serialized_name;
      highlight_serialized_name = queryNoticesOptions.highlight_serialized_name;
      passages_fields_serialized_name = queryNoticesOptions.passages_fields_serialized_name;
      passages_count_serialized_name = queryNoticesOptions.passages_count_serialized_name;
      passages_characters_serialized_name = queryNoticesOptions.passages_characters_serialized_name;
      deduplicate_field_serialized_name = queryNoticesOptions.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryNoticesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public QueryNoticesOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a QueryNoticesOptions.
     *
     * @return the queryNoticesOptions
     */
    public QueryNoticesOptions build() {
      return new QueryNoticesOptions(this);
    }

    /**
     * Adds an returnVar to return_serialized_name.
     *
     * @param returnVar the new returnVar
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addReturn(String returnVar) {
      IBMWatsonValidator.notNull(returnVar, 'returnVar cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(returnVar);
      return this;
    }

    /**
     * Adds an sortVar to sort_serialized_name.
     *
     * @param sortVar the new sortVar
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addSort(String sortVar) {
      IBMWatsonValidator.notNull(sortVar, 'sortVar cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sortVar);
      return this;
    }

    /**
     * Adds an passagesFields to passages_fields_serialized_name.
     *
     * @param passagesFields the new passagesFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addPassagesFields(String passagesFields) {
      IBMWatsonValidator.notNull(passagesFields, 'passagesFields cannot be null');
      if (this.passages_fields_serialized_name == null) {
        this.passages_fields_serialized_name = new List<String>();
      }
      this.passages_fields_serialized_name.add(passagesFields);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder filter(String filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query the query
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder query(String query) {
      this.query_serialized_name = query;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the passages_serialized_name.
     *
     * @param passages the passages
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passages(Boolean passages) {
      this.passages_serialized_name = passages;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation the aggregation
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder aggregation(String aggregation) {
      this.aggregation_serialized_name = aggregation;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count the count
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder count(Long count) {
      this.count_serialized_name = count;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param returnVar the returnVar
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder returnField(List<String> returnVar) {
      this.return_serialized_name = returnVar;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset the offset
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder offset(Long offset) {
      this.offset_serialized_name = offset;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sortVar the sortVar
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder sortField(List<String> sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight the highlight
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder highlight(Boolean highlight) {
      this.highlight_serialized_name = highlight;
      return this;
    }

    /**
     * Set the passages_fields_serialized_name.
     * Existing passages_fields_serialized_name will be replaced.
     *
     * @param passagesFields the passagesFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesFields(List<String> passagesFields) {
      this.passages_fields_serialized_name = passagesFields;
      return this;
    }

    /**
     * Set the passages_count_serialized_name.
     *
     * @param passagesCount the passagesCount
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCount(Long passagesCount) {
      this.passages_count_serialized_name = passagesCount;
      return this;
    }

    /**
     * Set the passages_characters_serialized_name.
     *
     * @param passagesCharacters the passagesCharacters
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCharacters(Long passagesCharacters) {
      this.passages_characters_serialized_name = passagesCharacters;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicateField the deduplicateField
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicate_field_serialized_name = deduplicateField;
      return this;
    }
  }

  /**
   * QueryNoticesResponse.
   */
  public class QueryNoticesResponse extends IBMWatsonGenericModel {
    private Long matching_results_serialized_name;
    private List<QueryNoticesResult> results_serialized_name;
    private List<QueryAggregation> aggregations_serialized_name;
    private List<QueryPassages> passages_serialized_name;
    private Long duplicates_removed_serialized_name;
    /**
     * Gets the matching_results_serialized_name.
     *
     * @return the matching_results_serialized_name
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
    /**
     * Gets the results_serialized_name.
     *
     * @return the results_serialized_name
     */
    @AuraEnabled
    public List<QueryNoticesResult> getResults() {
      return results_serialized_name;
    }
    /**
     * Gets the aggregations_serialized_name.
     *
     * @return the aggregations_serialized_name
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }
    /**
     * Gets the passages_serialized_name.
     *
     * @return the passages_serialized_name
     */
    @AuraEnabled
    public List<QueryPassages> getPassages() {
      return passages_serialized_name;
    }
    /**
     * Gets the duplicates_removed_serialized_name.
     *
     * @return the duplicates_removed_serialized_name
     */
    @AuraEnabled
    public Long getDuplicatesRemoved() {
      return duplicates_removed_serialized_name;
    }

    /**
     * Sets the matching_results_serialized_name.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results the new results
     */
    public void setResults(final List<QueryNoticesResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    /**
     * Sets the passages_serialized_name.
     *
     * @param passages the new passages
     */
    public void setPassages(final List<QueryPassages> passages) {
      this.passages_serialized_name = passages;
    }

    /**
     * Sets the duplicates_removed_serialized_name.
     *
     * @param duplicatesRemoved the new duplicatesRemoved
     */
    public void setDuplicatesRemoved(final long duplicatesRemoved) {
      this.duplicates_removed_serialized_name = duplicatesRemoved;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryNoticesResponse ret = (QueryNoticesResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results_serialized_name
      List<QueryNoticesResult> newResults = new List<QueryNoticesResult>();
      List<QueryNoticesResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          QueryNoticesResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          QueryNoticesResult newItem = (QueryNoticesResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryNoticesResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      // calling custom deserializer for aggregations_serialized_name
      List<QueryAggregation> newAggregations = new List<QueryAggregation>();
      List<QueryAggregation> deserializedAggregations = ret.getAggregations();
      if (deserializedAggregations != null) {
        for (Integer i = 0; i < deserializedAggregations.size(); i++) {
          QueryAggregation currentItem = ret.getAggregations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aggregations_serialized_name');
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryAggregation.class);
          newAggregations.add(newItem);
        }
        ret.setAggregations(newAggregations);
      }

      // calling custom deserializer for passages_serialized_name
      List<QueryPassages> newPassages = new List<QueryPassages>();
      List<QueryPassages> deserializedPassages = ret.getPassages();
      if (deserializedPassages != null) {
        for (Integer i = 0; i < deserializedPassages.size(); i++) {
          QueryPassages currentItem = ret.getPassages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('passages_serialized_name');
          QueryPassages newItem = (QueryPassages) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryPassages.class);
          newPassages.add(newItem);
        }
        ret.setPassages(newPassages);
      }

      return ret;
    }
  }

  /**
   * QueryNoticesResult.
   */
  public class QueryNoticesResult extends IBMWatsonDynamicModel {
    private String id_serialized_name;
    private Double score_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private String collection_id_serialized_name;
    private QueryResultResultMetadata result_metadata_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the id_serialized_name.
     *
     * @return the id_serialized_name
     */
    @AuraEnabled
    public String getId() {
      return id_serialized_name;
    }

    /**
     * Gets the score_serialized_name.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Gets the metadata_serialized_name.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }

    /**
     * Gets the collection_id_serialized_name.
     *
     * @return the collection_id_serialized_name
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }

    /**
     * Gets the result_metadata_serialized_name.
     *
     * @return the result_metadata_serialized_name
     */
    @AuraEnabled
    public QueryResultResultMetadata getResultMetadata() {
      return result_metadata_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to QueryNoticesResult.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    /**
     * Sets the id_serialized_name.
     *
     * @param id_serialized_name the new id_serialized_name
     */
    public void setId(final String id_serialized_name) {
      this.id_serialized_name = id_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata_serialized_name the new metadata_serialized_name
     */
    public void setMetadata(final IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
    }

    /**
     * Sets the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the new collection_id_serialized_name
     */
    public void setCollectionId(final String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Sets the result_metadata_serialized_name.
     *
     * @param result_metadata_serialized_name the new result_metadata_serialized_name
     */
    public void setResultMetadata(final QueryResultResultMetadata result_metadata_serialized_name) {
      this.result_metadata_serialized_name = result_metadata_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryNoticesResult ret = (QueryNoticesResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for result_metadata_serialized_name
      QueryResultResultMetadata newResultMetadata = (QueryResultResultMetadata) new QueryResultResultMetadata().deserialize(JSON.serialize(ret.getResultMetadata()), (Map<String, Object>) jsonMap.get('result_metadata_serialized_name'), QueryResultResultMetadata.class);
      ret.setResultMetadata(newResultMetadata);

      Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

      for (String key : jsonMap.keySet()) {
        if (!baseProps.contains(key)) {
          ret.put(key, jsonMap.get(key));
        }
      }

      return ret;
    }
  }

  /**
   * The query options.
   */
  public class QueryOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private Boolean passages_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private List<String> passages_fields_serialized_name;
    private Long passages_count_serialized_name;
    private Long passages_characters_serialized_name;
    private Boolean deduplicate_serialized_name;
    private String deduplicate_field_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the query_serialized_name.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query_serialized_name
     */
    public String query() {
      return query_serialized_name;
    }
    /**
     * Gets the natural_language_query_serialized_name.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query_serialized_name
     */
    public String naturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
    /**
     * Gets the passages_serialized_name.
     *
     * A passages query that returns the most relevant passages from the results.
     *
     * @return the passages_serialized_name
     */
    public Boolean passages() {
      return passages_serialized_name;
    }
    /**
     * Gets the aggregation_serialized_name.
     *
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation_serialized_name
     */
    public String aggregation() {
      return aggregation_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * Number of documents to return.
     *
     * @return the count_serialized_name
     */
    public Long count() {
      return count_serialized_name;
    }
    /**
     * Gets the return_serialized_name.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the return_serialized_name
     */
    public List<String> returnField() {
      return return_serialized_name;
    }
    /**
     * Gets the offset_serialized_name.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset_serialized_name
     */
    public Long offset() {
      return offset_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the sort_serialized_name
     */
    public List<String> sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the highlight_serialized_name.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight_serialized_name
     */
    public Boolean highlight() {
      return highlight_serialized_name;
    }
    /**
     * Gets the passages_fields_serialized_name.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all top-level fields are included.
     *
     * @return the passages_fields_serialized_name
     */
    public List<String> passagesFields() {
      return passages_fields_serialized_name;
    }
    /**
     * Gets the passages_count_serialized_name.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found. The default is `10`. The maximum is `100`.
     *
     * @return the passages_count_serialized_name
     */
    public Long passagesCount() {
      return passages_count_serialized_name;
    }
    /**
     * Gets the passages_characters_serialized_name.
     *
     * The approximate number of characters that any one passage will have. The default is `400`. The minimum is `50`. The maximum is `2000`.
     *
     * @return the passages_characters_serialized_name
     */
    public Long passagesCharacters() {
      return passages_characters_serialized_name;
    }
    /**
     * Gets the deduplicate_serialized_name.
     *
     * When `true` and used with a Watson Discovery News collection, duplicate results (based on the contents of the `title` field) are removed. Duplicate comparison is limited to the current query only, `offset` is not considered. Defaults to `false`. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_serialized_name
     */
    public Boolean deduplicate() {
      return deduplicate_serialized_name;
    }
    /**
     * Gets the deduplicate_field_serialized_name.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field_serialized_name
     */
    public String deduplicateField() {
      return deduplicate_field_serialized_name;
    }
    private QueryOptions(QueryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      filter_serialized_name = builder.filter_serialized_name;
      query_serialized_name = builder.query_serialized_name;
      natural_language_query_serialized_name = builder.natural_language_query_serialized_name;
      passages_serialized_name = builder.passages_serialized_name;
      aggregation_serialized_name = builder.aggregation_serialized_name;
      count_serialized_name = builder.count_serialized_name;
      return_serialized_name = builder.return_serialized_name;
      offset_serialized_name = builder.offset_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      highlight_serialized_name = builder.highlight_serialized_name;
      passages_fields_serialized_name = builder.passages_fields_serialized_name;
      passages_count_serialized_name = builder.passages_count_serialized_name;
      passages_characters_serialized_name = builder.passages_characters_serialized_name;
      deduplicate_serialized_name = builder.deduplicate_serialized_name;
      deduplicate_field_serialized_name = builder.deduplicate_field_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a QueryOptions builder
     */
    public QueryOptionsBuilder newBuilder() {
      return new QueryOptionsBuilder(this);
    }

  }

  /**
   * QueryOptions Builder.
   */
  public class QueryOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String filter_serialized_name;
    private String query_serialized_name;
    private String natural_language_query_serialized_name;
    private Boolean passages_serialized_name;
    private String aggregation_serialized_name;
    private Long count_serialized_name;
    private List<String> return_serialized_name;
    private Long offset_serialized_name;
    private List<String> sort_serialized_name;
    private Boolean highlight_serialized_name;
    private List<String> passages_fields_serialized_name;
    private Long passages_count_serialized_name;
    private Long passages_characters_serialized_name;
    private Boolean deduplicate_serialized_name;
    private String deduplicate_field_serialized_name;

    private QueryOptionsBuilder(QueryOptions queryOptions) {
      environment_id_serialized_name = queryOptions.environment_id_serialized_name;
      collection_id_serialized_name = queryOptions.collection_id_serialized_name;
      filter_serialized_name = queryOptions.filter_serialized_name;
      query_serialized_name = queryOptions.query_serialized_name;
      natural_language_query_serialized_name = queryOptions.natural_language_query_serialized_name;
      passages_serialized_name = queryOptions.passages_serialized_name;
      aggregation_serialized_name = queryOptions.aggregation_serialized_name;
      count_serialized_name = queryOptions.count_serialized_name;
      return_serialized_name = queryOptions.return_serialized_name;
      offset_serialized_name = queryOptions.offset_serialized_name;
      sort_serialized_name = queryOptions.sort_serialized_name;
      highlight_serialized_name = queryOptions.highlight_serialized_name;
      passages_fields_serialized_name = queryOptions.passages_fields_serialized_name;
      passages_count_serialized_name = queryOptions.passages_count_serialized_name;
      passages_characters_serialized_name = queryOptions.passages_characters_serialized_name;
      deduplicate_serialized_name = queryOptions.deduplicate_serialized_name;
      deduplicate_field_serialized_name = queryOptions.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public QueryOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a QueryOptions.
     *
     * @return the queryOptions
     */
    public QueryOptions build() {
      return new QueryOptions(this);
    }

    /**
     * Adds an returnVar to return_serialized_name.
     *
     * @param returnVar the new returnVar
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addReturn(String returnVar) {
      IBMWatsonValidator.notNull(returnVar, 'returnVar cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(returnVar);
      return this;
    }

    /**
     * Adds an sortVar to sort_serialized_name.
     *
     * @param sortVar the new sortVar
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addSort(String sortVar) {
      IBMWatsonValidator.notNull(sortVar, 'sortVar cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sortVar);
      return this;
    }

    /**
     * Adds an passagesFields to passages_fields_serialized_name.
     *
     * @param passagesFields the new passagesFields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addPassagesFields(String passagesFields) {
      IBMWatsonValidator.notNull(passagesFields, 'passagesFields cannot be null');
      if (this.passages_fields_serialized_name == null) {
        this.passages_fields_serialized_name = new List<String>();
      }
      this.passages_fields_serialized_name.add(passagesFields);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder filter(String filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query the query
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder query(String query) {
      this.query_serialized_name = query;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the passages_serialized_name.
     *
     * @param passages the passages
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passages(Boolean passages) {
      this.passages_serialized_name = passages;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation the aggregation
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder aggregation(String aggregation) {
      this.aggregation_serialized_name = aggregation;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count the count
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder count(Long count) {
      this.count_serialized_name = count;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param returnVar the returnVar
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder returnField(List<String> returnVar) {
      this.return_serialized_name = returnVar;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset the offset
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder offset(Long offset) {
      this.offset_serialized_name = offset;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sortVar the sortVar
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder sortField(List<String> sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight the highlight
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder highlight(Boolean highlight) {
      this.highlight_serialized_name = highlight;
      return this;
    }

    /**
     * Set the passages_fields_serialized_name.
     * Existing passages_fields_serialized_name will be replaced.
     *
     * @param passagesFields the passagesFields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesFields(List<String> passagesFields) {
      this.passages_fields_serialized_name = passagesFields;
      return this;
    }

    /**
     * Set the passages_count_serialized_name.
     *
     * @param passagesCount the passagesCount
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCount(Long passagesCount) {
      this.passages_count_serialized_name = passagesCount;
      return this;
    }

    /**
     * Set the passages_characters_serialized_name.
     *
     * @param passagesCharacters the passagesCharacters
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCharacters(Long passagesCharacters) {
      this.passages_characters_serialized_name = passagesCharacters;
      return this;
    }

    /**
     * Set the deduplicate_serialized_name.
     *
     * @param deduplicate the deduplicate
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder deduplicate(Boolean deduplicate) {
      this.deduplicate_serialized_name = deduplicate;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicateField the deduplicateField
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicate_field_serialized_name = deduplicateField;
      return this;
    }
  }

  /**
   * QueryPassages.
   */
  public class QueryPassages extends IBMWatsonGenericModel {
    private String document_id_serialized_name;
    private Double passage_score_serialized_name;
    private String passage_text_serialized_name;
    private Long start_offset_serialized_name;
    private Long end_offset_serialized_name;
    private String field_serialized_name;
    /**
     * Gets the document_id_serialized_name.
     *
     * The unique identifier of the document from which the passage has been extracted.
     *
     * @return the document_id_serialized_name
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
    /**
     * Gets the passage_score_serialized_name.
     *
     * The confidence score of the passages's analysis. A higher score indicates greater confidence.
     *
     * @return the passage_score_serialized_name
     */
    @AuraEnabled
    public Double getPassageScore() {
      return passage_score_serialized_name;
    }
    /**
     * Gets the passage_text_serialized_name.
     *
     * The content of the extracted passage.
     *
     * @return the passage_text_serialized_name
     */
    @AuraEnabled
    public String getPassageText() {
      return passage_text_serialized_name;
    }
    /**
     * Gets the start_offset_serialized_name.
     *
     * The position of the first character of the extracted passage in the originating field.
     *
     * @return the start_offset_serialized_name
     */
    @AuraEnabled
    public Long getStartOffset() {
      return start_offset_serialized_name;
    }
    /**
     * Gets the end_offset_serialized_name.
     *
     * The position of the last character of the extracted passage in the originating field.
     *
     * @return the end_offset_serialized_name
     */
    @AuraEnabled
    public Long getEndOffset() {
      return end_offset_serialized_name;
    }
    /**
     * Gets the field_serialized_name.
     *
     * The label of the field from which the passage has been extracted.
     *
     * @return the field_serialized_name
     */
    @AuraEnabled
    public String getField() {
      return field_serialized_name;
    }

    /**
     * Sets the document_id_serialized_name.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the passage_score_serialized_name.
     *
     * @param passageScore the new passageScore
     */
    public void setPassageScore(final Double passageScore) {
      this.passage_score_serialized_name = passageScore;
    }

    /**
     * Sets the passage_text_serialized_name.
     *
     * @param passageText the new passageText
     */
    public void setPassageText(final String passageText) {
      this.passage_text_serialized_name = passageText;
    }

    /**
     * Sets the start_offset_serialized_name.
     *
     * @param startOffset the new startOffset
     */
    public void setStartOffset(final long startOffset) {
      this.start_offset_serialized_name = startOffset;
    }

    /**
     * Sets the end_offset_serialized_name.
     *
     * @param endOffset the new endOffset
     */
    public void setEndOffset(final long endOffset) {
      this.end_offset_serialized_name = endOffset;
    }

    /**
     * Sets the field_serialized_name.
     *
     * @param field the new field
     */
    public void setField(final String field) {
      this.field_serialized_name = field;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryPassages ret = (QueryPassages) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * QueryRelationsArgument.
   */
  public class QueryRelationsArgument extends IBMWatsonGenericModel {
    private List<QueryEntitiesEntity> entities_serialized_name;
    /**
     * Gets the entities_serialized_name.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<QueryEntitiesEntity> getEntities() {
      return entities_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<QueryEntitiesEntity> entities) {
      this.entities_serialized_name = entities;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryRelationsArgument ret = (QueryRelationsArgument) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities_serialized_name
      List<QueryEntitiesEntity> newEntities = new List<QueryEntitiesEntity>();
      List<QueryEntitiesEntity> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          QueryEntitiesEntity currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          QueryEntitiesEntity newItem = (QueryEntitiesEntity) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryEntitiesEntity.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      return ret;
    }
  }

  /**
   * QueryRelationsEntity.
   */
  public class QueryRelationsEntity extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String type_serialized_name;
    private Boolean exact_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * Entity text content.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * The type of the specified entity.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the exact_serialized_name.
     *
     * If false, implicit disambiguation is performed. The default is `false`.
     *
     * @return the exact_serialized_name
     */
    @AuraEnabled
    public Boolean getExact() {
      return exact_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    /**
     * Sets the exact_serialized_name.
     *
     * @param exact the new exact
     */
    public void setExact(final Boolean exact) {
      this.exact_serialized_name = exact;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryRelationsEntity ret = (QueryRelationsEntity) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * QueryRelationsFilter.
   */
  public class QueryRelationsFilter extends IBMWatsonGenericModel {
    private QueryFilterType relation_types_serialized_name;
    private QueryFilterType entity_types_serialized_name;
    private List<String> document_ids_serialized_name;
    /**
     * Gets the relation_types_serialized_name.
     *
     * A list of relation types to include or exclude from the query.
     *
     * @return the relation_types_serialized_name
     */
    @AuraEnabled
    public QueryFilterType getRelationTypes() {
      return relation_types_serialized_name;
    }
    /**
     * Gets the entity_types_serialized_name.
     *
     * A list of entity types to include or exclude from the query.
     *
     * @return the entity_types_serialized_name
     */
    @AuraEnabled
    public QueryFilterType getEntityTypes() {
      return entity_types_serialized_name;
    }
    /**
     * Gets the document_ids_serialized_name.
     *
     * A comma-separated list of document IDs to include in the query.
     *
     * @return the document_ids_serialized_name
     */
    @AuraEnabled
    public List<String> getDocumentIds() {
      return document_ids_serialized_name;
    }

    /**
     * Sets the relation_types_serialized_name.
     *
     * @param relationTypes the new relationTypes
     */
    public void setRelationTypes(final QueryFilterType relationTypes) {
      this.relation_types_serialized_name = relationTypes;
    }

    /**
     * Sets the entity_types_serialized_name.
     *
     * @param entityTypes the new entityTypes
     */
    public void setEntityTypes(final QueryFilterType entityTypes) {
      this.entity_types_serialized_name = entityTypes;
    }

    /**
     * Sets the document_ids_serialized_name.
     *
     * @param documentIds the new documentIds
     */
    public void setDocumentIds(final List<String> documentIds) {
      this.document_ids_serialized_name = documentIds;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryRelationsFilter ret = (QueryRelationsFilter) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for relation_types_serialized_name
      QueryFilterType newRelationTypes = (QueryFilterType) new QueryFilterType().deserialize(JSON.serialize(ret.getRelationTypes()), (Map<String, Object>) jsonMap.get('relation_types_serialized_name'), QueryFilterType.class);
      ret.setRelationTypes(newRelationTypes);

      // calling custom deserializer for entity_types_serialized_name
      QueryFilterType newEntityTypes = (QueryFilterType) new QueryFilterType().deserialize(JSON.serialize(ret.getEntityTypes()), (Map<String, Object>) jsonMap.get('entity_types_serialized_name'), QueryFilterType.class);
      ret.setEntityTypes(newEntityTypes);

      return ret;
    }
  }

  /**
   * The queryRelations options.
   */
  public class QueryRelationsOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private List<QueryRelationsEntity> entities_serialized_name;
    private QueryEntitiesContext context_serialized_name;
    private String sort_serialized_name;
    private QueryRelationsFilter filter_serialized_name;
    private Long count_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * An array of entities to find relationships for.
     *
     * @return the entities_serialized_name
     */
    public List<QueryRelationsEntity> entities() {
      return entities_serialized_name;
    }
    /**
     * Gets the context_serialized_name.
     *
     * Entity text to provide context for the queried entity and rank based on that association. For example, if you wanted to query the city of London in England your query would look for `London` with the context of `England`.
     *
     * @return the context_serialized_name
     */
    public QueryEntitiesContext context() {
      return context_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The sorting method for the relationships, can be `score` or `frequency`. `frequency` is the number of unique times each entity is identified. The default is `score`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * Filters to apply to the relationship query.
     *
     * @return the filter_serialized_name
     */
    public QueryRelationsFilter filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * The number of results to return. The default is `10`. The maximum is `1000`.
     *
     * @return the count_serialized_name
     */
    public Long count() {
      return count_serialized_name;
    }
    private QueryRelationsOptions(QueryRelationsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      entities_serialized_name = builder.entities_serialized_name;
      context_serialized_name = builder.context_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      filter_serialized_name = builder.filter_serialized_name;
      count_serialized_name = builder.count_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder newBuilder() {
      return new QueryRelationsOptionsBuilder(this);
    }

  }

  /**
   * QueryRelationsOptions Builder.
   */
  public class QueryRelationsOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private List<QueryRelationsEntity> entities_serialized_name;
    private QueryEntitiesContext context_serialized_name;
    private String sort_serialized_name;
    private QueryRelationsFilter filter_serialized_name;
    private Long count_serialized_name;

    private QueryRelationsOptionsBuilder(QueryRelationsOptions queryRelationsOptions) {
      environment_id_serialized_name = queryRelationsOptions.environment_id_serialized_name;
      collection_id_serialized_name = queryRelationsOptions.collection_id_serialized_name;
      entities_serialized_name = queryRelationsOptions.entities_serialized_name;
      context_serialized_name = queryRelationsOptions.context_serialized_name;
      sort_serialized_name = queryRelationsOptions.sort_serialized_name;
      filter_serialized_name = queryRelationsOptions.filter_serialized_name;
      count_serialized_name = queryRelationsOptions.count_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryRelationsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public QueryRelationsOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a QueryRelationsOptions.
     *
     * @return the queryRelationsOptions
     */
    public QueryRelationsOptions build() {
      return new QueryRelationsOptions(this);
    }

    /**
     * Adds an entities to entities_serialized_name.
     *
     * @param entities the new entities
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder addEntities(QueryRelationsEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities_serialized_name == null) {
        this.entities_serialized_name = new List<QueryRelationsEntity>();
      }
      this.entities_serialized_name.add(entities);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     * Existing entities_serialized_name will be replaced.
     *
     * @param entities the entities
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder entities(List<QueryRelationsEntity> entities) {
      this.entities_serialized_name = entities;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context the context
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder context(QueryEntitiesContext context) {
      this.context_serialized_name = context;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder filter(QueryRelationsFilter filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count the count
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder count(Long count) {
      this.count_serialized_name = count;
      return this;
    }
  }

  /**
   * QueryRelationsRelationship.
   */
  public class QueryRelationsRelationship extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private Long frequency_serialized_name;
    private List<QueryRelationsArgument> arguments_serialized_name;
    /**
     * Gets the type_serialized_name.
     *
     * The identified relationship type.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the frequency_serialized_name.
     *
     * The number of times the relationship is mentioned.
     *
     * @return the frequency_serialized_name
     */
    @AuraEnabled
    public Long getFrequency() {
      return frequency_serialized_name;
    }
    /**
     * Gets the arguments_serialized_name.
     *
     * Information about the relationship.
     *
     * @return the arguments_serialized_name
     */
    @AuraEnabled
    public List<QueryRelationsArgument> getArguments() {
      return arguments_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    /**
     * Sets the frequency_serialized_name.
     *
     * @param frequency the new frequency
     */
    public void setFrequency(final long frequency) {
      this.frequency_serialized_name = frequency;
    }

    /**
     * Sets the arguments_serialized_name.
     *
     * @param arguments the new arguments
     */
    public void setArguments(final List<QueryRelationsArgument> arguments) {
      this.arguments_serialized_name = arguments;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryRelationsRelationship ret = (QueryRelationsRelationship) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for arguments_serialized_name
      List<QueryRelationsArgument> newArguments = new List<QueryRelationsArgument>();
      List<QueryRelationsArgument> deserializedArguments = ret.getArguments();
      if (deserializedArguments != null) {
        for (Integer i = 0; i < deserializedArguments.size(); i++) {
          QueryRelationsArgument currentItem = ret.getArguments().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('arguments_serialized_name');
          QueryRelationsArgument newItem = (QueryRelationsArgument) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryRelationsArgument.class);
          newArguments.add(newItem);
        }
        ret.setArguments(newArguments);
      }

      return ret;
    }
  }

  /**
   * QueryRelationsResponse.
   */
  public class QueryRelationsResponse extends IBMWatsonGenericModel {
    private List<QueryRelationsRelationship> relations_serialized_name;
    /**
     * Gets the relations_serialized_name.
     *
     * @return the relations_serialized_name
     */
    @AuraEnabled
    public List<QueryRelationsRelationship> getRelations() {
      return relations_serialized_name;
    }

    /**
     * Sets the relations_serialized_name.
     *
     * @param relations the new relations
     */
    public void setRelations(final List<QueryRelationsRelationship> relations) {
      this.relations_serialized_name = relations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryRelationsResponse ret = (QueryRelationsResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for relations_serialized_name
      List<QueryRelationsRelationship> newRelations = new List<QueryRelationsRelationship>();
      List<QueryRelationsRelationship> deserializedRelations = ret.getRelations();
      if (deserializedRelations != null) {
        for (Integer i = 0; i < deserializedRelations.size(); i++) {
          QueryRelationsRelationship currentItem = ret.getRelations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('relations_serialized_name');
          QueryRelationsRelationship newItem = (QueryRelationsRelationship) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryRelationsRelationship.class);
          newRelations.add(newItem);
        }
        ret.setRelations(newRelations);
      }

      return ret;
    }
  }

  /**
   * A response containing the documents and aggregations for the query.
   */
  public class QueryResponse extends IBMWatsonGenericModel {
    private Long matching_results_serialized_name;
    private List<QueryResult> results_serialized_name;
    private List<QueryAggregation> aggregations_serialized_name;
    private List<QueryPassages> passages_serialized_name;
    private Long duplicates_removed_serialized_name;
    /**
     * Gets the matching_results_serialized_name.
     *
     * @return the matching_results_serialized_name
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
    /**
     * Gets the results_serialized_name.
     *
     * @return the results_serialized_name
     */
    @AuraEnabled
    public List<QueryResult> getResults() {
      return results_serialized_name;
    }
    /**
     * Gets the aggregations_serialized_name.
     *
     * @return the aggregations_serialized_name
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }
    /**
     * Gets the passages_serialized_name.
     *
     * @return the passages_serialized_name
     */
    @AuraEnabled
    public List<QueryPassages> getPassages() {
      return passages_serialized_name;
    }
    /**
     * Gets the duplicates_removed_serialized_name.
     *
     * @return the duplicates_removed_serialized_name
     */
    @AuraEnabled
    public Long getDuplicatesRemoved() {
      return duplicates_removed_serialized_name;
    }

    /**
     * Sets the matching_results_serialized_name.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results the new results
     */
    public void setResults(final List<QueryResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    /**
     * Sets the passages_serialized_name.
     *
     * @param passages the new passages
     */
    public void setPassages(final List<QueryPassages> passages) {
      this.passages_serialized_name = passages;
    }

    /**
     * Sets the duplicates_removed_serialized_name.
     *
     * @param duplicatesRemoved the new duplicatesRemoved
     */
    public void setDuplicatesRemoved(final long duplicatesRemoved) {
      this.duplicates_removed_serialized_name = duplicatesRemoved;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryResponse ret = (QueryResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results_serialized_name
      List<QueryResult> newResults = new List<QueryResult>();
      List<QueryResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          QueryResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          QueryResult newItem = (QueryResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      // calling custom deserializer for aggregations_serialized_name
      List<QueryAggregation> newAggregations = new List<QueryAggregation>();
      List<QueryAggregation> deserializedAggregations = ret.getAggregations();
      if (deserializedAggregations != null) {
        for (Integer i = 0; i < deserializedAggregations.size(); i++) {
          QueryAggregation currentItem = ret.getAggregations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aggregations_serialized_name');
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryAggregation.class);
          newAggregations.add(newItem);
        }
        ret.setAggregations(newAggregations);
      }

      // calling custom deserializer for passages_serialized_name
      List<QueryPassages> newPassages = new List<QueryPassages>();
      List<QueryPassages> deserializedPassages = ret.getPassages();
      if (deserializedPassages != null) {
        for (Integer i = 0; i < deserializedPassages.size(); i++) {
          QueryPassages currentItem = ret.getPassages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('passages_serialized_name');
          QueryPassages newItem = (QueryPassages) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryPassages.class);
          newPassages.add(newItem);
        }
        ret.setPassages(newPassages);
      }

      return ret;
    }
  }

  /**
   * QueryResult.
   */
  public class QueryResult extends IBMWatsonDynamicModel {
    private String id_serialized_name;
    private Double score_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private String collection_id_serialized_name;
    private QueryResultResultMetadata result_metadata_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the id_serialized_name.
     *
     * @return the id_serialized_name
     */
    @AuraEnabled
    public String getId() {
      return id_serialized_name;
    }

    /**
     * Gets the score_serialized_name.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Gets the metadata_serialized_name.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }

    /**
     * Gets the collection_id_serialized_name.
     *
     * @return the collection_id_serialized_name
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }

    /**
     * Gets the result_metadata_serialized_name.
     *
     * @return the result_metadata_serialized_name
     */
    @AuraEnabled
    public QueryResultResultMetadata getResultMetadata() {
      return result_metadata_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to QueryResult.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    /**
     * Sets the id_serialized_name.
     *
     * @param id_serialized_name the new id_serialized_name
     */
    public void setId(final String id_serialized_name) {
      this.id_serialized_name = id_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata_serialized_name the new metadata_serialized_name
     */
    public void setMetadata(final IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
    }

    /**
     * Sets the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the new collection_id_serialized_name
     */
    public void setCollectionId(final String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Sets the result_metadata_serialized_name.
     *
     * @param result_metadata_serialized_name the new result_metadata_serialized_name
     */
    public void setResultMetadata(final QueryResultResultMetadata result_metadata_serialized_name) {
      this.result_metadata_serialized_name = result_metadata_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryResult ret = (QueryResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for result_metadata_serialized_name
      QueryResultResultMetadata newResultMetadata = (QueryResultResultMetadata) new QueryResultResultMetadata().deserialize(JSON.serialize(ret.getResultMetadata()), (Map<String, Object>) jsonMap.get('result_metadata_serialized_name'), QueryResultResultMetadata.class);
      ret.setResultMetadata(newResultMetadata);

      Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

      for (String key : jsonMap.keySet()) {
        if (!baseProps.contains(key)) {
          ret.put(key, jsonMap.get(key));
        }
      }

      return ret;
    }
  }

  /**
   * QueryResultResultMetadata.
   */
  public class QueryResultResultMetadata extends IBMWatsonGenericModel {
    private Double score_serialized_name;
    /**
     * Gets the score_serialized_name.
     *
     * The confidence score of the result's analysis. A higher score indicating greater confidence.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryResultResultMetadata ret = (QueryResultResultMetadata) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Term.
   */
  public class Term extends IBMWatsonGenericModel {
    private Long count_serialized_name;
    /**
     * Gets the count_serialized_name.
     *
     * @return the count_serialized_name
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Term ret = (Term) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The testConfigurationInEnvironment options.
   */
  public class TestConfigurationInEnvironmentOptions {
    private String environment_id_serialized_name;
    private String configuration_serialized_name;
    private String step_serialized_name;
    private String configuration_id_serialized_name;
    private IBMWatsonFile file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the configuration_serialized_name.
     *
     * The configuration to use to process the document. If this part is provided, then the provided configuration is used to process the document. If the `configuration_id` is also provided (both are present at the same time), then request is rejected. The maximum supported configuration size is 1 MB. Configuration parts larger than 1 MB are rejected. See the `GET /configurations/{configuration_id}` operation for an example configuration.
     *
     * @return the configuration_serialized_name
     */
    public String configuration() {
      return configuration_serialized_name;
    }
    /**
     * Gets the step_serialized_name.
     *
     * Specify to only run the input document through the given step instead of running the input document through the entire ingestion workflow. Valid values are `convert`, `enrich`, and `normalize`.
     *
     * @return the step_serialized_name
     */
    public String step() {
      return step_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The ID of the configuration to use to process the document. If the `configuration` form part is also provided (both are present at the same time), then request will be rejected.
     *
     * @return the configuration_id_serialized_name
     */
    public String configurationId() {
      return configuration_id_serialized_name;
    }
    /**
     * Gets the file_serialized_name.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file_serialized_name
     */
    public IBMWatsonFile file() {
      return file_serialized_name;
    }
    /**
     * Gets the filename_serialized_name.
     *
     * The filename for file.
     *
     * @return the filename_serialized_name
     */
    public String filename() {
      return filename_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1 MB are rejected. Example:  ``` {   "Creator": "Johnny Appleseed",   "Subject": "Apples" } ```.
     *
     * @return the metadata_serialized_name
     */
    public String metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the file_content_type_serialized_name.
     *
     * The content type of file.
     *
     * @return the file_content_type_serialized_name
     */
    public String fileContentType() {
      return file_content_type_serialized_name;
    }
    private TestConfigurationInEnvironmentOptions(TestConfigurationInEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      configuration_serialized_name = builder.configuration_serialized_name;
      step_serialized_name = builder.step_serialized_name;
      configuration_id_serialized_name = builder.configuration_id_serialized_name;
      file_serialized_name = builder.file_serialized_name;
      filename_serialized_name = builder.filename_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      file_content_type_serialized_name = builder.file_content_type_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder newBuilder() {
      return new TestConfigurationInEnvironmentOptionsBuilder(this);
    }

  }

  /**
   * TestConfigurationInEnvironmentOptions Builder.
   */
  public class TestConfigurationInEnvironmentOptionsBuilder {
    private String environment_id_serialized_name;
    private String configuration_serialized_name;
    private String step_serialized_name;
    private String configuration_id_serialized_name;
    private IBMWatsonFile file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;

    private TestConfigurationInEnvironmentOptionsBuilder(TestConfigurationInEnvironmentOptions testConfigurationInEnvironmentOptions) {
      environment_id_serialized_name = testConfigurationInEnvironmentOptions.environment_id_serialized_name;
      configuration_serialized_name = testConfigurationInEnvironmentOptions.configuration_serialized_name;
      step_serialized_name = testConfigurationInEnvironmentOptions.step_serialized_name;
      configuration_id_serialized_name = testConfigurationInEnvironmentOptions.configuration_id_serialized_name;
      file_serialized_name = testConfigurationInEnvironmentOptions.file_serialized_name;
      filename_serialized_name = testConfigurationInEnvironmentOptions.filename_serialized_name;
      metadata_serialized_name = testConfigurationInEnvironmentOptions.metadata_serialized_name;
      file_content_type_serialized_name = testConfigurationInEnvironmentOptions.file_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public TestConfigurationInEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public TestConfigurationInEnvironmentOptionsBuilder(String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Builds a TestConfigurationInEnvironmentOptions.
     *
     * @return the testConfigurationInEnvironmentOptions
     */
    public TestConfigurationInEnvironmentOptions build() {
      return new TestConfigurationInEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the configuration_serialized_name.
     *
     * @param configuration the configuration
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder configuration(String configuration) {
      this.configuration_serialized_name = configuration;
      return this;
    }

    /**
     * Set the step_serialized_name.
     *
     * @param step the step
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder step(String step) {
      this.step_serialized_name = step;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configurationId the configurationId
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder configurationId(String configurationId) {
      this.configuration_id_serialized_name = configurationId;
      return this;
    }

    /**
     * Set the file_serialized_name.
     *
     * @param file the file
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder file(IBMWatsonFile file) {
      this.file_serialized_name = file;
      return this;
    }

    /**
     * Set the filename_serialized_name.
     *
     * @param filename the filename
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder filename(String filename) {
      this.filename_serialized_name = filename;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder metadata(String metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the file_content_type_serialized_name.
     *
     * @param fileContentType the fileContentType
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder fileContentType(String fileContentType) {
      this.file_content_type_serialized_name = fileContentType;
      return this;
    }
  }

  /**
   * TestDocument.
   */
  public class TestDocument extends IBMWatsonGenericModel {
    private String configuration_id_serialized_name;
    private String status_serialized_name;
    private Long enriched_field_units_serialized_name;
    private String original_media_type_serialized_name;
    private List<DocumentSnapshot> snapshots_serialized_name;
    private List<Notice> notices_serialized_name;
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The unique identifier for the configuration.
     *
     * @return the configuration_id_serialized_name
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * Status of the preview operation.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the enriched_field_units_serialized_name.
     *
     * The number of 10-kB chunks of field data that were enriched. This can be used to estimate the cost of running a real ingestion.
     *
     * @return the enriched_field_units_serialized_name
     */
    @AuraEnabled
    public Long getEnrichedFieldUnits() {
      return enriched_field_units_serialized_name;
    }
    /**
     * Gets the original_media_type_serialized_name.
     *
     * Format of the test document.
     *
     * @return the original_media_type_serialized_name
     */
    @AuraEnabled
    public String getOriginalMediaType() {
      return original_media_type_serialized_name;
    }
    /**
     * Gets the snapshots_serialized_name.
     *
     * An array of objects that describe each step in the preview process.
     *
     * @return the snapshots_serialized_name
     */
    @AuraEnabled
    public List<DocumentSnapshot> getSnapshots() {
      return snapshots_serialized_name;
    }
    /**
     * Gets the notices_serialized_name.
     *
     * An array of notice messages about the preview operation.
     *
     * @return the notices_serialized_name
     */
    @AuraEnabled
    public List<Notice> getNotices() {
      return notices_serialized_name;
    }

    /**
     * Sets the snapshots_serialized_name.
     *
     * @param snapshots the new snapshots
     */
    public void setSnapshots(final List<DocumentSnapshot> snapshots) {
      this.snapshots_serialized_name = snapshots;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices the new notices
     */
    public void setNotices(final List<Notice> notices) {
      this.notices_serialized_name = notices;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TestDocument ret = (TestDocument) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for snapshots_serialized_name
      List<DocumentSnapshot> newSnapshots = new List<DocumentSnapshot>();
      List<DocumentSnapshot> deserializedSnapshots = ret.getSnapshots();
      if (deserializedSnapshots != null) {
        for (Integer i = 0; i < deserializedSnapshots.size(); i++) {
          DocumentSnapshot currentItem = ret.getSnapshots().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('snapshots_serialized_name');
          DocumentSnapshot newItem = (DocumentSnapshot) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DocumentSnapshot.class);
          newSnapshots.add(newItem);
        }
        ret.setSnapshots(newSnapshots);
      }

      // calling custom deserializer for notices_serialized_name
      List<Notice> newNotices = new List<Notice>();
      List<Notice> deserializedNotices = ret.getNotices();
      if (deserializedNotices != null) {
        for (Integer i = 0; i < deserializedNotices.size(); i++) {
          Notice currentItem = ret.getNotices().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('notices_serialized_name');
          Notice newItem = (Notice) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Notice.class);
          newNotices.add(newItem);
        }
        ret.setNotices(newNotices);
      }

      return ret;
    }
  }

  /**
   * TrainingDataSet.
   */
  public class TrainingDataSet extends IBMWatsonGenericModel {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private List<TrainingQuery> queries_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * @return the environment_id_serialized_name
     */
    @AuraEnabled
    public String getEnvironmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * @return the collection_id_serialized_name
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the queries_serialized_name.
     *
     * @return the queries_serialized_name
     */
    @AuraEnabled
    public List<TrainingQuery> getQueries() {
      return queries_serialized_name;
    }

    /**
     * Sets the environment_id_serialized_name.
     *
     * @param environmentId the new environmentId
     */
    public void setEnvironmentId(final String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Sets the collection_id_serialized_name.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Sets the queries_serialized_name.
     *
     * @param queries the new queries
     */
    public void setQueries(final List<TrainingQuery> queries) {
      this.queries_serialized_name = queries;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TrainingDataSet ret = (TrainingDataSet) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for queries_serialized_name
      List<TrainingQuery> newQueries = new List<TrainingQuery>();
      List<TrainingQuery> deserializedQueries = ret.getQueries();
      if (deserializedQueries != null) {
        for (Integer i = 0; i < deserializedQueries.size(); i++) {
          TrainingQuery currentItem = ret.getQueries().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('queries_serialized_name');
          TrainingQuery newItem = (TrainingQuery) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TrainingQuery.class);
          newQueries.add(newItem);
        }
        ret.setQueries(newQueries);
      }

      return ret;
    }
  }

  /**
   * TrainingExample.
   */
  public class TrainingExample extends IBMWatsonGenericModel {
    private String document_id_serialized_name;
    private String cross_reference_serialized_name;
    private Long relevance_serialized_name;
    /**
     * Gets the document_id_serialized_name.
     *
     * @return the document_id_serialized_name
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
    /**
     * Gets the cross_reference_serialized_name.
     *
     * @return the cross_reference_serialized_name
     */
    @AuraEnabled
    public String getCrossReference() {
      return cross_reference_serialized_name;
    }
    /**
     * Gets the relevance_serialized_name.
     *
     * @return the relevance_serialized_name
     */
    @AuraEnabled
    public Long getRelevance() {
      return relevance_serialized_name;
    }

    /**
     * Sets the document_id_serialized_name.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the cross_reference_serialized_name.
     *
     * @param crossReference the new crossReference
     */
    public void setCrossReference(final String crossReference) {
      this.cross_reference_serialized_name = crossReference;
    }

    /**
     * Sets the relevance_serialized_name.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final long relevance) {
      this.relevance_serialized_name = relevance;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TrainingExample ret = (TrainingExample) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * TrainingExampleList.
   */
  public class TrainingExampleList extends IBMWatsonGenericModel {
    private List<TrainingExample> examples_serialized_name;
    /**
     * Gets the examples_serialized_name.
     *
     * @return the examples_serialized_name
     */
    @AuraEnabled
    public List<TrainingExample> getExamples() {
      return examples_serialized_name;
    }

    /**
     * Sets the examples_serialized_name.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<TrainingExample> examples) {
      this.examples_serialized_name = examples;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TrainingExampleList ret = (TrainingExampleList) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for examples_serialized_name
      List<TrainingExample> newExamples = new List<TrainingExample>();
      List<TrainingExample> deserializedExamples = ret.getExamples();
      if (deserializedExamples != null) {
        for (Integer i = 0; i < deserializedExamples.size(); i++) {
          TrainingExample currentItem = ret.getExamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('examples_serialized_name');
          TrainingExample newItem = (TrainingExample) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TrainingExample.class);
          newExamples.add(newItem);
        }
        ret.setExamples(newExamples);
      }

      return ret;
    }
  }

  /**
   * TrainingQuery.
   */
  public class TrainingQuery extends IBMWatsonGenericModel {
    private String query_id_serialized_name;
    private String natural_language_query_serialized_name;
    private String filter_serialized_name;
    private List<TrainingExample> examples_serialized_name;
    /**
     * Gets the query_id_serialized_name.
     *
     * @return the query_id_serialized_name
     */
    @AuraEnabled
    public String getQueryId() {
      return query_id_serialized_name;
    }
    /**
     * Gets the natural_language_query_serialized_name.
     *
     * @return the natural_language_query_serialized_name
     */
    @AuraEnabled
    public String getNaturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * @return the filter_serialized_name
     */
    @AuraEnabled
    public String getFilter() {
      return filter_serialized_name;
    }
    /**
     * Gets the examples_serialized_name.
     *
     * @return the examples_serialized_name
     */
    @AuraEnabled
    public List<TrainingExample> getExamples() {
      return examples_serialized_name;
    }

    /**
     * Sets the query_id_serialized_name.
     *
     * @param queryId the new queryId
     */
    public void setQueryId(final String queryId) {
      this.query_id_serialized_name = queryId;
    }

    /**
     * Sets the natural_language_query_serialized_name.
     *
     * @param naturalLanguageQuery the new naturalLanguageQuery
     */
    public void setNaturalLanguageQuery(final String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
    }

    /**
     * Sets the filter_serialized_name.
     *
     * @param filter the new filter
     */
    public void setFilter(final String filter) {
      this.filter_serialized_name = filter;
    }

    /**
     * Sets the examples_serialized_name.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<TrainingExample> examples) {
      this.examples_serialized_name = examples;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TrainingQuery ret = (TrainingQuery) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for examples_serialized_name
      List<TrainingExample> newExamples = new List<TrainingExample>();
      List<TrainingExample> deserializedExamples = ret.getExamples();
      if (deserializedExamples != null) {
        for (Integer i = 0; i < deserializedExamples.size(); i++) {
          TrainingExample currentItem = ret.getExamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('examples_serialized_name');
          TrainingExample newItem = (TrainingExample) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TrainingExample.class);
          newExamples.add(newItem);
        }
        ret.setExamples(newExamples);
      }

      return ret;
    }
  }

  /**
   * TrainingStatus.
   */
  public class TrainingStatus extends IBMWatsonGenericModel {
    private Long total_examples_serialized_name;
    private Boolean available_serialized_name;
    private Boolean processing_serialized_name;
    private Boolean minimum_queries_added_serialized_name;
    private Boolean minimum_examples_added_serialized_name;
    private Boolean sufficient_label_diversity_serialized_name;
    private Long notices_serialized_name;
    private Datetime successfully_trained_serialized_name;
    private Datetime data_updated_serialized_name;
    /**
     * Gets the total_examples_serialized_name.
     *
     * @return the total_examples_serialized_name
     */
    @AuraEnabled
    public Long getTotalExamples() {
      return total_examples_serialized_name;
    }
    /**
     * Gets the available_serialized_name.
     *
     * @return the available_serialized_name
     */
    @AuraEnabled
    public Boolean getAvailable() {
      return available_serialized_name;
    }
    /**
     * Gets the processing_serialized_name.
     *
     * @return the processing_serialized_name
     */
    @AuraEnabled
    public Boolean getProcessing() {
      return processing_serialized_name;
    }
    /**
     * Gets the minimum_queries_added_serialized_name.
     *
     * @return the minimum_queries_added_serialized_name
     */
    @AuraEnabled
    public Boolean getMinimumQueriesAdded() {
      return minimum_queries_added_serialized_name;
    }
    /**
     * Gets the minimum_examples_added_serialized_name.
     *
     * @return the minimum_examples_added_serialized_name
     */
    @AuraEnabled
    public Boolean getMinimumExamplesAdded() {
      return minimum_examples_added_serialized_name;
    }
    /**
     * Gets the sufficient_label_diversity_serialized_name.
     *
     * @return the sufficient_label_diversity_serialized_name
     */
    @AuraEnabled
    public Boolean getSufficientLabelDiversity() {
      return sufficient_label_diversity_serialized_name;
    }
    /**
     * Gets the notices_serialized_name.
     *
     * @return the notices_serialized_name
     */
    @AuraEnabled
    public Long getNotices() {
      return notices_serialized_name;
    }
    /**
     * Gets the successfully_trained_serialized_name.
     *
     * @return the successfully_trained_serialized_name
     */
    @AuraEnabled
    public Datetime getSuccessfullyTrained() {
      return successfully_trained_serialized_name;
    }
    /**
     * Gets the data_updated_serialized_name.
     *
     * @return the data_updated_serialized_name
     */
    @AuraEnabled
    public Datetime getDataUpdated() {
      return data_updated_serialized_name;
    }

    /**
     * Sets the total_examples_serialized_name.
     *
     * @param totalExamples the new totalExamples
     */
    public void setTotalExamples(final long totalExamples) {
      this.total_examples_serialized_name = totalExamples;
    }

    /**
     * Sets the available_serialized_name.
     *
     * @param available the new available
     */
    public void setAvailable(final Boolean available) {
      this.available_serialized_name = available;
    }

    /**
     * Sets the processing_serialized_name.
     *
     * @param processing the new processing
     */
    public void setProcessing(final Boolean processing) {
      this.processing_serialized_name = processing;
    }

    /**
     * Sets the minimum_queries_added_serialized_name.
     *
     * @param minimumQueriesAdded the new minimumQueriesAdded
     */
    public void setMinimumQueriesAdded(final Boolean minimumQueriesAdded) {
      this.minimum_queries_added_serialized_name = minimumQueriesAdded;
    }

    /**
     * Sets the minimum_examples_added_serialized_name.
     *
     * @param minimumExamplesAdded the new minimumExamplesAdded
     */
    public void setMinimumExamplesAdded(final Boolean minimumExamplesAdded) {
      this.minimum_examples_added_serialized_name = minimumExamplesAdded;
    }

    /**
     * Sets the sufficient_label_diversity_serialized_name.
     *
     * @param sufficientLabelDiversity the new sufficientLabelDiversity
     */
    public void setSufficientLabelDiversity(final Boolean sufficientLabelDiversity) {
      this.sufficient_label_diversity_serialized_name = sufficientLabelDiversity;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices the new notices
     */
    public void setNotices(final long notices) {
      this.notices_serialized_name = notices;
    }

    /**
     * Sets the successfully_trained_serialized_name.
     *
     * @param successfullyTrained the new successfullyTrained
     */
    public void setSuccessfullyTrained(final Datetime successfullyTrained) {
      this.successfully_trained_serialized_name = successfullyTrained;
    }

    /**
     * Sets the data_updated_serialized_name.
     *
     * @param dataUpdated the new dataUpdated
     */
    public void setDataUpdated(final Datetime dataUpdated) {
      this.data_updated_serialized_name = dataUpdated;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      String data_updated = (String) jsonMap.remove('data_updated_serialized_name');
      String successfully_trained = (String) jsonMap.remove('successfully_trained_serialized_name');
      String jsonStringWithoutDates = JSON.serialize(jsonMap);

      TrainingStatus ret = (TrainingStatus) super.deserialize(jsonStringWithoutDates, jsonMap, classType);
      if (String.isNotBlank(data_updated)) {
        ret.setDataUpdated((Datetime) JSON.deserialize('"' + data_updated + '"', Datetime.class));
      }
      if (String.isNotBlank(successfully_trained)) {
        ret.setSuccessfullyTrained((Datetime) JSON.deserialize('"' + successfully_trained + '"', Datetime.class));
      }

      return ret;
    }
  }

  /**
   * The updateCollection options.
   */
  public class UpdateCollectionOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String configuration_id_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the collection.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * A description of the collection.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The ID of the configuration in which the collection is to be updated.
     *
     * @return the configuration_id_serialized_name
     */
    public String configurationId() {
      return configuration_id_serialized_name;
    }
    private UpdateCollectionOptions(UpdateCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      configuration_id_serialized_name = builder.configuration_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder newBuilder() {
      return new UpdateCollectionOptionsBuilder(this);
    }

  }

  /**
   * UpdateCollectionOptions Builder.
   */
  public class UpdateCollectionOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String configuration_id_serialized_name;

    private UpdateCollectionOptionsBuilder(UpdateCollectionOptions updateCollectionOptions) {
      environment_id_serialized_name = updateCollectionOptions.environment_id_serialized_name;
      collection_id_serialized_name = updateCollectionOptions.collection_id_serialized_name;
      name_serialized_name = updateCollectionOptions.name_serialized_name;
      description_serialized_name = updateCollectionOptions.description_serialized_name;
      configuration_id_serialized_name = updateCollectionOptions.configuration_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public UpdateCollectionOptionsBuilder(String environmentId, String collectionId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Builds a UpdateCollectionOptions.
     *
     * @return the updateCollectionOptions
     */
    public UpdateCollectionOptions build() {
      return new UpdateCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configurationId the configurationId
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder configurationId(String configurationId) {
      this.configuration_id_serialized_name = configurationId;
      return this;
    }
  }

  /**
   * The updateConfiguration options.
   */
  public class UpdateConfigurationOptions {
    private String environment_id_serialized_name;
    private String configuration_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private Conversions conversions_serialized_name;
    private List<Enrichment> enrichments_serialized_name;
    private List<NormalizationOperation> normalizations_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the configuration_id_serialized_name.
     *
     * The ID of the configuration.
     *
     * @return the configuration_id_serialized_name
     */
    public String configurationId() {
      return configuration_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the configuration.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the configuration, if available.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the conversions_serialized_name.
     *
     * The document conversion settings for the configuration.
     *
     * @return the conversions_serialized_name
     */
    public Conversions conversions() {
      return conversions_serialized_name;
    }
    /**
     * Gets the enrichments_serialized_name.
     *
     * An array of document enrichment settings for the configuration.
     *
     * @return the enrichments_serialized_name
     */
    public List<Enrichment> enrichments() {
      return enrichments_serialized_name;
    }
    /**
     * Gets the normalizations_serialized_name.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the normalizations_serialized_name
     */
    public List<NormalizationOperation> normalizations() {
      return normalizations_serialized_name;
    }
    private UpdateConfigurationOptions(UpdateConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configuration_id_serialized_name, 'configuration_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      configuration_id_serialized_name = builder.configuration_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      conversions_serialized_name = builder.conversions_serialized_name;
      enrichments_serialized_name = builder.enrichments_serialized_name;
      normalizations_serialized_name = builder.normalizations_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder newBuilder() {
      return new UpdateConfigurationOptionsBuilder(this);
    }

  }

  /**
   * UpdateConfigurationOptions Builder.
   */
  public class UpdateConfigurationOptionsBuilder {
    private String environment_id_serialized_name;
    private String configuration_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private Conversions conversions_serialized_name;
    private List<Enrichment> enrichments_serialized_name;
    private List<NormalizationOperation> normalizations_serialized_name;

    private UpdateConfigurationOptionsBuilder(UpdateConfigurationOptions updateConfigurationOptions) {
      environment_id_serialized_name = updateConfigurationOptions.environment_id_serialized_name;
      configuration_id_serialized_name = updateConfigurationOptions.configuration_id_serialized_name;
      name_serialized_name = updateConfigurationOptions.name_serialized_name;
      description_serialized_name = updateConfigurationOptions.description_serialized_name;
      conversions_serialized_name = updateConfigurationOptions.conversions_serialized_name;
      enrichments_serialized_name = updateConfigurationOptions.enrichments_serialized_name;
      normalizations_serialized_name = updateConfigurationOptions.normalizations_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param configurationId the configurationId
     */
    public UpdateConfigurationOptionsBuilder(String environmentId, String configurationId) {
      this.environment_id_serialized_name = environmentId;
      this.configuration_id_serialized_name = configurationId;
    }

    /**
     * Builds a UpdateConfigurationOptions.
     *
     * @return the updateConfigurationOptions
     */
    public UpdateConfigurationOptions build() {
      return new UpdateConfigurationOptions(this);
    }

    /**
     * Adds an enrichments to enrichments_serialized_name.
     *
     * @param enrichments the new enrichments
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addEnrichments(Enrichment enrichments) {
      IBMWatsonValidator.notNull(enrichments, 'enrichments cannot be null');
      if (this.enrichments_serialized_name == null) {
        this.enrichments_serialized_name = new List<Enrichment>();
      }
      this.enrichments_serialized_name.add(enrichments);
      return this;
    }

    /**
     * Adds an normalizations to normalizations_serialized_name.
     *
     * @param normalizations the new normalizations
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addNormalizations(NormalizationOperation normalizations) {
      IBMWatsonValidator.notNull(normalizations, 'normalizations cannot be null');
      if (this.normalizations_serialized_name == null) {
        this.normalizations_serialized_name = new List<NormalizationOperation>();
      }
      this.normalizations_serialized_name.add(normalizations);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configurationId the configurationId
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder configurationId(String configurationId) {
      this.configuration_id_serialized_name = configurationId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the conversions_serialized_name.
     *
     * @param conversions the conversions
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder conversions(Conversions conversions) {
      this.conversions_serialized_name = conversions;
      return this;
    }

    /**
     * Set the enrichments_serialized_name.
     * Existing enrichments_serialized_name will be replaced.
     *
     * @param enrichments the enrichments
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder enrichments(List<Enrichment> enrichments) {
      this.enrichments_serialized_name = enrichments;
      return this;
    }

    /**
     * Set the normalizations_serialized_name.
     * Existing normalizations_serialized_name will be replaced.
     *
     * @param normalizations the normalizations
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder normalizations(List<NormalizationOperation> normalizations) {
      this.normalizations_serialized_name = normalizations;
      return this;
    }

    /**
     * Set the configuration.
     *
     * @param configuration the configuration
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder configuration(Configuration configuration) {
      this.name_serialized_name = configuration.getName();
      this.description_serialized_name = configuration.getDescription();
      this.conversions_serialized_name = configuration.getConversions();
      this.enrichments_serialized_name = configuration.getEnrichments();
      this.normalizations_serialized_name = configuration.getNormalizations();
      return this;
    }
  }

  /**
   * The updateDocument options.
   */
  public class UpdateDocumentOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String document_id_serialized_name;
    private IBMWatsonFile file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the document_id_serialized_name.
     *
     * The ID of the document.
     *
     * @return the document_id_serialized_name
     */
    public String documentId() {
      return document_id_serialized_name;
    }
    /**
     * Gets the file_serialized_name.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file_serialized_name
     */
    public IBMWatsonFile file() {
      return file_serialized_name;
    }
    /**
     * Gets the filename_serialized_name.
     *
     * The filename for file.
     *
     * @return the filename_serialized_name
     */
    public String filename() {
      return filename_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1 MB are rejected. Example:  ``` {   "Creator": "Johnny Appleseed",   "Subject": "Apples" } ```.
     *
     * @return the metadata_serialized_name
     */
    public String metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the file_content_type_serialized_name.
     *
     * The content type of file.
     *
     * @return the file_content_type_serialized_name
     */
    public String fileContentType() {
      return file_content_type_serialized_name;
    }
    private UpdateDocumentOptions(UpdateDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.document_id_serialized_name, 'document_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      document_id_serialized_name = builder.document_id_serialized_name;
      file_serialized_name = builder.file_serialized_name;
      filename_serialized_name = builder.filename_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      file_content_type_serialized_name = builder.file_content_type_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder newBuilder() {
      return new UpdateDocumentOptionsBuilder(this);
    }

  }

  /**
   * UpdateDocumentOptions Builder.
   */
  public class UpdateDocumentOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String document_id_serialized_name;
    private IBMWatsonFile file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;

    private UpdateDocumentOptionsBuilder(UpdateDocumentOptions updateDocumentOptions) {
      environment_id_serialized_name = updateDocumentOptions.environment_id_serialized_name;
      collection_id_serialized_name = updateDocumentOptions.collection_id_serialized_name;
      document_id_serialized_name = updateDocumentOptions.document_id_serialized_name;
      file_serialized_name = updateDocumentOptions.file_serialized_name;
      filename_serialized_name = updateDocumentOptions.filename_serialized_name;
      metadata_serialized_name = updateDocumentOptions.metadata_serialized_name;
      file_content_type_serialized_name = updateDocumentOptions.file_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param documentId the documentId
     */
    public UpdateDocumentOptionsBuilder(String environmentId, String collectionId, String documentId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.document_id_serialized_name = documentId;
    }

    /**
     * Builds a UpdateDocumentOptions.
     *
     * @return the updateDocumentOptions
     */
    public UpdateDocumentOptions build() {
      return new UpdateDocumentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param documentId the documentId
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder documentId(String documentId) {
      this.document_id_serialized_name = documentId;
      return this;
    }

    /**
     * Set the file_serialized_name.
     *
     * @param file the file
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder file(IBMWatsonFile file) {
      this.file_serialized_name = file;
      return this;
    }

    /**
     * Set the filename_serialized_name.
     *
     * @param filename the filename
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder filename(String filename) {
      this.filename_serialized_name = filename;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder metadata(String metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the file_content_type_serialized_name.
     *
     * @param fileContentType the fileContentType
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder fileContentType(String fileContentType) {
      this.file_content_type_serialized_name = fileContentType;
      return this;
    }
  }

  /**
   * The updateEnvironment options.
   */
  public class UpdateEnvironmentOptions {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * Name that identifies the environment.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * Description of the environment.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    private UpdateEnvironmentOptions(UpdateEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder newBuilder() {
      return new UpdateEnvironmentOptionsBuilder(this);
    }

  }

  /**
   * UpdateEnvironmentOptions Builder.
   */
  public class UpdateEnvironmentOptionsBuilder {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;

    private UpdateEnvironmentOptionsBuilder(UpdateEnvironmentOptions updateEnvironmentOptions) {
      environment_id_serialized_name = updateEnvironmentOptions.environment_id_serialized_name;
      name_serialized_name = updateEnvironmentOptions.name_serialized_name;
      description_serialized_name = updateEnvironmentOptions.description_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public UpdateEnvironmentOptionsBuilder(String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Builds a UpdateEnvironmentOptions.
     *
     * @return the updateEnvironmentOptions
     */
    public UpdateEnvironmentOptions build() {
      return new UpdateEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }
  }

  /**
   * The updateTrainingExample options.
   */
  public class UpdateTrainingExampleOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String example_id_serialized_name;
    private String cross_reference_serialized_name;
    private Long relevance_serialized_name;
    /**
     * Gets the environment_id_serialized_name.
     *
     * The ID of the environment.
     *
     * @return the environment_id_serialized_name
     */
    public String environmentId() {
      return environment_id_serialized_name;
    }
    /**
     * Gets the collection_id_serialized_name.
     *
     * The ID of the collection.
     *
     * @return the collection_id_serialized_name
     */
    public String collectionId() {
      return collection_id_serialized_name;
    }
    /**
     * Gets the query_id_serialized_name.
     *
     * The ID of the query used for training.
     *
     * @return the query_id_serialized_name
     */
    public String queryId() {
      return query_id_serialized_name;
    }
    /**
     * Gets the example_id_serialized_name.
     *
     * The ID of the document as it is indexed.
     *
     * @return the example_id_serialized_name
     */
    public String exampleId() {
      return example_id_serialized_name;
    }
    /**
     * Gets the cross_reference_serialized_name.
     *
     * @return the cross_reference_serialized_name
     */
    public String crossReference() {
      return cross_reference_serialized_name;
    }
    /**
     * Gets the relevance_serialized_name.
     *
     * @return the relevance_serialized_name
     */
    public Long relevance() {
      return relevance_serialized_name;
    }
    private UpdateTrainingExampleOptions(UpdateTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id_serialized_name, 'environment_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id_serialized_name, 'collection_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id_serialized_name, 'query_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.example_id_serialized_name, 'example_id_serialized_name cannot be empty');
      environment_id_serialized_name = builder.environment_id_serialized_name;
      collection_id_serialized_name = builder.collection_id_serialized_name;
      query_id_serialized_name = builder.query_id_serialized_name;
      example_id_serialized_name = builder.example_id_serialized_name;
      cross_reference_serialized_name = builder.cross_reference_serialized_name;
      relevance_serialized_name = builder.relevance_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder newBuilder() {
      return new UpdateTrainingExampleOptionsBuilder(this);
    }

  }

  /**
   * UpdateTrainingExampleOptions Builder.
   */
  public class UpdateTrainingExampleOptionsBuilder {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String query_id_serialized_name;
    private String example_id_serialized_name;
    private String cross_reference_serialized_name;
    private Long relevance_serialized_name;

    private UpdateTrainingExampleOptionsBuilder(UpdateTrainingExampleOptions updateTrainingExampleOptions) {
      environment_id_serialized_name = updateTrainingExampleOptions.environment_id_serialized_name;
      collection_id_serialized_name = updateTrainingExampleOptions.collection_id_serialized_name;
      query_id_serialized_name = updateTrainingExampleOptions.query_id_serialized_name;
      example_id_serialized_name = updateTrainingExampleOptions.example_id_serialized_name;
      cross_reference_serialized_name = updateTrainingExampleOptions.cross_reference_serialized_name;
      relevance_serialized_name = updateTrainingExampleOptions.relevance_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param queryId the queryId
     * @param exampleId the exampleId
     */
    public UpdateTrainingExampleOptionsBuilder(String environmentId, String collectionId, String queryId, String exampleId) {
      this.environment_id_serialized_name = environmentId;
      this.collection_id_serialized_name = collectionId;
      this.query_id_serialized_name = queryId;
      this.example_id_serialized_name = exampleId;
    }

    /**
     * Builds a UpdateTrainingExampleOptions.
     *
     * @return the updateTrainingExampleOptions
     */
    public UpdateTrainingExampleOptions build() {
      return new UpdateTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environmentId the environmentId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environment_id_serialized_name = environmentId;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collectionId the collectionId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collection_id_serialized_name = collectionId;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param queryId the queryId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder queryId(String queryId) {
      this.query_id_serialized_name = queryId;
      return this;
    }

    /**
     * Set the example_id_serialized_name.
     *
     * @param exampleId the exampleId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder exampleId(String exampleId) {
      this.example_id_serialized_name = exampleId;
      return this;
    }

    /**
     * Set the cross_reference_serialized_name.
     *
     * @param crossReference the crossReference
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder crossReference(String crossReference) {
      this.cross_reference_serialized_name = crossReference;
      return this;
    }

    /**
     * Set the relevance_serialized_name.
     *
     * @param relevance the relevance
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder relevance(Long relevance) {
      this.relevance_serialized_name = relevance;
      return this;
    }
  }

  /**
   * WordHeadingDetection.
   */
  public class WordHeadingDetection extends IBMWatsonGenericModel {
    private List<FontSetting> fonts_serialized_name;
    private List<WordStyle> styles_serialized_name;
    /**
     * Gets the fonts_serialized_name.
     *
     * @return the fonts_serialized_name
     */
    @AuraEnabled
    public List<FontSetting> getFonts() {
      return fonts_serialized_name;
    }
    /**
     * Gets the styles_serialized_name.
     *
     * @return the styles_serialized_name
     */
    @AuraEnabled
    public List<WordStyle> getStyles() {
      return styles_serialized_name;
    }

    /**
     * Sets the fonts_serialized_name.
     *
     * @param fonts the new fonts
     */
    public void setFonts(final List<FontSetting> fonts) {
      this.fonts_serialized_name = fonts;
    }

    /**
     * Sets the styles_serialized_name.
     *
     * @param styles the new styles
     */
    public void setStyles(final List<WordStyle> styles) {
      this.styles_serialized_name = styles;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WordHeadingDetection ret = (WordHeadingDetection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for fonts_serialized_name
      List<FontSetting> newFonts = new List<FontSetting>();
      List<FontSetting> deserializedFonts = ret.getFonts();
      if (deserializedFonts != null) {
        for (Integer i = 0; i < deserializedFonts.size(); i++) {
          FontSetting currentItem = ret.getFonts().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('fonts_serialized_name');
          FontSetting newItem = (FontSetting) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), FontSetting.class);
          newFonts.add(newItem);
        }
        ret.setFonts(newFonts);
      }

      // calling custom deserializer for styles_serialized_name
      List<WordStyle> newStyles = new List<WordStyle>();
      List<WordStyle> deserializedStyles = ret.getStyles();
      if (deserializedStyles != null) {
        for (Integer i = 0; i < deserializedStyles.size(); i++) {
          WordStyle currentItem = ret.getStyles().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('styles_serialized_name');
          WordStyle newItem = (WordStyle) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WordStyle.class);
          newStyles.add(newItem);
        }
        ret.setStyles(newStyles);
      }

      return ret;
    }
  }

  /**
   * A list of Word conversion settings.
   */
  public class WordSettings extends IBMWatsonGenericModel {
    private WordHeadingDetection heading_serialized_name;
    /**
     * Gets the heading_serialized_name.
     *
     * @return the heading_serialized_name
     */
    @AuraEnabled
    public WordHeadingDetection getHeading() {
      return heading_serialized_name;
    }

    /**
     * Sets the heading_serialized_name.
     *
     * @param heading the new heading
     */
    public void setHeading(final WordHeadingDetection heading) {
      this.heading_serialized_name = heading;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WordSettings ret = (WordSettings) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for heading_serialized_name
      WordHeadingDetection newHeading = (WordHeadingDetection) new WordHeadingDetection().deserialize(JSON.serialize(ret.getHeading()), (Map<String, Object>) jsonMap.get('heading_serialized_name'), WordHeadingDetection.class);
      ret.setHeading(newHeading);

      return ret;
    }
  }

  /**
   * WordStyle.
   */
  public class WordStyle extends IBMWatsonGenericModel {
    private Long level_serialized_name;
    private List<String> names_serialized_name;
    /**
     * Gets the level_serialized_name.
     *
     * @return the level_serialized_name
     */
    @AuraEnabled
    public Long getLevel() {
      return level_serialized_name;
    }
    /**
     * Gets the names_serialized_name.
     *
     * @return the names_serialized_name
     */
    @AuraEnabled
    public List<String> getNames() {
      return names_serialized_name;
    }

    /**
     * Sets the level_serialized_name.
     *
     * @param level the new level
     */
    public void setLevel(final long level) {
      this.level_serialized_name = level;
    }

    /**
     * Sets the names_serialized_name.
     *
     * @param names the new names
     */
    public void setNames(final List<String> names) {
      this.names_serialized_name = names;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WordStyle ret = (WordStyle) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * XPathPatterns.
   */
  public class XPathPatterns extends IBMWatsonGenericModel {
    private List<String> xpaths_serialized_name;
    /**
     * Gets the xpaths_serialized_name.
     *
     * @return the xpaths_serialized_name
     */
    @AuraEnabled
    public List<String> getXpaths() {
      return xpaths_serialized_name;
    }

    /**
     * Sets the xpaths_serialized_name.
     *
     * @param xpaths the new xpaths
     */
    public void setXpaths(final List<String> xpaths) {
      this.xpaths_serialized_name = xpaths;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      XPathPatterns ret = (XPathPatterns) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

}
