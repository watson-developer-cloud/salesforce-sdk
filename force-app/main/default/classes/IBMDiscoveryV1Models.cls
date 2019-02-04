public class IBMDiscoveryV1Models {
  /**
   * The addDocument options.
   */
  public class AddDocumentOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private IBMWatsonFile file;
    private String filename;
    private String metadata;
    private String fileContentType;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the file.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50
     * megabytes is rejected.
     *
     * @return the file
     */
    public IBMWatsonFile file() {
      return file;
    }
 
    /**
     * Gets the filename.
     *
     * The filename for file.
     *
     * @return the filename
     */
    public String filename() {
      return filename;
    }
 
    /**
     * Gets the metadata.
     *
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata
     * that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1
     * MB are rejected.
     * Example:  ``` {
     *   "Creator": "Johnny Appleseed",
     *   "Subject": "Apples"
     * } ```.
     *
     * @return the metadata
     */
    public String metadata() {
      return metadata;
    }
 
    /**
     * Gets the fileContentType.
     *
     * The content type of file.
     *
     * @return the fileContentType
     */
    public String fileContentType() {
      return fileContentType;
    }

    private AddDocumentOptions(AddDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.isTrue(builder.file == null || builder.fileContentType != null, 'content type cannot be null if file is not null');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      fileContentType = builder.fileContentType;
      this.requestHeaders = builder.requestHeaders;
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
  public class AddDocumentOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private IBMWatsonFile file;
    private String filename;
    private String metadata;
    private String fileContentType;

    private AddDocumentOptionsBuilder(AddDocumentOptions addDocumentOptions) {
      environmentId = addDocumentOptions.environmentId;
      collectionId = addDocumentOptions.collectionId;
      file = addDocumentOptions.file;
      filename = addDocumentOptions.filename;
      metadata = addDocumentOptions.metadata;
      fileContentType = addDocumentOptions.fileContentType;
      this.requestHeaders.putAll(addDocumentOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder file(IBMWatsonFile file) {
      this.file = file;
      return this;
    }

    /**
     * Set the filename.
     *
     * @param filename the filename
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder filename(String filename) {
      this.filename = filename;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder metadata(String metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the fileContentType.
     *
     * @param fileContentType the fileContentType
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder fileContentType(String fileContentType) {
      this.fileContentType = fileContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The addTrainingData options.
   */
  public class AddTrainingDataOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String naturalLanguageQuery;
    private String filter;
    private List<TrainingExample> examples;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the naturalLanguageQuery.
     *
     * @return the naturalLanguageQuery
     */
    public String naturalLanguageQuery() {
      return naturalLanguageQuery;
    }
 
    /**
     * Gets the filter.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the examples.
     *
     * @return the examples
     */
    public List<TrainingExample> examples() {
      return examples;
    }

    private AddTrainingDataOptions(AddTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      naturalLanguageQuery = builder.naturalLanguageQuery;
      filter = builder.filter;
      examples = builder.examples;
      this.requestHeaders = builder.requestHeaders;
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
  public class AddTrainingDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String naturalLanguageQuery;
    private String filter;
    private List<TrainingExample> examples;

    private AddTrainingDataOptionsBuilder(AddTrainingDataOptions addTrainingDataOptions) {
      environmentId = addTrainingDataOptions.environmentId;
      collectionId = addTrainingDataOptions.collectionId;
      naturalLanguageQuery = addTrainingDataOptions.naturalLanguageQuery;
      filter = addTrainingDataOptions.filter;
      examples = addTrainingDataOptions.examples;
      this.requestHeaders.putAll(addTrainingDataOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Adds an examples to examples.
     *
     * @param examples the new examples
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder addExamples(TrainingExample examples) {
      IBMWatsonValidator.notNull(examples, 'examples cannot be null');
      if (this.examples == null) {
        this.examples = new List<TrainingExample>();
      }
      this.examples.add(examples);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.naturalLanguageQuery = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the examples.
     * Existing examples will be replaced.
     *
     * @param examples the examples
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder examples(List<TrainingExample> examples) {
      this.examples = examples;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
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
     * Gets the key.
     *
     * Key that matched the aggregation type.
     *
     * @return the key
     */
    @AuraEnabled
    public String getKey() {
      return key_serialized_name;
    }
 
    /**
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the aggregations.
     *
     * Aggregations returned in the case of chained aggregations.
     *
     * @return the aggregations
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }

    /**
     * Sets the key.
     *
     * @param key the new key
     */
    public void setKey(final String key) {
      this.key_serialized_name = key;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the aggregations.
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

      // calling custom deserializer for aggregations
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
   * A collection for storing documents.
   */
  public class Collection extends IBMWatsonResponseModel {
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
    private SourceStatus source_crawl_serialized_name;
 
    /**
     * Gets the collectionId.
     *
     * The unique identifier of the collection.
     *
     * @return the collectionId
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * The name of the collection.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the collection.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The creation date of the collection in the format yyyy-MM-dd'T'HH:mmcon:ss.SSS'Z'.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp of when the collection was last updated in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The status of the collection.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the configurationId.
     *
     * The unique identifier of the collection's configuration.
     *
     * @return the configurationId
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * The language of the documents stored in the collection. Permitted values include `en` (English), `de` (German),
     * and `es` (Spanish).
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the documentCounts.
     *
     * The object providing information about the documents in the collection. Present only when retrieving details of a
     * collection.
     *
     * @return the documentCounts
     */
    @AuraEnabled
    public DocumentCounts getDocumentCounts() {
      return document_counts_serialized_name;
    }
 
    /**
     * Gets the diskUsage.
     *
     * Summary of the disk usage statistics for this collection.
     *
     * @return the diskUsage
     */
    @AuraEnabled
    public CollectionDiskUsage getDiskUsage() {
      return disk_usage_serialized_name;
    }
 
    /**
     * Gets the trainingStatus.
     *
     * Provides information about the status of relevance training for collection.
     *
     * @return the trainingStatus
     */
    @AuraEnabled
    public TrainingStatus getTrainingStatus() {
      return training_status_serialized_name;
    }
 
    /**
     * Gets the sourceCrawl.
     *
     * Object containing source crawl status information.
     *
     * @return the sourceCrawl
     */
    @AuraEnabled
    public SourceStatus getSourceCrawl() {
      return source_crawl_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the configurationId.
     *
     * @param configurationId the new configurationId
     */
    public void setConfigurationId(final String configurationId) {
      this.configuration_id_serialized_name = configurationId;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the documentCounts.
     *
     * @param documentCounts the new documentCounts
     */
    public void setDocumentCounts(final DocumentCounts documentCounts) {
      this.document_counts_serialized_name = documentCounts;
    }

    /**
     * Sets the diskUsage.
     *
     * @param diskUsage the new diskUsage
     */
    public void setDiskUsage(final CollectionDiskUsage diskUsage) {
      this.disk_usage_serialized_name = diskUsage;
    }

    /**
     * Sets the trainingStatus.
     *
     * @param trainingStatus the new trainingStatus
     */
    public void setTrainingStatus(final TrainingStatus trainingStatus) {
      this.training_status_serialized_name = trainingStatus;
    }

    /**
     * Sets the sourceCrawl.
     *
     * @param sourceCrawl the new sourceCrawl
     */
    public void setSourceCrawl(final SourceStatus sourceCrawl) {
      this.source_crawl_serialized_name = sourceCrawl;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Map<String, Object> trainingStatus = (Map<String, Object>) jsonMap.remove('training_status_serialized_name');
      Collection ret = (Collection) super.deserialize(JSON.serialize(jsonMap), jsonMap, classType);

      // calling custom deserializer for documentCounts
      DocumentCounts newDocumentCounts = (DocumentCounts) new DocumentCounts().deserialize(JSON.serialize(ret.getDocumentCounts()), (Map<String, Object>) jsonMap.get('document_counts_serialized_name'), DocumentCounts.class);
      ret.setDocumentCounts(newDocumentCounts);

      // calling custom deserializer for diskUsage
      CollectionDiskUsage newDiskUsage = (CollectionDiskUsage) new CollectionDiskUsage().deserialize(JSON.serialize(ret.getDiskUsage()), (Map<String, Object>) jsonMap.get('disk_usage_serialized_name'), CollectionDiskUsage.class);
      ret.setDiskUsage(newDiskUsage);

      // calling custom deserializer for trainingStatus
      TrainingStatus newTrainingStatus = (TrainingStatus) new TrainingStatus().deserialize(JSON.serialize(trainingStatus), trainingStatus, TrainingStatus.class);
      ret.setTrainingStatus(newTrainingStatus);

      // calling custom deserializer for sourceCrawl
      SourceStatus newSourceCrawl = (SourceStatus) new SourceStatus().deserialize(JSON.serialize(ret.getSourceCrawl()), (Map<String, Object>) jsonMap.get('source_crawl_serialized_name'), SourceStatus.class);
      ret.setSourceCrawl(newSourceCrawl);

      return ret;
    }
  }

  /**
   * Summary of the disk usage statistics for this collection.
   */
  public class CollectionDiskUsage extends IBMWatsonGenericModel {
    private Long used_bytes_serialized_name;
 
    /**
     * Gets the usedBytes.
     *
     * Number of bytes used by the collection.
     *
     * @return the usedBytes
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
     * Gets the available.
     *
     * Number of active collections in the environment.
     *
     * @return the available
     */
    @AuraEnabled
    public Long getAvailable() {
      return available_serialized_name;
    }
 
    /**
     * Gets the maximumAllowed.
     *
     * Total number of collections allowed in the environment.
     *
     * @return the maximumAllowed
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
  public class Configuration extends IBMWatsonResponseModel {
    private String configuration_id_serialized_name;
    private String name_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String description_serialized_name;
    private Conversions conversions_serialized_name;
    private List<Enrichment> enrichments_serialized_name;
    private List<NormalizationOperation> normalizations_serialized_name;
    private Source source_serialized_name;
 
    /**
     * Gets the configurationId.
     *
     * The unique identifier of the configuration.
     *
     * @return the configurationId
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * The name of the configuration.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The creation date of the configuration in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp of when the configuration was last updated in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the configuration, if available.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the conversions.
     *
     * Document conversion settings.
     *
     * @return the conversions
     */
    @AuraEnabled
    public Conversions getConversions() {
      return conversions_serialized_name;
    }
 
    /**
     * Gets the enrichments.
     *
     * An array of document enrichment settings for the configuration.
     *
     * @return the enrichments
     */
    @AuraEnabled
    public List<Enrichment> getEnrichments() {
      return enrichments_serialized_name;
    }
 
    /**
     * Gets the normalizations.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are
     * executed in the order that they appear in the array.
     *
     * @return the normalizations
     */
    @AuraEnabled
    public List<NormalizationOperation> getNormalizations() {
      return normalizations_serialized_name;
    }
 
    /**
     * Gets the source.
     *
     * Object containing source parameters for the configuration.
     *
     * @return the source
     */
    @AuraEnabled
    public Source getSource() {
      return source_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the conversions.
     *
     * @param conversions the new conversions
     */
    public void setConversions(final Conversions conversions) {
      this.conversions_serialized_name = conversions;
    }

    /**
     * Sets the enrichments.
     *
     * @param enrichments the new enrichments
     */
    public void setEnrichments(final List<Enrichment> enrichments) {
      this.enrichments_serialized_name = enrichments;
    }

    /**
     * Sets the normalizations.
     *
     * @param normalizations the new normalizations
     */
    public void setNormalizations(final List<NormalizationOperation> normalizations) {
      this.normalizations_serialized_name = normalizations;
    }

    /**
     * Sets the source.
     *
     * @param source the new source
     */
    public void setSource(final Source source) {
      this.source_serialized_name = source;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Configuration ret = (Configuration) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for conversions
      Conversions newConversions = (Conversions) new Conversions().deserialize(JSON.serialize(ret.getConversions()), (Map<String, Object>) jsonMap.get('conversions_serialized_name'), Conversions.class);
      ret.setConversions(newConversions);

      // calling custom deserializer for enrichments
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

      // calling custom deserializer for normalizations
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

      // calling custom deserializer for source
      Source newSource = (Source) new Source().deserialize(JSON.serialize(ret.getSource()), (Map<String, Object>) jsonMap.get('source_serialized_name'), Source.class);
      ret.setSource(newSource);

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
    private SegmentSettings segment_serialized_name;
    private List<NormalizationOperation> json_normalizations_serialized_name;
 
    /**
     * Gets the pdf.
     *
     * A list of PDF conversion settings.
     *
     * @return the pdf
     */
    @AuraEnabled
    public PdfSettings getPdf() {
      return pdf_serialized_name;
    }
 
    /**
     * Gets the word.
     *
     * A list of Word conversion settings.
     *
     * @return the word
     */
    @AuraEnabled
    public WordSettings getWord() {
      return word_serialized_name;
    }
 
    /**
     * Gets the html.
     *
     * A list of HTML conversion settings.
     *
     * @return the html
     */
    @AuraEnabled
    public HtmlSettings getHtml() {
      return html_serialized_name;
    }
 
    /**
     * Gets the segment.
     *
     * A list of Document Segmentation settings.
     *
     * @return the segment
     */
    @AuraEnabled
    public SegmentSettings getSegment() {
      return segment_serialized_name;
    }
 
    /**
     * Gets the jsonNormalizations.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are
     * executed in the order that they appear in the array.
     *
     * @return the jsonNormalizations
     */
    @AuraEnabled
    public List<NormalizationOperation> getJsonNormalizations() {
      return json_normalizations_serialized_name;
    }

    /**
     * Sets the pdf.
     *
     * @param pdf the new pdf
     */
    public void setPdf(final PdfSettings pdf) {
      this.pdf_serialized_name = pdf;
    }

    /**
     * Sets the word.
     *
     * @param word the new word
     */
    public void setWord(final WordSettings word) {
      this.word_serialized_name = word;
    }

    /**
     * Sets the html.
     *
     * @param html the new html
     */
    public void setHtml(final HtmlSettings html) {
      this.html_serialized_name = html;
    }

    /**
     * Sets the segment.
     *
     * @param segment the new segment
     */
    public void setSegment(final SegmentSettings segment) {
      this.segment_serialized_name = segment;
    }

    /**
     * Sets the jsonNormalizations.
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

      // calling custom deserializer for pdf
      PdfSettings newPdf = (PdfSettings) new PdfSettings().deserialize(JSON.serialize(ret.getPdf()), (Map<String, Object>) jsonMap.get('pdf_serialized_name'), PdfSettings.class);
      ret.setPdf(newPdf);

      // calling custom deserializer for word
      WordSettings newWord = (WordSettings) new WordSettings().deserialize(JSON.serialize(ret.getWord()), (Map<String, Object>) jsonMap.get('word_serialized_name'), WordSettings.class);
      ret.setWord(newWord);

      // calling custom deserializer for html
      HtmlSettings newHtml = (HtmlSettings) new HtmlSettings().deserialize(JSON.serialize(ret.getHtml()), (Map<String, Object>) jsonMap.get('html_serialized_name'), HtmlSettings.class);
      ret.setHtml(newHtml);

      // calling custom deserializer for segment
      SegmentSettings newSegment = (SegmentSettings) new SegmentSettings().deserialize(JSON.serialize(ret.getSegment()), (Map<String, Object>) jsonMap.get('segment_serialized_name'), SegmentSettings.class);
      ret.setSegment(newSegment);

      // calling custom deserializer for jsonNormalizations
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
  public class CreateCollectionOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
    private String description;
    private String configurationId;
    private String language;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the name.
     *
     * The name of the collection to be created.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * A description of the collection.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the configurationId.
     *
     * The ID of the configuration in which the collection is to be created.
     *
     * @return the configurationId
     */
    public String configurationId() {
      return configurationId;
    }
 
    /**
     * Gets the language.
     *
     * The language of the documents stored in the collection, in the form of an ISO 639-1 language code.
     *
     * @return the language
     */
    public String language() {
      return language;
    }

    private CreateCollectionOptions(CreateCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notNull(builder.name, 'name cannot be null');
      environmentId = builder.environmentId;
      name = builder.name;
      description = builder.description;
      configurationId = builder.configurationId;
      language = builder.language;
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateCollectionOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
    private String description;
    private String configurationId;
    private String language;

    private CreateCollectionOptionsBuilder(CreateCollectionOptions createCollectionOptions) {
      environmentId = createCollectionOptions.environmentId;
      name = createCollectionOptions.name;
      description = createCollectionOptions.description;
      configurationId = createCollectionOptions.configurationId;
      language = createCollectionOptions.language;
      this.requestHeaders.putAll(createCollectionOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.name = name;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the configurationId.
     *
     * @param configurationId the configurationId
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder configurationId(String configurationId) {
      this.configurationId = configurationId;
      return this;
    }

    /**
     * Set the language.
     *
     * @param language the language
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createConfiguration options.
   */
  public class CreateConfigurationOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    private Source source;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the name.
     *
     * The name of the configuration.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the configuration, if available.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the conversions.
     *
     * Document conversion settings.
     *
     * @return the conversions
     */
    public Conversions conversions() {
      return conversions;
    }
 
    /**
     * Gets the enrichments.
     *
     * An array of document enrichment settings for the configuration.
     *
     * @return the enrichments
     */
    public List<Enrichment> enrichments() {
      return enrichments;
    }
 
    /**
     * Gets the normalizations.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are
     * executed in the order that they appear in the array.
     *
     * @return the normalizations
     */
    public List<NormalizationOperation> normalizations() {
      return normalizations;
    }
 
    /**
     * Gets the source.
     *
     * Object containing source parameters for the configuration.
     *
     * @return the source
     */
    public Source source() {
      return source;
    }

    private CreateConfigurationOptions(CreateConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      name = builder.name;
      description = builder.description;
      conversions = builder.conversions;
      enrichments = builder.enrichments;
      normalizations = builder.normalizations;
      source = builder.source;
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateConfigurationOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    private Source source;

    private CreateConfigurationOptionsBuilder(CreateConfigurationOptions createConfigurationOptions) {
      environmentId = createConfigurationOptions.environmentId;
      name = createConfigurationOptions.name;
      description = createConfigurationOptions.description;
      conversions = createConfigurationOptions.conversions;
      enrichments = createConfigurationOptions.enrichments;
      normalizations = createConfigurationOptions.normalizations;
      source = createConfigurationOptions.source;
      this.requestHeaders.putAll(createConfigurationOptions.requestHeaders());
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
      this.environmentId = environmentId;
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
     * Adds an enrichments to enrichments.
     *
     * @param enrichments the new enrichments
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addEnrichments(Enrichment enrichments) {
      IBMWatsonValidator.notNull(enrichments, 'enrichments cannot be null');
      if (this.enrichments == null) {
        this.enrichments = new List<Enrichment>();
      }
      this.enrichments.add(enrichments);
      return this;
    }

    /**
     * Adds an normalizations to normalizations.
     *
     * @param normalizations the new normalizations
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addNormalizations(NormalizationOperation normalizations) {
      IBMWatsonValidator.notNull(normalizations, 'normalizations cannot be null');
      if (this.normalizations == null) {
        this.normalizations = new List<NormalizationOperation>();
      }
      this.normalizations.add(normalizations);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the conversions.
     *
     * @param conversions the conversions
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder conversions(Conversions conversions) {
      this.conversions = conversions;
      return this;
    }

    /**
     * Set the enrichments.
     * Existing enrichments will be replaced.
     *
     * @param enrichments the enrichments
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder enrichments(List<Enrichment> enrichments) {
      this.enrichments = enrichments;
      return this;
    }

    /**
     * Set the normalizations.
     * Existing normalizations will be replaced.
     *
     * @param normalizations the normalizations
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder normalizations(List<NormalizationOperation> normalizations) {
      this.normalizations = normalizations;
      return this;
    }

    /**
     * Set the source.
     *
     * @param source the source
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder source(Source source) {
      this.source = source;
      return this;
    }

    /**
     * Set the configuration.
     *
     * @param configuration the configuration
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder configuration(Configuration configuration) {
      this.name = configuration.getName();
      this.description = configuration.getDescription();
      this.conversions = configuration.getConversions();
      this.enrichments = configuration.getEnrichments();
      this.normalizations = configuration.getNormalizations();
      this.source = configuration.getSource();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createCredentials options.
   */
  public class CreateCredentialsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String sourceType;
    private CredentialDetails credentialDetails;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the sourceType.
     *
     * The source that this credentials object connects to.
     * -  `box` indicates the credentials are used to connect an instance of Enterprise Box.
     * -  `salesforce` indicates the credentials are used to connect to Salesforce.
     * -  `sharepoint` indicates the credentials are used to connect to Microsoft SharePoint Online.
     * -  `web_crawl` indicates the credentials are used to perform a web crawl.
     *
     * @return the sourceType
     */
    public String sourceType() {
      return sourceType;
    }
 
    /**
     * Gets the credentialDetails.
     *
     * Object containing details of the stored credentials.
     *
     * Obtain credentials for your source from the administrator of the source.
     *
     * @return the credentialDetails
     */
    public CredentialDetails credentialDetails() {
      return credentialDetails;
    }

    private CreateCredentialsOptions(CreateCredentialsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      sourceType = builder.sourceType;
      credentialDetails = builder.credentialDetails;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateCredentialsOptions builder
     */
    public CreateCredentialsOptionsBuilder newBuilder() {
      return new CreateCredentialsOptionsBuilder(this);
    }

  }

  /**
   * CreateCredentialsOptions Builder.
   */
  public class CreateCredentialsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String sourceType;
    private CredentialDetails credentialDetails;

    private CreateCredentialsOptionsBuilder(CreateCredentialsOptions createCredentialsOptions) {
      environmentId = createCredentialsOptions.environmentId;
      sourceType = createCredentialsOptions.sourceType;
      credentialDetails = createCredentialsOptions.credentialDetails;
      this.requestHeaders.putAll(createCredentialsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCredentialsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public CreateCredentialsOptionsBuilder(String environmentId) {
      this.environmentId = environmentId;
    }

    /**
     * Builds a CreateCredentialsOptions.
     *
     * @return the createCredentialsOptions
     */
    public CreateCredentialsOptions build() {
      return new CreateCredentialsOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateCredentialsOptions builder
     */
    public CreateCredentialsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the sourceType.
     *
     * @param sourceType the sourceType
     * @return the CreateCredentialsOptions builder
     */
    public CreateCredentialsOptionsBuilder sourceType(String sourceType) {
      this.sourceType = sourceType;
      return this;
    }

    /**
     * Set the credentialDetails.
     *
     * @param credentialDetails the credentialDetails
     * @return the CreateCredentialsOptions builder
     */
    public CreateCredentialsOptionsBuilder credentialDetails(CredentialDetails credentialDetails) {
      this.credentialDetails = credentialDetails;
      return this;
    }

    /**
     * Set the credentials.
     *
     * @param credentials the credentials
     * @return the CreateCredentialsOptions builder
     */
    public CreateCredentialsOptionsBuilder credentials(Credentials credentials) {
      this.sourceType = credentials.getSourceType();
      this.credentialDetails = credentials.getCredentialDetails();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateCredentialsOptions builder
     */
    public CreateCredentialsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createEnvironment options.
   */
  public class CreateEnvironmentOptions extends IBMWatsonOptionsModel {
    private String name;
    private String description;
    private String size;
 
    /**
     * Gets the name.
     *
     * Name that identifies the environment.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * Description of the environment.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the size.
     *
     * Size of the environment. In the Lite plan the default and only accepted value is `LT`, in all other plans the
     * default is `S`.
     *
     * @return the size
     */
    public String size() {
      return size;
    }

    private CreateEnvironmentOptions(CreateEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name, 'name cannot be null');
      name = builder.name;
      description = builder.description;
      size = builder.size;
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateEnvironmentOptionsBuilder extends IBMWatsonOptionsModel {
    private String name;
    private String description;
    private String size;

    private CreateEnvironmentOptionsBuilder(CreateEnvironmentOptions createEnvironmentOptions) {
      name = createEnvironmentOptions.name;
      description = createEnvironmentOptions.description;
      size = createEnvironmentOptions.size;
      this.requestHeaders.putAll(createEnvironmentOptions.requestHeaders());
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
      this.name = name;
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
     * Set the name.
     *
     * @param name the name
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the size.
     *
     * @param size the size
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder size(String size) {
      this.size = size;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateEnvironmentOptions builder
     */
    public CreateEnvironmentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createEvent options.
   */
  public class CreateEventOptions extends IBMWatsonOptionsModel {
    private String xtype;
    private EventData data;
 
    /**
     * Gets the xtype.
     *
     * The event type to be created.
     *
     * @return the xtype
     */
    public String xtype() {
      return xtype;
    }
 
    /**
     * Gets the data.
     *
     * Query event data object.
     *
     * @return the data
     */
    public EventData data() {
      return data;
    }

    private CreateEventOptions(CreateEventOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.xtype, 'xtype cannot be null');
      IBMWatsonValidator.notNull(builder.data, 'data cannot be null');
      xtype = builder.xtype;
      data = builder.data;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateEventOptions builder
     */
    public CreateEventOptionsBuilder newBuilder() {
      return new CreateEventOptionsBuilder(this);
    }

  }

  /**
   * CreateEventOptions Builder.
   */
  public class CreateEventOptionsBuilder extends IBMWatsonOptionsModel {
    private String xtype;
    private EventData data;

    private CreateEventOptionsBuilder(CreateEventOptions createEventOptions) {
      xtype = createEventOptions.xtype;
      data = createEventOptions.data;
      this.requestHeaders.putAll(createEventOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEventOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param xtype the xtype
     * @param data the data
     */
    public CreateEventOptionsBuilder(String xtype, EventData data) {
      this.xtype = xtype;
      this.data = data;
    }

    /**
     * Builds a CreateEventOptions.
     *
     * @return the createEventOptions
     */
    public CreateEventOptions build() {
      return new CreateEventOptions(this);
    }

    /**
     * Set the xtype.
     *
     * @param xtype the xtype
     * @return the CreateEventOptions builder
     */
    public CreateEventOptionsBuilder xtype(String xtype) {
      this.xtype = xtype;
      return this;
    }

    /**
     * Set the data.
     *
     * @param data the data
     * @return the CreateEventOptions builder
     */
    public CreateEventOptionsBuilder data(EventData data) {
      this.data = data;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateEventOptions builder
     */
    public CreateEventOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * An object defining the event being created.
   */
  public class CreateEventResponse extends IBMWatsonResponseModel {
    private String type_serialized_name;
    private EventData data_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * The event type that was created.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the data.
     *
     * Query event data object.
     *
     * @return the data
     */
    @AuraEnabled
    public EventData getData() {
      return data_serialized_name;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the data.
     *
     * @param data the new data
     */
    public void setData(final EventData data) {
      this.data_serialized_name = data;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CreateEventResponse ret = (CreateEventResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for data
      EventData newData = (EventData) new EventData().deserialize(JSON.serialize(ret.getData()), (Map<String, Object>) jsonMap.get('data_serialized_name'), EventData.class);
      ret.setData(newData);

      return ret;
    }
  }

  /**
   * The createExpansions options.
   */
  public class CreateExpansionsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private List<Expansion> expansions;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the expansions.
     *
     * An array of query expansion definitions.
     *
     *  Each object in the **expansions** array represents a term or set of terms that will be expanded into other
     * terms. Each expansion object can be configured as bidirectional or unidirectional. Bidirectional means that all
     * terms are expanded to all other terms in the object. Unidirectional means that a set list of terms can be
     * expanded into a second list of terms.
     *
     *  To create a bi-directional expansion specify an **expanded_terms** array. When found in a query, all items in
     * the **expanded_terms** array are then expanded to the other items in the same array.
     *
     *  To create a uni-directional expansion, specify both an array of **input_terms** and an array of
     * **expanded_terms**. When items in the **input_terms** array are present in a query, they are expanded using the
     * items listed in the **expanded_terms** array.
     *
     * @return the expansions
     */
    public List<Expansion> expansions() {
      return expansions;
    }

    private CreateExpansionsOptions(CreateExpansionsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      expansions = builder.expansions;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateExpansionsOptions builder
     */
    public CreateExpansionsOptionsBuilder newBuilder() {
      return new CreateExpansionsOptionsBuilder(this);
    }

  }

  /**
   * CreateExpansionsOptions Builder.
   */
  public class CreateExpansionsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private List<Expansion> expansions;

    private CreateExpansionsOptionsBuilder(CreateExpansionsOptions createExpansionsOptions) {
      environmentId = createExpansionsOptions.environmentId;
      collectionId = createExpansionsOptions.collectionId;
      expansions = createExpansionsOptions.expansions;
      this.requestHeaders.putAll(createExpansionsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateExpansionsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public CreateExpansionsOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a CreateExpansionsOptions.
     *
     * @return the createExpansionsOptions
     */
    public CreateExpansionsOptions build() {
      return new CreateExpansionsOptions(this);
    }

    /**
     * Adds an expansions to expansions.
     *
     * @param expansions the new expansions
     * @return the CreateExpansionsOptions builder
     */
    public CreateExpansionsOptionsBuilder addExpansions(Expansion expansions) {
      IBMWatsonValidator.notNull(expansions, 'expansions cannot be null');
      if (this.expansions == null) {
        this.expansions = new List<Expansion>();
      }
      this.expansions.add(expansions);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateExpansionsOptions builder
     */
    public CreateExpansionsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the CreateExpansionsOptions builder
     */
    public CreateExpansionsOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the expansions.
     * Existing expansions will be replaced.
     *
     * @param expansions the expansions
     * @return the CreateExpansionsOptions builder
     */
    public CreateExpansionsOptionsBuilder expansions(List<Expansion> expansions) {
      this.expansions = expansions;
      return this;
    }

    /**
     * Set the expansions.
     *
     * @param expansions the expansions
     * @return the CreateExpansionsOptions builder
     */
    public CreateExpansionsOptionsBuilder expansions(Expansions expansions) {
      this.expansions = expansions.getExpansions();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateExpansionsOptions builder
     */
    public CreateExpansionsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createGateway options.
   */
  public class CreateGatewayOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the name.
     *
     * User-defined name.
     *
     * @return the name
     */
    public String name() {
      return name;
    }

    private CreateGatewayOptions(CreateGatewayOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      name = builder.name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateGatewayOptions builder
     */
    public CreateGatewayOptionsBuilder newBuilder() {
      return new CreateGatewayOptionsBuilder(this);
    }

  }

  /**
   * CreateGatewayOptions Builder.
   */
  public class CreateGatewayOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;

    private CreateGatewayOptionsBuilder(CreateGatewayOptions createGatewayOptions) {
      environmentId = createGatewayOptions.environmentId;
      name = createGatewayOptions.name;
      this.requestHeaders.putAll(createGatewayOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateGatewayOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public CreateGatewayOptionsBuilder(String environmentId) {
      this.environmentId = environmentId;
    }

    /**
     * Builds a CreateGatewayOptions.
     *
     * @return the createGatewayOptions
     */
    public CreateGatewayOptions build() {
      return new CreateGatewayOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateGatewayOptions builder
     */
    public CreateGatewayOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the CreateGatewayOptions builder
     */
    public CreateGatewayOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateGatewayOptions builder
     */
    public CreateGatewayOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createStopwordList options.
   */
  public class CreateStopwordListOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private IBMWatsonFile stopwordFile;
    private String stopwordFilename;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the stopwordFile.
     *
     * The content of the stopword list to ingest.
     *
     * @return the stopwordFile
     */
    public IBMWatsonFile stopwordFile() {
      return stopwordFile;
    }
 
    /**
     * Gets the stopwordFilename.
     *
     * The filename for stopwordFile.
     *
     * @return the stopwordFilename
     */
    public String stopwordFilename() {
      return stopwordFilename;
    }

    private CreateStopwordListOptions(CreateStopwordListOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notNull(builder.stopwordFile, 'stopwordFile cannot be null');
      IBMWatsonValidator.notNull(builder.stopwordFilename, 'stopwordFilename cannot be null');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      stopwordFile = builder.stopwordFile;
      stopwordFilename = builder.stopwordFilename;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateStopwordListOptions builder
     */
    public CreateStopwordListOptionsBuilder newBuilder() {
      return new CreateStopwordListOptionsBuilder(this);
    }

  }

  /**
   * CreateStopwordListOptions Builder.
   */
  public class CreateStopwordListOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private IBMWatsonFile stopwordFile;
    private String stopwordFilename;

    private CreateStopwordListOptionsBuilder(CreateStopwordListOptions createStopwordListOptions) {
      environmentId = createStopwordListOptions.environmentId;
      collectionId = createStopwordListOptions.collectionId;
      stopwordFile = createStopwordListOptions.stopwordFile;
      stopwordFilename = createStopwordListOptions.stopwordFilename;
      this.requestHeaders.putAll(createStopwordListOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateStopwordListOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     * @param stopwordFile the stopwordFile
     * @param stopwordFilename the stopwordFilename
     */
    public CreateStopwordListOptionsBuilder(String environmentId, String collectionId, IBMWatsonFile stopwordFile, String stopwordFilename) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.stopwordFile = stopwordFile;
      this.stopwordFilename = stopwordFilename;
    }

    /**
     * Builds a CreateStopwordListOptions.
     *
     * @return the createStopwordListOptions
     */
    public CreateStopwordListOptions build() {
      return new CreateStopwordListOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateStopwordListOptions builder
     */
    public CreateStopwordListOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the CreateStopwordListOptions builder
     */
    public CreateStopwordListOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the stopwordFile.
     *
     * @param stopwordFile the stopwordFile
     * @return the CreateStopwordListOptions builder
     */
    public CreateStopwordListOptionsBuilder stopwordFile(IBMWatsonFile stopwordFile) {
      this.stopwordFile = stopwordFile;
      return this;
    }

    /**
     * Set the stopwordFilename.
     *
     * @param stopwordFilename the stopwordFilename
     * @return the CreateStopwordListOptions builder
     */
    public CreateStopwordListOptionsBuilder stopwordFilename(String stopwordFilename) {
      this.stopwordFilename = stopwordFilename;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateStopwordListOptions builder
     */
    public CreateStopwordListOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createTokenizationDictionary options.
   */
  public class CreateTokenizationDictionaryOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private List<TokenDictRule> tokenizationRules;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the tokenizationRules.
     *
     * An array of tokenization rules. Each rule contains, the original `text` string, component `tokens`, any alternate
     * character set `readings`, and which `part_of_speech` the text is from.
     *
     * @return the tokenizationRules
     */
    public List<TokenDictRule> tokenizationRules() {
      return tokenizationRules;
    }

    private CreateTokenizationDictionaryOptions(CreateTokenizationDictionaryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      tokenizationRules = builder.tokenizationRules;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateTokenizationDictionaryOptions builder
     */
    public CreateTokenizationDictionaryOptionsBuilder newBuilder() {
      return new CreateTokenizationDictionaryOptionsBuilder(this);
    }

  }

  /**
   * CreateTokenizationDictionaryOptions Builder.
   */
  public class CreateTokenizationDictionaryOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private List<TokenDictRule> tokenizationRules;

    private CreateTokenizationDictionaryOptionsBuilder(CreateTokenizationDictionaryOptions createTokenizationDictionaryOptions) {
      environmentId = createTokenizationDictionaryOptions.environmentId;
      collectionId = createTokenizationDictionaryOptions.collectionId;
      tokenizationRules = createTokenizationDictionaryOptions.tokenizationRules;
      this.requestHeaders.putAll(createTokenizationDictionaryOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateTokenizationDictionaryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public CreateTokenizationDictionaryOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a CreateTokenizationDictionaryOptions.
     *
     * @return the createTokenizationDictionaryOptions
     */
    public CreateTokenizationDictionaryOptions build() {
      return new CreateTokenizationDictionaryOptions(this);
    }

    /**
     * Adds an tokenizationRules to tokenizationRules.
     *
     * @param tokenizationRules the new tokenizationRules
     * @return the CreateTokenizationDictionaryOptions builder
     */
    public CreateTokenizationDictionaryOptionsBuilder addTokenizationRules(TokenDictRule tokenizationRules) {
      IBMWatsonValidator.notNull(tokenizationRules, 'tokenizationRules cannot be null');
      if (this.tokenizationRules == null) {
        this.tokenizationRules = new List<TokenDictRule>();
      }
      this.tokenizationRules.add(tokenizationRules);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateTokenizationDictionaryOptions builder
     */
    public CreateTokenizationDictionaryOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the CreateTokenizationDictionaryOptions builder
     */
    public CreateTokenizationDictionaryOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the tokenizationRules.
     * Existing tokenizationRules will be replaced.
     *
     * @param tokenizationRules the tokenizationRules
     * @return the CreateTokenizationDictionaryOptions builder
     */
    public CreateTokenizationDictionaryOptionsBuilder tokenizationRules(List<TokenDictRule> tokenizationRules) {
      this.tokenizationRules = tokenizationRules;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateTokenizationDictionaryOptions builder
     */
    public CreateTokenizationDictionaryOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createTrainingExample options.
   */
  public class CreateTrainingExampleOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String documentId;
    private String crossReference;
    private Long relevance;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the queryId.
     *
     * The ID of the query used for training.
     *
     * @return the queryId
     */
    public String queryId() {
      return queryId;
    }
 
    /**
     * Gets the documentId.
     *
     * @return the documentId
     */
    public String documentId() {
      return documentId;
    }
 
    /**
     * Gets the crossReference.
     *
     * @return the crossReference
     */
    public String crossReference() {
      return crossReference;
    }
 
    /**
     * Gets the relevance.
     *
     * @return the relevance
     */
    public Long relevance() {
      return relevance;
    }

    private CreateTrainingExampleOptions(CreateTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.queryId, 'queryId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      queryId = builder.queryId;
      documentId = builder.documentId;
      crossReference = builder.crossReference;
      relevance = builder.relevance;
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateTrainingExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String documentId;
    private String crossReference;
    private Long relevance;

    private CreateTrainingExampleOptionsBuilder(CreateTrainingExampleOptions createTrainingExampleOptions) {
      environmentId = createTrainingExampleOptions.environmentId;
      collectionId = createTrainingExampleOptions.collectionId;
      queryId = createTrainingExampleOptions.queryId;
      documentId = createTrainingExampleOptions.documentId;
      crossReference = createTrainingExampleOptions.crossReference;
      relevance = createTrainingExampleOptions.relevance;
      this.requestHeaders.putAll(createTrainingExampleOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.queryId = queryId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the queryId.
     *
     * @param queryId the queryId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder queryId(String queryId) {
      this.queryId = queryId;
      return this;
    }

    /**
     * Set the documentId.
     *
     * @param documentId the documentId
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder documentId(String documentId) {
      this.documentId = documentId;
      return this;
    }

    /**
     * Set the crossReference.
     *
     * @param crossReference the crossReference
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder crossReference(String crossReference) {
      this.crossReference = crossReference;
      return this;
    }

    /**
     * Set the relevance.
     *
     * @param relevance the relevance
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder relevance(Long relevance) {
      this.relevance = relevance;
      return this;
    }

    /**
     * Set the trainingExample.
     *
     * @param trainingExample the trainingExample
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder trainingExample(TrainingExample trainingExample) {
      this.documentId = trainingExample.getDocumentId();
      this.crossReference = trainingExample.getCrossReference();
      this.relevance = trainingExample.getRelevance();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Object containing details of the stored credentials.
   *
   * Obtain credentials for your source from the administrator of the source.
   */
  public class CredentialDetails extends IBMWatsonGenericModel {
    private String credential_type_serialized_name;
    private String client_id_serialized_name;
    private String enterprise_id_serialized_name;
    private String url_serialized_name;
    private String username_serialized_name;
    private String organization_url_serialized_name;
    private String site_collection_path_serialized_name;
    private String client_secret_serialized_name;
    private String public_key_id_serialized_name;
    private String private_key_serialized_name;
    private String passphrase_serialized_name;
    private String password_serialized_name;
    private String gateway_id_serialized_name;
    private String source_version_serialized_name;
    private String web_application_url_serialized_name;
    private String domain_serialized_name;
 
    /**
     * Gets the credentialType.
     *
     * The authentication method for this credentials definition. The  **credential_type** specified must be supported
     * by the **source_type**. The following combinations are possible:
     *
     * -  `"source_type": "box"` - valid `credential_type`s: `oauth2`
     * -  `"source_type": "salesforce"` - valid `credential_type`s: `username_password`
     * -  `"source_type": "sharepoint"` - valid `credential_type`s: `saml` with **source_version** of `online`, or
     * `ntml_v1` with **source_version** of `2016`
     * -  `"source_type": "web_crawl"` - valid `credential_type`s: `noauth` or `basic`.
     *
     * @return the credentialType
     */
    @AuraEnabled
    public String getCredentialType() {
      return credential_type_serialized_name;
    }
 
    /**
     * Gets the clientId.
     *
     * The **client_id** of the source that these credentials connect to. Only valid, and required, with a
     * **credential_type** of `oauth2`.
     *
     * @return the clientId
     */
    @AuraEnabled
    public String getClientId() {
      return client_id_serialized_name;
    }
 
    /**
     * Gets the enterpriseId.
     *
     * The **enterprise_id** of the Box site that these credentials connect to. Only valid, and required, with a
     * **source_type** of `box`.
     *
     * @return the enterpriseId
     */
    @AuraEnabled
    public String getEnterpriseId() {
      return enterprise_id_serialized_name;
    }
 
    /**
     * Gets the url.
     *
     * The **url** of the source that these credentials connect to. Only valid, and required, with a **credential_type**
     * of `username_password`, `noauth`, and `basic`.
     *
     * @return the url
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
 
    /**
     * Gets the username.
     *
     * The **username** of the source that these credentials connect to. Only valid, and required, with a
     * **credential_type** of `saml`, `username_password`, `basic`, or `ntml_v1`.
     *
     * @return the username
     */
    @AuraEnabled
    public String getUsername() {
      return username_serialized_name;
    }
 
    /**
     * Gets the organizationUrl.
     *
     * The **organization_url** of the source that these credentials connect to. Only valid, and required, with a
     * **credential_type** of `saml`.
     *
     * @return the organizationUrl
     */
    @AuraEnabled
    public String getOrganizationUrl() {
      return organization_url_serialized_name;
    }
 
    /**
     * Gets the siteCollectionPath.
     *
     * The **site_collection.path** of the source that these credentials connect to. Only valid, and required, with a
     * **source_type** of `sharepoint`.
     *
     * @return the siteCollectionPath
     */
    @AuraEnabled
    public String getSiteCollectionPath() {
      return site_collection_path_serialized_name;
    }
 
    /**
     * Gets the clientSecret.
     *
     * The **client_secret** of the source that these credentials connect to. Only valid, and required, with a
     * **credential_type** of `oauth2`. This value is never returned and is only used when creating or modifying
     * **credentials**.
     *
     * @return the clientSecret
     */
    @AuraEnabled
    public String getClientSecret() {
      return client_secret_serialized_name;
    }
 
    /**
     * Gets the publicKeyId.
     *
     * The **public_key_id** of the source that these credentials connect to. Only valid, and required, with a
     * **credential_type** of `oauth2`. This value is never returned and is only used when creating or modifying
     * **credentials**.
     *
     * @return the publicKeyId
     */
    @AuraEnabled
    public String getPublicKeyId() {
      return public_key_id_serialized_name;
    }
 
    /**
     * Gets the privateKey.
     *
     * The **private_key** of the source that these credentials connect to. Only valid, and required, with a
     * **credential_type** of `oauth2`. This value is never returned and is only used when creating or modifying
     * **credentials**.
     *
     * @return the privateKey
     */
    @AuraEnabled
    public String getPrivateKey() {
      return private_key_serialized_name;
    }
 
    /**
     * Gets the passphrase.
     *
     * The **passphrase** of the source that these credentials connect to. Only valid, and required, with a
     * **credential_type** of `oauth2`. This value is never returned and is only used when creating or modifying
     * **credentials**.
     *
     * @return the passphrase
     */
    @AuraEnabled
    public String getPassphrase() {
      return passphrase_serialized_name;
    }
 
    /**
     * Gets the password.
     *
     * The **password** of the source that these credentials connect to. Only valid, and required, with
     * **credential_type**s of `saml`, `username_password`, `basic`, or `ntml_v1`.
     *
     * **Note:** When used with a **source_type** of `salesforce`, the password consists of the Salesforce password and
     * a valid Salesforce security token concatenated. This value is never returned and is only used when creating or
     * modifying **credentials**.
     *
     * @return the password
     */
    @AuraEnabled
    public String getPassword() {
      return password_serialized_name;
    }
 
    /**
     * Gets the gatewayId.
     *
     * The ID of the **gateway** to be connected through (when connecting to intranet sites). Only valid with a
     * **credential_type** of `noauth`, `basic`, or `ntml_v1`. Gateways are created using the
     * `/v1/environments/{environment_id}/gateways` methods.
     *
     * @return the gatewayId
     */
    @AuraEnabled
    public String getGatewayId() {
      return gateway_id_serialized_name;
    }
 
    /**
     * Gets the sourceVersion.
     *
     * The type of Sharepoint repository to connect to. Only valid, and required, with a **source_type** of
     * `sharepoint`.
     *
     * @return the sourceVersion
     */
    @AuraEnabled
    public String getSourceVersion() {
      return source_version_serialized_name;
    }
 
    /**
     * Gets the webApplicationUrl.
     *
     * SharePoint OnPrem WebApplication URL. Only valid, and required, with a **source_version** of `2016`.
     *
     * @return the webApplicationUrl
     */
    @AuraEnabled
    public String getWebApplicationUrl() {
      return web_application_url_serialized_name;
    }
 
    /**
     * Gets the domain.
     *
     * The domain used to log in to your OnPrem SharePoint account. Only valid, and required, with a **source_version**
     * of `2016`.
     *
     * @return the domain
     */
    @AuraEnabled
    public String getDomain() {
      return domain_serialized_name;
    }

    /**
     * Sets the credentialType.
     *
     * @param credentialType the new credentialType
     */
    public void setCredentialType(final String credentialType) {
      this.credential_type_serialized_name = credentialType;
    }

    /**
     * Sets the clientId.
     *
     * @param clientId the new clientId
     */
    public void setClientId(final String clientId) {
      this.client_id_serialized_name = clientId;
    }

    /**
     * Sets the enterpriseId.
     *
     * @param enterpriseId the new enterpriseId
     */
    public void setEnterpriseId(final String enterpriseId) {
      this.enterprise_id_serialized_name = enterpriseId;
    }

    /**
     * Sets the url.
     *
     * @param url the new url
     */
    public void setUrl(final String url) {
      this.url_serialized_name = url;
    }

    /**
     * Sets the username.
     *
     * @param username the new username
     */
    public void setUsername(final String username) {
      this.username_serialized_name = username;
    }

    /**
     * Sets the organizationUrl.
     *
     * @param organizationUrl the new organizationUrl
     */
    public void setOrganizationUrl(final String organizationUrl) {
      this.organization_url_serialized_name = organizationUrl;
    }

    /**
     * Sets the siteCollectionPath.
     *
     * @param siteCollectionPath the new siteCollectionPath
     */
    public void setSiteCollectionPath(final String siteCollectionPath) {
      this.site_collection_path_serialized_name = siteCollectionPath;
    }

    /**
     * Sets the clientSecret.
     *
     * @param clientSecret the new clientSecret
     */
    public void setClientSecret(final String clientSecret) {
      this.client_secret_serialized_name = clientSecret;
    }

    /**
     * Sets the publicKeyId.
     *
     * @param publicKeyId the new publicKeyId
     */
    public void setPublicKeyId(final String publicKeyId) {
      this.public_key_id_serialized_name = publicKeyId;
    }

    /**
     * Sets the privateKey.
     *
     * @param privateKey the new privateKey
     */
    public void setPrivateKey(final String privateKey) {
      this.private_key_serialized_name = privateKey;
    }

    /**
     * Sets the passphrase.
     *
     * @param passphrase the new passphrase
     */
    public void setPassphrase(final String passphrase) {
      this.passphrase_serialized_name = passphrase;
    }

    /**
     * Sets the password.
     *
     * @param password the new password
     */
    public void setPassword(final String password) {
      this.password_serialized_name = password;
    }

    /**
     * Sets the gatewayId.
     *
     * @param gatewayId the new gatewayId
     */
    public void setGatewayId(final String gatewayId) {
      this.gateway_id_serialized_name = gatewayId;
    }

    /**
     * Sets the sourceVersion.
     *
     * @param sourceVersion the new sourceVersion
     */
    public void setSourceVersion(final String sourceVersion) {
      this.source_version_serialized_name = sourceVersion;
    }

    /**
     * Sets the webApplicationUrl.
     *
     * @param webApplicationUrl the new webApplicationUrl
     */
    public void setWebApplicationUrl(final String webApplicationUrl) {
      this.web_application_url_serialized_name = webApplicationUrl;
    }

    /**
     * Sets the domain.
     *
     * @param domain the new domain
     */
    public void setDomain(final String domain) {
      this.domain_serialized_name = domain;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CredentialDetails ret = (CredentialDetails) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object containing credential information.
   */
  public class Credentials extends IBMWatsonResponseModel {
    private String credential_id_serialized_name;
    private String source_type_serialized_name;
    private CredentialDetails credential_details_serialized_name;
 
    /**
     * Gets the credentialId.
     *
     * Unique identifier for this set of credentials.
     *
     * @return the credentialId
     */
    @AuraEnabled
    public String getCredentialId() {
      return credential_id_serialized_name;
    }
 
    /**
     * Gets the sourceType.
     *
     * The source that this credentials object connects to.
     * -  `box` indicates the credentials are used to connect an instance of Enterprise Box.
     * -  `salesforce` indicates the credentials are used to connect to Salesforce.
     * -  `sharepoint` indicates the credentials are used to connect to Microsoft SharePoint Online.
     * -  `web_crawl` indicates the credentials are used to perform a web crawl.
     *
     * @return the sourceType
     */
    @AuraEnabled
    public String getSourceType() {
      return source_type_serialized_name;
    }
 
    /**
     * Gets the credentialDetails.
     *
     * Object containing details of the stored credentials.
     *
     * Obtain credentials for your source from the administrator of the source.
     *
     * @return the credentialDetails
     */
    @AuraEnabled
    public CredentialDetails getCredentialDetails() {
      return credential_details_serialized_name;
    }

    /**
     * Sets the sourceType.
     *
     * @param sourceType the new sourceType
     */
    public void setSourceType(final String sourceType) {
      this.source_type_serialized_name = sourceType;
    }

    /**
     * Sets the credentialDetails.
     *
     * @param credentialDetails the new credentialDetails
     */
    public void setCredentialDetails(final CredentialDetails credentialDetails) {
      this.credential_details_serialized_name = credentialDetails;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Credentials ret = (Credentials) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for credentialDetails
      CredentialDetails newCredentialDetails = (CredentialDetails) new CredentialDetails().deserialize(JSON.serialize(ret.getCredentialDetails()), (Map<String, Object>) jsonMap.get('credential_details_serialized_name'), CredentialDetails.class);
      ret.setCredentialDetails(newCredentialDetails);

      return ret;
    }
  }

  /**
   * CredentialsList.
   */
  public class CredentialsList extends IBMWatsonResponseModel {
    private List<Credentials> credentials_serialized_name;
 
    /**
     * Gets the credentials.
     *
     * An array of credential definitions that were created for this instance.
     *
     * @return the credentials
     */
    @AuraEnabled
    public List<Credentials> getCredentials() {
      return credentials_serialized_name;
    }

    /**
     * Sets the credentials.
     *
     * @param credentials the new credentials
     */
    public void setCredentials(final List<Credentials> credentials) {
      this.credentials_serialized_name = credentials;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CredentialsList ret = (CredentialsList) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for credentials
      List<Credentials> newCredentials = new List<Credentials>();
      List<Credentials> deserializedCredentials = ret.getCredentials();
      if (deserializedCredentials != null) {
        for (Integer i = 0; i < deserializedCredentials.size(); i++) {
          Credentials currentItem = ret.getCredentials().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('credentials_serialized_name');
          Credentials newItem = (Credentials) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Credentials.class);
          newCredentials.add(newItem);
        }
        ret.setCredentials(newCredentials);
      }

      return ret;
    }
  }

  /**
   * The deleteAllTrainingData options.
   */
  public class DeleteAllTrainingDataOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private DeleteAllTrainingDataOptions(DeleteAllTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteAllTrainingDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private DeleteAllTrainingDataOptionsBuilder(DeleteAllTrainingDataOptions deleteAllTrainingDataOptions) {
      environmentId = deleteAllTrainingDataOptions.environmentId;
      collectionId = deleteAllTrainingDataOptions.collectionId;
      this.requestHeaders.putAll(deleteAllTrainingDataOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteCollection options.
   */
  public class DeleteCollectionOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private DeleteCollectionOptions(DeleteCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteCollectionOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private DeleteCollectionOptionsBuilder(DeleteCollectionOptions deleteCollectionOptions) {
      environmentId = deleteCollectionOptions.environmentId;
      collectionId = deleteCollectionOptions.collectionId;
      this.requestHeaders.putAll(deleteCollectionOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteConfiguration options.
   */
  public class DeleteConfigurationOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configurationId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the configurationId.
     *
     * The ID of the configuration.
     *
     * @return the configurationId
     */
    public String configurationId() {
      return configurationId;
    }

    private DeleteConfigurationOptions(DeleteConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configurationId, 'configurationId cannot be empty');
      environmentId = builder.environmentId;
      configurationId = builder.configurationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteConfigurationOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configurationId;

    private DeleteConfigurationOptionsBuilder(DeleteConfigurationOptions deleteConfigurationOptions) {
      environmentId = deleteConfigurationOptions.environmentId;
      configurationId = deleteConfigurationOptions.configurationId;
      this.requestHeaders.putAll(deleteConfigurationOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.configurationId = configurationId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the configurationId.
     *
     * @param configurationId the configurationId
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder configurationId(String configurationId) {
      this.configurationId = configurationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteCredentials options.
   */
  public class DeleteCredentialsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String credentialId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the credentialId.
     *
     * The unique identifier for a set of source credentials.
     *
     * @return the credentialId
     */
    public String credentialId() {
      return credentialId;
    }

    private DeleteCredentialsOptions(DeleteCredentialsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.credentialId, 'credentialId cannot be empty');
      environmentId = builder.environmentId;
      credentialId = builder.credentialId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteCredentialsOptions builder
     */
    public DeleteCredentialsOptionsBuilder newBuilder() {
      return new DeleteCredentialsOptionsBuilder(this);
    }

  }

  /**
   * DeleteCredentialsOptions Builder.
   */
  public class DeleteCredentialsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String credentialId;

    private DeleteCredentialsOptionsBuilder(DeleteCredentialsOptions deleteCredentialsOptions) {
      environmentId = deleteCredentialsOptions.environmentId;
      credentialId = deleteCredentialsOptions.credentialId;
      this.requestHeaders.putAll(deleteCredentialsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCredentialsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param credentialId the credentialId
     */
    public DeleteCredentialsOptionsBuilder(String environmentId, String credentialId) {
      this.environmentId = environmentId;
      this.credentialId = credentialId;
    }

    /**
     * Builds a DeleteCredentialsOptions.
     *
     * @return the deleteCredentialsOptions
     */
    public DeleteCredentialsOptions build() {
      return new DeleteCredentialsOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteCredentialsOptions builder
     */
    public DeleteCredentialsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the credentialId.
     *
     * @param credentialId the credentialId
     * @return the DeleteCredentialsOptions builder
     */
    public DeleteCredentialsOptionsBuilder credentialId(String credentialId) {
      this.credentialId = credentialId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteCredentialsOptions builder
     */
    public DeleteCredentialsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteDocument options.
   */
  public class DeleteDocumentOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String documentId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the documentId.
     *
     * The ID of the document.
     *
     * @return the documentId
     */
    public String documentId() {
      return documentId;
    }

    private DeleteDocumentOptions(DeleteDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.documentId, 'documentId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      documentId = builder.documentId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteDocumentOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String documentId;

    private DeleteDocumentOptionsBuilder(DeleteDocumentOptions deleteDocumentOptions) {
      environmentId = deleteDocumentOptions.environmentId;
      collectionId = deleteDocumentOptions.collectionId;
      documentId = deleteDocumentOptions.documentId;
      this.requestHeaders.putAll(deleteDocumentOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.documentId = documentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the documentId.
     *
     * @param documentId the documentId
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder documentId(String documentId) {
      this.documentId = documentId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteEnvironment options.
   */
  public class DeleteEnvironmentOptions extends IBMWatsonOptionsModel {
    private String environmentId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }

    private DeleteEnvironmentOptions(DeleteEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteEnvironmentOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;

    private DeleteEnvironmentOptionsBuilder(DeleteEnvironmentOptions deleteEnvironmentOptions) {
      environmentId = deleteEnvironmentOptions.environmentId;
      this.requestHeaders.putAll(deleteEnvironmentOptions.requestHeaders());
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
      this.environmentId = environmentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteEnvironmentOptions builder
     */
    public DeleteEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteEnvironmentOptions builder
     */
    public DeleteEnvironmentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteExpansions options.
   */
  public class DeleteExpansionsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private DeleteExpansionsOptions(DeleteExpansionsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteExpansionsOptions builder
     */
    public DeleteExpansionsOptionsBuilder newBuilder() {
      return new DeleteExpansionsOptionsBuilder(this);
    }

  }

  /**
   * DeleteExpansionsOptions Builder.
   */
  public class DeleteExpansionsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private DeleteExpansionsOptionsBuilder(DeleteExpansionsOptions deleteExpansionsOptions) {
      environmentId = deleteExpansionsOptions.environmentId;
      collectionId = deleteExpansionsOptions.collectionId;
      this.requestHeaders.putAll(deleteExpansionsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteExpansionsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public DeleteExpansionsOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a DeleteExpansionsOptions.
     *
     * @return the deleteExpansionsOptions
     */
    public DeleteExpansionsOptions build() {
      return new DeleteExpansionsOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteExpansionsOptions builder
     */
    public DeleteExpansionsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteExpansionsOptions builder
     */
    public DeleteExpansionsOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteExpansionsOptions builder
     */
    public DeleteExpansionsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteGateway options.
   */
  public class DeleteGatewayOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String gatewayId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the gatewayId.
     *
     * The requested gateway ID.
     *
     * @return the gatewayId
     */
    public String gatewayId() {
      return gatewayId;
    }

    private DeleteGatewayOptions(DeleteGatewayOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.gatewayId, 'gatewayId cannot be empty');
      environmentId = builder.environmentId;
      gatewayId = builder.gatewayId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteGatewayOptions builder
     */
    public DeleteGatewayOptionsBuilder newBuilder() {
      return new DeleteGatewayOptionsBuilder(this);
    }

  }

  /**
   * DeleteGatewayOptions Builder.
   */
  public class DeleteGatewayOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String gatewayId;

    private DeleteGatewayOptionsBuilder(DeleteGatewayOptions deleteGatewayOptions) {
      environmentId = deleteGatewayOptions.environmentId;
      gatewayId = deleteGatewayOptions.gatewayId;
      this.requestHeaders.putAll(deleteGatewayOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteGatewayOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param gatewayId the gatewayId
     */
    public DeleteGatewayOptionsBuilder(String environmentId, String gatewayId) {
      this.environmentId = environmentId;
      this.gatewayId = gatewayId;
    }

    /**
     * Builds a DeleteGatewayOptions.
     *
     * @return the deleteGatewayOptions
     */
    public DeleteGatewayOptions build() {
      return new DeleteGatewayOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteGatewayOptions builder
     */
    public DeleteGatewayOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the gatewayId.
     *
     * @param gatewayId the gatewayId
     * @return the DeleteGatewayOptions builder
     */
    public DeleteGatewayOptionsBuilder gatewayId(String gatewayId) {
      this.gatewayId = gatewayId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteGatewayOptions builder
     */
    public DeleteGatewayOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteStopwordList options.
   */
  public class DeleteStopwordListOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private DeleteStopwordListOptions(DeleteStopwordListOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteStopwordListOptions builder
     */
    public DeleteStopwordListOptionsBuilder newBuilder() {
      return new DeleteStopwordListOptionsBuilder(this);
    }

  }

  /**
   * DeleteStopwordListOptions Builder.
   */
  public class DeleteStopwordListOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private DeleteStopwordListOptionsBuilder(DeleteStopwordListOptions deleteStopwordListOptions) {
      environmentId = deleteStopwordListOptions.environmentId;
      collectionId = deleteStopwordListOptions.collectionId;
      this.requestHeaders.putAll(deleteStopwordListOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteStopwordListOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public DeleteStopwordListOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a DeleteStopwordListOptions.
     *
     * @return the deleteStopwordListOptions
     */
    public DeleteStopwordListOptions build() {
      return new DeleteStopwordListOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteStopwordListOptions builder
     */
    public DeleteStopwordListOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteStopwordListOptions builder
     */
    public DeleteStopwordListOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteStopwordListOptions builder
     */
    public DeleteStopwordListOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteTokenizationDictionary options.
   */
  public class DeleteTokenizationDictionaryOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private DeleteTokenizationDictionaryOptions(DeleteTokenizationDictionaryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteTokenizationDictionaryOptions builder
     */
    public DeleteTokenizationDictionaryOptionsBuilder newBuilder() {
      return new DeleteTokenizationDictionaryOptionsBuilder(this);
    }

  }

  /**
   * DeleteTokenizationDictionaryOptions Builder.
   */
  public class DeleteTokenizationDictionaryOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private DeleteTokenizationDictionaryOptionsBuilder(DeleteTokenizationDictionaryOptions deleteTokenizationDictionaryOptions) {
      environmentId = deleteTokenizationDictionaryOptions.environmentId;
      collectionId = deleteTokenizationDictionaryOptions.collectionId;
      this.requestHeaders.putAll(deleteTokenizationDictionaryOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteTokenizationDictionaryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public DeleteTokenizationDictionaryOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a DeleteTokenizationDictionaryOptions.
     *
     * @return the deleteTokenizationDictionaryOptions
     */
    public DeleteTokenizationDictionaryOptions build() {
      return new DeleteTokenizationDictionaryOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteTokenizationDictionaryOptions builder
     */
    public DeleteTokenizationDictionaryOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteTokenizationDictionaryOptions builder
     */
    public DeleteTokenizationDictionaryOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteTokenizationDictionaryOptions builder
     */
    public DeleteTokenizationDictionaryOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteTrainingData options.
   */
  public class DeleteTrainingDataOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the queryId.
     *
     * The ID of the query used for training.
     *
     * @return the queryId
     */
    public String queryId() {
      return queryId;
    }

    private DeleteTrainingDataOptions(DeleteTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.queryId, 'queryId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      queryId = builder.queryId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteTrainingDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;

    private DeleteTrainingDataOptionsBuilder(DeleteTrainingDataOptions deleteTrainingDataOptions) {
      environmentId = deleteTrainingDataOptions.environmentId;
      collectionId = deleteTrainingDataOptions.collectionId;
      queryId = deleteTrainingDataOptions.queryId;
      this.requestHeaders.putAll(deleteTrainingDataOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.queryId = queryId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the queryId.
     *
     * @param queryId the queryId
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder queryId(String queryId) {
      this.queryId = queryId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteTrainingExample options.
   */
  public class DeleteTrainingExampleOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the queryId.
     *
     * The ID of the query used for training.
     *
     * @return the queryId
     */
    public String queryId() {
      return queryId;
    }
 
    /**
     * Gets the exampleId.
     *
     * The ID of the document as it is indexed.
     *
     * @return the exampleId
     */
    public String exampleId() {
      return exampleId;
    }

    private DeleteTrainingExampleOptions(DeleteTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.queryId, 'queryId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.exampleId, 'exampleId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      queryId = builder.queryId;
      exampleId = builder.exampleId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteTrainingExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;

    private DeleteTrainingExampleOptionsBuilder(DeleteTrainingExampleOptions deleteTrainingExampleOptions) {
      environmentId = deleteTrainingExampleOptions.environmentId;
      collectionId = deleteTrainingExampleOptions.collectionId;
      queryId = deleteTrainingExampleOptions.queryId;
      exampleId = deleteTrainingExampleOptions.exampleId;
      this.requestHeaders.putAll(deleteTrainingExampleOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.queryId = queryId;
      this.exampleId = exampleId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the queryId.
     *
     * @param queryId the queryId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder queryId(String queryId) {
      this.queryId = queryId;
      return this;
    }

    /**
     * Set the exampleId.
     *
     * @param exampleId the exampleId
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder exampleId(String exampleId) {
      this.exampleId = exampleId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteUserData options.
   */
  public class DeleteUserDataOptions extends IBMWatsonOptionsModel {
    private String customerId;
 
    /**
     * Gets the customerId.
     *
     * The customer ID for which all data is to be deleted.
     *
     * @return the customerId
     */
    public String customerId() {
      return customerId;
    }

    private DeleteUserDataOptions(DeleteUserDataOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.customerId, 'customerId cannot be null');
      customerId = builder.customerId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder newBuilder() {
      return new DeleteUserDataOptionsBuilder(this);
    }

  }

  /**
   * DeleteUserDataOptions Builder.
   */
  public class DeleteUserDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String customerId;

    private DeleteUserDataOptionsBuilder(DeleteUserDataOptions deleteUserDataOptions) {
      customerId = deleteUserDataOptions.customerId;
      this.requestHeaders.putAll(deleteUserDataOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteUserDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customerId the customerId
     */
    public DeleteUserDataOptionsBuilder(String customerId) {
      this.customerId = customerId;
    }

    /**
     * Builds a DeleteUserDataOptions.
     *
     * @return the deleteUserDataOptions
     */
    public DeleteUserDataOptions build() {
      return new DeleteUserDataOptions(this);
    }

    /**
     * Set the customerId.
     *
     * @param customerId the customerId
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder customerId(String customerId) {
      this.customerId = customerId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
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
     * Gets the usedBytes.
     *
     * Number of bytes within the environment's disk capacity that are currently used to store data.
     *
     * @return the usedBytes
     */
    @AuraEnabled
    public Long getUsedBytes() {
      return used_bytes_serialized_name;
    }
 
    /**
     * Gets the maximumAllowedBytes.
     *
     * Total number of bytes available in the environment's disk capacity.
     *
     * @return the maximumAllowedBytes
     */
    @AuraEnabled
    public Long getMaximumAllowedBytes() {
      return maximum_allowed_bytes_serialized_name;
    }
 
    /**
     * Gets the totalBytes.
     *
     * **Deprecated**: Total number of bytes available in the environment's disk capacity.
     *
     * @return the totalBytes
     */
    @AuraEnabled
    public Long getTotalBytes() {
      return total_bytes_serialized_name;
    }
 
    /**
     * Gets the used.
     *
     * **Deprecated**: Amount of disk capacity used, in KB or GB format.
     *
     * @return the used
     */
    @AuraEnabled
    public String getUsed() {
      return used_serialized_name;
    }
 
    /**
     * Gets the total.
     *
     * **Deprecated**: Total amount of the environment's disk capacity, in KB or GB format.
     *
     * @return the total
     */
    @AuraEnabled
    public String getTotal() {
      return total_serialized_name;
    }
 
    /**
     * Gets the percentUsed.
     *
     * **Deprecated**: Percentage of the environment's disk capacity that is being used.
     *
     * @return the percentUsed
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
  public class DocumentAccepted extends IBMWatsonResponseModel {
    private String document_id_serialized_name;
    private String status_serialized_name;
    private List<Notice> notices_serialized_name;
 
    /**
     * Gets the documentId.
     *
     * The unique identifier of the ingested document.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * Status of the document in the ingestion process.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the notices.
     *
     * Array of notices produced by the document-ingestion process.
     *
     * @return the notices
     */
    @AuraEnabled
    public List<Notice> getNotices() {
      return notices_serialized_name;
    }

    /**
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the notices.
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

      // calling custom deserializer for notices
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
     * Gets the available.
     *
     * The total number of available documents in the collection.
     *
     * @return the available
     */
    @AuraEnabled
    public Long getAvailable() {
      return available_serialized_name;
    }
 
    /**
     * Gets the processing.
     *
     * The number of documents in the collection that are currently being processed.
     *
     * @return the processing
     */
    @AuraEnabled
    public Long getProcessing() {
      return processing_serialized_name;
    }
 
    /**
     * Gets the failed.
     *
     * The number of documents in the collection that failed to be ingested.
     *
     * @return the failed
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
     * Gets the step.
     *
     * @return the step
     */
    @AuraEnabled
    public String getStep() {
      return step_serialized_name;
    }
 
    /**
     * Gets the snapshot.
     *
     * @return the snapshot
     */
    @AuraEnabled
    public IBMWatsonMapModel getSnapshot() {
      return snapshot_serialized_name;
    }

    /**
     * Sets the step.
     *
     * @param step the new step
     */
    public void setStep(final String step) {
      this.step_serialized_name = step;
    }

    /**
     * Sets the snapshot.
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

      // calling custom deserializer for snapshot
      IBMWatsonMapModel newSnapshot = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getSnapshot()), (Map<String, Object>) jsonMap.get('snapshot_serialized_name'), IBMWatsonMapModel.class);
      ret.setSnapshot(newSnapshot);

      return ret;
    }
  }

  /**
   * Status information about a submitted document.
   */
  public class DocumentStatus extends IBMWatsonResponseModel {
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
     * Gets the documentId.
     *
     * The unique identifier of the document.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the configurationId.
     *
     * The unique identifier for the configuration.
     *
     * @return the configurationId
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The creation date of the document in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * Date of the most recent document update, in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * Status of the document in the ingestion process.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the statusDescription.
     *
     * Description of the document status.
     *
     * @return the statusDescription
     */
    @AuraEnabled
    public String getStatusDescription() {
      return status_description_serialized_name;
    }
 
    /**
     * Gets the filename.
     *
     * Name of the original source file (if available).
     *
     * @return the filename
     */
    @AuraEnabled
    public String getFilename() {
      return filename_serialized_name;
    }
 
    /**
     * Gets the fileType.
     *
     * The type of the original source file.
     *
     * @return the fileType
     */
    @AuraEnabled
    public String getFileType() {
      return file_type_serialized_name;
    }
 
    /**
     * Gets the sha1.
     *
     * The SHA-1 hash of the original source file (formatted as a hexadecimal string).
     *
     * @return the sha1
     */
    @AuraEnabled
    public String getSha1() {
      return sha1_serialized_name;
    }
 
    /**
     * Gets the notices.
     *
     * Array of notices produced by the document-ingestion process.
     *
     * @return the notices
     */
    @AuraEnabled
    public List<Notice> getNotices() {
      return notices_serialized_name;
    }

    /**
     * Sets the filename.
     *
     * @param filename the new filename
     */
    public void setFilename(final String filename) {
      this.filename_serialized_name = filename;
    }

    /**
     * Sets the fileType.
     *
     * @param fileType the new fileType
     */
    public void setFileType(final String fileType) {
      this.file_type_serialized_name = fileType;
    }

    /**
     * Sets the sha1.
     *
     * @param sha1 the new sha1
     */
    public void setSha1(final String sha1) {
      this.sha1_serialized_name = sha1;
    }

    /**
     * Sets the notices.
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

      // calling custom deserializer for notices
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
     * Gets the description.
     *
     * Describes what the enrichment step does.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the destinationField.
     *
     * Field where enrichments will be stored. This field must already exist or be at most 1 level deeper than an
     * existing field. For example, if `text` is a top-level field with no sub-fields, `text.foo` is a valid destination
     * but `text.foo.bar` is not.
     *
     * @return the destinationField
     */
    @AuraEnabled
    public String getDestinationField() {
      return destination_field_serialized_name;
    }
 
    /**
     * Gets the sourceField.
     *
     * Field to be enriched.
     *
     * @return the sourceField
     */
    @AuraEnabled
    public String getSourceField() {
      return source_field_serialized_name;
    }
 
    /**
     * Gets the overwrite.
     *
     * Indicates that the enrichments will overwrite the destination_field field if it already exists.
     *
     * @return the overwrite
     */
    @AuraEnabled
    public Boolean getOverwrite() {
      return overwrite_serialized_name;
    }
 
    /**
     * Gets the enrichmentName.
     *
     * Name of the enrichment service to call. Current options are `natural_language_understanding` and `elements`.
     *
     *  When using `natual_language_understanding`, the **options** object must contain Natural Language Understanding
     * options.
     *
     *  When using `elements` the **options** object must contain Element Classification options. Additionally, when
     * using the `elements` enrichment the configuration specified and files ingested must meet all the criteria
     * specified in [the documentation](https://console.bluemix.net/docs/services/discovery/element-classification.html)
     *
     *
     *
     *  Previous API versions also supported `alchemy_language`.
     *
     * @return the enrichmentName
     */
    @AuraEnabled
    public String getEnrichmentName() {
      return enrichment_serialized_name;
    }
 
    /**
     * Gets the ignoreDownstreamErrors.
     *
     * If true, then most errors generated during the enrichment process will be treated as warnings and will not cause
     * the document to fail processing.
     *
     * @return the ignoreDownstreamErrors
     */
    @AuraEnabled
    public Boolean getIgnoreDownstreamErrors() {
      return ignore_downstream_errors_serialized_name;
    }
 
    /**
     * Gets the options.
     *
     * Options which are specific to a particular enrichment.
     *
     * @return the options
     */
    @AuraEnabled
    public EnrichmentOptions getOptions() {
      return options_serialized_name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the destinationField.
     *
     * @param destinationField the new destinationField
     */
    public void setDestinationField(final String destinationField) {
      this.destination_field_serialized_name = destinationField;
    }

    /**
     * Sets the sourceField.
     *
     * @param sourceField the new sourceField
     */
    public void setSourceField(final String sourceField) {
      this.source_field_serialized_name = sourceField;
    }

    /**
     * Sets the overwrite.
     *
     * @param overwrite the new overwrite
     */
    public void setOverwrite(final Boolean overwrite) {
      this.overwrite_serialized_name = overwrite;
    }

    /**
     * Sets the enrichmentName.
     *
     * @param enrichmentName the new enrichmentName
     */
    public void setEnrichmentName(final String enrichmentName) {
      this.enrichment_serialized_name = enrichmentName;
    }

    /**
     * Sets the ignoreDownstreamErrors.
     *
     * @param ignoreDownstreamErrors the new ignoreDownstreamErrors
     */
    public void setIgnoreDownstreamErrors(final Boolean ignoreDownstreamErrors) {
      this.ignore_downstream_errors_serialized_name = ignoreDownstreamErrors;
    }

    /**
     * Sets the options.
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

      // calling custom deserializer for options
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
    private String language_serialized_name;
    private String model_serialized_name;

    /**
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public EnrichmentOptions() { }
 
    /**
     * Gets the features.
     *
     * An object representing the enrichment features that will be applied to the specified field.
     *
     * @return the features
     */
    @AuraEnabled
    public NluEnrichmentFeatures getFeatures() {
      return features_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * ISO 639-1 code indicating the language to use for the analysis. This code overrides the automatic language
     * detection performed by the service. Valid codes are `ar` (Arabic), `en` (English), `fr` (French), `de` (German),
     * `it` (Italian), `pt` (Portuguese), `ru` (Russian), `es` (Spanish), and `sv` (Swedish). **Note:** Not all features
     * support all languages, automatic detection is recommended.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the model.
     *
     * *For use with `elements` enrichments only.* The element extraction model to use. Models available are:
     * `contract`.
     *
     * @return the model
     */
    @AuraEnabled
    public String getModel() {
      return model_serialized_name;
    }
  
    private EnrichmentOptions(EnrichmentOptionsBuilder builder) {
      features_serialized_name = builder.features;
      language_serialized_name = builder.language;
      model_serialized_name = builder.model;
    }

    /**
     * New builder.
     *
     * @return a EnrichmentOptions builder
     */
    public EnrichmentOptionsBuilder newBuilder() {
      return new EnrichmentOptionsBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EnrichmentOptions ret = (EnrichmentOptions) super.deserialize(jsonString, jsonMap, classType);
      EnrichmentOptionsBuilder retBuilder = ret.newBuilder();

      // calling custom deserializer for features
      NluEnrichmentFeatures newFeatures = (NluEnrichmentFeatures) new NluEnrichmentFeatures().deserialize(JSON.serialize(ret.getFeatures()), (Map<String, Object>) jsonMap.get('features_serialized_name'), NluEnrichmentFeatures.class);
      retBuilder.features(newFeatures);

      return retBuilder.build();
    }
  }

  /**
   * EnrichmentOptions Builder.
   */
  public class EnrichmentOptionsBuilder {
    private NluEnrichmentFeatures features;
    private String language;
    private String model;

    private EnrichmentOptionsBuilder(EnrichmentOptions enrichmentOptions) {
      features = enrichmentOptions.features_serialized_name;
      language = enrichmentOptions.language_serialized_name;
      model = enrichmentOptions.model_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public EnrichmentOptionsBuilder() {
    }

    /**
     * Builds a EnrichmentOptions.
     *
     * @return the enrichmentOptions
     */
    public EnrichmentOptions build() {
      return new EnrichmentOptions(this);
    }

    /**
     * Set the features.
     *
     * @param features the features
     * @return the EnrichmentOptions builder
     */
    public EnrichmentOptionsBuilder features(NluEnrichmentFeatures features) {
      this.features = features;
      return this;
    }

    /**
     * Set the language.
     *
     * @param language the language
     * @return the EnrichmentOptions builder
     */
    public EnrichmentOptionsBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Set the model.
     *
     * @param model the model
     * @return the EnrichmentOptions builder
     */
    public EnrichmentOptionsBuilder model(String model) {
      this.model = model;
      return this;
    }
  }

  /**
   * Details about an environment.
   */
  public class Environment extends IBMWatsonResponseModel {
    private String environment_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String status_serialized_name;
    private Boolean read_only_serialized_name;
    private String size_serialized_name;
    private String requested_size_serialized_name;
    private IndexCapacity index_capacity_serialized_name;
    private SearchStatus search_status_serialized_name;
 
    /**
     * Gets the environmentId.
     *
     * Unique identifier for the environment.
     *
     * @return the environmentId
     */
    @AuraEnabled
    public String getEnvironmentId() {
      return environment_id_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * Name that identifies the environment.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * Description of the environment.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * Creation date of the environment, in the format `yyyy-MM-dd'T'HH:mm:ss.SSS'Z'`.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * Date of most recent environment update, in the format `yyyy-MM-dd'T'HH:mm:ss.SSS'Z'`.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * Current status of the environment. `resizing` is displayed when a request to increase the environment size has
     * been made, but is still in the process of being completed.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the readOnly.
     *
     * If `true`, the environment contains read-only collections that are maintained by IBM.
     *
     * @return the readOnly
     */
    @AuraEnabled
    public Boolean getReadOnly() {
      return read_only_serialized_name;
    }
 
    /**
     * Gets the size.
     *
     * Current size of the environment.
     *
     * @return the size
     */
    @AuraEnabled
    public String getSize() {
      return size_serialized_name;
    }
 
    /**
     * Gets the requestedSize.
     *
     * The new size requested for this environment. Only returned when the environment *status* is `resizing`.
     *
     * *Note:* Querying and indexing can still be performed during an environment upsize.
     *
     * @return the requestedSize
     */
    @AuraEnabled
    public String getRequestedSize() {
      return requested_size_serialized_name;
    }
 
    /**
     * Gets the indexCapacity.
     *
     * Details about the resource usage and capacity of the environment.
     *
     * @return the indexCapacity
     */
    @AuraEnabled
    public IndexCapacity getIndexCapacity() {
      return index_capacity_serialized_name;
    }
 
    /**
     * Gets the searchStatus.
     *
     * Information about the Continuous Relevancy Training for this environment.
     *
     * @return the searchStatus
     */
    @AuraEnabled
    public SearchStatus getSearchStatus() {
      return search_status_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the size.
     *
     * @param size the new size
     */
    public void setSize(final String size) {
      this.size_serialized_name = size;
    }

    /**
     * Sets the requestedSize.
     *
     * @param requestedSize the new requestedSize
     */
    public void setRequestedSize(final String requestedSize) {
      this.requested_size_serialized_name = requestedSize;
    }

    /**
     * Sets the indexCapacity.
     *
     * @param indexCapacity the new indexCapacity
     */
    public void setIndexCapacity(final IndexCapacity indexCapacity) {
      this.index_capacity_serialized_name = indexCapacity;
    }

    /**
     * Sets the searchStatus.
     *
     * @param searchStatus the new searchStatus
     */
    public void setSearchStatus(final SearchStatus searchStatus) {
      this.search_status_serialized_name = searchStatus;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      jsonString = jsonString.replace('"last_trained_serialized_name":"",', '');
      jsonString = jsonString.replace('"last_trained_serialized_name":""', '');
      Environment ret = (Environment) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for indexCapacity
      IndexCapacity newIndexCapacity = (IndexCapacity) new IndexCapacity().deserialize(JSON.serialize(ret.getIndexCapacity()), (Map<String, Object>) jsonMap.get('index_capacity_serialized_name'), IndexCapacity.class);
      ret.setIndexCapacity(newIndexCapacity);

      // calling custom deserializer for searchStatus
      SearchStatus newSearchStatus = (SearchStatus) new SearchStatus().deserialize(JSON.serialize(ret.getSearchStatus()), (Map<String, Object>) jsonMap.get('search_status_serialized_name'), SearchStatus.class);
      ret.setSearchStatus(newSearchStatus);

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
     * Gets the indexed.
     *
     * Number of documents indexed for the environment.
     *
     * @return the indexed
     */
    @AuraEnabled
    public Long getIndexed() {
      return indexed_serialized_name;
    }
 
    /**
     * Gets the maximumAllowed.
     *
     * Total number of documents allowed in the environment's capacity.
     *
     * @return the maximumAllowed
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
   * Query event data object.
   */
  public class EventData extends IBMWatsonGenericModel {
    private String environment_id_serialized_name;
    private String session_token_serialized_name;
    private Datetime client_timestamp_serialized_name;
    private Long display_rank_serialized_name;
    private String collection_id_serialized_name;
    private String document_id_serialized_name;
    private String query_id_serialized_name;
 
    /**
     * Gets the environmentId.
     *
     * The **environment_id** associated with the query that the event is associated with.
     *
     * @return the environmentId
     */
    @AuraEnabled
    public String getEnvironmentId() {
      return environment_id_serialized_name;
    }
 
    /**
     * Gets the sessionToken.
     *
     * The session token that was returned as part of the query results that this event is associated with.
     *
     * @return the sessionToken
     */
    @AuraEnabled
    public String getSessionToken() {
      return session_token_serialized_name;
    }
 
    /**
     * Gets the clientTimestamp.
     *
     * The optional timestamp for the event that was created. If not provided, the time that the event was created in
     * the log was used.
     *
     * @return the clientTimestamp
     */
    @AuraEnabled
    public Datetime getClientTimestamp() {
      return client_timestamp_serialized_name;
    }
 
    /**
     * Gets the displayRank.
     *
     * The rank of the result item which the event is associated with.
     *
     * @return the displayRank
     */
    @AuraEnabled
    public Long getDisplayRank() {
      return display_rank_serialized_name;
    }
 
    /**
     * Gets the collectionId.
     *
     * The **collection_id** of the document that this event is associated with.
     *
     * @return the collectionId
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }
 
    /**
     * Gets the documentId.
     *
     * The **document_id** of the document that this event is associated with.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the queryId.
     *
     * The query identifier stored in the log. The query and any events associated with that query are stored with the
     * same **query_id**.
     *
     * @return the queryId
     */
    @AuraEnabled
    public String getQueryId() {
      return query_id_serialized_name;
    }

    /**
     * Sets the environmentId.
     *
     * @param environmentId the new environmentId
     */
    public void setEnvironmentId(final String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Sets the sessionToken.
     *
     * @param sessionToken the new sessionToken
     */
    public void setSessionToken(final String sessionToken) {
      this.session_token_serialized_name = sessionToken;
    }

    /**
     * Sets the clientTimestamp.
     *
     * @param clientTimestamp the new clientTimestamp
     */
    public void setClientTimestamp(final Datetime clientTimestamp) {
      this.client_timestamp_serialized_name = clientTimestamp;
    }

    /**
     * Sets the displayRank.
     *
     * @param displayRank the new displayRank
     */
    public void setDisplayRank(final long displayRank) {
      this.display_rank_serialized_name = displayRank;
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EventData ret = (EventData) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An expansion definition. Each object respresents one set of expandable strings. For example, you could have
   * expansions for the word `hot` in one object, and expansions for the word `cold` in another.
   */
  public class Expansion extends IBMWatsonGenericModel {
    private List<String> input_terms_serialized_name;
    private List<String> expanded_terms_serialized_name;
 
    /**
     * Gets the inputTerms.
     *
     * A list of terms that will be expanded for this expansion. If specified, only the items in this list are expanded.
     *
     * @return the inputTerms
     */
    @AuraEnabled
    public List<String> getInputTerms() {
      return input_terms_serialized_name;
    }
 
    /**
     * Gets the expandedTerms.
     *
     * A list of terms that this expansion will be expanded to. If specified without **input_terms**, it also functions
     * as the input term list.
     *
     * @return the expandedTerms
     */
    @AuraEnabled
    public List<String> getExpandedTerms() {
      return expanded_terms_serialized_name;
    }

    /**
     * Sets the inputTerms.
     *
     * @param inputTerms the new inputTerms
     */
    public void setInputTerms(final List<String> inputTerms) {
      this.input_terms_serialized_name = inputTerms;
    }

    /**
     * Sets the expandedTerms.
     *
     * @param expandedTerms the new expandedTerms
     */
    public void setExpandedTerms(final List<String> expandedTerms) {
      this.expanded_terms_serialized_name = expandedTerms;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Expansion ret = (Expansion) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The query expansion definitions for the specified collection.
   */
  public class Expansions extends IBMWatsonResponseModel {
    private List<Expansion> expansions_serialized_name;
 
    /**
     * Gets the expansions.
     *
     * An array of query expansion definitions.
     *
     *  Each object in the **expansions** array represents a term or set of terms that will be expanded into other
     * terms. Each expansion object can be configured as bidirectional or unidirectional. Bidirectional means that all
     * terms are expanded to all other terms in the object. Unidirectional means that a set list of terms can be
     * expanded into a second list of terms.
     *
     *  To create a bi-directional expansion specify an **expanded_terms** array. When found in a query, all items in
     * the **expanded_terms** array are then expanded to the other items in the same array.
     *
     *  To create a uni-directional expansion, specify both an array of **input_terms** and an array of
     * **expanded_terms**. When items in the **input_terms** array are present in a query, they are expanded using the
     * items listed in the **expanded_terms** array.
     *
     * @return the expansions
     */
    @AuraEnabled
    public List<Expansion> getExpansions() {
      return expansions_serialized_name;
    }

    /**
     * Sets the expansions.
     *
     * @param expansions the new expansions
     */
    public void setExpansions(final List<Expansion> expansions) {
      this.expansions_serialized_name = expansions;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Expansions ret = (Expansions) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for expansions
      List<Expansion> newExpansions = new List<Expansion>();
      List<Expansion> deserializedExpansions = ret.getExpansions();
      if (deserializedExpansions != null) {
        for (Integer i = 0; i < deserializedExpansions.size(); i++) {
          Expansion currentItem = ret.getExpansions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('expansions_serialized_name');
          Expansion newItem = (Expansion) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Expansion.class);
          newExpansions.add(newItem);
        }
        ret.setExpansions(newExpansions);
      }

      return ret;
    }
  }

  /**
   * The federatedQueryNotices options.
   */
  public class FederatedQueryNoticesOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private List<String> collectionIds;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private String aggregation;
    private Long count;
    private List<String> returnFields;
    private Long offset;
    private List<String> xsort;
    private Boolean highlight;
    private String deduplicateField;
    private Boolean similar;
    private List<String> similarDocumentIds;
    private List<String> similarFields;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionIds.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collectionIds
     */
    public List<String> collectionIds() {
      return collectionIds;
    }
 
    /**
     * Gets the filter.
     *
     * A cacheable query that excludes documents that don't mention the query content. Filter searches are better for
     * metadata-type searches and for assessing the concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most
     * relevant documents listed first. Use a query search when you want to find the most relevant search results. You
     * cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
 
    /**
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language
     * understanding. You cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the naturalLanguageQuery
     */
    public String naturalLanguageQuery() {
      return naturalLanguageQuery;
    }
 
    /**
     * Gets the aggregation.
     *
     * An aggregation search that returns an exact answer by combining query search with filters. Useful for
     * applications to build lists, tables, and time series. For a full list of possible aggregations, see the Query
     * reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
 
    /**
     * Gets the count.
     *
     * Number of results to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }
 
    /**
     * Gets the returnFields.
     *
     * A comma-separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public List<String> returnFields() {
      return returnFields;
    }
 
    /**
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are
     * returned is 10 and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
    }
 
    /**
     * Gets the xsort.
     *
     * A comma-separated list of fields in the document to sort on. You can optionally specify a sort direction by
     * prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no
     * prefix is specified.
     *
     * @return the xsort
     */
    public List<String> xsort() {
      return xsort;
    }
 
    /**
     * Gets the highlight.
     *
     * When true, a highlight field is returned for each result which contains the fields which match the query with
     * `<em></em>` tags around the matching query terms.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
 
    /**
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate
     * comparison is limited to the current query only, **offset** is not considered. This parameter is currently Beta
     * functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
    }
 
    /**
     * Gets the similar.
     *
     * When `true`, results are returned based on their similarity to the document IDs specified in the
     * **similar.document_ids** parameter.
     *
     * @return the similar
     */
    public Boolean similar() {
      return similar;
    }
 
    /**
     * Gets the similarDocumentIds.
     *
     * A comma-separated list of document IDs to find similar documents.
     *
     * **Tip:** Include the **natural_language_query** parameter to expand the scope of the document similarity search
     * with the natural language query. Other query parameters, such as **filter** and **query**, are subsequently
     * applied and reduce the scope.
     *
     * @return the similarDocumentIds
     */
    public List<String> similarDocumentIds() {
      return similarDocumentIds;
    }
 
    /**
     * Gets the similarFields.
     *
     * A comma-separated list of field names that are used as a basis for comparison to identify similar documents. If
     * not specified, the entire document is used for comparison.
     *
     * @return the similarFields
     */
    public List<String> similarFields() {
      return similarFields;
    }

    private FederatedQueryNoticesOptions(FederatedQueryNoticesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notNull(builder.collectionIds, 'collectionIds cannot be null');
      environmentId = builder.environmentId;
      collectionIds = builder.collectionIds;
      filter = builder.filter;
      query = builder.query;
      naturalLanguageQuery = builder.naturalLanguageQuery;
      aggregation = builder.aggregation;
      count = builder.count;
      returnFields = builder.returnFields;
      offset = builder.offset;
      xsort = builder.xsort;
      highlight = builder.highlight;
      deduplicateField = builder.deduplicateField;
      similar = builder.similar;
      similarDocumentIds = builder.similarDocumentIds;
      similarFields = builder.similarFields;
      this.requestHeaders = builder.requestHeaders;
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
  public class FederatedQueryNoticesOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private List<String> collectionIds;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private String aggregation;
    private Long count;
    private List<String> returnFields;
    private Long offset;
    private List<String> xsort;
    private Boolean highlight;
    private String deduplicateField;
    private Boolean similar;
    private List<String> similarDocumentIds;
    private List<String> similarFields;

    private FederatedQueryNoticesOptionsBuilder(FederatedQueryNoticesOptions federatedQueryNoticesOptions) {
      environmentId = federatedQueryNoticesOptions.environmentId;
      collectionIds = federatedQueryNoticesOptions.collectionIds;
      filter = federatedQueryNoticesOptions.filter;
      query = federatedQueryNoticesOptions.query;
      naturalLanguageQuery = federatedQueryNoticesOptions.naturalLanguageQuery;
      aggregation = federatedQueryNoticesOptions.aggregation;
      count = federatedQueryNoticesOptions.count;
      returnFields = federatedQueryNoticesOptions.returnFields;
      offset = federatedQueryNoticesOptions.offset;
      xsort = federatedQueryNoticesOptions.xsort;
      highlight = federatedQueryNoticesOptions.highlight;
      deduplicateField = federatedQueryNoticesOptions.deduplicateField;
      similar = federatedQueryNoticesOptions.similar;
      similarDocumentIds = federatedQueryNoticesOptions.similarDocumentIds;
      similarFields = federatedQueryNoticesOptions.similarFields;
      this.requestHeaders.putAll(federatedQueryNoticesOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionIds = collectionIds;
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
     * Adds an collectionIds to collectionIds.
     *
     * @param collectionIds the new collectionIds
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addCollectionIds(String collectionIds) {
      IBMWatsonValidator.notNull(collectionIds, 'collectionIds cannot be null');
      if (this.collectionIds == null) {
        this.collectionIds = new List<String>();
      }
      this.collectionIds.add(collectionIds);
      return this;
    }

    /**
     * Adds an returnFields to returnFields.
     *
     * @param returnFields the new returnFields
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addReturnFields(String returnFields) {
      IBMWatsonValidator.notNull(returnFields, 'returnFields cannot be null');
      if (this.returnFields == null) {
        this.returnFields = new List<String>();
      }
      this.returnFields.add(returnFields);
      return this;
    }

    /**
     * Adds an xsort to xsort.
     *
     * @param xsort the new xsort
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addXsort(String xsort) {
      IBMWatsonValidator.notNull(xsort, 'xsort cannot be null');
      if (this.xsort == null) {
        this.xsort = new List<String>();
      }
      this.xsort.add(xsort);
      return this;
    }

    /**
     * Adds an similarDocumentIds to similarDocumentIds.
     *
     * @param similarDocumentIds the new similarDocumentIds
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addSimilarDocumentIds(String similarDocumentIds) {
      IBMWatsonValidator.notNull(similarDocumentIds, 'similarDocumentIds cannot be null');
      if (this.similarDocumentIds == null) {
        this.similarDocumentIds = new List<String>();
      }
      this.similarDocumentIds.add(similarDocumentIds);
      return this;
    }

    /**
     * Adds an similarFields to similarFields.
     *
     * @param similarFields the new similarFields
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addSimilarFields(String similarFields) {
      IBMWatsonValidator.notNull(similarFields, 'similarFields cannot be null');
      if (this.similarFields == null) {
        this.similarFields = new List<String>();
      }
      this.similarFields.add(similarFields);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionIds.
     * Existing collectionIds will be replaced.
     *
     * @param collectionIds the collectionIds
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder collectionIds(List<String> collectionIds) {
      this.collectionIds = collectionIds;
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the query.
     *
     * @param query the query
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder query(String query) {
      this.query = query;
      return this;
    }

    /**
     * Set the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.naturalLanguageQuery = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the aggregation.
     *
     * @param aggregation the aggregation
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder aggregation(String aggregation) {
      this.aggregation = aggregation;
      return this;
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the returnFields.
     * Existing returnFields will be replaced.
     *
     * @param returnFields the returnFields
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder returnFields(List<String> returnFields) {
      this.returnFields = returnFields;
      return this;
    }

    /**
     * Set the offset.
     *
     * @param offset the offset
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder offset(Long offset) {
      this.offset = offset;
      return this;
    }

    /**
     * Set the xsort.
     * Existing xsort will be replaced.
     *
     * @param xsort the xsort
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder xsort(List<String> xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the highlight.
     *
     * @param highlight the highlight
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder highlight(Boolean highlight) {
      this.highlight = highlight;
      return this;
    }

    /**
     * Set the deduplicateField.
     *
     * @param deduplicateField the deduplicateField
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicateField = deduplicateField;
      return this;
    }

    /**
     * Set the similar.
     *
     * @param similar the similar
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder similar(Boolean similar) {
      this.similar = similar;
      return this;
    }

    /**
     * Set the similarDocumentIds.
     * Existing similarDocumentIds will be replaced.
     *
     * @param similarDocumentIds the similarDocumentIds
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder similarDocumentIds(List<String> similarDocumentIds) {
      this.similarDocumentIds = similarDocumentIds;
      return this;
    }

    /**
     * Set the similarFields.
     * Existing similarFields will be replaced.
     *
     * @param similarFields the similarFields
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder similarFields(List<String> similarFields) {
      this.similarFields = similarFields;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The federatedQuery options.
   */
  public class FederatedQueryOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private String returnFields;
    private Long offset;
    private String xsort;
    private Boolean highlight;
    private String passagesFields;
    private Long passagesCount;
    private Long passagesCharacters;
    private Boolean deduplicate;
    private String deduplicateField;
    private String collectionIds;
    private Boolean similar;
    private String similarDocumentIds;
    private String similarFields;
    private String bias;
    private Boolean loggingOptOut;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the filter.
     *
     * A cacheable query that excludes documents that don't mention the query content. Filter searches are better for
     * metadata-type searches and for assessing the concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most
     * relevant documents listed first. Use a query search when you want to find the most relevant search results. You
     * cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
 
    /**
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language
     * understanding. You cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the naturalLanguageQuery
     */
    public String naturalLanguageQuery() {
      return naturalLanguageQuery;
    }
 
    /**
     * Gets the passages.
     *
     * A passages query that returns the most relevant passages from the results.
     *
     * @return the passages
     */
    public Boolean passages() {
      return passages;
    }
 
    /**
     * Gets the aggregation.
     *
     * An aggregation search that returns an exact answer by combining query search with filters. Useful for
     * applications to build lists, tables, and time series. For a full list of possible aggregations, see the Query
     * reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
 
    /**
     * Gets the count.
     *
     * Number of results to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }
 
    /**
     * Gets the returnFields.
     *
     * A comma-separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public String returnFields() {
      return returnFields;
    }
 
    /**
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are
     * returned is 10 and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
    }
 
    /**
     * Gets the xsort.
     *
     * A comma-separated list of fields in the document to sort on. You can optionally specify a sort direction by
     * prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no
     * prefix is specified. This parameter cannot be used in the same query as the **bias** parameter.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the highlight.
     *
     * When true, a highlight field is returned for each result which contains the fields which match the query with
     * `<em></em>` tags around the matching query terms.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
 
    /**
     * Gets the passagesFields.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all
     * top-level fields are included.
     *
     * @return the passagesFields
     */
    public String passagesFields() {
      return passagesFields;
    }
 
    /**
     * Gets the passagesCount.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found.
     * The default is `10`. The maximum is `100`.
     *
     * @return the passagesCount
     */
    public Long passagesCount() {
      return passagesCount;
    }
 
    /**
     * Gets the passagesCharacters.
     *
     * The approximate number of characters that any one passage will have.
     *
     * @return the passagesCharacters
     */
    public Long passagesCharacters() {
      return passagesCharacters;
    }
 
    /**
     * Gets the deduplicate.
     *
     * When `true` and used with a Watson Discovery News collection, duplicate results (based on the contents of the
     * **title** field) are removed. Duplicate comparison is limited to the current query only; **offset** is not
     * considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate
     */
    public Boolean deduplicate() {
      return deduplicate;
    }
 
    /**
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate
     * comparison is limited to the current query only, **offset** is not considered. This parameter is currently Beta
     * functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
    }
 
    /**
     * Gets the collectionIds.
     *
     * A comma-separated list of collection IDs to be queried against. Required when querying multiple collections,
     * invalid when performing a single collection query.
     *
     * @return the collectionIds
     */
    public String collectionIds() {
      return collectionIds;
    }
 
    /**
     * Gets the similar.
     *
     * When `true`, results are returned based on their similarity to the document IDs specified in the
     * **similar.document_ids** parameter.
     *
     * @return the similar
     */
    public Boolean similar() {
      return similar;
    }
 
    /**
     * Gets the similarDocumentIds.
     *
     * A comma-separated list of document IDs to find similar documents.
     *
     * **Tip:** Include the **natural_language_query** parameter to expand the scope of the document similarity search
     * with the natural language query. Other query parameters, such as **filter** and **query**, are subsequently
     * applied and reduce the scope.
     *
     * @return the similarDocumentIds
     */
    public String similarDocumentIds() {
      return similarDocumentIds;
    }
 
    /**
     * Gets the similarFields.
     *
     * A comma-separated list of field names that are used as a basis for comparison to identify similar documents. If
     * not specified, the entire document is used for comparison.
     *
     * @return the similarFields
     */
    public String similarFields() {
      return similarFields;
    }
 
    /**
     * Gets the bias.
     *
     * Field which the returned results will be biased against. The specified field must be either a **date** or
     * **number** format. When a **date** type field is specified returned results are biased towards field values
     * closer to the current date. When a **number** type field is specified, returned results are biased towards higher
     * field values. This parameter cannot be used in the same query as the **sort** parameter.
     *
     * @return the bias
     */
    public String bias() {
      return bias;
    }
 
    /**
     * Gets the loggingOptOut.
     *
     * If `true`, queries are not stored in the Discovery **Logs** endpoint.
     *
     * @return the loggingOptOut
     */
    public Boolean loggingOptOut() {
      return loggingOptOut;
    }

    private FederatedQueryOptions(FederatedQueryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      filter = builder.filter;
      query = builder.query;
      naturalLanguageQuery = builder.naturalLanguageQuery;
      passages = builder.passages;
      aggregation = builder.aggregation;
      count = builder.count;
      returnFields = builder.returnFields;
      offset = builder.offset;
      xsort = builder.xsort;
      highlight = builder.highlight;
      passagesFields = builder.passagesFields;
      passagesCount = builder.passagesCount;
      passagesCharacters = builder.passagesCharacters;
      deduplicate = builder.deduplicate;
      deduplicateField = builder.deduplicateField;
      collectionIds = builder.collectionIds;
      similar = builder.similar;
      similarDocumentIds = builder.similarDocumentIds;
      similarFields = builder.similarFields;
      bias = builder.bias;
      loggingOptOut = builder.loggingOptOut;
      this.requestHeaders = builder.requestHeaders;
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
  public class FederatedQueryOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private String returnFields;
    private Long offset;
    private String xsort;
    private Boolean highlight;
    private String passagesFields;
    private Long passagesCount;
    private Long passagesCharacters;
    private Boolean deduplicate;
    private String deduplicateField;
    private String collectionIds;
    private Boolean similar;
    private String similarDocumentIds;
    private String similarFields;
    private String bias;
    private Boolean loggingOptOut;

    private FederatedQueryOptionsBuilder(FederatedQueryOptions federatedQueryOptions) {
      environmentId = federatedQueryOptions.environmentId;
      filter = federatedQueryOptions.filter;
      query = federatedQueryOptions.query;
      naturalLanguageQuery = federatedQueryOptions.naturalLanguageQuery;
      passages = federatedQueryOptions.passages;
      aggregation = federatedQueryOptions.aggregation;
      count = federatedQueryOptions.count;
      returnFields = federatedQueryOptions.returnFields;
      offset = federatedQueryOptions.offset;
      xsort = federatedQueryOptions.xsort;
      highlight = federatedQueryOptions.highlight;
      passagesFields = federatedQueryOptions.passagesFields;
      passagesCount = federatedQueryOptions.passagesCount;
      passagesCharacters = federatedQueryOptions.passagesCharacters;
      deduplicate = federatedQueryOptions.deduplicate;
      deduplicateField = federatedQueryOptions.deduplicateField;
      collectionIds = federatedQueryOptions.collectionIds;
      similar = federatedQueryOptions.similar;
      similarDocumentIds = federatedQueryOptions.similarDocumentIds;
      similarFields = federatedQueryOptions.similarFields;
      bias = federatedQueryOptions.bias;
      loggingOptOut = federatedQueryOptions.loggingOptOut;
      this.requestHeaders.putAll(federatedQueryOptions.requestHeaders());
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
     */
    public FederatedQueryOptionsBuilder(String environmentId) {
      this.environmentId = environmentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the query.
     *
     * @param query the query
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder query(String query) {
      this.query = query;
      return this;
    }

    /**
     * Set the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.naturalLanguageQuery = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the passages.
     *
     * @param passages the passages
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder passages(Boolean passages) {
      this.passages = passages;
      return this;
    }

    /**
     * Set the aggregation.
     *
     * @param aggregation the aggregation
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder aggregation(String aggregation) {
      this.aggregation = aggregation;
      return this;
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the returnFields.
     *
     * @param returnFields the returnFields
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder returnFields(String returnFields) {
      this.returnFields = returnFields;
      return this;
    }

    /**
     * Set the offset.
     *
     * @param offset the offset
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder offset(Long offset) {
      this.offset = offset;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the highlight.
     *
     * @param highlight the highlight
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder highlight(Boolean highlight) {
      this.highlight = highlight;
      return this;
    }

    /**
     * Set the passagesFields.
     *
     * @param passagesFields the passagesFields
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder passagesFields(String passagesFields) {
      this.passagesFields = passagesFields;
      return this;
    }

    /**
     * Set the passagesCount.
     *
     * @param passagesCount the passagesCount
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder passagesCount(Long passagesCount) {
      this.passagesCount = passagesCount;
      return this;
    }

    /**
     * Set the passagesCharacters.
     *
     * @param passagesCharacters the passagesCharacters
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder passagesCharacters(Long passagesCharacters) {
      this.passagesCharacters = passagesCharacters;
      return this;
    }

    /**
     * Set the deduplicate.
     *
     * @param deduplicate the deduplicate
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder deduplicate(Boolean deduplicate) {
      this.deduplicate = deduplicate;
      return this;
    }

    /**
     * Set the deduplicateField.
     *
     * @param deduplicateField the deduplicateField
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicateField = deduplicateField;
      return this;
    }

    /**
     * Set the collectionIds.
     *
     * @param collectionIds the collectionIds
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder collectionIds(String collectionIds) {
      this.collectionIds = collectionIds;
      return this;
    }

    /**
     * Set the similar.
     *
     * @param similar the similar
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder similar(Boolean similar) {
      this.similar = similar;
      return this;
    }

    /**
     * Set the similarDocumentIds.
     *
     * @param similarDocumentIds the similarDocumentIds
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder similarDocumentIds(String similarDocumentIds) {
      this.similarDocumentIds = similarDocumentIds;
      return this;
    }

    /**
     * Set the similarFields.
     *
     * @param similarFields the similarFields
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder similarFields(String similarFields) {
      this.similarFields = similarFields;
      return this;
    }

    /**
     * Set the bias.
     *
     * @param bias the bias
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder bias(String bias) {
      this.bias = bias;
      return this;
    }

    /**
     * Set the loggingOptOut.
     *
     * @param loggingOptOut the loggingOptOut
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder loggingOptOut(Boolean loggingOptOut) {
      this.loggingOptOut = loggingOptOut;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
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
     * Gets the fieldName.
     *
     * The name of the field.
     *
     * @return the fieldName
     */
    @AuraEnabled
    public String getFieldName() {
      return field_serialized_name;
    }
 
    /**
     * Gets the fieldType.
     *
     * The type of the field.
     *
     * @return the fieldType
     */
    @AuraEnabled
    public String getFieldType() {
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
     * Gets the level.
     *
     * @return the level
     */
    @AuraEnabled
    public Long getLevel() {
      return level_serialized_name;
    }
 
    /**
     * Gets the minSize.
     *
     * @return the minSize
     */
    @AuraEnabled
    public Long getMinSize() {
      return min_size_serialized_name;
    }
 
    /**
     * Gets the maxSize.
     *
     * @return the maxSize
     */
    @AuraEnabled
    public Long getMaxSize() {
      return max_size_serialized_name;
    }
 
    /**
     * Gets the bold.
     *
     * @return the bold
     */
    @AuraEnabled
    public Boolean getBold() {
      return bold_serialized_name;
    }
 
    /**
     * Gets the italic.
     *
     * @return the italic
     */
    @AuraEnabled
    public Boolean getItalic() {
      return italic_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }

    /**
     * Sets the level.
     *
     * @param level the new level
     */
    public void setLevel(final long level) {
      this.level_serialized_name = level;
    }

    /**
     * Sets the minSize.
     *
     * @param minSize the new minSize
     */
    public void setMinSize(final long minSize) {
      this.min_size_serialized_name = minSize;
    }

    /**
     * Sets the maxSize.
     *
     * @param maxSize the new maxSize
     */
    public void setMaxSize(final long maxSize) {
      this.max_size_serialized_name = maxSize;
    }

    /**
     * Sets the bold.
     *
     * @param bold the new bold
     */
    public void setBold(final Boolean bold) {
      this.bold_serialized_name = bold;
    }

    /**
     * Sets the italic.
     *
     * @param italic the new italic
     */
    public void setItalic(final Boolean italic) {
      this.italic_serialized_name = italic;
    }

    /**
     * Sets the name.
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
   * Object describing a specific gateway.
   */
  public class Gateway extends IBMWatsonResponseModel {
    private String gateway_id_serialized_name;
    private String name_serialized_name;
    private String status_serialized_name;
    private String token_serialized_name;
    private String token_id_serialized_name;
 
    /**
     * Gets the gatewayId.
     *
     * The gateway ID of the gateway.
     *
     * @return the gatewayId
     */
    @AuraEnabled
    public String getGatewayId() {
      return gateway_id_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * The user defined name of the gateway.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The current status of the gateway. `connected` means the gateway is connected to the remotly installed gateway.
     * `idle` means this gateway is not currently in use.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the token.
     *
     * The generated **token** for this gateway. The value of this field is used when configuring the remotly installed
     * gateway.
     *
     * @return the token
     */
    @AuraEnabled
    public String getToken() {
      return token_serialized_name;
    }
 
    /**
     * Gets the tokenId.
     *
     * The generated **token_id** for this gateway. The value of this field is used when configuring the remotly
     * installed gateway.
     *
     * @return the tokenId
     */
    @AuraEnabled
    public String getTokenId() {
      return token_id_serialized_name;
    }

    /**
     * Sets the gatewayId.
     *
     * @param gatewayId the new gatewayId
     */
    public void setGatewayId(final String gatewayId) {
      this.gateway_id_serialized_name = gatewayId;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the token.
     *
     * @param token the new token
     */
    public void setToken(final String token) {
      this.token_serialized_name = token;
    }

    /**
     * Sets the tokenId.
     *
     * @param tokenId the new tokenId
     */
    public void setTokenId(final String tokenId) {
      this.token_id_serialized_name = tokenId;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Gateway ret = (Gateway) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object containing gateways array.
   */
  public class GatewayList extends IBMWatsonResponseModel {
    private List<Gateway> gateways_serialized_name;
 
    /**
     * Gets the gateways.
     *
     * Array of configured gateway connections.
     *
     * @return the gateways
     */
    @AuraEnabled
    public List<Gateway> getGateways() {
      return gateways_serialized_name;
    }

    /**
     * Sets the gateways.
     *
     * @param gateways the new gateways
     */
    public void setGateways(final List<Gateway> gateways) {
      this.gateways_serialized_name = gateways;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      GatewayList ret = (GatewayList) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for gateways
      List<Gateway> newGateways = new List<Gateway>();
      List<Gateway> deserializedGateways = ret.getGateways();
      if (deserializedGateways != null) {
        for (Integer i = 0; i < deserializedGateways.size(); i++) {
          Gateway currentItem = ret.getGateways().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('gateways_serialized_name');
          Gateway newItem = (Gateway) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Gateway.class);
          newGateways.add(newItem);
        }
        ret.setGateways(newGateways);
      }

      return ret;
    }
  }

  /**
   * The getCollection options.
   */
  public class GetCollectionOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private GetCollectionOptions(GetCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetCollectionOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private GetCollectionOptionsBuilder(GetCollectionOptions getCollectionOptions) {
      environmentId = getCollectionOptions.environmentId;
      collectionId = getCollectionOptions.collectionId;
      this.requestHeaders.putAll(getCollectionOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getConfiguration options.
   */
  public class GetConfigurationOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configurationId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the configurationId.
     *
     * The ID of the configuration.
     *
     * @return the configurationId
     */
    public String configurationId() {
      return configurationId;
    }

    private GetConfigurationOptions(GetConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configurationId, 'configurationId cannot be empty');
      environmentId = builder.environmentId;
      configurationId = builder.configurationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetConfigurationOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configurationId;

    private GetConfigurationOptionsBuilder(GetConfigurationOptions getConfigurationOptions) {
      environmentId = getConfigurationOptions.environmentId;
      configurationId = getConfigurationOptions.configurationId;
      this.requestHeaders.putAll(getConfigurationOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.configurationId = configurationId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the configurationId.
     *
     * @param configurationId the configurationId
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder configurationId(String configurationId) {
      this.configurationId = configurationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getCredentials options.
   */
  public class GetCredentialsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String credentialId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the credentialId.
     *
     * The unique identifier for a set of source credentials.
     *
     * @return the credentialId
     */
    public String credentialId() {
      return credentialId;
    }

    private GetCredentialsOptions(GetCredentialsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.credentialId, 'credentialId cannot be empty');
      environmentId = builder.environmentId;
      credentialId = builder.credentialId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetCredentialsOptions builder
     */
    public GetCredentialsOptionsBuilder newBuilder() {
      return new GetCredentialsOptionsBuilder(this);
    }

  }

  /**
   * GetCredentialsOptions Builder.
   */
  public class GetCredentialsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String credentialId;

    private GetCredentialsOptionsBuilder(GetCredentialsOptions getCredentialsOptions) {
      environmentId = getCredentialsOptions.environmentId;
      credentialId = getCredentialsOptions.credentialId;
      this.requestHeaders.putAll(getCredentialsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetCredentialsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param credentialId the credentialId
     */
    public GetCredentialsOptionsBuilder(String environmentId, String credentialId) {
      this.environmentId = environmentId;
      this.credentialId = credentialId;
    }

    /**
     * Builds a GetCredentialsOptions.
     *
     * @return the getCredentialsOptions
     */
    public GetCredentialsOptions build() {
      return new GetCredentialsOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetCredentialsOptions builder
     */
    public GetCredentialsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the credentialId.
     *
     * @param credentialId the credentialId
     * @return the GetCredentialsOptions builder
     */
    public GetCredentialsOptionsBuilder credentialId(String credentialId) {
      this.credentialId = credentialId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetCredentialsOptions builder
     */
    public GetCredentialsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getDocumentStatus options.
   */
  public class GetDocumentStatusOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String documentId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the documentId.
     *
     * The ID of the document.
     *
     * @return the documentId
     */
    public String documentId() {
      return documentId;
    }

    private GetDocumentStatusOptions(GetDocumentStatusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.documentId, 'documentId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      documentId = builder.documentId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetDocumentStatusOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String documentId;

    private GetDocumentStatusOptionsBuilder(GetDocumentStatusOptions getDocumentStatusOptions) {
      environmentId = getDocumentStatusOptions.environmentId;
      collectionId = getDocumentStatusOptions.collectionId;
      documentId = getDocumentStatusOptions.documentId;
      this.requestHeaders.putAll(getDocumentStatusOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.documentId = documentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the documentId.
     *
     * @param documentId the documentId
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder documentId(String documentId) {
      this.documentId = documentId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getEnvironment options.
   */
  public class GetEnvironmentOptions extends IBMWatsonOptionsModel {
    private String environmentId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }

    private GetEnvironmentOptions(GetEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetEnvironmentOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;

    private GetEnvironmentOptionsBuilder(GetEnvironmentOptions getEnvironmentOptions) {
      environmentId = getEnvironmentOptions.environmentId;
      this.requestHeaders.putAll(getEnvironmentOptions.requestHeaders());
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
      this.environmentId = environmentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetEnvironmentOptions builder
     */
    public GetEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetEnvironmentOptions builder
     */
    public GetEnvironmentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getGatewayDetails options.
   */
  public class GetGatewayOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String gatewayId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the gatewayId.
     *
     * The requested gateway ID.
     *
     * @return the gatewayId
     */
    public String gatewayId() {
      return gatewayId;
    }

    private GetGatewayOptions(GetGatewayOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.gatewayId, 'gatewayId cannot be empty');
      environmentId = builder.environmentId;
      gatewayId = builder.gatewayId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetGatewayOptions builder
     */
    public GetGatewayOptionsBuilder newBuilder() {
      return new GetGatewayOptionsBuilder(this);
    }

  }

  /**
   * GetGatewayOptions Builder.
   */
  public class GetGatewayOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String gatewayId;

    private GetGatewayOptionsBuilder(GetGatewayOptions getGatewayDetailsOptions) {
      environmentId = getGatewayDetailsOptions.environmentId;
      gatewayId = getGatewayDetailsOptions.gatewayId;
      this.requestHeaders.putAll(getGatewayDetailsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetGatewayOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param gatewayId the gatewayId
     */
    public GetGatewayOptionsBuilder(String environmentId, String gatewayId) {
      this.environmentId = environmentId;
      this.gatewayId = gatewayId;
    }

    /**
     * Builds a GetGatewayOptions.
     *
     * @return the getGatewayDetailsOptions
     */
    public GetGatewayOptions build() {
      return new GetGatewayOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetGatewayOptions builder
     */
    public GetGatewayOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the gatewayId.
     *
     * @param gatewayId the gatewayId
     * @return the GetGatewayOptions builder
     */
    public GetGatewayOptionsBuilder gatewayId(String gatewayId) {
      this.gatewayId = gatewayId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetGatewayOptions builder
     */
    public GetGatewayOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getGatewayList options.
   */
  public class ListGatewaysOptions extends IBMWatsonOptionsModel {
    private String environmentId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }

    private ListGatewaysOptions(ListGatewaysOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListGatewaysOptions builder
     */
    public ListGatewaysOptionsBuilder newBuilder() {
      return new ListGatewaysOptionsBuilder(this);
    }

  }

  /**
   * ListGatewaysOptions Builder.
   */
  public class ListGatewaysOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;

    private ListGatewaysOptionsBuilder(ListGatewaysOptions listGatewaysOptions) {
      environmentId = listGatewaysOptions.environmentId;
      this.requestHeaders.putAll(listGatewaysOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListGatewaysOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public ListGatewaysOptionsBuilder(String environmentId) {
      this.environmentId = environmentId;
    }

    /**
     * Builds a ListGatewaysOptions.
     *
     * @return the listGatewaysOptions
     */
    public ListGatewaysOptions build() {
      return new ListGatewaysOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListGatewaysOptions builder
     */
    public ListGatewaysOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListGatewaysOptions builder
     */
    public ListGatewaysOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getMetricsEventRate options.
   */
  public class GetMetricsEventRateOptions extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;
 
    /**
     * Gets the startTime.
     *
     * Metric is computed from data recorded after this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the startTime
     */
    public Datetime startTime() {
      return startTime;
    }
 
    /**
     * Gets the endTime.
     *
     * Metric is computed from data recorded before this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the endTime
     */
    public Datetime endTime() {
      return endTime;
    }
 
    /**
     * Gets the resultType.
     *
     * The type of result to consider when calculating the metric.
     *
     * @return the resultType
     */
    public String resultType() {
      return resultType;
    }

    private GetMetricsEventRateOptions(GetMetricsEventRateOptionsBuilder builder) {
      startTime = builder.startTime;
      endTime = builder.endTime;
      resultType = builder.resultType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetMetricsEventRateOptions builder
     */
    public GetMetricsEventRateOptionsBuilder newBuilder() {
      return new GetMetricsEventRateOptionsBuilder(this);
    }

  }

  /**
   * GetMetricsEventRateOptions Builder.
   */
  public class GetMetricsEventRateOptionsBuilder extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;

    private GetMetricsEventRateOptionsBuilder(GetMetricsEventRateOptions getMetricsEventRateOptions) {
      startTime = getMetricsEventRateOptions.startTime;
      endTime = getMetricsEventRateOptions.endTime;
      resultType = getMetricsEventRateOptions.resultType;
      this.requestHeaders.putAll(getMetricsEventRateOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetMetricsEventRateOptionsBuilder() {
    }

    /**
     * Builds a GetMetricsEventRateOptions.
     *
     * @return the getMetricsEventRateOptions
     */
    public GetMetricsEventRateOptions build() {
      return new GetMetricsEventRateOptions(this);
    }

    /**
     * Set the startTime.
     *
     * @param startTime the startTime
     * @return the GetMetricsEventRateOptions builder
     */
    public GetMetricsEventRateOptionsBuilder startTime(Datetime startTime) {
      this.startTime = startTime;
      return this;
    }

    /**
     * Set the endTime.
     *
     * @param endTime the endTime
     * @return the GetMetricsEventRateOptions builder
     */
    public GetMetricsEventRateOptionsBuilder endTime(Datetime endTime) {
      this.endTime = endTime;
      return this;
    }

    /**
     * Set the resultType.
     *
     * @param resultType the resultType
     * @return the GetMetricsEventRateOptions builder
     */
    public GetMetricsEventRateOptionsBuilder resultType(String resultType) {
      this.resultType = resultType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetMetricsEventRateOptions builder
     */
    public GetMetricsEventRateOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getMetricsQueryEvent options.
   */
  public class GetMetricsQueryEventOptions extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;
 
    /**
     * Gets the startTime.
     *
     * Metric is computed from data recorded after this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the startTime
     */
    public Datetime startTime() {
      return startTime;
    }
 
    /**
     * Gets the endTime.
     *
     * Metric is computed from data recorded before this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the endTime
     */
    public Datetime endTime() {
      return endTime;
    }
 
    /**
     * Gets the resultType.
     *
     * The type of result to consider when calculating the metric.
     *
     * @return the resultType
     */
    public String resultType() {
      return resultType;
    }

    private GetMetricsQueryEventOptions(GetMetricsQueryEventOptionsBuilder builder) {
      startTime = builder.startTime;
      endTime = builder.endTime;
      resultType = builder.resultType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetMetricsQueryEventOptions builder
     */
    public GetMetricsQueryEventOptionsBuilder newBuilder() {
      return new GetMetricsQueryEventOptionsBuilder(this);
    }

  }

  /**
   * GetMetricsQueryEventOptions Builder.
   */
  public class GetMetricsQueryEventOptionsBuilder extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;

    private GetMetricsQueryEventOptionsBuilder(GetMetricsQueryEventOptions getMetricsQueryEventOptions) {
      startTime = getMetricsQueryEventOptions.startTime;
      endTime = getMetricsQueryEventOptions.endTime;
      resultType = getMetricsQueryEventOptions.resultType;
      this.requestHeaders.putAll(getMetricsQueryEventOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetMetricsQueryEventOptionsBuilder() {
    }

    /**
     * Builds a GetMetricsQueryEventOptions.
     *
     * @return the getMetricsQueryEventOptions
     */
    public GetMetricsQueryEventOptions build() {
      return new GetMetricsQueryEventOptions(this);
    }

    /**
     * Set the startTime.
     *
     * @param startTime the startTime
     * @return the GetMetricsQueryEventOptions builder
     */
    public GetMetricsQueryEventOptionsBuilder startTime(Datetime startTime) {
      this.startTime = startTime;
      return this;
    }

    /**
     * Set the endTime.
     *
     * @param endTime the endTime
     * @return the GetMetricsQueryEventOptions builder
     */
    public GetMetricsQueryEventOptionsBuilder endTime(Datetime endTime) {
      this.endTime = endTime;
      return this;
    }

    /**
     * Set the resultType.
     *
     * @param resultType the resultType
     * @return the GetMetricsQueryEventOptions builder
     */
    public GetMetricsQueryEventOptionsBuilder resultType(String resultType) {
      this.resultType = resultType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetMetricsQueryEventOptions builder
     */
    public GetMetricsQueryEventOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getMetricsQueryNoResults options.
   */
  public class GetMetricsQueryNoResultsOptions extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;
 
    /**
     * Gets the startTime.
     *
     * Metric is computed from data recorded after this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the startTime
     */
    public Datetime startTime() {
      return startTime;
    }
 
    /**
     * Gets the endTime.
     *
     * Metric is computed from data recorded before this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the endTime
     */
    public Datetime endTime() {
      return endTime;
    }
 
    /**
     * Gets the resultType.
     *
     * The type of result to consider when calculating the metric.
     *
     * @return the resultType
     */
    public String resultType() {
      return resultType;
    }

    private GetMetricsQueryNoResultsOptions(GetMetricsQueryNoResultsOptionsBuilder builder) {
      startTime = builder.startTime;
      endTime = builder.endTime;
      resultType = builder.resultType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetMetricsQueryNoResultsOptions builder
     */
    public GetMetricsQueryNoResultsOptionsBuilder newBuilder() {
      return new GetMetricsQueryNoResultsOptionsBuilder(this);
    }

  }

  /**
   * GetMetricsQueryNoResultsOptions Builder.
   */
  public class GetMetricsQueryNoResultsOptionsBuilder extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;

    private GetMetricsQueryNoResultsOptionsBuilder(GetMetricsQueryNoResultsOptions getMetricsQueryNoResultsOptions) {
      startTime = getMetricsQueryNoResultsOptions.startTime;
      endTime = getMetricsQueryNoResultsOptions.endTime;
      resultType = getMetricsQueryNoResultsOptions.resultType;
      this.requestHeaders.putAll(getMetricsQueryNoResultsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetMetricsQueryNoResultsOptionsBuilder() {
    }

    /**
     * Builds a GetMetricsQueryNoResultsOptions.
     *
     * @return the getMetricsQueryNoResultsOptions
     */
    public GetMetricsQueryNoResultsOptions build() {
      return new GetMetricsQueryNoResultsOptions(this);
    }

    /**
     * Set the startTime.
     *
     * @param startTime the startTime
     * @return the GetMetricsQueryNoResultsOptions builder
     */
    public GetMetricsQueryNoResultsOptionsBuilder startTime(Datetime startTime) {
      this.startTime = startTime;
      return this;
    }

    /**
     * Set the endTime.
     *
     * @param endTime the endTime
     * @return the GetMetricsQueryNoResultsOptions builder
     */
    public GetMetricsQueryNoResultsOptionsBuilder endTime(Datetime endTime) {
      this.endTime = endTime;
      return this;
    }

    /**
     * Set the resultType.
     *
     * @param resultType the resultType
     * @return the GetMetricsQueryNoResultsOptions builder
     */
    public GetMetricsQueryNoResultsOptionsBuilder resultType(String resultType) {
      this.resultType = resultType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetMetricsQueryNoResultsOptions builder
     */
    public GetMetricsQueryNoResultsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getMetricsQuery options.
   */
  public class GetMetricsQueryOptions extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;
 
    /**
     * Gets the startTime.
     *
     * Metric is computed from data recorded after this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the startTime
     */
    public Datetime startTime() {
      return startTime;
    }
 
    /**
     * Gets the endTime.
     *
     * Metric is computed from data recorded before this timestamp; must be in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the endTime
     */
    public Datetime endTime() {
      return endTime;
    }
 
    /**
     * Gets the resultType.
     *
     * The type of result to consider when calculating the metric.
     *
     * @return the resultType
     */
    public String resultType() {
      return resultType;
    }

    private GetMetricsQueryOptions(GetMetricsQueryOptionsBuilder builder) {
      startTime = builder.startTime;
      endTime = builder.endTime;
      resultType = builder.resultType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetMetricsQueryOptions builder
     */
    public GetMetricsQueryOptionsBuilder newBuilder() {
      return new GetMetricsQueryOptionsBuilder(this);
    }

  }

  /**
   * GetMetricsQueryOptions Builder.
   */
  public class GetMetricsQueryOptionsBuilder extends IBMWatsonOptionsModel {
    private Datetime startTime;
    private Datetime endTime;
    private String resultType;

    private GetMetricsQueryOptionsBuilder(GetMetricsQueryOptions getMetricsQueryOptions) {
      startTime = getMetricsQueryOptions.startTime;
      endTime = getMetricsQueryOptions.endTime;
      resultType = getMetricsQueryOptions.resultType;
      this.requestHeaders.putAll(getMetricsQueryOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetMetricsQueryOptionsBuilder() {
    }

    /**
     * Builds a GetMetricsQueryOptions.
     *
     * @return the getMetricsQueryOptions
     */
    public GetMetricsQueryOptions build() {
      return new GetMetricsQueryOptions(this);
    }

    /**
     * Set the startTime.
     *
     * @param startTime the startTime
     * @return the GetMetricsQueryOptions builder
     */
    public GetMetricsQueryOptionsBuilder startTime(Datetime startTime) {
      this.startTime = startTime;
      return this;
    }

    /**
     * Set the endTime.
     *
     * @param endTime the endTime
     * @return the GetMetricsQueryOptions builder
     */
    public GetMetricsQueryOptionsBuilder endTime(Datetime endTime) {
      this.endTime = endTime;
      return this;
    }

    /**
     * Set the resultType.
     *
     * @param resultType the resultType
     * @return the GetMetricsQueryOptions builder
     */
    public GetMetricsQueryOptionsBuilder resultType(String resultType) {
      this.resultType = resultType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetMetricsQueryOptions builder
     */
    public GetMetricsQueryOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getMetricsQueryTokenEvent options.
   */
  public class GetMetricsQueryTokenEventOptions extends IBMWatsonOptionsModel {
    private Long count;
 
    /**
     * Gets the count.
     *
     * Number of results to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }

    private GetMetricsQueryTokenEventOptions(GetMetricsQueryTokenEventOptionsBuilder builder) {
      count = builder.count;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetMetricsQueryTokenEventOptions builder
     */
    public GetMetricsQueryTokenEventOptionsBuilder newBuilder() {
      return new GetMetricsQueryTokenEventOptionsBuilder(this);
    }

  }

  /**
   * GetMetricsQueryTokenEventOptions Builder.
   */
  public class GetMetricsQueryTokenEventOptionsBuilder extends IBMWatsonOptionsModel {
    private Long count;

    private GetMetricsQueryTokenEventOptionsBuilder(GetMetricsQueryTokenEventOptions getMetricsQueryTokenEventOptions) {
      count = getMetricsQueryTokenEventOptions.count;
      this.requestHeaders.putAll(getMetricsQueryTokenEventOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetMetricsQueryTokenEventOptionsBuilder() {
    }

    /**
     * Builds a GetMetricsQueryTokenEventOptions.
     *
     * @return the getMetricsQueryTokenEventOptions
     */
    public GetMetricsQueryTokenEventOptions build() {
      return new GetMetricsQueryTokenEventOptions(this);
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the GetMetricsQueryTokenEventOptions builder
     */
    public GetMetricsQueryTokenEventOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetMetricsQueryTokenEventOptions builder
     */
    public GetMetricsQueryTokenEventOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getStopwordListStatus options.
   */
  public class GetStopwordListStatusOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private GetStopwordListStatusOptions(GetStopwordListStatusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetStopwordListStatusOptions builder
     */
    public GetStopwordListStatusOptionsBuilder newBuilder() {
      return new GetStopwordListStatusOptionsBuilder(this);
    }

  }

  /**
   * GetStopwordListStatusOptions Builder.
   */
  public class GetStopwordListStatusOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private GetStopwordListStatusOptionsBuilder(GetStopwordListStatusOptions getStopwordListStatusOptions) {
      environmentId = getStopwordListStatusOptions.environmentId;
      collectionId = getStopwordListStatusOptions.collectionId;
      this.requestHeaders.putAll(getStopwordListStatusOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetStopwordListStatusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public GetStopwordListStatusOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a GetStopwordListStatusOptions.
     *
     * @return the getStopwordListStatusOptions
     */
    public GetStopwordListStatusOptions build() {
      return new GetStopwordListStatusOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetStopwordListStatusOptions builder
     */
    public GetStopwordListStatusOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the GetStopwordListStatusOptions builder
     */
    public GetStopwordListStatusOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetStopwordListStatusOptions builder
     */
    public GetStopwordListStatusOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getTokenizationDictionaryStatus options.
   */
  public class GetTokenizationDictionaryStatusOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private GetTokenizationDictionaryStatusOptions(GetTokenizationDictionaryStatusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetTokenizationDictionaryStatusOptions builder
     */
    public GetTokenizationDictionaryStatusOptionsBuilder newBuilder() {
      return new GetTokenizationDictionaryStatusOptionsBuilder(this);
    }

  }

  /**
   * GetTokenizationDictionaryStatusOptions Builder.
   */
  public class GetTokenizationDictionaryStatusOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private GetTokenizationDictionaryStatusOptionsBuilder(GetTokenizationDictionaryStatusOptions getTokenizationDictionaryStatusOptions) {
      environmentId = getTokenizationDictionaryStatusOptions.environmentId;
      collectionId = getTokenizationDictionaryStatusOptions.collectionId;
      this.requestHeaders.putAll(getTokenizationDictionaryStatusOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetTokenizationDictionaryStatusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public GetTokenizationDictionaryStatusOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a GetTokenizationDictionaryStatusOptions.
     *
     * @return the getTokenizationDictionaryStatusOptions
     */
    public GetTokenizationDictionaryStatusOptions build() {
      return new GetTokenizationDictionaryStatusOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetTokenizationDictionaryStatusOptions builder
     */
    public GetTokenizationDictionaryStatusOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the GetTokenizationDictionaryStatusOptions builder
     */
    public GetTokenizationDictionaryStatusOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetTokenizationDictionaryStatusOptions builder
     */
    public GetTokenizationDictionaryStatusOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getTrainingData options.
   */
  public class GetTrainingDataOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the queryId.
     *
     * The ID of the query used for training.
     *
     * @return the queryId
     */
    public String queryId() {
      return queryId;
    }

    private GetTrainingDataOptions(GetTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.queryId, 'queryId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      queryId = builder.queryId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetTrainingDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;

    private GetTrainingDataOptionsBuilder(GetTrainingDataOptions getTrainingDataOptions) {
      environmentId = getTrainingDataOptions.environmentId;
      collectionId = getTrainingDataOptions.collectionId;
      queryId = getTrainingDataOptions.queryId;
      this.requestHeaders.putAll(getTrainingDataOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.queryId = queryId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the queryId.
     *
     * @param queryId the queryId
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder queryId(String queryId) {
      this.queryId = queryId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getTrainingExample options.
   */
  public class GetTrainingExampleOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the queryId.
     *
     * The ID of the query used for training.
     *
     * @return the queryId
     */
    public String queryId() {
      return queryId;
    }
 
    /**
     * Gets the exampleId.
     *
     * The ID of the document as it is indexed.
     *
     * @return the exampleId
     */
    public String exampleId() {
      return exampleId;
    }

    private GetTrainingExampleOptions(GetTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.queryId, 'queryId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.exampleId, 'exampleId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      queryId = builder.queryId;
      exampleId = builder.exampleId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetTrainingExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;

    private GetTrainingExampleOptionsBuilder(GetTrainingExampleOptions getTrainingExampleOptions) {
      environmentId = getTrainingExampleOptions.environmentId;
      collectionId = getTrainingExampleOptions.collectionId;
      queryId = getTrainingExampleOptions.queryId;
      exampleId = getTrainingExampleOptions.exampleId;
      this.requestHeaders.putAll(getTrainingExampleOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.queryId = queryId;
      this.exampleId = exampleId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the queryId.
     *
     * @param queryId the queryId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder queryId(String queryId) {
      this.queryId = queryId;
      return this;
    }

    /**
     * Set the exampleId.
     *
     * @param exampleId the exampleId
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder exampleId(String exampleId) {
      this.exampleId = exampleId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
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
     * Gets the excludeTagsCompletely.
     *
     * @return the excludeTagsCompletely
     */
    @AuraEnabled
    public List<String> getExcludeTagsCompletely() {
      return exclude_tags_completely_serialized_name;
    }
 
    /**
     * Gets the excludeTagsKeepContent.
     *
     * @return the excludeTagsKeepContent
     */
    @AuraEnabled
    public List<String> getExcludeTagsKeepContent() {
      return exclude_tags_keep_content_serialized_name;
    }
 
    /**
     * Gets the keepContent.
     *
     * @return the keepContent
     */
    @AuraEnabled
    public XPathPatterns getKeepContent() {
      return keep_content_serialized_name;
    }
 
    /**
     * Gets the excludeContent.
     *
     * @return the excludeContent
     */
    @AuraEnabled
    public XPathPatterns getExcludeContent() {
      return exclude_content_serialized_name;
    }
 
    /**
     * Gets the keepTagAttributes.
     *
     * @return the keepTagAttributes
     */
    @AuraEnabled
    public List<String> getKeepTagAttributes() {
      return keep_tag_attributes_serialized_name;
    }
 
    /**
     * Gets the excludeTagAttributes.
     *
     * @return the excludeTagAttributes
     */
    @AuraEnabled
    public List<String> getExcludeTagAttributes() {
      return exclude_tag_attributes_serialized_name;
    }

    /**
     * Sets the excludeTagsCompletely.
     *
     * @param excludeTagsCompletely the new excludeTagsCompletely
     */
    public void setExcludeTagsCompletely(final List<String> excludeTagsCompletely) {
      this.exclude_tags_completely_serialized_name = excludeTagsCompletely;
    }

    /**
     * Sets the excludeTagsKeepContent.
     *
     * @param excludeTagsKeepContent the new excludeTagsKeepContent
     */
    public void setExcludeTagsKeepContent(final List<String> excludeTagsKeepContent) {
      this.exclude_tags_keep_content_serialized_name = excludeTagsKeepContent;
    }

    /**
     * Sets the keepContent.
     *
     * @param keepContent the new keepContent
     */
    public void setKeepContent(final XPathPatterns keepContent) {
      this.keep_content_serialized_name = keepContent;
    }

    /**
     * Sets the excludeContent.
     *
     * @param excludeContent the new excludeContent
     */
    public void setExcludeContent(final XPathPatterns excludeContent) {
      this.exclude_content_serialized_name = excludeContent;
    }

    /**
     * Sets the keepTagAttributes.
     *
     * @param keepTagAttributes the new keepTagAttributes
     */
    public void setKeepTagAttributes(final List<String> keepTagAttributes) {
      this.keep_tag_attributes_serialized_name = keepTagAttributes;
    }

    /**
     * Sets the excludeTagAttributes.
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

      // calling custom deserializer for keepContent
      XPathPatterns newKeepContent = (XPathPatterns) new XPathPatterns().deserialize(JSON.serialize(ret.getKeepContent()), (Map<String, Object>) jsonMap.get('keep_content_serialized_name'), XPathPatterns.class);
      ret.setKeepContent(newKeepContent);

      // calling custom deserializer for excludeContent
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
     * Gets the documents.
     *
     * Summary of the document usage statistics for the environment.
     *
     * @return the documents
     */
    @AuraEnabled
    public EnvironmentDocuments getDocuments() {
      return documents_serialized_name;
    }
 
    /**
     * Gets the diskUsage.
     *
     * Summary of the disk usage statistics for the environment.
     *
     * @return the diskUsage
     */
    @AuraEnabled
    public DiskUsage getDiskUsage() {
      return disk_usage_serialized_name;
    }
 
    /**
     * Gets the collections.
     *
     * Summary of the collection usage in the environment.
     *
     * @return the collections
     */
    @AuraEnabled
    public CollectionUsage getCollections() {
      return collections_serialized_name;
    }
 
    /**
     * Gets the memoryUsage.
     *
     * **Deprecated**: Summary of the memory usage statistics for this environment.
     *
     * @return the memoryUsage
     */
    @AuraEnabled
    public MemoryUsage getMemoryUsage() {
      return memory_usage_serialized_name;
    }

    /**
     * Sets the documents.
     *
     * @param documents the new documents
     */
    public void setDocuments(final EnvironmentDocuments documents) {
      this.documents_serialized_name = documents;
    }

    /**
     * Sets the diskUsage.
     *
     * @param diskUsage the new diskUsage
     */
    public void setDiskUsage(final DiskUsage diskUsage) {
      this.disk_usage_serialized_name = diskUsage;
    }

    /**
     * Sets the collections.
     *
     * @param collections the new collections
     */
    public void setCollections(final CollectionUsage collections) {
      this.collections_serialized_name = collections;
    }

    /**
     * Sets the memoryUsage.
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

      // calling custom deserializer for documents
      EnvironmentDocuments newDocuments = (EnvironmentDocuments) new EnvironmentDocuments().deserialize(JSON.serialize(ret.getDocuments()), (Map<String, Object>) jsonMap.get('documents_serialized_name'), EnvironmentDocuments.class);
      ret.setDocuments(newDocuments);

      // calling custom deserializer for diskUsage
      DiskUsage newDiskUsage = (DiskUsage) new DiskUsage().deserialize(JSON.serialize(ret.getDiskUsage()), (Map<String, Object>) jsonMap.get('disk_usage_serialized_name'), DiskUsage.class);
      ret.setDiskUsage(newDiskUsage);

      // calling custom deserializer for collections
      CollectionUsage newCollections = (CollectionUsage) new CollectionUsage().deserialize(JSON.serialize(ret.getCollections()), (Map<String, Object>) jsonMap.get('collections_serialized_name'), CollectionUsage.class);
      ret.setCollections(newCollections);

      // calling custom deserializer for memoryUsage
      MemoryUsage newMemoryUsage = (MemoryUsage) new MemoryUsage().deserialize(JSON.serialize(ret.getMemoryUsage()), (Map<String, Object>) jsonMap.get('memory_usage_serialized_name'), MemoryUsage.class);
      ret.setMemoryUsage(newMemoryUsage);

      return ret;
    }
  }

  /**
   * The listCollectionFields options.
   */
  public class ListCollectionFieldsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private ListCollectionFieldsOptions(ListCollectionFieldsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListCollectionFieldsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private ListCollectionFieldsOptionsBuilder(ListCollectionFieldsOptions listCollectionFieldsOptions) {
      environmentId = listCollectionFieldsOptions.environmentId;
      collectionId = listCollectionFieldsOptions.collectionId;
      this.requestHeaders.putAll(listCollectionFieldsOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The list of fetched fields.
   *
   * The fields are returned using a fully qualified name format, however, the format differs slightly from that used by
   * the query operations.
   *
   *   * Fields which contain nested JSON objects are assigned a type of "nested".
   *
   *   * Fields which belong to a nested object are prefixed with `.properties` (for example,
   * `warnings.properties.severity` means that the `warnings` object has a property called `severity`).
   *
   *   * Fields returned from the News collection are prefixed with `v{N}-fullnews-t3-{YEAR}.mappings` (for example,
   * `v5-fullnews-t3-2016.mappings.text.properties.author`).
   */
  public class ListCollectionFieldsResponse extends IBMWatsonResponseModel {
    private List<Field> fields_serialized_name;
 
    /**
     * Gets the fields.
     *
     * An array containing information about each field in the collections.
     *
     * @return the fields
     */
    @AuraEnabled
    public List<Field> getFields() {
      return fields_serialized_name;
    }

    /**
     * Sets the fields.
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

      // calling custom deserializer for fields
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
  public class ListCollectionsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the name.
     *
     * Find collections with the given name.
     *
     * @return the name
     */
    public String name() {
      return name;
    }

    private ListCollectionsOptions(ListCollectionsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      name = builder.name;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListCollectionsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;

    private ListCollectionsOptionsBuilder(ListCollectionsOptions listCollectionsOptions) {
      environmentId = listCollectionsOptions.environmentId;
      name = listCollectionsOptions.name;
      this.requestHeaders.putAll(listCollectionsOptions.requestHeaders());
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
      this.environmentId = environmentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * ListCollectionsResponse.
   */
  public class ListCollectionsResponse extends IBMWatsonResponseModel {
    private List<Collection> collections_serialized_name;
 
    /**
     * Gets the collections.
     *
     * An array containing information about each collection in the environment.
     *
     * @return the collections
     */
    @AuraEnabled
    public List<Collection> getCollections() {
      return collections_serialized_name;
    }

    /**
     * Sets the collections.
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

      // calling custom deserializer for collections
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
  public class ListConfigurationsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the name.
     *
     * Find configurations with the given name.
     *
     * @return the name
     */
    public String name() {
      return name;
    }

    private ListConfigurationsOptions(ListConfigurationsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      name = builder.name;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListConfigurationsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;

    private ListConfigurationsOptionsBuilder(ListConfigurationsOptions listConfigurationsOptions) {
      environmentId = listConfigurationsOptions.environmentId;
      name = listConfigurationsOptions.name;
      this.requestHeaders.putAll(listConfigurationsOptions.requestHeaders());
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
      this.environmentId = environmentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * ListConfigurationsResponse.
   */
  public class ListConfigurationsResponse extends IBMWatsonResponseModel {
    private List<Configuration> configurations_serialized_name;
 
    /**
     * Gets the configurations.
     *
     * An array of Configurations that are available for the service instance.
     *
     * @return the configurations
     */
    @AuraEnabled
    public List<Configuration> getConfigurations() {
      return configurations_serialized_name;
    }

    /**
     * Sets the configurations.
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

      // calling custom deserializer for configurations
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
   * The listCredentials options.
   */
  public class ListCredentialsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }

    private ListCredentialsOptions(ListCredentialsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListCredentialsOptions builder
     */
    public ListCredentialsOptionsBuilder newBuilder() {
      return new ListCredentialsOptionsBuilder(this);
    }

  }

  /**
   * ListCredentialsOptions Builder.
   */
  public class ListCredentialsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;

    private ListCredentialsOptionsBuilder(ListCredentialsOptions listCredentialsOptions) {
      environmentId = listCredentialsOptions.environmentId;
      this.requestHeaders.putAll(listCredentialsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListCredentialsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     */
    public ListCredentialsOptionsBuilder(String environmentId) {
      this.environmentId = environmentId;
    }

    /**
     * Builds a ListCredentialsOptions.
     *
     * @return the listCredentialsOptions
     */
    public ListCredentialsOptions build() {
      return new ListCredentialsOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListCredentialsOptions builder
     */
    public ListCredentialsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListCredentialsOptions builder
     */
    public ListCredentialsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listEnvironments options.
   */
  public class ListEnvironmentsOptions extends IBMWatsonOptionsModel {
    private String name;
 
    /**
     * Gets the name.
     *
     * Show only the environment with the given name.
     *
     * @return the name
     */
    public String name() {
      return name;
    }

    private ListEnvironmentsOptions(ListEnvironmentsOptionsBuilder builder) {
      name = builder.name;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListEnvironmentsOptionsBuilder extends IBMWatsonOptionsModel {
    private String name;

    private ListEnvironmentsOptionsBuilder(ListEnvironmentsOptions listEnvironmentsOptions) {
      name = listEnvironmentsOptions.name;
      this.requestHeaders.putAll(listEnvironmentsOptions.requestHeaders());
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
     * Set the name.
     *
     * @param name the name
     * @return the ListEnvironmentsOptions builder
     */
    public ListEnvironmentsOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListEnvironmentsOptions builder
     */
    public ListEnvironmentsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * ListEnvironmentsResponse.
   */
  public class ListEnvironmentsResponse extends IBMWatsonResponseModel {
    private List<Environment> environments_serialized_name;
 
    /**
     * Gets the environments.
     *
     * An array of [environments] that are available for the service instance.
     *
     * @return the environments
     */
    @AuraEnabled
    public List<Environment> getEnvironments() {
      return environments_serialized_name;
    }

    /**
     * Sets the environments.
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

      // calling custom deserializer for environments
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
   * The listExpansions options.
   */
  public class ListExpansionsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private ListExpansionsOptions(ListExpansionsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListExpansionsOptions builder
     */
    public ListExpansionsOptionsBuilder newBuilder() {
      return new ListExpansionsOptionsBuilder(this);
    }

  }

  /**
   * ListExpansionsOptions Builder.
   */
  public class ListExpansionsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private ListExpansionsOptionsBuilder(ListExpansionsOptions listExpansionsOptions) {
      environmentId = listExpansionsOptions.environmentId;
      collectionId = listExpansionsOptions.collectionId;
      this.requestHeaders.putAll(listExpansionsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListExpansionsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param collectionId the collectionId
     */
    public ListExpansionsOptionsBuilder(String environmentId, String collectionId) {
      this.environmentId = environmentId;
      this.collectionId = collectionId;
    }

    /**
     * Builds a ListExpansionsOptions.
     *
     * @return the listExpansionsOptions
     */
    public ListExpansionsOptions build() {
      return new ListExpansionsOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListExpansionsOptions builder
     */
    public ListExpansionsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the ListExpansionsOptions builder
     */
    public ListExpansionsOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListExpansionsOptions builder
     */
    public ListExpansionsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listFields options.
   */
  public class ListFieldsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private List<String> collectionIds;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionIds.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collectionIds
     */
    public List<String> collectionIds() {
      return collectionIds;
    }

    private ListFieldsOptions(ListFieldsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notNull(builder.collectionIds, 'collectionIds cannot be null');
      environmentId = builder.environmentId;
      collectionIds = builder.collectionIds;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListFieldsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private List<String> collectionIds;

    private ListFieldsOptionsBuilder(ListFieldsOptions listFieldsOptions) {
      environmentId = listFieldsOptions.environmentId;
      collectionIds = listFieldsOptions.collectionIds;
      this.requestHeaders.putAll(listFieldsOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionIds = collectionIds;
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
     * Adds an collectionIds to collectionIds.
     *
     * @param collectionIds the new collectionIds
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder addCollectionIds(String collectionIds) {
      IBMWatsonValidator.notNull(collectionIds, 'collectionIds cannot be null');
      if (this.collectionIds == null) {
        this.collectionIds = new List<String>();
      }
      this.collectionIds.add(collectionIds);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionIds.
     * Existing collectionIds will be replaced.
     *
     * @param collectionIds the collectionIds
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder collectionIds(List<String> collectionIds) {
      this.collectionIds = collectionIds;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listTrainingData options.
   */
  public class ListTrainingDataOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }

    private ListTrainingDataOptions(ListTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListTrainingDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;

    private ListTrainingDataOptionsBuilder(ListTrainingDataOptions listTrainingDataOptions) {
      environmentId = listTrainingDataOptions.environmentId;
      collectionId = listTrainingDataOptions.collectionId;
      this.requestHeaders.putAll(listTrainingDataOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listTrainingExamples options.
   */
  public class ListTrainingExamplesOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the queryId.
     *
     * The ID of the query used for training.
     *
     * @return the queryId
     */
    public String queryId() {
      return queryId;
    }

    private ListTrainingExamplesOptions(ListTrainingExamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.queryId, 'queryId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      queryId = builder.queryId;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListTrainingExamplesOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;

    private ListTrainingExamplesOptionsBuilder(ListTrainingExamplesOptions listTrainingExamplesOptions) {
      environmentId = listTrainingExamplesOptions.environmentId;
      collectionId = listTrainingExamplesOptions.collectionId;
      queryId = listTrainingExamplesOptions.queryId;
      this.requestHeaders.putAll(listTrainingExamplesOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.queryId = queryId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the queryId.
     *
     * @param queryId the queryId
     * @return the ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder queryId(String queryId) {
      this.queryId = queryId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListTrainingExamplesOptions builder
     */
    public ListTrainingExamplesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Object containing results that match the requested **logs** query.
   */
  public class LogQueryResponse extends IBMWatsonResponseModel {
    private Long matching_results_serialized_name;
    private List<LogQueryResponseResult> results_serialized_name;
 
    /**
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<LogQueryResponseResult> getResults() {
      return results_serialized_name;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<LogQueryResponseResult> results) {
      this.results_serialized_name = results;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogQueryResponse ret = (LogQueryResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results
      List<LogQueryResponseResult> newResults = new List<LogQueryResponseResult>();
      List<LogQueryResponseResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          LogQueryResponseResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          LogQueryResponseResult newItem = (LogQueryResponseResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), LogQueryResponseResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      return ret;
    }
  }

  /**
   * Individual result object for a **logs** query. Each object represents either a query to a Discovery collection or
   * an event that is associated with a query.
   */
  public class LogQueryResponseResult extends IBMWatsonGenericModel {
    private String environment_id_serialized_name;
    private String customer_id_serialized_name;
    private String document_type_serialized_name;
    private String natural_language_query_serialized_name;
    private LogQueryResponseResultDocuments document_results_serialized_name;
    private Datetime created_timestamp_serialized_name;
    private Datetime client_timestamp_serialized_name;
    private String query_id_serialized_name;
    private String session_token_serialized_name;
    private String collection_id_serialized_name;
    private Long display_rank_serialized_name;
    private String document_id_serialized_name;
    private String event_type_serialized_name;
    private String result_type_serialized_name;
 
    /**
     * Gets the environmentId.
     *
     * The environment ID that is associated with this log entry.
     *
     * @return the environmentId
     */
    @AuraEnabled
    public String getEnvironmentId() {
      return environment_id_serialized_name;
    }
 
    /**
     * Gets the customerId.
     *
     * The **customer_id** label that was specified in the header of the query or event API call that corresponds to
     * this log entry.
     *
     * @return the customerId
     */
    @AuraEnabled
    public String getCustomerId() {
      return customer_id_serialized_name;
    }
 
    /**
     * Gets the documentType.
     *
     * The type of log entry returned.
     *
     *  **query** indicates that the log represents the results of a call to the single collection **query** method.
     *
     *  **event** indicates that the log represents  a call to the **events** API.
     *
     * @return the documentType
     */
    @AuraEnabled
    public String getDocumentType() {
      return document_type_serialized_name;
    }
 
    /**
     * Gets the naturalLanguageQuery.
     *
     * The value of the **natural_language_query** query parameter that was used to create these results. Only returned
     * with logs of type **query**.
     *
     * **Note:** Other query parameters (such as **filter** or **deduplicate**) might  have been used with this query,
     * but are not recorded.
     *
     * @return the naturalLanguageQuery
     */
    @AuraEnabled
    public String getNaturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
 
    /**
     * Gets the documentResults.
     *
     * Object containing result information that was returned by the query used to create this log entry. Only returned
     * with logs of type `query`.
     *
     * @return the documentResults
     */
    @AuraEnabled
    public LogQueryResponseResultDocuments getDocumentResults() {
      return document_results_serialized_name;
    }
 
    /**
     * Gets the createdTimestamp.
     *
     * Date that the log result was created. Returned in `YYYY-MM-DDThh:mm:ssZ` format.
     *
     * @return the createdTimestamp
     */
    @AuraEnabled
    public Datetime getCreatedTimestamp() {
      return created_timestamp_serialized_name;
    }
 
    /**
     * Gets the clientTimestamp.
     *
     * Date specified by the user when recording an event. Returned in `YYYY-MM-DDThh:mm:ssZ` format. Only returned with
     * logs of type **event**.
     *
     * @return the clientTimestamp
     */
    @AuraEnabled
    public Datetime getClientTimestamp() {
      return client_timestamp_serialized_name;
    }
 
    /**
     * Gets the queryId.
     *
     * Identifier that corresponds to the **natural_language_query** string used in the original or associated query.
     * All **event** and **query** log entries that have the same original **natural_language_query** string also have
     * them same **query_id**. This field can be used to recall all **event** and **query** log results that have the
     * same original query (**event** logs do not contain the original **natural_language_query** field).
     *
     * @return the queryId
     */
    @AuraEnabled
    public String getQueryId() {
      return query_id_serialized_name;
    }
 
    /**
     * Gets the sessionToken.
     *
     * Unique identifier (within a 24-hour period) that identifies a single `query` log and any `event` logs that were
     * created for it.
     *
     * **Note:** If the exact same query is run at the exact same time on different days, the **session_token** for
     * those queries might be identical. However, the **created_timestamp** differs.
     *
     * **Note:** Session tokens are case sensitive. To avoid matching on session tokens that are identical except for
     * case, use the exact match operator (`::`) when you query for a specific session token.
     *
     * @return the sessionToken
     */
    @AuraEnabled
    public String getSessionToken() {
      return session_token_serialized_name;
    }
 
    /**
     * Gets the collectionId.
     *
     * The collection ID of the document associated with this event. Only returned with logs of type `event`.
     *
     * @return the collectionId
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }
 
    /**
     * Gets the displayRank.
     *
     * The original display rank of the document associated with this event. Only returned with logs of type `event`.
     *
     * @return the displayRank
     */
    @AuraEnabled
    public Long getDisplayRank() {
      return display_rank_serialized_name;
    }
 
    /**
     * Gets the documentId.
     *
     * The document ID of the document associated with this event. Only returned with logs of type `event`.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the eventType.
     *
     * The type of event that this object respresents. Possible values are
     *
     *  -  `query` the log of a query to a collection
     *
     *  -  `click` the result of a call to the **events** endpoint.
     *
     * @return the eventType
     */
    @AuraEnabled
    public String getEventType() {
      return event_type_serialized_name;
    }
 
    /**
     * Gets the resultType.
     *
     * The type of result that this **event** is associated with. Only returned with logs of type `event`.
     *
     * @return the resultType
     */
    @AuraEnabled
    public String getResultType() {
      return result_type_serialized_name;
    }

    /**
     * Sets the environmentId.
     *
     * @param environmentId the new environmentId
     */
    public void setEnvironmentId(final String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Sets the customerId.
     *
     * @param customerId the new customerId
     */
    public void setCustomerId(final String customerId) {
      this.customer_id_serialized_name = customerId;
    }

    /**
     * Sets the documentType.
     *
     * @param documentType the new documentType
     */
    public void setDocumentType(final String documentType) {
      this.document_type_serialized_name = documentType;
    }

    /**
     * Sets the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the new naturalLanguageQuery
     */
    public void setNaturalLanguageQuery(final String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
    }

    /**
     * Sets the documentResults.
     *
     * @param documentResults the new documentResults
     */
    public void setDocumentResults(final LogQueryResponseResultDocuments documentResults) {
      this.document_results_serialized_name = documentResults;
    }

    /**
     * Sets the createdTimestamp.
     *
     * @param createdTimestamp the new createdTimestamp
     */
    public void setCreatedTimestamp(final Datetime createdTimestamp) {
      this.created_timestamp_serialized_name = createdTimestamp;
    }

    /**
     * Sets the clientTimestamp.
     *
     * @param clientTimestamp the new clientTimestamp
     */
    public void setClientTimestamp(final Datetime clientTimestamp) {
      this.client_timestamp_serialized_name = clientTimestamp;
    }

    /**
     * Sets the queryId.
     *
     * @param queryId the new queryId
     */
    public void setQueryId(final String queryId) {
      this.query_id_serialized_name = queryId;
    }

    /**
     * Sets the sessionToken.
     *
     * @param sessionToken the new sessionToken
     */
    public void setSessionToken(final String sessionToken) {
      this.session_token_serialized_name = sessionToken;
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Sets the displayRank.
     *
     * @param displayRank the new displayRank
     */
    public void setDisplayRank(final long displayRank) {
      this.display_rank_serialized_name = displayRank;
    }

    /**
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the eventType.
     *
     * @param eventType the new eventType
     */
    public void setEventType(final String eventType) {
      this.event_type_serialized_name = eventType;
    }

    /**
     * Sets the resultType.
     *
     * @param resultType the new resultType
     */
    public void setResultType(final String resultType) {
      this.result_type_serialized_name = resultType;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogQueryResponseResult ret = (LogQueryResponseResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for documentResults
      LogQueryResponseResultDocuments newDocumentResults = (LogQueryResponseResultDocuments) new LogQueryResponseResultDocuments().deserialize(JSON.serialize(ret.getDocumentResults()), (Map<String, Object>) jsonMap.get('document_results_serialized_name'), LogQueryResponseResultDocuments.class);
      ret.setDocumentResults(newDocumentResults);

      return ret;
    }
  }

  /**
   * Object containing result information that was returned by the query used to create this log entry. Only returned
   * with logs of type `query`.
   */
  public class LogQueryResponseResultDocuments extends IBMWatsonGenericModel {
    private List<LogQueryResponseResultDocumentsResult> results_serialized_name;
    private Long count_serialized_name;
 
    /**
     * Gets the results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<LogQueryResponseResultDocumentsResult> getResults() {
      return results_serialized_name;
    }
 
    /**
     * Gets the count.
     *
     * The number of results returned in the query associate with this log.
     *
     * @return the count
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<LogQueryResponseResultDocumentsResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the count.
     *
     * @param count the new count
     */
    public void setCount(final long count) {
      this.count_serialized_name = count;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogQueryResponseResultDocuments ret = (LogQueryResponseResultDocuments) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results
      List<LogQueryResponseResultDocumentsResult> newResults = new List<LogQueryResponseResultDocumentsResult>();
      List<LogQueryResponseResultDocumentsResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          LogQueryResponseResultDocumentsResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          LogQueryResponseResultDocumentsResult newItem = (LogQueryResponseResultDocumentsResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), LogQueryResponseResultDocumentsResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      return ret;
    }
  }

  /**
   * Each object in the **results** array corresponds to an individual document returned by the original query.
   */
  public class LogQueryResponseResultDocumentsResult extends IBMWatsonGenericModel {
    private Long position_serialized_name;
    private String document_id_serialized_name;
    private Double score_serialized_name;
    private Double confidence_serialized_name;
    private String collection_id_serialized_name;
 
    /**
     * Gets the position.
     *
     * The result rank of this document. A position of `1` indicates that it was the first returned result.
     *
     * @return the position
     */
    @AuraEnabled
    public Long getPosition() {
      return position_serialized_name;
    }
 
    /**
     * Gets the documentId.
     *
     * The **document_id** of the document that this result represents.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the score.
     *
     * The raw score of this result. A higher score indicates a greater match to the query parameters.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * The confidence score of the result's analysis. A higher score indicating greater confidence.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
 
    /**
     * Gets the collectionId.
     *
     * The **collection_id** of the document represented by this result.
     *
     * @return the collectionId
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }

    /**
     * Sets the position.
     *
     * @param position the new position
     */
    public void setPosition(final long position) {
      this.position_serialized_name = position;
    }

    /**
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collection_id_serialized_name = collectionId;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogQueryResponseResultDocumentsResult ret = (LogQueryResponseResultDocumentsResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
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
     * Gets the usedBytes.
     *
     * **Deprecated**: Number of bytes used in the environment's memory capacity.
     *
     * @return the usedBytes
     */
    @AuraEnabled
    public Long getUsedBytes() {
      return used_bytes_serialized_name;
    }
 
    /**
     * Gets the totalBytes.
     *
     * **Deprecated**: Total number of bytes available in the environment's memory capacity.
     *
     * @return the totalBytes
     */
    @AuraEnabled
    public Long getTotalBytes() {
      return total_bytes_serialized_name;
    }
 
    /**
     * Gets the used.
     *
     * **Deprecated**: Amount of memory capacity used, in KB or GB format.
     *
     * @return the used
     */
    @AuraEnabled
    public String getUsed() {
      return used_serialized_name;
    }
 
    /**
     * Gets the total.
     *
     * **Deprecated**: Total amount of the environment's memory capacity, in KB or GB format.
     *
     * @return the total
     */
    @AuraEnabled
    public String getTotal() {
      return total_serialized_name;
    }
 
    /**
     * Gets the percentUsed.
     *
     * **Deprecated**: Percentage of the environment's memory capacity that is being used.
     *
     * @return the percentUsed
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
   * An aggregation analyzing log information for queries and events.
   */
  public class MetricAggregation extends IBMWatsonGenericModel {
    private String interval_serialized_name;
    private String event_type_serialized_name;
    private List<MetricAggregationResult> results_serialized_name;
 
    /**
     * Gets the interval.
     *
     * The measurement interval for this metric. Metric intervals are always 1 day (`1d`).
     *
     * @return the interval
     */
    @AuraEnabled
    public String getInterval() {
      return interval_serialized_name;
    }
 
    /**
     * Gets the eventType.
     *
     * The event type associated with this metric result. This field, when present, will always be `click`.
     *
     * @return the eventType
     */
    @AuraEnabled
    public String getEventType() {
      return event_type_serialized_name;
    }
 
    /**
     * Gets the results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<MetricAggregationResult> getResults() {
      return results_serialized_name;
    }

    /**
     * Sets the interval.
     *
     * @param interval the new interval
     */
    public void setInterval(final String interval) {
      this.interval_serialized_name = interval;
    }

    /**
     * Sets the eventType.
     *
     * @param eventType the new eventType
     */
    public void setEventType(final String eventType) {
      this.event_type_serialized_name = eventType;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<MetricAggregationResult> results) {
      this.results_serialized_name = results;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetricAggregation ret = (MetricAggregation) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results
      List<MetricAggregationResult> newResults = new List<MetricAggregationResult>();
      List<MetricAggregationResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          MetricAggregationResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          MetricAggregationResult newItem = (MetricAggregationResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), MetricAggregationResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      return ret;
    }
  }

  /**
   * Aggregation result data for the requested metric.
   */
  public class MetricAggregationResult extends IBMWatsonGenericModel {
    private Datetime key_as_string_serialized_name;
    private Long key_serialized_name;
    private Long matching_results_serialized_name;
    private Double event_rate_serialized_name;
 
    /**
     * Gets the keyAsString.
     *
     * Date in string form representing the start of this interval.
     *
     * @return the keyAsString
     */
    @AuraEnabled
    public Datetime getKeyAsString() {
      return key_as_string_serialized_name;
    }
 
    /**
     * Gets the key.
     *
     * Unix epoch time equivalent of the **key_as_string**, that represents the start of this interval.
     *
     * @return the key
     */
    @AuraEnabled
    public Long getKey() {
      return key_serialized_name;
    }
 
    /**
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the eventRate.
     *
     * The number of queries with associated events divided by the total number of queries for the interval. Only
     * returned with **event_rate** metrics.
     *
     * @return the eventRate
     */
    @AuraEnabled
    public Double getEventRate() {
      return event_rate_serialized_name;
    }

    /**
     * Sets the keyAsString.
     *
     * @param keyAsString the new keyAsString
     */
    public void setKeyAsString(final Datetime keyAsString) {
      this.key_as_string_serialized_name = keyAsString;
    }

    /**
     * Sets the key.
     *
     * @param key the new key
     */
    public void setKey(final long key) {
      this.key_serialized_name = key;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the eventRate.
     *
     * @param eventRate the new eventRate
     */
    public void setEventRate(final Double eventRate) {
      this.event_rate_serialized_name = eventRate;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetricAggregationResult ret = (MetricAggregationResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The response generated from a call to a **metrics** method.
   */
  public class MetricResponse extends IBMWatsonResponseModel {
    private List<MetricAggregation> aggregations_serialized_name;
 
    /**
     * Gets the aggregations.
     *
     * @return the aggregations
     */
    @AuraEnabled
    public List<MetricAggregation> getAggregations() {
      return aggregations_serialized_name;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<MetricAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetricResponse ret = (MetricResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for aggregations
      List<MetricAggregation> newAggregations = new List<MetricAggregation>();
      List<MetricAggregation> deserializedAggregations = ret.getAggregations();
      if (deserializedAggregations != null) {
        for (Integer i = 0; i < deserializedAggregations.size(); i++) {
          MetricAggregation currentItem = ret.getAggregations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aggregations_serialized_name');
          MetricAggregation newItem = (MetricAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), MetricAggregation.class);
          newAggregations.add(newItem);
        }
        ret.setAggregations(newAggregations);
      }

      return ret;
    }
  }

  /**
   * An aggregation analyzing log information for queries and events.
   */
  public class MetricTokenAggregation extends IBMWatsonGenericModel {
    private String event_type_serialized_name;
    private List<MetricTokenAggregationResult> results_serialized_name;
 
    /**
     * Gets the eventType.
     *
     * The event type associated with this metric result. This field, when present, will always be `click`.
     *
     * @return the eventType
     */
    @AuraEnabled
    public String getEventType() {
      return event_type_serialized_name;
    }
 
    /**
     * Gets the results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<MetricTokenAggregationResult> getResults() {
      return results_serialized_name;
    }

    /**
     * Sets the eventType.
     *
     * @param eventType the new eventType
     */
    public void setEventType(final String eventType) {
      this.event_type_serialized_name = eventType;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<MetricTokenAggregationResult> results) {
      this.results_serialized_name = results;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetricTokenAggregation ret = (MetricTokenAggregation) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results
      List<MetricTokenAggregationResult> newResults = new List<MetricTokenAggregationResult>();
      List<MetricTokenAggregationResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          MetricTokenAggregationResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          MetricTokenAggregationResult newItem = (MetricTokenAggregationResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), MetricTokenAggregationResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      return ret;
    }
  }

  /**
   * Aggregation result data for the requested metric.
   */
  public class MetricTokenAggregationResult extends IBMWatsonGenericModel {
    private String key_serialized_name;
    private Long matching_results_serialized_name;
    private Double event_rate_serialized_name;
 
    /**
     * Gets the key.
     *
     * The content of the **natural_language_query** parameter used in the query that this result represents.
     *
     * @return the key
     */
    @AuraEnabled
    public String getKey() {
      return key_serialized_name;
    }
 
    /**
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the eventRate.
     *
     * The number of queries with associated events divided by the total number of queries currently stored (queries and
     * events are stored in the log for 30 days).
     *
     * @return the eventRate
     */
    @AuraEnabled
    public Double getEventRate() {
      return event_rate_serialized_name;
    }

    /**
     * Sets the key.
     *
     * @param key the new key
     */
    public void setKey(final String key) {
      this.key_serialized_name = key;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the eventRate.
     *
     * @param eventRate the new eventRate
     */
    public void setEventRate(final Double eventRate) {
      this.event_rate_serialized_name = eventRate;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetricTokenAggregationResult ret = (MetricTokenAggregationResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The response generated from a call to a **metrics** method that evaluates tokens.
   */
  public class MetricTokenResponse extends IBMWatsonResponseModel {
    private List<MetricTokenAggregation> aggregations_serialized_name;
 
    /**
     * Gets the aggregations.
     *
     * @return the aggregations
     */
    @AuraEnabled
    public List<MetricTokenAggregation> getAggregations() {
      return aggregations_serialized_name;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<MetricTokenAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetricTokenResponse ret = (MetricTokenResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for aggregations
      List<MetricTokenAggregation> newAggregations = new List<MetricTokenAggregation>();
      List<MetricTokenAggregation> deserializedAggregations = ret.getAggregations();
      if (deserializedAggregations != null) {
        for (Integer i = 0; i < deserializedAggregations.size(); i++) {
          MetricTokenAggregation currentItem = ret.getAggregations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aggregations_serialized_name');
          MetricTokenAggregation newItem = (MetricTokenAggregation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), MetricTokenAggregation.class);
          newAggregations.add(newItem);
        }
        ret.setAggregations(newAggregations);
      }

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
   * An object specifiying the concepts enrichment and related parameters.
   */
  public class NluEnrichmentConcepts extends IBMWatsonGenericModel {
    private Long limit_serialized_name;
 
    /**
     * Gets the xlimit.
     *
     * The maximum number of concepts enrichments to extact from each instance of the specified field.
     *
     * @return the xlimit
     */
    @AuraEnabled
    public Long getXlimit() {
      return limit_serialized_name;
    }

    /**
     * Sets the xlimit.
     *
     * @param xlimit the new xlimit
     */
    public void setXlimit(final long xlimit) {
      this.limit_serialized_name = xlimit;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentConcepts ret = (NluEnrichmentConcepts) super.deserialize(jsonString, jsonMap, classType);

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
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public NluEnrichmentEmotion() { }
 
    /**
     * Gets the document.
     *
     * When `true`, emotion detection is performed on the entire field.
     *
     * @return the document
     */
    @AuraEnabled
    public Boolean getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the targets.
     *
     * A comma-separated list of target strings that will have any associated emotions detected.
     *
     * @return the targets
     */
    @AuraEnabled
    public List<String> getTargets() {
      return targets_serialized_name;
    }
  
    private NluEnrichmentEmotion(NluEnrichmentEmotionBuilder builder) {
      document_serialized_name = builder.document;
      targets_serialized_name = builder.targets;
    }

    /**
     * New builder.
     *
     * @return a NluEnrichmentEmotion builder
     */
    public NluEnrichmentEmotionBuilder newBuilder() {
      return new NluEnrichmentEmotionBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentEmotion ret = (NluEnrichmentEmotion) super.deserialize(jsonString, jsonMap, classType);
      NluEnrichmentEmotionBuilder retBuilder = ret.newBuilder();

      return retBuilder.build();
    }
  }

  /**
   * NluEnrichmentEmotion Builder.
   */
  public class NluEnrichmentEmotionBuilder {
    private Boolean document;
    private List<String> targets;

    private NluEnrichmentEmotionBuilder(NluEnrichmentEmotion nluEnrichmentEmotion) {
      document = nluEnrichmentEmotion.document_serialized_name;
      targets = nluEnrichmentEmotion.targets_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public NluEnrichmentEmotionBuilder() {
    }

    /**
     * Builds a NluEnrichmentEmotion.
     *
     * @return the nluEnrichmentEmotion
     */
    public NluEnrichmentEmotion build() {
      return new NluEnrichmentEmotion(this);
    }

    /**
     * Adds an targets to targets.
     *
     * @param targets the new targets
     * @return the NluEnrichmentEmotion builder
     */
    public NluEnrichmentEmotionBuilder addTargets(String targets) {
      IBMWatsonValidator.notNull(targets, 'targets cannot be null');
      if (this.targets == null) {
        this.targets = new List<String>();
      }
      this.targets.add(targets);
      return this;
    }

    /**
     * Set the document.
     *
     * @param document the document
     * @return the NluEnrichmentEmotion builder
     */
    public NluEnrichmentEmotionBuilder document(Boolean document) {
      this.document = document;
      return this;
    }

    /**
     * Set the targets.
     * Existing targets will be replaced.
     *
     * @param targets the targets
     * @return the NluEnrichmentEmotion builder
     */
    public NluEnrichmentEmotionBuilder targets(List<String> targets) {
      this.targets = targets;
      return this;
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
    private Boolean sentence_locations_serialized_name;
    private String model_serialized_name;

    /**
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public NluEnrichmentEntities() { }
 
    /**
     * Gets the sentiment.
     *
     * When `true`, sentiment analysis of entities will be performed on the specified field.
     *
     * @return the sentiment
     */
    @AuraEnabled
    public Boolean getSentiment() {
      return sentiment_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * When `true`, emotion detection of entities will be performed on the specified field.
     *
     * @return the emotion
     */
    @AuraEnabled
    public Boolean getEmotion() {
      return emotion_serialized_name;
    }
 
    /**
     * Gets the xlimit.
     *
     * The maximum number of entities to extract for each instance of the specified field.
     *
     * @return the xlimit
     */
    @AuraEnabled
    public Long getXlimit() {
      return limit_serialized_name;
    }
 
    /**
     * Gets the mentions.
     *
     * When `true`, the number of mentions of each identified entity is recorded. The default is `false`.
     *
     * @return the mentions
     */
    @AuraEnabled
    public Boolean getMentions() {
      return mentions_serialized_name;
    }
 
    /**
     * Gets the mentionTypes.
     *
     * When `true`, the types of mentions for each idetifieid entity is recorded. The default is `false`.
     *
     * @return the mentionTypes
     */
    @AuraEnabled
    public Boolean getMentionTypes() {
      return mention_types_serialized_name;
    }
 
    /**
     * Gets the sentenceLocations.
     *
     * When `true`, a list of sentence locations for each instance of each identified entity is recorded. The default is
     * `false`.
     *
     * @return the sentenceLocations
     */
    @AuraEnabled
    public Boolean getSentenceLocations() {
      return sentence_locations_serialized_name;
    }
 
    /**
     * Gets the model.
     *
     * The enrichement model to use with entity extraction. May be a custom model provided by Watson Knowledge Studio,
     * the public model for use with Knowledge Graph `en-news`, or the default public model `alchemy`.
     *
     * @return the model
     */
    @AuraEnabled
    public String getModel() {
      return model_serialized_name;
    }
  
    private NluEnrichmentEntities(NluEnrichmentEntitiesBuilder builder) {
      sentiment_serialized_name = builder.sentiment;
      emotion_serialized_name = builder.emotion;
      limit_serialized_name = builder.xlimit;
      mentions_serialized_name = builder.mentions;
      mention_types_serialized_name = builder.mentionTypes;
      sentence_locations_serialized_name = builder.sentenceLocations;
      model_serialized_name = builder.model;
    }

    /**
     * New builder.
     *
     * @return a NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder newBuilder() {
      return new NluEnrichmentEntitiesBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentEntities ret = (NluEnrichmentEntities) super.deserialize(jsonString, jsonMap, classType);
      NluEnrichmentEntitiesBuilder retBuilder = ret.newBuilder();

      return retBuilder.build();
    }
  }

  /**
   * NluEnrichmentEntities Builder.
   */
  public class NluEnrichmentEntitiesBuilder {
    private Boolean sentiment;
    private Boolean emotion;
    private Long xlimit;
    private Boolean mentions;
    private Boolean mentionTypes;
    private Boolean sentenceLocations;
    private String model;

    private NluEnrichmentEntitiesBuilder(NluEnrichmentEntities nluEnrichmentEntities) {
      sentiment = nluEnrichmentEntities.sentiment_serialized_name;
      emotion = nluEnrichmentEntities.emotion_serialized_name;
      xlimit = nluEnrichmentEntities.limit_serialized_name;
      mentions = nluEnrichmentEntities.mentions_serialized_name;
      mentionTypes = nluEnrichmentEntities.mention_types_serialized_name;
      sentenceLocations = nluEnrichmentEntities.sentence_locations_serialized_name;
      model = nluEnrichmentEntities.model_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public NluEnrichmentEntitiesBuilder() {
    }

    /**
     * Builds a NluEnrichmentEntities.
     *
     * @return the nluEnrichmentEntities
     */
    public NluEnrichmentEntities build() {
      return new NluEnrichmentEntities(this);
    }

    /**
     * Set the sentiment.
     *
     * @param sentiment the sentiment
     * @return the NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder sentiment(Boolean sentiment) {
      this.sentiment = sentiment;
      return this;
    }

    /**
     * Set the emotion.
     *
     * @param emotion the emotion
     * @return the NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder emotion(Boolean emotion) {
      this.emotion = emotion;
      return this;
    }

    /**
     * Set the xlimit.
     *
     * @param xlimit the xlimit
     * @return the NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder xlimit(Long xlimit) {
      this.xlimit = xlimit;
      return this;
    }

    /**
     * Set the mentions.
     *
     * @param mentions the mentions
     * @return the NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder mentions(Boolean mentions) {
      this.mentions = mentions;
      return this;
    }

    /**
     * Set the mentionTypes.
     *
     * @param mentionTypes the mentionTypes
     * @return the NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder mentionTypes(Boolean mentionTypes) {
      this.mentionTypes = mentionTypes;
      return this;
    }

    /**
     * Set the sentenceLocations.
     *
     * @param sentenceLocations the sentenceLocations
     * @return the NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder sentenceLocations(Boolean sentenceLocations) {
      this.sentenceLocations = sentenceLocations;
      return this;
    }

    /**
     * Set the model.
     *
     * @param model the model
     * @return the NluEnrichmentEntities builder
     */
    public NluEnrichmentEntitiesBuilder model(String model) {
      this.model = model;
      return this;
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
    private NluEnrichmentConcepts concepts_serialized_name;

    /**
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public NluEnrichmentFeatures() { }
 
    /**
     * Gets the keywords.
     *
     * An object specifying the Keyword enrichment and related parameters.
     *
     * @return the keywords
     */
    @AuraEnabled
    public NluEnrichmentKeywords getKeywords() {
      return keywords_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * An object speficying the Entities enrichment and related parameters.
     *
     * @return the entities
     */
    @AuraEnabled
    public NluEnrichmentEntities getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the sentiment.
     *
     * An object specifying the sentiment extraction enrichment and related parameters.
     *
     * @return the sentiment
     */
    @AuraEnabled
    public NluEnrichmentSentiment getSentiment() {
      return sentiment_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * An object specifying the emotion detection enrichment and related parameters.
     *
     * @return the emotion
     */
    @AuraEnabled
    public NluEnrichmentEmotion getEmotion() {
      return emotion_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * An object that indicates the Categories enrichment will be applied to the specified field.
     *
     * @return the categories
     */
    @AuraEnabled
    public NluEnrichmentCategories getCategories() {
      return categories_serialized_name;
    }
 
    /**
     * Gets the semanticRoles.
     *
     * An object specifiying the semantic roles enrichment and related parameters.
     *
     * @return the semanticRoles
     */
    @AuraEnabled
    public NluEnrichmentSemanticRoles getSemanticRoles() {
      return semantic_roles_serialized_name;
    }
 
    /**
     * Gets the relations.
     *
     * An object specifying the relations enrichment and related parameters.
     *
     * @return the relations
     */
    @AuraEnabled
    public NluEnrichmentRelations getRelations() {
      return relations_serialized_name;
    }
 
    /**
     * Gets the concepts.
     *
     * An object specifiying the concepts enrichment and related parameters.
     *
     * @return the concepts
     */
    @AuraEnabled
    public NluEnrichmentConcepts getConcepts() {
      return concepts_serialized_name;
    }
  
    private NluEnrichmentFeatures(NluEnrichmentFeaturesBuilder builder) {
      keywords_serialized_name = builder.keywords;
      entities_serialized_name = builder.entities;
      sentiment_serialized_name = builder.sentiment;
      emotion_serialized_name = builder.emotion;
      categories_serialized_name = builder.categories;
      semantic_roles_serialized_name = builder.semanticRoles;
      relations_serialized_name = builder.relations;
      concepts_serialized_name = builder.concepts;
    }

    /**
     * New builder.
     *
     * @return a NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder newBuilder() {
      return new NluEnrichmentFeaturesBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentFeatures ret = (NluEnrichmentFeatures) super.deserialize(jsonString, jsonMap, classType);
      NluEnrichmentFeaturesBuilder retBuilder = ret.newBuilder();

      // calling custom deserializer for keywords
      NluEnrichmentKeywords newKeywords = (NluEnrichmentKeywords) new NluEnrichmentKeywords().deserialize(JSON.serialize(ret.getKeywords()), (Map<String, Object>) jsonMap.get('keywords_serialized_name'), NluEnrichmentKeywords.class);
      retBuilder.keywords(newKeywords);

      // calling custom deserializer for entities
      NluEnrichmentEntities newEntities = (NluEnrichmentEntities) new NluEnrichmentEntities().deserialize(JSON.serialize(ret.getEntities()), (Map<String, Object>) jsonMap.get('entities_serialized_name'), NluEnrichmentEntities.class);
      retBuilder.entities(newEntities);

      // calling custom deserializer for sentiment
      NluEnrichmentSentiment newSentiment = (NluEnrichmentSentiment) new NluEnrichmentSentiment().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), NluEnrichmentSentiment.class);
      retBuilder.sentiment(newSentiment);

      // calling custom deserializer for emotion
      NluEnrichmentEmotion newEmotion = (NluEnrichmentEmotion) new NluEnrichmentEmotion().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), NluEnrichmentEmotion.class);
      retBuilder.emotion(newEmotion);

      // calling custom deserializer for categories
      NluEnrichmentCategories newCategories = (NluEnrichmentCategories) new NluEnrichmentCategories().deserialize(JSON.serialize(ret.getCategories()), (Map<String, Object>) jsonMap.get('categories_serialized_name'), NluEnrichmentCategories.class);
      retBuilder.categories(newCategories);

      // calling custom deserializer for semanticRoles
      NluEnrichmentSemanticRoles newSemanticRoles = (NluEnrichmentSemanticRoles) new NluEnrichmentSemanticRoles().deserialize(JSON.serialize(ret.getSemanticRoles()), (Map<String, Object>) jsonMap.get('semantic_roles_serialized_name'), NluEnrichmentSemanticRoles.class);
      retBuilder.semanticRoles(newSemanticRoles);

      // calling custom deserializer for relations
      NluEnrichmentRelations newRelations = (NluEnrichmentRelations) new NluEnrichmentRelations().deserialize(JSON.serialize(ret.getRelations()), (Map<String, Object>) jsonMap.get('relations_serialized_name'), NluEnrichmentRelations.class);
      retBuilder.relations(newRelations);

      // calling custom deserializer for concepts
      NluEnrichmentConcepts newConcepts = (NluEnrichmentConcepts) new NluEnrichmentConcepts().deserialize(JSON.serialize(ret.getConcepts()), (Map<String, Object>) jsonMap.get('concepts_serialized_name'), NluEnrichmentConcepts.class);
      retBuilder.concepts(newConcepts);

      return retBuilder.build();
    }
  }

  /**
   * NluEnrichmentFeatures Builder.
   */
  public class NluEnrichmentFeaturesBuilder {
    private NluEnrichmentKeywords keywords;
    private NluEnrichmentEntities entities;
    private NluEnrichmentSentiment sentiment;
    private NluEnrichmentEmotion emotion;
    private NluEnrichmentCategories categories;
    private NluEnrichmentSemanticRoles semanticRoles;
    private NluEnrichmentRelations relations;
    private NluEnrichmentConcepts concepts;

    private NluEnrichmentFeaturesBuilder(NluEnrichmentFeatures nluEnrichmentFeatures) {
      keywords = nluEnrichmentFeatures.keywords_serialized_name;
      entities = nluEnrichmentFeatures.entities_serialized_name;
      sentiment = nluEnrichmentFeatures.sentiment_serialized_name;
      emotion = nluEnrichmentFeatures.emotion_serialized_name;
      categories = nluEnrichmentFeatures.categories_serialized_name;
      semanticRoles = nluEnrichmentFeatures.semantic_roles_serialized_name;
      relations = nluEnrichmentFeatures.relations_serialized_name;
      concepts = nluEnrichmentFeatures.concepts_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public NluEnrichmentFeaturesBuilder() {
    }

    /**
     * Builds a NluEnrichmentFeatures.
     *
     * @return the nluEnrichmentFeatures
     */
    public NluEnrichmentFeatures build() {
      return new NluEnrichmentFeatures(this);
    }

    /**
     * Set the keywords.
     *
     * @param keywords the keywords
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder keywords(NluEnrichmentKeywords keywords) {
      this.keywords = keywords;
      return this;
    }

    /**
     * Set the entities.
     *
     * @param entities the entities
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder entities(NluEnrichmentEntities entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the sentiment.
     *
     * @param sentiment the sentiment
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder sentiment(NluEnrichmentSentiment sentiment) {
      this.sentiment = sentiment;
      return this;
    }

    /**
     * Set the emotion.
     *
     * @param emotion the emotion
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder emotion(NluEnrichmentEmotion emotion) {
      this.emotion = emotion;
      return this;
    }

    /**
     * Set the categories.
     *
     * @param categories the categories
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder categories(NluEnrichmentCategories categories) {
      this.categories = categories;
      return this;
    }

    /**
     * Set the semanticRoles.
     *
     * @param semanticRoles the semanticRoles
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder semanticRoles(NluEnrichmentSemanticRoles semanticRoles) {
      this.semanticRoles = semanticRoles;
      return this;
    }

    /**
     * Set the relations.
     *
     * @param relations the relations
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder relations(NluEnrichmentRelations relations) {
      this.relations = relations;
      return this;
    }

    /**
     * Set the concepts.
     *
     * @param concepts the concepts
     * @return the NluEnrichmentFeatures builder
     */
    public NluEnrichmentFeaturesBuilder concepts(NluEnrichmentConcepts concepts) {
      this.concepts = concepts;
      return this;
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
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public NluEnrichmentKeywords() { }
 
    /**
     * Gets the sentiment.
     *
     * When `true`, sentiment analysis of keywords will be performed on the specified field.
     *
     * @return the sentiment
     */
    @AuraEnabled
    public Boolean getSentiment() {
      return sentiment_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * When `true`, emotion detection of keywords will be performed on the specified field.
     *
     * @return the emotion
     */
    @AuraEnabled
    public Boolean getEmotion() {
      return emotion_serialized_name;
    }
 
    /**
     * Gets the xlimit.
     *
     * The maximum number of keywords to extract for each instance of the specified field.
     *
     * @return the xlimit
     */
    @AuraEnabled
    public Long getXlimit() {
      return limit_serialized_name;
    }
  
    private NluEnrichmentKeywords(NluEnrichmentKeywordsBuilder builder) {
      sentiment_serialized_name = builder.sentiment;
      emotion_serialized_name = builder.emotion;
      limit_serialized_name = builder.xlimit;
    }

    /**
     * New builder.
     *
     * @return a NluEnrichmentKeywords builder
     */
    public NluEnrichmentKeywordsBuilder newBuilder() {
      return new NluEnrichmentKeywordsBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentKeywords ret = (NluEnrichmentKeywords) super.deserialize(jsonString, jsonMap, classType);
      NluEnrichmentKeywordsBuilder retBuilder = ret.newBuilder();

      return retBuilder.build();
    }
  }

  /**
   * NluEnrichmentKeywords Builder.
   */
  public class NluEnrichmentKeywordsBuilder {
    private Boolean sentiment;
    private Boolean emotion;
    private Long xlimit;

    private NluEnrichmentKeywordsBuilder(NluEnrichmentKeywords nluEnrichmentKeywords) {
      sentiment = nluEnrichmentKeywords.sentiment_serialized_name;
      emotion = nluEnrichmentKeywords.emotion_serialized_name;
      xlimit = nluEnrichmentKeywords.limit_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public NluEnrichmentKeywordsBuilder() {
    }

    /**
     * Builds a NluEnrichmentKeywords.
     *
     * @return the nluEnrichmentKeywords
     */
    public NluEnrichmentKeywords build() {
      return new NluEnrichmentKeywords(this);
    }

    /**
     * Set the sentiment.
     *
     * @param sentiment the sentiment
     * @return the NluEnrichmentKeywords builder
     */
    public NluEnrichmentKeywordsBuilder sentiment(Boolean sentiment) {
      this.sentiment = sentiment;
      return this;
    }

    /**
     * Set the emotion.
     *
     * @param emotion the emotion
     * @return the NluEnrichmentKeywords builder
     */
    public NluEnrichmentKeywordsBuilder emotion(Boolean emotion) {
      this.emotion = emotion;
      return this;
    }

    /**
     * Set the xlimit.
     *
     * @param xlimit the xlimit
     * @return the NluEnrichmentKeywords builder
     */
    public NluEnrichmentKeywordsBuilder xlimit(Long xlimit) {
      this.xlimit = xlimit;
      return this;
    }
  }

  /**
   * An object specifying the relations enrichment and related parameters.
   */
  public class NluEnrichmentRelations extends IBMWatsonGenericModel {
    private String model_serialized_name;
 
    /**
     * Gets the model.
     *
     * *For use with `natural_language_understanding` enrichments only.* The enrichement model to use with relationship
     * extraction. May be a custom model provided by Watson Knowledge Studio, the public model for use with Knowledge
     * Graph `en-news`, the default is`en-news`.
     *
     * @return the model
     */
    @AuraEnabled
    public String getModel() {
      return model_serialized_name;
    }

    /**
     * Sets the model.
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
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public NluEnrichmentSemanticRoles() { }
 
    /**
     * Gets the entities.
     *
     * When `true`, entities are extracted from the identified sentence parts.
     *
     * @return the entities
     */
    @AuraEnabled
    public Boolean getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the keywords.
     *
     * When `true`, keywords are extracted from the identified sentence parts.
     *
     * @return the keywords
     */
    @AuraEnabled
    public Boolean getKeywords() {
      return keywords_serialized_name;
    }
 
    /**
     * Gets the xlimit.
     *
     * The maximum number of semantic roles enrichments to extact from each instance of the specified field.
     *
     * @return the xlimit
     */
    @AuraEnabled
    public Long getXlimit() {
      return limit_serialized_name;
    }
  
    private NluEnrichmentSemanticRoles(NluEnrichmentSemanticRolesBuilder builder) {
      entities_serialized_name = builder.entities;
      keywords_serialized_name = builder.keywords;
      limit_serialized_name = builder.xlimit;
    }

    /**
     * New builder.
     *
     * @return a NluEnrichmentSemanticRoles builder
     */
    public NluEnrichmentSemanticRolesBuilder newBuilder() {
      return new NluEnrichmentSemanticRolesBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentSemanticRoles ret = (NluEnrichmentSemanticRoles) super.deserialize(jsonString, jsonMap, classType);
      NluEnrichmentSemanticRolesBuilder retBuilder = ret.newBuilder();

      return retBuilder.build();
    }
  }

  /**
   * NluEnrichmentSemanticRoles Builder.
   */
  public class NluEnrichmentSemanticRolesBuilder {
    private Boolean entities;
    private Boolean keywords;
    private Long xlimit;

    private NluEnrichmentSemanticRolesBuilder(NluEnrichmentSemanticRoles nluEnrichmentSemanticRoles) {
      entities = nluEnrichmentSemanticRoles.entities_serialized_name;
      keywords = nluEnrichmentSemanticRoles.keywords_serialized_name;
      xlimit = nluEnrichmentSemanticRoles.limit_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public NluEnrichmentSemanticRolesBuilder() {
    }

    /**
     * Builds a NluEnrichmentSemanticRoles.
     *
     * @return the nluEnrichmentSemanticRoles
     */
    public NluEnrichmentSemanticRoles build() {
      return new NluEnrichmentSemanticRoles(this);
    }

    /**
     * Set the entities.
     *
     * @param entities the entities
     * @return the NluEnrichmentSemanticRoles builder
     */
    public NluEnrichmentSemanticRolesBuilder entities(Boolean entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the keywords.
     *
     * @param keywords the keywords
     * @return the NluEnrichmentSemanticRoles builder
     */
    public NluEnrichmentSemanticRolesBuilder keywords(Boolean keywords) {
      this.keywords = keywords;
      return this;
    }

    /**
     * Set the xlimit.
     *
     * @param xlimit the xlimit
     * @return the NluEnrichmentSemanticRoles builder
     */
    public NluEnrichmentSemanticRolesBuilder xlimit(Long xlimit) {
      this.xlimit = xlimit;
      return this;
    }
  }

  /**
   * An object specifying the sentiment extraction enrichment and related parameters.
   */
  public class NluEnrichmentSentiment extends IBMWatsonGenericModel {
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;

    /**
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public NluEnrichmentSentiment() { }
 
    /**
     * Gets the document.
     *
     * When `true`, sentiment analysis is performed on the entire field.
     *
     * @return the document
     */
    @AuraEnabled
    public Boolean getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the targets.
     *
     * A comma-separated list of target strings that will have any associated sentiment analyzed.
     *
     * @return the targets
     */
    @AuraEnabled
    public List<String> getTargets() {
      return targets_serialized_name;
    }
  
    private NluEnrichmentSentiment(NluEnrichmentSentimentBuilder builder) {
      document_serialized_name = builder.document;
      targets_serialized_name = builder.targets;
    }

    /**
     * New builder.
     *
     * @return a NluEnrichmentSentiment builder
     */
    public NluEnrichmentSentimentBuilder newBuilder() {
      return new NluEnrichmentSentimentBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      NluEnrichmentSentiment ret = (NluEnrichmentSentiment) super.deserialize(jsonString, jsonMap, classType);
      NluEnrichmentSentimentBuilder retBuilder = ret.newBuilder();

      return retBuilder.build();
    }
  }

  /**
   * NluEnrichmentSentiment Builder.
   */
  public class NluEnrichmentSentimentBuilder {
    private Boolean document;
    private List<String> targets;

    private NluEnrichmentSentimentBuilder(NluEnrichmentSentiment nluEnrichmentSentiment) {
      document = nluEnrichmentSentiment.document_serialized_name;
      targets = nluEnrichmentSentiment.targets_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public NluEnrichmentSentimentBuilder() {
    }

    /**
     * Builds a NluEnrichmentSentiment.
     *
     * @return the nluEnrichmentSentiment
     */
    public NluEnrichmentSentiment build() {
      return new NluEnrichmentSentiment(this);
    }

    /**
     * Adds an targets to targets.
     *
     * @param targets the new targets
     * @return the NluEnrichmentSentiment builder
     */
    public NluEnrichmentSentimentBuilder addTargets(String targets) {
      IBMWatsonValidator.notNull(targets, 'targets cannot be null');
      if (this.targets == null) {
        this.targets = new List<String>();
      }
      this.targets.add(targets);
      return this;
    }

    /**
     * Set the document.
     *
     * @param document the document
     * @return the NluEnrichmentSentiment builder
     */
    public NluEnrichmentSentimentBuilder document(Boolean document) {
      this.document = document;
      return this;
    }

    /**
     * Set the targets.
     * Existing targets will be replaced.
     *
     * @param targets the targets
     * @return the NluEnrichmentSentiment builder
     */
    public NluEnrichmentSentimentBuilder targets(List<String> targets) {
      this.targets = targets;
      return this;
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
     * Gets the operation.
     *
     * Identifies what type of operation to perform.
     *
     * **copy** - Copies the value of the **source_field** to the **destination_field** field. If the
     * **destination_field** already exists, then the value of the **source_field** overwrites the original value of the
     * **destination_field**.
     *
     * **move** - Renames (moves) the **source_field** to the **destination_field**. If the **destination_field**
     * already exists, then the value of the **source_field** overwrites the original value of the
     * **destination_field**. Rename is identical to copy, except that the **source_field** is removed after the value
     * has been copied to the **destination_field** (it is the same as a _copy_ followed by a _remove_).
     *
     * **merge** - Merges the value of the **source_field** with the value of the **destination_field**. The
     * **destination_field** is converted into an array if it is not already an array, and the value of the
     * **source_field** is appended to the array. This operation removes the **source_field** after the merge. If the
     * **source_field** does not exist in the current document, then the **destination_field** is still converted into
     * an array (if it is not an array already). This conversion ensures the type for **destination_field** is
     * consistent across all documents.
     *
     * **remove** - Deletes the **source_field** field. The **destination_field** is ignored for this operation.
     *
     * **remove_nulls** - Removes all nested null (blank) field values from the JSON tree. **source_field** and
     * **destination_field** are ignored by this operation because _remove_nulls_ operates on the entire JSON tree.
     * Typically, **remove_nulls** is invoked as the last normalization operation (if it is invoked at all, it can be
     * time-expensive).
     *
     * @return the operation
     */
    @AuraEnabled
    public String getOperation() {
      return operation_serialized_name;
    }
 
    /**
     * Gets the sourceField.
     *
     * The source field for the operation.
     *
     * @return the sourceField
     */
    @AuraEnabled
    public String getSourceField() {
      return source_field_serialized_name;
    }
 
    /**
     * Gets the destinationField.
     *
     * The destination field for the operation.
     *
     * @return the destinationField
     */
    @AuraEnabled
    public String getDestinationField() {
      return destination_field_serialized_name;
    }

    /**
     * Sets the operation.
     *
     * @param operation the new operation
     */
    public void setOperation(final String operation) {
      this.operation_serialized_name = operation;
    }

    /**
     * Sets the sourceField.
     *
     * @param sourceField the new sourceField
     */
    public void setSourceField(final String sourceField) {
      this.source_field_serialized_name = sourceField;
    }

    /**
     * Sets the destinationField.
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
     * Gets the noticeId.
     *
     * Identifies the notice. Many notices might have the same ID. This field exists so that user applications can
     * programmatically identify a notice and take automatic corrective action.
     *
     * @return the noticeId
     */
    @AuraEnabled
    public String getNoticeId() {
      return notice_id_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The creation date of the collection in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the documentId.
     *
     * Unique identifier of the document.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the queryId.
     *
     * Unique identifier of the query used for relevance training.
     *
     * @return the queryId
     */
    @AuraEnabled
    public String getQueryId() {
      return query_id_serialized_name;
    }
 
    /**
     * Gets the severity.
     *
     * Severity level of the notice.
     *
     * @return the severity
     */
    @AuraEnabled
    public String getSeverity() {
      return severity_serialized_name;
    }
 
    /**
     * Gets the step.
     *
     * Ingestion or training step in which the notice occurred.
     *
     * @return the step
     */
    @AuraEnabled
    public String getStep() {
      return step_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the notice.
     *
     * @return the description
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
     * Gets the fonts.
     *
     * @return the fonts
     */
    @AuraEnabled
    public List<FontSetting> getFonts() {
      return fonts_serialized_name;
    }

    /**
     * Sets the fonts.
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

      // calling custom deserializer for fonts
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
     * Gets the heading.
     *
     * @return the heading
     */
    @AuraEnabled
    public PdfHeadingDetection getHeading() {
      return heading_serialized_name;
    }

    /**
     * Sets the heading.
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

      // calling custom deserializer for heading
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
    private List<AggregationResult> results_serialized_name;
    private Long matching_results_serialized_name;
    private List<QueryAggregation> aggregations_serialized_name;
    private String field_serialized_name;
    private Long histogram_interval_serialized_name;
    private Double value_serialized_name;
    private Long count_serialized_name;
    private String match_serialized_name;
    private String path_serialized_name;
    private String timeslice_interval_serialized_name;
    private Boolean anomaly_serialized_name;
    private Long size_serialized_name;
    private TopHitsResults hits_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * The type of aggregation command used. For example: term, filter, max, min, etc.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<AggregationResult> getResults() {
      return results_serialized_name;
    }
 
    /**
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the aggregations.
     *
     * Aggregations returned by the Discovery service.
     *
     * @return the aggregations
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }
 
    /**
     * Gets the field.
     *
     * The field where the aggregation is located in the document.
     *
     * @return the field
     */
    @AuraEnabled
    public String getField() {
      return field_serialized_name;
    }
 
    /**
     * Gets the histogramInterval.
     *
     * Interval of the aggregation. (For 'histogram' type).
     *
     * @return the histogramInterval
     */
    @AuraEnabled
    public Long getHistogramInterval() {
      return histogram_interval_serialized_name;
    }
 
    /**
     * Gets the value.
     *
     * Value of the aggregation.
     *
     * @return the value
     */
    @AuraEnabled
    public Double getValue() {
      return value_serialized_name;
    }
 
    /**
     * Gets the count.
     *
     * @return the count
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }
 
    /**
     * Gets the match.
     *
     * The match the aggregated results queried for.
     *
     * @return the match
     */
    @AuraEnabled
    public String getMatch() {
      return match_serialized_name;
    }
 
    /**
     * Gets the path.
     *
     * The area of the results the aggregation was restricted to.
     *
     * @return the path
     */
    @AuraEnabled
    public String getPath() {
      return path_serialized_name;
    }
 
    /**
     * Gets the timesliceInterval.
     *
     * Interval of the aggregation. Valid date interval values are second/seconds minute/minutes, hour/hours, day/days,
     * week/weeks, month/months, and year/years.
     *
     * @return the timesliceInterval
     */
    @AuraEnabled
    public String getTimesliceInterval() {
      return timeslice_interval_serialized_name;
    }
 
    /**
     * Gets the anomaly.
     *
     * Used to indicate that anomaly detection should be performed. Anomaly detection is used to locate unusual
     * datapoints within a time series.
     *
     * @return the anomaly
     */
    @AuraEnabled
    public Boolean getAnomaly() {
      return anomaly_serialized_name;
    }
 
    /**
     * Gets the size.
     *
     * Number of top hits returned by the aggregation.
     *
     * @return the size
     */
    @AuraEnabled
    public Long getSize() {
      return size_serialized_name;
    }
 
    /**
     * Gets the hits.
     *
     * @return the hits
     */
    @AuraEnabled
    public TopHitsResults getHits() {
      return hits_serialized_name;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<AggregationResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    /**
     * Sets the field.
     *
     * @param field the new field
     */
    public void setField(final String field) {
      this.field_serialized_name = field;
    }

    /**
     * Sets the histogramInterval.
     *
     * @param histogramInterval the new histogramInterval
     */
    public void setHistogramInterval(final long histogramInterval) {
      this.histogram_interval_serialized_name = histogramInterval;
    }

    /**
     * Sets the value.
     *
     * @param value the new value
     */
    public void setValue(final Double value) {
      this.value_serialized_name = value;
    }

    /**
     * Sets the count.
     *
     * @param count the new count
     */
    public void setCount(final long count) {
      this.count_serialized_name = count;
    }

    /**
     * Sets the match.
     *
     * @param match the new match
     */
    public void setMatch(final String match) {
      this.match_serialized_name = match;
    }

    /**
     * Sets the path.
     *
     * @param path the new path
     */
    public void setPath(final String path) {
      this.path_serialized_name = path;
    }

    /**
     * Sets the timesliceInterval.
     *
     * @param timesliceInterval the new timesliceInterval
     */
    public void setTimesliceInterval(final String timesliceInterval) {
      this.timeslice_interval_serialized_name = timesliceInterval;
    }

    /**
     * Sets the anomaly.
     *
     * @param anomaly the new anomaly
     */
    public void setAnomaly(final Boolean anomaly) {
      this.anomaly_serialized_name = anomaly;
    }

    /**
     * Sets the size.
     *
     * @param size the new size
     */
    public void setSize(final long size) {
      this.size_serialized_name = size;
    }

    /**
     * Sets the hits.
     *
     * @param hits the new hits
     */
    public void setHits(final TopHitsResults hits) {
      this.hits_serialized_name = hits;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryAggregation ret = (QueryAggregation) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results
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

      // calling custom deserializer for aggregations
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

      // calling custom deserializer for hits
      TopHitsResults newHits = (TopHitsResults) new TopHitsResults().deserialize(JSON.serialize(ret.getHits()), (Map<String, Object>) jsonMap.get('hits_serialized_name'), TopHitsResults.class);
      ret.setHits(newHits);

      return ret;
    }
  }

  /**
   * Entity text to provide context for the queried entity and rank based on that association. For example, if you
   * wanted to query the city of London in England your query would look for `London` with the context of `England`.
   */
  public class QueryEntitiesContext {
    private String text_serialized_name;
 
    /**
     * Gets the text.
     *
     * Entity text to provide context for the queried entity and rank based on that association. For example, if you
     * wanted to query the city of London in England your query would look for `London` with the context of `England`.
     *
     * @return the text
     */
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

  }

  /**
   * A text string that appears within the entity text field.
   */
  public class QueryEntitiesEntity extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String type_serialized_name;
 
    /**
     * Gets the text.
     *
     * Entity text content.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the xtype.
     *
     * The type of the specified entity.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
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
  public class QueryEntitiesOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String feature;
    private QueryEntitiesEntity entity;
    private QueryEntitiesContext context;
    private Long count;
    private Long evidenceCount;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the feature.
     *
     * The entity query feature to perform. Supported features are `disambiguate` and `similar_entities`.
     *
     * @return the feature
     */
    public String feature() {
      return feature;
    }
 
    /**
     * Gets the entity.
     *
     * A text string that appears within the entity text field.
     *
     * @return the entity
     */
    public QueryEntitiesEntity entity() {
      return entity;
    }
 
    /**
     * Gets the context.
     *
     * Entity text to provide context for the queried entity and rank based on that association. For example, if you
     * wanted to query the city of London in England your query would look for `London` with the context of `England`.
     *
     * @return the context
     */
    public QueryEntitiesContext context() {
      return context;
    }
 
    /**
     * Gets the count.
     *
     * The number of results to return. The default is `10`. The maximum is `1000`.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }
 
    /**
     * Gets the evidenceCount.
     *
     * The number of evidence items to return for each result. The default is `0`. The maximum number of evidence items
     * per query is 10,000.
     *
     * @return the evidenceCount
     */
    public Long evidenceCount() {
      return evidenceCount;
    }

    private QueryEntitiesOptions(QueryEntitiesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      feature = builder.feature;
      entity = builder.entity;
      context = builder.context;
      count = builder.count;
      evidenceCount = builder.evidenceCount;
      this.requestHeaders = builder.requestHeaders;
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
  public class QueryEntitiesOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String feature;
    private QueryEntitiesEntity entity;
    private QueryEntitiesContext context;
    private Long count;
    private Long evidenceCount;

    private QueryEntitiesOptionsBuilder(QueryEntitiesOptions queryEntitiesOptions) {
      environmentId = queryEntitiesOptions.environmentId;
      collectionId = queryEntitiesOptions.collectionId;
      feature = queryEntitiesOptions.feature;
      entity = queryEntitiesOptions.entity;
      context = queryEntitiesOptions.context;
      count = queryEntitiesOptions.count;
      evidenceCount = queryEntitiesOptions.evidenceCount;
      this.requestHeaders.putAll(queryEntitiesOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the feature.
     *
     * @param feature the feature
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder feature(String feature) {
      this.feature = feature;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder entity(QueryEntitiesEntity entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder context(QueryEntitiesContext context) {
      this.context = context;
      return this;
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the evidenceCount.
     *
     * @param evidenceCount the evidenceCount
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder evidenceCount(Long evidenceCount) {
      this.evidenceCount = evidenceCount;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the QueryEntitiesOptions builder
     */
    public QueryEntitiesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * An array of entities resulting from the query.
   */
  public class QueryEntitiesResponse extends IBMWatsonResponseModel {
    private List<QueryEntitiesResponseItem> entities_serialized_name;
 
    /**
     * Gets the entities.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<QueryEntitiesResponseItem> getEntities() {
      return entities_serialized_name;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<QueryEntitiesResponseItem> entities) {
      this.entities_serialized_name = entities;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryEntitiesResponse ret = (QueryEntitiesResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities
      List<QueryEntitiesResponseItem> newEntities = new List<QueryEntitiesResponseItem>();
      List<QueryEntitiesResponseItem> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          QueryEntitiesResponseItem currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          QueryEntitiesResponseItem newItem = (QueryEntitiesResponseItem) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryEntitiesResponseItem.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      return ret;
    }
  }

  /**
   * Object containing Entity query response information.
   */
  public class QueryEntitiesResponseItem extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String type_serialized_name;
    private List<QueryEvidence> evidence_serialized_name;
 
    /**
     * Gets the text.
     *
     * Entity text content.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the xtype.
     *
     * The type of the result entity.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the evidence.
     *
     * List of different evidentiary items to support the result.
     *
     * @return the evidence
     */
    @AuraEnabled
    public List<QueryEvidence> getEvidence() {
      return evidence_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the evidence.
     *
     * @param evidence the new evidence
     */
    public void setEvidence(final List<QueryEvidence> evidence) {
      this.evidence_serialized_name = evidence;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryEntitiesResponseItem ret = (QueryEntitiesResponseItem) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for evidence
      List<QueryEvidence> newEvidence = new List<QueryEvidence>();
      List<QueryEvidence> deserializedEvidence = ret.getEvidence();
      if (deserializedEvidence != null) {
        for (Integer i = 0; i < deserializedEvidence.size(); i++) {
          QueryEvidence currentItem = ret.getEvidence().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('evidence_serialized_name');
          QueryEvidence newItem = (QueryEvidence) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryEvidence.class);
          newEvidence.add(newItem);
        }
        ret.setEvidence(newEvidence);
      }

      return ret;
    }
  }

  /**
   * Description of evidence location supporting Knoweldge Graph query result.
   */
  public class QueryEvidence extends IBMWatsonGenericModel {
    private String document_id_serialized_name;
    private String field_serialized_name;
    private Long start_offset_serialized_name;
    private Long end_offset_serialized_name;
    private List<QueryEvidenceEntity> entities_serialized_name;
 
    /**
     * Gets the documentId.
     *
     * The docuemnt ID (as indexed in Discovery) of the evidence location.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the field.
     *
     * The field of the document where the supporting evidence was identified.
     *
     * @return the field
     */
    @AuraEnabled
    public String getField() {
      return field_serialized_name;
    }
 
    /**
     * Gets the startOffset.
     *
     * The start location of the evidence in the identified field. This value is inclusive.
     *
     * @return the startOffset
     */
    @AuraEnabled
    public Long getStartOffset() {
      return start_offset_serialized_name;
    }
 
    /**
     * Gets the endOffset.
     *
     * The end location of the evidence in the identified field. This value is inclusive.
     *
     * @return the endOffset
     */
    @AuraEnabled
    public Long getEndOffset() {
      return end_offset_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * An array of entity objects that show evidence of the result.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<QueryEvidenceEntity> getEntities() {
      return entities_serialized_name;
    }

    /**
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the field.
     *
     * @param field the new field
     */
    public void setField(final String field) {
      this.field_serialized_name = field;
    }

    /**
     * Sets the startOffset.
     *
     * @param startOffset the new startOffset
     */
    public void setStartOffset(final long startOffset) {
      this.start_offset_serialized_name = startOffset;
    }

    /**
     * Sets the endOffset.
     *
     * @param endOffset the new endOffset
     */
    public void setEndOffset(final long endOffset) {
      this.end_offset_serialized_name = endOffset;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<QueryEvidenceEntity> entities) {
      this.entities_serialized_name = entities;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryEvidence ret = (QueryEvidence) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities
      List<QueryEvidenceEntity> newEntities = new List<QueryEvidenceEntity>();
      List<QueryEvidenceEntity> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          QueryEvidenceEntity currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          QueryEvidenceEntity newItem = (QueryEvidenceEntity) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryEvidenceEntity.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      return ret;
    }
  }

  /**
   * Entity description and location within evidence field.
   */
  public class QueryEvidenceEntity extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String text_serialized_name;
    private Long start_offset_serialized_name;
    private Long end_offset_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * The entity type for this entity. Possible types vary based on model used.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The original text of this entity as found in the evidence field.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the startOffset.
     *
     * The start location of the entity text in the identified field. This value is inclusive.
     *
     * @return the startOffset
     */
    @AuraEnabled
    public Long getStartOffset() {
      return start_offset_serialized_name;
    }
 
    /**
     * Gets the endOffset.
     *
     * The end location of the entity text in the identified field. This value is exclusive.
     *
     * @return the endOffset
     */
    @AuraEnabled
    public Long getEndOffset() {
      return end_offset_serialized_name;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the startOffset.
     *
     * @param startOffset the new startOffset
     */
    public void setStartOffset(final long startOffset) {
      this.start_offset_serialized_name = startOffset;
    }

    /**
     * Sets the endOffset.
     *
     * @param endOffset the new endOffset
     */
    public void setEndOffset(final long endOffset) {
      this.end_offset_serialized_name = endOffset;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryEvidenceEntity ret = (QueryEvidenceEntity) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * QueryFilterType.
   */
  public class QueryFilterType {
    private List<String> exclude_serialized_name;
    private List<String> include_serialized_name;
 
    /**
     * Gets the exclude.
     *
     * A comma-separated list of types to exclude.
     *
     * @return the exclude
     */
    public List<String> getExclude() {
      return exclude_serialized_name;
    }
 
    /**
     * Gets the include.
     *
     * A comma-separated list of types to include. All other types are excluded.
     *
     * @return the include
     */
    public List<String> getInclude() {
      return include_serialized_name;
    }

    /**
     * Sets the exclude.
     *
     * @param exclude the new exclude
     */
    public void setExclude(final List<String> exclude) {
      this.exclude_serialized_name = exclude;
    }

    /**
     * Sets the include.
     *
     * @param include the new include
     */
    public void setInclude(final List<String> include) {
      this.include_serialized_name = include;
    }

  }

  /**
   * The queryLog options.
   */
  public class QueryLogOptions extends IBMWatsonOptionsModel {
    private String filter;
    private String query;
    private Long count;
    private Long offset;
    private List<String> xsort;
 
    /**
     * Gets the filter.
     *
     * A cacheable query that excludes documents that don't mention the query content. Filter searches are better for
     * metadata-type searches and for assessing the concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most
     * relevant documents listed first. Use a query search when you want to find the most relevant search results. You
     * cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
 
    /**
     * Gets the count.
     *
     * Number of results to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }
 
    /**
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are
     * returned is 10 and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
    }
 
    /**
     * Gets the xsort.
     *
     * A comma-separated list of fields in the document to sort on. You can optionally specify a sort direction by
     * prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no
     * prefix is specified.
     *
     * @return the xsort
     */
    public List<String> xsort() {
      return xsort;
    }

    private QueryLogOptions(QueryLogOptionsBuilder builder) {
      filter = builder.filter;
      query = builder.query;
      count = builder.count;
      offset = builder.offset;
      xsort = builder.xsort;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a QueryLogOptions builder
     */
    public QueryLogOptionsBuilder newBuilder() {
      return new QueryLogOptionsBuilder(this);
    }

  }

  /**
   * QueryLogOptions Builder.
   */
  public class QueryLogOptionsBuilder extends IBMWatsonOptionsModel {
    private String filter;
    private String query;
    private Long count;
    private Long offset;
    private List<String> xsort;

    private QueryLogOptionsBuilder(QueryLogOptions queryLogOptions) {
      filter = queryLogOptions.filter;
      query = queryLogOptions.query;
      count = queryLogOptions.count;
      offset = queryLogOptions.offset;
      xsort = queryLogOptions.xsort;
      this.requestHeaders.putAll(queryLogOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public QueryLogOptionsBuilder() {
    }

    /**
     * Builds a QueryLogOptions.
     *
     * @return the queryLogOptions
     */
    public QueryLogOptions build() {
      return new QueryLogOptions(this);
    }

    /**
     * Adds an xsort to xsort.
     *
     * @param xsort the new xsort
     * @return the QueryLogOptions builder
     */
    public QueryLogOptionsBuilder addXsort(String xsort) {
      IBMWatsonValidator.notNull(xsort, 'xsort cannot be null');
      if (this.xsort == null) {
        this.xsort = new List<String>();
      }
      this.xsort.add(xsort);
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the QueryLogOptions builder
     */
    public QueryLogOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the query.
     *
     * @param query the query
     * @return the QueryLogOptions builder
     */
    public QueryLogOptionsBuilder query(String query) {
      this.query = query;
      return this;
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the QueryLogOptions builder
     */
    public QueryLogOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the offset.
     *
     * @param offset the offset
     * @return the QueryLogOptions builder
     */
    public QueryLogOptionsBuilder offset(Long offset) {
      this.offset = offset;
      return this;
    }

    /**
     * Set the xsort.
     * Existing xsort will be replaced.
     *
     * @param xsort the xsort
     * @return the QueryLogOptions builder
     */
    public QueryLogOptionsBuilder xsort(List<String> xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the QueryLogOptions builder
     */
    public QueryLogOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The queryNotices options.
   */
  public class QueryNoticesOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private List<String> returnFields;
    private Long offset;
    private List<String> xsort;
    private Boolean highlight;
    private List<String> passagesFields;
    private Long passagesCount;
    private Long passagesCharacters;
    private String deduplicateField;
    private Boolean similar;
    private List<String> similarDocumentIds;
    private List<String> similarFields;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the filter.
     *
     * A cacheable query that excludes documents that don't mention the query content. Filter searches are better for
     * metadata-type searches and for assessing the concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most
     * relevant documents listed first. Use a query search when you want to find the most relevant search results. You
     * cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
 
    /**
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language
     * understanding. You cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the naturalLanguageQuery
     */
    public String naturalLanguageQuery() {
      return naturalLanguageQuery;
    }
 
    /**
     * Gets the passages.
     *
     * A passages query that returns the most relevant passages from the results.
     *
     * @return the passages
     */
    public Boolean passages() {
      return passages;
    }
 
    /**
     * Gets the aggregation.
     *
     * An aggregation search that returns an exact answer by combining query search with filters. Useful for
     * applications to build lists, tables, and time series. For a full list of possible aggregations, see the Query
     * reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
 
    /**
     * Gets the count.
     *
     * Number of results to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }
 
    /**
     * Gets the returnFields.
     *
     * A comma-separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public List<String> returnFields() {
      return returnFields;
    }
 
    /**
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are
     * returned is 10 and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
    }
 
    /**
     * Gets the xsort.
     *
     * A comma-separated list of fields in the document to sort on. You can optionally specify a sort direction by
     * prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no
     * prefix is specified.
     *
     * @return the xsort
     */
    public List<String> xsort() {
      return xsort;
    }
 
    /**
     * Gets the highlight.
     *
     * When true, a highlight field is returned for each result which contains the fields which match the query with
     * `<em></em>` tags around the matching query terms.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
 
    /**
     * Gets the passagesFields.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all
     * top-level fields are included.
     *
     * @return the passagesFields
     */
    public List<String> passagesFields() {
      return passagesFields;
    }
 
    /**
     * Gets the passagesCount.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found.
     *
     * @return the passagesCount
     */
    public Long passagesCount() {
      return passagesCount;
    }
 
    /**
     * Gets the passagesCharacters.
     *
     * The approximate number of characters that any one passage will have.
     *
     * @return the passagesCharacters
     */
    public Long passagesCharacters() {
      return passagesCharacters;
    }
 
    /**
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate
     * comparison is limited to the current query only, **offset** is not considered. This parameter is currently Beta
     * functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
    }
 
    /**
     * Gets the similar.
     *
     * When `true`, results are returned based on their similarity to the document IDs specified in the
     * **similar.document_ids** parameter.
     *
     * @return the similar
     */
    public Boolean similar() {
      return similar;
    }
 
    /**
     * Gets the similarDocumentIds.
     *
     * A comma-separated list of document IDs to find similar documents.
     *
     * **Tip:** Include the **natural_language_query** parameter to expand the scope of the document similarity search
     * with the natural language query. Other query parameters, such as **filter** and **query**, are subsequently
     * applied and reduce the scope.
     *
     * @return the similarDocumentIds
     */
    public List<String> similarDocumentIds() {
      return similarDocumentIds;
    }
 
    /**
     * Gets the similarFields.
     *
     * A comma-separated list of field names that are used as a basis for comparison to identify similar documents. If
     * not specified, the entire document is used for comparison.
     *
     * @return the similarFields
     */
    public List<String> similarFields() {
      return similarFields;
    }

    private QueryNoticesOptions(QueryNoticesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      filter = builder.filter;
      query = builder.query;
      naturalLanguageQuery = builder.naturalLanguageQuery;
      passages = builder.passages;
      aggregation = builder.aggregation;
      count = builder.count;
      returnFields = builder.returnFields;
      offset = builder.offset;
      xsort = builder.xsort;
      highlight = builder.highlight;
      passagesFields = builder.passagesFields;
      passagesCount = builder.passagesCount;
      passagesCharacters = builder.passagesCharacters;
      deduplicateField = builder.deduplicateField;
      similar = builder.similar;
      similarDocumentIds = builder.similarDocumentIds;
      similarFields = builder.similarFields;
      this.requestHeaders = builder.requestHeaders;
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
  public class QueryNoticesOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private List<String> returnFields;
    private Long offset;
    private List<String> xsort;
    private Boolean highlight;
    private List<String> passagesFields;
    private Long passagesCount;
    private Long passagesCharacters;
    private String deduplicateField;
    private Boolean similar;
    private List<String> similarDocumentIds;
    private List<String> similarFields;

    private QueryNoticesOptionsBuilder(QueryNoticesOptions queryNoticesOptions) {
      environmentId = queryNoticesOptions.environmentId;
      collectionId = queryNoticesOptions.collectionId;
      filter = queryNoticesOptions.filter;
      query = queryNoticesOptions.query;
      naturalLanguageQuery = queryNoticesOptions.naturalLanguageQuery;
      passages = queryNoticesOptions.passages;
      aggregation = queryNoticesOptions.aggregation;
      count = queryNoticesOptions.count;
      returnFields = queryNoticesOptions.returnFields;
      offset = queryNoticesOptions.offset;
      xsort = queryNoticesOptions.xsort;
      highlight = queryNoticesOptions.highlight;
      passagesFields = queryNoticesOptions.passagesFields;
      passagesCount = queryNoticesOptions.passagesCount;
      passagesCharacters = queryNoticesOptions.passagesCharacters;
      deduplicateField = queryNoticesOptions.deduplicateField;
      similar = queryNoticesOptions.similar;
      similarDocumentIds = queryNoticesOptions.similarDocumentIds;
      similarFields = queryNoticesOptions.similarFields;
      this.requestHeaders.putAll(queryNoticesOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Adds an returnFields to returnFields.
     *
     * @param returnFields the new returnFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addReturnFields(String returnFields) {
      IBMWatsonValidator.notNull(returnFields, 'returnFields cannot be null');
      if (this.returnFields == null) {
        this.returnFields = new List<String>();
      }
      this.returnFields.add(returnFields);
      return this;
    }

    /**
     * Adds an xsort to xsort.
     *
     * @param xsort the new xsort
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addXsort(String xsort) {
      IBMWatsonValidator.notNull(xsort, 'xsort cannot be null');
      if (this.xsort == null) {
        this.xsort = new List<String>();
      }
      this.xsort.add(xsort);
      return this;
    }

    /**
     * Adds an passagesFields to passagesFields.
     *
     * @param passagesFields the new passagesFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addPassagesFields(String passagesFields) {
      IBMWatsonValidator.notNull(passagesFields, 'passagesFields cannot be null');
      if (this.passagesFields == null) {
        this.passagesFields = new List<String>();
      }
      this.passagesFields.add(passagesFields);
      return this;
    }

    /**
     * Adds an similarDocumentIds to similarDocumentIds.
     *
     * @param similarDocumentIds the new similarDocumentIds
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addSimilarDocumentIds(String similarDocumentIds) {
      IBMWatsonValidator.notNull(similarDocumentIds, 'similarDocumentIds cannot be null');
      if (this.similarDocumentIds == null) {
        this.similarDocumentIds = new List<String>();
      }
      this.similarDocumentIds.add(similarDocumentIds);
      return this;
    }

    /**
     * Adds an similarFields to similarFields.
     *
     * @param similarFields the new similarFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addSimilarFields(String similarFields) {
      IBMWatsonValidator.notNull(similarFields, 'similarFields cannot be null');
      if (this.similarFields == null) {
        this.similarFields = new List<String>();
      }
      this.similarFields.add(similarFields);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the query.
     *
     * @param query the query
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder query(String query) {
      this.query = query;
      return this;
    }

    /**
     * Set the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.naturalLanguageQuery = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the passages.
     *
     * @param passages the passages
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passages(Boolean passages) {
      this.passages = passages;
      return this;
    }

    /**
     * Set the aggregation.
     *
     * @param aggregation the aggregation
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder aggregation(String aggregation) {
      this.aggregation = aggregation;
      return this;
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the returnFields.
     * Existing returnFields will be replaced.
     *
     * @param returnFields the returnFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder returnFields(List<String> returnFields) {
      this.returnFields = returnFields;
      return this;
    }

    /**
     * Set the offset.
     *
     * @param offset the offset
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder offset(Long offset) {
      this.offset = offset;
      return this;
    }

    /**
     * Set the xsort.
     * Existing xsort will be replaced.
     *
     * @param xsort the xsort
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder xsort(List<String> xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the highlight.
     *
     * @param highlight the highlight
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder highlight(Boolean highlight) {
      this.highlight = highlight;
      return this;
    }

    /**
     * Set the passagesFields.
     * Existing passagesFields will be replaced.
     *
     * @param passagesFields the passagesFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesFields(List<String> passagesFields) {
      this.passagesFields = passagesFields;
      return this;
    }

    /**
     * Set the passagesCount.
     *
     * @param passagesCount the passagesCount
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCount(Long passagesCount) {
      this.passagesCount = passagesCount;
      return this;
    }

    /**
     * Set the passagesCharacters.
     *
     * @param passagesCharacters the passagesCharacters
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCharacters(Long passagesCharacters) {
      this.passagesCharacters = passagesCharacters;
      return this;
    }

    /**
     * Set the deduplicateField.
     *
     * @param deduplicateField the deduplicateField
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicateField = deduplicateField;
      return this;
    }

    /**
     * Set the similar.
     *
     * @param similar the similar
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder similar(Boolean similar) {
      this.similar = similar;
      return this;
    }

    /**
     * Set the similarDocumentIds.
     * Existing similarDocumentIds will be replaced.
     *
     * @param similarDocumentIds the similarDocumentIds
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder similarDocumentIds(List<String> similarDocumentIds) {
      this.similarDocumentIds = similarDocumentIds;
      return this;
    }

    /**
     * Set the similarFields.
     * Existing similarFields will be replaced.
     *
     * @param similarFields the similarFields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder similarFields(List<String> similarFields) {
      this.similarFields = similarFields;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * QueryNoticesResponse.
   */
  public class QueryNoticesResponse extends IBMWatsonResponseModel {
    private Long matching_results_serialized_name;
    private List<QueryNoticesResult> results_serialized_name;
    private List<QueryAggregation> aggregations_serialized_name;
    private List<QueryPassages> passages_serialized_name;
    private Long duplicates_removed_serialized_name;
 
    /**
     * Gets the matchingResults.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<QueryNoticesResult> getResults() {
      return results_serialized_name;
    }
 
    /**
     * Gets the aggregations.
     *
     * @return the aggregations
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }
 
    /**
     * Gets the passages.
     *
     * @return the passages
     */
    @AuraEnabled
    public List<QueryPassages> getPassages() {
      return passages_serialized_name;
    }
 
    /**
     * Gets the duplicatesRemoved.
     *
     * @return the duplicatesRemoved
     */
    @AuraEnabled
    public Long getDuplicatesRemoved() {
      return duplicates_removed_serialized_name;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<QueryNoticesResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    /**
     * Sets the passages.
     *
     * @param passages the new passages
     */
    public void setPassages(final List<QueryPassages> passages) {
      this.passages_serialized_name = passages;
    }

    /**
     * Sets the duplicatesRemoved.
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

      // calling custom deserializer for results
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

      // calling custom deserializer for aggregations
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

      // calling custom deserializer for passages
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
    private QueryResultMetadata result_metadata_serialized_name;
    private Long code_serialized_name;
    private String filename_serialized_name;
    private String file_type_serialized_name;
    private String sha1_serialized_name;
    private List<Notice> notices_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the id.
     *
     * @return the id
     */
    @AuraEnabled
    public String getId() {
      return id_serialized_name;
    }

    /**
     * Gets the score.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Gets the metadata.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }

    /**
     * Gets the collectionId.
     *
     * @return the collectionId
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }

    /**
     * Gets the resultMetadata.
     *
     * @return the resultMetadata
     */
    @AuraEnabled
    public QueryResultMetadata getResultMetadata() {
      return result_metadata_serialized_name;
    }

    /**
     * Gets the code.
     *
     * @return the code
     */
    @AuraEnabled
    public Long getCode() {
      return code_serialized_name;
    }

    /**
     * Gets the filename.
     *
     * @return the filename
     */
    @AuraEnabled
    public String getFilename() {
      return filename_serialized_name;
    }

    /**
     * Gets the fileType.
     *
     * @return the fileType
     */
    @AuraEnabled
    public String getFileType() {
      return file_type_serialized_name;
    }

    /**
     * Gets the sha1.
     *
     * @return the sha1
     */
    @AuraEnabled
    public String getSha1() {
      return sha1_serialized_name;
    }

    /**
     * Gets the notices.
     *
     * @return the notices
     */
    @AuraEnabled
    public List<Notice> getNotices() {
      return notices_serialized_name;
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
     * Sets the id.
     *
     * @param id the new id
     */
    public void setId(final String id) {
      this.id_serialized_name = id;
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Sets the resultMetadata.
     *
     * @param resultMetadata the new resultMetadata
     */
    public void setResultMetadata(final QueryResultMetadata resultMetadata) {
      this.result_metadata_serialized_name = resultMetadata;
    }

    /**
     * Sets the code.
     *
     * @param code the new code
     */
    public void setCode(final Long code) {
      this.code_serialized_name = code;
    }

    /**
     * Sets the filename.
     *
     * @param filename the new filename
     */
    public void setFilename(final String filename) {
      this.filename_serialized_name = filename;
    }

    /**
     * Sets the fileType.
     *
     * @param fileType the new fileType
     */
    public void setFileType(final String fileType) {
      this.file_type_serialized_name = fileType;
    }

    /**
     * Sets the sha1.
     *
     * @param sha1 the new sha1
     */
    public void setSha1(final String sha1) {
      this.sha1_serialized_name = sha1;
    }

    /**
     * Sets the notices.
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

      QueryNoticesResult ret = (QueryNoticesResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for resultMetadata
      QueryResultMetadata newResultMetadata = (QueryResultMetadata) new QueryResultMetadata().deserialize(JSON.serialize(ret.getResultMetadata()), (Map<String, Object>) jsonMap.get('result_metadata_serialized_name'), QueryResultMetadata.class);
      ret.setResultMetadata(newResultMetadata);

      // calling custom deserializer for notices
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
  public class QueryOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private String returnFields;
    private Long offset;
    private String xsort;
    private Boolean highlight;
    private String passagesFields;
    private Long passagesCount;
    private Long passagesCharacters;
    private Boolean deduplicate;
    private String deduplicateField;
    private String collectionIds;
    private Boolean similar;
    private String similarDocumentIds;
    private String similarFields;
    private String bias;
    private Boolean loggingOptOut;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the filter.
     *
     * A cacheable query that excludes documents that don't mention the query content. Filter searches are better for
     * metadata-type searches and for assessing the concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most
     * relevant documents listed first. Use a query search when you want to find the most relevant search results. You
     * cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
 
    /**
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language
     * understanding. You cannot use **natural_language_query** and **query** at the same time.
     *
     * @return the naturalLanguageQuery
     */
    public String naturalLanguageQuery() {
      return naturalLanguageQuery;
    }
 
    /**
     * Gets the passages.
     *
     * A passages query that returns the most relevant passages from the results.
     *
     * @return the passages
     */
    public Boolean passages() {
      return passages;
    }
 
    /**
     * Gets the aggregation.
     *
     * An aggregation search that returns an exact answer by combining query search with filters. Useful for
     * applications to build lists, tables, and time series. For a full list of possible aggregations, see the Query
     * reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
 
    /**
     * Gets the count.
     *
     * Number of results to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }
 
    /**
     * Gets the returnFields.
     *
     * A comma-separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public String returnFields() {
      return returnFields;
    }
 
    /**
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are
     * returned is 10 and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
    }
 
    /**
     * Gets the xsort.
     *
     * A comma-separated list of fields in the document to sort on. You can optionally specify a sort direction by
     * prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no
     * prefix is specified. This parameter cannot be used in the same query as the **bias** parameter.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the highlight.
     *
     * When true, a highlight field is returned for each result which contains the fields which match the query with
     * `<em></em>` tags around the matching query terms.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
 
    /**
     * Gets the passagesFields.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all
     * top-level fields are included.
     *
     * @return the passagesFields
     */
    public String passagesFields() {
      return passagesFields;
    }
 
    /**
     * Gets the passagesCount.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found.
     * The default is `10`. The maximum is `100`.
     *
     * @return the passagesCount
     */
    public Long passagesCount() {
      return passagesCount;
    }
 
    /**
     * Gets the passagesCharacters.
     *
     * The approximate number of characters that any one passage will have.
     *
     * @return the passagesCharacters
     */
    public Long passagesCharacters() {
      return passagesCharacters;
    }
 
    /**
     * Gets the deduplicate.
     *
     * When `true` and used with a Watson Discovery News collection, duplicate results (based on the contents of the
     * **title** field) are removed. Duplicate comparison is limited to the current query only; **offset** is not
     * considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate
     */
    public Boolean deduplicate() {
      return deduplicate;
    }
 
    /**
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate
     * comparison is limited to the current query only, **offset** is not considered. This parameter is currently Beta
     * functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
    }
 
    /**
     * Gets the collectionIds.
     *
     * A comma-separated list of collection IDs to be queried against. Required when querying multiple collections,
     * invalid when performing a single collection query.
     *
     * @return the collectionIds
     */
    public String collectionIds() {
      return collectionIds;
    }
 
    /**
     * Gets the similar.
     *
     * When `true`, results are returned based on their similarity to the document IDs specified in the
     * **similar.document_ids** parameter.
     *
     * @return the similar
     */
    public Boolean similar() {
      return similar;
    }
 
    /**
     * Gets the similarDocumentIds.
     *
     * A comma-separated list of document IDs to find similar documents.
     *
     * **Tip:** Include the **natural_language_query** parameter to expand the scope of the document similarity search
     * with the natural language query. Other query parameters, such as **filter** and **query**, are subsequently
     * applied and reduce the scope.
     *
     * @return the similarDocumentIds
     */
    public String similarDocumentIds() {
      return similarDocumentIds;
    }
 
    /**
     * Gets the similarFields.
     *
     * A comma-separated list of field names that are used as a basis for comparison to identify similar documents. If
     * not specified, the entire document is used for comparison.
     *
     * @return the similarFields
     */
    public String similarFields() {
      return similarFields;
    }
 
    /**
     * Gets the bias.
     *
     * Field which the returned results will be biased against. The specified field must be either a **date** or
     * **number** format. When a **date** type field is specified returned results are biased towards field values
     * closer to the current date. When a **number** type field is specified, returned results are biased towards higher
     * field values. This parameter cannot be used in the same query as the **sort** parameter.
     *
     * @return the bias
     */
    public String bias() {
      return bias;
    }
 
    /**
     * Gets the loggingOptOut.
     *
     * If `true`, queries are not stored in the Discovery **Logs** endpoint.
     *
     * @return the loggingOptOut
     */
    public Boolean loggingOptOut() {
      return loggingOptOut;
    }

    private QueryOptions(QueryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      filter = builder.filter;
      query = builder.query;
      naturalLanguageQuery = builder.naturalLanguageQuery;
      passages = builder.passages;
      aggregation = builder.aggregation;
      count = builder.count;
      returnFields = builder.returnFields;
      offset = builder.offset;
      xsort = builder.xsort;
      highlight = builder.highlight;
      passagesFields = builder.passagesFields;
      passagesCount = builder.passagesCount;
      passagesCharacters = builder.passagesCharacters;
      deduplicate = builder.deduplicate;
      deduplicateField = builder.deduplicateField;
      collectionIds = builder.collectionIds;
      similar = builder.similar;
      similarDocumentIds = builder.similarDocumentIds;
      similarFields = builder.similarFields;
      bias = builder.bias;
      loggingOptOut = builder.loggingOptOut;
      this.requestHeaders = builder.requestHeaders;
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
  public class QueryOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String filter;
    private String query;
    private String naturalLanguageQuery;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private String returnFields;
    private Long offset;
    private String xsort;
    private Boolean highlight;
    private String passagesFields;
    private Long passagesCount;
    private Long passagesCharacters;
    private Boolean deduplicate;
    private String deduplicateField;
    private String collectionIds;
    private Boolean similar;
    private String similarDocumentIds;
    private String similarFields;
    private String bias;
    private Boolean loggingOptOut;

    private QueryOptionsBuilder(QueryOptions queryOptions) {
      environmentId = queryOptions.environmentId;
      collectionId = queryOptions.collectionId;
      filter = queryOptions.filter;
      query = queryOptions.query;
      naturalLanguageQuery = queryOptions.naturalLanguageQuery;
      passages = queryOptions.passages;
      aggregation = queryOptions.aggregation;
      count = queryOptions.count;
      returnFields = queryOptions.returnFields;
      offset = queryOptions.offset;
      xsort = queryOptions.xsort;
      highlight = queryOptions.highlight;
      passagesFields = queryOptions.passagesFields;
      passagesCount = queryOptions.passagesCount;
      passagesCharacters = queryOptions.passagesCharacters;
      deduplicate = queryOptions.deduplicate;
      deduplicateField = queryOptions.deduplicateField;
      collectionIds = queryOptions.collectionIds;
      similar = queryOptions.similar;
      similarDocumentIds = queryOptions.similarDocumentIds;
      similarFields = queryOptions.similarFields;
      bias = queryOptions.bias;
      loggingOptOut = queryOptions.loggingOptOut;
      this.requestHeaders.putAll(queryOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the query.
     *
     * @param query the query
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder query(String query) {
      this.query = query;
      return this;
    }

    /**
     * Set the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the naturalLanguageQuery
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder naturalLanguageQuery(String naturalLanguageQuery) {
      this.naturalLanguageQuery = naturalLanguageQuery;
      return this;
    }

    /**
     * Set the passages.
     *
     * @param passages the passages
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passages(Boolean passages) {
      this.passages = passages;
      return this;
    }

    /**
     * Set the aggregation.
     *
     * @param aggregation the aggregation
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder aggregation(String aggregation) {
      this.aggregation = aggregation;
      return this;
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the returnFields.
     *
     * @param returnFields the returnFields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder returnFields(String returnFields) {
      this.returnFields = returnFields;
      return this;
    }

    /**
     * Set the offset.
     *
     * @param offset the offset
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder offset(Long offset) {
      this.offset = offset;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the highlight.
     *
     * @param highlight the highlight
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder highlight(Boolean highlight) {
      this.highlight = highlight;
      return this;
    }

    /**
     * Set the passagesFields.
     *
     * @param passagesFields the passagesFields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesFields(String passagesFields) {
      this.passagesFields = passagesFields;
      return this;
    }

    /**
     * Set the passagesCount.
     *
     * @param passagesCount the passagesCount
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCount(Long passagesCount) {
      this.passagesCount = passagesCount;
      return this;
    }

    /**
     * Set the passagesCharacters.
     *
     * @param passagesCharacters the passagesCharacters
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCharacters(Long passagesCharacters) {
      this.passagesCharacters = passagesCharacters;
      return this;
    }

    /**
     * Set the deduplicate.
     *
     * @param deduplicate the deduplicate
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder deduplicate(Boolean deduplicate) {
      this.deduplicate = deduplicate;
      return this;
    }

    /**
     * Set the deduplicateField.
     *
     * @param deduplicateField the deduplicateField
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder deduplicateField(String deduplicateField) {
      this.deduplicateField = deduplicateField;
      return this;
    }

    /**
     * Set the collectionIds.
     *
     * @param collectionIds the collectionIds
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder collectionIds(String collectionIds) {
      this.collectionIds = collectionIds;
      return this;
    }

    /**
     * Set the similar.
     *
     * @param similar the similar
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder similar(Boolean similar) {
      this.similar = similar;
      return this;
    }

    /**
     * Set the similarDocumentIds.
     *
     * @param similarDocumentIds the similarDocumentIds
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder similarDocumentIds(String similarDocumentIds) {
      this.similarDocumentIds = similarDocumentIds;
      return this;
    }

    /**
     * Set the similarFields.
     *
     * @param similarFields the similarFields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder similarFields(String similarFields) {
      this.similarFields = similarFields;
      return this;
    }

    /**
     * Set the bias.
     *
     * @param bias the bias
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder bias(String bias) {
      this.bias = bias;
      return this;
    }

    /**
     * Set the loggingOptOut.
     *
     * @param loggingOptOut the loggingOptOut
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder loggingOptOut(Boolean loggingOptOut) {
      this.loggingOptOut = loggingOptOut;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
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
     * Gets the documentId.
     *
     * The unique identifier of the document from which the passage has been extracted.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the passageScore.
     *
     * The confidence score of the passages's analysis. A higher score indicates greater confidence.
     *
     * @return the passageScore
     */
    @AuraEnabled
    public Double getPassageScore() {
      return passage_score_serialized_name;
    }
 
    /**
     * Gets the passageText.
     *
     * The content of the extracted passage.
     *
     * @return the passageText
     */
    @AuraEnabled
    public String getPassageText() {
      return passage_text_serialized_name;
    }
 
    /**
     * Gets the startOffset.
     *
     * The position of the first character of the extracted passage in the originating field.
     *
     * @return the startOffset
     */
    @AuraEnabled
    public Long getStartOffset() {
      return start_offset_serialized_name;
    }
 
    /**
     * Gets the endOffset.
     *
     * The position of the last character of the extracted passage in the originating field.
     *
     * @return the endOffset
     */
    @AuraEnabled
    public Long getEndOffset() {
      return end_offset_serialized_name;
    }
 
    /**
     * Gets the field.
     *
     * The label of the field from which the passage has been extracted.
     *
     * @return the field
     */
    @AuraEnabled
    public String getField() {
      return field_serialized_name;
    }

    /**
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the passageScore.
     *
     * @param passageScore the new passageScore
     */
    public void setPassageScore(final Double passageScore) {
      this.passage_score_serialized_name = passageScore;
    }

    /**
     * Sets the passageText.
     *
     * @param passageText the new passageText
     */
    public void setPassageText(final String passageText) {
      this.passage_text_serialized_name = passageText;
    }

    /**
     * Sets the startOffset.
     *
     * @param startOffset the new startOffset
     */
    public void setStartOffset(final long startOffset) {
      this.start_offset_serialized_name = startOffset;
    }

    /**
     * Sets the endOffset.
     *
     * @param endOffset the new endOffset
     */
    public void setEndOffset(final long endOffset) {
      this.end_offset_serialized_name = endOffset;
    }

    /**
     * Sets the field.
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
     * Gets the entities.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<QueryEntitiesEntity> getEntities() {
      return entities_serialized_name;
    }

    /**
     * Sets the entities.
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

      // calling custom deserializer for entities
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
  public class QueryRelationsEntity {
    private String text_serialized_name;
    private String type_serialized_name;
    private Boolean exact_serialized_name;
 
    /**
     * Gets the text.
     *
     * Entity text content.
     *
     * @return the text
     */
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the xtype.
     *
     * The type of the specified entity.
     *
     * @return the xtype
     */
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the exact.
     *
     * If false, implicit querying is performed. The default is `false`.
     *
     * @return the exact
     */
    public Boolean getExact() {
      return exact_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the exact.
     *
     * @param exact the new exact
     */
    public void setExact(final Boolean exact) {
      this.exact_serialized_name = exact;
    }

  }

  /**
   * QueryRelationsFilter.
   */
  public class QueryRelationsFilter {
    private QueryFilterType relation_types_serialized_name;
    private QueryFilterType entity_types_serialized_name;
    private List<String> document_ids_serialized_name;
 
    /**
     * Gets the relationTypes.
     *
     * A list of relation types to include or exclude from the query.
     *
     * @return the relationTypes
     */
    public QueryFilterType getRelationTypes() {
      return relation_types_serialized_name;
    }
 
    /**
     * Gets the entityTypes.
     *
     * A list of entity types to include or exclude from the query.
     *
     * @return the entityTypes
     */
    public QueryFilterType getEntityTypes() {
      return entity_types_serialized_name;
    }
 
    /**
     * Gets the documentIds.
     *
     * A comma-separated list of document IDs to include in the query.
     *
     * @return the documentIds
     */
    public List<String> getDocumentIds() {
      return document_ids_serialized_name;
    }

    /**
     * Sets the relationTypes.
     *
     * @param relationTypes the new relationTypes
     */
    public void setRelationTypes(final QueryFilterType relationTypes) {
      this.relation_types_serialized_name = relationTypes;
    }

    /**
     * Sets the entityTypes.
     *
     * @param entityTypes the new entityTypes
     */
    public void setEntityTypes(final QueryFilterType entityTypes) {
      this.entity_types_serialized_name = entityTypes;
    }

    /**
     * Sets the documentIds.
     *
     * @param documentIds the new documentIds
     */
    public void setDocumentIds(final List<String> documentIds) {
      this.document_ids_serialized_name = documentIds;
    }

  }

  /**
   * The queryRelations options.
   */
  public class QueryRelationsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private List<QueryRelationsEntity> entities;
    private QueryEntitiesContext context;
    private String xsort;
    private QueryRelationsFilter filter;
    private Long count;
    private Long evidenceCount;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the entities.
     *
     * An array of entities to find relationships for.
     *
     * @return the entities
     */
    public List<QueryRelationsEntity> entities() {
      return entities;
    }
 
    /**
     * Gets the context.
     *
     * Entity text to provide context for the queried entity and rank based on that association. For example, if you
     * wanted to query the city of London in England your query would look for `London` with the context of `England`.
     *
     * @return the context
     */
    public QueryEntitiesContext context() {
      return context;
    }
 
    /**
     * Gets the xsort.
     *
     * The sorting method for the relationships, can be `score` or `frequency`. `frequency` is the number of unique
     * times each entity is identified. The default is `score`. This parameter cannot be used in the same query as the
     * **bias** parameter.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the filter.
     *
     * Filters to apply to the relationship query.
     *
     * @return the filter
     */
    public QueryRelationsFilter filter() {
      return filter;
    }
 
    /**
     * Gets the count.
     *
     * The number of results to return. The default is `10`. The maximum is `1000`.
     *
     * @return the count
     */
    public Long count() {
      return count;
    }
 
    /**
     * Gets the evidenceCount.
     *
     * The number of evidence items to return for each result. The default is `0`. The maximum number of evidence items
     * per query is 10,000.
     *
     * @return the evidenceCount
     */
    public Long evidenceCount() {
      return evidenceCount;
    }

    private QueryRelationsOptions(QueryRelationsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      entities = builder.entities;
      context = builder.context;
      xsort = builder.xsort;
      filter = builder.filter;
      count = builder.count;
      evidenceCount = builder.evidenceCount;
      this.requestHeaders = builder.requestHeaders;
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
  public class QueryRelationsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private List<QueryRelationsEntity> entities;
    private QueryEntitiesContext context;
    private String xsort;
    private QueryRelationsFilter filter;
    private Long count;
    private Long evidenceCount;

    private QueryRelationsOptionsBuilder(QueryRelationsOptions queryRelationsOptions) {
      environmentId = queryRelationsOptions.environmentId;
      collectionId = queryRelationsOptions.collectionId;
      entities = queryRelationsOptions.entities;
      context = queryRelationsOptions.context;
      xsort = queryRelationsOptions.xsort;
      filter = queryRelationsOptions.filter;
      count = queryRelationsOptions.count;
      evidenceCount = queryRelationsOptions.evidenceCount;
      this.requestHeaders.putAll(queryRelationsOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Adds an entities to entities.
     *
     * @param entities the new entities
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder addEntities(QueryRelationsEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities == null) {
        this.entities = new List<QueryRelationsEntity>();
      }
      this.entities.add(entities);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the entities.
     * Existing entities will be replaced.
     *
     * @param entities the entities
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder entities(List<QueryRelationsEntity> entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder context(QueryEntitiesContext context) {
      this.context = context;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder filter(QueryRelationsFilter filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the count.
     *
     * @param count the count
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder count(Long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the evidenceCount.
     *
     * @param evidenceCount the evidenceCount
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder evidenceCount(Long evidenceCount) {
      this.evidenceCount = evidenceCount;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the QueryRelationsOptions builder
     */
    public QueryRelationsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
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
    private List<QueryEvidence> evidence_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * The identified relationship type.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the frequency.
     *
     * The number of times the relationship is mentioned.
     *
     * @return the frequency
     */
    @AuraEnabled
    public Long getFrequency() {
      return frequency_serialized_name;
    }
 
    /**
     * Gets the arguments.
     *
     * Information about the relationship.
     *
     * @return the arguments
     */
    @AuraEnabled
    public List<QueryRelationsArgument> getArguments() {
      return arguments_serialized_name;
    }
 
    /**
     * Gets the evidence.
     *
     * List of different evidentiary items to support the result.
     *
     * @return the evidence
     */
    @AuraEnabled
    public List<QueryEvidence> getEvidence() {
      return evidence_serialized_name;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the frequency.
     *
     * @param frequency the new frequency
     */
    public void setFrequency(final long frequency) {
      this.frequency_serialized_name = frequency;
    }

    /**
     * Sets the arguments.
     *
     * @param arguments the new arguments
     */
    public void setArguments(final List<QueryRelationsArgument> arguments) {
      this.arguments_serialized_name = arguments;
    }

    /**
     * Sets the evidence.
     *
     * @param evidence the new evidence
     */
    public void setEvidence(final List<QueryEvidence> evidence) {
      this.evidence_serialized_name = evidence;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryRelationsRelationship ret = (QueryRelationsRelationship) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for arguments
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

      // calling custom deserializer for evidence
      List<QueryEvidence> newEvidence = new List<QueryEvidence>();
      List<QueryEvidence> deserializedEvidence = ret.getEvidence();
      if (deserializedEvidence != null) {
        for (Integer i = 0; i < deserializedEvidence.size(); i++) {
          QueryEvidence currentItem = ret.getEvidence().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('evidence_serialized_name');
          QueryEvidence newItem = (QueryEvidence) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryEvidence.class);
          newEvidence.add(newItem);
        }
        ret.setEvidence(newEvidence);
      }

      return ret;
    }
  }

  /**
   * QueryRelationsResponse.
   */
  public class QueryRelationsResponse extends IBMWatsonResponseModel {
    private List<QueryRelationsRelationship> relations_serialized_name;
 
    /**
     * Gets the relations.
     *
     * @return the relations
     */
    @AuraEnabled
    public List<QueryRelationsRelationship> getRelations() {
      return relations_serialized_name;
    }

    /**
     * Sets the relations.
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

      // calling custom deserializer for relations
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
  public class QueryResponse extends IBMWatsonResponseModel {
    private Long matching_results_serialized_name;
    private List<QueryResult> results_serialized_name;
    private List<QueryAggregation> aggregations_serialized_name;
    private List<QueryPassages> passages_serialized_name;
    private Long duplicates_removed_serialized_name;
    private String session_token_serialized_name;
    private RetrievalDetails retrieval_details_serialized_name;
 
    /**
     * Gets the matchingResults.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<QueryResult> getResults() {
      return results_serialized_name;
    }
 
    /**
     * Gets the aggregations.
     *
     * @return the aggregations
     */
    @AuraEnabled
    public List<QueryAggregation> getAggregations() {
      return aggregations_serialized_name;
    }
 
    /**
     * Gets the passages.
     *
     * @return the passages
     */
    @AuraEnabled
    public List<QueryPassages> getPassages() {
      return passages_serialized_name;
    }
 
    /**
     * Gets the duplicatesRemoved.
     *
     * @return the duplicatesRemoved
     */
    @AuraEnabled
    public Long getDuplicatesRemoved() {
      return duplicates_removed_serialized_name;
    }
 
    /**
     * Gets the sessionToken.
     *
     * The session token for this query. The session token can be used to add events associated with this query to the
     * query and event log.
     *
     * **Important:** Session tokens are case sensitive.
     *
     * @return the sessionToken
     */
    @AuraEnabled
    public String getSessionToken() {
      return session_token_serialized_name;
    }
 
    /**
     * Gets the retrievalDetails.
     *
     * An object contain retrieval type information.
     *
     * @return the retrievalDetails
     */
    @AuraEnabled
    public RetrievalDetails getRetrievalDetails() {
      return retrieval_details_serialized_name;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<QueryResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations_serialized_name = aggregations;
    }

    /**
     * Sets the passages.
     *
     * @param passages the new passages
     */
    public void setPassages(final List<QueryPassages> passages) {
      this.passages_serialized_name = passages;
    }

    /**
     * Sets the duplicatesRemoved.
     *
     * @param duplicatesRemoved the new duplicatesRemoved
     */
    public void setDuplicatesRemoved(final long duplicatesRemoved) {
      this.duplicates_removed_serialized_name = duplicatesRemoved;
    }

    /**
     * Sets the sessionToken.
     *
     * @param sessionToken the new sessionToken
     */
    public void setSessionToken(final String sessionToken) {
      this.session_token_serialized_name = sessionToken;
    }

    /**
     * Sets the retrievalDetails.
     *
     * @param retrievalDetails the new retrievalDetails
     */
    public void setRetrievalDetails(final RetrievalDetails retrievalDetails) {
      this.retrieval_details_serialized_name = retrievalDetails;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryResponse ret = (QueryResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results
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

      // calling custom deserializer for aggregations
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

      // calling custom deserializer for passages
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

      // calling custom deserializer for retrievalDetails
      RetrievalDetails newRetrievalDetails = (RetrievalDetails) new RetrievalDetails().deserialize(JSON.serialize(ret.getRetrievalDetails()), (Map<String, Object>) jsonMap.get('retrieval_details_serialized_name'), RetrievalDetails.class);
      ret.setRetrievalDetails(newRetrievalDetails);

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
    private QueryResultMetadata result_metadata_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the id.
     *
     * @return the id
     */
    @AuraEnabled
    public String getId() {
      return id_serialized_name;
    }

    /**
     * Gets the score.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Gets the metadata.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }

    /**
     * Gets the collectionId.
     *
     * @return the collectionId
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }

    /**
     * Gets the resultMetadata.
     *
     * @return the resultMetadata
     */
    @AuraEnabled
    public QueryResultMetadata getResultMetadata() {
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
     * Sets the id.
     *
     * @param id the new id
     */
    public void setId(final String id) {
      this.id_serialized_name = id;
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Sets the resultMetadata.
     *
     * @param resultMetadata the new resultMetadata
     */
    public void setResultMetadata(final QueryResultMetadata resultMetadata) {
      this.result_metadata_serialized_name = resultMetadata;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryResult ret = (QueryResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for resultMetadata
      QueryResultMetadata newResultMetadata = (QueryResultMetadata) new QueryResultMetadata().deserialize(JSON.serialize(ret.getResultMetadata()), (Map<String, Object>) jsonMap.get('result_metadata_serialized_name'), QueryResultMetadata.class);
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
   * Metadata of a query result.
   */
  public class QueryResultMetadata extends IBMWatsonGenericModel {
    private Double score_serialized_name;
    private Double confidence_serialized_name;
 
    /**
     * Gets the score.
     *
     * An unbounded measure of the relevance of a particular result, dependent on the query and matching document. A
     * higher score indicates a greater match to the query parameters.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * The confidence score for the given result. Calculated based on how relevant the result is estimated to be.
     * confidence can range from `0.0` to `1.0`. The higher the number, the more relevant the document. The `confidence`
     * value for a result was calculated using the model specified in the `document_retrieval_strategy` field of the
     * result set.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      QueryResultMetadata ret = (QueryResultMetadata) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An object contain retrieval type information.
   */
  public class RetrievalDetails extends IBMWatsonGenericModel {
    private String document_retrieval_strategy_serialized_name;
 
    /**
     * Gets the documentRetrievalStrategy.
     *
     * Indentifies the document retrieval strategy used for this query. `relevancy_training` indicates that the results
     * were returned using a relevancy trained model. `continuous_relevancy_training` indicates that the results were
     * returned using the continuous relevancy training model created by result feedback analysis. `untrained` means the
     * results were returned using the standard untrained model.
     *
     *  **Note**: In the event of trained collections being queried, but the trained model is not used to return
     * results, the **document_retrieval_strategy** will be listed as `untrained`.
     *
     * @return the documentRetrievalStrategy
     */
    @AuraEnabled
    public String getDocumentRetrievalStrategy() {
      return document_retrieval_strategy_serialized_name;
    }

    /**
     * Sets the documentRetrievalStrategy.
     *
     * @param documentRetrievalStrategy the new documentRetrievalStrategy
     */
    public void setDocumentRetrievalStrategy(final String documentRetrievalStrategy) {
      this.document_retrieval_strategy_serialized_name = documentRetrievalStrategy;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RetrievalDetails ret = (RetrievalDetails) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Information about the Continuous Relevancy Training for this environment.
   */
  public class SearchStatus extends IBMWatsonGenericModel {
    private String scope_serialized_name;
    private String status_serialized_name;
    private String status_description_serialized_name;
    private Datetime last_trained_serialized_name;
 
    /**
     * Gets the scope.
     *
     * Current scope of the training. Always returned as `environment`.
     *
     * @return the scope
     */
    @AuraEnabled
    public String getScope() {
      return scope_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The current status of Continuous Relevancy Training for this environment.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the statusDescription.
     *
     * Long description of the current Continuous Relevancy Training status.
     *
     * @return the statusDescription
     */
    @AuraEnabled
    public String getStatusDescription() {
      return status_description_serialized_name;
    }
 
    /**
     * Gets the lastTrained.
     *
     * The date stamp of the most recent completed training for this environment.
     *
     * @return the lastTrained
     */
    @AuraEnabled
    public Datetime getLastTrained() {
      return last_trained_serialized_name;
    }

    /**
     * Sets the scope.
     *
     * @param scope the new scope
     */
    public void setScope(final String scope) {
      this.scope_serialized_name = scope;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the statusDescription.
     *
     * @param statusDescription the new statusDescription
     */
    public void setStatusDescription(final String statusDescription) {
      this.status_description_serialized_name = statusDescription;
    }

    /**
     * Sets the lastTrained.
     *
     * @param lastTrained the new lastTrained
     */
    public void setLastTrained(final Datetime lastTrained) {
      this.last_trained_serialized_name = lastTrained;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SearchStatus ret = (SearchStatus) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A list of Document Segmentation settings.
   */
  public class SegmentSettings extends IBMWatsonGenericModel {
    private Boolean enabled_serialized_name;
    private List<String> selector_tags_serialized_name;
 
    /**
     * Gets the enabled.
     *
     * Enables/disables the Document Segmentation feature.
     *
     * @return the enabled
     */
    @AuraEnabled
    public Boolean getEnabled() {
      return enabled_serialized_name;
    }
 
    /**
     * Gets the selectorTags.
     *
     * Defines the heading level that splits into document segments. Valid values are h1, h2, h3, h4, h5, h6.
     *
     * @return the selectorTags
     */
    @AuraEnabled
    public List<String> getSelectorTags() {
      return selector_tags_serialized_name;
    }

    /**
     * Sets the enabled.
     *
     * @param enabled the new enabled
     */
    public void setEnabled(final Boolean enabled) {
      this.enabled_serialized_name = enabled;
    }

    /**
     * Sets the selectorTags.
     *
     * @param selectorTags the new selectorTags
     */
    public void setSelectorTags(final List<String> selectorTags) {
      this.selector_tags_serialized_name = selectorTags;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SegmentSettings ret = (SegmentSettings) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object containing source parameters for the configuration.
   */
  public class Source extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String credential_id_serialized_name;
    private SourceSchedule schedule_serialized_name;
    private SourceOptions options_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * The type of source to connect to.
     * -  `box` indicates the configuration is to connect an instance of Enterprise Box.
     * -  `salesforce` indicates the configuration is to connect to Salesforce.
     * -  `sharepoint` indicates the configuration is to connect to Microsoft SharePoint Online.
     * -  `web_crawl` indicates the configuration is to perform a web page crawl.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the credentialId.
     *
     * The **credential_id** of the credentials to use to connect to the source. Credentials are defined using the
     * **credentials** method. The **source_type** of the credentials used must match the **type** field specified in
     * this object.
     *
     * @return the credentialId
     */
    @AuraEnabled
    public String getCredentialId() {
      return credential_id_serialized_name;
    }
 
    /**
     * Gets the schedule.
     *
     * Object containing the schedule information for the source.
     *
     * @return the schedule
     */
    @AuraEnabled
    public SourceSchedule getSchedule() {
      return schedule_serialized_name;
    }
 
    /**
     * Gets the options.
     *
     * The **options** object defines which items to crawl from the source system.
     *
     * @return the options
     */
    @AuraEnabled
    public SourceOptions getOptions() {
      return options_serialized_name;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the credentialId.
     *
     * @param credentialId the new credentialId
     */
    public void setCredentialId(final String credentialId) {
      this.credential_id_serialized_name = credentialId;
    }

    /**
     * Sets the schedule.
     *
     * @param schedule the new schedule
     */
    public void setSchedule(final SourceSchedule schedule) {
      this.schedule_serialized_name = schedule;
    }

    /**
     * Sets the options.
     *
     * @param options the new options
     */
    public void setOptions(final SourceOptions options) {
      this.options_serialized_name = options;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Source ret = (Source) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for schedule
      SourceSchedule newSchedule = (SourceSchedule) new SourceSchedule().deserialize(JSON.serialize(ret.getSchedule()), (Map<String, Object>) jsonMap.get('schedule_serialized_name'), SourceSchedule.class);
      ret.setSchedule(newSchedule);

      // calling custom deserializer for options
      SourceOptions newOptions = (SourceOptions) new SourceOptions().deserialize(JSON.serialize(ret.getOptions()), (Map<String, Object>) jsonMap.get('options_serialized_name'), SourceOptions.class);
      ret.setOptions(newOptions);

      return ret;
    }
  }

  /**
   * The **options** object defines which items to crawl from the source system.
   */
  public class SourceOptions extends IBMWatsonGenericModel {
    private List<SourceOptionsFolder> folders_serialized_name;
    private List<SourceOptionsObject> objects_serialized_name;
    private List<SourceOptionsSiteColl> site_collections_serialized_name;
    private List<SourceOptionsWebCrawl> urls_serialized_name;
 
    /**
     * Gets the folders.
     *
     * Array of folders to crawl from the Box source. Only valid, and required, when the **type** field of the
     * **source** object is set to `box`.
     *
     * @return the folders
     */
    @AuraEnabled
    public List<SourceOptionsFolder> getFolders() {
      return folders_serialized_name;
    }
 
    /**
     * Gets the objects.
     *
     * Array of Salesforce document object types to crawl from the Salesforce source. Only valid, and required, when the
     * **type** field of the **source** object is set to `salesforce`.
     *
     * @return the objects
     */
    @AuraEnabled
    public List<SourceOptionsObject> getObjects() {
      return objects_serialized_name;
    }
 
    /**
     * Gets the siteCollections.
     *
     * Array of Microsoft SharePointoint Online site collections to crawl from the SharePoint source. Only valid and
     * required when the **type** field of the **source** object is set to `sharepoint`.
     *
     * @return the siteCollections
     */
    @AuraEnabled
    public List<SourceOptionsSiteColl> getSiteCollections() {
      return site_collections_serialized_name;
    }
 
    /**
     * Gets the urls.
     *
     * Array of Web page URLs to begin crawling the web from. Only valid and required when the **type** field of the
     * **source** object is set to `web_crawl`.
     *
     * @return the urls
     */
    @AuraEnabled
    public List<SourceOptionsWebCrawl> getUrls() {
      return urls_serialized_name;
    }

    /**
     * Sets the folders.
     *
     * @param folders the new folders
     */
    public void setFolders(final List<SourceOptionsFolder> folders) {
      this.folders_serialized_name = folders;
    }

    /**
     * Sets the objects.
     *
     * @param objects the new objects
     */
    public void setObjects(final List<SourceOptionsObject> objects) {
      this.objects_serialized_name = objects;
    }

    /**
     * Sets the siteCollections.
     *
     * @param siteCollections the new siteCollections
     */
    public void setSiteCollections(final List<SourceOptionsSiteColl> siteCollections) {
      this.site_collections_serialized_name = siteCollections;
    }

    /**
     * Sets the urls.
     *
     * @param urls the new urls
     */
    public void setUrls(final List<SourceOptionsWebCrawl> urls) {
      this.urls_serialized_name = urls;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SourceOptions ret = (SourceOptions) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for folders
      List<SourceOptionsFolder> newFolders = new List<SourceOptionsFolder>();
      List<SourceOptionsFolder> deserializedFolders = ret.getFolders();
      if (deserializedFolders != null) {
        for (Integer i = 0; i < deserializedFolders.size(); i++) {
          SourceOptionsFolder currentItem = ret.getFolders().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('folders_serialized_name');
          SourceOptionsFolder newItem = (SourceOptionsFolder) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SourceOptionsFolder.class);
          newFolders.add(newItem);
        }
        ret.setFolders(newFolders);
      }

      // calling custom deserializer for objects
      List<SourceOptionsObject> newObjects = new List<SourceOptionsObject>();
      List<SourceOptionsObject> deserializedObjects = ret.getObjects();
      if (deserializedObjects != null) {
        for (Integer i = 0; i < deserializedObjects.size(); i++) {
          SourceOptionsObject currentItem = ret.getObjects().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('objects_serialized_name');
          SourceOptionsObject newItem = (SourceOptionsObject) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SourceOptionsObject.class);
          newObjects.add(newItem);
        }
        ret.setObjects(newObjects);
      }

      // calling custom deserializer for siteCollections
      List<SourceOptionsSiteColl> newSiteCollections = new List<SourceOptionsSiteColl>();
      List<SourceOptionsSiteColl> deserializedSiteCollections = ret.getSiteCollections();
      if (deserializedSiteCollections != null) {
        for (Integer i = 0; i < deserializedSiteCollections.size(); i++) {
          SourceOptionsSiteColl currentItem = ret.getSiteCollections().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('site_collections_serialized_name');
          SourceOptionsSiteColl newItem = (SourceOptionsSiteColl) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SourceOptionsSiteColl.class);
          newSiteCollections.add(newItem);
        }
        ret.setSiteCollections(newSiteCollections);
      }

      // calling custom deserializer for urls
      List<SourceOptionsWebCrawl> newUrls = new List<SourceOptionsWebCrawl>();
      List<SourceOptionsWebCrawl> deserializedUrls = ret.getUrls();
      if (deserializedUrls != null) {
        for (Integer i = 0; i < deserializedUrls.size(); i++) {
          SourceOptionsWebCrawl currentItem = ret.getUrls().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('urls_serialized_name');
          SourceOptionsWebCrawl newItem = (SourceOptionsWebCrawl) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SourceOptionsWebCrawl.class);
          newUrls.add(newItem);
        }
        ret.setUrls(newUrls);
      }

      return ret;
    }
  }

  /**
   * Object that defines a box folder to crawl with this configuration.
   */
  public class SourceOptionsFolder extends IBMWatsonGenericModel {
    private String owner_user_id_serialized_name;
    private String folder_id_serialized_name;
    private Long limit_serialized_name;
 
    /**
     * Gets the ownerUserId.
     *
     * The Box user ID of the user who owns the folder to crawl.
     *
     * @return the ownerUserId
     */
    @AuraEnabled
    public String getOwnerUserId() {
      return owner_user_id_serialized_name;
    }
 
    /**
     * Gets the folderId.
     *
     * The Box folder ID of the folder to crawl.
     *
     * @return the folderId
     */
    @AuraEnabled
    public String getFolderId() {
      return folder_id_serialized_name;
    }
 
    /**
     * Gets the xlimit.
     *
     * The maximum number of documents to crawl for this folder. By default, all documents in the folder are crawled.
     *
     * @return the xlimit
     */
    @AuraEnabled
    public Long getXlimit() {
      return limit_serialized_name;
    }

    /**
     * Sets the ownerUserId.
     *
     * @param ownerUserId the new ownerUserId
     */
    public void setOwnerUserId(final String ownerUserId) {
      this.owner_user_id_serialized_name = ownerUserId;
    }

    /**
     * Sets the folderId.
     *
     * @param folderId the new folderId
     */
    public void setFolderId(final String folderId) {
      this.folder_id_serialized_name = folderId;
    }

    /**
     * Sets the xlimit.
     *
     * @param xlimit the new xlimit
     */
    public void setXlimit(final long xlimit) {
      this.limit_serialized_name = xlimit;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SourceOptionsFolder ret = (SourceOptionsFolder) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object that defines a Salesforce document object type crawl with this configuration.
   */
  public class SourceOptionsObject extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private Long limit_serialized_name;
 
    /**
     * Gets the name.
     *
     * The name of the Salesforce document object to crawl. For example, `case`.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the xlimit.
     *
     * The maximum number of documents to crawl for this document object. By default, all documents in the document
     * object are crawled.
     *
     * @return the xlimit
     */
    @AuraEnabled
    public Long getXlimit() {
      return limit_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the xlimit.
     *
     * @param xlimit the new xlimit
     */
    public void setXlimit(final long xlimit) {
      this.limit_serialized_name = xlimit;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SourceOptionsObject ret = (SourceOptionsObject) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object that defines a Microsoft SharePoint site collection to crawl with this configuration.
   */
  public class SourceOptionsSiteColl extends IBMWatsonGenericModel {
    private String site_collection_path_serialized_name;
    private Long limit_serialized_name;
 
    /**
     * Gets the siteCollectionPath.
     *
     * The Microsoft SharePoint Online site collection path to crawl. The path must be be relative to the
     * **organization_url** that was specified in the credentials associated with this source configuration.
     *
     * @return the siteCollectionPath
     */
    @AuraEnabled
    public String getSiteCollectionPath() {
      return site_collection_path_serialized_name;
    }
 
    /**
     * Gets the xlimit.
     *
     * The maximum number of documents to crawl for this site collection. By default, all documents in the site
     * collection are crawled.
     *
     * @return the xlimit
     */
    @AuraEnabled
    public Long getXlimit() {
      return limit_serialized_name;
    }

    /**
     * Sets the siteCollectionPath.
     *
     * @param siteCollectionPath the new siteCollectionPath
     */
    public void setSiteCollectionPath(final String siteCollectionPath) {
      this.site_collection_path_serialized_name = siteCollectionPath;
    }

    /**
     * Sets the xlimit.
     *
     * @param xlimit the new xlimit
     */
    public void setXlimit(final long xlimit) {
      this.limit_serialized_name = xlimit;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SourceOptionsSiteColl ret = (SourceOptionsSiteColl) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object defining which URL to crawl and how to crawl it.
   */
  public class SourceOptionsWebCrawl extends IBMWatsonGenericModel {
    private String url_serialized_name;
    private Boolean limit_to_starting_hosts_serialized_name;
    private String crawl_speed_serialized_name;
    private Boolean allow_untrusted_certificate_serialized_name;
    private Long maximum_hops_serialized_name;
    private Long request_timeout_serialized_name;
    private Boolean override_robots_txt_serialized_name;
 
    /**
     * Gets the url.
     *
     * The starting URL to crawl.
     *
     * @return the url
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
 
    /**
     * Gets the limitToStartingHosts.
     *
     * When `true`, crawls of the specified URL are limited to the host part of the **url** field.
     *
     * @return the limitToStartingHosts
     */
    @AuraEnabled
    public Boolean getLimitToStartingHosts() {
      return limit_to_starting_hosts_serialized_name;
    }
 
    /**
     * Gets the crawlSpeed.
     *
     * The number of concurrent URLs to fetch. `gentle` means one URL is fetched at a time with a delay between each
     * call. `normal` means as many as two URLs are fectched concurrently with a short delay between fetch calls.
     * `aggressive` means that up to ten URLs are fetched concurrently with a short delay between fetch calls.
     *
     * @return the crawlSpeed
     */
    @AuraEnabled
    public String getCrawlSpeed() {
      return crawl_speed_serialized_name;
    }
 
    /**
     * Gets the allowUntrustedCertificate.
     *
     * When `true`, allows the crawl to interact with HTTPS sites with SSL certificates with untrusted signers.
     *
     * @return the allowUntrustedCertificate
     */
    @AuraEnabled
    public Boolean getAllowUntrustedCertificate() {
      return allow_untrusted_certificate_serialized_name;
    }
 
    /**
     * Gets the maximumHops.
     *
     * The maximum number of hops to make from the initial URL. When a page is crawled each link on that page will also
     * be crawled if it is within the **maximum_hops** from the initial URL. The first page crawled is 0 hops, each link
     * crawled from the first page is 1 hop, each link crawled from those pages is 2 hops, and so on.
     *
     * @return the maximumHops
     */
    @AuraEnabled
    public Long getMaximumHops() {
      return maximum_hops_serialized_name;
    }
 
    /**
     * Gets the requestTimeout.
     *
     * The maximum milliseconds to wait for a response from the web server.
     *
     * @return the requestTimeout
     */
    @AuraEnabled
    public Long getRequestTimeout() {
      return request_timeout_serialized_name;
    }
 
    /**
     * Gets the overrideRobotsTxt.
     *
     * When `true`, the crawler will ignore any `robots.txt` encountered by the crawler. This should only ever be done
     * when crawling a web site the user owns. This must be be set to `true` when a **gateway_id** is specied in the
     * **credentials**.
     *
     * @return the overrideRobotsTxt
     */
    @AuraEnabled
    public Boolean getOverrideRobotsTxt() {
      return override_robots_txt_serialized_name;
    }

    /**
     * Sets the url.
     *
     * @param url the new url
     */
    public void setUrl(final String url) {
      this.url_serialized_name = url;
    }

    /**
     * Sets the limitToStartingHosts.
     *
     * @param limitToStartingHosts the new limitToStartingHosts
     */
    public void setLimitToStartingHosts(final Boolean limitToStartingHosts) {
      this.limit_to_starting_hosts_serialized_name = limitToStartingHosts;
    }

    /**
     * Sets the crawlSpeed.
     *
     * @param crawlSpeed the new crawlSpeed
     */
    public void setCrawlSpeed(final String crawlSpeed) {
      this.crawl_speed_serialized_name = crawlSpeed;
    }

    /**
     * Sets the allowUntrustedCertificate.
     *
     * @param allowUntrustedCertificate the new allowUntrustedCertificate
     */
    public void setAllowUntrustedCertificate(final Boolean allowUntrustedCertificate) {
      this.allow_untrusted_certificate_serialized_name = allowUntrustedCertificate;
    }

    /**
     * Sets the maximumHops.
     *
     * @param maximumHops the new maximumHops
     */
    public void setMaximumHops(final long maximumHops) {
      this.maximum_hops_serialized_name = maximumHops;
    }

    /**
     * Sets the requestTimeout.
     *
     * @param requestTimeout the new requestTimeout
     */
    public void setRequestTimeout(final long requestTimeout) {
      this.request_timeout_serialized_name = requestTimeout;
    }

    /**
     * Sets the overrideRobotsTxt.
     *
     * @param overrideRobotsTxt the new overrideRobotsTxt
     */
    public void setOverrideRobotsTxt(final Boolean overrideRobotsTxt) {
      this.override_robots_txt_serialized_name = overrideRobotsTxt;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SourceOptionsWebCrawl ret = (SourceOptionsWebCrawl) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object containing the schedule information for the source.
   */
  public class SourceSchedule extends IBMWatsonGenericModel {
    private Boolean enabled_serialized_name;
    private String time_zone_serialized_name;
    private String frequency_serialized_name;
 
    /**
     * Gets the enabled.
     *
     * When `true`, the source is re-crawled based on the **frequency** field in this object. When `false` the source is
     * not re-crawled; When `false` and connecting to Salesforce the source is crawled annually.
     *
     * @return the enabled
     */
    @AuraEnabled
    public Boolean getEnabled() {
      return enabled_serialized_name;
    }
 
    /**
     * Gets the timeZone.
     *
     * The time zone to base source crawl times on. Possible values correspond to the IANA (Internet Assigned Numbers
     * Authority) time zones list.
     *
     * @return the timeZone
     */
    @AuraEnabled
    public String getTimeZone() {
      return time_zone_serialized_name;
    }
 
    /**
     * Gets the frequency.
     *
     * The crawl schedule in the specified **time_zone**.
     *
     * -  `daily`: Runs every day between 00:00 and 06:00.
     * -  `weekly`: Runs every week on Sunday between 00:00 and 06:00.
     * -  `monthly`: Runs the on the first Sunday of every month between 00:00 and 06:00.
     *
     * @return the frequency
     */
    @AuraEnabled
    public String getFrequency() {
      return frequency_serialized_name;
    }

    /**
     * Sets the enabled.
     *
     * @param enabled the new enabled
     */
    public void setEnabled(final Boolean enabled) {
      this.enabled_serialized_name = enabled;
    }

    /**
     * Sets the timeZone.
     *
     * @param timeZone the new timeZone
     */
    public void setTimeZone(final String timeZone) {
      this.time_zone_serialized_name = timeZone;
    }

    /**
     * Sets the frequency.
     *
     * @param frequency the new frequency
     */
    public void setFrequency(final String frequency) {
      this.frequency_serialized_name = frequency;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SourceSchedule ret = (SourceSchedule) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Object containing source crawl status information.
   */
  public class SourceStatus extends IBMWatsonGenericModel {
    private String status_serialized_name;
    private Datetime last_updated_serialized_name;
 
    /**
     * Gets the status.
     *
     * The current status of the source crawl for this collection. This field returns `not_configured` if the default
     * configuration for this source does not have a **source** object defined.
     *
     * -  `running` indicates that a crawl to fetch more documents is in progress.
     * -  `complete` indicates that the crawl has completed with no errors.
     * -  `complete_with_notices` indicates that some notices were generated during the crawl. Notices can be checked by
     * using the **notices** query method.
     * -  `stopped` indicates that the crawl has stopped but is not complete.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the lastUpdated.
     *
     * Date in UTC format indicating when the last crawl was attempted. If `null`, no crawl was completed.
     *
     * @return the lastUpdated
     */
    @AuraEnabled
    public Datetime getLastUpdated() {
      return last_updated_serialized_name;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the lastUpdated.
     *
     * @param lastUpdated the new lastUpdated
     */
    public void setLastUpdated(final Datetime lastUpdated) {
      this.last_updated_serialized_name = lastUpdated;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SourceStatus ret = (SourceStatus) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The testConfigurationInEnvironment options.
   */
  public class TestConfigurationInEnvironmentOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configuration;
    private String step;
    private String configurationId;
    private IBMWatsonFile file;
    private String filename;
    private String metadata;
    private String fileContentType;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the configuration.
     *
     * The configuration to use to process the document. If this part is provided, then the provided configuration is
     * used to process the document. If the **configuration_id** is also provided (both are present at the same time),
     * then request is rejected. The maximum supported configuration size is 1 MB. Configuration parts larger than 1 MB
     * are rejected.
     * See the `GET /configurations/{configuration_id}` operation for an example configuration.
     *
     * @return the configuration
     */
    public String configuration() {
      return configuration;
    }
 
    /**
     * Gets the step.
     *
     * Specify to only run the input document through the given step instead of running the input document through the
     * entire ingestion workflow. Valid values are `convert`, `enrich`, and `normalize`.
     *
     * @return the step
     */
    public String step() {
      return step;
    }
 
    /**
     * Gets the configurationId.
     *
     * The ID of the configuration to use to process the document. If the **configuration** form part is also provided
     * (both are present at the same time), then the request will be rejected.
     *
     * @return the configurationId
     */
    public String configurationId() {
      return configurationId;
    }
 
    /**
     * Gets the file.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50
     * megabytes is rejected.
     *
     * @return the file
     */
    public IBMWatsonFile file() {
      return file;
    }
 
    /**
     * Gets the filename.
     *
     * The filename for file.
     *
     * @return the filename
     */
    public String filename() {
      return filename;
    }
 
    /**
     * Gets the metadata.
     *
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata
     * that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1
     * MB are rejected.
     * Example:  ``` {
     *   "Creator": "Johnny Appleseed",
     *   "Subject": "Apples"
     * } ```.
     *
     * @return the metadata
     */
    public String metadata() {
      return metadata;
    }
 
    /**
     * Gets the fileContentType.
     *
     * The content type of file.
     *
     * @return the fileContentType
     */
    public String fileContentType() {
      return fileContentType;
    }

    private TestConfigurationInEnvironmentOptions(TestConfigurationInEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.isTrue(builder.file == null || builder.fileContentType != null, 'content type cannot be null if file is not null');
      environmentId = builder.environmentId;
      configuration = builder.configuration;
      step = builder.step;
      configurationId = builder.configurationId;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      fileContentType = builder.fileContentType;
      this.requestHeaders = builder.requestHeaders;
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
  public class TestConfigurationInEnvironmentOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configuration;
    private String step;
    private String configurationId;
    private IBMWatsonFile file;
    private String filename;
    private String metadata;
    private String fileContentType;

    private TestConfigurationInEnvironmentOptionsBuilder(TestConfigurationInEnvironmentOptions testConfigurationInEnvironmentOptions) {
      environmentId = testConfigurationInEnvironmentOptions.environmentId;
      configuration = testConfigurationInEnvironmentOptions.configuration;
      step = testConfigurationInEnvironmentOptions.step;
      configurationId = testConfigurationInEnvironmentOptions.configurationId;
      file = testConfigurationInEnvironmentOptions.file;
      filename = testConfigurationInEnvironmentOptions.filename;
      metadata = testConfigurationInEnvironmentOptions.metadata;
      fileContentType = testConfigurationInEnvironmentOptions.fileContentType;
      this.requestHeaders.putAll(testConfigurationInEnvironmentOptions.requestHeaders());
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
      this.environmentId = environmentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the configuration.
     *
     * @param configuration the configuration
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder configuration(String configuration) {
      this.configuration = configuration;
      return this;
    }

    /**
     * Set the step.
     *
     * @param step the step
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder step(String step) {
      this.step = step;
      return this;
    }

    /**
     * Set the configurationId.
     *
     * @param configurationId the configurationId
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder configurationId(String configurationId) {
      this.configurationId = configurationId;
      return this;
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder file(IBMWatsonFile file) {
      this.file = file;
      return this;
    }

    /**
     * Set the filename.
     *
     * @param filename the filename
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder filename(String filename) {
      this.filename = filename;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder metadata(String metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the fileContentType.
     *
     * @param fileContentType the fileContentType
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder fileContentType(String fileContentType) {
      this.fileContentType = fileContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * TestDocument.
   */
  public class TestDocument extends IBMWatsonResponseModel {
    private String configuration_id_serialized_name;
    private String status_serialized_name;
    private Long enriched_field_units_serialized_name;
    private String original_media_type_serialized_name;
    private List<DocumentSnapshot> snapshots_serialized_name;
    private List<Notice> notices_serialized_name;
 
    /**
     * Gets the configurationId.
     *
     * The unique identifier for the configuration.
     *
     * @return the configurationId
     */
    @AuraEnabled
    public String getConfigurationId() {
      return configuration_id_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * Status of the preview operation.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the enrichedFieldUnits.
     *
     * The number of 10-kB chunks of field data that were enriched. This can be used to estimate the cost of running a
     * real ingestion.
     *
     * @return the enrichedFieldUnits
     */
    @AuraEnabled
    public Long getEnrichedFieldUnits() {
      return enriched_field_units_serialized_name;
    }
 
    /**
     * Gets the originalMediaType.
     *
     * Format of the test document.
     *
     * @return the originalMediaType
     */
    @AuraEnabled
    public String getOriginalMediaType() {
      return original_media_type_serialized_name;
    }
 
    /**
     * Gets the snapshots.
     *
     * An array of objects that describe each step in the preview process.
     *
     * @return the snapshots
     */
    @AuraEnabled
    public List<DocumentSnapshot> getSnapshots() {
      return snapshots_serialized_name;
    }
 
    /**
     * Gets the notices.
     *
     * An array of notice messages about the preview operation.
     *
     * @return the notices
     */
    @AuraEnabled
    public List<Notice> getNotices() {
      return notices_serialized_name;
    }

    /**
     * Sets the snapshots.
     *
     * @param snapshots the new snapshots
     */
    public void setSnapshots(final List<DocumentSnapshot> snapshots) {
      this.snapshots_serialized_name = snapshots;
    }

    /**
     * Sets the notices.
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

      // calling custom deserializer for snapshots
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

      // calling custom deserializer for notices
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
   * An object defining a single tokenizaion rule.
   */
  public class TokenDictRule {
    private String text_serialized_name;
    private List<String> tokens_serialized_name;
    private List<String> readings_serialized_name;
    private String part_of_speech_serialized_name;
 
    /**
     * Gets the text.
     *
     * The string to tokenize.
     *
     * @return the text
     */
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the tokens.
     *
     * Array of tokens that the `text` field is split into when found.
     *
     * @return the tokens
     */
    public List<String> getTokens() {
      return tokens_serialized_name;
    }
 
    /**
     * Gets the readings.
     *
     * Array of tokens that represent the content of the `text` field in an alternate character set.
     *
     * @return the readings
     */
    public List<String> getReadings() {
      return readings_serialized_name;
    }
 
    /**
     * Gets the partOfSpeech.
     *
     * The part of speech that the `text` string belongs to. For example `noun`. Custom parts of speech can be
     * specified.
     *
     * @return the partOfSpeech
     */
    public String getPartOfSpeech() {
      return part_of_speech_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the tokens.
     *
     * @param tokens the new tokens
     */
    public void setTokens(final List<String> tokens) {
      this.tokens_serialized_name = tokens;
    }

    /**
     * Sets the readings.
     *
     * @param readings the new readings
     */
    public void setReadings(final List<String> readings) {
      this.readings_serialized_name = readings;
    }

    /**
     * Sets the partOfSpeech.
     *
     * @param partOfSpeech the new partOfSpeech
     */
    public void setPartOfSpeech(final String partOfSpeech) {
      this.part_of_speech_serialized_name = partOfSpeech;
    }

  }

  /**
   * Object describing the current status of the wordlist.
   */
  public class TokenDictStatusResponse extends IBMWatsonResponseModel {
    private String status_serialized_name;
    private String type_serialized_name;
 
    /**
     * Gets the status.
     *
     * Current wordlist status for the specified collection.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the xtype.
     *
     * The type for this wordlist. Can be `tokenization_dictionary` or `stopwords`.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TokenDictStatusResponse ret = (TokenDictStatusResponse) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * TopHitsResults.
   */
  public class TopHitsResults extends IBMWatsonGenericModel {
    private Long matching_results_serialized_name;
    private List<QueryResult> hits_serialized_name;
 
    /**
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    @AuraEnabled
    public Long getMatchingResults() {
      return matching_results_serialized_name;
    }
 
    /**
     * Gets the hits.
     *
     * Top results returned by the aggregation.
     *
     * @return the hits
     */
    @AuraEnabled
    public List<QueryResult> getHits() {
      return hits_serialized_name;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matching_results_serialized_name = matchingResults;
    }

    /**
     * Sets the hits.
     *
     * @param hits the new hits
     */
    public void setHits(final List<QueryResult> hits) {
      this.hits_serialized_name = hits;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TopHitsResults ret = (TopHitsResults) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for hits
      List<QueryResult> newHits = new List<QueryResult>();
      List<QueryResult> deserializedHits = ret.getHits();
      if (deserializedHits != null) {
        for (Integer i = 0; i < deserializedHits.size(); i++) {
          QueryResult currentItem = ret.getHits().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('hits_serialized_name');
          QueryResult newItem = (QueryResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), QueryResult.class);
          newHits.add(newItem);
        }
        ret.setHits(newHits);
      }

      return ret;
    }
  }

  /**
   * TrainingDataSet.
   */
  public class TrainingDataSet extends IBMWatsonResponseModel {
    private String environment_id_serialized_name;
    private String collection_id_serialized_name;
    private List<TrainingQuery> queries_serialized_name;
 
    /**
     * Gets the environmentId.
     *
     * @return the environmentId
     */
    @AuraEnabled
    public String getEnvironmentId() {
      return environment_id_serialized_name;
    }
 
    /**
     * Gets the collectionId.
     *
     * @return the collectionId
     */
    @AuraEnabled
    public String getCollectionId() {
      return collection_id_serialized_name;
    }
 
    /**
     * Gets the queries.
     *
     * @return the queries
     */
    @AuraEnabled
    public List<TrainingQuery> getQueries() {
      return queries_serialized_name;
    }

    /**
     * Sets the environmentId.
     *
     * @param environmentId the new environmentId
     */
    public void setEnvironmentId(final String environmentId) {
      this.environment_id_serialized_name = environmentId;
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collection_id_serialized_name = collectionId;
    }

    /**
     * Sets the queries.
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

      // calling custom deserializer for queries
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
  public class TrainingExample extends IBMWatsonResponseModel {
    private String document_id_serialized_name;
    private String cross_reference_serialized_name;
    private Long relevance_serialized_name;
 
    /**
     * Gets the documentId.
     *
     * @return the documentId
     */
    @AuraEnabled
    public String getDocumentId() {
      return document_id_serialized_name;
    }
 
    /**
     * Gets the crossReference.
     *
     * @return the crossReference
     */
    @AuraEnabled
    public String getCrossReference() {
      return cross_reference_serialized_name;
    }
 
    /**
     * Gets the relevance.
     *
     * @return the relevance
     */
    @AuraEnabled
    public Long getRelevance() {
      return relevance_serialized_name;
    }

    /**
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.document_id_serialized_name = documentId;
    }

    /**
     * Sets the crossReference.
     *
     * @param crossReference the new crossReference
     */
    public void setCrossReference(final String crossReference) {
      this.cross_reference_serialized_name = crossReference;
    }

    /**
     * Sets the relevance.
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
  public class TrainingExampleList extends IBMWatsonResponseModel {
    private List<TrainingExample> examples_serialized_name;
 
    /**
     * Gets the examples.
     *
     * @return the examples
     */
    @AuraEnabled
    public List<TrainingExample> getExamples() {
      return examples_serialized_name;
    }

    /**
     * Sets the examples.
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

      // calling custom deserializer for examples
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
  public class TrainingQuery extends IBMWatsonResponseModel {
    private String query_id_serialized_name;
    private String natural_language_query_serialized_name;
    private String filter_serialized_name;
    private List<TrainingExample> examples_serialized_name;
 
    /**
     * Gets the queryId.
     *
     * @return the queryId
     */
    @AuraEnabled
    public String getQueryId() {
      return query_id_serialized_name;
    }
 
    /**
     * Gets the naturalLanguageQuery.
     *
     * @return the naturalLanguageQuery
     */
    @AuraEnabled
    public String getNaturalLanguageQuery() {
      return natural_language_query_serialized_name;
    }
 
    /**
     * Gets the filter.
     *
     * @return the filter
     */
    @AuraEnabled
    public String getFilter() {
      return filter_serialized_name;
    }
 
    /**
     * Gets the examples.
     *
     * @return the examples
     */
    @AuraEnabled
    public List<TrainingExample> getExamples() {
      return examples_serialized_name;
    }

    /**
     * Sets the queryId.
     *
     * @param queryId the new queryId
     */
    public void setQueryId(final String queryId) {
      this.query_id_serialized_name = queryId;
    }

    /**
     * Sets the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the new naturalLanguageQuery
     */
    public void setNaturalLanguageQuery(final String naturalLanguageQuery) {
      this.natural_language_query_serialized_name = naturalLanguageQuery;
    }

    /**
     * Sets the filter.
     *
     * @param filter the new filter
     */
    public void setFilter(final String filter) {
      this.filter_serialized_name = filter;
    }

    /**
     * Sets the examples.
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

      // calling custom deserializer for examples
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
     * Gets the totalExamples.
     *
     * @return the totalExamples
     */
    @AuraEnabled
    public Long getTotalExamples() {
      return total_examples_serialized_name;
    }
 
    /**
     * Gets the available.
     *
     * @return the available
     */
    @AuraEnabled
    public Boolean getAvailable() {
      return available_serialized_name;
    }
 
    /**
     * Gets the processing.
     *
     * @return the processing
     */
    @AuraEnabled
    public Boolean getProcessing() {
      return processing_serialized_name;
    }
 
    /**
     * Gets the minimumQueriesAdded.
     *
     * @return the minimumQueriesAdded
     */
    @AuraEnabled
    public Boolean getMinimumQueriesAdded() {
      return minimum_queries_added_serialized_name;
    }
 
    /**
     * Gets the minimumExamplesAdded.
     *
     * @return the minimumExamplesAdded
     */
    @AuraEnabled
    public Boolean getMinimumExamplesAdded() {
      return minimum_examples_added_serialized_name;
    }
 
    /**
     * Gets the sufficientLabelDiversity.
     *
     * @return the sufficientLabelDiversity
     */
    @AuraEnabled
    public Boolean getSufficientLabelDiversity() {
      return sufficient_label_diversity_serialized_name;
    }
 
    /**
     * Gets the notices.
     *
     * @return the notices
     */
    @AuraEnabled
    public Long getNotices() {
      return notices_serialized_name;
    }
 
    /**
     * Gets the successfullyTrained.
     *
     * @return the successfullyTrained
     */
    @AuraEnabled
    public Datetime getSuccessfullyTrained() {
      return successfully_trained_serialized_name;
    }
 
    /**
     * Gets the dataUpdated.
     *
     * @return the dataUpdated
     */
    @AuraEnabled
    public Datetime getDataUpdated() {
      return data_updated_serialized_name;
    }

    /**
     * Sets the totalExamples.
     *
     * @param totalExamples the new totalExamples
     */
    public void setTotalExamples(final long totalExamples) {
      this.total_examples_serialized_name = totalExamples;
    }

    /**
     * Sets the available.
     *
     * @param available the new available
     */
    public void setAvailable(final Boolean available) {
      this.available_serialized_name = available;
    }

    /**
     * Sets the processing.
     *
     * @param processing the new processing
     */
    public void setProcessing(final Boolean processing) {
      this.processing_serialized_name = processing;
    }

    /**
     * Sets the minimumQueriesAdded.
     *
     * @param minimumQueriesAdded the new minimumQueriesAdded
     */
    public void setMinimumQueriesAdded(final Boolean minimumQueriesAdded) {
      this.minimum_queries_added_serialized_name = minimumQueriesAdded;
    }

    /**
     * Sets the minimumExamplesAdded.
     *
     * @param minimumExamplesAdded the new minimumExamplesAdded
     */
    public void setMinimumExamplesAdded(final Boolean minimumExamplesAdded) {
      this.minimum_examples_added_serialized_name = minimumExamplesAdded;
    }

    /**
     * Sets the sufficientLabelDiversity.
     *
     * @param sufficientLabelDiversity the new sufficientLabelDiversity
     */
    public void setSufficientLabelDiversity(final Boolean sufficientLabelDiversity) {
      this.sufficient_label_diversity_serialized_name = sufficientLabelDiversity;
    }

    /**
     * Sets the notices.
     *
     * @param notices the new notices
     */
    public void setNotices(final long notices) {
      this.notices_serialized_name = notices;
    }

    /**
     * Sets the successfullyTrained.
     *
     * @param successfullyTrained the new successfullyTrained
     */
    public void setSuccessfullyTrained(final Datetime successfullyTrained) {
      this.successfully_trained_serialized_name = successfullyTrained;
    }

    /**
     * Sets the dataUpdated.
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
  public class UpdateCollectionOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String name;
    private String description;
    private String configurationId;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the name.
     *
     * The name of the collection.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * A description of the collection.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the configurationId.
     *
     * The ID of the configuration in which the collection is to be updated.
     *
     * @return the configurationId
     */
    public String configurationId() {
      return configurationId;
    }

    private UpdateCollectionOptions(UpdateCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      name = builder.name;
      description = builder.description;
      configurationId = builder.configurationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class UpdateCollectionOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String name;
    private String description;
    private String configurationId;

    private UpdateCollectionOptionsBuilder(UpdateCollectionOptions updateCollectionOptions) {
      environmentId = updateCollectionOptions.environmentId;
      collectionId = updateCollectionOptions.collectionId;
      name = updateCollectionOptions.name;
      description = updateCollectionOptions.description;
      configurationId = updateCollectionOptions.configurationId;
      this.requestHeaders.putAll(updateCollectionOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the configurationId.
     *
     * @param configurationId the configurationId
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder configurationId(String configurationId) {
      this.configurationId = configurationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateConfiguration options.
   */
  public class UpdateConfigurationOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configurationId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    private Source source;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the configurationId.
     *
     * The ID of the configuration.
     *
     * @return the configurationId
     */
    public String configurationId() {
      return configurationId;
    }
 
    /**
     * Gets the name.
     *
     * The name of the configuration.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the configuration, if available.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the conversions.
     *
     * Document conversion settings.
     *
     * @return the conversions
     */
    public Conversions conversions() {
      return conversions;
    }
 
    /**
     * Gets the enrichments.
     *
     * An array of document enrichment settings for the configuration.
     *
     * @return the enrichments
     */
    public List<Enrichment> enrichments() {
      return enrichments;
    }
 
    /**
     * Gets the normalizations.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are
     * executed in the order that they appear in the array.
     *
     * @return the normalizations
     */
    public List<NormalizationOperation> normalizations() {
      return normalizations;
    }
 
    /**
     * Gets the source.
     *
     * Object containing source parameters for the configuration.
     *
     * @return the source
     */
    public Source source() {
      return source;
    }

    private UpdateConfigurationOptions(UpdateConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configurationId, 'configurationId cannot be empty');
      environmentId = builder.environmentId;
      configurationId = builder.configurationId;
      name = builder.name;
      description = builder.description;
      conversions = builder.conversions;
      enrichments = builder.enrichments;
      normalizations = builder.normalizations;
      source = builder.source;
      this.requestHeaders = builder.requestHeaders;
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
  public class UpdateConfigurationOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String configurationId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    private Source source;

    private UpdateConfigurationOptionsBuilder(UpdateConfigurationOptions updateConfigurationOptions) {
      environmentId = updateConfigurationOptions.environmentId;
      configurationId = updateConfigurationOptions.configurationId;
      name = updateConfigurationOptions.name;
      description = updateConfigurationOptions.description;
      conversions = updateConfigurationOptions.conversions;
      enrichments = updateConfigurationOptions.enrichments;
      normalizations = updateConfigurationOptions.normalizations;
      source = updateConfigurationOptions.source;
      this.requestHeaders.putAll(updateConfigurationOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.configurationId = configurationId;
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
     * Adds an enrichments to enrichments.
     *
     * @param enrichments the new enrichments
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addEnrichments(Enrichment enrichments) {
      IBMWatsonValidator.notNull(enrichments, 'enrichments cannot be null');
      if (this.enrichments == null) {
        this.enrichments = new List<Enrichment>();
      }
      this.enrichments.add(enrichments);
      return this;
    }

    /**
     * Adds an normalizations to normalizations.
     *
     * @param normalizations the new normalizations
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addNormalizations(NormalizationOperation normalizations) {
      IBMWatsonValidator.notNull(normalizations, 'normalizations cannot be null');
      if (this.normalizations == null) {
        this.normalizations = new List<NormalizationOperation>();
      }
      this.normalizations.add(normalizations);
      return this;
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the configurationId.
     *
     * @param configurationId the configurationId
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder configurationId(String configurationId) {
      this.configurationId = configurationId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the conversions.
     *
     * @param conversions the conversions
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder conversions(Conversions conversions) {
      this.conversions = conversions;
      return this;
    }

    /**
     * Set the enrichments.
     * Existing enrichments will be replaced.
     *
     * @param enrichments the enrichments
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder enrichments(List<Enrichment> enrichments) {
      this.enrichments = enrichments;
      return this;
    }

    /**
     * Set the normalizations.
     * Existing normalizations will be replaced.
     *
     * @param normalizations the normalizations
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder normalizations(List<NormalizationOperation> normalizations) {
      this.normalizations = normalizations;
      return this;
    }

    /**
     * Set the source.
     *
     * @param source the source
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder source(Source source) {
      this.source = source;
      return this;
    }

    /**
     * Set the configuration.
     *
     * @param configuration the configuration
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder configuration(Configuration configuration) {
      this.name = configuration.getName();
      this.description = configuration.getDescription();
      this.conversions = configuration.getConversions();
      this.enrichments = configuration.getEnrichments();
      this.normalizations = configuration.getNormalizations();
      this.source = configuration.getSource();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateCredentials options.
   */
  public class UpdateCredentialsOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String credentialId;
    private String sourceType;
    private CredentialDetails credentialDetails;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the credentialId.
     *
     * The unique identifier for a set of source credentials.
     *
     * @return the credentialId
     */
    public String credentialId() {
      return credentialId;
    }
 
    /**
     * Gets the sourceType.
     *
     * The source that this credentials object connects to.
     * -  `box` indicates the credentials are used to connect an instance of Enterprise Box.
     * -  `salesforce` indicates the credentials are used to connect to Salesforce.
     * -  `sharepoint` indicates the credentials are used to connect to Microsoft SharePoint Online.
     * -  `web_crawl` indicates the credentials are used to perform a web crawl.
     *
     * @return the sourceType
     */
    public String sourceType() {
      return sourceType;
    }
 
    /**
     * Gets the credentialDetails.
     *
     * Object containing details of the stored credentials.
     *
     * Obtain credentials for your source from the administrator of the source.
     *
     * @return the credentialDetails
     */
    public CredentialDetails credentialDetails() {
      return credentialDetails;
    }

    private UpdateCredentialsOptions(UpdateCredentialsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.credentialId, 'credentialId cannot be empty');
      environmentId = builder.environmentId;
      credentialId = builder.credentialId;
      sourceType = builder.sourceType;
      credentialDetails = builder.credentialDetails;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateCredentialsOptions builder
     */
    public UpdateCredentialsOptionsBuilder newBuilder() {
      return new UpdateCredentialsOptionsBuilder(this);
    }

  }

  /**
   * UpdateCredentialsOptions Builder.
   */
  public class UpdateCredentialsOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String credentialId;
    private String sourceType;
    private CredentialDetails credentialDetails;

    private UpdateCredentialsOptionsBuilder(UpdateCredentialsOptions updateCredentialsOptions) {
      environmentId = updateCredentialsOptions.environmentId;
      credentialId = updateCredentialsOptions.credentialId;
      sourceType = updateCredentialsOptions.sourceType;
      credentialDetails = updateCredentialsOptions.credentialDetails;
      this.requestHeaders.putAll(updateCredentialsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateCredentialsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environmentId the environmentId
     * @param credentialId the credentialId
     */
    public UpdateCredentialsOptionsBuilder(String environmentId, String credentialId) {
      this.environmentId = environmentId;
      this.credentialId = credentialId;
    }

    /**
     * Builds a UpdateCredentialsOptions.
     *
     * @return the updateCredentialsOptions
     */
    public UpdateCredentialsOptions build() {
      return new UpdateCredentialsOptions(this);
    }

    /**
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the UpdateCredentialsOptions builder
     */
    public UpdateCredentialsOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the credentialId.
     *
     * @param credentialId the credentialId
     * @return the UpdateCredentialsOptions builder
     */
    public UpdateCredentialsOptionsBuilder credentialId(String credentialId) {
      this.credentialId = credentialId;
      return this;
    }

    /**
     * Set the sourceType.
     *
     * @param sourceType the sourceType
     * @return the UpdateCredentialsOptions builder
     */
    public UpdateCredentialsOptionsBuilder sourceType(String sourceType) {
      this.sourceType = sourceType;
      return this;
    }

    /**
     * Set the credentialDetails.
     *
     * @param credentialDetails the credentialDetails
     * @return the UpdateCredentialsOptions builder
     */
    public UpdateCredentialsOptionsBuilder credentialDetails(CredentialDetails credentialDetails) {
      this.credentialDetails = credentialDetails;
      return this;
    }

    /**
     * Set the credentials.
     *
     * @param credentials the credentials
     * @return the UpdateCredentialsOptions builder
     */
    public UpdateCredentialsOptionsBuilder credentials(Credentials credentials) {
      this.sourceType = credentials.getSourceType();
      this.credentialDetails = credentials.getCredentialDetails();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateCredentialsOptions builder
     */
    public UpdateCredentialsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateDocument options.
   */
  public class UpdateDocumentOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String documentId;
    private IBMWatsonFile file;
    private String filename;
    private String metadata;
    private String fileContentType;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the documentId.
     *
     * The ID of the document.
     *
     * @return the documentId
     */
    public String documentId() {
      return documentId;
    }
 
    /**
     * Gets the file.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50
     * megabytes is rejected.
     *
     * @return the file
     */
    public IBMWatsonFile file() {
      return file;
    }
 
    /**
     * Gets the filename.
     *
     * The filename for file.
     *
     * @return the filename
     */
    public String filename() {
      return filename;
    }
 
    /**
     * Gets the metadata.
     *
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata
     * that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1
     * MB are rejected.
     * Example:  ``` {
     *   "Creator": "Johnny Appleseed",
     *   "Subject": "Apples"
     * } ```.
     *
     * @return the metadata
     */
    public String metadata() {
      return metadata;
    }
 
    /**
     * Gets the fileContentType.
     *
     * The content type of file.
     *
     * @return the fileContentType
     */
    public String fileContentType() {
      return fileContentType;
    }

    private UpdateDocumentOptions(UpdateDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.documentId, 'documentId cannot be empty');
      IBMWatsonValidator.isTrue(builder.file == null || builder.fileContentType != null, 'content type cannot be null if file is not null');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      documentId = builder.documentId;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      fileContentType = builder.fileContentType;
      this.requestHeaders = builder.requestHeaders;
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
  public class UpdateDocumentOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String documentId;
    private IBMWatsonFile file;
    private String filename;
    private String metadata;
    private String fileContentType;

    private UpdateDocumentOptionsBuilder(UpdateDocumentOptions updateDocumentOptions) {
      environmentId = updateDocumentOptions.environmentId;
      collectionId = updateDocumentOptions.collectionId;
      documentId = updateDocumentOptions.documentId;
      file = updateDocumentOptions.file;
      filename = updateDocumentOptions.filename;
      metadata = updateDocumentOptions.metadata;
      fileContentType = updateDocumentOptions.fileContentType;
      this.requestHeaders.putAll(updateDocumentOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.documentId = documentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the documentId.
     *
     * @param documentId the documentId
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder documentId(String documentId) {
      this.documentId = documentId;
      return this;
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder file(IBMWatsonFile file) {
      this.file = file;
      return this;
    }

    /**
     * Set the filename.
     *
     * @param filename the filename
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder filename(String filename) {
      this.filename = filename;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder metadata(String metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the fileContentType.
     *
     * @param fileContentType the fileContentType
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder fileContentType(String fileContentType) {
      this.fileContentType = fileContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateEnvironment options.
   */
  public class UpdateEnvironmentOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
    private String description;
    private String size;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the name.
     *
     * Name that identifies the environment.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * Description of the environment.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the size.
     *
     * Size that the environment should be increased to. Environment size cannot be modified when using a Lite plan.
     * Environment size can only increased and not decreased.
     *
     * @return the size
     */
    public String size() {
      return size;
    }

    private UpdateEnvironmentOptions(UpdateEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
      name = builder.name;
      description = builder.description;
      size = builder.size;
      this.requestHeaders = builder.requestHeaders;
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
  public class UpdateEnvironmentOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String name;
    private String description;
    private String size;

    private UpdateEnvironmentOptionsBuilder(UpdateEnvironmentOptions updateEnvironmentOptions) {
      environmentId = updateEnvironmentOptions.environmentId;
      name = updateEnvironmentOptions.name;
      description = updateEnvironmentOptions.description;
      size = updateEnvironmentOptions.size;
      this.requestHeaders.putAll(updateEnvironmentOptions.requestHeaders());
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
      this.environmentId = environmentId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the size.
     *
     * @param size the size
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder size(String size) {
      this.size = size;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateTrainingExample options.
   */
  public class UpdateTrainingExampleOptions extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;
    private String crossReference;
    private Long relevance;
 
    /**
     * Gets the environmentId.
     *
     * The ID of the environment.
     *
     * @return the environmentId
     */
    public String environmentId() {
      return environmentId;
    }
 
    /**
     * Gets the collectionId.
     *
     * The ID of the collection.
     *
     * @return the collectionId
     */
    public String collectionId() {
      return collectionId;
    }
 
    /**
     * Gets the queryId.
     *
     * The ID of the query used for training.
     *
     * @return the queryId
     */
    public String queryId() {
      return queryId;
    }
 
    /**
     * Gets the exampleId.
     *
     * The ID of the document as it is indexed.
     *
     * @return the exampleId
     */
    public String exampleId() {
      return exampleId;
    }
 
    /**
     * Gets the crossReference.
     *
     * @return the crossReference
     */
    public String crossReference() {
      return crossReference;
    }
 
    /**
     * Gets the relevance.
     *
     * @return the relevance
     */
    public Long relevance() {
      return relevance;
    }

    private UpdateTrainingExampleOptions(UpdateTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collectionId, 'collectionId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.queryId, 'queryId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.exampleId, 'exampleId cannot be empty');
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      queryId = builder.queryId;
      exampleId = builder.exampleId;
      crossReference = builder.crossReference;
      relevance = builder.relevance;
      this.requestHeaders = builder.requestHeaders;
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
  public class UpdateTrainingExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;
    private String crossReference;
    private Long relevance;

    private UpdateTrainingExampleOptionsBuilder(UpdateTrainingExampleOptions updateTrainingExampleOptions) {
      environmentId = updateTrainingExampleOptions.environmentId;
      collectionId = updateTrainingExampleOptions.collectionId;
      queryId = updateTrainingExampleOptions.queryId;
      exampleId = updateTrainingExampleOptions.exampleId;
      crossReference = updateTrainingExampleOptions.crossReference;
      relevance = updateTrainingExampleOptions.relevance;
      this.requestHeaders.putAll(updateTrainingExampleOptions.requestHeaders());
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
      this.environmentId = environmentId;
      this.collectionId = collectionId;
      this.queryId = queryId;
      this.exampleId = exampleId;
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
     * Set the environmentId.
     *
     * @param environmentId the environmentId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder environmentId(String environmentId) {
      this.environmentId = environmentId;
      return this;
    }

    /**
     * Set the collectionId.
     *
     * @param collectionId the collectionId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder collectionId(String collectionId) {
      this.collectionId = collectionId;
      return this;
    }

    /**
     * Set the queryId.
     *
     * @param queryId the queryId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder queryId(String queryId) {
      this.queryId = queryId;
      return this;
    }

    /**
     * Set the exampleId.
     *
     * @param exampleId the exampleId
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder exampleId(String exampleId) {
      this.exampleId = exampleId;
      return this;
    }

    /**
     * Set the crossReference.
     *
     * @param crossReference the crossReference
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder crossReference(String crossReference) {
      this.crossReference = crossReference;
      return this;
    }

    /**
     * Set the relevance.
     *
     * @param relevance the relevance
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder relevance(Long relevance) {
      this.relevance = relevance;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
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
     * Gets the fonts.
     *
     * @return the fonts
     */
    @AuraEnabled
    public List<FontSetting> getFonts() {
      return fonts_serialized_name;
    }
 
    /**
     * Gets the styles.
     *
     * @return the styles
     */
    @AuraEnabled
    public List<WordStyle> getStyles() {
      return styles_serialized_name;
    }

    /**
     * Sets the fonts.
     *
     * @param fonts the new fonts
     */
    public void setFonts(final List<FontSetting> fonts) {
      this.fonts_serialized_name = fonts;
    }

    /**
     * Sets the styles.
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

      // calling custom deserializer for fonts
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

      // calling custom deserializer for styles
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
     * Gets the heading.
     *
     * @return the heading
     */
    @AuraEnabled
    public WordHeadingDetection getHeading() {
      return heading_serialized_name;
    }

    /**
     * Sets the heading.
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

      // calling custom deserializer for heading
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
     * Gets the level.
     *
     * @return the level
     */
    @AuraEnabled
    public Long getLevel() {
      return level_serialized_name;
    }
 
    /**
     * Gets the names.
     *
     * @return the names
     */
    @AuraEnabled
    public List<String> getNames() {
      return names_serialized_name;
    }

    /**
     * Sets the level.
     *
     * @param level the new level
     */
    public void setLevel(final long level) {
      this.level_serialized_name = level;
    }

    /**
     * Sets the names.
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
     * Gets the xpaths.
     *
     * @return the xpaths
     */
    @AuraEnabled
    public List<String> getXpaths() {
      return xpaths_serialized_name;
    }

    /**
     * Sets the xpaths.
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
