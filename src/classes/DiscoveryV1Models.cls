public class DiscoveryV1Models {
  /**
   * The addDocument options.
   */
  public class AddDocumentOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String file;
    private String filename;
    private String metadata;
    private String file_content_type;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the file.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file
     */
    public String file() {
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
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1 MB are rejected. Example:  ``` {   "Creator": "Johnny Appleseed",   "Subject": "Apples" } ```.
     *
     * @return the metadata
     */
    public String metadata() {
      return metadata;
    }
    /**
     * Gets the file_content_type.
     *
     * The content type of file.
     *
     * @return the file_content_type
     */
    public String fileContentType() {
      return file_content_type;
    }
    private AddDocumentOptions(AddDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      file_content_type = builder.file_content_type;
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
    private String environment_id;
    private String collection_id;
    private String file;
    private String filename;
    private String metadata;
    private String file_content_type;

    private AddDocumentOptionsBuilder(AddDocumentOptions add_document_options) {
      environment_id = add_document_options.environment_id;
      collection_id = add_document_options.collection_id;
      file = add_document_options.file;
      filename = add_document_options.filename;
      metadata = add_document_options.metadata;
      file_content_type = add_document_options.file_content_type;
    }

    /**
     * Instantiates a new builder.
     */
    public AddDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public AddDocumentOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder file(String file) {
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
     * Set the file_content_type.
     *
     * @param file_content_type the file_content_type
     * @return the AddDocumentOptions builder
     */
    public AddDocumentOptionsBuilder fileContentType(String file_content_type) {
      this.file_content_type = file_content_type;
      return this;
    }
  }

  /**
   * The addTrainingData options.
   */
  public class AddTrainingDataOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String natural_language_query;
    private String filter;
    private List<TrainingExample> examples;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the natural_language_query.
     *
     * @return the natural_language_query
     */
    public String naturalLanguageQuery() {
      return natural_language_query;
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
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      natural_language_query = builder.natural_language_query;
      filter = builder.filter;
      examples = builder.examples;
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
    private String environment_id;
    private String collection_id;
    private String natural_language_query;
    private String filter;
    private List<TrainingExample> examples;

    private AddTrainingDataOptionsBuilder(AddTrainingDataOptions add_training_data_options) {
      environment_id = add_training_data_options.environment_id;
      collection_id = add_training_data_options.collection_id;
      natural_language_query = add_training_data_options.natural_language_query;
      filter = add_training_data_options.filter;
      examples = add_training_data_options.examples;
    }

    /**
     * Instantiates a new builder.
     */
    public AddTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public AddTrainingDataOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the natural_language_query.
     *
     * @param natural_language_query the natural_language_query
     * @return the AddTrainingDataOptions builder
     */
    public AddTrainingDataOptionsBuilder naturalLanguageQuery(String natural_language_query) {
      this.natural_language_query = natural_language_query;
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
  }

  /**
   * AggregationResult.
   */
  public class AggregationResult extends IBMWatsonGenericModel {
    private String key;
    private Long matching_results;
    private List<QueryAggregation> aggregations;
    /**
     * Gets the key.
     *
     * Key that matched the aggregation type.
     *
     * @return the key
     */
    public String getKey() {
      return key;
    }
    /**
     * Gets the matching_results.
     *
     * Number of matching results.
     *
     * @return the matching_results
     */
    public Long getMatchingResults() {
      return matching_results;
    }
    /**
     * Gets the aggregations.
     *
     * Aggregations returned in the case of chained aggregations.
     *
     * @return the aggregations
     */
    public List<QueryAggregation> getAggregations() {
      return aggregations;
    }

    /**
     * Sets the key.
     *
     * @param key the new key
     */
    public void setKey(final String key) {
      this.key = key;
    }

    /**
     * Sets the matching_results.
     *
     * @param matching_results the new matching_results
     */
    public void setMatchingResults(final long matching_results) {
      this.matching_results = matching_results;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations = aggregations;
    }
  }

  /**
   * Calculation.
   */
  public class Calculation extends IBMWatsonGenericModel {
    private Double value;
    /**
     * Gets the value.
     *
     * Value of the aggregation. (For 'max' and 'min' type).
     *
     * @return the value
     */
    public Double getValue() {
      return value;
    }
  }

  /**
   * A collection for storing documents.
   */
  public class Collection extends IBMWatsonGenericModel {
    private String collection_id;
    private String name;
    private String description;
    private Datetime created;
    private Datetime updated;
    private String status;
    private String configuration_id;
    private String language;
    private DocumentCounts document_counts;
    private CollectionDiskUsage disk_usage;
    private TrainingStatus training_status;
    /**
     * Gets the collection_id.
     *
     * The unique identifier of the collection.
     *
     * @return the collection_id
     */
    public String getCollectionId() {
      return collection_id;
    }
    /**
     * Gets the name.
     *
     * The name of the collection.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the description.
     *
     * The description of the collection.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the created.
     *
     * The creation date of the collection in the format yyyy-MM-dd'T'HH:mmcon:ss.SSS'Z'.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp of when the collection was last updated in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the status.
     *
     * The status of the collection.
     *
     * @return the status
     */
    public String getStatus() {
      return status;
    }
    /**
     * Gets the configuration_id.
     *
     * The unique identifier of the collection's configuration.
     *
     * @return the configuration_id
     */
    public String getConfigurationId() {
      return configuration_id;
    }
    /**
     * Gets the language.
     *
     * The language of the documents stored in the collection. Permitted values include `en_us` (U.S. English), `de` (German), and `es` (Spanish).
     *
     * @return the language
     */
    public String getLanguage() {
      return language;
    }
    /**
     * Gets the document_counts.
     *
     * The object providing information about the documents in the collection. Present only when retrieving details of a collection.
     *
     * @return the document_counts
     */
    public DocumentCounts getDocumentCounts() {
      return document_counts;
    }
    /**
     * Gets the disk_usage.
     *
     * The object providing information about the disk usage of the collection. Present only when retrieving details of a collection.
     *
     * @return the disk_usage
     */
    public CollectionDiskUsage getDiskUsage() {
      return disk_usage;
    }
    /**
     * Gets the training_status.
     *
     * Provides information about the status of relevance training for collection.
     *
     * @return the training_status
     */
    public TrainingStatus getTrainingStatus() {
      return training_status;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the configuration_id.
     *
     * @param configuration_id the new configuration_id
     */
    public void setConfigurationId(final String configuration_id) {
      this.configuration_id = configuration_id;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language = language;
    }

    /**
     * Sets the document_counts.
     *
     * @param document_counts the new document_counts
     */
    public void setDocumentCounts(final DocumentCounts document_counts) {
      this.document_counts = document_counts;
    }

    /**
     * Sets the disk_usage.
     *
     * @param disk_usage the new disk_usage
     */
    public void setDiskUsage(final CollectionDiskUsage disk_usage) {
      this.disk_usage = disk_usage;
    }

    /**
     * Sets the training_status.
     *
     * @param training_status the new training_status
     */
    public void setTrainingStatus(final TrainingStatus training_status) {
      this.training_status = training_status;
    }
  }

  /**
   * Summary of the disk usage statistics for this collection.
   */
  public class CollectionDiskUsage extends IBMWatsonGenericModel {
    private Long used_bytes;
    /**
     * Gets the used_bytes.
     *
     * Number of bytes used by the collection.
     *
     * @return the used_bytes
     */
    public Long getUsedBytes() {
      return used_bytes;
    }
  }

  /**
   * A custom configuration for the environment.
   */
  public class Configuration extends IBMWatsonGenericModel {
    private String configuration_id;
    private String name;
    private Datetime created;
    private Datetime updated;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    /**
     * Gets the configuration_id.
     *
     * The unique identifier of the configuration.
     *
     * @return the configuration_id
     */
    public String getConfigurationId() {
      return configuration_id;
    }
    /**
     * Gets the name.
     *
     * The name of the configuration.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the created.
     *
     * The creation date of the configuration in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp of when the configuration was last updated in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the description.
     *
     * The description of the configuration, if available.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the conversions.
     *
     * The document conversion settings for the configuration.
     *
     * @return the conversions
     */
    public Conversions getConversions() {
      return conversions;
    }
    /**
     * Gets the enrichments.
     *
     * An array of document enrichment settings for the configuration.
     *
     * @return the enrichments
     */
    public List<Enrichment> getEnrichments() {
      return enrichments;
    }
    /**
     * Gets the normalizations.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the normalizations
     */
    public List<NormalizationOperation> getNormalizations() {
      return normalizations;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the conversions.
     *
     * @param conversions the new conversions
     */
    public void setConversions(final Conversions conversions) {
      this.conversions = conversions;
    }

    /**
     * Sets the enrichments.
     *
     * @param enrichments the new enrichments
     */
    public void setEnrichments(final List<Enrichment> enrichments) {
      this.enrichments = enrichments;
    }

    /**
     * Sets the normalizations.
     *
     * @param normalizations the new normalizations
     */
    public void setNormalizations(final List<NormalizationOperation> normalizations) {
      this.normalizations = normalizations;
    }
  }

  /**
   * Document conversion settings.
   */
  public class Conversions extends IBMWatsonGenericModel {
    private PdfSettings pdf;
    private WordSettings word;
    private HtmlSettings html;
    private List<NormalizationOperation> json_normalizations;
    /**
     * Gets the pdf.
     *
     * A list of PDF conversion settings.
     *
     * @return the pdf
     */
    public PdfSettings getPdf() {
      return pdf;
    }
    /**
     * Gets the word.
     *
     * A list of Word conversion settings.
     *
     * @return the word
     */
    public WordSettings getWord() {
      return word;
    }
    /**
     * Gets the html.
     *
     * A list of HTML conversion settings.
     *
     * @return the html
     */
    public HtmlSettings getHtml() {
      return html;
    }
    /**
     * Gets the json_normalizations.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the json_normalizations
     */
    public List<NormalizationOperation> getJsonNormalizations() {
      return json_normalizations;
    }

    /**
     * Sets the pdf.
     *
     * @param pdf the new pdf
     */
    public void setPdf(final PdfSettings pdf) {
      this.pdf = pdf;
    }

    /**
     * Sets the word.
     *
     * @param word the new word
     */
    public void setWord(final WordSettings word) {
      this.word = word;
    }

    /**
     * Sets the html.
     *
     * @param html the new html
     */
    public void setHtml(final HtmlSettings html) {
      this.html = html;
    }

    /**
     * Sets the json_normalizations.
     *
     * @param json_normalizations the new json_normalizations
     */
    public void setJsonNormalizations(final List<NormalizationOperation> json_normalizations) {
      this.json_normalizations = json_normalizations;
    }
  }

  /**
   * The createCollection options.
   */
  public class CreateCollectionOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String name;
    private String description;
    private String configuration_id;
    private String language;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
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
     * Gets the configuration_id.
     *
     * The ID of the configuration in which the collection is to be created.
     *
     * @return the configuration_id
     */
    public String configurationId() {
      return configuration_id;
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
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notNull(builder.name, 'name cannot be null');
      environment_id = builder.environment_id;
      name = builder.name;
      description = builder.description;
      configuration_id = builder.configuration_id;
      language = builder.language;
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
    private String environment_id;
    private String name;
    private String description;
    private String configuration_id;
    private String language;

    private CreateCollectionOptionsBuilder(CreateCollectionOptions create_collection_options) {
      environment_id = create_collection_options.environment_id;
      name = create_collection_options.name;
      description = create_collection_options.description;
      configuration_id = create_collection_options.configuration_id;
      language = create_collection_options.language;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param name the name
     */
    public CreateCollectionOptionsBuilder(String environment_id, String name) {
      this.environment_id = environment_id;
      this.name = name;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the configuration_id.
     *
     * @param configuration_id the configuration_id
     * @return the CreateCollectionOptions builder
     */
    public CreateCollectionOptionsBuilder configurationId(String configuration_id) {
      this.configuration_id = configuration_id;
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
  }

  /**
   * The createConfiguration options.
   */
  public class CreateConfigurationOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
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
     * The document conversion settings for the configuration.
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
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the normalizations
     */
    public List<NormalizationOperation> normalizations() {
      return normalizations;
    }
    private CreateConfigurationOptions(CreateConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      environment_id = builder.environment_id;
      name = builder.name;
      description = builder.description;
      conversions = builder.conversions;
      enrichments = builder.enrichments;
      normalizations = builder.normalizations;
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
    private String environment_id;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;

    private CreateConfigurationOptionsBuilder(CreateConfigurationOptions create_configuration_options) {
      environment_id = create_configuration_options.environment_id;
      name = create_configuration_options.name;
      description = create_configuration_options.description;
      conversions = create_configuration_options.conversions;
      enrichments = create_configuration_options.enrichments;
      normalizations = create_configuration_options.normalizations;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     */
    public CreateConfigurationOptionsBuilder(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
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
      return this;
    }
  }

  /**
   * The createEnvironment options.
   */
  public class CreateEnvironmentOptions extends IBMWatsonGenericModel {
    private String name;
    private String description;
    private Long size;
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
     * **Deprecated**: Size of the environment.
     *
     * @return the size
     */
    public Long size() {
      return size;
    }
    private CreateEnvironmentOptions(CreateEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name, 'name cannot be null');
      name = builder.name;
      description = builder.description;
      size = builder.size;
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
    private String name;
    private String description;
    private Long size;

    private CreateEnvironmentOptionsBuilder(CreateEnvironmentOptions create_environment_options) {
      name = create_environment_options.name;
      description = create_environment_options.description;
      size = create_environment_options.size;
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
     * @return the create_environment_options
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
    public CreateEnvironmentOptionsBuilder size(Long size) {
      this.size = size;
      return this;
    }
  }

  /**
   * The createTrainingExample options.
   */
  public class CreateTrainingExampleOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String document_id;
    private String cross_reference;
    private Long relevance;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the query_id.
     *
     * The ID of the query used for training.
     *
     * @return the query_id
     */
    public String queryId() {
      return query_id;
    }
    /**
     * Gets the document_id.
     *
     * @return the document_id
     */
    public String documentId() {
      return document_id;
    }
    /**
     * Gets the cross_reference.
     *
     * @return the cross_reference
     */
    public String crossReference() {
      return cross_reference;
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
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id, 'query_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      query_id = builder.query_id;
      document_id = builder.document_id;
      cross_reference = builder.cross_reference;
      relevance = builder.relevance;
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
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String document_id;
    private String cross_reference;
    private Long relevance;

    private CreateTrainingExampleOptionsBuilder(CreateTrainingExampleOptions create_training_example_options) {
      environment_id = create_training_example_options.environment_id;
      collection_id = create_training_example_options.collection_id;
      query_id = create_training_example_options.query_id;
      document_id = create_training_example_options.document_id;
      cross_reference = create_training_example_options.cross_reference;
      relevance = create_training_example_options.relevance;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param query_id the query_id
     */
    public CreateTrainingExampleOptionsBuilder(String environment_id, String collection_id, String query_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.query_id = query_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the query_id.
     *
     * @param query_id the query_id
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder queryId(String query_id) {
      this.query_id = query_id;
      return this;
    }

    /**
     * Set the document_id.
     *
     * @param document_id the document_id
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder documentId(String document_id) {
      this.document_id = document_id;
      return this;
    }

    /**
     * Set the cross_reference.
     *
     * @param cross_reference the cross_reference
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder crossReference(String cross_reference) {
      this.cross_reference = cross_reference;
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
     * Set the training_example.
     *
     * @param training_example the training_example
     * @return the CreateTrainingExampleOptions builder
     */
    public CreateTrainingExampleOptionsBuilder training_example(TrainingExample training_example) {
      this.document_id = training_example.getDocumentId();
      this.cross_reference = training_example.getCrossReference();
      this.relevance = training_example.getRelevance();
      return this;
    }
  }

  /**
   * The deleteAllTrainingData options.
   */
  public class DeleteAllTrainingDataOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    private DeleteAllTrainingDataOptions(DeleteAllTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
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
    private String environment_id;
    private String collection_id;

    private DeleteAllTrainingDataOptionsBuilder(DeleteAllTrainingDataOptions delete_all_training_data_options) {
      environment_id = delete_all_training_data_options.environment_id;
      collection_id = delete_all_training_data_options.collection_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteAllTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public DeleteAllTrainingDataOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the DeleteAllTrainingDataOptions builder
     */
    public DeleteAllTrainingDataOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }
  }

  /**
   * The deleteCollection options.
   */
  public class DeleteCollectionOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    private DeleteCollectionOptions(DeleteCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
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
    private String environment_id;
    private String collection_id;

    private DeleteCollectionOptionsBuilder(DeleteCollectionOptions delete_collection_options) {
      environment_id = delete_collection_options.environment_id;
      collection_id = delete_collection_options.collection_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public DeleteCollectionOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the DeleteCollectionOptions builder
     */
    public DeleteCollectionOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }
  }

  /**
   * The deleteConfiguration options.
   */
  public class DeleteConfigurationOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String configuration_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the configuration_id.
     *
     * The ID of the configuration.
     *
     * @return the configuration_id
     */
    public String configurationId() {
      return configuration_id;
    }
    private DeleteConfigurationOptions(DeleteConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configuration_id, 'configuration_id cannot be empty');
      environment_id = builder.environment_id;
      configuration_id = builder.configuration_id;
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
    private String environment_id;
    private String configuration_id;

    private DeleteConfigurationOptionsBuilder(DeleteConfigurationOptions delete_configuration_options) {
      environment_id = delete_configuration_options.environment_id;
      configuration_id = delete_configuration_options.configuration_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param configuration_id the configuration_id
     */
    public DeleteConfigurationOptionsBuilder(String environment_id, String configuration_id) {
      this.environment_id = environment_id;
      this.configuration_id = configuration_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the configuration_id.
     *
     * @param configuration_id the configuration_id
     * @return the DeleteConfigurationOptions builder
     */
    public DeleteConfigurationOptionsBuilder configurationId(String configuration_id) {
      this.configuration_id = configuration_id;
      return this;
    }
  }

  /**
   * The deleteDocument options.
   */
  public class DeleteDocumentOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String document_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the document_id.
     *
     * The ID of the document.
     *
     * @return the document_id
     */
    public String documentId() {
      return document_id;
    }
    private DeleteDocumentOptions(DeleteDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.document_id, 'document_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      document_id = builder.document_id;
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
    private String environment_id;
    private String collection_id;
    private String document_id;

    private DeleteDocumentOptionsBuilder(DeleteDocumentOptions delete_document_options) {
      environment_id = delete_document_options.environment_id;
      collection_id = delete_document_options.collection_id;
      document_id = delete_document_options.document_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param document_id the document_id
     */
    public DeleteDocumentOptionsBuilder(String environment_id, String collection_id, String document_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.document_id = document_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the document_id.
     *
     * @param document_id the document_id
     * @return the DeleteDocumentOptions builder
     */
    public DeleteDocumentOptionsBuilder documentId(String document_id) {
      this.document_id = document_id;
      return this;
    }
  }

  /**
   * The deleteEnvironment options.
   */
  public class DeleteEnvironmentOptions extends IBMWatsonGenericModel {
    private String environment_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    private DeleteEnvironmentOptions(DeleteEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      environment_id = builder.environment_id;
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
    private String environment_id;

    private DeleteEnvironmentOptionsBuilder(DeleteEnvironmentOptions delete_environment_options) {
      environment_id = delete_environment_options.environment_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     */
    public DeleteEnvironmentOptionsBuilder(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the DeleteEnvironmentOptions builder
     */
    public DeleteEnvironmentOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }
  }

  /**
   * The deleteTrainingData options.
   */
  public class DeleteTrainingDataOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String query_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the query_id.
     *
     * The ID of the query used for training.
     *
     * @return the query_id
     */
    public String queryId() {
      return query_id;
    }
    private DeleteTrainingDataOptions(DeleteTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id, 'query_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      query_id = builder.query_id;
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
    private String environment_id;
    private String collection_id;
    private String query_id;

    private DeleteTrainingDataOptionsBuilder(DeleteTrainingDataOptions delete_training_data_options) {
      environment_id = delete_training_data_options.environment_id;
      collection_id = delete_training_data_options.collection_id;
      query_id = delete_training_data_options.query_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param query_id the query_id
     */
    public DeleteTrainingDataOptionsBuilder(String environment_id, String collection_id, String query_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.query_id = query_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the query_id.
     *
     * @param query_id the query_id
     * @return the DeleteTrainingDataOptions builder
     */
    public DeleteTrainingDataOptionsBuilder queryId(String query_id) {
      this.query_id = query_id;
      return this;
    }
  }

  /**
   * The deleteTrainingExample options.
   */
  public class DeleteTrainingExampleOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String example_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the query_id.
     *
     * The ID of the query used for training.
     *
     * @return the query_id
     */
    public String queryId() {
      return query_id;
    }
    /**
     * Gets the example_id.
     *
     * The ID of the document as it is indexed.
     *
     * @return the example_id
     */
    public String exampleId() {
      return example_id;
    }
    private DeleteTrainingExampleOptions(DeleteTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id, 'query_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.example_id, 'example_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      query_id = builder.query_id;
      example_id = builder.example_id;
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
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String example_id;

    private DeleteTrainingExampleOptionsBuilder(DeleteTrainingExampleOptions delete_training_example_options) {
      environment_id = delete_training_example_options.environment_id;
      collection_id = delete_training_example_options.collection_id;
      query_id = delete_training_example_options.query_id;
      example_id = delete_training_example_options.example_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param query_id the query_id
     * @param example_id the example_id
     */
    public DeleteTrainingExampleOptionsBuilder(String environment_id, String collection_id, String query_id, String example_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.query_id = query_id;
      this.example_id = example_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the query_id.
     *
     * @param query_id the query_id
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder queryId(String query_id) {
      this.query_id = query_id;
      return this;
    }

    /**
     * Set the example_id.
     *
     * @param example_id the example_id
     * @return the DeleteTrainingExampleOptions builder
     */
    public DeleteTrainingExampleOptionsBuilder exampleId(String example_id) {
      this.example_id = example_id;
      return this;
    }
  }

  /**
   * Summary of the disk usage statistics for the environment.
   */
  public class DiskUsage extends IBMWatsonGenericModel {
    private Long used_bytes;
    private Long maximum_allowed_bytes;
    private Long total_bytes;
    private String used;
    private String total;
    private Double percent_used;
    /**
     * Gets the used_bytes.
     *
     * Number of bytes used on the environment's disk capacity.
     *
     * @return the used_bytes
     */
    public Long getUsedBytes() {
      return used_bytes;
    }
    /**
     * Gets the maximum_allowed_bytes.
     *
     * Total number of bytes available in the environment's disk capacity.
     *
     * @return the maximum_allowed_bytes
     */
    public Long getMaximumAllowedBytes() {
      return maximum_allowed_bytes;
    }
    /**
     * Gets the total_bytes.
     *
     * **Deprecated**: Total number of bytes available in the environment's disk capacity.
     *
     * @return the total_bytes
     */
    public Long getTotalBytes() {
      return total_bytes;
    }
    /**
     * Gets the used.
     *
     * **Deprecated**: Amount of disk capacity used, in KB or GB format.
     *
     * @return the used
     */
    public String getUsed() {
      return used;
    }
    /**
     * Gets the total.
     *
     * **Deprecated**: Total amount of the environment's disk capacity, in KB or GB format.
     *
     * @return the total
     */
    public String getTotal() {
      return total;
    }
    /**
     * Gets the percent_used.
     *
     * **Deprecated**: Percentage of the environment's disk capacity that is being used.
     *
     * @return the percent_used
     */
    public Double getPercentUsed() {
      return percent_used;
    }
  }

  /**
   * DocumentAccepted.
   */
  public class DocumentAccepted extends IBMWatsonGenericModel {
    private String document_id;
    private String status;
    private List<Notice> notices;
    /**
     * Gets the document_id.
     *
     * The unique identifier of the ingested document.
     *
     * @return the document_id
     */
    public String getDocumentId() {
      return document_id;
    }
    /**
     * Gets the status.
     *
     * Status of the document in the ingestion process.
     *
     * @return the status
     */
    public String getStatus() {
      return status;
    }
    /**
     * Gets the notices.
     *
     * Array of notices produced by the document-ingestion process.
     *
     * @return the notices
     */
    public List<Notice> getNotices() {
      return notices;
    }

    /**
     * Sets the document_id.
     *
     * @param document_id the new document_id
     */
    public void setDocumentId(final String document_id) {
      this.document_id = document_id;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status = status;
    }

    /**
     * Sets the notices.
     *
     * @param notices the new notices
     */
    public void setNotices(final List<Notice> notices) {
      this.notices = notices;
    }
  }

  /**
   * DocumentCounts.
   */
  public class DocumentCounts extends IBMWatsonGenericModel {
    private Long available;
    private Long processing;
    private Long failed;
    /**
     * Gets the available.
     *
     * The total number of available documents in the collection.
     *
     * @return the available
     */
    public Long getAvailable() {
      return available;
    }
    /**
     * Gets the processing.
     *
     * The number of documents in the collection that are currently being processed.
     *
     * @return the processing
     */
    public Long getProcessing() {
      return processing;
    }
    /**
     * Gets the failed.
     *
     * The number of documents in the collection that failed to be ingested.
     *
     * @return the failed
     */
    public Long getFailed() {
      return failed;
    }
  }

  /**
   * DocumentSnapshot.
   */
  public class DocumentSnapshot extends IBMWatsonGenericModel {
    private String step;
    private Map<String, String> snapshot;
    /**
     * Gets the step.
     *
     * @return the step
     */
    public String getStep() {
      return step;
    }
    /**
     * Gets the snapshot.
     *
     * @return the snapshot
     */
    public Map<String, String> getSnapshot() {
      return snapshot;
    }

    /**
     * Sets the step.
     *
     * @param step the new step
     */
    public void setStep(final String step) {
      this.step = step;
    }

    /**
     * Sets the snapshot.
     *
     * @param snapshot the new snapshot
     */
    public void setSnapshot(final Map<String, String> snapshot) {
      this.snapshot = snapshot;
    }
  }

  /**
   * Status information about a submitted document.
   */
  public class DocumentStatus extends IBMWatsonGenericModel {
    private String document_id;
    private String configuration_id;
    private Datetime created;
    private Datetime updated;
    private String status;
    private String status_description;
    private String filename;
    private String file_type;
    private String sha1;
    private List<Notice> notices;
    /**
     * Gets the document_id.
     *
     * The unique identifier of the document.
     *
     * @return the document_id
     */
    public String getDocumentId() {
      return document_id;
    }
    /**
     * Gets the configuration_id.
     *
     * The unique identifier for the configuration.
     *
     * @return the configuration_id
     */
    public String getConfigurationId() {
      return configuration_id;
    }
    /**
     * Gets the created.
     *
     * The creation date of the document in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * Date of the most recent document update, in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the status.
     *
     * Status of the document in the ingestion process.
     *
     * @return the status
     */
    public String getStatus() {
      return status;
    }
    /**
     * Gets the status_description.
     *
     * Description of the document status.
     *
     * @return the status_description
     */
    public String getStatusDescription() {
      return status_description;
    }
    /**
     * Gets the filename.
     *
     * Name of the original source file (if available).
     *
     * @return the filename
     */
    public String getFilename() {
      return filename;
    }
    /**
     * Gets the file_type.
     *
     * The type of the original source file.
     *
     * @return the file_type
     */
    public String getFileType() {
      return file_type;
    }
    /**
     * Gets the sha1.
     *
     * The SHA-1 hash of the original source file (formatted as a hexadecimal string).
     *
     * @return the sha1
     */
    public String getSha1() {
      return sha1;
    }
    /**
     * Gets the notices.
     *
     * Array of notices produced by the document-ingestion process.
     *
     * @return the notices
     */
    public List<Notice> getNotices() {
      return notices;
    }

    /**
     * Sets the filename.
     *
     * @param filename the new filename
     */
    public void setFilename(final String filename) {
      this.filename = filename;
    }

    /**
     * Sets the file_type.
     *
     * @param file_type the new file_type
     */
    public void setFileType(final String file_type) {
      this.file_type = file_type;
    }

    /**
     * Sets the sha1.
     *
     * @param sha1 the new sha1
     */
    public void setSha1(final String sha1) {
      this.sha1 = sha1;
    }

    /**
     * Sets the notices.
     *
     * @param notices the new notices
     */
    public void setNotices(final List<Notice> notices) {
      this.notices = notices;
    }
  }

  /**
   * Enrichment.
   */
  public class Enrichment extends IBMWatsonGenericModel {
    private String description;
    private String destination_field;
    private String source_field;
    private Boolean overwrite;
    private String enrichment;
    private Boolean ignore_downstream_errors;
    private EnrichmentOptions options;
    /**
     * Gets the description.
     *
     * Describes what the enrichment step does.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the destination_field.
     *
     * Field where enrichments will be stored. This field must already exist or be at most 1 level deeper than an existing field. For example, if `text` is a top-level field with no sub-fields, `text.foo` is a valid destination but `text.foo.bar` is not.
     *
     * @return the destination_field
     */
    public String getDestinationField() {
      return destination_field;
    }
    /**
     * Gets the source_field.
     *
     * Field to be enriched.
     *
     * @return the source_field
     */
    public String getSourceField() {
      return source_field;
    }
    /**
     * Gets the overwrite.
     *
     * Indicates that the enrichments will overwrite the destination_field field if it already exists.
     *
     * @return the overwrite
     */
    public Boolean isOverwrite() {
      return overwrite;
    }
    /**
     * Gets the enrichment.
     *
     * Name of the enrichment service to call. Currently the only valid value is `alchemy_language`.
     *
     * @return the enrichment
     */
    public String getEnrichment() {
      return enrichment;
    }
    /**
     * Gets the ignore_downstream_errors.
     *
     * If true, then most errors generated during the enrichment process will be treated as warnings and will not cause the document to fail processing.
     *
     * @return the ignore_downstream_errors
     */
    public Boolean isIgnoreDownstreamErrors() {
      return ignore_downstream_errors;
    }
    /**
     * Gets the options.
     *
     * A list of options specific to the enrichment.
     *
     * @return the options
     */
    public EnrichmentOptions getOptions() {
      return options;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the destination_field.
     *
     * @param destination_field the new destination_field
     */
    public void setDestinationField(final String destination_field) {
      this.destination_field = destination_field;
    }

    /**
     * Sets the source_field.
     *
     * @param source_field the new source_field
     */
    public void setSourceField(final String source_field) {
      this.source_field = source_field;
    }

    /**
     * Sets the overwrite.
     *
     * @param overwrite the new overwrite
     */
    public void setOverwrite(final Boolean overwrite) {
      this.overwrite = overwrite;
    }

    /**
     * Sets the enrichment.
     *
     * @param enrichment the new enrichment
     */
    public void setEnrichment(final String enrichment) {
      this.enrichment = enrichment;
    }

    /**
     * Sets the ignore_downstream_errors.
     *
     * @param ignore_downstream_errors the new ignore_downstream_errors
     */
    public void setIgnoreDownstreamErrors(final Boolean ignore_downstream_errors) {
      this.ignore_downstream_errors = ignore_downstream_errors;
    }

    /**
     * Sets the options.
     *
     * @param options the new options
     */
    public void setOptions(final EnrichmentOptions options) {
      this.options = options;
    }
  }

  /**
   * Options which are specific to a particular enrichment.
   */
  public class EnrichmentOptions extends IBMWatsonGenericModel {
    private List<String> extract;
    private Boolean sentiment;
    private Boolean quotations;
    private Boolean show_source_text;
    private Boolean hierarchical_typed_relations;
    private String model;
    private String language;
    /**
     * Gets the extract.
     *
     * A comma-separated list of analyses that will be applied when using the `alchemy_language` enrichment. See the service documentation for details on each extract option.  Possible values include:    * entity   * keyword   * taxonomy   * concept   * relation   * doc-sentiment   * doc-emotion   * typed-rels.
     *
     * @return the extract
     */
    public List<String> getExtract() {
      return extract;
    }
    /**
     * Gets the sentiment.
     *
     * @return the sentiment
     */
    public Boolean isSentiment() {
      return sentiment;
    }
    /**
     * Gets the quotations.
     *
     * @return the quotations
     */
    public Boolean isQuotations() {
      return quotations;
    }
    /**
     * Gets the show_source_text.
     *
     * @return the show_source_text
     */
    public Boolean isShowSourceText() {
      return show_source_text;
    }
    /**
     * Gets the hierarchical_typed_relations.
     *
     * @return the hierarchical_typed_relations
     */
    public Boolean isHierarchicalTypedRelations() {
      return hierarchical_typed_relations;
    }
    /**
     * Gets the model.
     *
     * Required when using the `typed-rel` extract option. Should be set to the ID of a previously published custom Watson Knowledge Studio model.
     *
     * @return the model
     */
    public String getModel() {
      return model;
    }
    /**
     * Gets the language.
     *
     * If provided, then do not attempt to detect the language of the input document. Instead, assume the language is the one specified in this field.  You can set this property to work around `unsupported-text-language` errors.  Supported languages include English, German, French, Italian, Portuguese, Russian, Spanish and Swedish. Supported language codes are the ISO-639-1, ISO-639-2, ISO-639-3, and the plain english name of the language (for example "russian").
     *
     * @return the language
     */
    public String getLanguage() {
      return language;
    }

    /**
     * Sets the extract.
     *
     * @param extract the new extract
     */
    public void setExtract(final List<String> extract) {
      this.extract = extract;
    }

    /**
     * Sets the sentiment.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final Boolean sentiment) {
      this.sentiment = sentiment;
    }

    /**
     * Sets the quotations.
     *
     * @param quotations the new quotations
     */
    public void setQuotations(final Boolean quotations) {
      this.quotations = quotations;
    }

    /**
     * Sets the show_source_text.
     *
     * @param show_source_text the new show_source_text
     */
    public void setShowSourceText(final Boolean show_source_text) {
      this.show_source_text = show_source_text;
    }

    /**
     * Sets the hierarchical_typed_relations.
     *
     * @param hierarchical_typed_relations the new hierarchical_typed_relations
     */
    public void setHierarchicalTypedRelations(final Boolean hierarchical_typed_relations) {
      this.hierarchical_typed_relations = hierarchical_typed_relations;
    }

    /**
     * Sets the model.
     *
     * @param model the new model
     */
    public void setModel(final String model) {
      this.model = model;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language = language;
    }
  }

  /**
   * Details about an environment.
   */
  public class Environment extends IBMWatsonGenericModel {
    private String environment_id;
    private String name;
    private String description;
    private Datetime created;
    private Datetime updated;
    private String status;
    private Boolean read_only;
    private Long size;
    private IndexCapacity index_capacity;
    /**
     * Gets the environment_id.
     *
     * Unique identifier for the environment.
     *
     * @return the environment_id
     */
    public String getEnvironmentId() {
      return environment_id;
    }
    /**
     * Gets the name.
     *
     * Name that identifies the environment.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the description.
     *
     * Description of the environment.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the created.
     *
     * Creation date of the environment, in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * Date of most recent environment update, in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the status.
     *
     * Status of the environment.
     *
     * @return the status
     */
    public String getStatus() {
      return status;
    }
    /**
     * Gets the read_only.
     *
     * If true, then the environment contains read-only collections which are maintained by IBM.
     *
     * @return the read_only
     */
    public Boolean isReadOnly() {
      return read_only;
    }
    /**
     * Gets the size.
     *
     * **Deprecated**: Size of the environment.
     *
     * @return the size
     */
    public Long getSize() {
      return size;
    }
    /**
     * Gets the index_capacity.
     *
     * Details about the resource usage and capacity of the environment.
     *
     * @return the index_capacity
     */
    public IndexCapacity getIndexCapacity() {
      return index_capacity;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the size.
     *
     * @param size the new size
     */
    public void setSize(final long size) {
      this.size = size;
    }

    /**
     * Sets the index_capacity.
     *
     * @param index_capacity the new index_capacity
     */
    public void setIndexCapacity(final IndexCapacity index_capacity) {
      this.index_capacity = index_capacity;
    }
  }

  /**
   * Summary of the document usage statistics for the environment.
   */
  public class EnvironmentDocuments extends IBMWatsonGenericModel {
    private Long indexed;
    private Long maximum_allowed;
    /**
     * Gets the indexed.
     *
     * Number of documents indexed for the environment.
     *
     * @return the indexed
     */
    public Long getIndexed() {
      return indexed;
    }
    /**
     * Gets the maximum_allowed.
     *
     * Total number of documents allowed in the environment's capacity.
     *
     * @return the maximum_allowed
     */
    public Long getMaximumAllowed() {
      return maximum_allowed;
    }
  }

  /**
   * The federatedQueryNotices options.
   */
  public class FederatedQueryNoticesOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private List<String> collection_ids;
    private String filter;
    private String query;
    private String natural_language_query;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private String deduplicate_field;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_ids.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collection_ids
     */
    public List<String> collectionIds() {
      return collection_ids;
    }
    /**
     * Gets the filter.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
    /**
     * Gets the natural_language_query.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query
     */
    public String naturalLanguageQuery() {
      return natural_language_query;
    }
    /**
     * Gets the aggregation.
     *
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
    /**
     * Gets the count.
     *
     * Number of documents to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
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
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
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
     * Gets the highlight.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
    /**
     * Gets the deduplicate_field.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field
     */
    public String deduplicateField() {
      return deduplicate_field;
    }
    private FederatedQueryNoticesOptions(FederatedQueryNoticesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notNull(builder.collection_ids, 'collection_ids cannot be null');
      environment_id = builder.environment_id;
      collection_ids = builder.collection_ids;
      filter = builder.filter;
      query = builder.query;
      natural_language_query = builder.natural_language_query;
      aggregation = builder.aggregation;
      count = builder.count;
      return_serialized_name = builder.return_serialized_name;
      offset = builder.offset;
      sort_serialized_name = builder.sort_serialized_name;
      highlight = builder.highlight;
      deduplicate_field = builder.deduplicate_field;
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
    private String environment_id;
    private List<String> collection_ids;
    private String filter;
    private String query;
    private String natural_language_query;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private String deduplicate_field;

    private FederatedQueryNoticesOptionsBuilder(FederatedQueryNoticesOptions federated_query_notices_options) {
      environment_id = federated_query_notices_options.environment_id;
      collection_ids = federated_query_notices_options.collection_ids;
      filter = federated_query_notices_options.filter;
      query = federated_query_notices_options.query;
      natural_language_query = federated_query_notices_options.natural_language_query;
      aggregation = federated_query_notices_options.aggregation;
      count = federated_query_notices_options.count;
      return_serialized_name = federated_query_notices_options.return_serialized_name;
      offset = federated_query_notices_options.offset;
      sort_serialized_name = federated_query_notices_options.sort_serialized_name;
      highlight = federated_query_notices_options.highlight;
      deduplicate_field = federated_query_notices_options.deduplicate_field;
    }

    /**
     * Instantiates a new builder.
     */
    public FederatedQueryNoticesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_ids the collection_ids
     */
    public FederatedQueryNoticesOptionsBuilder(String environment_id, List<String> collection_ids) {
      this.environment_id = environment_id;
      this.collection_ids = collection_ids;
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
     * Adds an collection_ids to collection_ids.
     *
     * @param collection_ids the new collection_ids
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addCollectionIds(String collection_ids) {
      IBMWatsonValidator.notNull(collection_ids, 'collection_ids cannot be null');
      if (this.collection_ids == null) {
        this.collection_ids = new List<String>();
      }
      this.collection_ids.add(collection_ids);
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_ids.
     * Existing collection_ids will be replaced.
     *
     * @param collection_ids the collection_ids
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder collectionIds(List<String> collection_ids) {
      this.collection_ids = collection_ids;
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
     * Set the natural_language_query.
     *
     * @param natural_language_query the natural_language_query
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder naturalLanguageQuery(String natural_language_query) {
      this.natural_language_query = natural_language_query;
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
     * Set the deduplicate_field.
     *
     * @param deduplicate_field the deduplicate_field
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder deduplicateField(String deduplicate_field) {
      this.deduplicate_field = deduplicate_field;
      return this;
    }
  }

  /**
   * The federatedQuery options.
   */
  public class FederatedQueryOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private List<String> collection_ids;
    private String filter;
    private String query;
    private String natural_language_query;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private Boolean deduplicate;
    private String deduplicate_field;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_ids.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collection_ids
     */
    public List<String> collectionIds() {
      return collection_ids;
    }
    /**
     * Gets the filter.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
    /**
     * Gets the natural_language_query.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query
     */
    public String naturalLanguageQuery() {
      return natural_language_query;
    }
    /**
     * Gets the aggregation.
     *
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
    /**
     * Gets the count.
     *
     * Number of documents to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
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
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
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
     * Gets the highlight.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
    /**
     * Gets the deduplicate.
     *
     * When `true` and used with a Watson Discovery News collection, duplicate results (based on the contents of the `title` field) are removed. Duplicate comparison is limited to the current query only, `offset` is not considered. Defaults to `false`. This parameter is currently Beta functionality.
     *
     * @return the deduplicate
     */
    public Boolean deduplicate() {
      return deduplicate;
    }
    /**
     * Gets the deduplicate_field.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field
     */
    public String deduplicateField() {
      return deduplicate_field;
    }
    private FederatedQueryOptions(FederatedQueryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notNull(builder.collection_ids, 'collection_ids cannot be null');
      environment_id = builder.environment_id;
      collection_ids = builder.collection_ids;
      filter = builder.filter;
      query = builder.query;
      natural_language_query = builder.natural_language_query;
      aggregation = builder.aggregation;
      count = builder.count;
      return_serialized_name = builder.return_serialized_name;
      offset = builder.offset;
      sort_serialized_name = builder.sort_serialized_name;
      highlight = builder.highlight;
      deduplicate = builder.deduplicate;
      deduplicate_field = builder.deduplicate_field;
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
    private String environment_id;
    private List<String> collection_ids;
    private String filter;
    private String query;
    private String natural_language_query;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private Boolean deduplicate;
    private String deduplicate_field;

    private FederatedQueryOptionsBuilder(FederatedQueryOptions federated_query_options) {
      environment_id = federated_query_options.environment_id;
      collection_ids = federated_query_options.collection_ids;
      filter = federated_query_options.filter;
      query = federated_query_options.query;
      natural_language_query = federated_query_options.natural_language_query;
      aggregation = federated_query_options.aggregation;
      count = federated_query_options.count;
      return_serialized_name = federated_query_options.return_serialized_name;
      offset = federated_query_options.offset;
      sort_serialized_name = federated_query_options.sort_serialized_name;
      highlight = federated_query_options.highlight;
      deduplicate = federated_query_options.deduplicate;
      deduplicate_field = federated_query_options.deduplicate_field;
    }

    /**
     * Instantiates a new builder.
     */
    public FederatedQueryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_ids the collection_ids
     */
    public FederatedQueryOptionsBuilder(String environment_id, List<String> collection_ids) {
      this.environment_id = environment_id;
      this.collection_ids = collection_ids;
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
     * Adds an collection_ids to collection_ids.
     *
     * @param collection_ids the new collection_ids
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addCollectionIds(String collection_ids) {
      IBMWatsonValidator.notNull(collection_ids, 'collection_ids cannot be null');
      if (this.collection_ids == null) {
        this.collection_ids = new List<String>();
      }
      this.collection_ids.add(collection_ids);
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_ids.
     * Existing collection_ids will be replaced.
     *
     * @param collection_ids the collection_ids
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder collectionIds(List<String> collection_ids) {
      this.collection_ids = collection_ids;
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
     * Set the natural_language_query.
     *
     * @param natural_language_query the natural_language_query
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder naturalLanguageQuery(String natural_language_query) {
      this.natural_language_query = natural_language_query;
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
     * Set the deduplicate_field.
     *
     * @param deduplicate_field the deduplicate_field
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder deduplicateField(String deduplicate_field) {
      this.deduplicate_field = deduplicate_field;
      return this;
    }
  }

  /**
   * Field.
   */
  public class Field extends IBMWatsonGenericModel {
    private String field;
    private String type_serialized_name;
    /**
     * Gets the field.
     *
     * The name of the field.
     *
     * @return the field
     */
    public String getField() {
      return field;
    }
    /**
     * Gets the type_serialized_name.
     *
     * The type of the field.
     *
     * @return the type_serialized_name
     */
    public String getType() {
      return type_serialized_name;
    }
  }

  /**
   * FontSetting.
   */
  public class FontSetting extends IBMWatsonGenericModel {
    private Long level;
    private Long min_size;
    private Long max_size;
    private Boolean bold;
    private Boolean italic;
    private String name;
    /**
     * Gets the level.
     *
     * @return the level
     */
    public Long getLevel() {
      return level;
    }
    /**
     * Gets the min_size.
     *
     * @return the min_size
     */
    public Long getMinSize() {
      return min_size;
    }
    /**
     * Gets the max_size.
     *
     * @return the max_size
     */
    public Long getMaxSize() {
      return max_size;
    }
    /**
     * Gets the bold.
     *
     * @return the bold
     */
    public Boolean isBold() {
      return bold;
    }
    /**
     * Gets the italic.
     *
     * @return the italic
     */
    public Boolean isItalic() {
      return italic;
    }
    /**
     * Gets the name.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }

    /**
     * Sets the level.
     *
     * @param level the new level
     */
    public void setLevel(final long level) {
      this.level = level;
    }

    /**
     * Sets the min_size.
     *
     * @param min_size the new min_size
     */
    public void setMinSize(final long min_size) {
      this.min_size = min_size;
    }

    /**
     * Sets the max_size.
     *
     * @param max_size the new max_size
     */
    public void setMaxSize(final long max_size) {
      this.max_size = max_size;
    }

    /**
     * Sets the bold.
     *
     * @param bold the new bold
     */
    public void setBold(final Boolean bold) {
      this.bold = bold;
    }

    /**
     * Sets the italic.
     *
     * @param italic the new italic
     */
    public void setItalic(final Boolean italic) {
      this.italic = italic;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name = name;
    }
  }

  /**
   * The getCollection options.
   */
  public class GetCollectionOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    private GetCollectionOptions(GetCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
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
    private String environment_id;
    private String collection_id;

    private GetCollectionOptionsBuilder(GetCollectionOptions get_collection_options) {
      environment_id = get_collection_options.environment_id;
      collection_id = get_collection_options.collection_id;
    }

    /**
     * Instantiates a new builder.
     */
    public GetCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public GetCollectionOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the GetCollectionOptions builder
     */
    public GetCollectionOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }
  }

  /**
   * The getConfiguration options.
   */
  public class GetConfigurationOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String configuration_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the configuration_id.
     *
     * The ID of the configuration.
     *
     * @return the configuration_id
     */
    public String configurationId() {
      return configuration_id;
    }
    private GetConfigurationOptions(GetConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configuration_id, 'configuration_id cannot be empty');
      environment_id = builder.environment_id;
      configuration_id = builder.configuration_id;
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
    private String environment_id;
    private String configuration_id;

    private GetConfigurationOptionsBuilder(GetConfigurationOptions get_configuration_options) {
      environment_id = get_configuration_options.environment_id;
      configuration_id = get_configuration_options.configuration_id;
    }

    /**
     * Instantiates a new builder.
     */
    public GetConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param configuration_id the configuration_id
     */
    public GetConfigurationOptionsBuilder(String environment_id, String configuration_id) {
      this.environment_id = environment_id;
      this.configuration_id = configuration_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the configuration_id.
     *
     * @param configuration_id the configuration_id
     * @return the GetConfigurationOptions builder
     */
    public GetConfigurationOptionsBuilder configurationId(String configuration_id) {
      this.configuration_id = configuration_id;
      return this;
    }
  }

  /**
   * The getDocumentStatus options.
   */
  public class GetDocumentStatusOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String document_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the document_id.
     *
     * The ID of the document.
     *
     * @return the document_id
     */
    public String documentId() {
      return document_id;
    }
    private GetDocumentStatusOptions(GetDocumentStatusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.document_id, 'document_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      document_id = builder.document_id;
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
    private String environment_id;
    private String collection_id;
    private String document_id;

    private GetDocumentStatusOptionsBuilder(GetDocumentStatusOptions get_document_status_options) {
      environment_id = get_document_status_options.environment_id;
      collection_id = get_document_status_options.collection_id;
      document_id = get_document_status_options.document_id;
    }

    /**
     * Instantiates a new builder.
     */
    public GetDocumentStatusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param document_id the document_id
     */
    public GetDocumentStatusOptionsBuilder(String environment_id, String collection_id, String document_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.document_id = document_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the document_id.
     *
     * @param document_id the document_id
     * @return the GetDocumentStatusOptions builder
     */
    public GetDocumentStatusOptionsBuilder documentId(String document_id) {
      this.document_id = document_id;
      return this;
    }
  }

  /**
   * The getEnvironment options.
   */
  public class GetEnvironmentOptions extends IBMWatsonGenericModel {
    private String environment_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    private GetEnvironmentOptions(GetEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      environment_id = builder.environment_id;
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
    private String environment_id;

    private GetEnvironmentOptionsBuilder(GetEnvironmentOptions get_environment_options) {
      environment_id = get_environment_options.environment_id;
    }

    /**
     * Instantiates a new builder.
     */
    public GetEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     */
    public GetEnvironmentOptionsBuilder(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the GetEnvironmentOptions builder
     */
    public GetEnvironmentOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }
  }

  /**
   * The getTrainingData options.
   */
  public class GetTrainingDataOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String query_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the query_id.
     *
     * The ID of the query used for training.
     *
     * @return the query_id
     */
    public String queryId() {
      return query_id;
    }
    private GetTrainingDataOptions(GetTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id, 'query_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      query_id = builder.query_id;
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
    private String environment_id;
    private String collection_id;
    private String query_id;

    private GetTrainingDataOptionsBuilder(GetTrainingDataOptions get_training_data_options) {
      environment_id = get_training_data_options.environment_id;
      collection_id = get_training_data_options.collection_id;
      query_id = get_training_data_options.query_id;
    }

    /**
     * Instantiates a new builder.
     */
    public GetTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param query_id the query_id
     */
    public GetTrainingDataOptionsBuilder(String environment_id, String collection_id, String query_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.query_id = query_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the query_id.
     *
     * @param query_id the query_id
     * @return the GetTrainingDataOptions builder
     */
    public GetTrainingDataOptionsBuilder queryId(String query_id) {
      this.query_id = query_id;
      return this;
    }
  }

  /**
   * The getTrainingExample options.
   */
  public class GetTrainingExampleOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String example_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the query_id.
     *
     * The ID of the query used for training.
     *
     * @return the query_id
     */
    public String queryId() {
      return query_id;
    }
    /**
     * Gets the example_id.
     *
     * The ID of the document as it is indexed.
     *
     * @return the example_id
     */
    public String exampleId() {
      return example_id;
    }
    private GetTrainingExampleOptions(GetTrainingExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id, 'query_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.example_id, 'example_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      query_id = builder.query_id;
      example_id = builder.example_id;
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
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String example_id;

    private GetTrainingExampleOptionsBuilder(GetTrainingExampleOptions get_training_example_options) {
      environment_id = get_training_example_options.environment_id;
      collection_id = get_training_example_options.collection_id;
      query_id = get_training_example_options.query_id;
      example_id = get_training_example_options.example_id;
    }

    /**
     * Instantiates a new builder.
     */
    public GetTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param query_id the query_id
     * @param example_id the example_id
     */
    public GetTrainingExampleOptionsBuilder(String environment_id, String collection_id, String query_id, String example_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.query_id = query_id;
      this.example_id = example_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the query_id.
     *
     * @param query_id the query_id
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder queryId(String query_id) {
      this.query_id = query_id;
      return this;
    }

    /**
     * Set the example_id.
     *
     * @param example_id the example_id
     * @return the GetTrainingExampleOptions builder
     */
    public GetTrainingExampleOptionsBuilder exampleId(String example_id) {
      this.example_id = example_id;
      return this;
    }
  }

  /**
   * Histogram.
   */
  public class Histogram extends IBMWatsonGenericModel {
    private Long interval;
    /**
     * Gets the interval.
     *
     * Interval of the aggregation. (For 'histogram' type).
     *
     * @return the interval
     */
    public Long getInterval() {
      return interval;
    }
  }

  /**
   * A list of HTML conversion settings.
   */
  public class HtmlSettings extends IBMWatsonGenericModel {
    private List<String> exclude_tags_completely;
    private List<String> exclude_tags_keep_content;
    private XPathPatterns keep_content;
    private XPathPatterns exclude_content;
    private List<String> keep_tag_attributes;
    private List<String> exclude_tag_attributes;
    /**
     * Gets the exclude_tags_completely.
     *
     * @return the exclude_tags_completely
     */
    public List<String> getExcludeTagsCompletely() {
      return exclude_tags_completely;
    }
    /**
     * Gets the exclude_tags_keep_content.
     *
     * @return the exclude_tags_keep_content
     */
    public List<String> getExcludeTagsKeepContent() {
      return exclude_tags_keep_content;
    }
    /**
     * Gets the keep_content.
     *
     * @return the keep_content
     */
    public XPathPatterns getKeepContent() {
      return keep_content;
    }
    /**
     * Gets the exclude_content.
     *
     * @return the exclude_content
     */
    public XPathPatterns getExcludeContent() {
      return exclude_content;
    }
    /**
     * Gets the keep_tag_attributes.
     *
     * @return the keep_tag_attributes
     */
    public List<String> getKeepTagAttributes() {
      return keep_tag_attributes;
    }
    /**
     * Gets the exclude_tag_attributes.
     *
     * @return the exclude_tag_attributes
     */
    public List<String> getExcludeTagAttributes() {
      return exclude_tag_attributes;
    }

    /**
     * Sets the exclude_tags_completely.
     *
     * @param exclude_tags_completely the new exclude_tags_completely
     */
    public void setExcludeTagsCompletely(final List<String> exclude_tags_completely) {
      this.exclude_tags_completely = exclude_tags_completely;
    }

    /**
     * Sets the exclude_tags_keep_content.
     *
     * @param exclude_tags_keep_content the new exclude_tags_keep_content
     */
    public void setExcludeTagsKeepContent(final List<String> exclude_tags_keep_content) {
      this.exclude_tags_keep_content = exclude_tags_keep_content;
    }

    /**
     * Sets the keep_content.
     *
     * @param keep_content the new keep_content
     */
    public void setKeepContent(final XPathPatterns keep_content) {
      this.keep_content = keep_content;
    }

    /**
     * Sets the exclude_content.
     *
     * @param exclude_content the new exclude_content
     */
    public void setExcludeContent(final XPathPatterns exclude_content) {
      this.exclude_content = exclude_content;
    }

    /**
     * Sets the keep_tag_attributes.
     *
     * @param keep_tag_attributes the new keep_tag_attributes
     */
    public void setKeepTagAttributes(final List<String> keep_tag_attributes) {
      this.keep_tag_attributes = keep_tag_attributes;
    }

    /**
     * Sets the exclude_tag_attributes.
     *
     * @param exclude_tag_attributes the new exclude_tag_attributes
     */
    public void setExcludeTagAttributes(final List<String> exclude_tag_attributes) {
      this.exclude_tag_attributes = exclude_tag_attributes;
    }
  }

  /**
   * Details about the resource usage and capacity of the environment.
   */
  public class IndexCapacity extends IBMWatsonGenericModel {
    private EnvironmentDocuments documents;
    private DiskUsage disk_usage;
    private MemoryUsage memory_usage;
    /**
     * Gets the documents.
     *
     * Summary of the document usage statistics for the environment.
     *
     * @return the documents
     */
    public EnvironmentDocuments getDocuments() {
      return documents;
    }
    /**
     * Gets the disk_usage.
     *
     * Summary of the disk usage of the environment.
     *
     * @return the disk_usage
     */
    public DiskUsage getDiskUsage() {
      return disk_usage;
    }
    /**
     * Gets the memory_usage.
     *
     * **Deprecated**: Summary of the memory usage of the environment.
     *
     * @return the memory_usage
     */
    public MemoryUsage getMemoryUsage() {
      return memory_usage;
    }

    /**
     * Sets the documents.
     *
     * @param documents the new documents
     */
    public void setDocuments(final EnvironmentDocuments documents) {
      this.documents = documents;
    }

    /**
     * Sets the disk_usage.
     *
     * @param disk_usage the new disk_usage
     */
    public void setDiskUsage(final DiskUsage disk_usage) {
      this.disk_usage = disk_usage;
    }

    /**
     * Sets the memory_usage.
     *
     * @param memory_usage the new memory_usage
     */
    public void setMemoryUsage(final MemoryUsage memory_usage) {
      this.memory_usage = memory_usage;
    }
  }

  /**
   * The listCollectionFields options.
   */
  public class ListCollectionFieldsOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    private ListCollectionFieldsOptions(ListCollectionFieldsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
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
    private String environment_id;
    private String collection_id;

    private ListCollectionFieldsOptionsBuilder(ListCollectionFieldsOptions list_collection_fields_options) {
      environment_id = list_collection_fields_options.environment_id;
      collection_id = list_collection_fields_options.collection_id;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCollectionFieldsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public ListCollectionFieldsOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the ListCollectionFieldsOptions builder
     */
    public ListCollectionFieldsOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }
  }

  /**
   * The list of fetched fields.  The fields are returned using a fully qualified name format, however, the format differs slightly from that used by the query operations.    * Fields which contain nested JSON objects are assigned a type of "nested".    * Fields which belong to a nested object are prefixed with `.properties` (for example, `warnings.properties.severity` means that the `warnings` object has a property called `severity`).    * Fields returned from the News collection are prefixed with `v{N}-fullnews-t3-{YEAR}.mappings` (for example, `v5-fullnews-t3-2016.mappings.text.properties.author`).
   */
  public class ListCollectionFieldsResponse extends IBMWatsonGenericModel {
    private List<Field> fields;
    /**
     * Gets the fields.
     *
     * An array containing information about each field in the collections.
     *
     * @return the fields
     */
    public List<Field> getFields() {
      return fields;
    }

    /**
     * Sets the fields.
     *
     * @param fields the new fields
     */
    public void setFields(final List<Field> fields) {
      this.fields = fields;
    }
  }

  /**
   * The listCollections options.
   */
  public class ListCollectionsOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String name;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
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
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      environment_id = builder.environment_id;
      name = builder.name;
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
    private String environment_id;
    private String name;

    private ListCollectionsOptionsBuilder(ListCollectionsOptions list_collections_options) {
      environment_id = list_collections_options.environment_id;
      name = list_collections_options.name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCollectionsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     */
    public ListCollectionsOptionsBuilder(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the ListCollectionsOptions builder
     */
    public ListCollectionsOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
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
  }

  /**
   * ListCollectionsResponse.
   */
  public class ListCollectionsResponse extends IBMWatsonGenericModel {
    private List<Collection> collections;
    /**
     * Gets the collections.
     *
     * An array containing information about each collection in the environment.
     *
     * @return the collections
     */
    public List<Collection> getCollections() {
      return collections;
    }

    /**
     * Sets the collections.
     *
     * @param collections the new collections
     */
    public void setCollections(final List<Collection> collections) {
      this.collections = collections;
    }
  }

  /**
   * The listConfigurations options.
   */
  public class ListConfigurationsOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String name;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
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
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      environment_id = builder.environment_id;
      name = builder.name;
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
    private String environment_id;
    private String name;

    private ListConfigurationsOptionsBuilder(ListConfigurationsOptions list_configurations_options) {
      environment_id = list_configurations_options.environment_id;
      name = list_configurations_options.name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListConfigurationsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     */
    public ListConfigurationsOptionsBuilder(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the ListConfigurationsOptions builder
     */
    public ListConfigurationsOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
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
  }

  /**
   * ListConfigurationsResponse.
   */
  public class ListConfigurationsResponse extends IBMWatsonGenericModel {
    private List<Configuration> configurations;
    /**
     * Gets the configurations.
     *
     * An array of Configurations that are available for the service instance.
     *
     * @return the configurations
     */
    public List<Configuration> getConfigurations() {
      return configurations;
    }

    /**
     * Sets the configurations.
     *
     * @param configurations the new configurations
     */
    public void setConfigurations(final List<Configuration> configurations) {
      this.configurations = configurations;
    }
  }

  /**
   * The listEnvironments options.
   */
  public class ListEnvironmentsOptions extends IBMWatsonGenericModel {
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
    private String name;

    private ListEnvironmentsOptionsBuilder(ListEnvironmentsOptions list_environments_options) {
      name = list_environments_options.name;
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
     * Set the name.
     *
     * @param name the name
     * @return the ListEnvironmentsOptions builder
     */
    public ListEnvironmentsOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }
  }

  /**
   * ListEnvironmentsResponse.
   */
  public class ListEnvironmentsResponse extends IBMWatsonGenericModel {
    private List<Environment> environments;
    /**
     * Gets the environments.
     *
     * An array of [environments] that are available for the service instance.
     *
     * @return the environments
     */
    public List<Environment> getEnvironments() {
      return environments;
    }

    /**
     * Sets the environments.
     *
     * @param environments the new environments
     */
    public void setEnvironments(final List<Environment> environments) {
      this.environments = environments;
    }
  }

  /**
   * The listFields options.
   */
  public class ListFieldsOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private List<String> collection_ids;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_ids.
     *
     * A comma-separated list of collection IDs to be queried against.
     *
     * @return the collection_ids
     */
    public List<String> collectionIds() {
      return collection_ids;
    }
    private ListFieldsOptions(ListFieldsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notNull(builder.collection_ids, 'collection_ids cannot be null');
      environment_id = builder.environment_id;
      collection_ids = builder.collection_ids;
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
    private String environment_id;
    private List<String> collection_ids;

    private ListFieldsOptionsBuilder(ListFieldsOptions list_fields_options) {
      environment_id = list_fields_options.environment_id;
      collection_ids = list_fields_options.collection_ids;
    }

    /**
     * Instantiates a new builder.
     */
    public ListFieldsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_ids the collection_ids
     */
    public ListFieldsOptionsBuilder(String environment_id, List<String> collection_ids) {
      this.environment_id = environment_id;
      this.collection_ids = collection_ids;
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
     * Adds an collection_ids to collection_ids.
     *
     * @param collection_ids the new collection_ids
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder addCollectionIds(String collection_ids) {
      IBMWatsonValidator.notNull(collection_ids, 'collection_ids cannot be null');
      if (this.collection_ids == null) {
        this.collection_ids = new List<String>();
      }
      this.collection_ids.add(collection_ids);
      return this;
    }

    /**
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_ids.
     * Existing collection_ids will be replaced.
     *
     * @param collection_ids the collection_ids
     * @return the ListFieldsOptions builder
     */
    public ListFieldsOptionsBuilder collectionIds(List<String> collection_ids) {
      this.collection_ids = collection_ids;
      return this;
    }
  }

  /**
   * The listTrainingData options.
   */
  public class ListTrainingDataOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    private ListTrainingDataOptions(ListTrainingDataOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
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
    private String environment_id;
    private String collection_id;

    private ListTrainingDataOptionsBuilder(ListTrainingDataOptions list_training_data_options) {
      environment_id = list_training_data_options.environment_id;
      collection_id = list_training_data_options.collection_id;
    }

    /**
     * Instantiates a new builder.
     */
    public ListTrainingDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public ListTrainingDataOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the ListTrainingDataOptions builder
     */
    public ListTrainingDataOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }
  }

  /**
   * **Deprecated**: Summary of the memory usage statistics for this environment.
   */
  public class MemoryUsage extends IBMWatsonGenericModel {
    private Long used_bytes;
    private Long total_bytes;
    private String used;
    private String total;
    private Double percent_used;
    /**
     * Gets the used_bytes.
     *
     * **Deprecated**: Number of bytes used in the environment's memory capacity.
     *
     * @return the used_bytes
     */
    public Long getUsedBytes() {
      return used_bytes;
    }
    /**
     * Gets the total_bytes.
     *
     * **Deprecated**: Total number of bytes available in the environment's memory capacity.
     *
     * @return the total_bytes
     */
    public Long getTotalBytes() {
      return total_bytes;
    }
    /**
     * Gets the used.
     *
     * **Deprecated**: Amount of memory capacity used, in KB or GB format.
     *
     * @return the used
     */
    public String getUsed() {
      return used;
    }
    /**
     * Gets the total.
     *
     * **Deprecated**: Total amount of the environment's memory capacity, in KB or GB format.
     *
     * @return the total
     */
    public String getTotal() {
      return total;
    }
    /**
     * Gets the percent_used.
     *
     * **Deprecated**: Percentage of the environment's memory capacity that is being used.
     *
     * @return the percent_used
     */
    public Double getPercentUsed() {
      return percent_used;
    }
  }

  /**
   * NormalizationOperation.
   */
  public class NormalizationOperation extends IBMWatsonGenericModel {
    private String operation;
    private String source_field;
    private String destination_field;
    /**
     * Gets the operation.
     *
     * Identifies what type of operation to perform.   **copy** - Copies the value of the `source_field` to the `destination_field` field. If the `destination_field` already exists, then the value of the `source_field` overwrites the original value of the `destination_field`.   **move** - Renames (moves) the `source_field` to the `destination_field`. If the `destination_field` already exists, then the value of the `source_field` overwrites the original value of the `destination_field`. Rename is identical to copy, except that the `source_field` is removed after the value has been copied to the `destination_field` (it is the same as a _copy_ followed by a _remove_).   **merge** - Merges the value of the `source_field` with the value of the `destination_field`. The `destination_field` is converted into an array if it is not already an array, and the value of the `source_field` is appended to the array. This operation removes the `source_field` after the merge. If the `source_field` does not exist in the current document, then the `destination_field` is still converted into an array (if it is not an array already). This is ensures the type for `destination_field` is consistent across all documents.   **remove** - Deletes the `source_field` field. The `destination_field` is ignored for this operation.   **remove_nulls** - Removes all nested null (blank) leif values from the JSON tree. `source_field` and `destination_field` are ignored by this operation because _remove_nulls_ operates on the entire JSON tree. Typically, `remove_nulls` is invoked as the last normalization operation (if it is inoked at all, it can be time-expensive).
     *
     * @return the operation
     */
    public String getOperation() {
      return operation;
    }
    /**
     * Gets the source_field.
     *
     * The source field for the operation.
     *
     * @return the source_field
     */
    public String getSourceField() {
      return source_field;
    }
    /**
     * Gets the destination_field.
     *
     * The destination field for the operation.
     *
     * @return the destination_field
     */
    public String getDestinationField() {
      return destination_field;
    }

    /**
     * Sets the operation.
     *
     * @param operation the new operation
     */
    public void setOperation(final String operation) {
      this.operation = operation;
    }

    /**
     * Sets the source_field.
     *
     * @param source_field the new source_field
     */
    public void setSourceField(final String source_field) {
      this.source_field = source_field;
    }

    /**
     * Sets the destination_field.
     *
     * @param destination_field the new destination_field
     */
    public void setDestinationField(final String destination_field) {
      this.destination_field = destination_field;
    }
  }

  /**
   * A notice produced for the collection.
   */
  public class Notice extends IBMWatsonGenericModel {
    private String notice_id;
    private Datetime created;
    private String document_id;
    private String query_id;
    private String severity;
    private String step;
    private String description;
    /**
     * Gets the notice_id.
     *
     * Identifies the notice. Many notices might have the same ID. This field exists so that user applications can programmatically identify a notice and take automatic corrective action.
     *
     * @return the notice_id
     */
    public String getNoticeId() {
      return notice_id;
    }
    /**
     * Gets the created.
     *
     * The creation date of the collection in the format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the document_id.
     *
     * Unique identifier of the document.
     *
     * @return the document_id
     */
    public String getDocumentId() {
      return document_id;
    }
    /**
     * Gets the query_id.
     *
     * Unique identifier of the query used for relevance training.
     *
     * @return the query_id
     */
    public String getQueryId() {
      return query_id;
    }
    /**
     * Gets the severity.
     *
     * Severity level of the notice.
     *
     * @return the severity
     */
    public String getSeverity() {
      return severity;
    }
    /**
     * Gets the step.
     *
     * Ingestion or training step in which the notice occurred.
     *
     * @return the step
     */
    public String getStep() {
      return step;
    }
    /**
     * Gets the description.
     *
     * The description of the notice.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
  }

  /**
   * PdfHeadingDetection.
   */
  public class PdfHeadingDetection extends IBMWatsonGenericModel {
    private List<FontSetting> fonts;
    /**
     * Gets the fonts.
     *
     * @return the fonts
     */
    public List<FontSetting> getFonts() {
      return fonts;
    }

    /**
     * Sets the fonts.
     *
     * @param fonts the new fonts
     */
    public void setFonts(final List<FontSetting> fonts) {
      this.fonts = fonts;
    }
  }

  /**
   * A list of PDF conversion settings.
   */
  public class PdfSettings extends IBMWatsonGenericModel {
    private PdfHeadingDetection heading;
    /**
     * Gets the heading.
     *
     * @return the heading
     */
    public PdfHeadingDetection getHeading() {
      return heading;
    }

    /**
     * Sets the heading.
     *
     * @param heading the new heading
     */
    public void setHeading(final PdfHeadingDetection heading) {
      this.heading = heading;
    }
  }

  /**
   * An aggregation produced by the Discovery service to analyze the input provided.
   */
  public class QueryAggregation extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String field;
    private List<AggregationResult> results;
    private String match;
    private Long matching_results;
    private List<QueryAggregation> aggregations;
    /**
     * Gets the type_serialized_name.
     *
     * The type of aggregation command used. For example: term, filter, max, min, etc.
     *
     * @return the type_serialized_name
     */
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the field.
     *
     * The field where the aggregation is located in the document.
     *
     * @return the field
     */
    public String getField() {
      return field;
    }
    /**
     * Gets the results.
     *
     * @return the results
     */
    public List<AggregationResult> getResults() {
      return results;
    }
    /**
     * Gets the match.
     *
     * The match the aggregated results queried for.
     *
     * @return the match
     */
    public String getMatch() {
      return match;
    }
    /**
     * Gets the matching_results.
     *
     * Number of matching results.
     *
     * @return the matching_results
     */
    public Long getMatchingResults() {
      return matching_results;
    }
    /**
     * Gets the aggregations.
     *
     * Aggregations returned by the Discovery service.
     *
     * @return the aggregations
     */
    public List<QueryAggregation> getAggregations() {
      return aggregations;
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
     * Sets the field.
     *
     * @param field the new field
     */
    public void setField(final String field) {
      this.field = field;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<AggregationResult> results) {
      this.results = results;
    }

    /**
     * Sets the match.
     *
     * @param match the new match
     */
    public void setMatch(final String match) {
      this.match = match;
    }

    /**
     * Sets the matching_results.
     *
     * @param matching_results the new matching_results
     */
    public void setMatchingResults(final long matching_results) {
      this.matching_results = matching_results;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations = aggregations;
    }
  }

  /**
   * The queryNotices options.
   */
  public class QueryNoticesOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String filter;
    private String query;
    private String natural_language_query;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private List<String> passages_fields;
    private Long passages_count;
    private Long passages_characters;
    private String deduplicate_field;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the filter.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
    /**
     * Gets the natural_language_query.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query
     */
    public String naturalLanguageQuery() {
      return natural_language_query;
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
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
    /**
     * Gets the count.
     *
     * Number of documents to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
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
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
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
     * Gets the highlight.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
    /**
     * Gets the passages_fields.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all top-level fields are included.
     *
     * @return the passages_fields
     */
    public List<String> passagesFields() {
      return passages_fields;
    }
    /**
     * Gets the passages_count.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found. The default is `10`. The maximum is `100`.
     *
     * @return the passages_count
     */
    public Long passagesCount() {
      return passages_count;
    }
    /**
     * Gets the passages_characters.
     *
     * The approximate number of characters that any one passage will have. The default is `400`. The minimum is `50`. The maximum is `2000`.
     *
     * @return the passages_characters
     */
    public Long passagesCharacters() {
      return passages_characters;
    }
    /**
     * Gets the deduplicate_field.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field
     */
    public String deduplicateField() {
      return deduplicate_field;
    }
    private QueryNoticesOptions(QueryNoticesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      filter = builder.filter;
      query = builder.query;
      natural_language_query = builder.natural_language_query;
      passages = builder.passages;
      aggregation = builder.aggregation;
      count = builder.count;
      return_serialized_name = builder.return_serialized_name;
      offset = builder.offset;
      sort_serialized_name = builder.sort_serialized_name;
      highlight = builder.highlight;
      passages_fields = builder.passages_fields;
      passages_count = builder.passages_count;
      passages_characters = builder.passages_characters;
      deduplicate_field = builder.deduplicate_field;
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
    private String environment_id;
    private String collection_id;
    private String filter;
    private String query;
    private String natural_language_query;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private List<String> passages_fields;
    private Long passages_count;
    private Long passages_characters;
    private String deduplicate_field;

    private QueryNoticesOptionsBuilder(QueryNoticesOptions query_notices_options) {
      environment_id = query_notices_options.environment_id;
      collection_id = query_notices_options.collection_id;
      filter = query_notices_options.filter;
      query = query_notices_options.query;
      natural_language_query = query_notices_options.natural_language_query;
      passages = query_notices_options.passages;
      aggregation = query_notices_options.aggregation;
      count = query_notices_options.count;
      return_serialized_name = query_notices_options.return_serialized_name;
      offset = query_notices_options.offset;
      sort_serialized_name = query_notices_options.sort_serialized_name;
      highlight = query_notices_options.highlight;
      passages_fields = query_notices_options.passages_fields;
      passages_count = query_notices_options.passages_count;
      passages_characters = query_notices_options.passages_characters;
      deduplicate_field = query_notices_options.deduplicate_field;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryNoticesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public QueryNoticesOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Adds an passages_fields to passages_fields.
     *
     * @param passages_fields the new passages_fields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addPassagesFields(String passages_fields) {
      IBMWatsonValidator.notNull(passages_fields, 'passages_fields cannot be null');
      if (this.passages_fields == null) {
        this.passages_fields = new List<String>();
      }
      this.passages_fields.add(passages_fields);
      return this;
    }

    /**
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
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
     * Set the natural_language_query.
     *
     * @param natural_language_query the natural_language_query
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder naturalLanguageQuery(String natural_language_query) {
      this.natural_language_query = natural_language_query;
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
     * Set the passages_fields.
     * Existing passages_fields will be replaced.
     *
     * @param passages_fields the passages_fields
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesFields(List<String> passages_fields) {
      this.passages_fields = passages_fields;
      return this;
    }

    /**
     * Set the passages_count.
     *
     * @param passages_count the passages_count
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCount(Long passages_count) {
      this.passages_count = passages_count;
      return this;
    }

    /**
     * Set the passages_characters.
     *
     * @param passages_characters the passages_characters
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCharacters(Long passages_characters) {
      this.passages_characters = passages_characters;
      return this;
    }

    /**
     * Set the deduplicate_field.
     *
     * @param deduplicate_field the deduplicate_field
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder deduplicateField(String deduplicate_field) {
      this.deduplicate_field = deduplicate_field;
      return this;
    }
  }

  /**
   * QueryNoticesResponse.
   */
  public class QueryNoticesResponse extends IBMWatsonGenericModel {
    private Long matching_results;
    private List<QueryNoticesResult> results;
    private List<QueryAggregation> aggregations;
    private List<QueryPassages> passages;
    private Long duplicates_removed;
    /**
     * Gets the matching_results.
     *
     * @return the matching_results
     */
    public Long getMatchingResults() {
      return matching_results;
    }
    /**
     * Gets the results.
     *
     * @return the results
     */
    public List<QueryNoticesResult> getResults() {
      return results;
    }
    /**
     * Gets the aggregations.
     *
     * @return the aggregations
     */
    public List<QueryAggregation> getAggregations() {
      return aggregations;
    }
    /**
     * Gets the passages.
     *
     * @return the passages
     */
    public List<QueryPassages> getPassages() {
      return passages;
    }
    /**
     * Gets the duplicates_removed.
     *
     * @return the duplicates_removed
     */
    public Long getDuplicatesRemoved() {
      return duplicates_removed;
    }

    /**
     * Sets the matching_results.
     *
     * @param matching_results the new matching_results
     */
    public void setMatchingResults(final long matching_results) {
      this.matching_results = matching_results;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<QueryNoticesResult> results) {
      this.results = results;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations = aggregations;
    }

    /**
     * Sets the passages.
     *
     * @param passages the new passages
     */
    public void setPassages(final List<QueryPassages> passages) {
      this.passages = passages;
    }

    /**
     * Sets the duplicates_removed.
     *
     * @param duplicates_removed the new duplicates_removed
     */
    public void setDuplicatesRemoved(final long duplicates_removed) {
      this.duplicates_removed = duplicates_removed;
    }
  }

  /**
   * QueryNoticesResult.
   */
  public class QueryNoticesResult extends IBMWatsonDynamicModel {

    /**
     * Gets the id.
     *
     * @return the id
     */
    public String getId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('id')), String.class);
    }

    /**
     * Gets the score.
     *
     * @return the score
     */
    public Double getScore() {
      return (Double)JSON.deserialize(JSON.serialize(this.get('score')), Double.class);
    }

    /**
     * Gets the metadata.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return (Map<String, String>)JSON.deserialize(JSON.serialize(this.get('metadata')), Map<String, String>.class);
    }

    /**
     * Gets the collection_id.
     *
     * @return the collection_id
     */
    public String getCollectionId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('collection_id')), String.class);
    }

    /**
     * Sets the id.
     *
     * @param id the new id
     */
    public void setId(final String id) {
      this.put('id', id);
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.put('score', score);
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.put('metadata', metadata);
    }

    /**
     * Sets the collection_id.
     *
     * @param collection_id the new collection_id
     */
    public void setCollectionId(final String collection_id) {
      this.put('collection_id', collection_id);
    }
  }

  /**
   * The query options.
   */
  public class QueryOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String filter;
    private String query;
    private String natural_language_query;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private List<String> passages_fields;
    private Long passages_count;
    private Long passages_characters;
    private Boolean deduplicate;
    private String deduplicate_field;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the filter.
     *
     * A cacheable query that limits the documents returned to exclude any documents that don't mention the query content. Filter searches are better for metadata type searches and when you are trying to get a sense of concepts in the data set.
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
    /**
     * Gets the query.
     *
     * A query search returns all documents in your data set with full enrichments and full text, but with the most relevant documents listed first. Use a query search when you want to find the most relevant search results. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the query
     */
    public String query() {
      return query;
    }
    /**
     * Gets the natural_language_query.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the natural_language_query
     */
    public String naturalLanguageQuery() {
      return natural_language_query;
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
     * An aggregation search uses combinations of filters and query search to return an exact answer. Aggregations are useful for building applications, because you can use them to build lists, tables, and time series. For a full list of possible aggregrations, see the Query reference.
     *
     * @return the aggregation
     */
    public String aggregation() {
      return aggregation;
    }
    /**
     * Gets the count.
     *
     * Number of documents to return.
     *
     * @return the count
     */
    public Long count() {
      return count;
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
     * Gets the offset.
     *
     * The number of query results to skip at the beginning. For example, if the total number of results that are returned is 10, and the offset is 8, it returns the last two results.
     *
     * @return the offset
     */
    public Long offset() {
      return offset;
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
     * Gets the highlight.
     *
     * When true a highlight field is returned for each result which contains the fields that match the query with `<em></em>` tags around the matching query terms. Defaults to false.
     *
     * @return the highlight
     */
    public Boolean highlight() {
      return highlight;
    }
    /**
     * Gets the passages_fields.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all top-level fields are included.
     *
     * @return the passages_fields
     */
    public List<String> passagesFields() {
      return passages_fields;
    }
    /**
     * Gets the passages_count.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found. The default is `10`. The maximum is `100`.
     *
     * @return the passages_count
     */
    public Long passagesCount() {
      return passages_count;
    }
    /**
     * Gets the passages_characters.
     *
     * The approximate number of characters that any one passage will have. The default is `400`. The minimum is `50`. The maximum is `2000`.
     *
     * @return the passages_characters
     */
    public Long passagesCharacters() {
      return passages_characters;
    }
    /**
     * Gets the deduplicate.
     *
     * When `true` and used with a Watson Discovery News collection, duplicate results (based on the contents of the `title` field) are removed. Duplicate comparison is limited to the current query only, `offset` is not considered. Defaults to `false`. This parameter is currently Beta functionality.
     *
     * @return the deduplicate
     */
    public Boolean deduplicate() {
      return deduplicate;
    }
    /**
     * Gets the deduplicate_field.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicate_field
     */
    public String deduplicateField() {
      return deduplicate_field;
    }
    private QueryOptions(QueryOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      filter = builder.filter;
      query = builder.query;
      natural_language_query = builder.natural_language_query;
      passages = builder.passages;
      aggregation = builder.aggregation;
      count = builder.count;
      return_serialized_name = builder.return_serialized_name;
      offset = builder.offset;
      sort_serialized_name = builder.sort_serialized_name;
      highlight = builder.highlight;
      passages_fields = builder.passages_fields;
      passages_count = builder.passages_count;
      passages_characters = builder.passages_characters;
      deduplicate = builder.deduplicate;
      deduplicate_field = builder.deduplicate_field;
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
    private String environment_id;
    private String collection_id;
    private String filter;
    private String query;
    private String natural_language_query;
    private Boolean passages;
    private String aggregation;
    private Long count;
    private List<String> return_serialized_name;
    private Long offset;
    private List<String> sort_serialized_name;
    private Boolean highlight;
    private List<String> passages_fields;
    private Long passages_count;
    private Long passages_characters;
    private Boolean deduplicate;
    private String deduplicate_field;

    private QueryOptionsBuilder(QueryOptions query_options) {
      environment_id = query_options.environment_id;
      collection_id = query_options.collection_id;
      filter = query_options.filter;
      query = query_options.query;
      natural_language_query = query_options.natural_language_query;
      passages = query_options.passages;
      aggregation = query_options.aggregation;
      count = query_options.count;
      return_serialized_name = query_options.return_serialized_name;
      offset = query_options.offset;
      sort_serialized_name = query_options.sort_serialized_name;
      highlight = query_options.highlight;
      passages_fields = query_options.passages_fields;
      passages_count = query_options.passages_count;
      passages_characters = query_options.passages_characters;
      deduplicate = query_options.deduplicate;
      deduplicate_field = query_options.deduplicate_field;
    }

    /**
     * Instantiates a new builder.
     */
    public QueryOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public QueryOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Adds an passages_fields to passages_fields.
     *
     * @param passages_fields the new passages_fields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addPassagesFields(String passages_fields) {
      IBMWatsonValidator.notNull(passages_fields, 'passages_fields cannot be null');
      if (this.passages_fields == null) {
        this.passages_fields = new List<String>();
      }
      this.passages_fields.add(passages_fields);
      return this;
    }

    /**
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
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
     * Set the natural_language_query.
     *
     * @param natural_language_query the natural_language_query
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder naturalLanguageQuery(String natural_language_query) {
      this.natural_language_query = natural_language_query;
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
     * Set the passages_fields.
     * Existing passages_fields will be replaced.
     *
     * @param passages_fields the passages_fields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesFields(List<String> passages_fields) {
      this.passages_fields = passages_fields;
      return this;
    }

    /**
     * Set the passages_count.
     *
     * @param passages_count the passages_count
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCount(Long passages_count) {
      this.passages_count = passages_count;
      return this;
    }

    /**
     * Set the passages_characters.
     *
     * @param passages_characters the passages_characters
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCharacters(Long passages_characters) {
      this.passages_characters = passages_characters;
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
     * Set the deduplicate_field.
     *
     * @param deduplicate_field the deduplicate_field
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder deduplicateField(String deduplicate_field) {
      this.deduplicate_field = deduplicate_field;
      return this;
    }
  }

  /**
   * QueryPassages.
   */
  public class QueryPassages extends IBMWatsonGenericModel {
    private String document_id;
    private Double passage_score;
    private String passage_text;
    private Double start_offset;
    private Double end_offset;
    private String field;
    /**
     * Gets the document_id.
     *
     * The unique identifier of the document from which the passage has been extracted.
     *
     * @return the document_id
     */
    public String getDocumentId() {
      return document_id;
    }
    /**
     * Gets the passage_score.
     *
     * The confidence score of the passages's analysis. A higher score indicates greater confidence.
     *
     * @return the passage_score
     */
    public Double getPassageScore() {
      return passage_score;
    }
    /**
     * Gets the passage_text.
     *
     * The content of the extracted passage.
     *
     * @return the passage_text
     */
    public String getPassageText() {
      return passage_text;
    }
    /**
     * Gets the start_offset.
     *
     * The position of the first character of the extracted passage in the originating field.
     *
     * @return the start_offset
     */
    public Double getStartOffset() {
      return start_offset;
    }
    /**
     * Gets the end_offset.
     *
     * The position of the last character of the extracted passage in the originating field.
     *
     * @return the end_offset
     */
    public Double getEndOffset() {
      return end_offset;
    }
    /**
     * Gets the field.
     *
     * The label of the field from which the passage has been extracted.
     *
     * @return the field
     */
    public String getField() {
      return field;
    }

    /**
     * Sets the document_id.
     *
     * @param document_id the new document_id
     */
    public void setDocumentId(final String document_id) {
      this.document_id = document_id;
    }

    /**
     * Sets the passage_score.
     *
     * @param passage_score the new passage_score
     */
    public void setPassageScore(final Double passage_score) {
      this.passage_score = passage_score;
    }

    /**
     * Sets the passage_text.
     *
     * @param passage_text the new passage_text
     */
    public void setPassageText(final String passage_text) {
      this.passage_text = passage_text;
    }

    /**
     * Sets the start_offset.
     *
     * @param start_offset the new start_offset
     */
    public void setStartOffset(final Double start_offset) {
      this.start_offset = start_offset;
    }

    /**
     * Sets the end_offset.
     *
     * @param end_offset the new end_offset
     */
    public void setEndOffset(final Double end_offset) {
      this.end_offset = end_offset;
    }

    /**
     * Sets the field.
     *
     * @param field the new field
     */
    public void setField(final String field) {
      this.field = field;
    }
  }

  /**
   * A response containing the documents and aggregations for the query.
   */
  public class QueryResponse extends IBMWatsonGenericModel {
    private Long matching_results;
    private List<QueryResult> results;
    private List<QueryAggregation> aggregations;
    private List<QueryPassages> passages;
    private Long duplicates_removed;
    /**
     * Gets the matching_results.
     *
     * @return the matching_results
     */
    public Long getMatchingResults() {
      return matching_results;
    }
    /**
     * Gets the results.
     *
     * @return the results
     */
    public List<QueryResult> getResults() {
      return results;
    }
    /**
     * Gets the aggregations.
     *
     * @return the aggregations
     */
    public List<QueryAggregation> getAggregations() {
      return aggregations;
    }
    /**
     * Gets the passages.
     *
     * @return the passages
     */
    public List<QueryPassages> getPassages() {
      return passages;
    }
    /**
     * Gets the duplicates_removed.
     *
     * @return the duplicates_removed
     */
    public Long getDuplicatesRemoved() {
      return duplicates_removed;
    }

    /**
     * Sets the matching_results.
     *
     * @param matching_results the new matching_results
     */
    public void setMatchingResults(final long matching_results) {
      this.matching_results = matching_results;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<QueryResult> results) {
      this.results = results;
    }

    /**
     * Sets the aggregations.
     *
     * @param aggregations the new aggregations
     */
    public void setAggregations(final List<QueryAggregation> aggregations) {
      this.aggregations = aggregations;
    }

    /**
     * Sets the passages.
     *
     * @param passages the new passages
     */
    public void setPassages(final List<QueryPassages> passages) {
      this.passages = passages;
    }

    /**
     * Sets the duplicates_removed.
     *
     * @param duplicates_removed the new duplicates_removed
     */
    public void setDuplicatesRemoved(final long duplicates_removed) {
      this.duplicates_removed = duplicates_removed;
    }
  }

  /**
   * QueryResult.
   */
  public class QueryResult extends IBMWatsonDynamicModel {

    /**
     * Gets the id.
     *
     * @return the id
     */
    public String getId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('id')), String.class);
    }

    /**
     * Gets the score.
     *
     * @return the score
     */
    public Double getScore() {
      return (Double)JSON.deserialize(JSON.serialize(this.get('score')), Double.class);
    }

    /**
     * Gets the metadata.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return (Map<String, String>)JSON.deserialize(JSON.serialize(this.get('metadata')), Map<String, String>.class);
    }

    /**
     * Gets the collection_id.
     *
     * @return the collection_id
     */
    public String getCollectionId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('collection_id')), String.class);
    }

    /**
     * Sets the id.
     *
     * @param id the new id
     */
    public void setId(final String id) {
      this.put('id', id);
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.put('score', score);
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.put('metadata', metadata);
    }

    /**
     * Sets the collection_id.
     *
     * @param collection_id the new collection_id
     */
    public void setCollectionId(final String collection_id) {
      this.put('collection_id', collection_id);
    }
  }

  /**
   * Term.
   */
  public class Term extends IBMWatsonGenericModel {
    private Long count;
    /**
     * Gets the count.
     *
     * @return the count
     */
    public Long getCount() {
      return count;
    }
  }

  /**
   * The testConfigurationInEnvironment options.
   */
  public class TestConfigurationInEnvironmentOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String configuration;
    private String step;
    private String configuration_id;
    private String file;
    private String filename;
    private String metadata;
    private String file_content_type;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the configuration.
     *
     * The configuration to use to process the document. If this part is provided, then the provided configuration is used to process the document. If the `configuration_id` is also provided (both are present at the same time), then request is rejected. The maximum supported configuration size is 1 MB. Configuration parts larger than 1 MB are rejected. See the `GET /configurations/{configuration_id}` operation for an example configuration.
     *
     * @return the configuration
     */
    public String configuration() {
      return configuration;
    }
    /**
     * Gets the step.
     *
     * Specify to only run the input document through the given step instead of running the input document through the entire ingestion workflow. Valid values are `convert`, `enrich`, and `normalize`.
     *
     * @return the step
     */
    public String step() {
      return step;
    }
    /**
     * Gets the configuration_id.
     *
     * The ID of the configuration to use to process the document. If the `configuration` form part is also provided (both are present at the same time), then request will be rejected.
     *
     * @return the configuration_id
     */
    public String configurationId() {
      return configuration_id;
    }
    /**
     * Gets the file.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file
     */
    public String file() {
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
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1 MB are rejected. Example:  ``` {   "Creator": "Johnny Appleseed",   "Subject": "Apples" } ```.
     *
     * @return the metadata
     */
    public String metadata() {
      return metadata;
    }
    /**
     * Gets the file_content_type.
     *
     * The content type of file.
     *
     * @return the file_content_type
     */
    public String fileContentType() {
      return file_content_type;
    }
    private TestConfigurationInEnvironmentOptions(TestConfigurationInEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      environment_id = builder.environment_id;
      configuration = builder.configuration;
      step = builder.step;
      configuration_id = builder.configuration_id;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      file_content_type = builder.file_content_type;
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
    private String environment_id;
    private String configuration;
    private String step;
    private String configuration_id;
    private String file;
    private String filename;
    private String metadata;
    private String file_content_type;

    private TestConfigurationInEnvironmentOptionsBuilder(TestConfigurationInEnvironmentOptions test_configuration_in_environment_options) {
      environment_id = test_configuration_in_environment_options.environment_id;
      configuration = test_configuration_in_environment_options.configuration;
      step = test_configuration_in_environment_options.step;
      configuration_id = test_configuration_in_environment_options.configuration_id;
      file = test_configuration_in_environment_options.file;
      filename = test_configuration_in_environment_options.filename;
      metadata = test_configuration_in_environment_options.metadata;
      file_content_type = test_configuration_in_environment_options.file_content_type;
    }

    /**
     * Instantiates a new builder.
     */
    public TestConfigurationInEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     */
    public TestConfigurationInEnvironmentOptionsBuilder(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the configuration_id.
     *
     * @param configuration_id the configuration_id
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder configurationId(String configuration_id) {
      this.configuration_id = configuration_id;
      return this;
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder file(String file) {
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
     * Set the file_content_type.
     *
     * @param file_content_type the file_content_type
     * @return the TestConfigurationInEnvironmentOptions builder
     */
    public TestConfigurationInEnvironmentOptionsBuilder fileContentType(String file_content_type) {
      this.file_content_type = file_content_type;
      return this;
    }
  }

  /**
   * TestDocument.
   */
  public class TestDocument extends IBMWatsonGenericModel {
    private String configuration_id;
    private String status;
    private Long enriched_field_units;
    private String original_media_type;
    private List<DocumentSnapshot> snapshots;
    private List<Notice> notices;
    /**
     * Gets the configuration_id.
     *
     * The unique identifier for the configuration.
     *
     * @return the configuration_id
     */
    public String getConfigurationId() {
      return configuration_id;
    }
    /**
     * Gets the status.
     *
     * Status of the preview operation.
     *
     * @return the status
     */
    public String getStatus() {
      return status;
    }
    /**
     * Gets the enriched_field_units.
     *
     * The number of 10-kB chunks of field data that were enriched. This can be used to estimate the cost of running a real ingestion.
     *
     * @return the enriched_field_units
     */
    public Long getEnrichedFieldUnits() {
      return enriched_field_units;
    }
    /**
     * Gets the original_media_type.
     *
     * Format of the test document.
     *
     * @return the original_media_type
     */
    public String getOriginalMediaType() {
      return original_media_type;
    }
    /**
     * Gets the snapshots.
     *
     * An array of objects that describe each step in the preview process.
     *
     * @return the snapshots
     */
    public List<DocumentSnapshot> getSnapshots() {
      return snapshots;
    }
    /**
     * Gets the notices.
     *
     * An array of notice messages about the preview operation.
     *
     * @return the notices
     */
    public List<Notice> getNotices() {
      return notices;
    }

    /**
     * Sets the snapshots.
     *
     * @param snapshots the new snapshots
     */
    public void setSnapshots(final List<DocumentSnapshot> snapshots) {
      this.snapshots = snapshots;
    }

    /**
     * Sets the notices.
     *
     * @param notices the new notices
     */
    public void setNotices(final List<Notice> notices) {
      this.notices = notices;
    }
  }

  /**
   * TrainingDataSet.
   */
  public class TrainingDataSet extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private List<TrainingQuery> queries;
    /**
     * Gets the environment_id.
     *
     * @return the environment_id
     */
    public String getEnvironmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * @return the collection_id
     */
    public String getCollectionId() {
      return collection_id;
    }
    /**
     * Gets the queries.
     *
     * @return the queries
     */
    public List<TrainingQuery> getQueries() {
      return queries;
    }

    /**
     * Sets the environment_id.
     *
     * @param environment_id the new environment_id
     */
    public void setEnvironmentId(final String environment_id) {
      this.environment_id = environment_id;
    }

    /**
     * Sets the collection_id.
     *
     * @param collection_id the new collection_id
     */
    public void setCollectionId(final String collection_id) {
      this.collection_id = collection_id;
    }

    /**
     * Sets the queries.
     *
     * @param queries the new queries
     */
    public void setQueries(final List<TrainingQuery> queries) {
      this.queries = queries;
    }
  }

  /**
   * TrainingExample.
   */
  public class TrainingExample extends IBMWatsonGenericModel {
    private String document_id;
    private String cross_reference;
    private Long relevance;
    /**
     * Gets the document_id.
     *
     * @return the document_id
     */
    public String getDocumentId() {
      return document_id;
    }
    /**
     * Gets the cross_reference.
     *
     * @return the cross_reference
     */
    public String getCrossReference() {
      return cross_reference;
    }
    /**
     * Gets the relevance.
     *
     * @return the relevance
     */
    public Long getRelevance() {
      return relevance;
    }

    /**
     * Sets the document_id.
     *
     * @param document_id the new document_id
     */
    public void setDocumentId(final String document_id) {
      this.document_id = document_id;
    }

    /**
     * Sets the cross_reference.
     *
     * @param cross_reference the new cross_reference
     */
    public void setCrossReference(final String cross_reference) {
      this.cross_reference = cross_reference;
    }

    /**
     * Sets the relevance.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final long relevance) {
      this.relevance = relevance;
    }
  }

  /**
   * TrainingQuery.
   */
  public class TrainingQuery extends IBMWatsonGenericModel {
    private String query_id;
    private String natural_language_query;
    private String filter;
    private List<TrainingExample> examples;
    /**
     * Gets the query_id.
     *
     * @return the query_id
     */
    public String getQueryId() {
      return query_id;
    }
    /**
     * Gets the natural_language_query.
     *
     * @return the natural_language_query
     */
    public String getNaturalLanguageQuery() {
      return natural_language_query;
    }
    /**
     * Gets the filter.
     *
     * @return the filter
     */
    public String getFilter() {
      return filter;
    }
    /**
     * Gets the examples.
     *
     * @return the examples
     */
    public List<TrainingExample> getExamples() {
      return examples;
    }

    /**
     * Sets the query_id.
     *
     * @param query_id the new query_id
     */
    public void setQueryId(final String query_id) {
      this.query_id = query_id;
    }

    /**
     * Sets the natural_language_query.
     *
     * @param natural_language_query the new natural_language_query
     */
    public void setNaturalLanguageQuery(final String natural_language_query) {
      this.natural_language_query = natural_language_query;
    }

    /**
     * Sets the filter.
     *
     * @param filter the new filter
     */
    public void setFilter(final String filter) {
      this.filter = filter;
    }

    /**
     * Sets the examples.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<TrainingExample> examples) {
      this.examples = examples;
    }
  }

  /**
   * TrainingStatus.
   */
  public class TrainingStatus extends IBMWatsonGenericModel {
    private Long total_examples;
    private Boolean available;
    private Boolean processing;
    private Boolean minimum_queries_added;
    private Boolean minimum_examples_added;
    private Boolean sufficient_label_diversity;
    private Long notices;
    private Datetime successfully_trained;
    private Datetime data_updated;
    /**
     * Gets the total_examples.
     *
     * @return the total_examples
     */
    public Long getTotalExamples() {
      return total_examples;
    }
    /**
     * Gets the available.
     *
     * @return the available
     */
    public Boolean isAvailable() {
      return available;
    }
    /**
     * Gets the processing.
     *
     * @return the processing
     */
    public Boolean isProcessing() {
      return processing;
    }
    /**
     * Gets the minimum_queries_added.
     *
     * @return the minimum_queries_added
     */
    public Boolean isMinimumQueriesAdded() {
      return minimum_queries_added;
    }
    /**
     * Gets the minimum_examples_added.
     *
     * @return the minimum_examples_added
     */
    public Boolean isMinimumExamplesAdded() {
      return minimum_examples_added;
    }
    /**
     * Gets the sufficient_label_diversity.
     *
     * @return the sufficient_label_diversity
     */
    public Boolean isSufficientLabelDiversity() {
      return sufficient_label_diversity;
    }
    /**
     * Gets the notices.
     *
     * @return the notices
     */
    public Long getNotices() {
      return notices;
    }
    /**
     * Gets the successfully_trained.
     *
     * @return the successfully_trained
     */
    public Datetime getSuccessfullyTrained() {
      return successfully_trained;
    }
    /**
     * Gets the data_updated.
     *
     * @return the data_updated
     */
    public Datetime getDataUpdated() {
      return data_updated;
    }

    /**
     * Sets the total_examples.
     *
     * @param total_examples the new total_examples
     */
    public void setTotalExamples(final long total_examples) {
      this.total_examples = total_examples;
    }

    /**
     * Sets the available.
     *
     * @param available the new available
     */
    public void setAvailable(final Boolean available) {
      this.available = available;
    }

    /**
     * Sets the processing.
     *
     * @param processing the new processing
     */
    public void setProcessing(final Boolean processing) {
      this.processing = processing;
    }

    /**
     * Sets the minimum_queries_added.
     *
     * @param minimum_queries_added the new minimum_queries_added
     */
    public void setMinimumQueriesAdded(final Boolean minimum_queries_added) {
      this.minimum_queries_added = minimum_queries_added;
    }

    /**
     * Sets the minimum_examples_added.
     *
     * @param minimum_examples_added the new minimum_examples_added
     */
    public void setMinimumExamplesAdded(final Boolean minimum_examples_added) {
      this.minimum_examples_added = minimum_examples_added;
    }

    /**
     * Sets the sufficient_label_diversity.
     *
     * @param sufficient_label_diversity the new sufficient_label_diversity
     */
    public void setSufficientLabelDiversity(final Boolean sufficient_label_diversity) {
      this.sufficient_label_diversity = sufficient_label_diversity;
    }

    /**
     * Sets the notices.
     *
     * @param notices the new notices
     */
    public void setNotices(final long notices) {
      this.notices = notices;
    }

    /**
     * Sets the successfully_trained.
     *
     * @param successfully_trained the new successfully_trained
     */
    public void setSuccessfullyTrained(final Datetime successfully_trained) {
      this.successfully_trained = successfully_trained;
    }

    /**
     * Sets the data_updated.
     *
     * @param data_updated the new data_updated
     */
    public void setDataUpdated(final Datetime data_updated) {
      this.data_updated = data_updated;
    }
  }

  /**
   * The updateCollection options.
   */
  public class UpdateCollectionOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String name;
    private String description;
    private String configuration_id;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
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
     * Gets the configuration_id.
     *
     * The ID of the configuration in which the collection is to be updated.
     *
     * @return the configuration_id
     */
    public String configurationId() {
      return configuration_id;
    }
    private UpdateCollectionOptions(UpdateCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      name = builder.name;
      description = builder.description;
      configuration_id = builder.configuration_id;
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
    private String environment_id;
    private String collection_id;
    private String name;
    private String description;
    private String configuration_id;

    private UpdateCollectionOptionsBuilder(UpdateCollectionOptions update_collection_options) {
      environment_id = update_collection_options.environment_id;
      collection_id = update_collection_options.collection_id;
      name = update_collection_options.name;
      description = update_collection_options.description;
      configuration_id = update_collection_options.configuration_id;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     */
    public UpdateCollectionOptionsBuilder(String environment_id, String collection_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
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
     * Set the configuration_id.
     *
     * @param configuration_id the configuration_id
     * @return the UpdateCollectionOptions builder
     */
    public UpdateCollectionOptionsBuilder configurationId(String configuration_id) {
      this.configuration_id = configuration_id;
      return this;
    }
  }

  /**
   * The updateConfiguration options.
   */
  public class UpdateConfigurationOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String configuration_id;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the configuration_id.
     *
     * The ID of the configuration.
     *
     * @return the configuration_id
     */
    public String configurationId() {
      return configuration_id;
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
     * The document conversion settings for the configuration.
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
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the normalizations
     */
    public List<NormalizationOperation> normalizations() {
      return normalizations;
    }
    private UpdateConfigurationOptions(UpdateConfigurationOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configuration_id, 'configuration_id cannot be empty');
      environment_id = builder.environment_id;
      configuration_id = builder.configuration_id;
      name = builder.name;
      description = builder.description;
      conversions = builder.conversions;
      enrichments = builder.enrichments;
      normalizations = builder.normalizations;
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
    private String environment_id;
    private String configuration_id;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;

    private UpdateConfigurationOptionsBuilder(UpdateConfigurationOptions update_configuration_options) {
      environment_id = update_configuration_options.environment_id;
      configuration_id = update_configuration_options.configuration_id;
      name = update_configuration_options.name;
      description = update_configuration_options.description;
      conversions = update_configuration_options.conversions;
      enrichments = update_configuration_options.enrichments;
      normalizations = update_configuration_options.normalizations;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateConfigurationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param configuration_id the configuration_id
     */
    public UpdateConfigurationOptionsBuilder(String environment_id, String configuration_id) {
      this.environment_id = environment_id;
      this.configuration_id = configuration_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the configuration_id.
     *
     * @param configuration_id the configuration_id
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder configurationId(String configuration_id) {
      this.configuration_id = configuration_id;
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
      return this;
    }
  }

  /**
   * The updateDocument options.
   */
  public class UpdateDocumentOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String document_id;
    private String file;
    private String filename;
    private String metadata;
    private String file_content_type;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the document_id.
     *
     * The ID of the document.
     *
     * @return the document_id
     */
    public String documentId() {
      return document_id;
    }
    /**
     * Gets the file.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file
     */
    public String file() {
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
     * If you're using the Data Crawler to upload your documents, you can test a document against the type of metadata that the Data Crawler might send. The maximum supported metadata file size is 1 MB. Metadata parts larger than 1 MB are rejected. Example:  ``` {   "Creator": "Johnny Appleseed",   "Subject": "Apples" } ```.
     *
     * @return the metadata
     */
    public String metadata() {
      return metadata;
    }
    /**
     * Gets the file_content_type.
     *
     * The content type of file.
     *
     * @return the file_content_type
     */
    public String fileContentType() {
      return file_content_type;
    }
    private UpdateDocumentOptions(UpdateDocumentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.document_id, 'document_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      document_id = builder.document_id;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      file_content_type = builder.file_content_type;
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
    private String environment_id;
    private String collection_id;
    private String document_id;
    private String file;
    private String filename;
    private String metadata;
    private String file_content_type;

    private UpdateDocumentOptionsBuilder(UpdateDocumentOptions update_document_options) {
      environment_id = update_document_options.environment_id;
      collection_id = update_document_options.collection_id;
      document_id = update_document_options.document_id;
      file = update_document_options.file;
      filename = update_document_options.filename;
      metadata = update_document_options.metadata;
      file_content_type = update_document_options.file_content_type;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateDocumentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param document_id the document_id
     */
    public UpdateDocumentOptionsBuilder(String environment_id, String collection_id, String document_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.document_id = document_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the document_id.
     *
     * @param document_id the document_id
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder documentId(String document_id) {
      this.document_id = document_id;
      return this;
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder file(String file) {
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
     * Set the file_content_type.
     *
     * @param file_content_type the file_content_type
     * @return the UpdateDocumentOptions builder
     */
    public UpdateDocumentOptionsBuilder fileContentType(String file_content_type) {
      this.file_content_type = file_content_type;
      return this;
    }
  }

  /**
   * The updateEnvironment options.
   */
  public class UpdateEnvironmentOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String name;
    private String description;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
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
    private UpdateEnvironmentOptions(UpdateEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      environment_id = builder.environment_id;
      name = builder.name;
      description = builder.description;
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
    private String environment_id;
    private String name;
    private String description;

    private UpdateEnvironmentOptionsBuilder(UpdateEnvironmentOptions update_environment_options) {
      environment_id = update_environment_options.environment_id;
      name = update_environment_options.name;
      description = update_environment_options.description;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateEnvironmentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     */
    public UpdateEnvironmentOptionsBuilder(String environment_id) {
      this.environment_id = environment_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the UpdateEnvironmentOptions builder
     */
    public UpdateEnvironmentOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
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
  }

  /**
   * The updateTrainingExample options.
   */
  public class UpdateTrainingExampleOptions extends IBMWatsonGenericModel {
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String example_id;
    private String cross_reference;
    private Long relevance;
    /**
     * Gets the environment_id.
     *
     * The ID of the environment.
     *
     * @return the environment_id
     */
    public String environmentId() {
      return environment_id;
    }
    /**
     * Gets the collection_id.
     *
     * The ID of the collection.
     *
     * @return the collection_id
     */
    public String collectionId() {
      return collection_id;
    }
    /**
     * Gets the query_id.
     *
     * The ID of the query used for training.
     *
     * @return the query_id
     */
    public String queryId() {
      return query_id;
    }
    /**
     * Gets the example_id.
     *
     * The ID of the document as it is indexed.
     *
     * @return the example_id
     */
    public String exampleId() {
      return example_id;
    }
    /**
     * Gets the cross_reference.
     *
     * @return the cross_reference
     */
    public String crossReference() {
      return cross_reference;
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
      IBMWatsonValidator.notEmpty(builder.environment_id, 'environment_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.collection_id, 'collection_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.query_id, 'query_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.example_id, 'example_id cannot be empty');
      environment_id = builder.environment_id;
      collection_id = builder.collection_id;
      query_id = builder.query_id;
      example_id = builder.example_id;
      cross_reference = builder.cross_reference;
      relevance = builder.relevance;
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
    private String environment_id;
    private String collection_id;
    private String query_id;
    private String example_id;
    private String cross_reference;
    private Long relevance;

    private UpdateTrainingExampleOptionsBuilder(UpdateTrainingExampleOptions update_training_example_options) {
      environment_id = update_training_example_options.environment_id;
      collection_id = update_training_example_options.collection_id;
      query_id = update_training_example_options.query_id;
      example_id = update_training_example_options.example_id;
      cross_reference = update_training_example_options.cross_reference;
      relevance = update_training_example_options.relevance;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateTrainingExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param environment_id the environment_id
     * @param collection_id the collection_id
     * @param query_id the query_id
     * @param example_id the example_id
     */
    public UpdateTrainingExampleOptionsBuilder(String environment_id, String collection_id, String query_id, String example_id) {
      this.environment_id = environment_id;
      this.collection_id = collection_id;
      this.query_id = query_id;
      this.example_id = example_id;
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
     * Set the environment_id.
     *
     * @param environment_id the environment_id
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder environmentId(String environment_id) {
      this.environment_id = environment_id;
      return this;
    }

    /**
     * Set the collection_id.
     *
     * @param collection_id the collection_id
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder collectionId(String collection_id) {
      this.collection_id = collection_id;
      return this;
    }

    /**
     * Set the query_id.
     *
     * @param query_id the query_id
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder queryId(String query_id) {
      this.query_id = query_id;
      return this;
    }

    /**
     * Set the example_id.
     *
     * @param example_id the example_id
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder exampleId(String example_id) {
      this.example_id = example_id;
      return this;
    }

    /**
     * Set the cross_reference.
     *
     * @param cross_reference the cross_reference
     * @return the UpdateTrainingExampleOptions builder
     */
    public UpdateTrainingExampleOptionsBuilder crossReference(String cross_reference) {
      this.cross_reference = cross_reference;
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
  }

  /**
   * WordHeadingDetection.
   */
  public class WordHeadingDetection extends IBMWatsonGenericModel {
    private List<FontSetting> fonts;
    private List<WordStyle> styles;
    /**
     * Gets the fonts.
     *
     * @return the fonts
     */
    public List<FontSetting> getFonts() {
      return fonts;
    }
    /**
     * Gets the styles.
     *
     * @return the styles
     */
    public List<WordStyle> getStyles() {
      return styles;
    }

    /**
     * Sets the fonts.
     *
     * @param fonts the new fonts
     */
    public void setFonts(final List<FontSetting> fonts) {
      this.fonts = fonts;
    }

    /**
     * Sets the styles.
     *
     * @param styles the new styles
     */
    public void setStyles(final List<WordStyle> styles) {
      this.styles = styles;
    }
  }

  /**
   * A list of Word conversion settings.
   */
  public class WordSettings extends IBMWatsonGenericModel {
    private WordHeadingDetection heading;
    /**
     * Gets the heading.
     *
     * @return the heading
     */
    public WordHeadingDetection getHeading() {
      return heading;
    }

    /**
     * Sets the heading.
     *
     * @param heading the new heading
     */
    public void setHeading(final WordHeadingDetection heading) {
      this.heading = heading;
    }
  }

  /**
   * WordStyle.
   */
  public class WordStyle extends IBMWatsonGenericModel {
    private Long level;
    private List<String> names;
    /**
     * Gets the level.
     *
     * @return the level
     */
    public Long getLevel() {
      return level;
    }
    /**
     * Gets the names.
     *
     * @return the names
     */
    public List<String> getNames() {
      return names;
    }

    /**
     * Sets the level.
     *
     * @param level the new level
     */
    public void setLevel(final long level) {
      this.level = level;
    }

    /**
     * Sets the names.
     *
     * @param names the new names
     */
    public void setNames(final List<String> names) {
      this.names = names;
    }
  }

  /**
   * XPathPatterns.
   */
  public class XPathPatterns extends IBMWatsonGenericModel {
    private List<String> xpaths;
    /**
     * Gets the xpaths.
     *
     * @return the xpaths
     */
    public List<String> getXpaths() {
      return xpaths;
    }

    /**
     * Sets the xpaths.
     *
     * @param xpaths the new xpaths
     */
    public void setXpaths(final List<String> xpaths) {
      this.xpaths = xpaths;
    }
  }

}
