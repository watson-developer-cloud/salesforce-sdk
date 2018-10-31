public class IBMNaturalLanguageUnderstandingV1Models {
  /**
   * Results of the analysis, organized by feature.
   */
  public class AnalysisResults extends IBMWatsonResponseModel {
    private String language_serialized_name;
    private String analyzed_text_serialized_name;
    private String retrieved_url_serialized_name;
    private Usage usage_serialized_name;
    private List<ConceptsResult> concepts_serialized_name;
    private List<EntitiesResult> entities_serialized_name;
    private List<KeywordsResult> keywords_serialized_name;
    private List<CategoriesResult> categories_serialized_name;
    private EmotionResult emotion_serialized_name;
    private MetadataResult metadata_serialized_name;
    private List<RelationsResult> relations_serialized_name;
    private List<SemanticRolesResult> semantic_roles_serialized_name;
    private SentimentResult sentiment_serialized_name;
 
    /**
     * Gets the language.
     *
     * Language used to analyze the text.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the analyzedText.
     *
     * Text that was used in the analysis.
     *
     * @return the analyzedText
     */
    @AuraEnabled
    public String getAnalyzedText() {
      return analyzed_text_serialized_name;
    }
 
    /**
     * Gets the retrievedUrl.
     *
     * URL that was used to retrieve HTML content.
     *
     * @return the retrievedUrl
     */
    @AuraEnabled
    public String getRetrievedUrl() {
      return retrieved_url_serialized_name;
    }
 
    /**
     * Gets the usage.
     *
     * API usage information for the request.
     *
     * @return the usage
     */
    @AuraEnabled
    public Usage getUsage() {
      return usage_serialized_name;
    }
 
    /**
     * Gets the concepts.
     *
     * The general concepts referenced or alluded to in the specified content.
     *
     * @return the concepts
     */
    @AuraEnabled
    public List<ConceptsResult> getConcepts() {
      return concepts_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * The important entities in the specified content.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<EntitiesResult> getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the keywords.
     *
     * The important keywords in content organized by relevance.
     *
     * @return the keywords
     */
    @AuraEnabled
    public List<KeywordsResult> getKeywords() {
      return keywords_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * The hierarchical 5-level taxonomy the content is categorized into.
     *
     * @return the categories
     */
    @AuraEnabled
    public List<CategoriesResult> getCategories() {
      return categories_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * The anger, disgust, fear, joy, or sadness conveyed by the content.
     *
     * @return the emotion
     */
    @AuraEnabled
    public EmotionResult getEmotion() {
      return emotion_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * The metadata holds author information, publication date and the title of the text/HTML content.
     *
     * @return the metadata
     */
    @AuraEnabled
    public MetadataResult getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the relations.
     *
     * The relationships between entities in the content.
     *
     * @return the relations
     */
    @AuraEnabled
    public List<RelationsResult> getRelations() {
      return relations_serialized_name;
    }
 
    /**
     * Gets the semanticRoles.
     *
     * The subjects of actions and the objects the actions act upon.
     *
     * @return the semanticRoles
     */
    @AuraEnabled
    public List<SemanticRolesResult> getSemanticRoles() {
      return semantic_roles_serialized_name;
    }
 
    /**
     * Gets the sentiment.
     *
     * The sentiment of the content.
     *
     * @return the sentiment
     */
    @AuraEnabled
    public SentimentResult getSentiment() {
      return sentiment_serialized_name;
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
     * Sets the analyzedText.
     *
     * @param analyzedText the new analyzedText
     */
    public void setAnalyzedText(final String analyzedText) {
      this.analyzed_text_serialized_name = analyzedText;
    }

    /**
     * Sets the retrievedUrl.
     *
     * @param retrievedUrl the new retrievedUrl
     */
    public void setRetrievedUrl(final String retrievedUrl) {
      this.retrieved_url_serialized_name = retrievedUrl;
    }

    /**
     * Sets the usage.
     *
     * @param usage the new usage
     */
    public void setUsage(final Usage usage) {
      this.usage_serialized_name = usage;
    }

    /**
     * Sets the concepts.
     *
     * @param concepts the new concepts
     */
    public void setConcepts(final List<ConceptsResult> concepts) {
      this.concepts_serialized_name = concepts;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntitiesResult> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the keywords.
     *
     * @param keywords the new keywords
     */
    public void setKeywords(final List<KeywordsResult> keywords) {
      this.keywords_serialized_name = keywords;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<CategoriesResult> categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the emotion.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionResult emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final MetadataResult metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the relations.
     *
     * @param relations the new relations
     */
    public void setRelations(final List<RelationsResult> relations) {
      this.relations_serialized_name = relations;
    }

    /**
     * Sets the semanticRoles.
     *
     * @param semanticRoles the new semanticRoles
     */
    public void setSemanticRoles(final List<SemanticRolesResult> semanticRoles) {
      this.semantic_roles_serialized_name = semanticRoles;
    }

    /**
     * Sets the sentiment.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final SentimentResult sentiment) {
      this.sentiment_serialized_name = sentiment;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AnalysisResults ret = (AnalysisResults) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for usage
      Usage newUsage = (Usage) new Usage().deserialize(JSON.serialize(ret.getUsage()), (Map<String, Object>) jsonMap.get('usage_serialized_name'), Usage.class);
      ret.setUsage(newUsage);

      // calling custom deserializer for concepts
      List<ConceptsResult> newConcepts = new List<ConceptsResult>();
      List<ConceptsResult> deserializedConcepts = ret.getConcepts();
      if (deserializedConcepts != null) {
        for (Integer i = 0; i < deserializedConcepts.size(); i++) {
          ConceptsResult currentItem = ret.getConcepts().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('concepts_serialized_name');
          ConceptsResult newItem = (ConceptsResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ConceptsResult.class);
          newConcepts.add(newItem);
        }
        ret.setConcepts(newConcepts);
      }

      // calling custom deserializer for entities
      List<EntitiesResult> newEntities = new List<EntitiesResult>();
      List<EntitiesResult> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          EntitiesResult currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          EntitiesResult newItem = (EntitiesResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), EntitiesResult.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      // calling custom deserializer for keywords
      List<KeywordsResult> newKeywords = new List<KeywordsResult>();
      List<KeywordsResult> deserializedKeywords = ret.getKeywords();
      if (deserializedKeywords != null) {
        for (Integer i = 0; i < deserializedKeywords.size(); i++) {
          KeywordsResult currentItem = ret.getKeywords().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('keywords_serialized_name');
          KeywordsResult newItem = (KeywordsResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), KeywordsResult.class);
          newKeywords.add(newItem);
        }
        ret.setKeywords(newKeywords);
      }

      // calling custom deserializer for categories
      List<CategoriesResult> newCategories = new List<CategoriesResult>();
      List<CategoriesResult> deserializedCategories = ret.getCategories();
      if (deserializedCategories != null) {
        for (Integer i = 0; i < deserializedCategories.size(); i++) {
          CategoriesResult currentItem = ret.getCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('categories_serialized_name');
          CategoriesResult newItem = (CategoriesResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), CategoriesResult.class);
          newCategories.add(newItem);
        }
        ret.setCategories(newCategories);
      }

      // calling custom deserializer for emotion
      EmotionResult newEmotion = (EmotionResult) new EmotionResult().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionResult.class);
      ret.setEmotion(newEmotion);

      // calling custom deserializer for metadata
      MetadataResult newMetadata = (MetadataResult) new MetadataResult().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), MetadataResult.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for relations
      List<RelationsResult> newRelations = new List<RelationsResult>();
      List<RelationsResult> deserializedRelations = ret.getRelations();
      if (deserializedRelations != null) {
        for (Integer i = 0; i < deserializedRelations.size(); i++) {
          RelationsResult currentItem = ret.getRelations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('relations_serialized_name');
          RelationsResult newItem = (RelationsResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RelationsResult.class);
          newRelations.add(newItem);
        }
        ret.setRelations(newRelations);
      }

      // calling custom deserializer for semanticRoles
      List<SemanticRolesResult> newSemanticRoles = new List<SemanticRolesResult>();
      List<SemanticRolesResult> deserializedSemanticRoles = ret.getSemanticRoles();
      if (deserializedSemanticRoles != null) {
        for (Integer i = 0; i < deserializedSemanticRoles.size(); i++) {
          SemanticRolesResult currentItem = ret.getSemanticRoles().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('semantic_roles_serialized_name');
          SemanticRolesResult newItem = (SemanticRolesResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SemanticRolesResult.class);
          newSemanticRoles.add(newItem);
        }
        ret.setSemanticRoles(newSemanticRoles);
      }

      // calling custom deserializer for sentiment
      SentimentResult newSentiment = (SentimentResult) new SentimentResult().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), SentimentResult.class);
      ret.setSentiment(newSentiment);

      return ret;
    }
  }

  /**
   * The analyze options.
   */
  public class AnalyzeOptions extends IBMWatsonOptionsModel {
    private String text;
    private String html;
    private String url;
    private Features features;
    private Boolean clean;
    private String xpath;
    private Boolean fallbackToRaw;
    private Boolean returnAnalyzedText;
    private String language;
    private Long limitTextCharacters;
 
    /**
     * Gets the text.
     *
     * The plain text to analyze. One of the `text`, `html`, or `url` parameters is required.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
 
    /**
     * Gets the html.
     *
     * The HTML file to analyze. One of the `text`, `html`, or `url` parameters is required.
     *
     * @return the html
     */
    public String html() {
      return html;
    }
 
    /**
     * Gets the url.
     *
     * The web page to analyze. One of the `text`, `html`, or `url` parameters is required.
     *
     * @return the url
     */
    public String url() {
      return url;
    }
 
    /**
     * Gets the features.
     *
     * Specific features to analyze the document for.
     *
     * @return the features
     */
    public Features features() {
      return features;
    }
 
    /**
     * Gets the clean.
     *
     * Remove website elements, such as links, ads, etc.
     *
     * @return the clean
     */
    public Boolean clean() {
      return clean;
    }
 
    /**
     * Gets the xpath.
     *
     * An [XPath query](https://www.w3.org/TR/xpath/) to perform on `html` or `url` input. Results of the query will be
     * appended to the cleaned webpage text before it is analyzed. To analyze only the results of the XPath query, set
     * the `clean` parameter to `false`.
     *
     * @return the xpath
     */
    public String xpath() {
      return xpath;
    }
 
    /**
     * Gets the fallbackToRaw.
     *
     * Whether to use raw HTML content if text cleaning fails.
     *
     * @return the fallbackToRaw
     */
    public Boolean fallbackToRaw() {
      return fallbackToRaw;
    }
 
    /**
     * Gets the returnAnalyzedText.
     *
     * Whether or not to return the analyzed text.
     *
     * @return the returnAnalyzedText
     */
    public Boolean returnAnalyzedText() {
      return returnAnalyzedText;
    }
 
    /**
     * Gets the language.
     *
     * ISO 639-1 code that specifies the language of your text. This overrides automatic language detection. Language
     * support differs depending on the features you include in your analysis. See [Language
     * support](https://www.bluemix.net/docs/services/natural-language-understanding/language-support.html) for more
     * information.
     *
     * @return the language
     */
    public String language() {
      return language;
    }
 
    /**
     * Gets the limitTextCharacters.
     *
     * Sets the maximum number of characters that are processed by the service.
     *
     * @return the limitTextCharacters
     */
    public Long limitTextCharacters() {
      return limitTextCharacters;
    }

    private AnalyzeOptions(AnalyzeOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.features, 'features cannot be null');
      text = builder.text;
      html = builder.html;
      url = builder.url;
      features = builder.features;
      clean = builder.clean;
      xpath = builder.xpath;
      fallbackToRaw = builder.fallbackToRaw;
      returnAnalyzedText = builder.returnAnalyzedText;
      language = builder.language;
      limitTextCharacters = builder.limitTextCharacters;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder newBuilder() {
      return new AnalyzeOptionsBuilder(this);
    }

  }

  /**
   * AnalyzeOptions Builder.
   */
  public class AnalyzeOptionsBuilder extends IBMWatsonOptionsModel {
    private String text;
    private String html;
    private String url;
    private Features features;
    private Boolean clean;
    private String xpath;
    private Boolean fallbackToRaw;
    private Boolean returnAnalyzedText;
    private String language;
    private Long limitTextCharacters;

    private AnalyzeOptionsBuilder(AnalyzeOptions analyzeOptions) {
      text = analyzeOptions.text;
      html = analyzeOptions.html;
      url = analyzeOptions.url;
      features = analyzeOptions.features;
      clean = analyzeOptions.clean;
      xpath = analyzeOptions.xpath;
      fallbackToRaw = analyzeOptions.fallbackToRaw;
      returnAnalyzedText = analyzeOptions.returnAnalyzedText;
      language = analyzeOptions.language;
      limitTextCharacters = analyzeOptions.limitTextCharacters;
      this.requestHeaders.putAll(analyzeOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public AnalyzeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param features the features
     */
    public AnalyzeOptionsBuilder(Features features) {
      this.features = features;
    }

    /**
     * Builds a AnalyzeOptions.
     *
     * @return the analyzeOptions
     */
    public AnalyzeOptions build() {
      return new AnalyzeOptions(this);
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the html.
     *
     * @param html the html
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder html(String html) {
      this.html = html;
      return this;
    }

    /**
     * Set the url.
     *
     * @param url the url
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder url(String url) {
      this.url = url;
      return this;
    }

    /**
     * Set the features.
     *
     * @param features the features
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder features(Features features) {
      this.features = features;
      return this;
    }

    /**
     * Set the clean.
     *
     * @param clean the clean
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder clean(Boolean clean) {
      this.clean = clean;
      return this;
    }

    /**
     * Set the xpath.
     *
     * @param xpath the xpath
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder xpath(String xpath) {
      this.xpath = xpath;
      return this;
    }

    /**
     * Set the fallbackToRaw.
     *
     * @param fallbackToRaw the fallbackToRaw
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder fallbackToRaw(Boolean fallbackToRaw) {
      this.fallbackToRaw = fallbackToRaw;
      return this;
    }

    /**
     * Set the returnAnalyzedText.
     *
     * @param returnAnalyzedText the returnAnalyzedText
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder returnAnalyzedText(Boolean returnAnalyzedText) {
      this.returnAnalyzedText = returnAnalyzedText;
      return this;
    }

    /**
     * Set the language.
     *
     * @param language the language
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Set the limitTextCharacters.
     *
     * @param limitTextCharacters the limitTextCharacters
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder limitTextCharacters(Long limitTextCharacters) {
      this.limitTextCharacters = limitTextCharacters;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The author of the analyzed content.
   */
  public class Author extends IBMWatsonGenericModel {
    private String name_serialized_name;
 
    /**
     * Gets the name.
     *
     * Name of the author.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
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

      Author ret = (Author) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Returns a five-level taxonomy of the content. The top three categories are returned. 

Supported languages: Arabic, English, French, German, Italian, Japanese, Korean, Portuguese, Spanish.
   */
  public class CategoriesOptions extends IBMWatsonDynamicModel {
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the dynamic properties attached to CategoriesOptions.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

  }

  /**
   * The hierarchical 5-level taxonomy the content is categorized into.
   */
  public class CategoriesResult extends IBMWatsonGenericModel {
    private String label_serialized_name;
    private Double score_serialized_name;
 
    /**
     * Gets the label.
     *
     * The path to the category through the taxonomy hierarchy.
     *
     * @return the label
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
    }
 
    /**
     * Gets the score.
     *
     * Confidence score for the category classification. Higher values indicate greater confidence.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the label.
     *
     * @param label the new label
     */
    public void setLabel(final String label) {
      this.label_serialized_name = label;
    }

    /**
     * Sets the score.
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

      CategoriesResult ret = (CategoriesResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Returns high-level concepts in the content. For example, a research paper about deep learning might return the
   * concept, "Artificial Intelligence" although the term is not mentioned.
   *
   * Supported languages: English, French, German, Japanese, Korean, Portuguese, Spanish.
   */
  public class ConceptsOptions {
    private Long limit_serialized_name;
 
    /**
     * Gets the xlimit.
     *
     * Maximum number of concepts to return.
     *
     * @return the xlimit
     */
    public Long xlimit() {
      return limit_serialized_name;
    }
  
    private ConceptsOptions(ConceptsOptionsBuilder builder) {
      limit_serialized_name = builder.xlimit;
    }

    /**
     * New builder.
     *
     * @return a ConceptsOptions builder
     */
    public ConceptsOptionsBuilder newBuilder() {
      return new ConceptsOptionsBuilder(this);
    }

  }

  /**
   * ConceptsOptions Builder.
   */
  public class ConceptsOptionsBuilder {
    private Long xlimit;

    private ConceptsOptionsBuilder(ConceptsOptions conceptsOptions) {
      xlimit = conceptsOptions.limit_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ConceptsOptionsBuilder() {
    }

    /**
     * Builds a ConceptsOptions.
     *
     * @return the conceptsOptions
     */
    public ConceptsOptions build() {
      return new ConceptsOptions(this);
    }

    /**
     * Set the xlimit.
     *
     * @param xlimit the xlimit
     * @return the ConceptsOptions builder
     */
    public ConceptsOptionsBuilder xlimit(Long xlimit) {
      this.xlimit = xlimit;
      return this;
    }
  }

  /**
   * The general concepts referenced or alluded to in the specified content.
   */
  public class ConceptsResult extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private Double relevance_serialized_name;
    private String dbpedia_resource_serialized_name;
 
    /**
     * Gets the text.
     *
     * Name of the concept.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the relevance.
     *
     * Relevance score between 0 and 1. Higher scores indicate greater relevance.
     *
     * @return the relevance
     */
    @AuraEnabled
    public Double getRelevance() {
      return relevance_serialized_name;
    }
 
    /**
     * Gets the dbpediaResource.
     *
     * Link to the corresponding DBpedia resource.
     *
     * @return the dbpediaResource
     */
    @AuraEnabled
    public String getDbpediaResource() {
      return dbpedia_resource_serialized_name;
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
     * Sets the relevance.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final Double relevance) {
      this.relevance_serialized_name = relevance;
    }

    /**
     * Sets the dbpediaResource.
     *
     * @param dbpediaResource the new dbpediaResource
     */
    public void setDbpediaResource(final String dbpediaResource) {
      this.dbpedia_resource_serialized_name = dbpediaResource;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ConceptsResult ret = (ConceptsResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The deleteModel options.
   */
  public class DeleteModelOptions extends IBMWatsonOptionsModel {
    private String modelId;
 
    /**
     * Gets the modelId.
     *
     * model_id of the model to delete.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }

    private DeleteModelOptions(DeleteModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.modelId, 'modelId cannot be empty');
      modelId = builder.modelId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder newBuilder() {
      return new DeleteModelOptionsBuilder(this);
    }

  }

  /**
   * DeleteModelOptions Builder.
   */
  public class DeleteModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String modelId;

    private DeleteModelOptionsBuilder(DeleteModelOptions deleteModelOptions) {
      modelId = deleteModelOptions.modelId;
      this.requestHeaders.putAll(deleteModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param modelId the modelId
     */
    public DeleteModelOptionsBuilder(String modelId) {
      this.modelId = modelId;
    }

    /**
     * Builds a DeleteModelOptions.
     *
     * @return the deleteModelOptions
     */
    public DeleteModelOptions build() {
      return new DeleteModelOptions(this);
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Disambiguation information for the entity.
   */
  public class DisambiguationResult extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private String dbpedia_resource_serialized_name;
    private List<String> subtype_serialized_name;
 
    /**
     * Gets the name.
     *
     * Common entity name.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the dbpediaResource.
     *
     * Link to the corresponding DBpedia resource.
     *
     * @return the dbpediaResource
     */
    @AuraEnabled
    public String getDbpediaResource() {
      return dbpedia_resource_serialized_name;
    }
 
    /**
     * Gets the subtype.
     *
     * Entity subtype information.
     *
     * @return the subtype
     */
    @AuraEnabled
    public List<String> getSubtype() {
      return subtype_serialized_name;
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
     * Sets the dbpediaResource.
     *
     * @param dbpediaResource the new dbpediaResource
     */
    public void setDbpediaResource(final String dbpediaResource) {
      this.dbpedia_resource_serialized_name = dbpediaResource;
    }

    /**
     * Sets the subtype.
     *
     * @param subtype the new subtype
     */
    public void setSubtype(final List<String> subtype) {
      this.subtype_serialized_name = subtype;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DisambiguationResult ret = (DisambiguationResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An object containing the emotion results of a document.
   */
  public class DocumentEmotionResults extends IBMWatsonGenericModel {
    private EmotionScores emotion_serialized_name;
 
    /**
     * Gets the emotion.
     *
     * An object containing the emotion results for the document.
     *
     * @return the emotion
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
    }

    /**
     * Sets the emotion.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionScores emotion) {
      this.emotion_serialized_name = emotion;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocumentEmotionResults ret = (DocumentEmotionResults) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for emotion
      EmotionScores newEmotion = (EmotionScores) new EmotionScores().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionScores.class);
      ret.setEmotion(newEmotion);

      return ret;
    }
  }

  /**
   * DocumentSentimentResults.
   */
  public class DocumentSentimentResults extends IBMWatsonGenericModel {
    private String label_serialized_name;
    private Double score_serialized_name;
 
    /**
     * Gets the label.
     *
     * Indicates whether the sentiment is positive, neutral, or negative.
     *
     * @return the label
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
    }
 
    /**
     * Gets the score.
     *
     * Sentiment score from -1 (negative) to 1 (positive).
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the label.
     *
     * @param label the new label
     */
    public void setLabel(final String label) {
      this.label_serialized_name = label;
    }

    /**
     * Sets the score.
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

      DocumentSentimentResults ret = (DocumentSentimentResults) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Detects anger, disgust, fear, joy, or sadness that is conveyed in the content or by the context around target
   * phrases specified in the targets parameter. You can analyze emotion for detected entities with `entities.emotion`
   * and for keywords with `keywords.emotion`.
   *
   * Supported languages: English.
   */
  public class EmotionOptions {
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;
 
    /**
     * Gets the document.
     *
     * Set this to `false` to hide document-level emotion results.
     *
     * @return the document
     */
    public Boolean document() {
      return document_serialized_name;
    }
 
    /**
     * Gets the targets.
     *
     * Emotion results will be returned for each target string that is found in the document.
     *
     * @return the targets
     */
    public List<String> targets() {
      return targets_serialized_name;
    }
  
    private EmotionOptions(EmotionOptionsBuilder builder) {
      document_serialized_name = builder.document;
      targets_serialized_name = builder.targets;
    }

    /**
     * New builder.
     *
     * @return a EmotionOptions builder
     */
    public EmotionOptionsBuilder newBuilder() {
      return new EmotionOptionsBuilder(this);
    }

  }

  /**
   * EmotionOptions Builder.
   */
  public class EmotionOptionsBuilder {
    private Boolean document;
    private List<String> targets;

    private EmotionOptionsBuilder(EmotionOptions emotionOptions) {
      document = emotionOptions.document_serialized_name;
      targets = emotionOptions.targets_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public EmotionOptionsBuilder() {
    }

    /**
     * Builds a EmotionOptions.
     *
     * @return the emotionOptions
     */
    public EmotionOptions build() {
      return new EmotionOptions(this);
    }

    /**
     * Adds an targets to targets.
     *
     * @param targets the new targets
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder addTargets(String targets) {
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
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder document(Boolean document) {
      this.document = document;
      return this;
    }

    /**
     * Set the targets.
     * Existing targets will be replaced.
     *
     * @param targets the targets
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder targets(List<String> targets) {
      this.targets = targets;
      return this;
    }
  }

  /**
   * The detected anger, disgust, fear, joy, or sadness that is conveyed by the content. Emotion information can be
   * returned for detected entities, keywords, or user-specified target phrases found in the text.
   */
  public class EmotionResult extends IBMWatsonGenericModel {
    private DocumentEmotionResults document_serialized_name;
    private List<TargetedEmotionResults> targets_serialized_name;
 
    /**
     * Gets the document.
     *
     * The returned emotion results across the document.
     *
     * @return the document
     */
    @AuraEnabled
    public DocumentEmotionResults getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the targets.
     *
     * The returned emotion results per specified target.
     *
     * @return the targets
     */
    @AuraEnabled
    public List<TargetedEmotionResults> getTargets() {
      return targets_serialized_name;
    }

    /**
     * Sets the document.
     *
     * @param document the new document
     */
    public void setDocument(final DocumentEmotionResults document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the targets.
     *
     * @param targets the new targets
     */
    public void setTargets(final List<TargetedEmotionResults> targets) {
      this.targets_serialized_name = targets;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EmotionResult ret = (EmotionResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for document
      DocumentEmotionResults newDocument = (DocumentEmotionResults) new DocumentEmotionResults().deserialize(JSON.serialize(ret.getDocument()), (Map<String, Object>) jsonMap.get('document_serialized_name'), DocumentEmotionResults.class);
      ret.setDocument(newDocument);

      // calling custom deserializer for targets
      List<TargetedEmotionResults> newTargets = new List<TargetedEmotionResults>();
      List<TargetedEmotionResults> deserializedTargets = ret.getTargets();
      if (deserializedTargets != null) {
        for (Integer i = 0; i < deserializedTargets.size(); i++) {
          TargetedEmotionResults currentItem = ret.getTargets().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('targets_serialized_name');
          TargetedEmotionResults newItem = (TargetedEmotionResults) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TargetedEmotionResults.class);
          newTargets.add(newItem);
        }
        ret.setTargets(newTargets);
      }

      return ret;
    }
  }

  /**
   * EmotionScores.
   */
  public class EmotionScores extends IBMWatsonGenericModel {
    private Double anger_serialized_name;
    private Double disgust_serialized_name;
    private Double fear_serialized_name;
    private Double joy_serialized_name;
    private Double sadness_serialized_name;
 
    /**
     * Gets the anger.
     *
     * Anger score from 0 to 1. A higher score means that the text is more likely to convey anger.
     *
     * @return the anger
     */
    @AuraEnabled
    public Double getAnger() {
      return anger_serialized_name;
    }
 
    /**
     * Gets the disgust.
     *
     * Disgust score from 0 to 1. A higher score means that the text is more likely to convey disgust.
     *
     * @return the disgust
     */
    @AuraEnabled
    public Double getDisgust() {
      return disgust_serialized_name;
    }
 
    /**
     * Gets the fear.
     *
     * Fear score from 0 to 1. A higher score means that the text is more likely to convey fear.
     *
     * @return the fear
     */
    @AuraEnabled
    public Double getFear() {
      return fear_serialized_name;
    }
 
    /**
     * Gets the joy.
     *
     * Joy score from 0 to 1. A higher score means that the text is more likely to convey joy.
     *
     * @return the joy
     */
    @AuraEnabled
    public Double getJoy() {
      return joy_serialized_name;
    }
 
    /**
     * Gets the sadness.
     *
     * Sadness score from 0 to 1. A higher score means that the text is more likely to convey sadness.
     *
     * @return the sadness
     */
    @AuraEnabled
    public Double getSadness() {
      return sadness_serialized_name;
    }

    /**
     * Sets the anger.
     *
     * @param anger the new anger
     */
    public void setAnger(final Double anger) {
      this.anger_serialized_name = anger;
    }

    /**
     * Sets the disgust.
     *
     * @param disgust the new disgust
     */
    public void setDisgust(final Double disgust) {
      this.disgust_serialized_name = disgust;
    }

    /**
     * Sets the fear.
     *
     * @param fear the new fear
     */
    public void setFear(final Double fear) {
      this.fear_serialized_name = fear;
    }

    /**
     * Sets the joy.
     *
     * @param joy the new joy
     */
    public void setJoy(final Double joy) {
      this.joy_serialized_name = joy;
    }

    /**
     * Sets the sadness.
     *
     * @param sadness the new sadness
     */
    public void setSadness(final Double sadness) {
      this.sadness_serialized_name = sadness;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EmotionScores ret = (EmotionScores) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Identifies people, cities, organizations, and other entities in the content. See [Entity types and
   * subtypes](/docs/services/natural-language-understanding/entity-types.html).
   *
   * Supported languages: English, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish, Swedish.
   * Arabic, Chinese, and Dutch custom models are also supported.
   */
  public class EntitiesOptions {
    private Long limit_serialized_name;
    private Boolean mentions_serialized_name;
    private String model_serialized_name;
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;
 
    /**
     * Gets the xlimit.
     *
     * Maximum number of entities to return.
     *
     * @return the xlimit
     */
    public Long xlimit() {
      return limit_serialized_name;
    }
 
    /**
     * Gets the mentions.
     *
     * Set this to `true` to return locations of entity mentions.
     *
     * @return the mentions
     */
    public Boolean mentions() {
      return mentions_serialized_name;
    }
 
    /**
     * Gets the model.
     *
     * Enter a [custom model](https://www.bluemix.net/docs/services/natural-language-understanding/customizing.html) ID
     * to override the standard entity detection model.
     *
     * @return the model
     */
    public String model() {
      return model_serialized_name;
    }
 
    /**
     * Gets the sentiment.
     *
     * Set this to `true` to return sentiment information for detected entities.
     *
     * @return the sentiment
     */
    public Boolean sentiment() {
      return sentiment_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * Set this to `true` to analyze emotion for detected keywords.
     *
     * @return the emotion
     */
    public Boolean emotion() {
      return emotion_serialized_name;
    }
  
    private EntitiesOptions(EntitiesOptionsBuilder builder) {
      limit_serialized_name = builder.xlimit;
      mentions_serialized_name = builder.mentions;
      model_serialized_name = builder.model;
      sentiment_serialized_name = builder.sentiment;
      emotion_serialized_name = builder.emotion;
    }

    /**
     * New builder.
     *
     * @return a EntitiesOptions builder
     */
    public EntitiesOptionsBuilder newBuilder() {
      return new EntitiesOptionsBuilder(this);
    }

  }

  /**
   * EntitiesOptions Builder.
   */
  public class EntitiesOptionsBuilder {
    private Long xlimit;
    private Boolean mentions;
    private String model;
    private Boolean sentiment;
    private Boolean emotion;

    private EntitiesOptionsBuilder(EntitiesOptions entitiesOptions) {
      xlimit = entitiesOptions.limit_serialized_name;
      mentions = entitiesOptions.mentions_serialized_name;
      model = entitiesOptions.model_serialized_name;
      sentiment = entitiesOptions.sentiment_serialized_name;
      emotion = entitiesOptions.emotion_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public EntitiesOptionsBuilder() {
    }

    /**
     * Builds a EntitiesOptions.
     *
     * @return the entitiesOptions
     */
    public EntitiesOptions build() {
      return new EntitiesOptions(this);
    }

    /**
     * Set the xlimit.
     *
     * @param xlimit the xlimit
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder xlimit(Long xlimit) {
      this.xlimit = xlimit;
      return this;
    }

    /**
     * Set the mentions.
     *
     * @param mentions the mentions
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder mentions(Boolean mentions) {
      this.mentions = mentions;
      return this;
    }

    /**
     * Set the model.
     *
     * @param model the model
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder model(String model) {
      this.model = model;
      return this;
    }

    /**
     * Set the sentiment.
     *
     * @param sentiment the sentiment
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder sentiment(Boolean sentiment) {
      this.sentiment = sentiment;
      return this;
    }

    /**
     * Set the emotion.
     *
     * @param emotion the emotion
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder emotion(Boolean emotion) {
      this.emotion = emotion;
      return this;
    }
  }

  /**
   * The important people, places, geopolitical entities and other types of entities in your content.
   */
  public class EntitiesResult extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String text_serialized_name;
    private Double relevance_serialized_name;
    private List<EntityMention> mentions_serialized_name;
    private Long count_serialized_name;
    private EmotionScores emotion_serialized_name;
    private FeatureSentimentResults sentiment_serialized_name;
    private DisambiguationResult disambiguation_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * Entity type.
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
     * The name of the entity.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the relevance.
     *
     * Relevance score from 0 to 1. Higher values indicate greater relevance.
     *
     * @return the relevance
     */
    @AuraEnabled
    public Double getRelevance() {
      return relevance_serialized_name;
    }
 
    /**
     * Gets the mentions.
     *
     * Entity mentions and locations.
     *
     * @return the mentions
     */
    @AuraEnabled
    public List<EntityMention> getMentions() {
      return mentions_serialized_name;
    }
 
    /**
     * Gets the count.
     *
     * How many times the entity was mentioned in the text.
     *
     * @return the count
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * Emotion analysis results for the entity, enabled with the "emotion" option.
     *
     * @return the emotion
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
    }
 
    /**
     * Gets the sentiment.
     *
     * Sentiment analysis results for the entity, enabled with the "sentiment" option.
     *
     * @return the sentiment
     */
    @AuraEnabled
    public FeatureSentimentResults getSentiment() {
      return sentiment_serialized_name;
    }
 
    /**
     * Gets the disambiguation.
     *
     * Disambiguation information for the entity.
     *
     * @return the disambiguation
     */
    @AuraEnabled
    public DisambiguationResult getDisambiguation() {
      return disambiguation_serialized_name;
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
     * Sets the relevance.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final Double relevance) {
      this.relevance_serialized_name = relevance;
    }

    /**
     * Sets the mentions.
     *
     * @param mentions the new mentions
     */
    public void setMentions(final List<EntityMention> mentions) {
      this.mentions_serialized_name = mentions;
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
     * Sets the emotion.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionScores emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the sentiment.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final FeatureSentimentResults sentiment) {
      this.sentiment_serialized_name = sentiment;
    }

    /**
     * Sets the disambiguation.
     *
     * @param disambiguation the new disambiguation
     */
    public void setDisambiguation(final DisambiguationResult disambiguation) {
      this.disambiguation_serialized_name = disambiguation;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EntitiesResult ret = (EntitiesResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for mentions
      List<EntityMention> newMentions = new List<EntityMention>();
      List<EntityMention> deserializedMentions = ret.getMentions();
      if (deserializedMentions != null) {
        for (Integer i = 0; i < deserializedMentions.size(); i++) {
          EntityMention currentItem = ret.getMentions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('mentions_serialized_name');
          EntityMention newItem = (EntityMention) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), EntityMention.class);
          newMentions.add(newItem);
        }
        ret.setMentions(newMentions);
      }

      // calling custom deserializer for emotion
      EmotionScores newEmotion = (EmotionScores) new EmotionScores().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionScores.class);
      ret.setEmotion(newEmotion);

      // calling custom deserializer for sentiment
      FeatureSentimentResults newSentiment = (FeatureSentimentResults) new FeatureSentimentResults().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), FeatureSentimentResults.class);
      ret.setSentiment(newSentiment);

      // calling custom deserializer for disambiguation
      DisambiguationResult newDisambiguation = (DisambiguationResult) new DisambiguationResult().deserialize(JSON.serialize(ret.getDisambiguation()), (Map<String, Object>) jsonMap.get('disambiguation_serialized_name'), DisambiguationResult.class);
      ret.setDisambiguation(newDisambiguation);

      return ret;
    }
  }

  /**
   * EntityMention.
   */
  public class EntityMention extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private List<Long> location_serialized_name;
 
    /**
     * Gets the text.
     *
     * Entity mention text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * Character offsets indicating the beginning and end of the mention in the analyzed text.
     *
     * @return the location
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
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
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final List<Long> location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EntityMention ret = (EntityMention) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * FeatureSentimentResults.
   */
  public class FeatureSentimentResults extends IBMWatsonGenericModel {
    private Double score_serialized_name;
 
    /**
     * Gets the score.
     *
     * Sentiment score from -1 (negative) to 1 (positive).
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the score.
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

      FeatureSentimentResults ret = (FeatureSentimentResults) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Analysis features and options.
   */
  public class Features {
    private ConceptsOptions concepts_serialized_name;
    private EmotionOptions emotion_serialized_name;
    private EntitiesOptions entities_serialized_name;
    private KeywordsOptions keywords_serialized_name;
    private MetadataOptions metadata_serialized_name;
    private RelationsOptions relations_serialized_name;
    private SemanticRolesOptions semantic_roles_serialized_name;
    private SentimentOptions sentiment_serialized_name;
    private CategoriesOptions categories_serialized_name;
 
    /**
     * Gets the concepts.
     *
     * Returns high-level concepts in the content. For example, a research paper about deep learning might return the
     * concept, "Artificial Intelligence" although the term is not mentioned.
     *
     * Supported languages: English, French, German, Japanese, Korean, Portuguese, Spanish.
     *
     * @return the concepts
     */
    public ConceptsOptions concepts() {
      return concepts_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * Detects anger, disgust, fear, joy, or sadness that is conveyed in the content or by the context around target
     * phrases specified in the targets parameter. You can analyze emotion for detected entities with `entities.emotion`
     * and for keywords with `keywords.emotion`.
     *
     * Supported languages: English
     *
     * @return the emotion
     */
    public EmotionOptions emotion() {
      return emotion_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * Identifies people, cities, organizations, and other entities in the content. See [Entity types and
     * subtypes](/docs/services/natural-language-understanding/entity-types.html).
     *
     * Supported languages: English, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish, Swedish.
     * Arabic, Chinese, and Dutch custom models are also supported.
     *
     * @return the entities
     */
    public EntitiesOptions entities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the keywords.
     *
     * Returns important keywords in the content.
     *
     * Supported languages: English, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish, Swedish.
     *
     * @return the keywords
     */
    public KeywordsOptions keywords() {
      return keywords_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Returns information from the document, including author name, title, RSS/ATOM feeds, prominent page image, and
     * publication date. Supports URL and HTML input types only.
     *
     * @return the metadata
     */
    public MetadataOptions metadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the relations.
     *
     * Recognizes when two entities are related and identifies the type of relation. For example, an `awardedTo`
     * relation might connect the entities "Nobel Prize" and "Albert Einstein". See [Relation
     * types](/docs/services/natural-language-understanding/relations.html).
     *
     * Supported languages: Arabic, English, German, Japanese, Korean, Spanish. Chinese, Dutch, French, Italian, and
     * Portuguese custom models are also supported.
     *
     * @return the relations
     */
    public RelationsOptions relations() {
      return relations_serialized_name;
    }
 
    /**
     * Gets the semanticRoles.
     *
     * Parses sentences into subject, action, and object form.
     *
     * Supported languages: English, German, Japanese, Korean, Spanish.
     *
     * @return the semanticRoles
     */
    public SemanticRolesOptions semanticRoles() {
      return semantic_roles_serialized_name;
    }
 
    /**
     * Gets the sentiment.
     *
     * Analyzes the general sentiment of your content or the sentiment toward specific target phrases. You can analyze
     * sentiment for detected entities with `entities.sentiment` and for keywords with `keywords.sentiment`.
     *
     *  Supported languages: Arabic, English, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish
     *
     * @return the sentiment
     */
    public SentimentOptions sentiment() {
      return sentiment_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * Returns a five-level taxonomy of the content. The top three categories are returned.
     *
     * Supported languages: Arabic, English, French, German, Italian, Japanese, Korean, Portuguese, Spanish.
     *
     * @return the categories
     */
    public CategoriesOptions categories() {
      return categories_serialized_name;
    }
  
    private Features(FeaturesBuilder builder) {
      concepts_serialized_name = builder.concepts;
      emotion_serialized_name = builder.emotion;
      entities_serialized_name = builder.entities;
      keywords_serialized_name = builder.keywords;
      metadata_serialized_name = builder.metadata;
      relations_serialized_name = builder.relations;
      semantic_roles_serialized_name = builder.semanticRoles;
      sentiment_serialized_name = builder.sentiment;
      categories_serialized_name = builder.categories;
    }

    /**
     * New builder.
     *
     * @return a Features builder
     */
    public FeaturesBuilder newBuilder() {
      return new FeaturesBuilder(this);
    }

  }

  /**
   * Features Builder.
   */
  public class FeaturesBuilder {
    private ConceptsOptions concepts;
    private EmotionOptions emotion;
    private EntitiesOptions entities;
    private KeywordsOptions keywords;
    private MetadataOptions metadata;
    private RelationsOptions relations;
    private SemanticRolesOptions semanticRoles;
    private SentimentOptions sentiment;
    private CategoriesOptions categories;

    private FeaturesBuilder(Features features) {
      concepts = features.concepts_serialized_name;
      emotion = features.emotion_serialized_name;
      entities = features.entities_serialized_name;
      keywords = features.keywords_serialized_name;
      metadata = features.metadata_serialized_name;
      relations = features.relations_serialized_name;
      semanticRoles = features.semantic_roles_serialized_name;
      sentiment = features.sentiment_serialized_name;
      categories = features.categories_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public FeaturesBuilder() {
    }

    /**
     * Builds a Features.
     *
     * @return the features
     */
    public Features build() {
      return new Features(this);
    }

    /**
     * Set the concepts.
     *
     * @param concepts the concepts
     * @return the Features builder
     */
    public FeaturesBuilder concepts(ConceptsOptions concepts) {
      this.concepts = concepts;
      return this;
    }

    /**
     * Set the emotion.
     *
     * @param emotion the emotion
     * @return the Features builder
     */
    public FeaturesBuilder emotion(EmotionOptions emotion) {
      this.emotion = emotion;
      return this;
    }

    /**
     * Set the entities.
     *
     * @param entities the entities
     * @return the Features builder
     */
    public FeaturesBuilder entities(EntitiesOptions entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the keywords.
     *
     * @param keywords the keywords
     * @return the Features builder
     */
    public FeaturesBuilder keywords(KeywordsOptions keywords) {
      this.keywords = keywords;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the Features builder
     */
    public FeaturesBuilder metadata(MetadataOptions metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the relations.
     *
     * @param relations the relations
     * @return the Features builder
     */
    public FeaturesBuilder relations(RelationsOptions relations) {
      this.relations = relations;
      return this;
    }

    /**
     * Set the semanticRoles.
     *
     * @param semanticRoles the semanticRoles
     * @return the Features builder
     */
    public FeaturesBuilder semanticRoles(SemanticRolesOptions semanticRoles) {
      this.semanticRoles = semanticRoles;
      return this;
    }

    /**
     * Set the sentiment.
     *
     * @param sentiment the sentiment
     * @return the Features builder
     */
    public FeaturesBuilder sentiment(SentimentOptions sentiment) {
      this.sentiment = sentiment;
      return this;
    }

    /**
     * Set the categories.
     *
     * @param categories the categories
     * @return the Features builder
     */
    public FeaturesBuilder categories(CategoriesOptions categories) {
      this.categories = categories;
      return this;
    }
  }

  /**
   * RSS or ATOM feed found on the webpage.
   */
  public class Feed extends IBMWatsonGenericModel {
    private String link_serialized_name;
 
    /**
     * Gets the link.
     *
     * URL of the RSS or ATOM feed.
     *
     * @return the link
     */
    @AuraEnabled
    public String getLink() {
      return link_serialized_name;
    }

    /**
     * Sets the link.
     *
     * @param link the new link
     */
    public void setLink(final String link) {
      this.link_serialized_name = link;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Feed ret = (Feed) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Returns important keywords in the content.
   *
   * Supported languages: English, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish, Swedish.
   */
  public class KeywordsOptions {
    private Long limit_serialized_name;
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;
 
    /**
     * Gets the xlimit.
     *
     * Maximum number of keywords to return.
     *
     * @return the xlimit
     */
    public Long xlimit() {
      return limit_serialized_name;
    }
 
    /**
     * Gets the sentiment.
     *
     * Set this to `true` to return sentiment information for detected keywords.
     *
     * @return the sentiment
     */
    public Boolean sentiment() {
      return sentiment_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * Set this to `true` to analyze emotion for detected keywords.
     *
     * @return the emotion
     */
    public Boolean emotion() {
      return emotion_serialized_name;
    }
  
    private KeywordsOptions(KeywordsOptionsBuilder builder) {
      limit_serialized_name = builder.xlimit;
      sentiment_serialized_name = builder.sentiment;
      emotion_serialized_name = builder.emotion;
    }

    /**
     * New builder.
     *
     * @return a KeywordsOptions builder
     */
    public KeywordsOptionsBuilder newBuilder() {
      return new KeywordsOptionsBuilder(this);
    }

  }

  /**
   * KeywordsOptions Builder.
   */
  public class KeywordsOptionsBuilder {
    private Long xlimit;
    private Boolean sentiment;
    private Boolean emotion;

    private KeywordsOptionsBuilder(KeywordsOptions keywordsOptions) {
      xlimit = keywordsOptions.limit_serialized_name;
      sentiment = keywordsOptions.sentiment_serialized_name;
      emotion = keywordsOptions.emotion_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public KeywordsOptionsBuilder() {
    }

    /**
     * Builds a KeywordsOptions.
     *
     * @return the keywordsOptions
     */
    public KeywordsOptions build() {
      return new KeywordsOptions(this);
    }

    /**
     * Set the xlimit.
     *
     * @param xlimit the xlimit
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder xlimit(Long xlimit) {
      this.xlimit = xlimit;
      return this;
    }

    /**
     * Set the sentiment.
     *
     * @param sentiment the sentiment
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder sentiment(Boolean sentiment) {
      this.sentiment = sentiment;
      return this;
    }

    /**
     * Set the emotion.
     *
     * @param emotion the emotion
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder emotion(Boolean emotion) {
      this.emotion = emotion;
      return this;
    }
  }

  /**
   * The most important keywords in the content, organized by relevance.
   */
  public class KeywordsResult extends IBMWatsonGenericModel {
    private Double relevance_serialized_name;
    private String text_serialized_name;
    private EmotionScores emotion_serialized_name;
    private FeatureSentimentResults sentiment_serialized_name;
 
    /**
     * Gets the relevance.
     *
     * Relevance score from 0 to 1. Higher values indicate greater relevance.
     *
     * @return the relevance
     */
    @AuraEnabled
    public Double getRelevance() {
      return relevance_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The keyword text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * Emotion analysis results for the keyword, enabled with the "emotion" option.
     *
     * @return the emotion
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
    }
 
    /**
     * Gets the sentiment.
     *
     * Sentiment analysis results for the keyword, enabled with the "sentiment" option.
     *
     * @return the sentiment
     */
    @AuraEnabled
    public FeatureSentimentResults getSentiment() {
      return sentiment_serialized_name;
    }

    /**
     * Sets the relevance.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final Double relevance) {
      this.relevance_serialized_name = relevance;
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
     * Sets the emotion.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionScores emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the sentiment.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final FeatureSentimentResults sentiment) {
      this.sentiment_serialized_name = sentiment;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      KeywordsResult ret = (KeywordsResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for emotion
      EmotionScores newEmotion = (EmotionScores) new EmotionScores().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionScores.class);
      ret.setEmotion(newEmotion);

      // calling custom deserializer for sentiment
      FeatureSentimentResults newSentiment = (FeatureSentimentResults) new FeatureSentimentResults().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), FeatureSentimentResults.class);
      ret.setSentiment(newSentiment);

      return ret;
    }
  }

  /**
   * The listModels options.
   */
  public class ListModelsOptions extends IBMWatsonOptionsModel {

    private ListModelsOptions(ListModelsOptionsBuilder builder) {
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListModelsOptions builder
     */
    public ListModelsOptionsBuilder newBuilder() {
      return new ListModelsOptionsBuilder(this);
    }

  }

  /**
   * ListModelsOptions Builder.
   */
  public class ListModelsOptionsBuilder extends IBMWatsonOptionsModel {

    private ListModelsOptionsBuilder(ListModelsOptions listModelsOptions) {
      this.requestHeaders.putAll(listModelsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListModelsOptionsBuilder() {
    }

    /**
     * Builds a ListModelsOptions.
     *
     * @return the listModelsOptions
     */
    public ListModelsOptions build() {
      return new ListModelsOptions(this);
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Models available for Relations and Entities features.
   */
  public class ListModelsResults extends IBMWatsonResponseModel {
    private List<Model> models_serialized_name;
 
    /**
     * Gets the models.
     *
     * An array of available models.
     *
     * @return the models
     */
    @AuraEnabled
    public List<Model> getModels() {
      return models_serialized_name;
    }

    /**
     * Sets the models.
     *
     * @param models the new models
     */
    public void setModels(final List<Model> models) {
      this.models_serialized_name = models;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ListModelsResults ret = (ListModelsResults) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for models
      List<Model> newModels = new List<Model>();
      List<Model> deserializedModels = ret.getModels();
      if (deserializedModels != null) {
        for (Integer i = 0; i < deserializedModels.size(); i++) {
          Model currentItem = ret.getModels().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('models_serialized_name');
          Model newItem = (Model) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Model.class);
          newModels.add(newItem);
        }
        ret.setModels(newModels);
      }

      return ret;
    }
  }

  /**
   * Returns information from the document, including author name, title, RSS/ATOM feeds, prominent page image, and publication date. Supports URL and HTML input types only.
   */
  public class MetadataOptions extends IBMWatsonDynamicModel {
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the dynamic properties attached to MetadataOptions.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

  }

  /**
   * The Authors, Publication Date, and Title of the document. Supports URL and HTML input types.
   */
  public class MetadataResult extends IBMWatsonGenericModel {
    private List<Author> authors_serialized_name;
    private String publication_date_serialized_name;
    private String title_serialized_name;
    private String image_serialized_name;
    private List<Feed> feeds_serialized_name;
 
    /**
     * Gets the authors.
     *
     * The authors of the document.
     *
     * @return the authors
     */
    @AuraEnabled
    public List<Author> getAuthors() {
      return authors_serialized_name;
    }
 
    /**
     * Gets the publicationDate.
     *
     * The publication date in the format ISO 8601.
     *
     * @return the publicationDate
     */
    @AuraEnabled
    public String getPublicationDate() {
      return publication_date_serialized_name;
    }
 
    /**
     * Gets the title.
     *
     * The title of the document.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the image.
     *
     * URL of a prominent image on the webpage.
     *
     * @return the image
     */
    @AuraEnabled
    public String getImage() {
      return image_serialized_name;
    }
 
    /**
     * Gets the feeds.
     *
     * RSS/ATOM feeds found on the webpage.
     *
     * @return the feeds
     */
    @AuraEnabled
    public List<Feed> getFeeds() {
      return feeds_serialized_name;
    }

    /**
     * Sets the authors.
     *
     * @param authors the new authors
     */
    public void setAuthors(final List<Author> authors) {
      this.authors_serialized_name = authors;
    }

    /**
     * Sets the publicationDate.
     *
     * @param publicationDate the new publicationDate
     */
    public void setPublicationDate(final String publicationDate) {
      this.publication_date_serialized_name = publicationDate;
    }

    /**
     * Sets the title.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title_serialized_name = title;
    }

    /**
     * Sets the image.
     *
     * @param image the new image
     */
    public void setImage(final String image) {
      this.image_serialized_name = image;
    }

    /**
     * Sets the feeds.
     *
     * @param feeds the new feeds
     */
    public void setFeeds(final List<Feed> feeds) {
      this.feeds_serialized_name = feeds;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetadataResult ret = (MetadataResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for authors
      List<Author> newAuthors = new List<Author>();
      List<Author> deserializedAuthors = ret.getAuthors();
      if (deserializedAuthors != null) {
        for (Integer i = 0; i < deserializedAuthors.size(); i++) {
          Author currentItem = ret.getAuthors().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('authors_serialized_name');
          Author newItem = (Author) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Author.class);
          newAuthors.add(newItem);
        }
        ret.setAuthors(newAuthors);
      }

      // calling custom deserializer for feeds
      List<Feed> newFeeds = new List<Feed>();
      List<Feed> deserializedFeeds = ret.getFeeds();
      if (deserializedFeeds != null) {
        for (Integer i = 0; i < deserializedFeeds.size(); i++) {
          Feed currentItem = ret.getFeeds().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('feeds_serialized_name');
          Feed newItem = (Feed) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Feed.class);
          newFeeds.add(newItem);
        }
        ret.setFeeds(newFeeds);
      }

      return ret;
    }
  }

  /**
   * Model.
   */
  public class Model extends IBMWatsonGenericModel {
    private String status_serialized_name;
    private String model_id_serialized_name;
    private String language_serialized_name;
    private String description_serialized_name;
 
    /**
     * Gets the status.
     *
     * Shows as available if the model is ready for use.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the modelId.
     *
     * Unique model ID.
     *
     * @return the modelId
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * ISO 639-1 code indicating the language of the model.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * Model description.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
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
     * Sets the modelId.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
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
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Model ret = (Model) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * RelationArgument.
   */
  public class RelationArgument extends IBMWatsonGenericModel {
    private List<RelationEntity> entities_serialized_name;
    private List<Long> location_serialized_name;
    private String text_serialized_name;
 
    /**
     * Gets the entities.
     *
     * An array of extracted entities.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<RelationEntity> getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * Character offsets indicating the beginning and end of the mention in the analyzed text.
     *
     * @return the location
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * Text that corresponds to the argument.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<RelationEntity> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final List<Long> location) {
      this.location_serialized_name = location;
    }

    /**
     * Sets the text.
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

      RelationArgument ret = (RelationArgument) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities
      List<RelationEntity> newEntities = new List<RelationEntity>();
      List<RelationEntity> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          RelationEntity currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          RelationEntity newItem = (RelationEntity) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RelationEntity.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      return ret;
    }
  }

  /**
   * An entity that corresponds with an argument in a relation.
   */
  public class RelationEntity extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String type_serialized_name;
 
    /**
     * Gets the text.
     *
     * Text that corresponds to the entity.
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
     * Entity type.
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

      RelationEntity ret = (RelationEntity) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Recognizes when two entities are related and identifies the type of relation. For example, an `awardedTo` relation
   * might connect the entities "Nobel Prize" and "Albert Einstein". See [Relation
   * types](/docs/services/natural-language-understanding/relations.html).
   *
   * Supported languages: Arabic, English, German, Japanese, Korean, Spanish. Chinese, Dutch, French, Italian, and
   * Portuguese custom models are also supported.
   */
  public class RelationsOptions {
    private String model_serialized_name;
 
    /**
     * Gets the model.
     *
     * Enter a [custom model](/docs/services/natural-language-understanding/customizing.html) ID to override the default
     * model.
     *
     * @return the model
     */
    public String model() {
      return model_serialized_name;
    }
  
    private RelationsOptions(RelationsOptionsBuilder builder) {
      model_serialized_name = builder.model;
    }

    /**
     * New builder.
     *
     * @return a RelationsOptions builder
     */
    public RelationsOptionsBuilder newBuilder() {
      return new RelationsOptionsBuilder(this);
    }

  }

  /**
   * RelationsOptions Builder.
   */
  public class RelationsOptionsBuilder {
    private String model;

    private RelationsOptionsBuilder(RelationsOptions relationsOptions) {
      model = relationsOptions.model_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public RelationsOptionsBuilder() {
    }

    /**
     * Builds a RelationsOptions.
     *
     * @return the relationsOptions
     */
    public RelationsOptions build() {
      return new RelationsOptions(this);
    }

    /**
     * Set the model.
     *
     * @param model the model
     * @return the RelationsOptions builder
     */
    public RelationsOptionsBuilder model(String model) {
      this.model = model;
      return this;
    }
  }

  /**
   * The relations between entities found in the content.
   */
  public class RelationsResult extends IBMWatsonGenericModel {
    private Double score_serialized_name;
    private String sentence_serialized_name;
    private String type_serialized_name;
    private List<RelationArgument> arguments_serialized_name;
 
    /**
     * Gets the score.
     *
     * Confidence score for the relation. Higher values indicate greater confidence.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
 
    /**
     * Gets the sentence.
     *
     * The sentence that contains the relation.
     *
     * @return the sentence
     */
    @AuraEnabled
    public String getSentence() {
      return sentence_serialized_name;
    }
 
    /**
     * Gets the xtype.
     *
     * The type of the relation.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the arguments.
     *
     * The extracted relation objects from the text.
     *
     * @return the arguments
     */
    @AuraEnabled
    public List<RelationArgument> getArguments() {
      return arguments_serialized_name;
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
     * Sets the sentence.
     *
     * @param sentence the new sentence
     */
    public void setSentence(final String sentence) {
      this.sentence_serialized_name = sentence;
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
     * Sets the arguments.
     *
     * @param arguments the new arguments
     */
    public void setArguments(final List<RelationArgument> arguments) {
      this.arguments_serialized_name = arguments;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RelationsResult ret = (RelationsResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for arguments
      List<RelationArgument> newArguments = new List<RelationArgument>();
      List<RelationArgument> deserializedArguments = ret.getArguments();
      if (deserializedArguments != null) {
        for (Integer i = 0; i < deserializedArguments.size(); i++) {
          RelationArgument currentItem = ret.getArguments().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('arguments_serialized_name');
          RelationArgument newItem = (RelationArgument) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RelationArgument.class);
          newArguments.add(newItem);
        }
        ret.setArguments(newArguments);
      }

      return ret;
    }
  }

  /**
   * SemanticRolesAction.
   */
  public class SemanticRolesAction extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String normalized_serialized_name;
    private SemanticRolesVerb verb_serialized_name;
 
    /**
     * Gets the text.
     *
     * Analyzed text that corresponds to the action.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the normalized.
     *
     * normalized version of the action.
     *
     * @return the normalized
     */
    @AuraEnabled
    public String getNormalized() {
      return normalized_serialized_name;
    }
 
    /**
     * Gets the verb.
     *
     * @return the verb
     */
    @AuraEnabled
    public SemanticRolesVerb getVerb() {
      return verb_serialized_name;
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
     * Sets the normalized.
     *
     * @param normalized the new normalized
     */
    public void setNormalized(final String normalized) {
      this.normalized_serialized_name = normalized;
    }

    /**
     * Sets the verb.
     *
     * @param verb the new verb
     */
    public void setVerb(final SemanticRolesVerb verb) {
      this.verb_serialized_name = verb;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesAction ret = (SemanticRolesAction) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for verb
      SemanticRolesVerb newVerb = (SemanticRolesVerb) new SemanticRolesVerb().deserialize(JSON.serialize(ret.getVerb()), (Map<String, Object>) jsonMap.get('verb_serialized_name'), SemanticRolesVerb.class);
      ret.setVerb(newVerb);

      return ret;
    }
  }

  /**
   * SemanticRolesEntity.
   */
  public class SemanticRolesEntity extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String text_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * Entity type.
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
     * The entity text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesEntity ret = (SemanticRolesEntity) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * SemanticRolesKeyword.
   */
  public class SemanticRolesKeyword extends IBMWatsonGenericModel {
    private String text_serialized_name;
 
    /**
     * Gets the text.
     *
     * The keyword text.
     *
     * @return the text
     */
    @AuraEnabled
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesKeyword ret = (SemanticRolesKeyword) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * SemanticRolesObject.
   */
  public class SemanticRolesObject extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private List<SemanticRolesKeyword> keywords_serialized_name;
 
    /**
     * Gets the text.
     *
     * Object text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the keywords.
     *
     * An array of extracted keywords.
     *
     * @return the keywords
     */
    @AuraEnabled
    public List<SemanticRolesKeyword> getKeywords() {
      return keywords_serialized_name;
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
     * Sets the keywords.
     *
     * @param keywords the new keywords
     */
    public void setKeywords(final List<SemanticRolesKeyword> keywords) {
      this.keywords_serialized_name = keywords;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesObject ret = (SemanticRolesObject) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for keywords
      List<SemanticRolesKeyword> newKeywords = new List<SemanticRolesKeyword>();
      List<SemanticRolesKeyword> deserializedKeywords = ret.getKeywords();
      if (deserializedKeywords != null) {
        for (Integer i = 0; i < deserializedKeywords.size(); i++) {
          SemanticRolesKeyword currentItem = ret.getKeywords().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('keywords_serialized_name');
          SemanticRolesKeyword newItem = (SemanticRolesKeyword) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SemanticRolesKeyword.class);
          newKeywords.add(newItem);
        }
        ret.setKeywords(newKeywords);
      }

      return ret;
    }
  }

  /**
   * Parses sentences into subject, action, and object form.
   *
   * Supported languages: English, German, Japanese, Korean, Spanish.
   */
  public class SemanticRolesOptions {
    private Long limit_serialized_name;
    private Boolean keywords_serialized_name;
    private Boolean entities_serialized_name;
 
    /**
     * Gets the xlimit.
     *
     * Maximum number of semantic_roles results to return.
     *
     * @return the xlimit
     */
    public Long xlimit() {
      return limit_serialized_name;
    }
 
    /**
     * Gets the keywords.
     *
     * Set this to `true` to return keyword information for subjects and objects.
     *
     * @return the keywords
     */
    public Boolean keywords() {
      return keywords_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * Set this to `true` to return entity information for subjects and objects.
     *
     * @return the entities
     */
    public Boolean entities() {
      return entities_serialized_name;
    }
  
    private SemanticRolesOptions(SemanticRolesOptionsBuilder builder) {
      limit_serialized_name = builder.xlimit;
      keywords_serialized_name = builder.keywords;
      entities_serialized_name = builder.entities;
    }

    /**
     * New builder.
     *
     * @return a SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder newBuilder() {
      return new SemanticRolesOptionsBuilder(this);
    }

  }

  /**
   * SemanticRolesOptions Builder.
   */
  public class SemanticRolesOptionsBuilder {
    private Long xlimit;
    private Boolean keywords;
    private Boolean entities;

    private SemanticRolesOptionsBuilder(SemanticRolesOptions semanticRolesOptions) {
      xlimit = semanticRolesOptions.limit_serialized_name;
      keywords = semanticRolesOptions.keywords_serialized_name;
      entities = semanticRolesOptions.entities_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public SemanticRolesOptionsBuilder() {
    }

    /**
     * Builds a SemanticRolesOptions.
     *
     * @return the semanticRolesOptions
     */
    public SemanticRolesOptions build() {
      return new SemanticRolesOptions(this);
    }

    /**
     * Set the xlimit.
     *
     * @param xlimit the xlimit
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder xlimit(Long xlimit) {
      this.xlimit = xlimit;
      return this;
    }

    /**
     * Set the keywords.
     *
     * @param keywords the keywords
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder keywords(Boolean keywords) {
      this.keywords = keywords;
      return this;
    }

    /**
     * Set the entities.
     *
     * @param entities the entities
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder entities(Boolean entities) {
      this.entities = entities;
      return this;
    }
  }

  /**
   * The object containing the actions and the objects the actions act upon.
   */
  public class SemanticRolesResult extends IBMWatsonGenericModel {
    private String sentence_serialized_name;
    private SemanticRolesSubject subject_serialized_name;
    private SemanticRolesAction action_serialized_name;
    private SemanticRolesObject object_serialized_name;
 
    /**
     * Gets the sentence.
     *
     * Sentence from the source that contains the subject, action, and object.
     *
     * @return the sentence
     */
    @AuraEnabled
    public String getSentence() {
      return sentence_serialized_name;
    }
 
    /**
     * Gets the subject.
     *
     * The extracted subject from the sentence.
     *
     * @return the subject
     */
    @AuraEnabled
    public SemanticRolesSubject getSubject() {
      return subject_serialized_name;
    }
 
    /**
     * Gets the action.
     *
     * The extracted action from the sentence.
     *
     * @return the action
     */
    @AuraEnabled
    public SemanticRolesAction getAction() {
      return action_serialized_name;
    }
 
    /**
     * Gets the xobject.
     *
     * The extracted object from the sentence.
     *
     * @return the xobject
     */
    @AuraEnabled
    public SemanticRolesObject getXobject() {
      return object_serialized_name;
    }

    /**
     * Sets the sentence.
     *
     * @param sentence the new sentence
     */
    public void setSentence(final String sentence) {
      this.sentence_serialized_name = sentence;
    }

    /**
     * Sets the subject.
     *
     * @param subject the new subject
     */
    public void setSubject(final SemanticRolesSubject subject) {
      this.subject_serialized_name = subject;
    }

    /**
     * Sets the action.
     *
     * @param action the new action
     */
    public void setAction(final SemanticRolesAction action) {
      this.action_serialized_name = action;
    }

    /**
     * Sets the xobject.
     *
     * @param xobject the new xobject
     */
    public void setXobject(final SemanticRolesObject xobject) {
      this.object_serialized_name = xobject;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesResult ret = (SemanticRolesResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for subject
      SemanticRolesSubject newSubject = (SemanticRolesSubject) new SemanticRolesSubject().deserialize(JSON.serialize(ret.getSubject()), (Map<String, Object>) jsonMap.get('subject_serialized_name'), SemanticRolesSubject.class);
      ret.setSubject(newSubject);

      // calling custom deserializer for action
      SemanticRolesAction newAction = (SemanticRolesAction) new SemanticRolesAction().deserialize(JSON.serialize(ret.getAction()), (Map<String, Object>) jsonMap.get('action_serialized_name'), SemanticRolesAction.class);
      ret.setAction(newAction);

      // calling custom deserializer for xobject
      SemanticRolesObject newXobject = (SemanticRolesObject) new SemanticRolesObject().deserialize(JSON.serialize(ret.getXobject()), (Map<String, Object>) jsonMap.get('object_serialized_name'), SemanticRolesObject.class);
      ret.setXobject(newXobject);

      return ret;
    }
  }

  /**
   * SemanticRolesSubject.
   */
  public class SemanticRolesSubject extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private List<SemanticRolesEntity> entities_serialized_name;
    private List<SemanticRolesKeyword> keywords_serialized_name;
 
    /**
     * Gets the text.
     *
     * Text that corresponds to the subject role.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * An array of extracted entities.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<SemanticRolesEntity> getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the keywords.
     *
     * An array of extracted keywords.
     *
     * @return the keywords
     */
    @AuraEnabled
    public List<SemanticRolesKeyword> getKeywords() {
      return keywords_serialized_name;
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
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<SemanticRolesEntity> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the keywords.
     *
     * @param keywords the new keywords
     */
    public void setKeywords(final List<SemanticRolesKeyword> keywords) {
      this.keywords_serialized_name = keywords;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesSubject ret = (SemanticRolesSubject) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities
      List<SemanticRolesEntity> newEntities = new List<SemanticRolesEntity>();
      List<SemanticRolesEntity> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          SemanticRolesEntity currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          SemanticRolesEntity newItem = (SemanticRolesEntity) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SemanticRolesEntity.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      // calling custom deserializer for keywords
      List<SemanticRolesKeyword> newKeywords = new List<SemanticRolesKeyword>();
      List<SemanticRolesKeyword> deserializedKeywords = ret.getKeywords();
      if (deserializedKeywords != null) {
        for (Integer i = 0; i < deserializedKeywords.size(); i++) {
          SemanticRolesKeyword currentItem = ret.getKeywords().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('keywords_serialized_name');
          SemanticRolesKeyword newItem = (SemanticRolesKeyword) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SemanticRolesKeyword.class);
          newKeywords.add(newItem);
        }
        ret.setKeywords(newKeywords);
      }

      return ret;
    }
  }

  /**
   * SemanticRolesVerb.
   */
  public class SemanticRolesVerb extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String tense_serialized_name;
 
    /**
     * Gets the text.
     *
     * The keyword text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the tense.
     *
     * Verb tense.
     *
     * @return the tense
     */
    @AuraEnabled
    public String getTense() {
      return tense_serialized_name;
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
     * Sets the tense.
     *
     * @param tense the new tense
     */
    public void setTense(final String tense) {
      this.tense_serialized_name = tense;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesVerb ret = (SemanticRolesVerb) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Analyzes the general sentiment of your content or the sentiment toward specific target phrases. You can analyze
   * sentiment for detected entities with `entities.sentiment` and for keywords with `keywords.sentiment`.
   *
   *  Supported languages: Arabic, English, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish.
   */
  public class SentimentOptions {
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;
 
    /**
     * Gets the document.
     *
     * Set this to `false` to hide document-level sentiment results.
     *
     * @return the document
     */
    public Boolean document() {
      return document_serialized_name;
    }
 
    /**
     * Gets the targets.
     *
     * Sentiment results will be returned for each target string that is found in the document.
     *
     * @return the targets
     */
    public List<String> targets() {
      return targets_serialized_name;
    }
  
    private SentimentOptions(SentimentOptionsBuilder builder) {
      document_serialized_name = builder.document;
      targets_serialized_name = builder.targets;
    }

    /**
     * New builder.
     *
     * @return a SentimentOptions builder
     */
    public SentimentOptionsBuilder newBuilder() {
      return new SentimentOptionsBuilder(this);
    }

  }

  /**
   * SentimentOptions Builder.
   */
  public class SentimentOptionsBuilder {
    private Boolean document;
    private List<String> targets;

    private SentimentOptionsBuilder(SentimentOptions sentimentOptions) {
      document = sentimentOptions.document_serialized_name;
      targets = sentimentOptions.targets_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public SentimentOptionsBuilder() {
    }

    /**
     * Builds a SentimentOptions.
     *
     * @return the sentimentOptions
     */
    public SentimentOptions build() {
      return new SentimentOptions(this);
    }

    /**
     * Adds an targets to targets.
     *
     * @param targets the new targets
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder addTargets(String targets) {
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
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder document(Boolean document) {
      this.document = document;
      return this;
    }

    /**
     * Set the targets.
     * Existing targets will be replaced.
     *
     * @param targets the targets
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder targets(List<String> targets) {
      this.targets = targets;
      return this;
    }
  }

  /**
   * The sentiment of the content.
   */
  public class SentimentResult extends IBMWatsonGenericModel {
    private DocumentSentimentResults document_serialized_name;
    private List<TargetedSentimentResults> targets_serialized_name;
 
    /**
     * Gets the document.
     *
     * The document level sentiment.
     *
     * @return the document
     */
    @AuraEnabled
    public DocumentSentimentResults getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the targets.
     *
     * The targeted sentiment to analyze.
     *
     * @return the targets
     */
    @AuraEnabled
    public List<TargetedSentimentResults> getTargets() {
      return targets_serialized_name;
    }

    /**
     * Sets the document.
     *
     * @param document the new document
     */
    public void setDocument(final DocumentSentimentResults document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the targets.
     *
     * @param targets the new targets
     */
    public void setTargets(final List<TargetedSentimentResults> targets) {
      this.targets_serialized_name = targets;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SentimentResult ret = (SentimentResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for document
      DocumentSentimentResults newDocument = (DocumentSentimentResults) new DocumentSentimentResults().deserialize(JSON.serialize(ret.getDocument()), (Map<String, Object>) jsonMap.get('document_serialized_name'), DocumentSentimentResults.class);
      ret.setDocument(newDocument);

      // calling custom deserializer for targets
      List<TargetedSentimentResults> newTargets = new List<TargetedSentimentResults>();
      List<TargetedSentimentResults> deserializedTargets = ret.getTargets();
      if (deserializedTargets != null) {
        for (Integer i = 0; i < deserializedTargets.size(); i++) {
          TargetedSentimentResults currentItem = ret.getTargets().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('targets_serialized_name');
          TargetedSentimentResults newItem = (TargetedSentimentResults) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TargetedSentimentResults.class);
          newTargets.add(newItem);
        }
        ret.setTargets(newTargets);
      }

      return ret;
    }
  }

  /**
   * An object containing the emotion results for the target.
   */
  public class TargetedEmotionResults extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private EmotionScores emotion_serialized_name;
 
    /**
     * Gets the text.
     *
     * Targeted text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the emotion.
     *
     * An object containing the emotion results for the target.
     *
     * @return the emotion
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
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
     * Sets the emotion.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionScores emotion) {
      this.emotion_serialized_name = emotion;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TargetedEmotionResults ret = (TargetedEmotionResults) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for emotion
      EmotionScores newEmotion = (EmotionScores) new EmotionScores().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionScores.class);
      ret.setEmotion(newEmotion);

      return ret;
    }
  }

  /**
   * TargetedSentimentResults.
   */
  public class TargetedSentimentResults extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private Double score_serialized_name;
 
    /**
     * Gets the text.
     *
     * Targeted text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the score.
     *
     * Sentiment score from -1 (negative) to 1 (positive).
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
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
     * Sets the score.
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

      TargetedSentimentResults ret = (TargetedSentimentResults) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Usage information.
   */
  public class Usage extends IBMWatsonGenericModel {
    private Long features_serialized_name;
    private Long text_characters_serialized_name;
    private Long text_units_serialized_name;
 
    /**
     * Gets the features.
     *
     * Number of features used in the API call.
     *
     * @return the features
     */
    @AuraEnabled
    public Long getFeatures() {
      return features_serialized_name;
    }
 
    /**
     * Gets the textCharacters.
     *
     * Number of text characters processed.
     *
     * @return the textCharacters
     */
    @AuraEnabled
    public Long getTextCharacters() {
      return text_characters_serialized_name;
    }
 
    /**
     * Gets the textUnits.
     *
     * Number of 10,000-character units processed.
     *
     * @return the textUnits
     */
    @AuraEnabled
    public Long getTextUnits() {
      return text_units_serialized_name;
    }

    /**
     * Sets the features.
     *
     * @param features the new features
     */
    public void setFeatures(final long features) {
      this.features_serialized_name = features;
    }

    /**
     * Sets the textCharacters.
     *
     * @param textCharacters the new textCharacters
     */
    public void setTextCharacters(final long textCharacters) {
      this.text_characters_serialized_name = textCharacters;
    }

    /**
     * Sets the textUnits.
     *
     * @param textUnits the new textUnits
     */
    public void setTextUnits(final long textUnits) {
      this.text_units_serialized_name = textUnits;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Usage ret = (Usage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

}
