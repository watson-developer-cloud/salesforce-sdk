public class IBMPersonalityInsightsV3Models {
  /**
   * Behavior.
   */
  public class Behavior extends IBMWatsonGenericModel {
    private String trait_id_serialized_name;
    private String name_serialized_name;
    private String category_serialized_name;
    private Double percentage_serialized_name;
    /**
     * Gets the trait_id_serialized_name.
     *
     * The unique, non-localized identifier of the characteristic to which the results pertain. IDs have the form
     * `behavior_{value}`.
     *
     * @return the trait_id_serialized_name
     */
    @AuraEnabled
    public String getTraitId() {
      return trait_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The user-visible, localized name of the characteristic.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the category_serialized_name.
     *
     * The category of the characteristic: `behavior` for temporal data.
     *
     * @return the category_serialized_name
     */
    @AuraEnabled
    public String getCategory() {
      return category_serialized_name;
    }
    /**
     * Gets the percentage_serialized_name.
     *
     * For JSON content that is timestamped, the percentage of timestamped input data that occurred during that day of
     * the week or hour of the day. The range is 0 to 1.
     *
     * @return the percentage_serialized_name
     */
    @AuraEnabled
    public Double getPercentage() {
      return percentage_serialized_name;
    }

    /**
     * Sets the trait_id_serialized_name.
     *
     * @param traitId the new traitId
     */
    public void setTraitId(final String traitId) {
      this.trait_id_serialized_name = traitId;
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
     * Sets the category_serialized_name.
     *
     * @param category the new category
     */
    public void setCategory(final String category) {
      this.category_serialized_name = category;
    }

    /**
     * Sets the percentage_serialized_name.
     *
     * @param percentage the new percentage
     */
    public void setPercentage(final Double percentage) {
      this.percentage_serialized_name = percentage;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Behavior ret = (Behavior) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * ConsumptionPreferences.
   */
  public class ConsumptionPreferences extends IBMWatsonGenericModel {
    private String consumption_preference_id_serialized_name;
    private String name_serialized_name;
    private Double score_serialized_name;
    /**
     * Gets the consumption_preference_id_serialized_name.
     *
     * The unique, non-localized identifier of the consumption preference to which the results pertain. IDs have the
     * form `consumption_preferences_{preference}`.
     *
     * @return the consumption_preference_id_serialized_name
     */
    @AuraEnabled
    public String getConsumptionPreferenceId() {
      return consumption_preference_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The user-visible, localized name of the consumption preference.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the score_serialized_name.
     *
     * The score for the consumption preference:
     * * `0.0`: Unlikely
     * * `0.5`: Neutral
     * * `1.0`: Likely
     *
     * The scores for some preferences are binary and do not allow a neutral value. The score is an indication of
     * preference based on the results inferred from the input text, not a normalized percentile.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the consumption_preference_id_serialized_name.
     *
     * @param consumptionPreferenceId the new consumptionPreferenceId
     */
    public void setConsumptionPreferenceId(final String consumptionPreferenceId) {
      this.consumption_preference_id_serialized_name = consumptionPreferenceId;
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

      ConsumptionPreferences ret = (ConsumptionPreferences) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * ConsumptionPreferencesCategory.
   */
  public class ConsumptionPreferencesCategory extends IBMWatsonGenericModel {
    private String consumption_preference_category_id_serialized_name;
    private String name_serialized_name;
    private List<ConsumptionPreferences> consumption_preferences_serialized_name;
    /**
     * Gets the consumption_preference_category_id_serialized_name.
     *
     * The unique, non-localized identifier of the consumption preferences category to which the results pertain. IDs
     * have the form `consumption_preferences_{category}`.
     *
     * @return the consumption_preference_category_id_serialized_name
     */
    @AuraEnabled
    public String getConsumptionPreferenceCategoryId() {
      return consumption_preference_category_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The user-visible name of the consumption preferences category.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the consumption_preferences_serialized_name.
     *
     * Detailed results inferred from the input text for the individual preferences of the category.
     *
     * @return the consumption_preferences_serialized_name
     */
    @AuraEnabled
    public List<ConsumptionPreferences> getConsumptionPreferences() {
      return consumption_preferences_serialized_name;
    }

    /**
     * Sets the consumption_preference_category_id_serialized_name.
     *
     * @param consumptionPreferenceCategoryId the new consumptionPreferenceCategoryId
     */
    public void setConsumptionPreferenceCategoryId(final String consumptionPreferenceCategoryId) {
      this.consumption_preference_category_id_serialized_name = consumptionPreferenceCategoryId;
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
     * Sets the consumption_preferences_serialized_name.
     *
     * @param consumptionPreferences the new consumptionPreferences
     */
    public void setConsumptionPreferences(final List<ConsumptionPreferences> consumptionPreferences) {
      this.consumption_preferences_serialized_name = consumptionPreferences;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ConsumptionPreferencesCategory ret = (ConsumptionPreferencesCategory) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for consumption_preferences_serialized_name
      List<ConsumptionPreferences> newConsumptionPreferences = new List<ConsumptionPreferences>();
      List<ConsumptionPreferences> deserializedConsumptionPreferences = ret.getConsumptionPreferences();
      if (deserializedConsumptionPreferences != null) {
        for (Integer i = 0; i < deserializedConsumptionPreferences.size(); i++) {
          ConsumptionPreferences currentItem = ret.getConsumptionPreferences().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('consumption_preferences_serialized_name');
          ConsumptionPreferences newItem = (ConsumptionPreferences) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ConsumptionPreferences.class);
          newConsumptionPreferences.add(newItem);
        }
        ret.setConsumptionPreferences(newConsumptionPreferences);
      }

      return ret;
    }
  }

  /**
   * Content.
   */
  public class Content {
    private List<ContentItem> contentItems_serialized_name;
    /**
     * Gets the contentItems_serialized_name.
     *
     * An array of `ContentItem` objects that provides the text that is to be analyzed.
     *
     * @return the contentItems_serialized_name
     */
    public List<ContentItem> contentItems() {
      return contentItems_serialized_name;
    }
    private Content(ContentBuilder builder) {
      IBMWatsonValidator.notNull(builder.contentItems_serialized_name, 'contentItems_serialized_name cannot be null');
      contentItems_serialized_name = builder.contentItems_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a Content builder
     */
    public ContentBuilder newBuilder() {
      return new ContentBuilder(this);
    }

  }

  /**
   * Content Builder.
   */
  public class ContentBuilder {
    private List<ContentItem> contentItems_serialized_name;

    private ContentBuilder(Content content) {
      contentItems_serialized_name = content.contentItems_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ContentBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param contentItems the contentItems
     */
    public ContentBuilder(List<ContentItem> contentItems) {
      this.contentItems_serialized_name = contentItems;
    }

    /**
     * Builds a Content.
     *
     * @return the content
     */
    public Content build() {
      return new Content(this);
    }

    /**
     * Adds an contentItems to contentItems_serialized_name.
     *
     * @param contentItems the new contentItems
     * @return the Content builder
     */
    public ContentBuilder addContentItems(ContentItem contentItems) {
      IBMWatsonValidator.notNull(contentItems, 'contentItems cannot be null');
      if (this.contentItems_serialized_name == null) {
        this.contentItems_serialized_name = new List<ContentItem>();
      }
      this.contentItems_serialized_name.add(contentItems);
      return this;
    }

    /**
     * Set the contentItems_serialized_name.
     * Existing contentItems_serialized_name will be replaced.
     *
     * @param contentItems the contentItems
     * @return the Content builder
     */
    public ContentBuilder contentItems(List<ContentItem> contentItems) {
      this.contentItems_serialized_name = contentItems;
      return this;
    }
  }

  /**
   * ContentItem.
   */
  public class ContentItem {
    private String content_serialized_name;
    private String id_serialized_name;
    private Long created_serialized_name;
    private Long updated_serialized_name;
    private String contenttype_serialized_name;
    private String language_serialized_name;
    private String parentid_serialized_name;
    private Boolean reply_serialized_name;
    private Boolean forward_serialized_name;
    /**
     * Gets the content_serialized_name.
     *
     * The content that is to be analyzed. The service supports up to 20 MB of content for all `ContentItem` objects
     * combined.
     *
     * @return the content_serialized_name
     */
    public String content() {
      return content_serialized_name;
    }
    /**
     * Gets the id_serialized_name.
     *
     * A unique identifier for this content item.
     *
     * @return the id_serialized_name
     */
    public String id() {
      return id_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * A timestamp that identifies when this content was created. Specify a value in milliseconds since the UNIX Epoch
     * (January 1, 1970, at 0:00 UTC). Required only for results that include temporal behavior data.
     *
     * @return the created_serialized_name
     */
    public Long created() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * A timestamp that identifies when this content was last updated. Specify a value in milliseconds since the UNIX
     * Epoch (January 1, 1970, at 0:00 UTC). Required only for results that include temporal behavior data.
     *
     * @return the updated_serialized_name
     */
    public Long updated() {
      return updated_serialized_name;
    }
    /**
     * Gets the contenttype_serialized_name.
     *
     * The MIME type of the content. The default is plain text. The tags are stripped from HTML content before it is
     * analyzed; plain text is processed as submitted.
     *
     * @return the contenttype_serialized_name
     */
    public String contenttype() {
      return contenttype_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language identifier (two-letter ISO 639-1 identifier) for the language of the content item. The default is
     * `en` (English). Regional variants are treated as their parent language; for example, `en-US` is interpreted as
     * `en`. A language specified with the **Content-Type** parameter overrides the value of this parameter; any content
     * items that specify a different language are ignored. Omit the **Content-Type** parameter to base the language on
     * the most prevalent specification among the content items; again, content items that specify a different language
     * are ignored. You can specify any combination of languages for the input and response content.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    /**
     * Gets the parentid_serialized_name.
     *
     * The unique ID of the parent content item for this item. Used to identify hierarchical relationships between
     * posts/replies, messages/replies, and so on.
     *
     * @return the parentid_serialized_name
     */
    public String parentid() {
      return parentid_serialized_name;
    }
    /**
     * Gets the reply_serialized_name.
     *
     * Indicates whether this content item is a reply to another content item.
     *
     * @return the reply_serialized_name
     */
    public Boolean reply() {
      return reply_serialized_name;
    }
    /**
     * Gets the forward_serialized_name.
     *
     * Indicates whether this content item is a forwarded/copied version of another content item.
     *
     * @return the forward_serialized_name
     */
    public Boolean forward() {
      return forward_serialized_name;
    }
    private ContentItem(ContentItemBuilder builder) {
      IBMWatsonValidator.notNull(builder.content_serialized_name, 'content_serialized_name cannot be null');
      content_serialized_name = builder.content_serialized_name;
      id_serialized_name = builder.id_serialized_name;
      created_serialized_name = builder.created_serialized_name;
      updated_serialized_name = builder.updated_serialized_name;
      contenttype_serialized_name = builder.contenttype_serialized_name;
      language_serialized_name = builder.language_serialized_name;
      parentid_serialized_name = builder.parentid_serialized_name;
      reply_serialized_name = builder.reply_serialized_name;
      forward_serialized_name = builder.forward_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ContentItem builder
     */
    public ContentItemBuilder newBuilder() {
      return new ContentItemBuilder(this);
    }

  }

  /**
   * ContentItem Builder.
   */
  public class ContentItemBuilder {
    private String content_serialized_name;
    private String id_serialized_name;
    private Long created_serialized_name;
    private Long updated_serialized_name;
    private String contenttype_serialized_name;
    private String language_serialized_name;
    private String parentid_serialized_name;
    private Boolean reply_serialized_name;
    private Boolean forward_serialized_name;

    private ContentItemBuilder(ContentItem contentItem) {
      content_serialized_name = contentItem.content_serialized_name;
      id_serialized_name = contentItem.id_serialized_name;
      created_serialized_name = contentItem.created_serialized_name;
      updated_serialized_name = contentItem.updated_serialized_name;
      contenttype_serialized_name = contentItem.contenttype_serialized_name;
      language_serialized_name = contentItem.language_serialized_name;
      parentid_serialized_name = contentItem.parentid_serialized_name;
      reply_serialized_name = contentItem.reply_serialized_name;
      forward_serialized_name = contentItem.forward_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ContentItemBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param content the content
     */
    public ContentItemBuilder(String content) {
      this.content_serialized_name = content;
    }

    /**
     * Builds a ContentItem.
     *
     * @return the contentItem
     */
    public ContentItem build() {
      return new ContentItem(this);
    }

    /**
     * Set the content_serialized_name.
     *
     * @param content the content
     * @return the ContentItem builder
     */
    public ContentItemBuilder content(String content) {
      this.content_serialized_name = content;
      return this;
    }

    /**
     * Set the id_serialized_name.
     *
     * @param id the id
     * @return the ContentItem builder
     */
    public ContentItemBuilder id(String id) {
      this.id_serialized_name = id;
      return this;
    }

    /**
     * Set the created_serialized_name.
     *
     * @param created the created
     * @return the ContentItem builder
     */
    public ContentItemBuilder created(Long created) {
      this.created_serialized_name = created;
      return this;
    }

    /**
     * Set the updated_serialized_name.
     *
     * @param updated the updated
     * @return the ContentItem builder
     */
    public ContentItemBuilder updated(Long updated) {
      this.updated_serialized_name = updated;
      return this;
    }

    /**
     * Set the contenttype_serialized_name.
     *
     * @param contenttype the contenttype
     * @return the ContentItem builder
     */
    public ContentItemBuilder contenttype(String contenttype) {
      this.contenttype_serialized_name = contenttype;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the ContentItem builder
     */
    public ContentItemBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }

    /**
     * Set the parentid_serialized_name.
     *
     * @param parentid the parentid
     * @return the ContentItem builder
     */
    public ContentItemBuilder parentid(String parentid) {
      this.parentid_serialized_name = parentid;
      return this;
    }

    /**
     * Set the reply_serialized_name.
     *
     * @param reply the reply
     * @return the ContentItem builder
     */
    public ContentItemBuilder reply(Boolean reply) {
      this.reply_serialized_name = reply;
      return this;
    }

    /**
     * Set the forward_serialized_name.
     *
     * @param forward the forward
     * @return the ContentItem builder
     */
    public ContentItemBuilder forward(Boolean forward) {
      this.forward_serialized_name = forward;
      return this;
    }
  }

  /**
   * Profile.
   */
  public class Profile extends IBMWatsonResponseModel {
    private String processed_language_serialized_name;
    private Long word_count_serialized_name;
    private String word_count_message_serialized_name;
    private List<Trait> personality_serialized_name;
    private List<Trait> needs_serialized_name;
    private List<Trait> values_serialized_name;
    private List<Behavior> behavior_serialized_name;
    private List<ConsumptionPreferencesCategory> consumption_preferences_serialized_name;
    private List<Warning> warnings_serialized_name;
    /**
     * Gets the processed_language_serialized_name.
     *
     * The language model that was used to process the input.
     *
     * @return the processed_language_serialized_name
     */
    @AuraEnabled
    public String getProcessedLanguage() {
      return processed_language_serialized_name;
    }
    /**
     * Gets the word_count_serialized_name.
     *
     * The number of words from the input that were used to produce the profile.
     *
     * @return the word_count_serialized_name
     */
    @AuraEnabled
    public Long getWordCount() {
      return word_count_serialized_name;
    }
    /**
     * Gets the word_count_message_serialized_name.
     *
     * When guidance is appropriate, a string that provides a message that indicates the number of words found and where
     * that value falls in the range of required or suggested number of words.
     *
     * @return the word_count_message_serialized_name
     */
    @AuraEnabled
    public String getWordCountMessage() {
      return word_count_message_serialized_name;
    }
    /**
     * Gets the personality_serialized_name.
     *
     * A recursive array of `Trait` objects that provides detailed results for the Big Five personality characteristics
     * (dimensions and facets) inferred from the input text.
     *
     * @return the personality_serialized_name
     */
    @AuraEnabled
    public List<Trait> getPersonality() {
      return personality_serialized_name;
    }
    /**
     * Gets the needs_serialized_name.
     *
     * Detailed results for the Needs characteristics inferred from the input text.
     *
     * @return the needs_serialized_name
     */
    @AuraEnabled
    public List<Trait> getNeeds() {
      return needs_serialized_name;
    }
    /**
     * Gets the values_serialized_name.
     *
     * Detailed results for the Values characteristics inferred from the input text.
     *
     * @return the values_serialized_name
     */
    @AuraEnabled
    public List<Trait> getValues() {
      return values_serialized_name;
    }
    /**
     * Gets the behavior_serialized_name.
     *
     * For JSON content that is timestamped, detailed results about the social behavior disclosed by the input in terms
     * of temporal characteristics. The results include information about the distribution of the content over the days
     * of the week and the hours of the day.
     *
     * @return the behavior_serialized_name
     */
    @AuraEnabled
    public List<Behavior> getBehavior() {
      return behavior_serialized_name;
    }
    /**
     * Gets the consumption_preferences_serialized_name.
     *
     * If the **consumption_preferences** parameter is `true`, detailed results for each category of consumption
     * preferences. Each element of the array provides information inferred from the input text for the individual
     * preferences of that category.
     *
     * @return the consumption_preferences_serialized_name
     */
    @AuraEnabled
    public List<ConsumptionPreferencesCategory> getConsumptionPreferences() {
      return consumption_preferences_serialized_name;
    }
    /**
     * Gets the warnings_serialized_name.
     *
     * Warning messages associated with the input text submitted with the request. The array is empty if the input
     * generated no warnings.
     *
     * @return the warnings_serialized_name
     */
    @AuraEnabled
    public List<Warning> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the processed_language_serialized_name.
     *
     * @param processedLanguage the new processedLanguage
     */
    public void setProcessedLanguage(final String processedLanguage) {
      this.processed_language_serialized_name = processedLanguage;
    }

    /**
     * Sets the word_count_serialized_name.
     *
     * @param wordCount the new wordCount
     */
    public void setWordCount(final long wordCount) {
      this.word_count_serialized_name = wordCount;
    }

    /**
     * Sets the word_count_message_serialized_name.
     *
     * @param wordCountMessage the new wordCountMessage
     */
    public void setWordCountMessage(final String wordCountMessage) {
      this.word_count_message_serialized_name = wordCountMessage;
    }

    /**
     * Sets the personality_serialized_name.
     *
     * @param personality the new personality
     */
    public void setPersonality(final List<Trait> personality) {
      this.personality_serialized_name = personality;
    }

    /**
     * Sets the needs_serialized_name.
     *
     * @param needs the new needs
     */
    public void setNeeds(final List<Trait> needs) {
      this.needs_serialized_name = needs;
    }

    /**
     * Sets the values_serialized_name.
     *
     * @param values the new values
     */
    public void setValues(final List<Trait> values) {
      this.values_serialized_name = values;
    }

    /**
     * Sets the behavior_serialized_name.
     *
     * @param behavior the new behavior
     */
    public void setBehavior(final List<Behavior> behavior) {
      this.behavior_serialized_name = behavior;
    }

    /**
     * Sets the consumption_preferences_serialized_name.
     *
     * @param consumptionPreferences the new consumptionPreferences
     */
    public void setConsumptionPreferences(final List<ConsumptionPreferencesCategory> consumptionPreferences) {
      this.consumption_preferences_serialized_name = consumptionPreferences;
    }

    /**
     * Sets the warnings_serialized_name.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final List<Warning> warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Profile ret = (Profile) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for personality_serialized_name
      List<Trait> newPersonality = new List<Trait>();
      List<Trait> deserializedPersonality = ret.getPersonality();
      if (deserializedPersonality != null) {
        for (Integer i = 0; i < deserializedPersonality.size(); i++) {
          Trait currentItem = ret.getPersonality().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('personality_serialized_name');
          Trait newItem = (Trait) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Trait.class);
          newPersonality.add(newItem);
        }
        ret.setPersonality(newPersonality);
      }

      // calling custom deserializer for needs_serialized_name
      List<Trait> newNeeds = new List<Trait>();
      List<Trait> deserializedNeeds = ret.getNeeds();
      if (deserializedNeeds != null) {
        for (Integer i = 0; i < deserializedNeeds.size(); i++) {
          Trait currentItem = ret.getNeeds().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('needs_serialized_name');
          Trait newItem = (Trait) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Trait.class);
          newNeeds.add(newItem);
        }
        ret.setNeeds(newNeeds);
      }

      // calling custom deserializer for values_serialized_name
      List<Trait> newValues = new List<Trait>();
      List<Trait> deserializedValues = ret.getValues();
      if (deserializedValues != null) {
        for (Integer i = 0; i < deserializedValues.size(); i++) {
          Trait currentItem = ret.getValues().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('values_serialized_name');
          Trait newItem = (Trait) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Trait.class);
          newValues.add(newItem);
        }
        ret.setValues(newValues);
      }

      // calling custom deserializer for behavior_serialized_name
      List<Behavior> newBehavior = new List<Behavior>();
      List<Behavior> deserializedBehavior = ret.getBehavior();
      if (deserializedBehavior != null) {
        for (Integer i = 0; i < deserializedBehavior.size(); i++) {
          Behavior currentItem = ret.getBehavior().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('behavior_serialized_name');
          Behavior newItem = (Behavior) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Behavior.class);
          newBehavior.add(newItem);
        }
        ret.setBehavior(newBehavior);
      }

      // calling custom deserializer for consumption_preferences_serialized_name
      List<ConsumptionPreferencesCategory> newConsumptionPreferences = new List<ConsumptionPreferencesCategory>();
      List<ConsumptionPreferencesCategory> deserializedConsumptionPreferences = ret.getConsumptionPreferences();
      if (deserializedConsumptionPreferences != null) {
        for (Integer i = 0; i < deserializedConsumptionPreferences.size(); i++) {
          ConsumptionPreferencesCategory currentItem = ret.getConsumptionPreferences().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('consumption_preferences_serialized_name');
          ConsumptionPreferencesCategory newItem = (ConsumptionPreferencesCategory) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ConsumptionPreferencesCategory.class);
          newConsumptionPreferences.add(newItem);
        }
        ret.setConsumptionPreferences(newConsumptionPreferences);
      }

      // calling custom deserializer for warnings_serialized_name
      List<Warning> newWarnings = new List<Warning>();
      List<Warning> deserializedWarnings = ret.getWarnings();
      if (deserializedWarnings != null) {
        for (Integer i = 0; i < deserializedWarnings.size(); i++) {
          Warning currentItem = ret.getWarnings().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('warnings_serialized_name');
          Warning newItem = (Warning) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Warning.class);
          newWarnings.add(newItem);
        }
        ret.setWarnings(newWarnings);
      }

      return ret;
    }
  }

  /**
   * The profile options.
   */
  public class ProfileOptions extends IBMWatsonOptionsModel {
    private Content content_serialized_name;
    private String body_serialized_name;
    private String content_type_serialized_name;
    private String content_language_serialized_name;
    private String accept_language_serialized_name;
    private Boolean raw_scores_serialized_name;
    private Boolean consumption_preferences_serialized_name;
    /**
     * Gets the content_serialized_name.
     *
     * A maximum of 20 MB of content to analyze, though the service requires much less text; for more information, see
     * [Providing sufficient
     * input](https://console.bluemix.net/docs/services/personality-insights/input.html#sufficient). For JSON input,
     * provide an object of type `Content`.
     *
     * @return the content_serialized_name
     */
    public Content content() {
      return content_serialized_name;
    }
    /**
     * Gets the body_serialized_name.
     *
     * A maximum of 20 MB of content to analyze, though the service requires much less text; for more information, see
     * [Providing sufficient
     * input](https://console.bluemix.net/docs/services/personality-insights/input.html#sufficient). For JSON input,
     * provide an object of type `Content`.
     *
     * @return the body_serialized_name
     */
    public String body() {
      return body_serialized_name;
    }
    /**
     * Gets the content_type_serialized_name.
     *
     * The type of the input: application/json, text/html, or text/plain. A character encoding can be specified by
     * including a `charset` parameter. For example, 'text/html;charset=utf-8'.
     *
     * @return the content_type_serialized_name
     */
    public String contentType() {
      return content_type_serialized_name;
    }
    /**
     * Gets the content_language_serialized_name.
     *
     * The language of the input text for the request: Arabic, English, Japanese, Korean, or Spanish. Regional variants
     * are treated as their parent language; for example, `en-US` is interpreted as `en`.
     *
     * The effect of the **Content-Language** parameter depends on the **Content-Type** parameter. When **Content-Type**
     * is `text/plain` or `text/html`, **Content-Language** is the only way to specify the language. When
     * **Content-Type** is `application/json`, **Content-Language** overrides a language specified with the `language`
     * parameter of a `ContentItem` object, and content items that specify a different language are ignored; omit this
     * parameter to base the language on the specification of the content items. You can specify any combination of
     * languages for **Content-Language** and **Accept-Language**.
     *
     * @return the content_language_serialized_name
     */
    public String contentLanguage() {
      return content_language_serialized_name;
    }
    /**
     * Gets the accept_language_serialized_name.
     *
     * The desired language of the response. For two-character arguments, regional variants are treated as their parent
     * language; for example, `en-US` is interpreted as `en`. You can specify any combination of languages for the input
     * and response content.
     *
     * @return the accept_language_serialized_name
     */
    public String acceptLanguage() {
      return accept_language_serialized_name;
    }
    /**
     * Gets the raw_scores_serialized_name.
     *
     * Indicates whether a raw score in addition to a normalized percentile is returned for each characteristic; raw
     * scores are not compared with a sample population. By default, only normalized percentiles are returned.
     *
     * @return the raw_scores_serialized_name
     */
    public Boolean rawScores() {
      return raw_scores_serialized_name;
    }
    /**
     * Gets the consumption_preferences_serialized_name.
     *
     * Indicates whether consumption preferences are returned with the results. By default, no consumption preferences
     * are returned.
     *
     * @return the consumption_preferences_serialized_name
     */
    public Boolean consumptionPreferences() {
      return consumption_preferences_serialized_name;
    }
    private ProfileOptions(ProfileOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.content_type_serialized_name != null, 'content_type_serialized_name cannot be null');
      content_serialized_name = builder.content_serialized_name;
      body_serialized_name = builder.body_serialized_name;
      content_type_serialized_name = builder.content_type_serialized_name;
      content_language_serialized_name = builder.content_language_serialized_name;
      accept_language_serialized_name = builder.accept_language_serialized_name;
      raw_scores_serialized_name = builder.raw_scores_serialized_name;
      consumption_preferences_serialized_name = builder.consumption_preferences_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ProfileOptions builder
     */
    public ProfileOptionsBuilder newBuilder() {
      return new ProfileOptionsBuilder(this);
    }

  }

  /**
   * ProfileOptions Builder.
   */
  public class ProfileOptionsBuilder extends IBMWatsonOptionsModel {
    private Content content_serialized_name;
    private String body_serialized_name;
    private String content_type_serialized_name;
    private String content_language_serialized_name;
    private String accept_language_serialized_name;
    private Boolean raw_scores_serialized_name;
    private Boolean consumption_preferences_serialized_name;

    private ProfileOptionsBuilder(ProfileOptions profileOptions) {
      content_serialized_name = profileOptions.content_serialized_name;
      body_serialized_name = profileOptions.body_serialized_name;
      content_type_serialized_name = profileOptions.content_type_serialized_name;
      content_language_serialized_name = profileOptions.content_language_serialized_name;
      accept_language_serialized_name = profileOptions.accept_language_serialized_name;
      raw_scores_serialized_name = profileOptions.raw_scores_serialized_name;
      consumption_preferences_serialized_name = profileOptions.consumption_preferences_serialized_name;
      this.requestHeaders.putAll(profileOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ProfileOptionsBuilder() {
    }

    /**
     * Builds a ProfileOptions.
     *
     * @return the profileOptions
     */
    public ProfileOptions build() {
      return new ProfileOptions(this);
    }

    /**
     * Set the content_language_serialized_name.
     *
     * @param contentLanguage the contentLanguage
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder contentLanguage(String contentLanguage) {
      this.content_language_serialized_name = contentLanguage;
      return this;
    }

    /**
     * Set the accept_language_serialized_name.
     *
     * @param acceptLanguage the acceptLanguage
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder acceptLanguage(String acceptLanguage) {
      this.accept_language_serialized_name = acceptLanguage;
      return this;
    }

    /**
     * Set the raw_scores_serialized_name.
     *
     * @param rawScores the rawScores
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder rawScores(Boolean rawScores) {
      this.raw_scores_serialized_name = rawScores;
      return this;
    }

    /**
     * Set the consumption_preferences_serialized_name.
     *
     * @param consumptionPreferences the consumptionPreferences
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder consumptionPreferences(Boolean consumptionPreferences) {
      this.consumption_preferences_serialized_name = consumptionPreferences;
      return this;
    }

    /**
     * Set the content_serialized_name.
     *
     * @param content the content
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder content(Content content) {
      this.content_serialized_name = content;
      this.content_type_serialized_name = IBMWatsonHttpMediaType.APPLICATION_JSON;
      return this;
    }

    /**
     * Set the html.
     *
     * @param html the html
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder html(String html) {
      this.body_serialized_name = html;
      this.content_type_serialized_name = IBMWatsonHttpMediaType.TEXT_HTML;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder text(String text) {
      this.body_serialized_name = text;
      this.content_type_serialized_name = IBMWatsonHttpMediaType.TEXT_PLAIN;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Trait.
   */
  public class Trait extends IBMWatsonGenericModel {
    private String trait_id_serialized_name;
    private String name_serialized_name;
    private String category_serialized_name;
    private Double percentile_serialized_name;
    private Double raw_score_serialized_name;
    private Boolean significant_serialized_name;
    private List<Trait> children_serialized_name;
    /**
     * Gets the trait_id_serialized_name.
     *
     * The unique, non-localized identifier of the characteristic to which the results pertain. IDs have the form
     * * `big5_{characteristic}` for Big Five personality dimensions
     * * `facet_{characteristic}` for Big Five personality facets
     * * `need_{characteristic}` for Needs
     *  *`value_{characteristic}` for Values.
     *
     * @return the trait_id_serialized_name
     */
    @AuraEnabled
    public String getTraitId() {
      return trait_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The user-visible, localized name of the characteristic.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the category_serialized_name.
     *
     * The category of the characteristic: `personality` for Big Five personality characteristics, `needs` for Needs,
     * and `values` for Values.
     *
     * @return the category_serialized_name
     */
    @AuraEnabled
    public String getCategory() {
      return category_serialized_name;
    }
    /**
     * Gets the percentile_serialized_name.
     *
     * The normalized percentile score for the characteristic. The range is 0 to 1. For example, if the percentage for
     * Openness is 0.60, the author scored in the 60th percentile; the author is more open than 59 percent of the
     * population and less open than 39 percent of the population.
     *
     * @return the percentile_serialized_name
     */
    @AuraEnabled
    public Double getPercentile() {
      return percentile_serialized_name;
    }
    /**
     * Gets the raw_score_serialized_name.
     *
     * The raw score for the characteristic. The range is 0 to 1. A higher score generally indicates a greater
     * likelihood that the author has that characteristic, but raw scores must be considered in aggregate: The range of
     * values in practice might be much smaller than 0 to 1, so an individual score must be considered in the context of
     * the overall scores and their range.
     *
     * The raw score is computed based on the input and the service model; it is not normalized or compared with a
     * sample population. The raw score enables comparison of the results against a different sampling population and
     * with a custom normalization approach.
     *
     * @return the raw_score_serialized_name
     */
    @AuraEnabled
    public Double getRawScore() {
      return raw_score_serialized_name;
    }
    /**
     * Gets the significant_serialized_name.
     *
     * **`2017-10-13`**: Indicates whether the characteristic is meaningful for the input language. The field is always
     * `true` for all characteristics of English, Spanish, and Japanese input. The field is `false` for the subset of
     * characteristics of Arabic and Korean input for which the service's models are unable to generate meaningful
     * results. **`2016-10-19`**: Not returned.
     *
     * @return the significant_serialized_name
     */
    @AuraEnabled
    public Boolean getSignificant() {
      return significant_serialized_name;
    }
    /**
     * Gets the children_serialized_name.
     *
     * For `personality` (Big Five) dimensions, more detailed results for the facets of each dimension as inferred from
     * the input text.
     *
     * @return the children_serialized_name
     */
    @AuraEnabled
    public List<Trait> getChildren() {
      return children_serialized_name;
    }

    /**
     * Sets the trait_id_serialized_name.
     *
     * @param traitId the new traitId
     */
    public void setTraitId(final String traitId) {
      this.trait_id_serialized_name = traitId;
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
     * Sets the category_serialized_name.
     *
     * @param category the new category
     */
    public void setCategory(final String category) {
      this.category_serialized_name = category;
    }

    /**
     * Sets the percentile_serialized_name.
     *
     * @param percentile the new percentile
     */
    public void setPercentile(final Double percentile) {
      this.percentile_serialized_name = percentile;
    }

    /**
     * Sets the raw_score_serialized_name.
     *
     * @param rawScore the new rawScore
     */
    public void setRawScore(final Double rawScore) {
      this.raw_score_serialized_name = rawScore;
    }

    /**
     * Sets the significant_serialized_name.
     *
     * @param significant the new significant
     */
    public void setSignificant(final Boolean significant) {
      this.significant_serialized_name = significant;
    }

    /**
     * Sets the children_serialized_name.
     *
     * @param children the new children
     */
    public void setChildren(final List<Trait> children) {
      this.children_serialized_name = children;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Trait ret = (Trait) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for children_serialized_name
      List<Trait> newChildren = new List<Trait>();
      List<Trait> deserializedChildren = ret.getChildren();
      if (deserializedChildren != null) {
        for (Integer i = 0; i < deserializedChildren.size(); i++) {
          Trait currentItem = ret.getChildren().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('children_serialized_name');
          Trait newItem = (Trait) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Trait.class);
          newChildren.add(newItem);
        }
        ret.setChildren(newChildren);
      }

      return ret;
    }
  }

  /**
   * Warning.
   */
  public class Warning extends IBMWatsonGenericModel {
    private String warning_id_serialized_name;
    private String message_serialized_name;
    /**
     * Gets the warning_id_serialized_name.
     *
     * The identifier of the warning message.
     *
     * @return the warning_id_serialized_name
     */
    @AuraEnabled
    public String getWarningId() {
      return warning_id_serialized_name;
    }
    /**
     * Gets the message_serialized_name.
     *
     * The message associated with the `warning_id`:
     * * `WORD_COUNT_MESSAGE`: "There were {number} words in the input. We need a minimum of 600, preferably 1,200 or
     * more, to compute statistically significant estimates."
     * * `JSON_AS_TEXT`: "Request input was processed as text/plain as indicated, however detected a JSON input. Did you
     * mean application/json?"
     * * `CONTENT_TRUNCATED`: "For maximum accuracy while also optimizing processing time, only the first 250KB of input
     * text (excluding markup) was analyzed. Accuracy levels off at approximately 3,000 words so this did not affect the
     * accuracy of the profile."
     * * `PARTIAL_TEXT_USED`, "The text provided to compute the profile was trimmed for performance reasons. This action
     * does not affect the accuracy of the output, as not all of the input text was required." Applies only when Arabic
     * input text exceeds a threshold at which additional words do not contribute to the accuracy of the profile.
     *
     * @return the message_serialized_name
     */
    @AuraEnabled
    public String getMessage() {
      return message_serialized_name;
    }

    /**
     * Sets the warning_id_serialized_name.
     *
     * @param warningId the new warningId
     */
    public void setWarningId(final String warningId) {
      this.warning_id_serialized_name = warningId;
    }

    /**
     * Sets the message_serialized_name.
     *
     * @param message the new message
     */
    public void setMessage(final String message) {
      this.message_serialized_name = message;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Warning ret = (Warning) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

}
