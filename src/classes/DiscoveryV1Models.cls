public class DiscoveryV1Models {
  /**
   * The addDocument options.
   */
  public class AddDocumentOptions extends IBMWatsonGenericModel {
    private String environmentId;
    private String collectionId;
    private String file; // Was File, changed to compile correctly
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
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file
     */
    public String file() { // Was File, changed to compile correctly
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
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      fileContentType = builder.fileContentType;
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
    private String environmentId;
    private String collectionId;
    private String file; // Was File, changed to compile correctly
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
    public AddDocumentOptionsBuilder file(String file) { // Was File, changed to compile correctly
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
  }

  /**
   * The addTrainingData options.
   */
  public class AddTrainingDataOptions extends IBMWatsonGenericModel {
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
  }

  /**
   * AggregationResult.
   */
  public class AggregationResult extends IBMWatsonGenericModel {
    private String key;
    private Long matchingResults;
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
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    public Long getMatchingResults() {
      return matchingResults;
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
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matchingResults = matchingResults;
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
    private String collectionId;
    private String name;
    private String description;
    private Datetime created;
    private Datetime updated;
    private String status;
    private String configurationId;
    private String language;
    private DocumentCounts documentCounts;
    private CollectionDiskUsage diskUsage;
    private TrainingStatus trainingStatus;
    /**
     * Gets the collectionId.
     *
     * The unique identifier of the collection.
     *
     * @return the collectionId
     */
    public String getCollectionId() {
      return collectionId;
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
     * Gets the configurationId.
     *
     * The unique identifier of the collection's configuration.
     *
     * @return the configurationId
     */
    public String getConfigurationId() {
      return configurationId;
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
     * Gets the documentCounts.
     *
     * The object providing information about the documents in the collection. Present only when retrieving details of a collection.
     *
     * @return the documentCounts
     */
    public DocumentCounts getDocumentCounts() {
      return documentCounts;
    }
    /**
     * Gets the diskUsage.
     *
     * The object providing information about the disk usage of the collection. Present only when retrieving details of a collection.
     *
     * @return the diskUsage
     */
    public CollectionDiskUsage getDiskUsage() {
      return diskUsage;
    }
    /**
     * Gets the trainingStatus.
     *
     * Provides information about the status of relevance training for collection.
     *
     * @return the trainingStatus
     */
    public TrainingStatus getTrainingStatus() {
      return trainingStatus;
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
     * Sets the configurationId.
     *
     * @param configurationId the new configurationId
     */
    public void setConfigurationId(final String configurationId) {
      this.configurationId = configurationId;
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
     * Sets the documentCounts.
     *
     * @param documentCounts the new documentCounts
     */
    public void setDocumentCounts(final DocumentCounts documentCounts) {
      this.documentCounts = documentCounts;
    }

    /**
     * Sets the diskUsage.
     *
     * @param diskUsage the new diskUsage
     */
    public void setDiskUsage(final CollectionDiskUsage diskUsage) {
      this.diskUsage = diskUsage;
    }

    /**
     * Sets the trainingStatus.
     *
     * @param trainingStatus the new trainingStatus
     */
    public void setTrainingStatus(final TrainingStatus trainingStatus) {
      this.trainingStatus = trainingStatus;
    }
  }

  /**
   * Summary of the disk usage statistics for this collection.
   */
  public class CollectionDiskUsage extends IBMWatsonGenericModel {
    private Long usedBytes;
    /**
     * Gets the usedBytes.
     *
     * Number of bytes used by the collection.
     *
     * @return the usedBytes
     */
    public Long getUsedBytes() {
      return usedBytes;
    }
  }

  /**
   * A custom configuration for the environment.
   */
  public class Configuration extends IBMWatsonGenericModel {
    private String configurationId;
    private String name;
    private Datetime created;
    private Datetime updated;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
    /**
     * Gets the configurationId.
     *
     * The unique identifier of the configuration.
     *
     * @return the configurationId
     */
    public String getConfigurationId() {
      return configurationId;
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
    private List<NormalizationOperation> jsonNormalizations;
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
     * Gets the jsonNormalizations.
     *
     * Defines operations that can be used to transform the final output JSON into a normalized form. Operations are executed in the order that they appear in the array.
     *
     * @return the jsonNormalizations
     */
    public List<NormalizationOperation> getJsonNormalizations() {
      return jsonNormalizations;
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
     * Sets the jsonNormalizations.
     *
     * @param jsonNormalizations the new jsonNormalizations
     */
    public void setJsonNormalizations(final List<NormalizationOperation> jsonNormalizations) {
      this.jsonNormalizations = jsonNormalizations;
    }
  }

  /**
   * The createCollection options.
   */
  public class CreateCollectionOptions extends IBMWatsonGenericModel {
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
  }

  /**
   * The createConfiguration options.
   */
  public class CreateConfigurationOptions extends IBMWatsonGenericModel {
    private String environmentId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
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
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
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
    private String environmentId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;

    private CreateConfigurationOptionsBuilder(CreateConfigurationOptions createConfigurationOptions) {
      environmentId = createConfigurationOptions.environmentId;
      name = createConfigurationOptions.name;
      description = createConfigurationOptions.description;
      conversions = createConfigurationOptions.conversions;
      enrichments = createConfigurationOptions.enrichments;
      normalizations = createConfigurationOptions.normalizations;
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
     * Adds an enrichment to enrichments.
     *
     * @param enrichment the new enrichment
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addEnrichment(Enrichment enrichment) {
      IBMWatsonValidator.notNull(enrichment, 'enrichment cannot be null');
      if (this.enrichments == null) {
        this.enrichments = new List<Enrichment>();
      }
      this.enrichments.add(enrichment);
      return this;
    }

    /**
     * Adds an normalization to normalizations.
     *
     * @param normalization the new normalization
     * @return the CreateConfigurationOptions builder
     */
    public CreateConfigurationOptionsBuilder addNormalization(NormalizationOperation normalization) {
      IBMWatsonValidator.notNull(normalization, 'normalization cannot be null');
      if (this.normalizations == null) {
        this.normalizations = new List<NormalizationOperation>();
      }
      this.normalizations.add(normalization);
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

    private CreateEnvironmentOptionsBuilder(CreateEnvironmentOptions createEnvironmentOptions) {
      name = createEnvironmentOptions.name;
      description = createEnvironmentOptions.description;
      size = createEnvironmentOptions.size;
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
    public CreateEnvironmentOptionsBuilder size(long size) {
      this.size = size;
      return this;
    }
  }

  /**
   * The createTrainingExample options.
   */
  public class CreateTrainingExampleOptions extends IBMWatsonGenericModel {
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
    public CreateTrainingExampleOptionsBuilder relevance(long relevance) {
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
  }

  /**
   * The deleteAllTrainingData options.
   */
  public class DeleteAllTrainingDataOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;

    private DeleteAllTrainingDataOptionsBuilder(DeleteAllTrainingDataOptions deleteAllTrainingDataOptions) {
      environmentId = deleteAllTrainingDataOptions.environmentId;
      collectionId = deleteAllTrainingDataOptions.collectionId;
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
  }

  /**
   * The deleteCollection options.
   */
  public class DeleteCollectionOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;

    private DeleteCollectionOptionsBuilder(DeleteCollectionOptions deleteCollectionOptions) {
      environmentId = deleteCollectionOptions.environmentId;
      collectionId = deleteCollectionOptions.collectionId;
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
  }

  /**
   * The deleteConfiguration options.
   */
  public class DeleteConfigurationOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String configurationId;

    private DeleteConfigurationOptionsBuilder(DeleteConfigurationOptions deleteConfigurationOptions) {
      environmentId = deleteConfigurationOptions.environmentId;
      configurationId = deleteConfigurationOptions.configurationId;
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
  }

  /**
   * The deleteDocument options.
   */
  public class DeleteDocumentOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;
    private String documentId;

    private DeleteDocumentOptionsBuilder(DeleteDocumentOptions deleteDocumentOptions) {
      environmentId = deleteDocumentOptions.environmentId;
      collectionId = deleteDocumentOptions.collectionId;
      documentId = deleteDocumentOptions.documentId;
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
  }

  /**
   * The deleteEnvironment options.
   */
  public class DeleteEnvironmentOptions extends IBMWatsonGenericModel {
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
    private String environmentId;

    private DeleteEnvironmentOptionsBuilder(DeleteEnvironmentOptions deleteEnvironmentOptions) {
      environmentId = deleteEnvironmentOptions.environmentId;
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
  }

  /**
   * The deleteTrainingData options.
   */
  public class DeleteTrainingDataOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;
    private String queryId;

    private DeleteTrainingDataOptionsBuilder(DeleteTrainingDataOptions deleteTrainingDataOptions) {
      environmentId = deleteTrainingDataOptions.environmentId;
      collectionId = deleteTrainingDataOptions.collectionId;
      queryId = deleteTrainingDataOptions.queryId;
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
  }

  /**
   * The deleteTrainingExample options.
   */
  public class DeleteTrainingExampleOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;

    private DeleteTrainingExampleOptionsBuilder(DeleteTrainingExampleOptions deleteTrainingExampleOptions) {
      environmentId = deleteTrainingExampleOptions.environmentId;
      collectionId = deleteTrainingExampleOptions.collectionId;
      queryId = deleteTrainingExampleOptions.queryId;
      exampleId = deleteTrainingExampleOptions.exampleId;
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
  }

  /**
   * Summary of the disk usage statistics for the environment.
   */
  public class DiskUsage extends IBMWatsonGenericModel {
    private Long usedBytes;
    private Long maximumAllowedBytes;
    private Long totalBytes;
    private String used;
    private String total;
    private Double percentUsed;
    /**
     * Gets the usedBytes.
     *
     * Number of bytes used on the environment's disk capacity.
     *
     * @return the usedBytes
     */
    public Long getUsedBytes() {
      return usedBytes;
    }
    /**
     * Gets the maximumAllowedBytes.
     *
     * Total number of bytes available in the environment's disk capacity.
     *
     * @return the maximumAllowedBytes
     */
    public Long getMaximumAllowedBytes() {
      return maximumAllowedBytes;
    }
    /**
     * Gets the totalBytes.
     *
     * **Deprecated**: Total number of bytes available in the environment's disk capacity.
     *
     * @return the totalBytes
     */
    public Long getTotalBytes() {
      return totalBytes;
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
     * Gets the percentUsed.
     *
     * **Deprecated**: Percentage of the environment's disk capacity that is being used.
     *
     * @return the percentUsed
     */
    public Double getPercentUsed() {
      return percentUsed;
    }
  }

  /**
   * DocumentAccepted.
   */
  public class DocumentAccepted extends IBMWatsonGenericModel {
    private String documentId;
    private String status;
    private List<Notice> notices;
    /**
     * Gets the documentId.
     *
     * The unique identifier of the ingested document.
     *
     * @return the documentId
     */
    public String getDocumentId() {
      return documentId;
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
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.documentId = documentId;
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
    private Map<String, Object> snapshot;
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
    public Map<String, Object> getSnapshot() {
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
    public void setSnapshot(final Map<String, Object> snapshot) {
      this.snapshot = snapshot;
    }
  }

  /**
   * Status information about a submitted document.
   */
  public class DocumentStatus extends IBMWatsonGenericModel {
    private String documentId;
    private String configurationId;
    private Datetime created;
    private Datetime updated;
    private String status;
    private String statusDescription;
    private String filename;
    private String fileType;
    private String sha1;
    private List<Notice> notices;
    /**
     * Gets the documentId.
     *
     * The unique identifier of the document.
     *
     * @return the documentId
     */
    public String getDocumentId() {
      return documentId;
    }
    /**
     * Gets the configurationId.
     *
     * The unique identifier for the configuration.
     *
     * @return the configurationId
     */
    public String getConfigurationId() {
      return configurationId;
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
     * Gets the statusDescription.
     *
     * Description of the document status.
     *
     * @return the statusDescription
     */
    public String getStatusDescription() {
      return statusDescription;
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
     * Gets the fileType.
     *
     * The type of the original source file.
     *
     * @return the fileType
     */
    public String getFileType() {
      return fileType;
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
     * Sets the fileType.
     *
     * @param fileType the new fileType
     */
    public void setFileType(final String fileType) {
      this.fileType = fileType;
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
    private String destinationField;
    private String sourceField;
    private Boolean overwrite;
    private String enrichmentName;
    private Boolean ignoreDownstreamErrors;
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
     * Gets the destinationField.
     *
     * Field where enrichments will be stored. This field must already exist or be at most 1 level deeper than an existing field. For example, if `text` is a top-level field with no sub-fields, `text.foo` is a valid destination but `text.foo.bar` is not.
     *
     * @return the destinationField
     */
    public String getDestinationField() {
      return destinationField;
    }
    /**
     * Gets the sourceField.
     *
     * Field to be enriched.
     *
     * @return the sourceField
     */
    public String getSourceField() {
      return sourceField;
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
     * Gets the enrichmentName.
     *
     * Name of the enrichment service to call. Currently the only valid value is `alchemy_language`.
     *
     * @return the enrichmentName
     */
    public String getEnrichmentName() {
      return enrichmentName;
    }
    /**
     * Gets the ignoreDownstreamErrors.
     *
     * If true, then most errors generated during the enrichment process will be treated as warnings and will not cause the document to fail processing.
     *
     * @return the ignoreDownstreamErrors
     */
    public Boolean isIgnoreDownstreamErrors() {
      return ignoreDownstreamErrors;
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
     * Sets the destinationField.
     *
     * @param destinationField the new destinationField
     */
    public void setDestinationField(final String destinationField) {
      this.destinationField = destinationField;
    }

    /**
     * Sets the sourceField.
     *
     * @param sourceField the new sourceField
     */
    public void setSourceField(final String sourceField) {
      this.sourceField = sourceField;
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
     * Sets the enrichmentName.
     *
     * @param enrichmentName the new enrichmentName
     */
    public void setEnrichmentName(final String enrichmentName) {
      this.enrichmentName = enrichmentName;
    }

    /**
     * Sets the ignoreDownstreamErrors.
     *
     * @param ignoreDownstreamErrors the new ignoreDownstreamErrors
     */
    public void setIgnoreDownstreamErrors(final Boolean ignoreDownstreamErrors) {
      this.ignoreDownstreamErrors = ignoreDownstreamErrors;
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
    private Boolean showSourceText;
    private Boolean hierarchicalTypedRelations;
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
     * Gets the showSourceText.
     *
     * @return the showSourceText
     */
    public Boolean isShowSourceText() {
      return showSourceText;
    }
    /**
     * Gets the hierarchicalTypedRelations.
     *
     * @return the hierarchicalTypedRelations
     */
    public Boolean isHierarchicalTypedRelations() {
      return hierarchicalTypedRelations;
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
     * Sets the showSourceText.
     *
     * @param showSourceText the new showSourceText
     */
    public void setShowSourceText(final Boolean showSourceText) {
      this.showSourceText = showSourceText;
    }

    /**
     * Sets the hierarchicalTypedRelations.
     *
     * @param hierarchicalTypedRelations the new hierarchicalTypedRelations
     */
    public void setHierarchicalTypedRelations(final Boolean hierarchicalTypedRelations) {
      this.hierarchicalTypedRelations = hierarchicalTypedRelations;
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
    private String environmentId;
    private String name;
    private String description;
    private Datetime created;
    private Datetime updated;
    private String status;
    private Boolean readOnly;
    private Long size;
    private IndexCapacity indexCapacity;
    /**
     * Gets the environmentId.
     *
     * Unique identifier for the environment.
     *
     * @return the environmentId
     */
    public String getEnvironmentId() {
      return environmentId;
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
     * Gets the readOnly.
     *
     * If true, then the environment contains read-only collections which are maintained by IBM.
     *
     * @return the readOnly
     */
    public Boolean isReadOnly() {
      return readOnly;
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
     * Gets the indexCapacity.
     *
     * Details about the resource usage and capacity of the environment.
     *
     * @return the indexCapacity
     */
    public IndexCapacity getIndexCapacity() {
      return indexCapacity;
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
     * Sets the indexCapacity.
     *
     * @param indexCapacity the new indexCapacity
     */
    public void setIndexCapacity(final IndexCapacity indexCapacity) {
      this.indexCapacity = indexCapacity;
    }
  }

  /**
   * Summary of the document usage statistics for the environment.
   */
  public class EnvironmentDocuments extends IBMWatsonGenericModel {
    private Long indexed;
    private Long maximumAllowed;
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
     * Gets the maximumAllowed.
     *
     * Total number of documents allowed in the environment's capacity.
     *
     * @return the maximumAllowed
     */
    public Long getMaximumAllowed() {
      return maximumAllowed;
    }
  }

  /**
   * The federatedQueryNotices options.
   */
  public class FederatedQueryNoticesOptions extends IBMWatsonGenericModel {
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
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the naturalLanguageQuery
     */
    public String naturalLanguageQuery() {
      return naturalLanguageQuery;
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
     * Gets the returnFields.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public List<String> returnFields() {
      return returnFields;
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
     * Gets the xsort.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the xsort
     */
    public List<String> xsort() {
      return xsort;
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
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
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
     * Adds an returnField to returnFields.
     *
     * @param returnField the new returnField
     * @return the FederatedQueryNoticesOptions builder
     */
    public FederatedQueryNoticesOptionsBuilder addReturnField(String returnField) {
      IBMWatsonValidator.notNull(returnField, 'returnField cannot be null');
      if (this.returnFields == null) {
        this.returnFields = new List<String>();
      }
      this.returnFields.add(returnField);
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
    public FederatedQueryNoticesOptionsBuilder count(long count) {
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
    public FederatedQueryNoticesOptionsBuilder offset(long offset) {
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
  }

  /**
   * The federatedQuery options.
   */
  public class FederatedQueryOptions extends IBMWatsonGenericModel {
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
    private Boolean deduplicate;
    private String deduplicateField;
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
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
     *
     * @return the naturalLanguageQuery
     */
    public String naturalLanguageQuery() {
      return naturalLanguageQuery;
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
     * Gets the returnFields.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public List<String> returnFields() {
      return returnFields;
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
     * Gets the xsort.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the xsort
     */
    public List<String> xsort() {
      return xsort;
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
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
    }
    private FederatedQueryOptions(FederatedQueryOptionsBuilder builder) {
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
      deduplicate = builder.deduplicate;
      deduplicateField = builder.deduplicateField;
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
    private Boolean deduplicate;
    private String deduplicateField;

    private FederatedQueryOptionsBuilder(FederatedQueryOptions federatedQueryOptions) {
      environmentId = federatedQueryOptions.environmentId;
      collectionIds = federatedQueryOptions.collectionIds;
      filter = federatedQueryOptions.filter;
      query = federatedQueryOptions.query;
      naturalLanguageQuery = federatedQueryOptions.naturalLanguageQuery;
      aggregation = federatedQueryOptions.aggregation;
      count = federatedQueryOptions.count;
      returnFields = federatedQueryOptions.returnFields;
      offset = federatedQueryOptions.offset;
      xsort = federatedQueryOptions.xsort;
      highlight = federatedQueryOptions.highlight;
      deduplicate = federatedQueryOptions.deduplicate;
      deduplicateField = federatedQueryOptions.deduplicateField;
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
      this.environmentId = environmentId;
      this.collectionIds = collectionIds;
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
     * Adds an collectionIds to collectionIds.
     *
     * @param collectionIds the new collectionIds
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addCollectionIds(String collectionIds) {
      IBMWatsonValidator.notNull(collectionIds, 'collectionIds cannot be null');
      if (this.collectionIds == null) {
        this.collectionIds = new List<String>();
      }
      this.collectionIds.add(collectionIds);
      return this;
    }

    /**
     * Adds an returnField to returnFields.
     *
     * @param returnField the new returnField
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addReturnField(String returnField) {
      IBMWatsonValidator.notNull(returnField, 'returnField cannot be null');
      if (this.returnFields == null) {
        this.returnFields = new List<String>();
      }
      this.returnFields.add(returnField);
      return this;
    }

    /**
     * Adds an xsort to xsort.
     *
     * @param xsort the new xsort
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder addXsort(String xsort) {
      IBMWatsonValidator.notNull(xsort, 'xsort cannot be null');
      if (this.xsort == null) {
        this.xsort = new List<String>();
      }
      this.xsort.add(xsort);
      return this;
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
     * Set the collectionIds.
     * Existing collectionIds will be replaced.
     *
     * @param collectionIds the collectionIds
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder collectionIds(List<String> collectionIds) {
      this.collectionIds = collectionIds;
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
    public FederatedQueryOptionsBuilder count(long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the returnFields.
     * Existing returnFields will be replaced.
     *
     * @param returnFields the returnFields
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder returnFields(List<String> returnFields) {
      this.returnFields = returnFields;
      return this;
    }

    /**
     * Set the offset.
     *
     * @param offset the offset
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder offset(long offset) {
      this.offset = offset;
      return this;
    }

    /**
     * Set the xsort.
     * Existing xsort will be replaced.
     *
     * @param xsort the xsort
     * @return the FederatedQueryOptions builder
     */
    public FederatedQueryOptionsBuilder xsort(List<String> xsort) {
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
  }

  /**
   * Field.
   */
  public class Field extends IBMWatsonGenericModel {
    private String fieldName;
    private String fieldType;
    /**
     * Gets the fieldName.
     *
     * The name of the field.
     *
     * @return the fieldName
     */
    public String getFieldName() {
      return fieldName;
    }
    /**
     * Gets the fieldType.
     *
     * The type of the field.
     *
     * @return the fieldType
     */
    public String getFieldType() {
      return fieldType;
    }
  }

  /**
   * FontSetting.
   */
  public class FontSetting extends IBMWatsonGenericModel {
    private Long level;
    private Long minSize;
    private Long maxSize;
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
     * Gets the minSize.
     *
     * @return the minSize
     */
    public Long getMinSize() {
      return minSize;
    }
    /**
     * Gets the maxSize.
     *
     * @return the maxSize
     */
    public Long getMaxSize() {
      return maxSize;
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
     * Sets the minSize.
     *
     * @param minSize the new minSize
     */
    public void setMinSize(final long minSize) {
      this.minSize = minSize;
    }

    /**
     * Sets the maxSize.
     *
     * @param maxSize the new maxSize
     */
    public void setMaxSize(final long maxSize) {
      this.maxSize = maxSize;
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
    private String environmentId;
    private String collectionId;

    private GetCollectionOptionsBuilder(GetCollectionOptions getCollectionOptions) {
      environmentId = getCollectionOptions.environmentId;
      collectionId = getCollectionOptions.collectionId;
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
  }

  /**
   * The getConfiguration options.
   */
  public class GetConfigurationOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String configurationId;

    private GetConfigurationOptionsBuilder(GetConfigurationOptions getConfigurationOptions) {
      environmentId = getConfigurationOptions.environmentId;
      configurationId = getConfigurationOptions.configurationId;
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
  }

  /**
   * The getDocumentStatus options.
   */
  public class GetDocumentStatusOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;
    private String documentId;

    private GetDocumentStatusOptionsBuilder(GetDocumentStatusOptions getDocumentStatusOptions) {
      environmentId = getDocumentStatusOptions.environmentId;
      collectionId = getDocumentStatusOptions.collectionId;
      documentId = getDocumentStatusOptions.documentId;
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
  }

  /**
   * The getEnvironment options.
   */
  public class GetEnvironmentOptions extends IBMWatsonGenericModel {
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
    private String environmentId;

    private GetEnvironmentOptionsBuilder(GetEnvironmentOptions getEnvironmentOptions) {
      environmentId = getEnvironmentOptions.environmentId;
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
  }

  /**
   * The getTrainingData options.
   */
  public class GetTrainingDataOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;
    private String queryId;

    private GetTrainingDataOptionsBuilder(GetTrainingDataOptions getTrainingDataOptions) {
      environmentId = getTrainingDataOptions.environmentId;
      collectionId = getTrainingDataOptions.collectionId;
      queryId = getTrainingDataOptions.queryId;
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
  }

  /**
   * The getTrainingExample options.
   */
  public class GetTrainingExampleOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;
    private String queryId;
    private String exampleId;

    private GetTrainingExampleOptionsBuilder(GetTrainingExampleOptions getTrainingExampleOptions) {
      environmentId = getTrainingExampleOptions.environmentId;
      collectionId = getTrainingExampleOptions.collectionId;
      queryId = getTrainingExampleOptions.queryId;
      exampleId = getTrainingExampleOptions.exampleId;
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
    private List<String> excludeTagsCompletely;
    private List<String> excludeTagsKeepContent;
    private XPathPatterns keepContent;
    private XPathPatterns excludeContent;
    private List<String> keepTagAttributes;
    private List<String> excludeTagAttributes;
    /**
     * Gets the excludeTagsCompletely.
     *
     * @return the excludeTagsCompletely
     */
    public List<String> getExcludeTagsCompletely() {
      return excludeTagsCompletely;
    }
    /**
     * Gets the excludeTagsKeepContent.
     *
     * @return the excludeTagsKeepContent
     */
    public List<String> getExcludeTagsKeepContent() {
      return excludeTagsKeepContent;
    }
    /**
     * Gets the keepContent.
     *
     * @return the keepContent
     */
    public XPathPatterns getKeepContent() {
      return keepContent;
    }
    /**
     * Gets the excludeContent.
     *
     * @return the excludeContent
     */
    public XPathPatterns getExcludeContent() {
      return excludeContent;
    }
    /**
     * Gets the keepTagAttributes.
     *
     * @return the keepTagAttributes
     */
    public List<String> getKeepTagAttributes() {
      return keepTagAttributes;
    }
    /**
     * Gets the excludeTagAttributes.
     *
     * @return the excludeTagAttributes
     */
    public List<String> getExcludeTagAttributes() {
      return excludeTagAttributes;
    }

    /**
     * Sets the excludeTagsCompletely.
     *
     * @param excludeTagsCompletely the new excludeTagsCompletely
     */
    public void setExcludeTagsCompletely(final List<String> excludeTagsCompletely) {
      this.excludeTagsCompletely = excludeTagsCompletely;
    }

    /**
     * Sets the excludeTagsKeepContent.
     *
     * @param excludeTagsKeepContent the new excludeTagsKeepContent
     */
    public void setExcludeTagsKeepContent(final List<String> excludeTagsKeepContent) {
      this.excludeTagsKeepContent = excludeTagsKeepContent;
    }

    /**
     * Sets the keepContent.
     *
     * @param keepContent the new keepContent
     */
    public void setKeepContent(final XPathPatterns keepContent) {
      this.keepContent = keepContent;
    }

    /**
     * Sets the excludeContent.
     *
     * @param excludeContent the new excludeContent
     */
    public void setExcludeContent(final XPathPatterns excludeContent) {
      this.excludeContent = excludeContent;
    }

    /**
     * Sets the keepTagAttributes.
     *
     * @param keepTagAttributes the new keepTagAttributes
     */
    public void setKeepTagAttributes(final List<String> keepTagAttributes) {
      this.keepTagAttributes = keepTagAttributes;
    }

    /**
     * Sets the excludeTagAttributes.
     *
     * @param excludeTagAttributes the new excludeTagAttributes
     */
    public void setExcludeTagAttributes(final List<String> excludeTagAttributes) {
      this.excludeTagAttributes = excludeTagAttributes;
    }
  }

  /**
   * Details about the resource usage and capacity of the environment.
   */
  public class IndexCapacity extends IBMWatsonGenericModel {
    private EnvironmentDocuments documents;
    private DiskUsage diskUsage;
    private MemoryUsage memoryUsage;
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
     * Gets the diskUsage.
     *
     * Summary of the disk usage of the environment.
     *
     * @return the diskUsage
     */
    public DiskUsage getDiskUsage() {
      return diskUsage;
    }
    /**
     * Gets the memoryUsage.
     *
     * **Deprecated**: Summary of the memory usage of the environment.
     *
     * @return the memoryUsage
     */
    public MemoryUsage getMemoryUsage() {
      return memoryUsage;
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
     * Sets the diskUsage.
     *
     * @param diskUsage the new diskUsage
     */
    public void setDiskUsage(final DiskUsage diskUsage) {
      this.diskUsage = diskUsage;
    }

    /**
     * Sets the memoryUsage.
     *
     * @param memoryUsage the new memoryUsage
     */
    public void setMemoryUsage(final MemoryUsage memoryUsage) {
      this.memoryUsage = memoryUsage;
    }
  }

  /**
   * The listCollectionFields options.
   */
  public class ListCollectionFieldsOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;

    private ListCollectionFieldsOptionsBuilder(ListCollectionFieldsOptions listCollectionFieldsOptions) {
      environmentId = listCollectionFieldsOptions.environmentId;
      collectionId = listCollectionFieldsOptions.collectionId;
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
    private String environmentId;
    private String name;

    private ListCollectionsOptionsBuilder(ListCollectionsOptions listCollectionsOptions) {
      environmentId = listCollectionsOptions.environmentId;
      name = listCollectionsOptions.name;
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
    private String environmentId;
    private String name;

    private ListConfigurationsOptionsBuilder(ListConfigurationsOptions listConfigurationsOptions) {
      environmentId = listConfigurationsOptions.environmentId;
      name = listConfigurationsOptions.name;
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

    private ListEnvironmentsOptionsBuilder(ListEnvironmentsOptions listEnvironmentsOptions) {
      name = listEnvironmentsOptions.name;
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
    private String environmentId;
    private List<String> collectionIds;

    private ListFieldsOptionsBuilder(ListFieldsOptions listFieldsOptions) {
      environmentId = listFieldsOptions.environmentId;
      collectionIds = listFieldsOptions.collectionIds;
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
  }

  /**
   * The listTrainingData options.
   */
  public class ListTrainingDataOptions extends IBMWatsonGenericModel {
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
    private String environmentId;
    private String collectionId;

    private ListTrainingDataOptionsBuilder(ListTrainingDataOptions listTrainingDataOptions) {
      environmentId = listTrainingDataOptions.environmentId;
      collectionId = listTrainingDataOptions.collectionId;
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
  }

  /**
   * **Deprecated**: Summary of the memory usage statistics for this environment.
   */
  public class MemoryUsage extends IBMWatsonGenericModel {
    private Long usedBytes;
    private Long totalBytes;
    private String used;
    private String total;
    private Double percentUsed;
    /**
     * Gets the usedBytes.
     *
     * **Deprecated**: Number of bytes used in the environment's memory capacity.
     *
     * @return the usedBytes
     */
    public Long getUsedBytes() {
      return usedBytes;
    }
    /**
     * Gets the totalBytes.
     *
     * **Deprecated**: Total number of bytes available in the environment's memory capacity.
     *
     * @return the totalBytes
     */
    public Long getTotalBytes() {
      return totalBytes;
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
     * Gets the percentUsed.
     *
     * **Deprecated**: Percentage of the environment's memory capacity that is being used.
     *
     * @return the percentUsed
     */
    public Double getPercentUsed() {
      return percentUsed;
    }
  }

  /**
   * NormalizationOperation.
   */
  public class NormalizationOperation extends IBMWatsonGenericModel {
    private String operation;
    private String sourceField;
    private String destinationField;
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
     * Gets the sourceField.
     *
     * The source field for the operation.
     *
     * @return the sourceField
     */
    public String getSourceField() {
      return sourceField;
    }
    /**
     * Gets the destinationField.
     *
     * The destination field for the operation.
     *
     * @return the destinationField
     */
    public String getDestinationField() {
      return destinationField;
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
     * Sets the sourceField.
     *
     * @param sourceField the new sourceField
     */
    public void setSourceField(final String sourceField) {
      this.sourceField = sourceField;
    }

    /**
     * Sets the destinationField.
     *
     * @param destinationField the new destinationField
     */
    public void setDestinationField(final String destinationField) {
      this.destinationField = destinationField;
    }
  }

  /**
   * A notice produced for the collection.
   */
  public class Notice extends IBMWatsonGenericModel {
    private String noticeId;
    private Datetime created;
    private String documentId;
    private String queryId;
    private String severity;
    private String step;
    private String description;
    /**
     * Gets the noticeId.
     *
     * Identifies the notice. Many notices might have the same ID. This field exists so that user applications can programmatically identify a notice and take automatic corrective action.
     *
     * @return the noticeId
     */
    public String getNoticeId() {
      return noticeId;
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
     * Gets the documentId.
     *
     * Unique identifier of the document.
     *
     * @return the documentId
     */
    public String getDocumentId() {
      return documentId;
    }
    /**
     * Gets the queryId.
     *
     * Unique identifier of the query used for relevance training.
     *
     * @return the queryId
     */
    public String getQueryId() {
      return queryId;
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
    private String xtype;
    private String field;
    private List<AggregationResult> results;
    private String match;
    private Long matchingResults;
    private List<QueryAggregation> aggregations;
    /**
     * Gets the xtype.
     *
     * The type of aggregation command used. For example: term, filter, max, min, etc.
     *
     * @return the xtype
     */
    public String getXtype() {
      return xtype;
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
     * Gets the matchingResults.
     *
     * Number of matching results.
     *
     * @return the matchingResults
     */
    public Long getMatchingResults() {
      return matchingResults;
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
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.xtype = xtype;
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
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matchingResults = matchingResults;
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
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
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
     * Gets the returnFields.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public List<String> returnFields() {
      return returnFields;
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
     * Gets the xsort.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the xsort
     */
    public List<String> xsort() {
      return xsort;
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
     * Gets the passagesFields.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all top-level fields are included.
     *
     * @return the passagesFields
     */
    public List<String> passagesFields() {
      return passagesFields;
    }
    /**
     * Gets the passagesCount.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found. The default is `10`. The maximum is `100`.
     *
     * @return the passagesCount
     */
    public Long passagesCount() {
      return passagesCount;
    }
    /**
     * Gets the passagesCharacters.
     *
     * The approximate number of characters that any one passage will have. The default is `400`. The minimum is `50`. The maximum is `2000`.
     *
     * @return the passagesCharacters
     */
    public Long passagesCharacters() {
      return passagesCharacters;
    }
    /**
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
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
     * Adds an returnField to returnFields.
     *
     * @param returnField the new returnField
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder addReturnField(String returnField) {
      IBMWatsonValidator.notNull(returnField, 'returnField cannot be null');
      if (this.returnFields == null) {
        this.returnFields = new List<String>();
      }
      this.returnFields.add(returnField);
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
    public QueryNoticesOptionsBuilder count(long count) {
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
    public QueryNoticesOptionsBuilder offset(long offset) {
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
    public QueryNoticesOptionsBuilder passagesCount(long passagesCount) {
      this.passagesCount = passagesCount;
      return this;
    }

    /**
     * Set the passagesCharacters.
     *
     * @param passagesCharacters the passagesCharacters
     * @return the QueryNoticesOptions builder
     */
    public QueryNoticesOptionsBuilder passagesCharacters(long passagesCharacters) {
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
  }

  /**
   * QueryNoticesResponse.
   */
  public class QueryNoticesResponse extends IBMWatsonGenericModel {
    private Long matchingResults;
    private List<QueryNoticesResult> results;
    private List<QueryAggregation> aggregations;
    private List<QueryPassages> passages;
    private Long duplicatesRemoved;
    /**
     * Gets the matchingResults.
     *
     * @return the matchingResults
     */
    public Long getMatchingResults() {
      return matchingResults;
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
     * Gets the duplicatesRemoved.
     *
     * @return the duplicatesRemoved
     */
    public Long getDuplicatesRemoved() {
      return duplicatesRemoved;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matchingResults = matchingResults;
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
     * Sets the duplicatesRemoved.
     *
     * @param duplicatesRemoved the new duplicatesRemoved
     */
    public void setDuplicatesRemoved(final long duplicatesRemoved) {
      this.duplicatesRemoved = duplicatesRemoved;
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
    public Map<String, Object> getMetadata() {
      return (Map<String, Object>)JSON.deserialize(JSON.serialize(this.get('metadata')), Map<String, Object>.class);
    }

    /**
     * Gets the collectionId.
     *
     * @return the collectionId
     */
    public String getCollectionId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('collectionId')), String.class);
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
    public void setMetadata(final Map<String, Object> metadata) {
      this.put('metadata', metadata);
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.put('collectionId', collectionId);
    }
  }

  /**
   * The query options.
   */
  public class QueryOptions extends IBMWatsonGenericModel {
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
    private Boolean deduplicate;
    private String deduplicateField;
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
     * Gets the naturalLanguageQuery.
     *
     * A natural language query that returns relevant documents by utilizing training data and natural language understanding. You cannot use `natural_language_query` and `query` at the same time.
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
     * Gets the returnFields.
     *
     * A comma separated list of the portion of the document hierarchy to return.
     *
     * @return the returnFields
     */
    public List<String> returnFields() {
      return returnFields;
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
     * Gets the xsort.
     *
     * A comma separated list of fields in the document to sort on. You can optionally specify a sort direction by prefixing the field with `-` for descending or `+` for ascending. Ascending is the default sort direction if no prefix is specified.
     *
     * @return the xsort
     */
    public List<String> xsort() {
      return xsort;
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
     * Gets the passagesFields.
     *
     * A comma-separated list of fields that passages are drawn from. If this parameter not specified, then all top-level fields are included.
     *
     * @return the passagesFields
     */
    public List<String> passagesFields() {
      return passagesFields;
    }
    /**
     * Gets the passagesCount.
     *
     * The maximum number of passages to return. The search returns fewer passages if the requested total is not found. The default is `10`. The maximum is `100`.
     *
     * @return the passagesCount
     */
    public Long passagesCount() {
      return passagesCount;
    }
    /**
     * Gets the passagesCharacters.
     *
     * The approximate number of characters that any one passage will have. The default is `400`. The minimum is `50`. The maximum is `2000`.
     *
     * @return the passagesCharacters
     */
    public Long passagesCharacters() {
      return passagesCharacters;
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
     * Gets the deduplicateField.
     *
     * When specified, duplicate results based on the field specified are removed from the returned results. Duplicate comparison is limited to the current query only, `offset` is not considered. This parameter is currently Beta functionality.
     *
     * @return the deduplicateField
     */
    public String deduplicateField() {
      return deduplicateField;
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
    private Boolean deduplicate;
    private String deduplicateField;

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
     * Adds an returnField to returnFields.
     *
     * @param returnField the new returnField
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addReturnField(String returnField) {
      IBMWatsonValidator.notNull(returnField, 'returnField cannot be null');
      if (this.returnFields == null) {
        this.returnFields = new List<String>();
      }
      this.returnFields.add(returnField);
      return this;
    }

    /**
     * Adds an xsort to xsort.
     *
     * @param xsort the new xsort
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addXsort(String xsort) {
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
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder addPassagesFields(String passagesFields) {
      IBMWatsonValidator.notNull(passagesFields, 'passagesFields cannot be null');
      if (this.passagesFields == null) {
        this.passagesFields = new List<String>();
      }
      this.passagesFields.add(passagesFields);
      return this;
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
    public QueryOptionsBuilder count(long count) {
      this.count = count;
      return this;
    }

    /**
     * Set the returnFields.
     * Existing returnFields will be replaced.
     *
     * @param returnFields the returnFields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder returnFields(List<String> returnFields) {
      this.returnFields = returnFields;
      return this;
    }

    /**
     * Set the offset.
     *
     * @param offset the offset
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder offset(long offset) {
      this.offset = offset;
      return this;
    }

    /**
     * Set the xsort.
     * Existing xsort will be replaced.
     *
     * @param xsort the xsort
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder xsort(List<String> xsort) {
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
     * Existing passagesFields will be replaced.
     *
     * @param passagesFields the passagesFields
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesFields(List<String> passagesFields) {
      this.passagesFields = passagesFields;
      return this;
    }

    /**
     * Set the passagesCount.
     *
     * @param passagesCount the passagesCount
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCount(long passagesCount) {
      this.passagesCount = passagesCount;
      return this;
    }

    /**
     * Set the passagesCharacters.
     *
     * @param passagesCharacters the passagesCharacters
     * @return the QueryOptions builder
     */
    public QueryOptionsBuilder passagesCharacters(long passagesCharacters) {
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
  }

  /**
   * QueryPassages.
   */
  public class QueryPassages extends IBMWatsonGenericModel {
    private String documentId;
    private Double passageScore;
    private String passageText;
    private Double startOffset;
    private Double endOffset;
    private String field;
    /**
     * Gets the documentId.
     *
     * The unique identifier of the document from which the passage has been extracted.
     *
     * @return the documentId
     */
    public String getDocumentId() {
      return documentId;
    }
    /**
     * Gets the passageScore.
     *
     * The confidence score of the passages's analysis. A higher score indicates greater confidence.
     *
     * @return the passageScore
     */
    public Double getPassageScore() {
      return passageScore;
    }
    /**
     * Gets the passageText.
     *
     * The content of the extracted passage.
     *
     * @return the passageText
     */
    public String getPassageText() {
      return passageText;
    }
    /**
     * Gets the startOffset.
     *
     * The position of the first character of the extracted passage in the originating field.
     *
     * @return the startOffset
     */
    public Double getStartOffset() {
      return startOffset;
    }
    /**
     * Gets the endOffset.
     *
     * The position of the last character of the extracted passage in the originating field.
     *
     * @return the endOffset
     */
    public Double getEndOffset() {
      return endOffset;
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
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.documentId = documentId;
    }

    /**
     * Sets the passageScore.
     *
     * @param passageScore the new passageScore
     */
    public void setPassageScore(final Double passageScore) {
      this.passageScore = passageScore;
    }

    /**
     * Sets the passageText.
     *
     * @param passageText the new passageText
     */
    public void setPassageText(final String passageText) {
      this.passageText = passageText;
    }

    /**
     * Sets the startOffset.
     *
     * @param startOffset the new startOffset
     */
    public void setStartOffset(final Double startOffset) {
      this.startOffset = startOffset;
    }

    /**
     * Sets the endOffset.
     *
     * @param endOffset the new endOffset
     */
    public void setEndOffset(final Double endOffset) {
      this.endOffset = endOffset;
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
    private Long matchingResults;
    private List<QueryResult> results;
    private List<QueryAggregation> aggregations;
    private List<QueryPassages> passages;
    private Long duplicatesRemoved;
    /**
     * Gets the matchingResults.
     *
     * @return the matchingResults
     */
    public Long getMatchingResults() {
      return matchingResults;
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
     * Gets the duplicatesRemoved.
     *
     * @return the duplicatesRemoved
     */
    public Long getDuplicatesRemoved() {
      return duplicatesRemoved;
    }

    /**
     * Sets the matchingResults.
     *
     * @param matchingResults the new matchingResults
     */
    public void setMatchingResults(final long matchingResults) {
      this.matchingResults = matchingResults;
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
     * Sets the duplicatesRemoved.
     *
     * @param duplicatesRemoved the new duplicatesRemoved
     */
    public void setDuplicatesRemoved(final long duplicatesRemoved) {
      this.duplicatesRemoved = duplicatesRemoved;
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
    public Map<String, Object> getMetadata() {
      return (Map<String, Object>)JSON.deserialize(JSON.serialize(this.get('metadata')), Map<String, Object>.class);
    }

    /**
     * Gets the collectionId.
     *
     * @return the collectionId
     */
    public String getCollectionId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('collectionId')), String.class);
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
    public void setMetadata(final Map<String, Object> metadata) {
      this.put('metadata', metadata);
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.put('collectionId', collectionId);
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
    private String environmentId;
    private String configuration;
    private String step;
    private String configurationId;
    private String file; // Was File, changed to compile correctly
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
     * Gets the configurationId.
     *
     * The ID of the configuration to use to process the document. If the `configuration` form part is also provided (both are present at the same time), then request will be rejected.
     *
     * @return the configurationId
     */
    public String configurationId() {
      return configurationId;
    }
    /**
     * Gets the file.
     *
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file
     */
    public String file() { // Was File, changed to compile correctly
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
      environmentId = builder.environmentId;
      configuration = builder.configuration;
      step = builder.step;
      configurationId = builder.configurationId;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      fileContentType = builder.fileContentType;
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
    private String environmentId;
    private String configuration;
    private String step;
    private String configurationId;
    private String file; // Was File, changed to compile correctly
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
    public TestConfigurationInEnvironmentOptionsBuilder filename(String filename) { // Was File, changed to compile correctly
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
  }

  /**
   * TestDocument.
   */
  public class TestDocument extends IBMWatsonGenericModel {
    private String configurationId;
    private String status;
    private Long enrichedFieldUnits;
    private String originalMediaType;
    private List<DocumentSnapshot> snapshots;
    private List<Notice> notices;
    /**
     * Gets the configurationId.
     *
     * The unique identifier for the configuration.
     *
     * @return the configurationId
     */
    public String getConfigurationId() {
      return configurationId;
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
     * Gets the enrichedFieldUnits.
     *
     * The number of 10-kB chunks of field data that were enriched. This can be used to estimate the cost of running a real ingestion.
     *
     * @return the enrichedFieldUnits
     */
    public Long getEnrichedFieldUnits() {
      return enrichedFieldUnits;
    }
    /**
     * Gets the originalMediaType.
     *
     * Format of the test document.
     *
     * @return the originalMediaType
     */
    public String getOriginalMediaType() {
      return originalMediaType;
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
    private String environmentId;
    private String collectionId;
    private List<TrainingQuery> queries;
    /**
     * Gets the environmentId.
     *
     * @return the environmentId
     */
    public String getEnvironmentId() {
      return environmentId;
    }
    /**
     * Gets the collectionId.
     *
     * @return the collectionId
     */
    public String getCollectionId() {
      return collectionId;
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
     * Sets the environmentId.
     *
     * @param environmentId the new environmentId
     */
    public void setEnvironmentId(final String environmentId) {
      this.environmentId = environmentId;
    }

    /**
     * Sets the collectionId.
     *
     * @param collectionId the new collectionId
     */
    public void setCollectionId(final String collectionId) {
      this.collectionId = collectionId;
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
    private String documentId;
    private String crossReference;
    private Long relevance;
    /**
     * Gets the documentId.
     *
     * @return the documentId
     */
    public String getDocumentId() {
      return documentId;
    }
    /**
     * Gets the crossReference.
     *
     * @return the crossReference
     */
    public String getCrossReference() {
      return crossReference;
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
     * Sets the documentId.
     *
     * @param documentId the new documentId
     */
    public void setDocumentId(final String documentId) {
      this.documentId = documentId;
    }

    /**
     * Sets the crossReference.
     *
     * @param crossReference the new crossReference
     */
    public void setCrossReference(final String crossReference) {
      this.crossReference = crossReference;
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
    private String queryId;
    private String naturalLanguageQuery;
    private String filter;
    private List<TrainingExample> examples;
    /**
     * Gets the queryId.
     *
     * @return the queryId
     */
    public String getQueryId() {
      return queryId;
    }
    /**
     * Gets the naturalLanguageQuery.
     *
     * @return the naturalLanguageQuery
     */
    public String getNaturalLanguageQuery() {
      return naturalLanguageQuery;
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
     * Sets the queryId.
     *
     * @param queryId the new queryId
     */
    public void setQueryId(final String queryId) {
      this.queryId = queryId;
    }

    /**
     * Sets the naturalLanguageQuery.
     *
     * @param naturalLanguageQuery the new naturalLanguageQuery
     */
    public void setNaturalLanguageQuery(final String naturalLanguageQuery) {
      this.naturalLanguageQuery = naturalLanguageQuery;
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
    private Long totalExamples;
    private Boolean available;
    private Boolean processing;
    private Boolean minimumQueriesAdded;
    private Boolean minimumExamplesAdded;
    private Boolean sufficientLabelDiversity;
    private Long notices;
    private Datetime successfullyTrained;
    private Datetime dataUpdated;
    /**
     * Gets the totalExamples.
     *
     * @return the totalExamples
     */
    public Long getTotalExamples() {
      return totalExamples;
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
     * Gets the minimumQueriesAdded.
     *
     * @return the minimumQueriesAdded
     */
    public Boolean isMinimumQueriesAdded() {
      return minimumQueriesAdded;
    }
    /**
     * Gets the minimumExamplesAdded.
     *
     * @return the minimumExamplesAdded
     */
    public Boolean isMinimumExamplesAdded() {
      return minimumExamplesAdded;
    }
    /**
     * Gets the sufficientLabelDiversity.
     *
     * @return the sufficientLabelDiversity
     */
    public Boolean isSufficientLabelDiversity() {
      return sufficientLabelDiversity;
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
     * Gets the successfullyTrained.
     *
     * @return the successfullyTrained
     */
    public Datetime getSuccessfullyTrained() {
      return successfullyTrained;
    }
    /**
     * Gets the dataUpdated.
     *
     * @return the dataUpdated
     */
    public Datetime getDataUpdated() {
      return dataUpdated;
    }

    /**
     * Sets the totalExamples.
     *
     * @param totalExamples the new totalExamples
     */
    public void setTotalExamples(final long totalExamples) {
      this.totalExamples = totalExamples;
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
     * Sets the minimumQueriesAdded.
     *
     * @param minimumQueriesAdded the new minimumQueriesAdded
     */
    public void setMinimumQueriesAdded(final Boolean minimumQueriesAdded) {
      this.minimumQueriesAdded = minimumQueriesAdded;
    }

    /**
     * Sets the minimumExamplesAdded.
     *
     * @param minimumExamplesAdded the new minimumExamplesAdded
     */
    public void setMinimumExamplesAdded(final Boolean minimumExamplesAdded) {
      this.minimumExamplesAdded = minimumExamplesAdded;
    }

    /**
     * Sets the sufficientLabelDiversity.
     *
     * @param sufficientLabelDiversity the new sufficientLabelDiversity
     */
    public void setSufficientLabelDiversity(final Boolean sufficientLabelDiversity) {
      this.sufficientLabelDiversity = sufficientLabelDiversity;
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
     * Sets the successfullyTrained.
     *
     * @param successfullyTrained the new successfullyTrained
     */
    public void setSuccessfullyTrained(final Datetime successfullyTrained) {
      this.successfullyTrained = successfullyTrained;
    }

    /**
     * Sets the dataUpdated.
     *
     * @param dataUpdated the new dataUpdated
     */
    public void setDataUpdated(final Datetime dataUpdated) {
      this.dataUpdated = dataUpdated;
    }
  }

  /**
   * The updateCollection options.
   */
  public class UpdateCollectionOptions extends IBMWatsonGenericModel {
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
  }

  /**
   * The updateConfiguration options.
   */
  public class UpdateConfigurationOptions extends IBMWatsonGenericModel {
    private String environmentId;
    private String configurationId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;
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
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.configurationId, 'configurationId cannot be empty');
      environmentId = builder.environmentId;
      configurationId = builder.configurationId;
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
    private String environmentId;
    private String configurationId;
    private String name;
    private String description;
    private Conversions conversions;
    private List<Enrichment> enrichments;
    private List<NormalizationOperation> normalizations;

    private UpdateConfigurationOptionsBuilder(UpdateConfigurationOptions updateConfigurationOptions) {
      environmentId = updateConfigurationOptions.environmentId;
      configurationId = updateConfigurationOptions.configurationId;
      name = updateConfigurationOptions.name;
      description = updateConfigurationOptions.description;
      conversions = updateConfigurationOptions.conversions;
      enrichments = updateConfigurationOptions.enrichments;
      normalizations = updateConfigurationOptions.normalizations;
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
     * Adds an enrichment to enrichments.
     *
     * @param enrichment the new enrichment
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addEnrichment(Enrichment enrichment) {
      IBMWatsonValidator.notNull(enrichment, 'enrichment cannot be null');
      if (this.enrichments == null) {
        this.enrichments = new List<Enrichment>();
      }
      this.enrichments.add(enrichment);
      return this;
    }

    /**
     * Adds an normalization to normalizations.
     *
     * @param normalization the new normalization
     * @return the UpdateConfigurationOptions builder
     */
    public UpdateConfigurationOptionsBuilder addNormalization(NormalizationOperation normalization) {
      IBMWatsonValidator.notNull(normalization, 'normalization cannot be null');
      if (this.normalizations == null) {
        this.normalizations = new List<NormalizationOperation>();
      }
      this.normalizations.add(normalization);
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
    private String environmentId;
    private String collectionId;
    private String documentId;
    private String file; // Was File, changed to compile correctly
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
     * The content of the document to ingest. The maximum supported file size is 50 megabytes. Files larger than 50 megabytes is rejected.
     *
     * @return the file
     */
    public String file() { // Was File, changed to compile correctly
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
      environmentId = builder.environmentId;
      collectionId = builder.collectionId;
      documentId = builder.documentId;
      file = builder.file;
      filename = builder.filename;
      metadata = builder.metadata;
      fileContentType = builder.fileContentType;
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
    private String environmentId;
    private String collectionId;
    private String documentId;
    private String file; // Was File, changed to compile correctly
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
    public UpdateDocumentOptionsBuilder file(String file) { // Was File, changed to compile correctly
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
  }

  /**
   * The updateEnvironment options.
   */
  public class UpdateEnvironmentOptions extends IBMWatsonGenericModel {
    private String environmentId;
    private String name;
    private String description;
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
    private UpdateEnvironmentOptions(UpdateEnvironmentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.environmentId, 'environmentId cannot be empty');
      environmentId = builder.environmentId;
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
    private String environmentId;
    private String name;
    private String description;

    private UpdateEnvironmentOptionsBuilder(UpdateEnvironmentOptions updateEnvironmentOptions) {
      environmentId = updateEnvironmentOptions.environmentId;
      name = updateEnvironmentOptions.name;
      description = updateEnvironmentOptions.description;
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
  }

  /**
   * The updateTrainingExample options.
   */
  public class UpdateTrainingExampleOptions extends IBMWatsonGenericModel {
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
    public UpdateTrainingExampleOptionsBuilder relevance(long relevance) {
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
