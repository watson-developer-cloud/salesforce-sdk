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
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
    }

    /**
     * Sets the analyzed_text_serialized_name.
     *
     * @param analyzed_text_serialized_name the new analyzed_text_serialized_name
     */
    public void setAnalyzedText(final String analyzed_text_serialized_name) {
      this.analyzed_text_serialized_name = analyzed_text_serialized_name;
    }

    /**
     * Sets the retrieved_url_serialized_name.
     *
     * @param retrieved_url_serialized_name the new retrieved_url_serialized_name
     */
    public void setRetrievedUrl(final String retrieved_url_serialized_name) {
      this.retrieved_url_serialized_name = retrieved_url_serialized_name;
    }

    /**
     * Sets the usage_serialized_name.
     *
     * @param usage_serialized_name the new usage_serialized_name
     */
    public void setUsage(final Usage usage_serialized_name) {
      this.usage_serialized_name = usage_serialized_name;
    }

    /**
     * Sets the concepts_serialized_name.
     *
     * @param concepts_serialized_name the new concepts_serialized_name
     */
    public void setConcepts(final List<ConceptsResult> concepts_serialized_name) {
      this.concepts_serialized_name = concepts_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     */
    public void setEntities(final List<EntitiesResult> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
    }

    /**
     * Sets the keywords_serialized_name.
     *
     * @param keywords_serialized_name the new keywords_serialized_name
     */
    public void setKeywords(final List<KeywordsResult> keywords_serialized_name) {
      this.keywords_serialized_name = keywords_serialized_name;
    }

    /**
     * Sets the categories_serialized_name.
     *
     * @param categories_serialized_name the new categories_serialized_name
     */
    public void setCategories(final List<CategoriesResult> categories_serialized_name) {
      this.categories_serialized_name = categories_serialized_name;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion_serialized_name the new emotion_serialized_name
     */
    public void setEmotion(final EmotionResult emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata_serialized_name the new metadata_serialized_name
     */
    public void setMetadata(final MetadataResult metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
    }

    /**
     * Sets the relations_serialized_name.
     *
     * @param relations_serialized_name the new relations_serialized_name
     */
    public void setRelations(final List<RelationsResult> relations_serialized_name) {
      this.relations_serialized_name = relations_serialized_name;
    }

    /**
     * Sets the semantic_roles_serialized_name.
     *
     * @param semantic_roles_serialized_name the new semantic_roles_serialized_name
     */
    public void setSemanticRoles(final List<SemanticRolesResult> semantic_roles_serialized_name) {
      this.semantic_roles_serialized_name = semantic_roles_serialized_name;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment_serialized_name the new sentiment_serialized_name
     */
    public void setSentiment(final SentimentResult sentiment_serialized_name) {
      this.sentiment_serialized_name = sentiment_serialized_name;
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

    private AnalyzeOptionsBuilder(AnalyzeOptions analyze_options) {
      text_serialized_name = analyze_options.text_serialized_name;
      html_serialized_name = analyze_options.html_serialized_name;
      url_serialized_name = analyze_options.url_serialized_name;
      features_serialized_name = analyze_options.features_serialized_name;
      clean_serialized_name = analyze_options.clean_serialized_name;
      xpath_serialized_name = analyze_options.xpath_serialized_name;
      fallback_to_raw_serialized_name = analyze_options.fallback_to_raw_serialized_name;
      return_analyzed_text_serialized_name = analyze_options.return_analyzed_text_serialized_name;
      language_serialized_name = analyze_options.language_serialized_name;
      limit_text_characters_serialized_name = analyze_options.limit_text_characters_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public AnalyzeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param features_serialized_name the features_serialized_name
     */
    public AnalyzeOptionsBuilder(Features features_serialized_name) {
      this.features_serialized_name = features_serialized_name;
    }

    /**
     * Builds a AnalyzeOptions.
     *
     * @return the analyze_options
     */
    public AnalyzeOptions build() {
      return new AnalyzeOptions(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }

    /**
     * Set the html_serialized_name.
     *
     * @param html_serialized_name the html_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder html(String html_serialized_name) {
      this.html_serialized_name = html_serialized_name;
      return this;
    }

    /**
     * Set the url_serialized_name.
     *
     * @param url_serialized_name the url_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder url(String url_serialized_name) {
      this.url_serialized_name = url_serialized_name;
      return this;
    }

    /**
     * Set the features_serialized_name.
     *
     * @param features_serialized_name the features_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder features(Features features_serialized_name) {
      this.features_serialized_name = features_serialized_name;
      return this;
    }

    /**
     * Set the clean_serialized_name.
     *
     * @param clean_serialized_name the clean_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder clean(Boolean clean_serialized_name) {
      this.clean_serialized_name = clean_serialized_name;
      return this;
    }

    /**
     * Set the xpath_serialized_name.
     *
     * @param xpath_serialized_name the xpath_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder xpath(String xpath_serialized_name) {
      this.xpath_serialized_name = xpath_serialized_name;
      return this;
    }

    /**
     * Set the fallback_to_raw_serialized_name.
     *
     * @param fallback_to_raw_serialized_name the fallback_to_raw_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder fallbackToRaw(Boolean fallback_to_raw_serialized_name) {
      this.fallback_to_raw_serialized_name = fallback_to_raw_serialized_name;
      return this;
    }

    /**
     * Set the return_analyzed_text_serialized_name.
     *
     * @param return_analyzed_text_serialized_name the return_analyzed_text_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder returnAnalyzedText(Boolean return_analyzed_text_serialized_name) {
      this.return_analyzed_text_serialized_name = return_analyzed_text_serialized_name;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language_serialized_name the language_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder language(String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
      return this;
    }

    /**
     * Set the limit_text_characters_serialized_name.
     *
     * @param limit_text_characters_serialized_name the limit_text_characters_serialized_name
     * @return the AnalyzeOptions builder
     */
    public AnalyzeOptionsBuilder limitTextCharacters(Long limit_text_characters_serialized_name) {
      this.limit_text_characters_serialized_name = limit_text_characters_serialized_name;
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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
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
     * @param label_serialized_name the new label_serialized_name
     */
    public void setLabel(final String label_serialized_name) {
      this.label_serialized_name = label_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
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

    private ConceptsOptionsBuilder(ConceptsOptions concepts_options) {
      limit_serialized_name = concepts_options.limit_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ConceptsOptionsBuilder() {
    }

    /**
     * Builds a ConceptsOptions.
     *
     * @return the concepts_options
     */
    public ConceptsOptions build() {
      return new ConceptsOptions(this);
    }

    /**
     * Set the limit_serialized_name.
     *
     * @param limit_serialized_name the limit_serialized_name
     * @return the ConceptsOptions builder
     */
    public ConceptsOptionsBuilder limitField(Long limit_serialized_name) {
      this.limit_serialized_name = limit_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the relevance_serialized_name.
     *
     * @param relevance_serialized_name the new relevance_serialized_name
     */
    public void setRelevance(final Double relevance_serialized_name) {
      this.relevance_serialized_name = relevance_serialized_name;
    }

    /**
     * Sets the dbpedia_resource_serialized_name.
     *
     * @param dbpedia_resource_serialized_name the new dbpedia_resource_serialized_name
     */
    public void setDbpediaResource(final String dbpedia_resource_serialized_name) {
      this.dbpedia_resource_serialized_name = dbpedia_resource_serialized_name;
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

    private DeleteModelOptionsBuilder(DeleteModelOptions delete_model_options) {
      model_id_serialized_name = delete_model_options.model_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param model_id_serialized_name the model_id_serialized_name
     */
    public DeleteModelOptionsBuilder(String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
    }

    /**
     * Builds a DeleteModelOptions.
     *
     * @return the delete_model_options
     */
    public DeleteModelOptions build() {
      return new DeleteModelOptions(this);
    }

    /**
     * Set the model_id_serialized_name.
     *
     * @param model_id_serialized_name the model_id_serialized_name
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder modelId(String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the dbpedia_resource_serialized_name.
     *
     * @param dbpedia_resource_serialized_name the new dbpedia_resource_serialized_name
     */
    public void setDbpediaResource(final String dbpedia_resource_serialized_name) {
      this.dbpedia_resource_serialized_name = dbpedia_resource_serialized_name;
    }

    /**
     * Sets the subtype_serialized_name.
     *
     * @param subtype_serialized_name the new subtype_serialized_name
     */
    public void setSubtype(final List<String> subtype_serialized_name) {
      this.subtype_serialized_name = subtype_serialized_name;
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
     * @param emotion_serialized_name the new emotion_serialized_name
     */
    public void setEmotion(final EmotionScores emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
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
     * @param label_serialized_name the new label_serialized_name
     */
    public void setLabel(final String label_serialized_name) {
      this.label_serialized_name = label_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
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

    private EmotionOptionsBuilder(EmotionOptions emotion_options) {
      document_serialized_name = emotion_options.document_serialized_name;
      targets_serialized_name = emotion_options.targets_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public EmotionOptionsBuilder() {
    }

    /**
     * Builds a EmotionOptions.
     *
     * @return the emotion_options
     */
    public EmotionOptions build() {
      return new EmotionOptions(this);
    }

    /**
     * Adds an targets_serialized_name to targets_serialized_name.
     *
     * @param targets_serialized_name the new targets_serialized_name
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder addTargets(String targets_serialized_name) {
      IBMWatsonValidator.notNull(targets_serialized_name, 'targets_serialized_name cannot be null');
      if (this.targets_serialized_name == null) {
        this.targets_serialized_name = new List<String>();
      }
      this.targets_serialized_name.add(targets_serialized_name);
      return this;
    }

    /**
     * Set the document_serialized_name.
     *
     * @param document_serialized_name the document_serialized_name
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder document(Boolean document_serialized_name) {
      this.document_serialized_name = document_serialized_name;
      return this;
    }

    /**
     * Set the targets_serialized_name.
     * Existing targets_serialized_name will be replaced.
     *
     * @param targets_serialized_name the targets_serialized_name
     * @return the EmotionOptions builder
     */
    public EmotionOptionsBuilder targets(List<String> targets_serialized_name) {
      this.targets_serialized_name = targets_serialized_name;
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
     * @param document_serialized_name the new document_serialized_name
     */
    public void setDocument(final DocumentEmotionResults document_serialized_name) {
      this.document_serialized_name = document_serialized_name;
    }

    /**
     * Sets the targets_serialized_name.
     *
     * @param targets_serialized_name the new targets_serialized_name
     */
    public void setTargets(final List<TargetedEmotionResults> targets_serialized_name) {
      this.targets_serialized_name = targets_serialized_name;
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
     * @param anger_serialized_name the new anger_serialized_name
     */
    public void setAnger(final Double anger_serialized_name) {
      this.anger_serialized_name = anger_serialized_name;
    }

    /**
     * Sets the disgust_serialized_name.
     *
     * @param disgust_serialized_name the new disgust_serialized_name
     */
    public void setDisgust(final Double disgust_serialized_name) {
      this.disgust_serialized_name = disgust_serialized_name;
    }

    /**
     * Sets the fear_serialized_name.
     *
     * @param fear_serialized_name the new fear_serialized_name
     */
    public void setFear(final Double fear_serialized_name) {
      this.fear_serialized_name = fear_serialized_name;
    }

    /**
     * Sets the joy_serialized_name.
     *
     * @param joy_serialized_name the new joy_serialized_name
     */
    public void setJoy(final Double joy_serialized_name) {
      this.joy_serialized_name = joy_serialized_name;
    }

    /**
     * Sets the sadness_serialized_name.
     *
     * @param sadness_serialized_name the new sadness_serialized_name
     */
    public void setSadness(final Double sadness_serialized_name) {
      this.sadness_serialized_name = sadness_serialized_name;
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

    private EntitiesOptionsBuilder(EntitiesOptions entities_options) {
      limit_serialized_name = entities_options.limit_serialized_name;
      model_serialized_name = entities_options.model_serialized_name;
      sentiment_serialized_name = entities_options.sentiment_serialized_name;
      emotion_serialized_name = entities_options.emotion_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public EntitiesOptionsBuilder() {
    }

    /**
     * Builds a EntitiesOptions.
     *
     * @return the entities_options
     */
    public EntitiesOptions build() {
      return new EntitiesOptions(this);
    }

    /**
     * Set the limit_serialized_name.
     *
     * @param limit_serialized_name the limit_serialized_name
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder limitField(Long limit_serialized_name) {
      this.limit_serialized_name = limit_serialized_name;
      return this;
    }

    /**
     * Set the model_serialized_name.
     *
     * @param model_serialized_name the model_serialized_name
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder model(String model_serialized_name) {
      this.model_serialized_name = model_serialized_name;
      return this;
    }

    /**
     * Set the sentiment_serialized_name.
     *
     * @param sentiment_serialized_name the sentiment_serialized_name
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder sentiment(Boolean sentiment_serialized_name) {
      this.sentiment_serialized_name = sentiment_serialized_name;
      return this;
    }

    /**
     * Set the emotion_serialized_name.
     *
     * @param emotion_serialized_name the emotion_serialized_name
     * @return the EntitiesOptions builder
     */
    public EntitiesOptionsBuilder emotion(Boolean emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
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
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }

    /**
     * Sets the relevance_serialized_name.
     *
     * @param relevance_serialized_name the new relevance_serialized_name
     */
    public void setRelevance(final Double relevance_serialized_name) {
      this.relevance_serialized_name = relevance_serialized_name;
    }

    /**
     * Sets the count_serialized_name.
     *
     * @param count_serialized_name the new count_serialized_name
     */
    public void setCount(final long count_serialized_name) {
      this.count_serialized_name = count_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion_serialized_name the new emotion_serialized_name
     */
    public void setEmotion(final EmotionScores emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment_serialized_name the new sentiment_serialized_name
     */
    public void setSentiment(final FeatureSentimentResults sentiment_serialized_name) {
      this.sentiment_serialized_name = sentiment_serialized_name;
    }

    /**
     * Sets the disambiguation_serialized_name.
     *
     * @param disambiguation_serialized_name the new disambiguation_serialized_name
     */
    public void setDisambiguation(final DisambiguationResult disambiguation_serialized_name) {
      this.disambiguation_serialized_name = disambiguation_serialized_name;
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
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
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
     * @param concepts_serialized_name the concepts_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder concepts(ConceptsOptions concepts_serialized_name) {
      this.concepts_serialized_name = concepts_serialized_name;
      return this;
    }

    /**
     * Set the emotion_serialized_name.
     *
     * @param emotion_serialized_name the emotion_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder emotion(EmotionOptions emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     *
     * @param entities_serialized_name the entities_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder entities(EntitiesOptions entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
      return this;
    }

    /**
     * Set the keywords_serialized_name.
     *
     * @param keywords_serialized_name the keywords_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder keywords(KeywordsOptions keywords_serialized_name) {
      this.keywords_serialized_name = keywords_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder metadata(MetadataOptions metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the relations_serialized_name.
     *
     * @param relations_serialized_name the relations_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder relations(RelationsOptions relations_serialized_name) {
      this.relations_serialized_name = relations_serialized_name;
      return this;
    }

    /**
     * Set the semantic_roles_serialized_name.
     *
     * @param semantic_roles_serialized_name the semantic_roles_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder semanticRoles(SemanticRolesOptions semantic_roles_serialized_name) {
      this.semantic_roles_serialized_name = semantic_roles_serialized_name;
      return this;
    }

    /**
     * Set the sentiment_serialized_name.
     *
     * @param sentiment_serialized_name the sentiment_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder sentiment(SentimentOptions sentiment_serialized_name) {
      this.sentiment_serialized_name = sentiment_serialized_name;
      return this;
    }

    /**
     * Set the categories_serialized_name.
     *
     * @param categories_serialized_name the categories_serialized_name
     * @return the Features builder
     */
    public FeaturesBuilder categories(CategoriesOptions categories_serialized_name) {
      this.categories_serialized_name = categories_serialized_name;
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

    private KeywordsOptionsBuilder(KeywordsOptions keywords_options) {
      limit_serialized_name = keywords_options.limit_serialized_name;
      sentiment_serialized_name = keywords_options.sentiment_serialized_name;
      emotion_serialized_name = keywords_options.emotion_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public KeywordsOptionsBuilder() {
    }

    /**
     * Builds a KeywordsOptions.
     *
     * @return the keywords_options
     */
    public KeywordsOptions build() {
      return new KeywordsOptions(this);
    }

    /**
     * Set the limit_serialized_name.
     *
     * @param limit_serialized_name the limit_serialized_name
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder limitField(Long limit_serialized_name) {
      this.limit_serialized_name = limit_serialized_name;
      return this;
    }

    /**
     * Set the sentiment_serialized_name.
     *
     * @param sentiment_serialized_name the sentiment_serialized_name
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder sentiment(Boolean sentiment_serialized_name) {
      this.sentiment_serialized_name = sentiment_serialized_name;
      return this;
    }

    /**
     * Set the emotion_serialized_name.
     *
     * @param emotion_serialized_name the emotion_serialized_name
     * @return the KeywordsOptions builder
     */
    public KeywordsOptionsBuilder emotion(Boolean emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
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
     * @param relevance_serialized_name the new relevance_serialized_name
     */
    public void setRelevance(final Double relevance_serialized_name) {
      this.relevance_serialized_name = relevance_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion_serialized_name the new emotion_serialized_name
     */
    public void setEmotion(final EmotionScores emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
    }

    /**
     * Sets the sentiment_serialized_name.
     *
     * @param sentiment_serialized_name the new sentiment_serialized_name
     */
    public void setSentiment(final FeatureSentimentResults sentiment_serialized_name) {
      this.sentiment_serialized_name = sentiment_serialized_name;
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

    private ListModelsOptionsBuilder(ListModelsOptions list_models_options) {
    }

    /**
     * Instantiates a new builder.
     */
    public ListModelsOptionsBuilder() {
    }

    /**
     * Builds a ListModelsOptions.
     *
     * @return the list_models_options
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
     * @param models_serialized_name the new models_serialized_name
     */
    public void setModels(final List<Model> models_serialized_name) {
      this.models_serialized_name = models_serialized_name;
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
     * @param authors_serialized_name the new authors_serialized_name
     */
    public void setAuthors(final List<Author> authors_serialized_name) {
      this.authors_serialized_name = authors_serialized_name;
    }

    /**
     * Sets the publication_date_serialized_name.
     *
     * @param publication_date_serialized_name the new publication_date_serialized_name
     */
    public void setPublicationDate(final String publication_date_serialized_name) {
      this.publication_date_serialized_name = publication_date_serialized_name;
    }

    /**
     * Sets the title_serialized_name.
     *
     * @param title_serialized_name the new title_serialized_name
     */
    public void setTitle(final String title_serialized_name) {
      this.title_serialized_name = title_serialized_name;
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
     * @param status_serialized_name the new status_serialized_name
     */
    public void setStatus(final String status_serialized_name) {
      this.status_serialized_name = status_serialized_name;
    }

    /**
     * Sets the model_id_serialized_name.
     *
     * @param model_id_serialized_name the new model_id_serialized_name
     */
    public void setModelId(final String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
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
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
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
     * @param entities_serialized_name the new entities_serialized_name
     */
    public void setEntities(final List<RelationEntity> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
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

    private RelationsOptionsBuilder(RelationsOptions relations_options) {
      model_serialized_name = relations_options.model_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public RelationsOptionsBuilder() {
    }

    /**
     * Builds a RelationsOptions.
     *
     * @return the relations_options
     */
    public RelationsOptions build() {
      return new RelationsOptions(this);
    }

    /**
     * Set the model_serialized_name.
     *
     * @param model_serialized_name the model_serialized_name
     * @return the RelationsOptions builder
     */
    public RelationsOptionsBuilder model(String model_serialized_name) {
      this.model_serialized_name = model_serialized_name;
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
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
    }

    /**
     * Sets the sentence_serialized_name.
     *
     * @param sentence_serialized_name the new sentence_serialized_name
     */
    public void setSentence(final String sentence_serialized_name) {
      this.sentence_serialized_name = sentence_serialized_name;
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
     * Sets the arguments_serialized_name.
     *
     * @param arguments_serialized_name the new arguments_serialized_name
     */
    public void setArguments(final List<RelationArgument> arguments_serialized_name) {
      this.arguments_serialized_name = arguments_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the normalized_serialized_name.
     *
     * @param normalized_serialized_name the new normalized_serialized_name
     */
    public void setNormalized(final String normalized_serialized_name) {
      this.normalized_serialized_name = normalized_serialized_name;
    }

    /**
     * Sets the verb_serialized_name.
     *
     * @param verb_serialized_name the new verb_serialized_name
     */
    public void setVerb(final SemanticRolesVerb verb_serialized_name) {
      this.verb_serialized_name = verb_serialized_name;
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
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the keywords_serialized_name.
     *
     * @param keywords_serialized_name the new keywords_serialized_name
     */
    public void setKeywords(final List<SemanticRolesKeyword> keywords_serialized_name) {
      this.keywords_serialized_name = keywords_serialized_name;
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

    private SemanticRolesOptionsBuilder(SemanticRolesOptions semantic_roles_options) {
      limit_serialized_name = semantic_roles_options.limit_serialized_name;
      keywords_serialized_name = semantic_roles_options.keywords_serialized_name;
      entities_serialized_name = semantic_roles_options.entities_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public SemanticRolesOptionsBuilder() {
    }

    /**
     * Builds a SemanticRolesOptions.
     *
     * @return the semantic_roles_options
     */
    public SemanticRolesOptions build() {
      return new SemanticRolesOptions(this);
    }

    /**
     * Set the limit_serialized_name.
     *
     * @param limit_serialized_name the limit_serialized_name
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder limitField(Long limit_serialized_name) {
      this.limit_serialized_name = limit_serialized_name;
      return this;
    }

    /**
     * Set the keywords_serialized_name.
     *
     * @param keywords_serialized_name the keywords_serialized_name
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder keywords(Boolean keywords_serialized_name) {
      this.keywords_serialized_name = keywords_serialized_name;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     *
     * @param entities_serialized_name the entities_serialized_name
     * @return the SemanticRolesOptions builder
     */
    public SemanticRolesOptionsBuilder entities(Boolean entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
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
     * @param sentence_serialized_name the new sentence_serialized_name
     */
    public void setSentence(final String sentence_serialized_name) {
      this.sentence_serialized_name = sentence_serialized_name;
    }

    /**
     * Sets the subject_serialized_name.
     *
     * @param subject_serialized_name the new subject_serialized_name
     */
    public void setSubject(final SemanticRolesSubject subject_serialized_name) {
      this.subject_serialized_name = subject_serialized_name;
    }

    /**
     * Sets the action_serialized_name.
     *
     * @param action_serialized_name the new action_serialized_name
     */
    public void setAction(final SemanticRolesAction action_serialized_name) {
      this.action_serialized_name = action_serialized_name;
    }

    /**
     * Sets the object_serialized_name.
     *
     * @param object_serialized_name the new object_serialized_name
     */
    public void setObject(final SemanticRolesObject object_serialized_name) {
      this.object_serialized_name = object_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     */
    public void setEntities(final List<SemanticRolesEntity> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
    }

    /**
     * Sets the keywords_serialized_name.
     *
     * @param keywords_serialized_name the new keywords_serialized_name
     */
    public void setKeywords(final List<SemanticRolesKeyword> keywords_serialized_name) {
      this.keywords_serialized_name = keywords_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the tense_serialized_name.
     *
     * @param tense_serialized_name the new tense_serialized_name
     */
    public void setTense(final String tense_serialized_name) {
      this.tense_serialized_name = tense_serialized_name;
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

    private SentimentOptionsBuilder(SentimentOptions sentiment_options) {
      document_serialized_name = sentiment_options.document_serialized_name;
      targets_serialized_name = sentiment_options.targets_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public SentimentOptionsBuilder() {
    }

    /**
     * Builds a SentimentOptions.
     *
     * @return the sentiment_options
     */
    public SentimentOptions build() {
      return new SentimentOptions(this);
    }

    /**
     * Adds an targets_serialized_name to targets_serialized_name.
     *
     * @param targets_serialized_name the new targets_serialized_name
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder addTargets(String targets_serialized_name) {
      IBMWatsonValidator.notNull(targets_serialized_name, 'targets_serialized_name cannot be null');
      if (this.targets_serialized_name == null) {
        this.targets_serialized_name = new List<String>();
      }
      this.targets_serialized_name.add(targets_serialized_name);
      return this;
    }

    /**
     * Set the document_serialized_name.
     *
     * @param document_serialized_name the document_serialized_name
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder document(Boolean document_serialized_name) {
      this.document_serialized_name = document_serialized_name;
      return this;
    }

    /**
     * Set the targets_serialized_name.
     * Existing targets_serialized_name will be replaced.
     *
     * @param targets_serialized_name the targets_serialized_name
     * @return the SentimentOptions builder
     */
    public SentimentOptionsBuilder targets(List<String> targets_serialized_name) {
      this.targets_serialized_name = targets_serialized_name;
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
     * @param document_serialized_name the new document_serialized_name
     */
    public void setDocument(final DocumentSentimentResults document_serialized_name) {
      this.document_serialized_name = document_serialized_name;
    }

    /**
     * Sets the targets_serialized_name.
     *
     * @param targets_serialized_name the new targets_serialized_name
     */
    public void setTargets(final List<TargetedSentimentResults> targets_serialized_name) {
      this.targets_serialized_name = targets_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the emotion_serialized_name.
     *
     * @param emotion_serialized_name the new emotion_serialized_name
     */
    public void setEmotion(final EmotionScores emotion_serialized_name) {
      this.emotion_serialized_name = emotion_serialized_name;
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
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
     * @param features_serialized_name the new features_serialized_name
     */
    public void setFeatures(final long features_serialized_name) {
      this.features_serialized_name = features_serialized_name;
    }

    /**
     * Sets the text_characters_serialized_name.
     *
     * @param text_characters_serialized_name the new text_characters_serialized_name
     */
    public void setTextCharacters(final long text_characters_serialized_name) {
      this.text_characters_serialized_name = text_characters_serialized_name;
    }

    /**
     * Sets the text_units_serialized_name.
     *
     * @param text_units_serialized_name the new text_units_serialized_name
     */
    public void setTextUnits(final long text_units_serialized_name) {
      this.text_units_serialized_name = text_units_serialized_name;
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
