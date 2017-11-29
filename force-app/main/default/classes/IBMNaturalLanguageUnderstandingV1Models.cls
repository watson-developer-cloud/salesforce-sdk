public class IBMNaturalLanguageUnderstandingV1Models {
  /**
   * Results of the analysis, organized by feature.
   */
  public class AnalysisResults extends IBMWatsonGenericModel {
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
     * Gets the language_serialized_name.
     *
     * Language used to analyze the text.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the analyzed_text_serialized_name.
     *
     * Text that was used in the analysis.
     *
     * @return the analyzed_text_serialized_name
     */
    @AuraEnabled
    public String getAnalyzedText() {
      return analyzed_text_serialized_name;
    }
    /**
     * Gets the retrieved_url_serialized_name.
     *
     * URL that was used to retrieve HTML content.
     *
     * @return the retrieved_url_serialized_name
     */
    @AuraEnabled
    public String getRetrievedUrl() {
      return retrieved_url_serialized_name;
    }
    /**
     * Gets the usage_serialized_name.
     *
     * API usage information for the request.
     *
     * @return the usage_serialized_name
     */
    @AuraEnabled
    public Usage getUsage() {
      return usage_serialized_name;
    }
    /**
     * Gets the concepts_serialized_name.
     *
     * The general concepts referenced or alluded to in the specified content.
     *
     * @return the concepts_serialized_name
     */
    @AuraEnabled
    public List<ConceptsResult> getConcepts() {
      return concepts_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * The important entities in the specified content.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<EntitiesResult> getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the keywords_serialized_name.
     *
     * The important keywords in content organized by relevance.
     *
     * @return the keywords_serialized_name
     */
    @AuraEnabled
    public List<KeywordsResult> getKeywords() {
      return keywords_serialized_name;
    }
    /**
     * Gets the categories_serialized_name.
     *
     * The hierarchical 5-level taxonomy the content is categorized into.
     *
     * @return the categories_serialized_name
     */
    @AuraEnabled
    public List<CategoriesResult> getCategories() {
      return categories_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * The anger, disgust, fear, joy, or sadness conveyed by the content.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public EmotionResult getEmotion() {
      return emotion_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * The metadata holds author information, publication date and the title of the text/HTML content.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public MetadataResult getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the relations_serialized_name.
     *
     * The relationships between entities in the content.
     *
     * @return the relations_serialized_name
     */
    @AuraEnabled
    public List<RelationsResult> getRelations() {
      return relations_serialized_name;
    }
    /**
     * Gets the semantic_roles_serialized_name.
     *
     * The subjects of actions and the objects the actions act upon.
     *
     * @return the semantic_roles_serialized_name
     */
    @AuraEnabled
    public List<SemanticRolesResult> getSemanticRoles() {
      return semantic_roles_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * The sentiment of the content.
     *
     * @return the sentiment_serialized_name
     */
    @AuraEnabled
    public SentimentResult getSentiment() {
      return sentiment_serialized_name;
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
     * Sets the analyzed_text_serialized_name.
     *
     * @param analyzedText the new analyzedText
     */
    public void setAnalyzedText(final String analyzedText) {
      this.analyzed_text_serialized_name = analyzedText;
    }

    /**
     * Sets the retrieved_url_serialized_name.
     *
     * @param retrievedUrl the new retrievedUrl
     */
    public void setRetrievedUrl(final String retrievedUrl) {
      this.retrieved_url_serialized_name = retrievedUrl;
    }

    /**
     * Sets the usage_serialized_name.
     *
     * @param usage the new usage
     */
    public void setUsage(final Usage usage) {
      this.usage_serialized_name = usage;
    }

    /**
     * Sets the concepts_serialized_name.
     *
     * @param concepts the new concepts
     */
    public void setConcepts(final List<ConceptsResult> concepts) {
      this.concepts_serialized_name = concepts;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntitiesResult> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the keywords_serialized_name.
     *
     * @param keywords the new keywords
     */
    public void setKeywords(final List<KeywordsResult> keywords) {
      this.keywords_serialized_name = keywords;
    }

    /**
     * Sets the categories_serialized_name.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<CategoriesResult> categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionResult emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final MetadataResult metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the relations_serialized_name.
     *
     * @param relations the new relations
     */
    public void setRelations(final List<RelationsResult> relations) {
      this.relations_serialized_name = relations;
    }

    /**
     * Sets the semantic_roles_serialized_name.
     *
     * @param semanticRoles the new semanticRoles
     */
    public void setSemanticRoles(final List<SemanticRolesResult> semanticRoles) {
      this.semantic_roles_serialized_name = semanticRoles;
    }

    /**
     * Sets the sentiment_serialized_name.
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

      // calling custom deserializer for usage_serialized_name
      Usage newUsage = (Usage) new Usage().deserialize(JSON.serialize(ret.getUsage()), (Map<String, Object>) jsonMap.get('usage_serialized_name'), Usage.class);
      ret.setUsage(newUsage);

      // calling custom deserializer for concepts_serialized_name
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

      // calling custom deserializer for entities_serialized_name
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

      // calling custom deserializer for keywords_serialized_name
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

      // calling custom deserializer for categories_serialized_name
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

      // calling custom deserializer for emotion_serialized_name
      EmotionResult newEmotion = (EmotionResult) new EmotionResult().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionResult.class);
      ret.setEmotion(newEmotion);

      // calling custom deserializer for metadata_serialized_name
      MetadataResult newMetadata = (MetadataResult) new MetadataResult().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), MetadataResult.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for relations_serialized_name
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

      // calling custom deserializer for semantic_roles_serialized_name
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

      // calling custom deserializer for sentiment_serialized_name
      SentimentResult newSentiment = (SentimentResult) new SentimentResult().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), SentimentResult.class);
      ret.setSentiment(newSentiment);

      return ret;
    }
  }

  /**
   * The analyze options.
   */
  public class AnalyzeOptions {
    private String text_serialized_name;
    private String html_serialized_name;
    private String url_serialized_name;
    private Features features_serialized_name;
    private Boolean clean_serialized_name;
    private String xpath_serialized_name;
    private Boolean fallback_to_raw_serialized_name;
    private Boolean return_analyzed_text_serialized_name;
    private String language_serialized_name;
    private Long limit_text_characters_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The plain text to analyze.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the html_serialized_name.
     *
     * The HTML file to analyze.
     *
     * @return the html_serialized_name
     */
    public String html() {
      return html_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * The web page to analyze.
     *
     * @return the url_serialized_name
     */
    public String url() {
      return url_serialized_name;
    }
    /**
     * Gets the features_serialized_name.
     *
     * Specific features to analyze the document for.
     *
     * @return the features_serialized_name
     */
    public Features features() {
      return features_serialized_name;
    }
    /**
     * Gets the clean_serialized_name.
     *
     * Remove website elements, such as links, ads, etc.
     *
     * @return the clean_serialized_name
     */
    public Boolean clean() {
      return clean_serialized_name;
    }
    /**
     * Gets the xpath_serialized_name.
     *
     * XPath query for targeting nodes in HTML.
     *
     * @return the xpath_serialized_name
     */
    public String xpath() {
      return xpath_serialized_name;
    }
    /**
     * Gets the fallback_to_raw_serialized_name.
     *
     * Whether to use raw HTML content if text cleaning fails.
     *
     * @return the fallback_to_raw_serialized_name
     */
    public Boolean fallbackToRaw() {
      return fallback_to_raw_serialized_name;
    }
    /**
     * Gets the return_analyzed_text_serialized_name.
     *
     * Whether or not to return the analyzed text.
     *
     * @return the return_analyzed_text_serialized_name
     */
    public Boolean returnAnalyzedText() {
      return return_analyzed_text_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * ISO 639-1 code indicating the language to use in the analysis.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    /**
     * Gets the limit_text_characters_serialized_name.
     *
     * Sets the maximum number of characters that are processed by the service.
     *
     * @return the limit_text_characters_serialized_name
     */
    public Long limitTextCharacters() {
      return limit_text_characters_serialized_name;
    }
    private AnalyzeOptions(AnalyzeOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.features_serialized_name, 'features_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
      html_serialized_name = builder.html_serialized_name;
      url_serialized_name = builder.url_serialized_name;
      features_serialized_name = builder.features_serialized_name;
      clean_serialized_name = builder.clean_serialized_name;
      xpath_serialized_name = builder.xpath_serialized_name;
      fallback_to_raw_serialized_name = builder.fallback_to_raw_serialized_name;
      return_analyzed_text_serialized_name = builder.return_analyzed_text_serialized_name;
      language_serialized_name = builder.language_serialized_name;
      limit_text_characters_serialized_name = builder.limit_text_characters_serialized_name;
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
  public class AnalyzeOptionsBuilder {
    private String text_serialized_name;
    private String html_serialized_name;
    private String url_serialized_name;
    private Features features_serialized_name;
    private Boolean clean_serialized_name;
    private String xpath_serialized_name;
    private Boolean fallback_to_raw_serialized_name;
    private Boolean return_analyzed_text_serialized_name;
    private String language_serialized_name;
    private Long limit_text_characters_serialized_name;

    private AnalyzeOptionsBuilder(AnalyzeOptions analyzeOptions) {
      text_serialized_name = analyzeOptions.text_serialized_name;
      html_serialized_name = analyzeOptions.html_serialized_name;
      url_serialized_name = analyzeOptions.url_serialized_name;
      features_serialized_name = analyzeOptions.features_serialized_name;
      clean_serialized_name = analyzeOptions.clean_serialized_name;
      xpath_serialized_name = analyzeOptions.xpath_serialized_name;
      fallback_to_raw_serialized_name = analyzeOptions.fallback_to_raw_serialized_name;
      return_analyzed_text_serialized_name = analyzeOptions.return_analyzed_text_serialized_name;
      language_serialized_name = analyzeOptions.language_serialized_name;
      limit_text_characters_serialized_name = analyzeOptions.limit_text_characters_serialized_name;
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
      this.features_serialized_name = features;
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
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the html_serialized_name.
     *
     * @param html the html
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder html(String html) {
      this.html_serialized_name = html;
      return this;
    }

    /**
     * Set the url_serialized_name.
     *
     * @param url the url
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder url(String url) {
      this.url_serialized_name = url;
      return this;
    }

    /**
     * Set the features_serialized_name.
     *
     * @param features the features
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder features(Features features) {
      this.features_serialized_name = features;
      return this;
    }

    /**
     * Set the clean_serialized_name.
     *
     * @param clean the clean
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder clean(Boolean clean) {
      this.clean_serialized_name = clean;
      return this;
    }

    /**
     * Set the xpath_serialized_name.
     *
     * @param xpath the xpath
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder xpath(String xpath) {
      this.xpath_serialized_name = xpath;
      return this;
    }

    /**
     * Set the fallback_to_raw_serialized_name.
     *
     * @param fallbackToRaw the fallbackToRaw
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder fallbackToRaw(Boolean fallbackToRaw) {
      this.fallback_to_raw_serialized_name = fallbackToRaw;
      return this;
    }

    /**
     * Set the return_analyzed_text_serialized_name.
     *
     * @param returnAnalyzedText the returnAnalyzedText
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder returnAnalyzedText(Boolean returnAnalyzedText) {
      this.return_analyzed_text_serialized_name = returnAnalyzedText;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }

    /**
     * Set the limit_text_characters_serialized_name.
     *
     * @param limitTextCharacters the limitTextCharacters
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder limitTextCharacters(Long limitTextCharacters) {
      this.limit_text_characters_serialized_name = limitTextCharacters;
      return this;
    }
  }

  /**
   * The author of the analyzed content.
   */
  public class Author extends IBMWatsonGenericModel {
    private String name_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * Name of the author.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
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

      Author ret = (Author) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The hierarchical 5-level taxonomy the content is categorized into.
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CategoriesOptions ret = (CategoriesOptions) super.deserialize(jsonString, jsonMap, classType);

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
   * The hierarchical 5-level taxonomy the content is categorized into.
   */
  public class CategoriesResult extends IBMWatsonGenericModel {
    private String label_serialized_name;
    private Double score_serialized_name;
    /**
     * Gets the label_serialized_name.
     *
     * The path to the category through the taxonomy hierarchy.
     *
     * @return the label_serialized_name
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
    }
    /**
     * Gets the score_serialized_name.
     *
     * Confidence score for the category classification. Higher values indicate greater confidence.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the label_serialized_name.
     *
     * @param label the new label
     */
    public void setLabel(final String label) {
      this.label_serialized_name = label;
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

      CategoriesResult ret = (CategoriesResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Whether or not to analyze content for general concepts that are referenced or alluded to.
   */
  public class ConceptsOptions {
    private Long limit_serialized_name;
    /**
     * Gets the limit_serialized_name.
     *
     * Maximum number of concepts to return.
     *
     * @return the limit_serialized_name
     */
    public Long limitField() {
      return limit_serialized_name;
    }
    private ConceptsOptions(ConceptsOptionsBuilder builder) {
      limit_serialized_name = builder.limit_serialized_name;
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
    private Long limit_serialized_name;

    private ConceptsOptionsBuilder(ConceptsOptions conceptsOptions) {
      limit_serialized_name = conceptsOptions.limit_serialized_name;
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
     * Set the limit_serialized_name.
     *
     * @param limitVar the limitVar
     * @return the ConceptsOptions builder
     */
    public ConceptsOptionsBuilder limitField(Long limitVar) {
      this.limit_serialized_name = limitVar;
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
     * Gets the text_serialized_name.
     *
     * Name of the concept.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the relevance_serialized_name.
     *
     * Relevance score between 0 and 1. Higher scores indicate greater relevance.
     *
     * @return the relevance_serialized_name
     */
    @AuraEnabled
    public Double getRelevance() {
      return relevance_serialized_name;
    }
    /**
     * Gets the dbpedia_resource_serialized_name.
     *
     * Link to the corresponding DBpedia resource.
     *
     * @return the dbpedia_resource_serialized_name
     */
    @AuraEnabled
    public String getDbpediaResource() {
      return dbpedia_resource_serialized_name;
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
     * Sets the relevance_serialized_name.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final Double relevance) {
      this.relevance_serialized_name = relevance;
    }

    /**
     * Sets the dbpedia_resource_serialized_name.
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
  public class DeleteModelOptions {
    private String model_id_serialized_name;
    /**
     * Gets the model_id_serialized_name.
     *
     * model_id of the model to delete.
     *
     * @return the model_id_serialized_name
     */
    public String modelId() {
      return model_id_serialized_name;
    }
    private DeleteModelOptions(DeleteModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.model_id_serialized_name, 'model_id_serialized_name cannot be empty');
      model_id_serialized_name = builder.model_id_serialized_name;
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
  public class DeleteModelOptionsBuilder {
    private String model_id_serialized_name;

    private DeleteModelOptionsBuilder(DeleteModelOptions deleteModelOptions) {
      model_id_serialized_name = deleteModelOptions.model_id_serialized_name;
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
      this.model_id_serialized_name = modelId;
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
     * Set the model_id_serialized_name.
     *
     * @param modelId the modelId
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder modelId(String modelId) {
      this.model_id_serialized_name = modelId;
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
     * Gets the name_serialized_name.
     *
     * Common entity name.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the dbpedia_resource_serialized_name.
     *
     * Link to the corresponding DBpedia resource.
     *
     * @return the dbpedia_resource_serialized_name
     */
    @AuraEnabled
    public String getDbpediaResource() {
      return dbpedia_resource_serialized_name;
    }
    /**
     * Gets the subtype_serialized_name.
     *
     * Entity subtype information.
     *
     * @return the subtype_serialized_name
     */
    @AuraEnabled
    public List<String> getSubtype() {
      return subtype_serialized_name;
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
     * Sets the dbpedia_resource_serialized_name.
     *
     * @param dbpediaResource the new dbpediaResource
     */
    public void setDbpediaResource(final String dbpediaResource) {
      this.dbpedia_resource_serialized_name = dbpediaResource;
    }

    /**
     * Sets the subtype_serialized_name.
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
     * Gets the emotion_serialized_name.
     *
     * An object containing the emotion results for the document.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
    }

    /**
     * Sets the emotion_serialized_name.
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

      // calling custom deserializer for emotion_serialized_name
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
     * Gets the label_serialized_name.
     *
     * Indicates whether the sentiment is positive, neutral, or negative.
     *
     * @return the label_serialized_name
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
    }
    /**
     * Gets the score_serialized_name.
     *
     * Sentiment score from -1 (negative) to 1 (positive).
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the label_serialized_name.
     *
     * @param label the new label
     */
    public void setLabel(final String label) {
      this.label_serialized_name = label;
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

      DocumentSentimentResults ret = (DocumentSentimentResults) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Whether or not to return emotion analysis of the content.
   */
  public class EmotionOptions {
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;
    /**
     * Gets the document_serialized_name.
     *
     * Set this to false to hide document-level emotion results.
     *
     * @return the document_serialized_name
     */
    public Boolean document() {
      return document_serialized_name;
    }
    /**
     * Gets the targets_serialized_name.
     *
     * Emotion results will be returned for each target string that is found in the document.
     *
     * @return the targets_serialized_name
     */
    public List<String> targets() {
      return targets_serialized_name;
    }
    private EmotionOptions(EmotionOptionsBuilder builder) {
      document_serialized_name = builder.document_serialized_name;
      targets_serialized_name = builder.targets_serialized_name;
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
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;

    private EmotionOptionsBuilder(EmotionOptions emotionOptions) {
      document_serialized_name = emotionOptions.document_serialized_name;
      targets_serialized_name = emotionOptions.targets_serialized_name;
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
     * Adds an targets to targets_serialized_name.
     *
     * @param targets the new targets
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder addTargets(String targets) {
      IBMWatsonValidator.notNull(targets, 'targets cannot be null');
      if (this.targets_serialized_name == null) {
        this.targets_serialized_name = new List<String>();
      }
      this.targets_serialized_name.add(targets);
      return this;
    }

    /**
     * Set the document_serialized_name.
     *
     * @param document the document
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder document(Boolean document) {
      this.document_serialized_name = document;
      return this;
    }

    /**
     * Set the targets_serialized_name.
     * Existing targets_serialized_name will be replaced.
     *
     * @param targets the targets
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder targets(List<String> targets) {
      this.targets_serialized_name = targets;
      return this;
    }
  }

  /**
   * The detected anger, disgust, fear, joy, or sadness that is conveyed by the content. Emotion information can be returned for detected entities, keywords, or user-specified target phrases found in the text.
   */
  public class EmotionResult extends IBMWatsonGenericModel {
    private DocumentEmotionResults document_serialized_name;
    private List<TargetedEmotionResults> targets_serialized_name;
    /**
     * Gets the document_serialized_name.
     *
     * The returned emotion results across the document.
     *
     * @return the document_serialized_name
     */
    @AuraEnabled
    public DocumentEmotionResults getDocument() {
      return document_serialized_name;
    }
    /**
     * Gets the targets_serialized_name.
     *
     * The returned emotion results per specified target.
     *
     * @return the targets_serialized_name
     */
    @AuraEnabled
    public List<TargetedEmotionResults> getTargets() {
      return targets_serialized_name;
    }

    /**
     * Sets the document_serialized_name.
     *
     * @param document the new document
     */
    public void setDocument(final DocumentEmotionResults document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the targets_serialized_name.
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

      // calling custom deserializer for document_serialized_name
      DocumentEmotionResults newDocument = (DocumentEmotionResults) new DocumentEmotionResults().deserialize(JSON.serialize(ret.getDocument()), (Map<String, Object>) jsonMap.get('document_serialized_name'), DocumentEmotionResults.class);
      ret.setDocument(newDocument);

      // calling custom deserializer for targets_serialized_name
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
     * Gets the anger_serialized_name.
     *
     * Anger score from 0 to 1. A higher score means that the text is more likely to convey anger.
     *
     * @return the anger_serialized_name
     */
    @AuraEnabled
    public Double getAnger() {
      return anger_serialized_name;
    }
    /**
     * Gets the disgust_serialized_name.
     *
     * Disgust score from 0 to 1. A higher score means that the text is more likely to convey disgust.
     *
     * @return the disgust_serialized_name
     */
    @AuraEnabled
    public Double getDisgust() {
      return disgust_serialized_name;
    }
    /**
     * Gets the fear_serialized_name.
     *
     * Fear score from 0 to 1. A higher score means that the text is more likely to convey fear.
     *
     * @return the fear_serialized_name
     */
    @AuraEnabled
    public Double getFear() {
      return fear_serialized_name;
    }
    /**
     * Gets the joy_serialized_name.
     *
     * Joy score from 0 to 1. A higher score means that the text is more likely to convey joy.
     *
     * @return the joy_serialized_name
     */
    @AuraEnabled
    public Double getJoy() {
      return joy_serialized_name;
    }
    /**
     * Gets the sadness_serialized_name.
     *
     * Sadness score from 0 to 1. A higher score means that the text is more likely to convey sadness.
     *
     * @return the sadness_serialized_name
     */
    @AuraEnabled
    public Double getSadness() {
      return sadness_serialized_name;
    }

    /**
     * Sets the anger_serialized_name.
     *
     * @param anger the new anger
     */
    public void setAnger(final Double anger) {
      this.anger_serialized_name = anger;
    }

    /**
     * Sets the disgust_serialized_name.
     *
     * @param disgust the new disgust
     */
    public void setDisgust(final Double disgust) {
      this.disgust_serialized_name = disgust;
    }

    /**
     * Sets the fear_serialized_name.
     *
     * @param fear the new fear
     */
    public void setFear(final Double fear) {
      this.fear_serialized_name = fear;
    }

    /**
     * Sets the joy_serialized_name.
     *
     * @param joy the new joy
     */
    public void setJoy(final Double joy) {
      this.joy_serialized_name = joy;
    }

    /**
     * Sets the sadness_serialized_name.
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
   * Whether or not to return important people, places, geopolitical, and other entities detected in the analyzed content.
   */
  public class EntitiesOptions {
    private Long limit_serialized_name;
    private String model_serialized_name;
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;
    /**
     * Gets the limit_serialized_name.
     *
     * Maximum number of entities to return.
     *
     * @return the limit_serialized_name
     */
    public Long limitField() {
      return limit_serialized_name;
    }
    /**
     * Gets the model_serialized_name.
     *
     * Enter a custom model ID to override the standard entity detection model.
     *
     * @return the model_serialized_name
     */
    public String model() {
      return model_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * Set this to true to return sentiment information for detected entities.
     *
     * @return the sentiment_serialized_name
     */
    public Boolean sentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * Set this to true to analyze emotion for detected keywords.
     *
     * @return the emotion_serialized_name
     */
    public Boolean emotion() {
      return emotion_serialized_name;
    }
    private EntitiesOptions(EntitiesOptionsBuilder builder) {
      limit_serialized_name = builder.limit_serialized_name;
      model_serialized_name = builder.model_serialized_name;
      sentiment_serialized_name = builder.sentiment_serialized_name;
      emotion_serialized_name = builder.emotion_serialized_name;
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
    private Long limit_serialized_name;
    private String model_serialized_name;
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;

    private EntitiesOptionsBuilder(EntitiesOptions entitiesOptions) {
      limit_serialized_name = entitiesOptions.limit_serialized_name;
      model_serialized_name = entitiesOptions.model_serialized_name;
      sentiment_serialized_name = entitiesOptions.sentiment_serialized_name;
      emotion_serialized_name = entitiesOptions.emotion_serialized_name;
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
     * Set the limit_serialized_name.
     *
     * @param limitVar the limitVar
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder limitField(Long limitVar) {
      this.limit_serialized_name = limitVar;
      return this;
    }

    /**
     * Set the model_serialized_name.
     *
     * @param model the model
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder model(String model) {
      this.model_serialized_name = model;
      return this;
    }

    /**
     * Set the sentiment_serialized_name.
     *
     * @param sentiment the sentiment
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder sentiment(Boolean sentiment) {
      this.sentiment_serialized_name = sentiment;
      return this;
    }

    /**
     * Set the emotion_serialized_name.
     *
     * @param emotion the emotion
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder emotion(Boolean emotion) {
      this.emotion_serialized_name = emotion;
      return this;
    }
  }

  /**
   * The important people, places, geopolitical entities and other types of entities in your content.
   */
  public class EntitiesResult extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private Double relevance_serialized_name;
    private Long count_serialized_name;
    private String text_serialized_name;
    private EmotionScores emotion_serialized_name;
    private FeatureSentimentResults sentiment_serialized_name;
    private DisambiguationResult disambiguation_serialized_name;
    /**
     * Gets the type_serialized_name.
     *
     * Entity type.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the relevance_serialized_name.
     *
     * Relevance score from 0 to 1. Higher values indicate greater relevance.
     *
     * @return the relevance_serialized_name
     */
    @AuraEnabled
    public Double getRelevance() {
      return relevance_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * How many times the entity was mentioned in the text.
     *
     * @return the count_serialized_name
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The name of the entity.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * Emotion analysis results for the entity, enabled with the "emotion" option.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * Sentiment analysis results for the entity, enabled with the "sentiment" option.
     *
     * @return the sentiment_serialized_name
     */
    @AuraEnabled
    public FeatureSentimentResults getSentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the disambiguation_serialized_name.
     *
     * Disambiguation information for the entity.
     *
     * @return the disambiguation_serialized_name
     */
    @AuraEnabled
    public DisambiguationResult getDisambiguation() {
      return disambiguation_serialized_name;
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
     * Sets the relevance_serialized_name.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final Double relevance) {
      this.relevance_serialized_name = relevance;
    }

    /**
     * Sets the count_serialized_name.
     *
     * @param count the new count
     */
    public void setCount(final long count) {
      this.count_serialized_name = count;
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
     * Sets the emotion_serialized_name.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionScores emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment the new sentiment
     */
    public void setSentiment(final FeatureSentimentResults sentiment) {
      this.sentiment_serialized_name = sentiment;
    }

    /**
     * Sets the disambiguation_serialized_name.
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

      // calling custom deserializer for emotion_serialized_name
      EmotionScores newEmotion = (EmotionScores) new EmotionScores().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionScores.class);
      ret.setEmotion(newEmotion);

      // calling custom deserializer for sentiment_serialized_name
      FeatureSentimentResults newSentiment = (FeatureSentimentResults) new FeatureSentimentResults().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), FeatureSentimentResults.class);
      ret.setSentiment(newSentiment);

      // calling custom deserializer for disambiguation_serialized_name
      DisambiguationResult newDisambiguation = (DisambiguationResult) new DisambiguationResult().deserialize(JSON.serialize(ret.getDisambiguation()), (Map<String, Object>) jsonMap.get('disambiguation_serialized_name'), DisambiguationResult.class);
      ret.setDisambiguation(newDisambiguation);

      return ret;
    }
  }

  /**
   * FeatureSentimentResults.
   */
  public class FeatureSentimentResults extends IBMWatsonGenericModel {
    private Double score_serialized_name;
    /**
     * Gets the score_serialized_name.
     *
     * Sentiment score from -1 (negative) to 1 (positive).
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
     * Gets the concepts_serialized_name.
     *
     * Whether or not to return the concepts that are mentioned in the analyzed text.
     *
     * @return the concepts_serialized_name
     */
    public ConceptsOptions concepts() {
      return concepts_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * Whether or not to extract the emotions implied in the analyzed text.
     *
     * @return the emotion_serialized_name
     */
    public EmotionOptions emotion() {
      return emotion_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * Whether or not to extract detected entity objects from the analyzed text.
     *
     * @return the entities_serialized_name
     */
    public EntitiesOptions entities() {
      return entities_serialized_name;
    }
    /**
     * Gets the keywords_serialized_name.
     *
     * Whether or not to return the keywords in the analyzed text.
     *
     * @return the keywords_serialized_name
     */
    public KeywordsOptions keywords() {
      return keywords_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Whether or not the author, publication date, and title of the analyzed text should be returned. This parameter is only available for URL and HTML input.
     *
     * @return the metadata_serialized_name
     */
    public MetadataOptions metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the relations_serialized_name.
     *
     * Whether or not to return the relationships between detected entities in the analyzed text.
     *
     * @return the relations_serialized_name
     */
    public RelationsOptions relations() {
      return relations_serialized_name;
    }
    /**
     * Gets the semantic_roles_serialized_name.
     *
     * Whether or not to return the subject-action-object relations from the analyzed text.
     *
     * @return the semantic_roles_serialized_name
     */
    public SemanticRolesOptions semanticRoles() {
      return semantic_roles_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * Whether or not to return the overall sentiment of the analyzed text.
     *
     * @return the sentiment_serialized_name
     */
    public SentimentOptions sentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the categories_serialized_name.
     *
     * Whether or not to return the high level category the content is categorized as (i.e. news, art).
     *
     * @return the categories_serialized_name
     */
    public CategoriesOptions categories() {
      return categories_serialized_name;
    }
    private Features(FeaturesBuilder builder) {
      concepts_serialized_name = builder.concepts_serialized_name;
      emotion_serialized_name = builder.emotion_serialized_name;
      entities_serialized_name = builder.entities_serialized_name;
      keywords_serialized_name = builder.keywords_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      relations_serialized_name = builder.relations_serialized_name;
      semantic_roles_serialized_name = builder.semantic_roles_serialized_name;
      sentiment_serialized_name = builder.sentiment_serialized_name;
      categories_serialized_name = builder.categories_serialized_name;
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
    private ConceptsOptions concepts_serialized_name;
    private EmotionOptions emotion_serialized_name;
    private EntitiesOptions entities_serialized_name;
    private KeywordsOptions keywords_serialized_name;
    private MetadataOptions metadata_serialized_name;
    private RelationsOptions relations_serialized_name;
    private SemanticRolesOptions semantic_roles_serialized_name;
    private SentimentOptions sentiment_serialized_name;
    private CategoriesOptions categories_serialized_name;

    private FeaturesBuilder(Features features) {
      concepts_serialized_name = features.concepts_serialized_name;
      emotion_serialized_name = features.emotion_serialized_name;
      entities_serialized_name = features.entities_serialized_name;
      keywords_serialized_name = features.keywords_serialized_name;
      metadata_serialized_name = features.metadata_serialized_name;
      relations_serialized_name = features.relations_serialized_name;
      semantic_roles_serialized_name = features.semantic_roles_serialized_name;
      sentiment_serialized_name = features.sentiment_serialized_name;
      categories_serialized_name = features.categories_serialized_name;
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
     * Set the concepts_serialized_name.
     *
     * @param concepts the concepts
     * @return the Features builder
     */
    public FeaturesBuilder concepts(ConceptsOptions concepts) {
      this.concepts_serialized_name = concepts;
      return this;
    }

    /**
     * Set the emotion_serialized_name.
     *
     * @param emotion the emotion
     * @return the Features builder
     */
    public FeaturesBuilder emotion(EmotionOptions emotion) {
      this.emotion_serialized_name = emotion;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     *
     * @param entities the entities
     * @return the Features builder
     */
    public FeaturesBuilder entities(EntitiesOptions entities) {
      this.entities_serialized_name = entities;
      return this;
    }

    /**
     * Set the keywords_serialized_name.
     *
     * @param keywords the keywords
     * @return the Features builder
     */
    public FeaturesBuilder keywords(KeywordsOptions keywords) {
      this.keywords_serialized_name = keywords;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the Features builder
     */
    public FeaturesBuilder metadata(MetadataOptions metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the relations_serialized_name.
     *
     * @param relations the relations
     * @return the Features builder
     */
    public FeaturesBuilder relations(RelationsOptions relations) {
      this.relations_serialized_name = relations;
      return this;
    }

    /**
     * Set the semantic_roles_serialized_name.
     *
     * @param semanticRoles the semanticRoles
     * @return the Features builder
     */
    public FeaturesBuilder semanticRoles(SemanticRolesOptions semanticRoles) {
      this.semantic_roles_serialized_name = semanticRoles;
      return this;
    }

    /**
     * Set the sentiment_serialized_name.
     *
     * @param sentiment the sentiment
     * @return the Features builder
     */
    public FeaturesBuilder sentiment(SentimentOptions sentiment) {
      this.sentiment_serialized_name = sentiment;
      return this;
    }

    /**
     * Set the categories_serialized_name.
     *
     * @param categories the categories
     * @return the Features builder
     */
    public FeaturesBuilder categories(CategoriesOptions categories) {
      this.categories_serialized_name = categories;
      return this;
    }
  }

  /**
   * An option indicating whether or not important keywords from the analyzed content should be returned.
   */
  public class KeywordsOptions {
    private Long limit_serialized_name;
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;
    /**
     * Gets the limit_serialized_name.
     *
     * Maximum number of keywords to return.
     *
     * @return the limit_serialized_name
     */
    public Long limitField() {
      return limit_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * Set this to true to return sentiment information for detected keywords.
     *
     * @return the sentiment_serialized_name
     */
    public Boolean sentiment() {
      return sentiment_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * Set this to true to analyze emotion for detected keywords.
     *
     * @return the emotion_serialized_name
     */
    public Boolean emotion() {
      return emotion_serialized_name;
    }
    private KeywordsOptions(KeywordsOptionsBuilder builder) {
      limit_serialized_name = builder.limit_serialized_name;
      sentiment_serialized_name = builder.sentiment_serialized_name;
      emotion_serialized_name = builder.emotion_serialized_name;
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
    private Long limit_serialized_name;
    private Boolean sentiment_serialized_name;
    private Boolean emotion_serialized_name;

    private KeywordsOptionsBuilder(KeywordsOptions keywordsOptions) {
      limit_serialized_name = keywordsOptions.limit_serialized_name;
      sentiment_serialized_name = keywordsOptions.sentiment_serialized_name;
      emotion_serialized_name = keywordsOptions.emotion_serialized_name;
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
     * Set the limit_serialized_name.
     *
     * @param limitVar the limitVar
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder limitField(Long limitVar) {
      this.limit_serialized_name = limitVar;
      return this;
    }

    /**
     * Set the sentiment_serialized_name.
     *
     * @param sentiment the sentiment
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder sentiment(Boolean sentiment) {
      this.sentiment_serialized_name = sentiment;
      return this;
    }

    /**
     * Set the emotion_serialized_name.
     *
     * @param emotion the emotion
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder emotion(Boolean emotion) {
      this.emotion_serialized_name = emotion;
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
     * Gets the relevance_serialized_name.
     *
     * Relevance score from 0 to 1. Higher values indicate greater relevance.
     *
     * @return the relevance_serialized_name
     */
    @AuraEnabled
    public Double getRelevance() {
      return relevance_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The keyword text.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * Emotion analysis results for the keyword, enabled with the "emotion" option.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
    }
    /**
     * Gets the sentiment_serialized_name.
     *
     * Sentiment analysis results for the keyword, enabled with the "sentiment" option.
     *
     * @return the sentiment_serialized_name
     */
    @AuraEnabled
    public FeatureSentimentResults getSentiment() {
      return sentiment_serialized_name;
    }

    /**
     * Sets the relevance_serialized_name.
     *
     * @param relevance the new relevance
     */
    public void setRelevance(final Double relevance) {
      this.relevance_serialized_name = relevance;
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
     * Sets the emotion_serialized_name.
     *
     * @param emotion the new emotion
     */
    public void setEmotion(final EmotionScores emotion) {
      this.emotion_serialized_name = emotion;
    }

    /**
     * Sets the sentiment_serialized_name.
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

      // calling custom deserializer for emotion_serialized_name
      EmotionScores newEmotion = (EmotionScores) new EmotionScores().deserialize(JSON.serialize(ret.getEmotion()), (Map<String, Object>) jsonMap.get('emotion_serialized_name'), EmotionScores.class);
      ret.setEmotion(newEmotion);

      // calling custom deserializer for sentiment_serialized_name
      FeatureSentimentResults newSentiment = (FeatureSentimentResults) new FeatureSentimentResults().deserialize(JSON.serialize(ret.getSentiment()), (Map<String, Object>) jsonMap.get('sentiment_serialized_name'), FeatureSentimentResults.class);
      ret.setSentiment(newSentiment);

      return ret;
    }
  }

  /**
   * The listModels options.
   */
  public class ListModelsOptions {
    private ListModelsOptions(ListModelsOptionsBuilder builder) {
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
  public class ListModelsOptionsBuilder {

    private ListModelsOptionsBuilder(ListModelsOptions listModelsOptions) {
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
  }

  /**
   * Models available for Relations and Entities features.
   */
  public class ListModelsResults extends IBMWatsonGenericModel {
    private List<Model> models_serialized_name;
    /**
     * Gets the models_serialized_name.
     *
     * @return the models_serialized_name
     */
    @AuraEnabled
    public List<Model> getModels() {
      return models_serialized_name;
    }

    /**
     * Sets the models_serialized_name.
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

      // calling custom deserializer for models_serialized_name
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
   * The Authors, Publication Date, and Title of the document. Supports URL and HTML input types.
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetadataOptions ret = (MetadataOptions) super.deserialize(jsonString, jsonMap, classType);

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
   * The Authors, Publication Date, and Title of the document. Supports URL and HTML input types.
   */
  public class MetadataResult extends IBMWatsonGenericModel {
    private List<Author> authors_serialized_name;
    private String publication_date_serialized_name;
    private String title_serialized_name;
    /**
     * Gets the authors_serialized_name.
     *
     * The authors of the document.
     *
     * @return the authors_serialized_name
     */
    @AuraEnabled
    public List<Author> getAuthors() {
      return authors_serialized_name;
    }
    /**
     * Gets the publication_date_serialized_name.
     *
     * The publication date in the format ISO 8601.
     *
     * @return the publication_date_serialized_name
     */
    @AuraEnabled
    public String getPublicationDate() {
      return publication_date_serialized_name;
    }
    /**
     * Gets the title_serialized_name.
     *
     * The title of the document.
     *
     * @return the title_serialized_name
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }

    /**
     * Sets the authors_serialized_name.
     *
     * @param authors the new authors
     */
    public void setAuthors(final List<Author> authors) {
      this.authors_serialized_name = authors;
    }

    /**
     * Sets the publication_date_serialized_name.
     *
     * @param publicationDate the new publicationDate
     */
    public void setPublicationDate(final String publicationDate) {
      this.publication_date_serialized_name = publicationDate;
    }

    /**
     * Sets the title_serialized_name.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title_serialized_name = title;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MetadataResult ret = (MetadataResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for authors_serialized_name
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
     * Gets the status_serialized_name.
     *
     * Shows as available if the model is ready for use.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the model_id_serialized_name.
     *
     * Unique model ID.
     *
     * @return the model_id_serialized_name
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * ISO 639-1 code indicating the language of the model.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * Model description.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
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
     * Sets the model_id_serialized_name.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
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
     * Sets the description_serialized_name.
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
    private String text_serialized_name;
    /**
     * Gets the entities_serialized_name.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<RelationEntity> getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * Text that corresponds to the argument.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<RelationEntity> entities) {
      this.entities_serialized_name = entities;
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

      RelationArgument ret = (RelationArgument) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities_serialized_name
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
   * The entities extracted from a sentence in a given document.
   */
  public class RelationEntity extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String type_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * Text that corresponds to the entity.
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
     * Entity type.
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

      RelationEntity ret = (RelationEntity) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An option specifying if the relationships found between entities in the analyzed content should be returned.
   */
  public class RelationsOptions {
    private String model_serialized_name;
    /**
     * Gets the model_serialized_name.
     *
     * Enter a custom model ID to override the default model.
     *
     * @return the model_serialized_name
     */
    public String model() {
      return model_serialized_name;
    }
    private RelationsOptions(RelationsOptionsBuilder builder) {
      model_serialized_name = builder.model_serialized_name;
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
    private String model_serialized_name;

    private RelationsOptionsBuilder(RelationsOptions relationsOptions) {
      model_serialized_name = relationsOptions.model_serialized_name;
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
     * Set the model_serialized_name.
     *
     * @param model the model
     * @return the RelationsOptions builder
     */
    public RelationsOptionsBuilder model(String model) {
      this.model_serialized_name = model;
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
     * Gets the score_serialized_name.
     *
     * Confidence score for the relation. Higher values indicate greater confidence.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
    /**
     * Gets the sentence_serialized_name.
     *
     * The sentence that contains the relation.
     *
     * @return the sentence_serialized_name
     */
    @AuraEnabled
    public String getSentence() {
      return sentence_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * The type of the relation.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the arguments_serialized_name.
     *
     * The extracted relation objects from the text.
     *
     * @return the arguments_serialized_name
     */
    @AuraEnabled
    public List<RelationArgument> getArguments() {
      return arguments_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    /**
     * Sets the sentence_serialized_name.
     *
     * @param sentence the new sentence
     */
    public void setSentence(final String sentence) {
      this.sentence_serialized_name = sentence;
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
     * Sets the arguments_serialized_name.
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

      // calling custom deserializer for arguments_serialized_name
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
     * Gets the text_serialized_name.
     *
     * Analyzed text that corresponds to the action.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the normalized_serialized_name.
     *
     * normalized version of the action.
     *
     * @return the normalized_serialized_name
     */
    @AuraEnabled
    public String getNormalized() {
      return normalized_serialized_name;
    }
    /**
     * Gets the verb_serialized_name.
     *
     * @return the verb_serialized_name
     */
    @AuraEnabled
    public SemanticRolesVerb getVerb() {
      return verb_serialized_name;
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
     * Sets the normalized_serialized_name.
     *
     * @param normalized the new normalized
     */
    public void setNormalized(final String normalized) {
      this.normalized_serialized_name = normalized;
    }

    /**
     * Sets the verb_serialized_name.
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

      // calling custom deserializer for verb_serialized_name
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
     * Gets the type_serialized_name.
     *
     * Entity type.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The entity text.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
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
     * Gets the text_serialized_name.
     *
     * The keyword text.
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
     * Gets the text_serialized_name.
     *
     * Object text.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the keywords_serialized_name.
     *
     * @return the keywords_serialized_name
     */
    @AuraEnabled
    public List<SemanticRolesKeyword> getKeywords() {
      return keywords_serialized_name;
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
     * Sets the keywords_serialized_name.
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

      // calling custom deserializer for keywords_serialized_name
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
   * An option specifying whether or not to identify the subjects, actions, and verbs in the analyzed content.
   */
  public class SemanticRolesOptions {
    private Long limit_serialized_name;
    private Boolean keywords_serialized_name;
    private Boolean entities_serialized_name;
    /**
     * Gets the limit_serialized_name.
     *
     * Maximum number of semantic_roles results to return.
     *
     * @return the limit_serialized_name
     */
    public Long limitField() {
      return limit_serialized_name;
    }
    /**
     * Gets the keywords_serialized_name.
     *
     * Set this to true to return keyword information for subjects and objects.
     *
     * @return the keywords_serialized_name
     */
    public Boolean keywords() {
      return keywords_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * Set this to true to return entity information for subjects and objects.
     *
     * @return the entities_serialized_name
     */
    public Boolean entities() {
      return entities_serialized_name;
    }
    private SemanticRolesOptions(SemanticRolesOptionsBuilder builder) {
      limit_serialized_name = builder.limit_serialized_name;
      keywords_serialized_name = builder.keywords_serialized_name;
      entities_serialized_name = builder.entities_serialized_name;
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
    private Long limit_serialized_name;
    private Boolean keywords_serialized_name;
    private Boolean entities_serialized_name;

    private SemanticRolesOptionsBuilder(SemanticRolesOptions semanticRolesOptions) {
      limit_serialized_name = semanticRolesOptions.limit_serialized_name;
      keywords_serialized_name = semanticRolesOptions.keywords_serialized_name;
      entities_serialized_name = semanticRolesOptions.entities_serialized_name;
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
     * Set the limit_serialized_name.
     *
     * @param limitVar the limitVar
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder limitField(Long limitVar) {
      this.limit_serialized_name = limitVar;
      return this;
    }

    /**
     * Set the keywords_serialized_name.
     *
     * @param keywords the keywords
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder keywords(Boolean keywords) {
      this.keywords_serialized_name = keywords;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     *
     * @param entities the entities
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder entities(Boolean entities) {
      this.entities_serialized_name = entities;
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
     * Gets the sentence_serialized_name.
     *
     * Sentence from the source that contains the subject, action, and object.
     *
     * @return the sentence_serialized_name
     */
    @AuraEnabled
    public String getSentence() {
      return sentence_serialized_name;
    }
    /**
     * Gets the subject_serialized_name.
     *
     * The extracted subject from the sentence.
     *
     * @return the subject_serialized_name
     */
    @AuraEnabled
    public SemanticRolesSubject getSubject() {
      return subject_serialized_name;
    }
    /**
     * Gets the action_serialized_name.
     *
     * The extracted action from the sentence.
     *
     * @return the action_serialized_name
     */
    @AuraEnabled
    public SemanticRolesAction getAction() {
      return action_serialized_name;
    }
    /**
     * Gets the object_serialized_name.
     *
     * The extracted object from the sentence.
     *
     * @return the object_serialized_name
     */
    @AuraEnabled
    public SemanticRolesObject getObject() {
      return object_serialized_name;
    }

    /**
     * Sets the sentence_serialized_name.
     *
     * @param sentence the new sentence
     */
    public void setSentence(final String sentence) {
      this.sentence_serialized_name = sentence;
    }

    /**
     * Sets the subject_serialized_name.
     *
     * @param subject the new subject
     */
    public void setSubject(final SemanticRolesSubject subject) {
      this.subject_serialized_name = subject;
    }

    /**
     * Sets the action_serialized_name.
     *
     * @param action the new action
     */
    public void setAction(final SemanticRolesAction action) {
      this.action_serialized_name = action;
    }

    /**
     * Sets the object_serialized_name.
     *
     * @param objectVar the new objectVar
     */
    public void setObject(final SemanticRolesObject objectVar) {
      this.object_serialized_name = objectVar;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SemanticRolesResult ret = (SemanticRolesResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for subject_serialized_name
      SemanticRolesSubject newSubject = (SemanticRolesSubject) new SemanticRolesSubject().deserialize(JSON.serialize(ret.getSubject()), (Map<String, Object>) jsonMap.get('subject_serialized_name'), SemanticRolesSubject.class);
      ret.setSubject(newSubject);

      // calling custom deserializer for action_serialized_name
      SemanticRolesAction newAction = (SemanticRolesAction) new SemanticRolesAction().deserialize(JSON.serialize(ret.getAction()), (Map<String, Object>) jsonMap.get('action_serialized_name'), SemanticRolesAction.class);
      ret.setAction(newAction);

      // calling custom deserializer for object_serialized_name
      SemanticRolesObject newObject = (SemanticRolesObject) new SemanticRolesObject().deserialize(JSON.serialize(ret.getObject()), (Map<String, Object>) jsonMap.get('object_serialized_name'), SemanticRolesObject.class);
      ret.setObject(newObject);

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
     * Gets the text_serialized_name.
     *
     * Text that corresponds to the subject role.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<SemanticRolesEntity> getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the keywords_serialized_name.
     *
     * @return the keywords_serialized_name
     */
    @AuraEnabled
    public List<SemanticRolesKeyword> getKeywords() {
      return keywords_serialized_name;
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
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<SemanticRolesEntity> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the keywords_serialized_name.
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

      // calling custom deserializer for entities_serialized_name
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

      // calling custom deserializer for keywords_serialized_name
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
     * Gets the text_serialized_name.
     *
     * The keyword text.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the tense_serialized_name.
     *
     * Verb tense.
     *
     * @return the tense_serialized_name
     */
    @AuraEnabled
    public String getTense() {
      return tense_serialized_name;
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
     * Sets the tense_serialized_name.
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
   * An option specifying if sentiment of detected entities, keywords, or phrases should be returned.
   */
  public class SentimentOptions {
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;
    /**
     * Gets the document_serialized_name.
     *
     * Set this to false to hide document-level sentiment results.
     *
     * @return the document_serialized_name
     */
    public Boolean document() {
      return document_serialized_name;
    }
    /**
     * Gets the targets_serialized_name.
     *
     * Sentiment results will be returned for each target string that is found in the document.
     *
     * @return the targets_serialized_name
     */
    public List<String> targets() {
      return targets_serialized_name;
    }
    private SentimentOptions(SentimentOptionsBuilder builder) {
      document_serialized_name = builder.document_serialized_name;
      targets_serialized_name = builder.targets_serialized_name;
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
    private Boolean document_serialized_name;
    private List<String> targets_serialized_name;

    private SentimentOptionsBuilder(SentimentOptions sentimentOptions) {
      document_serialized_name = sentimentOptions.document_serialized_name;
      targets_serialized_name = sentimentOptions.targets_serialized_name;
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
     * Adds an targets to targets_serialized_name.
     *
     * @param targets the new targets
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder addTargets(String targets) {
      IBMWatsonValidator.notNull(targets, 'targets cannot be null');
      if (this.targets_serialized_name == null) {
        this.targets_serialized_name = new List<String>();
      }
      this.targets_serialized_name.add(targets);
      return this;
    }

    /**
     * Set the document_serialized_name.
     *
     * @param document the document
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder document(Boolean document) {
      this.document_serialized_name = document;
      return this;
    }

    /**
     * Set the targets_serialized_name.
     * Existing targets_serialized_name will be replaced.
     *
     * @param targets the targets
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder targets(List<String> targets) {
      this.targets_serialized_name = targets;
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
     * Gets the document_serialized_name.
     *
     * The document level sentiment.
     *
     * @return the document_serialized_name
     */
    @AuraEnabled
    public DocumentSentimentResults getDocument() {
      return document_serialized_name;
    }
    /**
     * Gets the targets_serialized_name.
     *
     * The targeted sentiment to analyze.
     *
     * @return the targets_serialized_name
     */
    @AuraEnabled
    public List<TargetedSentimentResults> getTargets() {
      return targets_serialized_name;
    }

    /**
     * Sets the document_serialized_name.
     *
     * @param document the new document
     */
    public void setDocument(final DocumentSentimentResults document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the targets_serialized_name.
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

      // calling custom deserializer for document_serialized_name
      DocumentSentimentResults newDocument = (DocumentSentimentResults) new DocumentSentimentResults().deserialize(JSON.serialize(ret.getDocument()), (Map<String, Object>) jsonMap.get('document_serialized_name'), DocumentSentimentResults.class);
      ret.setDocument(newDocument);

      // calling custom deserializer for targets_serialized_name
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
     * Gets the text_serialized_name.
     *
     * Targeted text.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the emotion_serialized_name.
     *
     * An object containing the emotion results for the target.
     *
     * @return the emotion_serialized_name
     */
    @AuraEnabled
    public EmotionScores getEmotion() {
      return emotion_serialized_name;
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
     * Sets the emotion_serialized_name.
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

      // calling custom deserializer for emotion_serialized_name
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
     * Gets the text_serialized_name.
     *
     * Targeted text.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the score_serialized_name.
     *
     * Sentiment score from -1 (negative) to 1 (positive).
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
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
     * Gets the features_serialized_name.
     *
     * Number of features used in the API call.
     *
     * @return the features_serialized_name
     */
    @AuraEnabled
    public Long getFeatures() {
      return features_serialized_name;
    }
    /**
     * Gets the text_characters_serialized_name.
     *
     * Number of text characters processed.
     *
     * @return the text_characters_serialized_name
     */
    @AuraEnabled
    public Long getTextCharacters() {
      return text_characters_serialized_name;
    }
    /**
     * Gets the text_units_serialized_name.
     *
     * Number of 10,000-character units processed.
     *
     * @return the text_units_serialized_name
     */
    @AuraEnabled
    public Long getTextUnits() {
      return text_units_serialized_name;
    }

    /**
     * Sets the features_serialized_name.
     *
     * @param features the new features
     */
    public void setFeatures(final long features) {
      this.features_serialized_name = features;
    }

    /**
     * Sets the text_characters_serialized_name.
     *
     * @param textCharacters the new textCharacters
     */
    public void setTextCharacters(final long textCharacters) {
      this.text_characters_serialized_name = textCharacters;
    }

    /**
     * Sets the text_units_serialized_name.
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
