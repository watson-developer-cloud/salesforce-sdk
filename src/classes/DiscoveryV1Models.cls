public class DiscoveryV1Models {
  /**
   * The addDocument options.
   */
  public class AddDocumentOptions {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private String file_serialized_name;
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
    public String file() {
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
    private String file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;

    private AddDocumentOptionsBuilder(AddDocumentOptions add_document_options) {
      environment_id_serialized_name = add_document_options.environment_id_serialized_name;
      collection_id_serialized_name = add_document_options.collection_id_serialized_name;
      file_serialized_name = add_document_options.file_serialized_name;
      filename_serialized_name = add_document_options.filename_serialized_name;
      metadata_serialized_name = add_document_options.metadata_serialized_name;
      file_content_type_serialized_name = add_document_options.file_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public AddDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public AddDocumentOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a AddDocumentOptions.
     *
     * @return the add_document_options
     */
    public AddDocumentOptions build() {
      return new AddDocumentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the file_serialized_name.
     *
     * @param file_serialized_name the file_serialized_name
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder file(String file_serialized_name) {
      this.file_serialized_name = file_serialized_name;
      return this;
    }

    /**
     * Set the filename_serialized_name.
     *
     * @param filename_serialized_name the filename_serialized_name
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder filename(String filename_serialized_name) {
      this.filename_serialized_name = filename_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder metadata(String metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the file_content_type_serialized_name.
     *
     * @param file_content_type_serialized_name the file_content_type_serialized_name
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder fileContentType(String file_content_type_serialized_name) {
      this.file_content_type_serialized_name = file_content_type_serialized_name;
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

    private AddTrainingDataOptionsBuilder(AddTrainingDataOptions add_training_data_options) {
      environment_id_serialized_name = add_training_data_options.environment_id_serialized_name;
      collection_id_serialized_name = add_training_data_options.collection_id_serialized_name;
      natural_language_query_serialized_name = add_training_data_options.natural_language_query_serialized_name;
      filter_serialized_name = add_training_data_options.filter_serialized_name;
      examples_serialized_name = add_training_data_options.examples_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public AddTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public AddTrainingDataOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a AddTrainingDataOptions.
     *
     * @return the add_training_data_options
     */
    public AddTrainingDataOptions build() {
      return new AddTrainingDataOptions(this);
    }

    /**
     * Adds an examples_serialized_name to examples_serialized_name.
     *
     * @param examples_serialized_name the new examples_serialized_name
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder addExamples(TrainingExample examples_serialized_name) {
      IBMWatsonValidator.notNull(examples_serialized_name, 'examples_serialized_name cannot be null');
      if (this.examples_serialized_name == null) {
        this.examples_serialized_name = new List<TrainingExample>();
      }
      this.examples_serialized_name.add(examples_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param natural_language_query_serialized_name the natural_language_query_serialized_name
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder naturalLanguageQuery(String natural_language_query_serialized_name) {
      this.natural_language_query_serialized_name = natural_language_query_serialized_name;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter_serialized_name the filter_serialized_name
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder filter(String filter_serialized_name) {
      this.filter_serialized_name = filter_serialized_name;
      return this;
    }

    /**
     * Set the examples_serialized_name.
     * Existing examples_serialized_name will be replaced.
     *
     * @param examples_serialized_name the examples_serialized_name
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder examples(List<TrainingExample> examples_serialized_name) {
      this.examples_serialized_name = examples_serialized_name;
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
     * @param key_serialized_name the new key_serialized_name
     */
    public void setKey(final String key_serialized_name) {
      this.key_serialized_name = key_serialized_name;
    }

    /**
     * Sets the matching_results_serialized_name.
     *
     * @param matching_results_serialized_name the new matching_results_serialized_name
     */
    public void setMatchingResults(final long matching_results_serialized_name) {
      this.matching_results_serialized_name = matching_results_serialized_name;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations_serialized_name the new aggregations_serialized_name
     */
    public void setAggregations(final List<QueryAggregation> aggregations_serialized_name) {
      this.aggregations_serialized_name = aggregations_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      AggregationResult ret;
      if (jsonString.equals('null')) {
        ret = new AggregationResult();
      }
      else {
        ret = (AggregationResult) JSON.deserialize(jsonString, AggregationResult.class);
      }

      // calling custom deserializer for aggregations_serialized_name
      List<QueryAggregation> newAggregations = new List<QueryAggregation>();
      List<QueryAggregation> deserializedAggregations = ret.getAggregations();
      if (deserializedAggregations != null) {
        for (Integer i = 0; i < deserializedAggregations.size(); i++) {
          QueryAggregation currentItem = ret.getAggregations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aggregations_serialized_name');
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Calculation ret;
      if (jsonString.equals('null')) {
        ret = new Calculation();
      }
      else {
        ret = (Calculation) JSON.deserialize(jsonString, Calculation.class);
      }

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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
    }

    /**
     * Sets the configuration_id_serialized_name.
     *
     * @param configuration_id_serialized_name the new configuration_id_serialized_name
     */
    public void setConfigurationId(final String configuration_id_serialized_name) {
      this.configuration_id_serialized_name = configuration_id_serialized_name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
    }

    /**
     * Sets the document_counts_serialized_name.
     *
     * @param document_counts_serialized_name the new document_counts_serialized_name
     */
    public void setDocumentCounts(final DocumentCounts document_counts_serialized_name) {
      this.document_counts_serialized_name = document_counts_serialized_name;
    }

    /**
     * Sets the disk_usage_serialized_name.
     *
     * @param disk_usage_serialized_name the new disk_usage_serialized_name
     */
    public void setDiskUsage(final CollectionDiskUsage disk_usage_serialized_name) {
      this.disk_usage_serialized_name = disk_usage_serialized_name;
    }

    /**
     * Sets the training_status_serialized_name.
     *
     * @param training_status_serialized_name the new training_status_serialized_name
     */
    public void setTrainingStatus(final TrainingStatus training_status_serialized_name) {
      this.training_status_serialized_name = training_status_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Collection ret;
      if (jsonString.equals('null')) {
        ret = new Collection();
      }
      else {
        ret = (Collection) JSON.deserialize(jsonString, Collection.class);
      }

      // calling custom deserializer for document_counts_serialized_name
      DocumentCounts newDocumentCounts = (DocumentCounts) new DocumentCounts().deserialize(JSON.serialize(ret.getDocumentCounts()), (Map<String, Object>) jsonMap.get('document_counts_serialized_name'));
      ret.setDocumentCounts(newDocumentCounts);

      // calling custom deserializer for disk_usage_serialized_name
      CollectionDiskUsage newDiskUsage = (CollectionDiskUsage) new CollectionDiskUsage().deserialize(JSON.serialize(ret.getDiskUsage()), (Map<String, Object>) jsonMap.get('disk_usage_serialized_name'));
      ret.setDiskUsage(newDiskUsage);

      // calling custom deserializer for training_status_serialized_name
      TrainingStatus newTrainingStatus = (TrainingStatus) new TrainingStatus().deserialize(JSON.serialize(ret.getTrainingStatus()), (Map<String, Object>) jsonMap.get('training_status_serialized_name'));
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      CollectionDiskUsage ret;
      if (jsonString.equals('null')) {
        ret = new CollectionDiskUsage();
      }
      else {
        ret = (CollectionDiskUsage) JSON.deserialize(jsonString, CollectionDiskUsage.class);
      }

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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
    }

    /**
     * Sets the conversions_serialized_name.
     *
     * @param conversions_serialized_name the new conversions_serialized_name
     */
    public void setConversions(final Conversions conversions_serialized_name) {
      this.conversions_serialized_name = conversions_serialized_name;
    }

    /**
     * Sets the enrichments_serialized_name.
     *
     * @param enrichments_serialized_name the new enrichments_serialized_name
     */
    public void setEnrichments(final List<Enrichment> enrichments_serialized_name) {
      this.enrichments_serialized_name = enrichments_serialized_name;
    }

    /**
     * Sets the normalizations_serialized_name.
     *
     * @param normalizations_serialized_name the new normalizations_serialized_name
     */
    public void setNormalizations(final List<NormalizationOperation> normalizations_serialized_name) {
      this.normalizations_serialized_name = normalizations_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Configuration ret;
      if (jsonString.equals('null')) {
        ret = new Configuration();
      }
      else {
        ret = (Configuration) JSON.deserialize(jsonString, Configuration.class);
      }

      // calling custom deserializer for conversions_serialized_name
      Conversions newConversions = (Conversions) new Conversions().deserialize(JSON.serialize(ret.getConversions()), (Map<String, Object>) jsonMap.get('conversions_serialized_name'));
      ret.setConversions(newConversions);

      // calling custom deserializer for enrichments_serialized_name
      List<Enrichment> newEnrichments = new List<Enrichment>();
      List<Enrichment> deserializedEnrichments = ret.getEnrichments();
      if (deserializedEnrichments != null) {
        for (Integer i = 0; i < deserializedEnrichments.size(); i++) {
          Enrichment currentItem = ret.getEnrichments().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('enrichments_serialized_name');
          Enrichment newItem = (Enrichment) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          NormalizationOperation newItem = (NormalizationOperation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
     * @param pdf_serialized_name the new pdf_serialized_name
     */
    public void setPdf(final PdfSettings pdf_serialized_name) {
      this.pdf_serialized_name = pdf_serialized_name;
    }

    /**
     * Sets the word_serialized_name.
     *
     * @param word_serialized_name the new word_serialized_name
     */
    public void setWord(final WordSettings word_serialized_name) {
      this.word_serialized_name = word_serialized_name;
    }

    /**
     * Sets the html_serialized_name.
     *
     * @param html_serialized_name the new html_serialized_name
     */
    public void setHtml(final HtmlSettings html_serialized_name) {
      this.html_serialized_name = html_serialized_name;
    }

    /**
     * Sets the json_normalizations_serialized_name.
     *
     * @param json_normalizations_serialized_name the new json_normalizations_serialized_name
     */
    public void setJsonNormalizations(final List<NormalizationOperation> json_normalizations_serialized_name) {
      this.json_normalizations_serialized_name = json_normalizations_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Conversions ret;
      if (jsonString.equals('null')) {
        ret = new Conversions();
      }
      else {
        ret = (Conversions) JSON.deserialize(jsonString, Conversions.class);
      }

      // calling custom deserializer for pdf_serialized_name
      PdfSettings newPdf = (PdfSettings) new PdfSettings().deserialize(JSON.serialize(ret.getPdf()), (Map<String, Object>) jsonMap.get('pdf_serialized_name'));
      ret.setPdf(newPdf);

      // calling custom deserializer for word_serialized_name
      WordSettings newWord = (WordSettings) new WordSettings().deserialize(JSON.serialize(ret.getWord()), (Map<String, Object>) jsonMap.get('word_serialized_name'));
      ret.setWord(newWord);

      // calling custom deserializer for html_serialized_name
      HtmlSettings newHtml = (HtmlSettings) new HtmlSettings().deserialize(JSON.serialize(ret.getHtml()), (Map<String, Object>) jsonMap.get('html_serialized_name'));
      ret.setHtml(newHtml);

      // calling custom deserializer for json_normalizations_serialized_name
      List<NormalizationOperation> newJsonNormalizations = new List<NormalizationOperation>();
      List<NormalizationOperation> deserializedJsonNormalizations = ret.getJsonNormalizations();
      if (deserializedJsonNormalizations != null) {
        for (Integer i = 0; i < deserializedJsonNormalizations.size(); i++) {
          NormalizationOperation currentItem = ret.getJsonNormalizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('json_normalizations_serialized_name');
          NormalizationOperation newItem = (NormalizationOperation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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

    private CreateCollectionOptionsBuilder(CreateCollectionOptions create_collection_options) {
      environment_id_serialized_name = create_collection_options.environment_id_serialized_name;
      name_serialized_name = create_collection_options.name_serialized_name;
      description_serialized_name = create_collection_options.description_serialized_name;
      configuration_id_serialized_name = create_collection_options.configuration_id_serialized_name;
      language_serialized_name = create_collection_options.language_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param name_serialized_name the name_serialized_name
     */
    public CreateCollectionOptionsBuilder(String environment_id_serialized_name, String name_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Builds a CreateCollectionOptions.
     *
     * @return the create_collection_options
     */
    public CreateCollectionOptions build() {
      return new CreateCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder configurationId(String configuration_id_serialized_name) {
      this.configuration_id_serialized_name = configuration_id_serialized_name;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language_serialized_name the language_serialized_name
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder language(String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
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

    private CreateConfigurationOptionsBuilder(CreateConfigurationOptions create_configuration_options) {
      environment_id_serialized_name = create_configuration_options.environment_id_serialized_name;
      name_serialized_name = create_configuration_options.name_serialized_name;
      description_serialized_name = create_configuration_options.description_serialized_name;
      conversions_serialized_name = create_configuration_options.conversions_serialized_name;
      enrichments_serialized_name = create_configuration_options.enrichments_serialized_name;
      normalizations_serialized_name = create_configuration_options.normalizations_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     */
    public CreateConfigurationOptionsBuilder(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
    }

    /**
     * Builds a CreateConfigurationOptions.
     *
     * @return the create_configuration_options
     */
    public CreateConfigurationOptions build() {
      return new CreateConfigurationOptions(this);
    }

    /**
     * Adds an enrichments_serialized_name to enrichments_serialized_name.
     *
     * @param enrichments_serialized_name the new enrichments_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addEnrichments(Enrichment enrichments_serialized_name) {
      IBMWatsonValidator.notNull(enrichments_serialized_name, 'enrichments_serialized_name cannot be null');
      if (this.enrichments_serialized_name == null) {
        this.enrichments_serialized_name = new List<Enrichment>();
      }
      this.enrichments_serialized_name.add(enrichments_serialized_name);
      return this;
    }

    /**
     * Adds an normalizations_serialized_name to normalizations_serialized_name.
     *
     * @param normalizations_serialized_name the new normalizations_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addNormalizations(NormalizationOperation normalizations_serialized_name) {
      IBMWatsonValidator.notNull(normalizations_serialized_name, 'normalizations_serialized_name cannot be null');
      if (this.normalizations_serialized_name == null) {
        this.normalizations_serialized_name = new List<NormalizationOperation>();
      }
      this.normalizations_serialized_name.add(normalizations_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the conversions_serialized_name.
     *
     * @param conversions_serialized_name the conversions_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder conversions(Conversions conversions_serialized_name) {
      this.conversions_serialized_name = conversions_serialized_name;
      return this;
    }

    /**
     * Set the enrichments_serialized_name.
     * Existing enrichments_serialized_name will be replaced.
     *
     * @param enrichments_serialized_name the enrichments_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder enrichments(List<Enrichment> enrichments_serialized_name) {
      this.enrichments_serialized_name = enrichments_serialized_name;
      return this;
    }

    /**
     * Set the normalizations_serialized_name.
     * Existing normalizations_serialized_name will be replaced.
     *
     * @param normalizations_serialized_name the normalizations_serialized_name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder normalizations(List<NormalizationOperation> normalizations_serialized_name) {
      this.normalizations_serialized_name = normalizations_serialized_name;
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

    private CreateEnvironmentOptionsBuilder(CreateEnvironmentOptions create_environment_options) {
      name_serialized_name = create_environment_options.name_serialized_name;
      description_serialized_name = create_environment_options.description_serialized_name;
      size_serialized_name = create_environment_options.size_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param name_serialized_name the name_serialized_name
     */
    public CreateEnvironmentOptionsBuilder(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Builds a CreateEnvironmentOptions.
     *
     * @return the create_environment_options
     */
    public CreateEnvironmentOptions build() {
      return new CreateEnvironmentOptions(this);
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the size_serialized_name.
     *
     * @param size_serialized_name the size_serialized_name
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder size(Long size_serialized_name) {
      this.size_serialized_name = size_serialized_name;
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

    private CreateTrainingExampleOptionsBuilder(CreateTrainingExampleOptions create_training_example_options) {
      environment_id_serialized_name = create_training_example_options.environment_id_serialized_name;
      collection_id_serialized_name = create_training_example_options.collection_id_serialized_name;
      query_id_serialized_name = create_training_example_options.query_id_serialized_name;
      document_id_serialized_name = create_training_example_options.document_id_serialized_name;
      cross_reference_serialized_name = create_training_example_options.cross_reference_serialized_name;
      relevance_serialized_name = create_training_example_options.relevance_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param query_id_serialized_name the query_id_serialized_name
     */
    public CreateTrainingExampleOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String query_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.query_id_serialized_name = query_id_serialized_name;
    }

    /**
     * Builds a CreateTrainingExampleOptions.
     *
     * @return the create_training_example_options
     */
    public CreateTrainingExampleOptions build() {
      return new CreateTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param query_id_serialized_name the query_id_serialized_name
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder queryId(String query_id_serialized_name) {
      this.query_id_serialized_name = query_id_serialized_name;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param document_id_serialized_name the document_id_serialized_name
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder documentId(String document_id_serialized_name) {
      this.document_id_serialized_name = document_id_serialized_name;
      return this;
    }

    /**
     * Set the cross_reference_serialized_name.
     *
     * @param cross_reference_serialized_name the cross_reference_serialized_name
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder crossReference(String cross_reference_serialized_name) {
      this.cross_reference_serialized_name = cross_reference_serialized_name;
      return this;
    }

    /**
     * Set the relevance_serialized_name.
     *
     * @param relevance_serialized_name the relevance_serialized_name
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder relevance(Long relevance_serialized_name) {
      this.relevance_serialized_name = relevance_serialized_name;
      return this;
    }

    /**
     * Set the training_example.
     *
     * @param training_example the training_example
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder training_example(TrainingExample training_example) {
      this.document_id_serialized_name = training_example.getDocumentId();
      this.cross_reference_serialized_name = training_example.getCrossReference();
      this.relevance_serialized_name = training_example.getRelevance();
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

    private DeleteAllTrainingDataOptionsBuilder(DeleteAllTrainingDataOptions delete_all_training_data_options) {
      environment_id_serialized_name = delete_all_training_data_options.environment_id_serialized_name;
      collection_id_serialized_name = delete_all_training_data_options.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteAllTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public DeleteAllTrainingDataOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a DeleteAllTrainingDataOptions.
     *
     * @return the delete_all_training_data_options
     */
    public DeleteAllTrainingDataOptions build() {
      return new DeleteAllTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
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

    private DeleteCollectionOptionsBuilder(DeleteCollectionOptions delete_collection_options) {
      environment_id_serialized_name = delete_collection_options.environment_id_serialized_name;
      collection_id_serialized_name = delete_collection_options.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public DeleteCollectionOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a DeleteCollectionOptions.
     *
     * @return the delete_collection_options
     */
    public DeleteCollectionOptions build() {
      return new DeleteCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
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

    private DeleteConfigurationOptionsBuilder(DeleteConfigurationOptions delete_configuration_options) {
      environment_id_serialized_name = delete_configuration_options.environment_id_serialized_name;
      configuration_id_serialized_name = delete_configuration_options.configuration_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     */
    public DeleteConfigurationOptionsBuilder(String environment_id_serialized_name, String configuration_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.configuration_id_serialized_name = configuration_id_serialized_name;
    }

    /**
     * Builds a DeleteConfigurationOptions.
     *
     * @return the delete_configuration_options
     */
    public DeleteConfigurationOptions build() {
      return new DeleteConfigurationOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder configurationId(String configuration_id_serialized_name) {
      this.configuration_id_serialized_name = configuration_id_serialized_name;
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

    private DeleteDocumentOptionsBuilder(DeleteDocumentOptions delete_document_options) {
      environment_id_serialized_name = delete_document_options.environment_id_serialized_name;
      collection_id_serialized_name = delete_document_options.collection_id_serialized_name;
      document_id_serialized_name = delete_document_options.document_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param document_id_serialized_name the document_id_serialized_name
     */
    public DeleteDocumentOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String document_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.document_id_serialized_name = document_id_serialized_name;
    }

    /**
     * Builds a DeleteDocumentOptions.
     *
     * @return the delete_document_options
     */
    public DeleteDocumentOptions build() {
      return new DeleteDocumentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param document_id_serialized_name the document_id_serialized_name
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder documentId(String document_id_serialized_name) {
      this.document_id_serialized_name = document_id_serialized_name;
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

    private DeleteEnvironmentOptionsBuilder(DeleteEnvironmentOptions delete_environment_options) {
      environment_id_serialized_name = delete_environment_options.environment_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     */
    public DeleteEnvironmentOptionsBuilder(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
    }

    /**
     * Builds a DeleteEnvironmentOptions.
     *
     * @return the delete_environment_options
     */
    public DeleteEnvironmentOptions build() {
      return new DeleteEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the DeleteEnvironmentOptions builder
     */
    public DeleteEnvironmentOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
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

    private DeleteTrainingDataOptionsBuilder(DeleteTrainingDataOptions delete_training_data_options) {
      environment_id_serialized_name = delete_training_data_options.environment_id_serialized_name;
      collection_id_serialized_name = delete_training_data_options.collection_id_serialized_name;
      query_id_serialized_name = delete_training_data_options.query_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param query_id_serialized_name the query_id_serialized_name
     */
    public DeleteTrainingDataOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String query_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.query_id_serialized_name = query_id_serialized_name;
    }

    /**
     * Builds a DeleteTrainingDataOptions.
     *
     * @return the delete_training_data_options
     */
    public DeleteTrainingDataOptions build() {
      return new DeleteTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param query_id_serialized_name the query_id_serialized_name
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder queryId(String query_id_serialized_name) {
      this.query_id_serialized_name = query_id_serialized_name;
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

    private DeleteTrainingExampleOptionsBuilder(DeleteTrainingExampleOptions delete_training_example_options) {
      environment_id_serialized_name = delete_training_example_options.environment_id_serialized_name;
      collection_id_serialized_name = delete_training_example_options.collection_id_serialized_name;
      query_id_serialized_name = delete_training_example_options.query_id_serialized_name;
      example_id_serialized_name = delete_training_example_options.example_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param query_id_serialized_name the query_id_serialized_name
     * @param example_id_serialized_name the example_id_serialized_name
     */
    public DeleteTrainingExampleOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String query_id_serialized_name, String example_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.query_id_serialized_name = query_id_serialized_name;
      this.example_id_serialized_name = example_id_serialized_name;
    }

    /**
     * Builds a DeleteTrainingExampleOptions.
     *
     * @return the delete_training_example_options
     */
    public DeleteTrainingExampleOptions build() {
      return new DeleteTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param query_id_serialized_name the query_id_serialized_name
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder queryId(String query_id_serialized_name) {
      this.query_id_serialized_name = query_id_serialized_name;
      return this;
    }

    /**
     * Set the example_id_serialized_name.
     *
     * @param example_id_serialized_name the example_id_serialized_name
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder exampleId(String example_id_serialized_name) {
      this.example_id_serialized_name = example_id_serialized_name;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      DiskUsage ret;
      if (jsonString.equals('null')) {
        ret = new DiskUsage();
      }
      else {
        ret = (DiskUsage) JSON.deserialize(jsonString, DiskUsage.class);
      }

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
     * @param document_id_serialized_name the new document_id_serialized_name
     */
    public void setDocumentId(final String document_id_serialized_name) {
      this.document_id_serialized_name = document_id_serialized_name;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status_serialized_name the new status_serialized_name
     */
    public void setStatus(final String status_serialized_name) {
      this.status_serialized_name = status_serialized_name;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices_serialized_name the new notices_serialized_name
     */
    public void setNotices(final List<Notice> notices_serialized_name) {
      this.notices_serialized_name = notices_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      DocumentAccepted ret;
      if (jsonString.equals('null')) {
        ret = new DocumentAccepted();
      }
      else {
        ret = (DocumentAccepted) JSON.deserialize(jsonString, DocumentAccepted.class);
      }

      // calling custom deserializer for notices_serialized_name
      List<Notice> newNotices = new List<Notice>();
      List<Notice> deserializedNotices = ret.getNotices();
      if (deserializedNotices != null) {
        for (Integer i = 0; i < deserializedNotices.size(); i++) {
          Notice currentItem = ret.getNotices().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('notices_serialized_name');
          Notice newItem = (Notice) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      DocumentCounts ret;
      if (jsonString.equals('null')) {
        ret = new DocumentCounts();
      }
      else {
        ret = (DocumentCounts) JSON.deserialize(jsonString, DocumentCounts.class);
      }

      return ret;
    }
  }

  /**
   * DocumentSnapshot.
   */
  public class DocumentSnapshot extends IBMWatsonGenericModel {
    private String step_serialized_name;
    private Map<String, String> snapshot_serialized_name;
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
    public Map<String, String> getSnapshot() {
      return snapshot_serialized_name;
    }

    /**
     * Sets the step_serialized_name.
     *
     * @param step_serialized_name the new step_serialized_name
     */
    public void setStep(final String step_serialized_name) {
      this.step_serialized_name = step_serialized_name;
    }

    /**
     * Sets the snapshot_serialized_name.
     *
     * @param snapshot_serialized_name the new snapshot_serialized_name
     */
    public void setSnapshot(final Map<String, String> snapshot_serialized_name) {
      this.snapshot_serialized_name = snapshot_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      DocumentSnapshot ret;
      if (jsonString.equals('null')) {
        ret = new DocumentSnapshot();
      }
      else {
        ret = (DocumentSnapshot) JSON.deserialize(jsonString, DocumentSnapshot.class);
      }

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
     * @param filename_serialized_name the new filename_serialized_name
     */
    public void setFilename(final String filename_serialized_name) {
      this.filename_serialized_name = filename_serialized_name;
    }

    /**
     * Sets the file_type_serialized_name.
     *
     * @param file_type_serialized_name the new file_type_serialized_name
     */
    public void setFileType(final String file_type_serialized_name) {
      this.file_type_serialized_name = file_type_serialized_name;
    }

    /**
     * Sets the sha1_serialized_name.
     *
     * @param sha1_serialized_name the new sha1_serialized_name
     */
    public void setSha1(final String sha1_serialized_name) {
      this.sha1_serialized_name = sha1_serialized_name;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices_serialized_name the new notices_serialized_name
     */
    public void setNotices(final List<Notice> notices_serialized_name) {
      this.notices_serialized_name = notices_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      DocumentStatus ret;
      if (jsonString.equals('null')) {
        ret = new DocumentStatus();
      }
      else {
        ret = (DocumentStatus) JSON.deserialize(jsonString, DocumentStatus.class);
      }

      // calling custom deserializer for notices_serialized_name
      List<Notice> newNotices = new List<Notice>();
      List<Notice> deserializedNotices = ret.getNotices();
      if (deserializedNotices != null) {
        for (Integer i = 0; i < deserializedNotices.size(); i++) {
          Notice currentItem = ret.getNotices().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('notices_serialized_name');
          Notice newItem = (Notice) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
     * Name of the enrichment service to call. Currently the only valid value is `alchemy_language`.
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
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
    }

    /**
     * Sets the destination_field_serialized_name.
     *
     * @param destination_field_serialized_name the new destination_field_serialized_name
     */
    public void setDestinationField(final String destination_field_serialized_name) {
      this.destination_field_serialized_name = destination_field_serialized_name;
    }

    /**
     * Sets the source_field_serialized_name.
     *
     * @param source_field_serialized_name the new source_field_serialized_name
     */
    public void setSourceField(final String source_field_serialized_name) {
      this.source_field_serialized_name = source_field_serialized_name;
    }

    /**
     * Sets the overwrite_serialized_name.
     *
     * @param overwrite_serialized_name the new overwrite_serialized_name
     */
    public void setOverwrite(final Boolean overwrite_serialized_name) {
      this.overwrite_serialized_name = overwrite_serialized_name;
    }

    /**
     * Sets the enrichment_serialized_name.
     *
     * @param enrichment_serialized_name the new enrichment_serialized_name
     */
    public void setEnrichment(final String enrichment_serialized_name) {
      this.enrichment_serialized_name = enrichment_serialized_name;
    }

    /**
     * Sets the ignore_downstream_errors_serialized_name.
     *
     * @param ignore_downstream_errors_serialized_name the new ignore_downstream_errors_serialized_name
     */
    public void setIgnoreDownstreamErrors(final Boolean ignore_downstream_errors_serialized_name) {
      this.ignore_downstream_errors_serialized_name = ignore_downstream_errors_serialized_name;
    }

    /**
     * Sets the options_serialized_name.
     *
     * @param options_serialized_name the new options_serialized_name
     */
    public void setOptions(final EnrichmentOptions options_serialized_name) {
      this.options_serialized_name = options_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Enrichment ret;
      if (jsonString.equals('null')) {
        ret = new Enrichment();
      }
      else {
        ret = (Enrichment) JSON.deserialize(jsonString, Enrichment.class);
      }

      // calling custom deserializer for options_serialized_name
      EnrichmentOptions newOptions = (EnrichmentOptions) new EnrichmentOptions().deserialize(JSON.serialize(ret.getOptions()), (Map<String, Object>) jsonMap.get('options_serialized_name'));
      ret.setOptions(newOptions);

      return ret;
    }
  }

  /**
   * Options which are specific to a particular enrichment.
   */
  public class EnrichmentOptions extends IBMWatsonGenericModel {
    private List<String> extract_serialized_name;
    private Boolean sentiment_serialized_name;
    private Boolean quotations_serialized_name;
    private Boolean show_source_text_serialized_name;
    private Boolean hierarchical_typed_relations_serialized_name;
    private String model_serialized_name;
    private String language_serialized_name;
    /**
     * Gets the extract_serialized_name.
     *
     * A comma-separated list of analyses that will be applied when using the `alchemy_language` enrichment. See the service documentation for details on each extract option.  Possible values include:    * entity   * keyword   * taxonomy   * concept   * relation   * doc-sentiment   * doc-emotion   * typed-rels.
     *
     * @return the extract_serialized_name
     */
    @AuraEnabled
    public List<String> getExtract() {
      return extract_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * @return the sentiment_serialized_name
     */
    @AuraEnabled
    public Boolean getSentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the quotations_serialized_name.
     *
     * @return the quotations_serialized_name
     */
    @AuraEnabled
    public Boolean getQuotations() {
      return quotations_serialized_name;
    }
    /**
     * Gets the show_source_text_serialized_name.
     *
     * @return the show_source_text_serialized_name
     */
    @AuraEnabled
    public Boolean getShowSourceText() {
      return show_source_text_serialized_name;
    }
    /**
     * Gets the hierarchical_typed_relations_serialized_name.
     *
     * @return the hierarchical_typed_relations_serialized_name
     */
    @AuraEnabled
    public Boolean getHierarchicalTypedRelations() {
      return hierarchical_typed_relations_serialized_name;
    }
    /**
     * Gets the model_serialized_name.
     *
     * Required when using the `typed-rel` extract option. Should be set to the ID of a previously published custom Watson Knowledge Studio model.
     *
     * @return the model_serialized_name
     */
    @AuraEnabled
    public String getModel() {
      return model_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * If provided, then do not attempt to detect the language of the input document. Instead, assume the language is the one specified in this field.  You can set this property to work around `unsupported-text-language` errors.  Supported languages include English, German, French, Italian, Portuguese, Russian, Spanish and Swedish. Supported language codes are the ISO-639-1, ISO-639-2, ISO-639-3, and the plain english name of the language (for example "russian").
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }

    /**
     * Sets the extract_serialized_name.
     *
     * @param extract_serialized_name the new extract_serialized_name
     */
    public void setExtract(final List<String> extract_serialized_name) {
      this.extract_serialized_name = extract_serialized_name;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment_serialized_name the new sentiment_serialized_name
     */
    public void setSentiment(final Boolean sentiment_serialized_name) {
      this.sentiment_serialized_name = sentiment_serialized_name;
    }

    /**
     * Sets the quotations_serialized_name.
     *
     * @param quotations_serialized_name the new quotations_serialized_name
     */
    public void setQuotations(final Boolean quotations_serialized_name) {
      this.quotations_serialized_name = quotations_serialized_name;
    }

    /**
     * Sets the show_source_text_serialized_name.
     *
     * @param show_source_text_serialized_name the new show_source_text_serialized_name
     */
    public void setShowSourceText(final Boolean show_source_text_serialized_name) {
      this.show_source_text_serialized_name = show_source_text_serialized_name;
    }

    /**
     * Sets the hierarchical_typed_relations_serialized_name.
     *
     * @param hierarchical_typed_relations_serialized_name the new hierarchical_typed_relations_serialized_name
     */
    public void setHierarchicalTypedRelations(final Boolean hierarchical_typed_relations_serialized_name) {
      this.hierarchical_typed_relations_serialized_name = hierarchical_typed_relations_serialized_name;
    }

    /**
     * Sets the model_serialized_name.
     *
     * @param model_serialized_name the new model_serialized_name
     */
    public void setModel(final String model_serialized_name) {
      this.model_serialized_name = model_serialized_name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      EnrichmentOptions ret;
      if (jsonString.equals('null')) {
        ret = new EnrichmentOptions();
      }
      else {
        ret = (EnrichmentOptions) JSON.deserialize(jsonString, EnrichmentOptions.class);
      }

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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
    }

    /**
     * Sets the size_serialized_name.
     *
     * @param size_serialized_name the new size_serialized_name
     */
    public void setSize(final long size_serialized_name) {
      this.size_serialized_name = size_serialized_name;
    }

    /**
     * Sets the index_capacity_serialized_name.
     *
     * @param index_capacity_serialized_name the new index_capacity_serialized_name
     */
    public void setIndexCapacity(final IndexCapacity index_capacity_serialized_name) {
      this.index_capacity_serialized_name = index_capacity_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Environment ret;
      if (jsonString.equals('null')) {
        ret = new Environment();
      }
      else {
        ret = (Environment) JSON.deserialize(jsonString, Environment.class);
      }

      // calling custom deserializer for index_capacity_serialized_name
      IndexCapacity newIndexCapacity = (IndexCapacity) new IndexCapacity().deserialize(JSON.serialize(ret.getIndexCapacity()), (Map<String, Object>) jsonMap.get('index_capacity_serialized_name'));
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      EnvironmentDocuments ret;
      if (jsonString.equals('null')) {
        ret = new EnvironmentDocuments();
      }
      else {
        ret = (EnvironmentDocuments) JSON.deserialize(jsonString, EnvironmentDocuments.class);
      }

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

    private FederatedQueryNoticesOptionsBuilder(FederatedQueryNoticesOptions federated_query_notices_options) {
      environment_id_serialized_name = federated_query_notices_options.environment_id_serialized_name;
      collection_ids_serialized_name = federated_query_notices_options.collection_ids_serialized_name;
      filter_serialized_name = federated_query_notices_options.filter_serialized_name;
      query_serialized_name = federated_query_notices_options.query_serialized_name;
      natural_language_query_serialized_name = federated_query_notices_options.natural_language_query_serialized_name;
      aggregation_serialized_name = federated_query_notices_options.aggregation_serialized_name;
      count_serialized_name = federated_query_notices_options.count_serialized_name;
      return_serialized_name = federated_query_notices_options.return_serialized_name;
      offset_serialized_name = federated_query_notices_options.offset_serialized_name;
      sort_serialized_name = federated_query_notices_options.sort_serialized_name;
      highlight_serialized_name = federated_query_notices_options.highlight_serialized_name;
      deduplicate_field_serialized_name = federated_query_notices_options.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public FederatedQueryNoticesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_ids_serialized_name the collection_ids_serialized_name
     */
    public FederatedQueryNoticesOptionsBuilder(String environment_id_serialized_name, List<String> collection_ids_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_ids_serialized_name = collection_ids_serialized_name;
    }

    /**
     * Builds a FederatedQueryNoticesOptions.
     *
     * @return the federated_query_notices_options
     */
    public FederatedQueryNoticesOptions build() {
      return new FederatedQueryNoticesOptions(this);
    }

    /**
     * Adds an collection_ids_serialized_name to collection_ids_serialized_name.
     *
     * @param collection_ids_serialized_name the new collection_ids_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addCollectionIds(String collection_ids_serialized_name) {
      IBMWatsonValidator.notNull(collection_ids_serialized_name, 'collection_ids_serialized_name cannot be null');
      if (this.collection_ids_serialized_name == null) {
        this.collection_ids_serialized_name = new List<String>();
      }
      this.collection_ids_serialized_name.add(collection_ids_serialized_name);
      return this;
    }

    /**
     * Adds an return_serialized_name to return_serialized_name.
     *
     * @param return_serialized_name the new return_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addReturn(String return_serialized_name) {
      IBMWatsonValidator.notNull(return_serialized_name, 'return_serialized_name cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(return_serialized_name);
      return this;
    }

    /**
     * Adds an sort_serialized_name to sort_serialized_name.
     *
     * @param sort_serialized_name the new sort_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addSort(String sort_serialized_name) {
      IBMWatsonValidator.notNull(sort_serialized_name, 'sort_serialized_name cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sort_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_ids_serialized_name.
     * Existing collection_ids_serialized_name will be replaced.
     *
     * @param collection_ids_serialized_name the collection_ids_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder collectionIds(List<String> collection_ids_serialized_name) {
      this.collection_ids_serialized_name = collection_ids_serialized_name;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter_serialized_name the filter_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder filter(String filter_serialized_name) {
      this.filter_serialized_name = filter_serialized_name;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query_serialized_name the query_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder query(String query_serialized_name) {
      this.query_serialized_name = query_serialized_name;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param natural_language_query_serialized_name the natural_language_query_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder naturalLanguageQuery(String natural_language_query_serialized_name) {
      this.natural_language_query_serialized_name = natural_language_query_serialized_name;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation_serialized_name the aggregation_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder aggregation(String aggregation_serialized_name) {
      this.aggregation_serialized_name = aggregation_serialized_name;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count_serialized_name the count_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder count(Long count_serialized_name) {
      this.count_serialized_name = count_serialized_name;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param return_serialized_name the return_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder returnField(List<String> return_serialized_name) {
      this.return_serialized_name = return_serialized_name;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset_serialized_name the offset_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder offset(Long offset_serialized_name) {
      this.offset_serialized_name = offset_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder sortField(List<String> sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight_serialized_name the highlight_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder highlight(Boolean highlight_serialized_name) {
      this.highlight_serialized_name = highlight_serialized_name;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicate_field_serialized_name the deduplicate_field_serialized_name
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder deduplicateField(String deduplicate_field_serialized_name) {
      this.deduplicate_field_serialized_name = deduplicate_field_serialized_name;
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

    private FederatedQueryOptionsBuilder(FederatedQueryOptions federated_query_options) {
      environment_id_serialized_name = federated_query_options.environment_id_serialized_name;
      collection_ids_serialized_name = federated_query_options.collection_ids_serialized_name;
      filter_serialized_name = federated_query_options.filter_serialized_name;
      query_serialized_name = federated_query_options.query_serialized_name;
      natural_language_query_serialized_name = federated_query_options.natural_language_query_serialized_name;
      aggregation_serialized_name = federated_query_options.aggregation_serialized_name;
      count_serialized_name = federated_query_options.count_serialized_name;
      return_serialized_name = federated_query_options.return_serialized_name;
      offset_serialized_name = federated_query_options.offset_serialized_name;
      sort_serialized_name = federated_query_options.sort_serialized_name;
      highlight_serialized_name = federated_query_options.highlight_serialized_name;
      deduplicate_serialized_name = federated_query_options.deduplicate_serialized_name;
      deduplicate_field_serialized_name = federated_query_options.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public FederatedQueryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_ids_serialized_name the collection_ids_serialized_name
     */
    public FederatedQueryOptionsBuilder(String environment_id_serialized_name, List<String> collection_ids_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_ids_serialized_name = collection_ids_serialized_name;
    }

    /**
     * Builds a FederatedQueryOptions.
     *
     * @return the federated_query_options
     */
    public FederatedQueryOptions build() {
      return new FederatedQueryOptions(this);
    }

    /**
     * Adds an collection_ids_serialized_name to collection_ids_serialized_name.
     *
     * @param collection_ids_serialized_name the new collection_ids_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addCollectionIds(String collection_ids_serialized_name) {
      IBMWatsonValidator.notNull(collection_ids_serialized_name, 'collection_ids_serialized_name cannot be null');
      if (this.collection_ids_serialized_name == null) {
        this.collection_ids_serialized_name = new List<String>();
      }
      this.collection_ids_serialized_name.add(collection_ids_serialized_name);
      return this;
    }

    /**
     * Adds an return_serialized_name to return_serialized_name.
     *
     * @param return_serialized_name the new return_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addReturn(String return_serialized_name) {
      IBMWatsonValidator.notNull(return_serialized_name, 'return_serialized_name cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(return_serialized_name);
      return this;
    }

    /**
     * Adds an sort_serialized_name to sort_serialized_name.
     *
     * @param sort_serialized_name the new sort_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addSort(String sort_serialized_name) {
      IBMWatsonValidator.notNull(sort_serialized_name, 'sort_serialized_name cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sort_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_ids_serialized_name.
     * Existing collection_ids_serialized_name will be replaced.
     *
     * @param collection_ids_serialized_name the collection_ids_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder collectionIds(List<String> collection_ids_serialized_name) {
      this.collection_ids_serialized_name = collection_ids_serialized_name;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter_serialized_name the filter_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder filter(String filter_serialized_name) {
      this.filter_serialized_name = filter_serialized_name;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query_serialized_name the query_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder query(String query_serialized_name) {
      this.query_serialized_name = query_serialized_name;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param natural_language_query_serialized_name the natural_language_query_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder naturalLanguageQuery(String natural_language_query_serialized_name) {
      this.natural_language_query_serialized_name = natural_language_query_serialized_name;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation_serialized_name the aggregation_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder aggregation(String aggregation_serialized_name) {
      this.aggregation_serialized_name = aggregation_serialized_name;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count_serialized_name the count_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder count(Long count_serialized_name) {
      this.count_serialized_name = count_serialized_name;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param return_serialized_name the return_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder returnField(List<String> return_serialized_name) {
      this.return_serialized_name = return_serialized_name;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset_serialized_name the offset_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder offset(Long offset_serialized_name) {
      this.offset_serialized_name = offset_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder sortField(List<String> sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight_serialized_name the highlight_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder highlight(Boolean highlight_serialized_name) {
      this.highlight_serialized_name = highlight_serialized_name;
      return this;
    }

    /**
     * Set the deduplicate_serialized_name.
     *
     * @param deduplicate_serialized_name the deduplicate_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder deduplicate(Boolean deduplicate_serialized_name) {
      this.deduplicate_serialized_name = deduplicate_serialized_name;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicate_field_serialized_name the deduplicate_field_serialized_name
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder deduplicateField(String deduplicate_field_serialized_name) {
      this.deduplicate_field_serialized_name = deduplicate_field_serialized_name;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Field ret;
      if (jsonString.equals('null')) {
        ret = new Field();
      }
      else {
        ret = (Field) JSON.deserialize(jsonString, Field.class);
      }

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
     * @param level_serialized_name the new level_serialized_name
     */
    public void setLevel(final long level_serialized_name) {
      this.level_serialized_name = level_serialized_name;
    }

    /**
     * Sets the min_size_serialized_name.
     *
     * @param min_size_serialized_name the new min_size_serialized_name
     */
    public void setMinSize(final long min_size_serialized_name) {
      this.min_size_serialized_name = min_size_serialized_name;
    }

    /**
     * Sets the max_size_serialized_name.
     *
     * @param max_size_serialized_name the new max_size_serialized_name
     */
    public void setMaxSize(final long max_size_serialized_name) {
      this.max_size_serialized_name = max_size_serialized_name;
    }

    /**
     * Sets the bold_serialized_name.
     *
     * @param bold_serialized_name the new bold_serialized_name
     */
    public void setBold(final Boolean bold_serialized_name) {
      this.bold_serialized_name = bold_serialized_name;
    }

    /**
     * Sets the italic_serialized_name.
     *
     * @param italic_serialized_name the new italic_serialized_name
     */
    public void setItalic(final Boolean italic_serialized_name) {
      this.italic_serialized_name = italic_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      FontSetting ret;
      if (jsonString.equals('null')) {
        ret = new FontSetting();
      }
      else {
        ret = (FontSetting) JSON.deserialize(jsonString, FontSetting.class);
      }

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

    private GetCollectionOptionsBuilder(GetCollectionOptions get_collection_options) {
      environment_id_serialized_name = get_collection_options.environment_id_serialized_name;
      collection_id_serialized_name = get_collection_options.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public GetCollectionOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a GetCollectionOptions.
     *
     * @return the get_collection_options
     */
    public GetCollectionOptions build() {
      return new GetCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
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

    private GetConfigurationOptionsBuilder(GetConfigurationOptions get_configuration_options) {
      environment_id_serialized_name = get_configuration_options.environment_id_serialized_name;
      configuration_id_serialized_name = get_configuration_options.configuration_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     */
    public GetConfigurationOptionsBuilder(String environment_id_serialized_name, String configuration_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.configuration_id_serialized_name = configuration_id_serialized_name;
    }

    /**
     * Builds a GetConfigurationOptions.
     *
     * @return the get_configuration_options
     */
    public GetConfigurationOptions build() {
      return new GetConfigurationOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder configurationId(String configuration_id_serialized_name) {
      this.configuration_id_serialized_name = configuration_id_serialized_name;
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

    private GetDocumentStatusOptionsBuilder(GetDocumentStatusOptions get_document_status_options) {
      environment_id_serialized_name = get_document_status_options.environment_id_serialized_name;
      collection_id_serialized_name = get_document_status_options.collection_id_serialized_name;
      document_id_serialized_name = get_document_status_options.document_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetDocumentStatusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param document_id_serialized_name the document_id_serialized_name
     */
    public GetDocumentStatusOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String document_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.document_id_serialized_name = document_id_serialized_name;
    }

    /**
     * Builds a GetDocumentStatusOptions.
     *
     * @return the get_document_status_options
     */
    public GetDocumentStatusOptions build() {
      return new GetDocumentStatusOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param document_id_serialized_name the document_id_serialized_name
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder documentId(String document_id_serialized_name) {
      this.document_id_serialized_name = document_id_serialized_name;
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

    private GetEnvironmentOptionsBuilder(GetEnvironmentOptions get_environment_options) {
      environment_id_serialized_name = get_environment_options.environment_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     */
    public GetEnvironmentOptionsBuilder(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
    }

    /**
     * Builds a GetEnvironmentOptions.
     *
     * @return the get_environment_options
     */
    public GetEnvironmentOptions build() {
      return new GetEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the GetEnvironmentOptions builder
     */
    public GetEnvironmentOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
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

    private GetTrainingDataOptionsBuilder(GetTrainingDataOptions get_training_data_options) {
      environment_id_serialized_name = get_training_data_options.environment_id_serialized_name;
      collection_id_serialized_name = get_training_data_options.collection_id_serialized_name;
      query_id_serialized_name = get_training_data_options.query_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param query_id_serialized_name the query_id_serialized_name
     */
    public GetTrainingDataOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String query_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.query_id_serialized_name = query_id_serialized_name;
    }

    /**
     * Builds a GetTrainingDataOptions.
     *
     * @return the get_training_data_options
     */
    public GetTrainingDataOptions build() {
      return new GetTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param query_id_serialized_name the query_id_serialized_name
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder queryId(String query_id_serialized_name) {
      this.query_id_serialized_name = query_id_serialized_name;
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

    private GetTrainingExampleOptionsBuilder(GetTrainingExampleOptions get_training_example_options) {
      environment_id_serialized_name = get_training_example_options.environment_id_serialized_name;
      collection_id_serialized_name = get_training_example_options.collection_id_serialized_name;
      query_id_serialized_name = get_training_example_options.query_id_serialized_name;
      example_id_serialized_name = get_training_example_options.example_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param query_id_serialized_name the query_id_serialized_name
     * @param example_id_serialized_name the example_id_serialized_name
     */
    public GetTrainingExampleOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String query_id_serialized_name, String example_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.query_id_serialized_name = query_id_serialized_name;
      this.example_id_serialized_name = example_id_serialized_name;
    }

    /**
     * Builds a GetTrainingExampleOptions.
     *
     * @return the get_training_example_options
     */
    public GetTrainingExampleOptions build() {
      return new GetTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param query_id_serialized_name the query_id_serialized_name
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder queryId(String query_id_serialized_name) {
      this.query_id_serialized_name = query_id_serialized_name;
      return this;
    }

    /**
     * Set the example_id_serialized_name.
     *
     * @param example_id_serialized_name the example_id_serialized_name
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder exampleId(String example_id_serialized_name) {
      this.example_id_serialized_name = example_id_serialized_name;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Histogram ret;
      if (jsonString.equals('null')) {
        ret = new Histogram();
      }
      else {
        ret = (Histogram) JSON.deserialize(jsonString, Histogram.class);
      }

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
     * @param exclude_tags_completely_serialized_name the new exclude_tags_completely_serialized_name
     */
    public void setExcludeTagsCompletely(final List<String> exclude_tags_completely_serialized_name) {
      this.exclude_tags_completely_serialized_name = exclude_tags_completely_serialized_name;
    }

    /**
     * Sets the exclude_tags_keep_content_serialized_name.
     *
     * @param exclude_tags_keep_content_serialized_name the new exclude_tags_keep_content_serialized_name
     */
    public void setExcludeTagsKeepContent(final List<String> exclude_tags_keep_content_serialized_name) {
      this.exclude_tags_keep_content_serialized_name = exclude_tags_keep_content_serialized_name;
    }

    /**
     * Sets the keep_content_serialized_name.
     *
     * @param keep_content_serialized_name the new keep_content_serialized_name
     */
    public void setKeepContent(final XPathPatterns keep_content_serialized_name) {
      this.keep_content_serialized_name = keep_content_serialized_name;
    }

    /**
     * Sets the exclude_content_serialized_name.
     *
     * @param exclude_content_serialized_name the new exclude_content_serialized_name
     */
    public void setExcludeContent(final XPathPatterns exclude_content_serialized_name) {
      this.exclude_content_serialized_name = exclude_content_serialized_name;
    }

    /**
     * Sets the keep_tag_attributes_serialized_name.
     *
     * @param keep_tag_attributes_serialized_name the new keep_tag_attributes_serialized_name
     */
    public void setKeepTagAttributes(final List<String> keep_tag_attributes_serialized_name) {
      this.keep_tag_attributes_serialized_name = keep_tag_attributes_serialized_name;
    }

    /**
     * Sets the exclude_tag_attributes_serialized_name.
     *
     * @param exclude_tag_attributes_serialized_name the new exclude_tag_attributes_serialized_name
     */
    public void setExcludeTagAttributes(final List<String> exclude_tag_attributes_serialized_name) {
      this.exclude_tag_attributes_serialized_name = exclude_tag_attributes_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      HtmlSettings ret;
      if (jsonString.equals('null')) {
        ret = new HtmlSettings();
      }
      else {
        ret = (HtmlSettings) JSON.deserialize(jsonString, HtmlSettings.class);
      }

      // calling custom deserializer for keep_content_serialized_name
      XPathPatterns newKeepContent = (XPathPatterns) new XPathPatterns().deserialize(JSON.serialize(ret.getKeepContent()), (Map<String, Object>) jsonMap.get('keep_content_serialized_name'));
      ret.setKeepContent(newKeepContent);

      // calling custom deserializer for exclude_content_serialized_name
      XPathPatterns newExcludeContent = (XPathPatterns) new XPathPatterns().deserialize(JSON.serialize(ret.getExcludeContent()), (Map<String, Object>) jsonMap.get('exclude_content_serialized_name'));
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
     * @param documents_serialized_name the new documents_serialized_name
     */
    public void setDocuments(final EnvironmentDocuments documents_serialized_name) {
      this.documents_serialized_name = documents_serialized_name;
    }

    /**
     * Sets the disk_usage_serialized_name.
     *
     * @param disk_usage_serialized_name the new disk_usage_serialized_name
     */
    public void setDiskUsage(final DiskUsage disk_usage_serialized_name) {
      this.disk_usage_serialized_name = disk_usage_serialized_name;
    }

    /**
     * Sets the memory_usage_serialized_name.
     *
     * @param memory_usage_serialized_name the new memory_usage_serialized_name
     */
    public void setMemoryUsage(final MemoryUsage memory_usage_serialized_name) {
      this.memory_usage_serialized_name = memory_usage_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      IndexCapacity ret;
      if (jsonString.equals('null')) {
        ret = new IndexCapacity();
      }
      else {
        ret = (IndexCapacity) JSON.deserialize(jsonString, IndexCapacity.class);
      }

      // calling custom deserializer for documents_serialized_name
      EnvironmentDocuments newDocuments = (EnvironmentDocuments) new EnvironmentDocuments().deserialize(JSON.serialize(ret.getDocuments()), (Map<String, Object>) jsonMap.get('documents_serialized_name'));
      ret.setDocuments(newDocuments);

      // calling custom deserializer for disk_usage_serialized_name
      DiskUsage newDiskUsage = (DiskUsage) new DiskUsage().deserialize(JSON.serialize(ret.getDiskUsage()), (Map<String, Object>) jsonMap.get('disk_usage_serialized_name'));
      ret.setDiskUsage(newDiskUsage);

      // calling custom deserializer for memory_usage_serialized_name
      MemoryUsage newMemoryUsage = (MemoryUsage) new MemoryUsage().deserialize(JSON.serialize(ret.getMemoryUsage()), (Map<String, Object>) jsonMap.get('memory_usage_serialized_name'));
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

    private ListCollectionFieldsOptionsBuilder(ListCollectionFieldsOptions list_collection_fields_options) {
      environment_id_serialized_name = list_collection_fields_options.environment_id_serialized_name;
      collection_id_serialized_name = list_collection_fields_options.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCollectionFieldsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public ListCollectionFieldsOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a ListCollectionFieldsOptions.
     *
     * @return the list_collection_fields_options
     */
    public ListCollectionFieldsOptions build() {
      return new ListCollectionFieldsOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
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
     * @param fields_serialized_name the new fields_serialized_name
     */
    public void setFields(final List<Field> fields_serialized_name) {
      this.fields_serialized_name = fields_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      ListCollectionFieldsResponse ret;
      if (jsonString.equals('null')) {
        ret = new ListCollectionFieldsResponse();
      }
      else {
        ret = (ListCollectionFieldsResponse) JSON.deserialize(jsonString, ListCollectionFieldsResponse.class);
      }

      // calling custom deserializer for fields_serialized_name
      List<Field> newFields = new List<Field>();
      List<Field> deserializedFields = ret.getFields();
      if (deserializedFields != null) {
        for (Integer i = 0; i < deserializedFields.size(); i++) {
          Field currentItem = ret.getFields().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('fields_serialized_name');
          Field newItem = (Field) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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

    private ListCollectionsOptionsBuilder(ListCollectionsOptions list_collections_options) {
      environment_id_serialized_name = list_collections_options.environment_id_serialized_name;
      name_serialized_name = list_collections_options.name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCollectionsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     */
    public ListCollectionsOptionsBuilder(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
    }

    /**
     * Builds a ListCollectionsOptions.
     *
     * @return the list_collections_options
     */
    public ListCollectionsOptions build() {
      return new ListCollectionsOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
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
     * @param collections_serialized_name the new collections_serialized_name
     */
    public void setCollections(final List<Collection> collections_serialized_name) {
      this.collections_serialized_name = collections_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      ListCollectionsResponse ret;
      if (jsonString.equals('null')) {
        ret = new ListCollectionsResponse();
      }
      else {
        ret = (ListCollectionsResponse) JSON.deserialize(jsonString, ListCollectionsResponse.class);
      }

      // calling custom deserializer for collections_serialized_name
      List<Collection> newCollections = new List<Collection>();
      List<Collection> deserializedCollections = ret.getCollections();
      if (deserializedCollections != null) {
        for (Integer i = 0; i < deserializedCollections.size(); i++) {
          Collection currentItem = ret.getCollections().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('collections_serialized_name');
          Collection newItem = (Collection) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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

    private ListConfigurationsOptionsBuilder(ListConfigurationsOptions list_configurations_options) {
      environment_id_serialized_name = list_configurations_options.environment_id_serialized_name;
      name_serialized_name = list_configurations_options.name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListConfigurationsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     */
    public ListConfigurationsOptionsBuilder(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
    }

    /**
     * Builds a ListConfigurationsOptions.
     *
     * @return the list_configurations_options
     */
    public ListConfigurationsOptions build() {
      return new ListConfigurationsOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
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
     * @param configurations_serialized_name the new configurations_serialized_name
     */
    public void setConfigurations(final List<Configuration> configurations_serialized_name) {
      this.configurations_serialized_name = configurations_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      ListConfigurationsResponse ret;
      if (jsonString.equals('null')) {
        ret = new ListConfigurationsResponse();
      }
      else {
        ret = (ListConfigurationsResponse) JSON.deserialize(jsonString, ListConfigurationsResponse.class);
      }

      // calling custom deserializer for configurations_serialized_name
      List<Configuration> newConfigurations = new List<Configuration>();
      List<Configuration> deserializedConfigurations = ret.getConfigurations();
      if (deserializedConfigurations != null) {
        for (Integer i = 0; i < deserializedConfigurations.size(); i++) {
          Configuration currentItem = ret.getConfigurations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('configurations_serialized_name');
          Configuration newItem = (Configuration) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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

    private ListEnvironmentsOptionsBuilder(ListEnvironmentsOptions list_environments_options) {
      name_serialized_name = list_environments_options.name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListEnvironmentsOptionsBuilder() {
    }

    /**
     * Builds a ListEnvironmentsOptions.
     *
     * @return the list_environments_options
     */
    public ListEnvironmentsOptions build() {
      return new ListEnvironmentsOptions(this);
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the ListEnvironmentsOptions builder
     */
    public ListEnvironmentsOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
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
     * @param environments_serialized_name the new environments_serialized_name
     */
    public void setEnvironments(final List<Environment> environments_serialized_name) {
      this.environments_serialized_name = environments_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      ListEnvironmentsResponse ret;
      if (jsonString.equals('null')) {
        ret = new ListEnvironmentsResponse();
      }
      else {
        ret = (ListEnvironmentsResponse) JSON.deserialize(jsonString, ListEnvironmentsResponse.class);
      }

      // calling custom deserializer for environments_serialized_name
      List<Environment> newEnvironments = new List<Environment>();
      List<Environment> deserializedEnvironments = ret.getEnvironments();
      if (deserializedEnvironments != null) {
        for (Integer i = 0; i < deserializedEnvironments.size(); i++) {
          Environment currentItem = ret.getEnvironments().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('environments_serialized_name');
          Environment newItem = (Environment) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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

    private ListFieldsOptionsBuilder(ListFieldsOptions list_fields_options) {
      environment_id_serialized_name = list_fields_options.environment_id_serialized_name;
      collection_ids_serialized_name = list_fields_options.collection_ids_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListFieldsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_ids_serialized_name the collection_ids_serialized_name
     */
    public ListFieldsOptionsBuilder(String environment_id_serialized_name, List<String> collection_ids_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_ids_serialized_name = collection_ids_serialized_name;
    }

    /**
     * Builds a ListFieldsOptions.
     *
     * @return the list_fields_options
     */
    public ListFieldsOptions build() {
      return new ListFieldsOptions(this);
    }

    /**
     * Adds an collection_ids_serialized_name to collection_ids_serialized_name.
     *
     * @param collection_ids_serialized_name the new collection_ids_serialized_name
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder addCollectionIds(String collection_ids_serialized_name) {
      IBMWatsonValidator.notNull(collection_ids_serialized_name, 'collection_ids_serialized_name cannot be null');
      if (this.collection_ids_serialized_name == null) {
        this.collection_ids_serialized_name = new List<String>();
      }
      this.collection_ids_serialized_name.add(collection_ids_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_ids_serialized_name.
     * Existing collection_ids_serialized_name will be replaced.
     *
     * @param collection_ids_serialized_name the collection_ids_serialized_name
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder collectionIds(List<String> collection_ids_serialized_name) {
      this.collection_ids_serialized_name = collection_ids_serialized_name;
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

    private ListTrainingDataOptionsBuilder(ListTrainingDataOptions list_training_data_options) {
      environment_id_serialized_name = list_training_data_options.environment_id_serialized_name;
      collection_id_serialized_name = list_training_data_options.collection_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public ListTrainingDataOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a ListTrainingDataOptions.
     *
     * @return the list_training_data_options
     */
    public ListTrainingDataOptions build() {
      return new ListTrainingDataOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      MemoryUsage ret;
      if (jsonString.equals('null')) {
        ret = new MemoryUsage();
      }
      else {
        ret = (MemoryUsage) JSON.deserialize(jsonString, MemoryUsage.class);
      }

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
     * @param operation_serialized_name the new operation_serialized_name
     */
    public void setOperation(final String operation_serialized_name) {
      this.operation_serialized_name = operation_serialized_name;
    }

    /**
     * Sets the source_field_serialized_name.
     *
     * @param source_field_serialized_name the new source_field_serialized_name
     */
    public void setSourceField(final String source_field_serialized_name) {
      this.source_field_serialized_name = source_field_serialized_name;
    }

    /**
     * Sets the destination_field_serialized_name.
     *
     * @param destination_field_serialized_name the new destination_field_serialized_name
     */
    public void setDestinationField(final String destination_field_serialized_name) {
      this.destination_field_serialized_name = destination_field_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      NormalizationOperation ret;
      if (jsonString.equals('null')) {
        ret = new NormalizationOperation();
      }
      else {
        ret = (NormalizationOperation) JSON.deserialize(jsonString, NormalizationOperation.class);
      }

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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Notice ret;
      if (jsonString.equals('null')) {
        ret = new Notice();
      }
      else {
        ret = (Notice) JSON.deserialize(jsonString, Notice.class);
      }

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
     * @param fonts_serialized_name the new fonts_serialized_name
     */
    public void setFonts(final List<FontSetting> fonts_serialized_name) {
      this.fonts_serialized_name = fonts_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      PdfHeadingDetection ret;
      if (jsonString.equals('null')) {
        ret = new PdfHeadingDetection();
      }
      else {
        ret = (PdfHeadingDetection) JSON.deserialize(jsonString, PdfHeadingDetection.class);
      }

      // calling custom deserializer for fonts_serialized_name
      List<FontSetting> newFonts = new List<FontSetting>();
      List<FontSetting> deserializedFonts = ret.getFonts();
      if (deserializedFonts != null) {
        for (Integer i = 0; i < deserializedFonts.size(); i++) {
          FontSetting currentItem = ret.getFonts().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('fonts_serialized_name');
          FontSetting newItem = (FontSetting) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
     * @param heading_serialized_name the new heading_serialized_name
     */
    public void setHeading(final PdfHeadingDetection heading_serialized_name) {
      this.heading_serialized_name = heading_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      PdfSettings ret;
      if (jsonString.equals('null')) {
        ret = new PdfSettings();
      }
      else {
        ret = (PdfSettings) JSON.deserialize(jsonString, PdfSettings.class);
      }

      // calling custom deserializer for heading_serialized_name
      PdfHeadingDetection newHeading = (PdfHeadingDetection) new PdfHeadingDetection().deserialize(JSON.serialize(ret.getHeading()), (Map<String, Object>) jsonMap.get('heading_serialized_name'));
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
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }

    /**
     * Sets the field_serialized_name.
     *
     * @param field_serialized_name the new field_serialized_name
     */
    public void setField(final String field_serialized_name) {
      this.field_serialized_name = field_serialized_name;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results_serialized_name the new results_serialized_name
     */
    public void setResults(final List<AggregationResult> results_serialized_name) {
      this.results_serialized_name = results_serialized_name;
    }

    /**
     * Sets the match_serialized_name.
     *
     * @param match_serialized_name the new match_serialized_name
     */
    public void setMatch(final String match_serialized_name) {
      this.match_serialized_name = match_serialized_name;
    }

    /**
     * Sets the matching_results_serialized_name.
     *
     * @param matching_results_serialized_name the new matching_results_serialized_name
     */
    public void setMatchingResults(final long matching_results_serialized_name) {
      this.matching_results_serialized_name = matching_results_serialized_name;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations_serialized_name the new aggregations_serialized_name
     */
    public void setAggregations(final List<QueryAggregation> aggregations_serialized_name) {
      this.aggregations_serialized_name = aggregations_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      QueryAggregation ret;
      if (jsonString.equals('null')) {
        ret = new QueryAggregation();
      }
      else {
        ret = (QueryAggregation) JSON.deserialize(jsonString, QueryAggregation.class);
      }

      // calling custom deserializer for results_serialized_name
      List<AggregationResult> newResults = new List<AggregationResult>();
      List<AggregationResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          AggregationResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          AggregationResult newItem = (AggregationResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
          newAggregations.add(newItem);
        }
        ret.setAggregations(newAggregations);
      }

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

    private QueryNoticesOptionsBuilder(QueryNoticesOptions query_notices_options) {
      environment_id_serialized_name = query_notices_options.environment_id_serialized_name;
      collection_id_serialized_name = query_notices_options.collection_id_serialized_name;
      filter_serialized_name = query_notices_options.filter_serialized_name;
      query_serialized_name = query_notices_options.query_serialized_name;
      natural_language_query_serialized_name = query_notices_options.natural_language_query_serialized_name;
      passages_serialized_name = query_notices_options.passages_serialized_name;
      aggregation_serialized_name = query_notices_options.aggregation_serialized_name;
      count_serialized_name = query_notices_options.count_serialized_name;
      return_serialized_name = query_notices_options.return_serialized_name;
      offset_serialized_name = query_notices_options.offset_serialized_name;
      sort_serialized_name = query_notices_options.sort_serialized_name;
      highlight_serialized_name = query_notices_options.highlight_serialized_name;
      passages_fields_serialized_name = query_notices_options.passages_fields_serialized_name;
      passages_count_serialized_name = query_notices_options.passages_count_serialized_name;
      passages_characters_serialized_name = query_notices_options.passages_characters_serialized_name;
      deduplicate_field_serialized_name = query_notices_options.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryNoticesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public QueryNoticesOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a QueryNoticesOptions.
     *
     * @return the query_notices_options
     */
    public QueryNoticesOptions build() {
      return new QueryNoticesOptions(this);
    }

    /**
     * Adds an return_serialized_name to return_serialized_name.
     *
     * @param return_serialized_name the new return_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addReturn(String return_serialized_name) {
      IBMWatsonValidator.notNull(return_serialized_name, 'return_serialized_name cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(return_serialized_name);
      return this;
    }

    /**
     * Adds an sort_serialized_name to sort_serialized_name.
     *
     * @param sort_serialized_name the new sort_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addSort(String sort_serialized_name) {
      IBMWatsonValidator.notNull(sort_serialized_name, 'sort_serialized_name cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sort_serialized_name);
      return this;
    }

    /**
     * Adds an passages_fields_serialized_name to passages_fields_serialized_name.
     *
     * @param passages_fields_serialized_name the new passages_fields_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addPassagesFields(String passages_fields_serialized_name) {
      IBMWatsonValidator.notNull(passages_fields_serialized_name, 'passages_fields_serialized_name cannot be null');
      if (this.passages_fields_serialized_name == null) {
        this.passages_fields_serialized_name = new List<String>();
      }
      this.passages_fields_serialized_name.add(passages_fields_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter_serialized_name the filter_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder filter(String filter_serialized_name) {
      this.filter_serialized_name = filter_serialized_name;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query_serialized_name the query_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder query(String query_serialized_name) {
      this.query_serialized_name = query_serialized_name;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param natural_language_query_serialized_name the natural_language_query_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder naturalLanguageQuery(String natural_language_query_serialized_name) {
      this.natural_language_query_serialized_name = natural_language_query_serialized_name;
      return this;
    }

    /**
     * Set the passages_serialized_name.
     *
     * @param passages_serialized_name the passages_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passages(Boolean passages_serialized_name) {
      this.passages_serialized_name = passages_serialized_name;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation_serialized_name the aggregation_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder aggregation(String aggregation_serialized_name) {
      this.aggregation_serialized_name = aggregation_serialized_name;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count_serialized_name the count_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder count(Long count_serialized_name) {
      this.count_serialized_name = count_serialized_name;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param return_serialized_name the return_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder returnField(List<String> return_serialized_name) {
      this.return_serialized_name = return_serialized_name;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset_serialized_name the offset_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder offset(Long offset_serialized_name) {
      this.offset_serialized_name = offset_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder sortField(List<String> sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight_serialized_name the highlight_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder highlight(Boolean highlight_serialized_name) {
      this.highlight_serialized_name = highlight_serialized_name;
      return this;
    }

    /**
     * Set the passages_fields_serialized_name.
     * Existing passages_fields_serialized_name will be replaced.
     *
     * @param passages_fields_serialized_name the passages_fields_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesFields(List<String> passages_fields_serialized_name) {
      this.passages_fields_serialized_name = passages_fields_serialized_name;
      return this;
    }

    /**
     * Set the passages_count_serialized_name.
     *
     * @param passages_count_serialized_name the passages_count_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCount(Long passages_count_serialized_name) {
      this.passages_count_serialized_name = passages_count_serialized_name;
      return this;
    }

    /**
     * Set the passages_characters_serialized_name.
     *
     * @param passages_characters_serialized_name the passages_characters_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCharacters(Long passages_characters_serialized_name) {
      this.passages_characters_serialized_name = passages_characters_serialized_name;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicate_field_serialized_name the deduplicate_field_serialized_name
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder deduplicateField(String deduplicate_field_serialized_name) {
      this.deduplicate_field_serialized_name = deduplicate_field_serialized_name;
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
     * @param matching_results_serialized_name the new matching_results_serialized_name
     */
    public void setMatchingResults(final long matching_results_serialized_name) {
      this.matching_results_serialized_name = matching_results_serialized_name;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results_serialized_name the new results_serialized_name
     */
    public void setResults(final List<QueryNoticesResult> results_serialized_name) {
      this.results_serialized_name = results_serialized_name;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations_serialized_name the new aggregations_serialized_name
     */
    public void setAggregations(final List<QueryAggregation> aggregations_serialized_name) {
      this.aggregations_serialized_name = aggregations_serialized_name;
    }

    /**
     * Sets the passages_serialized_name.
     *
     * @param passages_serialized_name the new passages_serialized_name
     */
    public void setPassages(final List<QueryPassages> passages_serialized_name) {
      this.passages_serialized_name = passages_serialized_name;
    }

    /**
     * Sets the duplicates_removed_serialized_name.
     *
     * @param duplicates_removed_serialized_name the new duplicates_removed_serialized_name
     */
    public void setDuplicatesRemoved(final long duplicates_removed_serialized_name) {
      this.duplicates_removed_serialized_name = duplicates_removed_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      QueryNoticesResponse ret;
      if (jsonString.equals('null')) {
        ret = new QueryNoticesResponse();
      }
      else {
        ret = (QueryNoticesResponse) JSON.deserialize(jsonString, QueryNoticesResponse.class);
      }

      // calling custom deserializer for results_serialized_name
      List<QueryNoticesResult> newResults = new List<QueryNoticesResult>();
      List<QueryNoticesResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          QueryNoticesResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          QueryNoticesResult newItem = (QueryNoticesResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          QueryPassages newItem = (QueryPassages) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
    private Map<String, String> metadata_serialized_name;
    private String collection_id_serialized_name;

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
    public Map<String, String> getMetadata() {
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
    public void setMetadata(final Map<String, String> metadata_serialized_name) {
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      QueryNoticesResult ret;
      if (jsonString.equals('null')) {
        ret = new QueryNoticesResult();
      }
      else {
        ret = (QueryNoticesResult) JSON.deserialize(jsonString, QueryNoticesResult.class);
      }

      Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

      for (String key : jsonMap.keySet()) {
        if (!baseProps.contains(key) && !baseProps.contains(key + '_serialized_name')) {
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

    private QueryOptionsBuilder(QueryOptions query_options) {
      environment_id_serialized_name = query_options.environment_id_serialized_name;
      collection_id_serialized_name = query_options.collection_id_serialized_name;
      filter_serialized_name = query_options.filter_serialized_name;
      query_serialized_name = query_options.query_serialized_name;
      natural_language_query_serialized_name = query_options.natural_language_query_serialized_name;
      passages_serialized_name = query_options.passages_serialized_name;
      aggregation_serialized_name = query_options.aggregation_serialized_name;
      count_serialized_name = query_options.count_serialized_name;
      return_serialized_name = query_options.return_serialized_name;
      offset_serialized_name = query_options.offset_serialized_name;
      sort_serialized_name = query_options.sort_serialized_name;
      highlight_serialized_name = query_options.highlight_serialized_name;
      passages_fields_serialized_name = query_options.passages_fields_serialized_name;
      passages_count_serialized_name = query_options.passages_count_serialized_name;
      passages_characters_serialized_name = query_options.passages_characters_serialized_name;
      deduplicate_serialized_name = query_options.deduplicate_serialized_name;
      deduplicate_field_serialized_name = query_options.deduplicate_field_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public QueryOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a QueryOptions.
     *
     * @return the query_options
     */
    public QueryOptions build() {
      return new QueryOptions(this);
    }

    /**
     * Adds an return_serialized_name to return_serialized_name.
     *
     * @param return_serialized_name the new return_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addReturn(String return_serialized_name) {
      IBMWatsonValidator.notNull(return_serialized_name, 'return_serialized_name cannot be null');
      if (this.return_serialized_name == null) {
        this.return_serialized_name = new List<String>();
      }
      this.return_serialized_name.add(return_serialized_name);
      return this;
    }

    /**
     * Adds an sort_serialized_name to sort_serialized_name.
     *
     * @param sort_serialized_name the new sort_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addSort(String sort_serialized_name) {
      IBMWatsonValidator.notNull(sort_serialized_name, 'sort_serialized_name cannot be null');
      if (this.sort_serialized_name == null) {
        this.sort_serialized_name = new List<String>();
      }
      this.sort_serialized_name.add(sort_serialized_name);
      return this;
    }

    /**
     * Adds an passages_fields_serialized_name to passages_fields_serialized_name.
     *
     * @param passages_fields_serialized_name the new passages_fields_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addPassagesFields(String passages_fields_serialized_name) {
      IBMWatsonValidator.notNull(passages_fields_serialized_name, 'passages_fields_serialized_name cannot be null');
      if (this.passages_fields_serialized_name == null) {
        this.passages_fields_serialized_name = new List<String>();
      }
      this.passages_fields_serialized_name.add(passages_fields_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter_serialized_name the filter_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder filter(String filter_serialized_name) {
      this.filter_serialized_name = filter_serialized_name;
      return this;
    }

    /**
     * Set the query_serialized_name.
     *
     * @param query_serialized_name the query_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder query(String query_serialized_name) {
      this.query_serialized_name = query_serialized_name;
      return this;
    }

    /**
     * Set the natural_language_query_serialized_name.
     *
     * @param natural_language_query_serialized_name the natural_language_query_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder naturalLanguageQuery(String natural_language_query_serialized_name) {
      this.natural_language_query_serialized_name = natural_language_query_serialized_name;
      return this;
    }

    /**
     * Set the passages_serialized_name.
     *
     * @param passages_serialized_name the passages_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passages(Boolean passages_serialized_name) {
      this.passages_serialized_name = passages_serialized_name;
      return this;
    }

    /**
     * Set the aggregation_serialized_name.
     *
     * @param aggregation_serialized_name the aggregation_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder aggregation(String aggregation_serialized_name) {
      this.aggregation_serialized_name = aggregation_serialized_name;
      return this;
    }

    /**
     * Set the count_serialized_name.
     *
     * @param count_serialized_name the count_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder count(Long count_serialized_name) {
      this.count_serialized_name = count_serialized_name;
      return this;
    }

    /**
     * Set the return_serialized_name.
     * Existing return_serialized_name will be replaced.
     *
     * @param return_serialized_name the return_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder returnField(List<String> return_serialized_name) {
      this.return_serialized_name = return_serialized_name;
      return this;
    }

    /**
     * Set the offset_serialized_name.
     *
     * @param offset_serialized_name the offset_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder offset(Long offset_serialized_name) {
      this.offset_serialized_name = offset_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     * Existing sort_serialized_name will be replaced.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder sortField(List<String> sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the highlight_serialized_name.
     *
     * @param highlight_serialized_name the highlight_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder highlight(Boolean highlight_serialized_name) {
      this.highlight_serialized_name = highlight_serialized_name;
      return this;
    }

    /**
     * Set the passages_fields_serialized_name.
     * Existing passages_fields_serialized_name will be replaced.
     *
     * @param passages_fields_serialized_name the passages_fields_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesFields(List<String> passages_fields_serialized_name) {
      this.passages_fields_serialized_name = passages_fields_serialized_name;
      return this;
    }

    /**
     * Set the passages_count_serialized_name.
     *
     * @param passages_count_serialized_name the passages_count_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCount(Long passages_count_serialized_name) {
      this.passages_count_serialized_name = passages_count_serialized_name;
      return this;
    }

    /**
     * Set the passages_characters_serialized_name.
     *
     * @param passages_characters_serialized_name the passages_characters_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCharacters(Long passages_characters_serialized_name) {
      this.passages_characters_serialized_name = passages_characters_serialized_name;
      return this;
    }

    /**
     * Set the deduplicate_serialized_name.
     *
     * @param deduplicate_serialized_name the deduplicate_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder deduplicate(Boolean deduplicate_serialized_name) {
      this.deduplicate_serialized_name = deduplicate_serialized_name;
      return this;
    }

    /**
     * Set the deduplicate_field_serialized_name.
     *
     * @param deduplicate_field_serialized_name the deduplicate_field_serialized_name
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder deduplicateField(String deduplicate_field_serialized_name) {
      this.deduplicate_field_serialized_name = deduplicate_field_serialized_name;
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
    private Double start_offset_serialized_name;
    private Double end_offset_serialized_name;
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
    public Double getStartOffset() {
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
    public Double getEndOffset() {
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
     * @param document_id_serialized_name the new document_id_serialized_name
     */
    public void setDocumentId(final String document_id_serialized_name) {
      this.document_id_serialized_name = document_id_serialized_name;
    }

    /**
     * Sets the passage_score_serialized_name.
     *
     * @param passage_score_serialized_name the new passage_score_serialized_name
     */
    public void setPassageScore(final Double passage_score_serialized_name) {
      this.passage_score_serialized_name = passage_score_serialized_name;
    }

    /**
     * Sets the passage_text_serialized_name.
     *
     * @param passage_text_serialized_name the new passage_text_serialized_name
     */
    public void setPassageText(final String passage_text_serialized_name) {
      this.passage_text_serialized_name = passage_text_serialized_name;
    }

    /**
     * Sets the start_offset_serialized_name.
     *
     * @param start_offset_serialized_name the new start_offset_serialized_name
     */
    public void setStartOffset(final Double start_offset_serialized_name) {
      this.start_offset_serialized_name = start_offset_serialized_name;
    }

    /**
     * Sets the end_offset_serialized_name.
     *
     * @param end_offset_serialized_name the new end_offset_serialized_name
     */
    public void setEndOffset(final Double end_offset_serialized_name) {
      this.end_offset_serialized_name = end_offset_serialized_name;
    }

    /**
     * Sets the field_serialized_name.
     *
     * @param field_serialized_name the new field_serialized_name
     */
    public void setField(final String field_serialized_name) {
      this.field_serialized_name = field_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      QueryPassages ret;
      if (jsonString.equals('null')) {
        ret = new QueryPassages();
      }
      else {
        ret = (QueryPassages) JSON.deserialize(jsonString, QueryPassages.class);
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
     * @param matching_results_serialized_name the new matching_results_serialized_name
     */
    public void setMatchingResults(final long matching_results_serialized_name) {
      this.matching_results_serialized_name = matching_results_serialized_name;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results_serialized_name the new results_serialized_name
     */
    public void setResults(final List<QueryResult> results_serialized_name) {
      this.results_serialized_name = results_serialized_name;
    }

    /**
     * Sets the aggregations_serialized_name.
     *
     * @param aggregations_serialized_name the new aggregations_serialized_name
     */
    public void setAggregations(final List<QueryAggregation> aggregations_serialized_name) {
      this.aggregations_serialized_name = aggregations_serialized_name;
    }

    /**
     * Sets the passages_serialized_name.
     *
     * @param passages_serialized_name the new passages_serialized_name
     */
    public void setPassages(final List<QueryPassages> passages_serialized_name) {
      this.passages_serialized_name = passages_serialized_name;
    }

    /**
     * Sets the duplicates_removed_serialized_name.
     *
     * @param duplicates_removed_serialized_name the new duplicates_removed_serialized_name
     */
    public void setDuplicatesRemoved(final long duplicates_removed_serialized_name) {
      this.duplicates_removed_serialized_name = duplicates_removed_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      QueryResponse ret;
      if (jsonString.equals('null')) {
        ret = new QueryResponse();
      }
      else {
        ret = (QueryResponse) JSON.deserialize(jsonString, QueryResponse.class);
      }

      // calling custom deserializer for results_serialized_name
      List<QueryResult> newResults = new List<QueryResult>();
      List<QueryResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          QueryResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          QueryResult newItem = (QueryResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          QueryAggregation newItem = (QueryAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          QueryPassages newItem = (QueryPassages) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
    private Map<String, String> metadata_serialized_name;
    private String collection_id_serialized_name;

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
    public Map<String, String> getMetadata() {
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
    public void setMetadata(final Map<String, String> metadata_serialized_name) {
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      QueryResult ret;
      if (jsonString.equals('null')) {
        ret = new QueryResult();
      }
      else {
        ret = (QueryResult) JSON.deserialize(jsonString, QueryResult.class);
      }

      Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

      for (String key : jsonMap.keySet()) {
        if (!baseProps.contains(key) && !baseProps.contains(key + '_serialized_name')) {
          ret.put(key, jsonMap.get(key));
        }
      }

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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      Term ret;
      if (jsonString.equals('null')) {
        ret = new Term();
      }
      else {
        ret = (Term) JSON.deserialize(jsonString, Term.class);
      }

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
    private String file_serialized_name;
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
    public String file() {
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
    private String file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;

    private TestConfigurationInEnvironmentOptionsBuilder(TestConfigurationInEnvironmentOptions test_configuration_in_environment_options) {
      environment_id_serialized_name = test_configuration_in_environment_options.environment_id_serialized_name;
      configuration_serialized_name = test_configuration_in_environment_options.configuration_serialized_name;
      step_serialized_name = test_configuration_in_environment_options.step_serialized_name;
      configuration_id_serialized_name = test_configuration_in_environment_options.configuration_id_serialized_name;
      file_serialized_name = test_configuration_in_environment_options.file_serialized_name;
      filename_serialized_name = test_configuration_in_environment_options.filename_serialized_name;
      metadata_serialized_name = test_configuration_in_environment_options.metadata_serialized_name;
      file_content_type_serialized_name = test_configuration_in_environment_options.file_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public TestConfigurationInEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     */
    public TestConfigurationInEnvironmentOptionsBuilder(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
    }

    /**
     * Builds a TestConfigurationInEnvironmentOptions.
     *
     * @return the test_configuration_in_environment_options
     */
    public TestConfigurationInEnvironmentOptions build() {
      return new TestConfigurationInEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the configuration_serialized_name.
     *
     * @param configuration_serialized_name the configuration_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder configuration(String configuration_serialized_name) {
      this.configuration_serialized_name = configuration_serialized_name;
      return this;
    }

    /**
     * Set the step_serialized_name.
     *
     * @param step_serialized_name the step_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder step(String step_serialized_name) {
      this.step_serialized_name = step_serialized_name;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder configurationId(String configuration_id_serialized_name) {
      this.configuration_id_serialized_name = configuration_id_serialized_name;
      return this;
    }

    /**
     * Set the file_serialized_name.
     *
     * @param file_serialized_name the file_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder file(String file_serialized_name) {
      this.file_serialized_name = file_serialized_name;
      return this;
    }

    /**
     * Set the filename_serialized_name.
     *
     * @param filename_serialized_name the filename_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder filename(String filename_serialized_name) {
      this.filename_serialized_name = filename_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder metadata(String metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the file_content_type_serialized_name.
     *
     * @param file_content_type_serialized_name the file_content_type_serialized_name
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder fileContentType(String file_content_type_serialized_name) {
      this.file_content_type_serialized_name = file_content_type_serialized_name;
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
     * @param snapshots_serialized_name the new snapshots_serialized_name
     */
    public void setSnapshots(final List<DocumentSnapshot> snapshots_serialized_name) {
      this.snapshots_serialized_name = snapshots_serialized_name;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices_serialized_name the new notices_serialized_name
     */
    public void setNotices(final List<Notice> notices_serialized_name) {
      this.notices_serialized_name = notices_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      TestDocument ret;
      if (jsonString.equals('null')) {
        ret = new TestDocument();
      }
      else {
        ret = (TestDocument) JSON.deserialize(jsonString, TestDocument.class);
      }

      // calling custom deserializer for snapshots_serialized_name
      List<DocumentSnapshot> newSnapshots = new List<DocumentSnapshot>();
      List<DocumentSnapshot> deserializedSnapshots = ret.getSnapshots();
      if (deserializedSnapshots != null) {
        for (Integer i = 0; i < deserializedSnapshots.size(); i++) {
          DocumentSnapshot currentItem = ret.getSnapshots().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('snapshots_serialized_name');
          DocumentSnapshot newItem = (DocumentSnapshot) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          Notice newItem = (Notice) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
     * @param environment_id_serialized_name the new environment_id_serialized_name
     */
    public void setEnvironmentId(final String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
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
     * Sets the queries_serialized_name.
     *
     * @param queries_serialized_name the new queries_serialized_name
     */
    public void setQueries(final List<TrainingQuery> queries_serialized_name) {
      this.queries_serialized_name = queries_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      TrainingDataSet ret;
      if (jsonString.equals('null')) {
        ret = new TrainingDataSet();
      }
      else {
        ret = (TrainingDataSet) JSON.deserialize(jsonString, TrainingDataSet.class);
      }

      // calling custom deserializer for queries_serialized_name
      List<TrainingQuery> newQueries = new List<TrainingQuery>();
      List<TrainingQuery> deserializedQueries = ret.getQueries();
      if (deserializedQueries != null) {
        for (Integer i = 0; i < deserializedQueries.size(); i++) {
          TrainingQuery currentItem = ret.getQueries().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('queries_serialized_name');
          TrainingQuery newItem = (TrainingQuery) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
     * @param document_id_serialized_name the new document_id_serialized_name
     */
    public void setDocumentId(final String document_id_serialized_name) {
      this.document_id_serialized_name = document_id_serialized_name;
    }

    /**
     * Sets the cross_reference_serialized_name.
     *
     * @param cross_reference_serialized_name the new cross_reference_serialized_name
     */
    public void setCrossReference(final String cross_reference_serialized_name) {
      this.cross_reference_serialized_name = cross_reference_serialized_name;
    }

    /**
     * Sets the relevance_serialized_name.
     *
     * @param relevance_serialized_name the new relevance_serialized_name
     */
    public void setRelevance(final long relevance_serialized_name) {
      this.relevance_serialized_name = relevance_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      TrainingExample ret;
      if (jsonString.equals('null')) {
        ret = new TrainingExample();
      }
      else {
        ret = (TrainingExample) JSON.deserialize(jsonString, TrainingExample.class);
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
     * @param query_id_serialized_name the new query_id_serialized_name
     */
    public void setQueryId(final String query_id_serialized_name) {
      this.query_id_serialized_name = query_id_serialized_name;
    }

    /**
     * Sets the natural_language_query_serialized_name.
     *
     * @param natural_language_query_serialized_name the new natural_language_query_serialized_name
     */
    public void setNaturalLanguageQuery(final String natural_language_query_serialized_name) {
      this.natural_language_query_serialized_name = natural_language_query_serialized_name;
    }

    /**
     * Sets the filter_serialized_name.
     *
     * @param filter_serialized_name the new filter_serialized_name
     */
    public void setFilter(final String filter_serialized_name) {
      this.filter_serialized_name = filter_serialized_name;
    }

    /**
     * Sets the examples_serialized_name.
     *
     * @param examples_serialized_name the new examples_serialized_name
     */
    public void setExamples(final List<TrainingExample> examples_serialized_name) {
      this.examples_serialized_name = examples_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      TrainingQuery ret;
      if (jsonString.equals('null')) {
        ret = new TrainingQuery();
      }
      else {
        ret = (TrainingQuery) JSON.deserialize(jsonString, TrainingQuery.class);
      }

      // calling custom deserializer for examples_serialized_name
      List<TrainingExample> newExamples = new List<TrainingExample>();
      List<TrainingExample> deserializedExamples = ret.getExamples();
      if (deserializedExamples != null) {
        for (Integer i = 0; i < deserializedExamples.size(); i++) {
          TrainingExample currentItem = ret.getExamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('examples_serialized_name');
          TrainingExample newItem = (TrainingExample) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
     * @param total_examples_serialized_name the new total_examples_serialized_name
     */
    public void setTotalExamples(final long total_examples_serialized_name) {
      this.total_examples_serialized_name = total_examples_serialized_name;
    }

    /**
     * Sets the available_serialized_name.
     *
     * @param available_serialized_name the new available_serialized_name
     */
    public void setAvailable(final Boolean available_serialized_name) {
      this.available_serialized_name = available_serialized_name;
    }

    /**
     * Sets the processing_serialized_name.
     *
     * @param processing_serialized_name the new processing_serialized_name
     */
    public void setProcessing(final Boolean processing_serialized_name) {
      this.processing_serialized_name = processing_serialized_name;
    }

    /**
     * Sets the minimum_queries_added_serialized_name.
     *
     * @param minimum_queries_added_serialized_name the new minimum_queries_added_serialized_name
     */
    public void setMinimumQueriesAdded(final Boolean minimum_queries_added_serialized_name) {
      this.minimum_queries_added_serialized_name = minimum_queries_added_serialized_name;
    }

    /**
     * Sets the minimum_examples_added_serialized_name.
     *
     * @param minimum_examples_added_serialized_name the new minimum_examples_added_serialized_name
     */
    public void setMinimumExamplesAdded(final Boolean minimum_examples_added_serialized_name) {
      this.minimum_examples_added_serialized_name = minimum_examples_added_serialized_name;
    }

    /**
     * Sets the sufficient_label_diversity_serialized_name.
     *
     * @param sufficient_label_diversity_serialized_name the new sufficient_label_diversity_serialized_name
     */
    public void setSufficientLabelDiversity(final Boolean sufficient_label_diversity_serialized_name) {
      this.sufficient_label_diversity_serialized_name = sufficient_label_diversity_serialized_name;
    }

    /**
     * Sets the notices_serialized_name.
     *
     * @param notices_serialized_name the new notices_serialized_name
     */
    public void setNotices(final long notices_serialized_name) {
      this.notices_serialized_name = notices_serialized_name;
    }

    /**
     * Sets the successfully_trained_serialized_name.
     *
     * @param successfully_trained_serialized_name the new successfully_trained_serialized_name
     */
    public void setSuccessfullyTrained(final Datetime successfully_trained_serialized_name) {
      this.successfully_trained_serialized_name = successfully_trained_serialized_name;
    }

    /**
     * Sets the data_updated_serialized_name.
     *
     * @param data_updated_serialized_name the new data_updated_serialized_name
     */
    public void setDataUpdated(final Datetime data_updated_serialized_name) {
      this.data_updated_serialized_name = data_updated_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      TrainingStatus ret;
      if (jsonString.equals('null')) {
        ret = new TrainingStatus();
      }
      else {
        ret = (TrainingStatus) JSON.deserialize(jsonString, TrainingStatus.class);
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

    private UpdateCollectionOptionsBuilder(UpdateCollectionOptions update_collection_options) {
      environment_id_serialized_name = update_collection_options.environment_id_serialized_name;
      collection_id_serialized_name = update_collection_options.collection_id_serialized_name;
      name_serialized_name = update_collection_options.name_serialized_name;
      description_serialized_name = update_collection_options.description_serialized_name;
      configuration_id_serialized_name = update_collection_options.configuration_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     */
    public UpdateCollectionOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
    }

    /**
     * Builds a UpdateCollectionOptions.
     *
     * @return the update_collection_options
     */
    public UpdateCollectionOptions build() {
      return new UpdateCollectionOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder configurationId(String configuration_id_serialized_name) {
      this.configuration_id_serialized_name = configuration_id_serialized_name;
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

    private UpdateConfigurationOptionsBuilder(UpdateConfigurationOptions update_configuration_options) {
      environment_id_serialized_name = update_configuration_options.environment_id_serialized_name;
      configuration_id_serialized_name = update_configuration_options.configuration_id_serialized_name;
      name_serialized_name = update_configuration_options.name_serialized_name;
      description_serialized_name = update_configuration_options.description_serialized_name;
      conversions_serialized_name = update_configuration_options.conversions_serialized_name;
      enrichments_serialized_name = update_configuration_options.enrichments_serialized_name;
      normalizations_serialized_name = update_configuration_options.normalizations_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     */
    public UpdateConfigurationOptionsBuilder(String environment_id_serialized_name, String configuration_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.configuration_id_serialized_name = configuration_id_serialized_name;
    }

    /**
     * Builds a UpdateConfigurationOptions.
     *
     * @return the update_configuration_options
     */
    public UpdateConfigurationOptions build() {
      return new UpdateConfigurationOptions(this);
    }

    /**
     * Adds an enrichments_serialized_name to enrichments_serialized_name.
     *
     * @param enrichments_serialized_name the new enrichments_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addEnrichments(Enrichment enrichments_serialized_name) {
      IBMWatsonValidator.notNull(enrichments_serialized_name, 'enrichments_serialized_name cannot be null');
      if (this.enrichments_serialized_name == null) {
        this.enrichments_serialized_name = new List<Enrichment>();
      }
      this.enrichments_serialized_name.add(enrichments_serialized_name);
      return this;
    }

    /**
     * Adds an normalizations_serialized_name to normalizations_serialized_name.
     *
     * @param normalizations_serialized_name the new normalizations_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addNormalizations(NormalizationOperation normalizations_serialized_name) {
      IBMWatsonValidator.notNull(normalizations_serialized_name, 'normalizations_serialized_name cannot be null');
      if (this.normalizations_serialized_name == null) {
        this.normalizations_serialized_name = new List<NormalizationOperation>();
      }
      this.normalizations_serialized_name.add(normalizations_serialized_name);
      return this;
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the configuration_id_serialized_name.
     *
     * @param configuration_id_serialized_name the configuration_id_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder configurationId(String configuration_id_serialized_name) {
      this.configuration_id_serialized_name = configuration_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the conversions_serialized_name.
     *
     * @param conversions_serialized_name the conversions_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder conversions(Conversions conversions_serialized_name) {
      this.conversions_serialized_name = conversions_serialized_name;
      return this;
    }

    /**
     * Set the enrichments_serialized_name.
     * Existing enrichments_serialized_name will be replaced.
     *
     * @param enrichments_serialized_name the enrichments_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder enrichments(List<Enrichment> enrichments_serialized_name) {
      this.enrichments_serialized_name = enrichments_serialized_name;
      return this;
    }

    /**
     * Set the normalizations_serialized_name.
     * Existing normalizations_serialized_name will be replaced.
     *
     * @param normalizations_serialized_name the normalizations_serialized_name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder normalizations(List<NormalizationOperation> normalizations_serialized_name) {
      this.normalizations_serialized_name = normalizations_serialized_name;
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
    private String file_serialized_name;
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
    public String file() {
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
    private String file_serialized_name;
    private String filename_serialized_name;
    private String metadata_serialized_name;
    private String file_content_type_serialized_name;

    private UpdateDocumentOptionsBuilder(UpdateDocumentOptions update_document_options) {
      environment_id_serialized_name = update_document_options.environment_id_serialized_name;
      collection_id_serialized_name = update_document_options.collection_id_serialized_name;
      document_id_serialized_name = update_document_options.document_id_serialized_name;
      file_serialized_name = update_document_options.file_serialized_name;
      filename_serialized_name = update_document_options.filename_serialized_name;
      metadata_serialized_name = update_document_options.metadata_serialized_name;
      file_content_type_serialized_name = update_document_options.file_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param document_id_serialized_name the document_id_serialized_name
     */
    public UpdateDocumentOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String document_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.document_id_serialized_name = document_id_serialized_name;
    }

    /**
     * Builds a UpdateDocumentOptions.
     *
     * @return the update_document_options
     */
    public UpdateDocumentOptions build() {
      return new UpdateDocumentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the document_id_serialized_name.
     *
     * @param document_id_serialized_name the document_id_serialized_name
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder documentId(String document_id_serialized_name) {
      this.document_id_serialized_name = document_id_serialized_name;
      return this;
    }

    /**
     * Set the file_serialized_name.
     *
     * @param file_serialized_name the file_serialized_name
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder file(String file_serialized_name) {
      this.file_serialized_name = file_serialized_name;
      return this;
    }

    /**
     * Set the filename_serialized_name.
     *
     * @param filename_serialized_name the filename_serialized_name
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder filename(String filename_serialized_name) {
      this.filename_serialized_name = filename_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder metadata(String metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the file_content_type_serialized_name.
     *
     * @param file_content_type_serialized_name the file_content_type_serialized_name
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder fileContentType(String file_content_type_serialized_name) {
      this.file_content_type_serialized_name = file_content_type_serialized_name;
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

    private UpdateEnvironmentOptionsBuilder(UpdateEnvironmentOptions update_environment_options) {
      environment_id_serialized_name = update_environment_options.environment_id_serialized_name;
      name_serialized_name = update_environment_options.name_serialized_name;
      description_serialized_name = update_environment_options.description_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     */
    public UpdateEnvironmentOptionsBuilder(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
    }

    /**
     * Builds a UpdateEnvironmentOptions.
     *
     * @return the update_environment_options
     */
    public UpdateEnvironmentOptions build() {
      return new UpdateEnvironmentOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
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

    private UpdateTrainingExampleOptionsBuilder(UpdateTrainingExampleOptions update_training_example_options) {
      environment_id_serialized_name = update_training_example_options.environment_id_serialized_name;
      collection_id_serialized_name = update_training_example_options.collection_id_serialized_name;
      query_id_serialized_name = update_training_example_options.query_id_serialized_name;
      example_id_serialized_name = update_training_example_options.example_id_serialized_name;
      cross_reference_serialized_name = update_training_example_options.cross_reference_serialized_name;
      relevance_serialized_name = update_training_example_options.relevance_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @param query_id_serialized_name the query_id_serialized_name
     * @param example_id_serialized_name the example_id_serialized_name
     */
    public UpdateTrainingExampleOptionsBuilder(String environment_id_serialized_name, String collection_id_serialized_name, String query_id_serialized_name, String example_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      this.collection_id_serialized_name = collection_id_serialized_name;
      this.query_id_serialized_name = query_id_serialized_name;
      this.example_id_serialized_name = example_id_serialized_name;
    }

    /**
     * Builds a UpdateTrainingExampleOptions.
     *
     * @return the update_training_example_options
     */
    public UpdateTrainingExampleOptions build() {
      return new UpdateTrainingExampleOptions(this);
    }

    /**
     * Set the environment_id_serialized_name.
     *
     * @param environment_id_serialized_name the environment_id_serialized_name
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder environmentId(String environment_id_serialized_name) {
      this.environment_id_serialized_name = environment_id_serialized_name;
      return this;
    }

    /**
     * Set the collection_id_serialized_name.
     *
     * @param collection_id_serialized_name the collection_id_serialized_name
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder collectionId(String collection_id_serialized_name) {
      this.collection_id_serialized_name = collection_id_serialized_name;
      return this;
    }

    /**
     * Set the query_id_serialized_name.
     *
     * @param query_id_serialized_name the query_id_serialized_name
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder queryId(String query_id_serialized_name) {
      this.query_id_serialized_name = query_id_serialized_name;
      return this;
    }

    /**
     * Set the example_id_serialized_name.
     *
     * @param example_id_serialized_name the example_id_serialized_name
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder exampleId(String example_id_serialized_name) {
      this.example_id_serialized_name = example_id_serialized_name;
      return this;
    }

    /**
     * Set the cross_reference_serialized_name.
     *
     * @param cross_reference_serialized_name the cross_reference_serialized_name
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder crossReference(String cross_reference_serialized_name) {
      this.cross_reference_serialized_name = cross_reference_serialized_name;
      return this;
    }

    /**
     * Set the relevance_serialized_name.
     *
     * @param relevance_serialized_name the relevance_serialized_name
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder relevance(Long relevance_serialized_name) {
      this.relevance_serialized_name = relevance_serialized_name;
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
     * @param fonts_serialized_name the new fonts_serialized_name
     */
    public void setFonts(final List<FontSetting> fonts_serialized_name) {
      this.fonts_serialized_name = fonts_serialized_name;
    }

    /**
     * Sets the styles_serialized_name.
     *
     * @param styles_serialized_name the new styles_serialized_name
     */
    public void setStyles(final List<WordStyle> styles_serialized_name) {
      this.styles_serialized_name = styles_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      WordHeadingDetection ret;
      if (jsonString.equals('null')) {
        ret = new WordHeadingDetection();
      }
      else {
        ret = (WordHeadingDetection) JSON.deserialize(jsonString, WordHeadingDetection.class);
      }

      // calling custom deserializer for fonts_serialized_name
      List<FontSetting> newFonts = new List<FontSetting>();
      List<FontSetting> deserializedFonts = ret.getFonts();
      if (deserializedFonts != null) {
        for (Integer i = 0; i < deserializedFonts.size(); i++) {
          FontSetting currentItem = ret.getFonts().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('fonts_serialized_name');
          FontSetting newItem = (FontSetting) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
          WordStyle newItem = (WordStyle) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))));
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
     * @param heading_serialized_name the new heading_serialized_name
     */
    public void setHeading(final WordHeadingDetection heading_serialized_name) {
      this.heading_serialized_name = heading_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      WordSettings ret;
      if (jsonString.equals('null')) {
        ret = new WordSettings();
      }
      else {
        ret = (WordSettings) JSON.deserialize(jsonString, WordSettings.class);
      }

      // calling custom deserializer for heading_serialized_name
      WordHeadingDetection newHeading = (WordHeadingDetection) new WordHeadingDetection().deserialize(JSON.serialize(ret.getHeading()), (Map<String, Object>) jsonMap.get('heading_serialized_name'));
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
     * @param level_serialized_name the new level_serialized_name
     */
    public void setLevel(final long level_serialized_name) {
      this.level_serialized_name = level_serialized_name;
    }

    /**
     * Sets the names_serialized_name.
     *
     * @param names_serialized_name the new names_serialized_name
     */
    public void setNames(final List<String> names_serialized_name) {
      this.names_serialized_name = names_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      WordStyle ret;
      if (jsonString.equals('null')) {
        ret = new WordStyle();
      }
      else {
        ret = (WordStyle) JSON.deserialize(jsonString, WordStyle.class);
      }

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
     * @param xpaths_serialized_name the new xpaths_serialized_name
     */
    public void setXpaths(final List<String> xpaths_serialized_name) {
      this.xpaths_serialized_name = xpaths_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
      if (jsonMap == null) {
        return null;
      }

      XPathPatterns ret;
      if (jsonString.equals('null')) {
        ret = new XPathPatterns();
      }
      else {
        ret = (XPathPatterns) JSON.deserialize(jsonString, XPathPatterns.class);
      }

      return ret;
    }
  }

}