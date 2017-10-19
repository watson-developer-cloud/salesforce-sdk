public class PersonalityInsightsV3Models {
  /**
   * Behavior.
   */
  public class Behavior extends IBMWatsonGenericModel {
    private String trait_id;
    private String name;
    private String category;
    private Double percentage;
    /**
     * Gets the trait_id.
     *
     * The unique identifier of the characteristic to which the results pertain. IDs have the form `behavior_{value}`.
     *
     * @return the trait_id
     */
    public String getTraitId() {
      return trait_id;
    }
    /**
     * Gets the name.
     *
     * The user-visible name of the characteristic.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the category.
     *
     * The category of the characteristic: `behavior` for temporal data.
     *
     * @return the category
     */
    public String getCategory() {
      return category;
    }
    /**
     * Gets the percentage.
     *
     * For JSON content that is timestamped, the percentage of timestamped input data that occurred during that day of the week or hour of the day. The range is 0 to 1.
     *
     * @return the percentage
     */
    public Double getPercentage() {
      return percentage;
    }

    /**
     * Sets the trait_id.
     *
     * @param trait_id the new trait_id
     */
    public void setTraitId(final String trait_id) {
      this.trait_id = trait_id;
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
     * Sets the category.
     *
     * @param category the new category
     */
    public void setCategory(final String category) {
      this.category = category;
    }

    /**
     * Sets the percentage.
     *
     * @param percentage the new percentage
     */
    public void setPercentage(final Double percentage) {
      this.percentage = percentage;
    }
  }

  /**
   * ConsumptionPreferences.
   */
  public class ConsumptionPreferences extends IBMWatsonGenericModel {
    private String consumption_preference_id;
    private String name;
    private Double score;
    /**
     * Gets the consumption_preference_id.
     *
     * The unique identifier of the consumption preference to which the results pertain. IDs have the form `consumption_preferences_{preference}`.
     *
     * @return the consumption_preference_id
     */
    public String getConsumptionPreferenceId() {
      return consumption_preference_id;
    }
    /**
     * Gets the name.
     *
     * The user-visible name of the consumption preference.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the score.
     *
     * The score for the consumption preference: `0.0` indicates unlikely, `0.5` indicates neutrality, and `1.0` indicates likely. The scores for some preferences are binary and do not allow a neutral value. The score is an indication of preference based on the results inferred from the input text, not a normalized percentile.
     *
     * @return the score
     */
    public Double getScore() {
      return score;
    }

    /**
     * Sets the consumption_preference_id.
     *
     * @param consumption_preference_id the new consumption_preference_id
     */
    public void setConsumptionPreferenceId(final String consumption_preference_id) {
      this.consumption_preference_id = consumption_preference_id;
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
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score = score;
    }
  }

  /**
   * ConsumptionPreferencesCategory.
   */
  public class ConsumptionPreferencesCategory extends IBMWatsonGenericModel {
    private String consumption_preference_category_id;
    private String name;
    private List<ConsumptionPreferences> consumption_preferences;
    /**
     * Gets the consumption_preference_category_id.
     *
     * The unique identifier of the consumption preferences category to which the results pertain. IDs have the form `consumption_preferences_{category}`.
     *
     * @return the consumption_preference_category_id
     */
    public String getConsumptionPreferenceCategoryId() {
      return consumption_preference_category_id;
    }
    /**
     * Gets the name.
     *
     * The user-visible name of the consumption preferences category.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the consumption_preferences.
     *
     * Detailed results inferred from the input text for the individual preferences of the category.
     *
     * @return the consumption_preferences
     */
    public List<ConsumptionPreferences> getConsumptionPreferences() {
      return consumption_preferences;
    }

    /**
     * Sets the consumption_preference_category_id.
     *
     * @param consumption_preference_category_id the new consumption_preference_category_id
     */
    public void setConsumptionPreferenceCategoryId(final String consumption_preference_category_id) {
      this.consumption_preference_category_id = consumption_preference_category_id;
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
     * Sets the consumption_preferences.
     *
     * @param consumption_preferences the new consumption_preferences
     */
    public void setConsumptionPreferences(final List<ConsumptionPreferences> consumption_preferences) {
      this.consumption_preferences = consumption_preferences;
    }
  }

  /**
   * Content.
   */
  public class Content extends IBMWatsonGenericModel {
    private List<ContentItem> content_items;
    /**
     * Gets the content_items.
     *
     * An array of `ContentItem` objects that provides the text that is to be analyzed.
     *
     * @return the content_items
     */
    public List<ContentItem> contentItems() {
      return content_items;
    }
    private Content(ContentBuilder builder) {
      IBMWatsonValidator.notNull(builder.content_items, 'content_items cannot be null');
      content_items = builder.content_items;
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
    private List<ContentItem> content_items;

    private ContentBuilder(Content content) {
      content_items = content.content_items;
    }

    /**
     * Instantiates a new builder.
     */
    public ContentBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param content_items the content_items
     */
    public ContentBuilder(List<ContentItem> content_items) {
      this.content_items = content_items;
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
     * Adds an content_items to content_items.
     *
     * @param content_items the new content_items
     * @return the Content builder
     */
    public ContentBuilder addContentItems(ContentItem content_items) {
      IBMWatsonValidator.notNull(content_items, 'content_items cannot be null');
      if (this.content_items == null) {
        this.content_items = new List<ContentItem>();
      }
      this.content_items.add(content_items);
      return this;
    }

    /**
     * Set the content_items.
     * Existing content_items will be replaced.
     *
     * @param content_items the content_items
     * @return the Content builder
     */
    public ContentBuilder contentItems(List<ContentItem> content_items) {
      this.content_items = content_items;
      return this;
    }
  }

  /**
   * ContentItem.
   */
  public class ContentItem extends IBMWatsonGenericModel {
    private String content;
    private String id;
    private Long created;
    private Long updated;
    private String contenttype;
    private String language;
    private String parentid;
    private Boolean reply;
    private Boolean forward;
    /**
     * Gets the content.
     *
     * Content that is to be analyzed. The service supports up to 20 MB of content for all items combined.
     *
     * @return the content
     */
    public String content() {
      return content;
    }
    /**
     * Gets the id.
     *
     * Unique identifier for this content item.
     *
     * @return the id
     */
    public String id() {
      return id;
    }
    /**
     * Gets the created.
     *
     * Timestamp that identifies when this content was created. Specify a value in milliseconds since the UNIX Epoch (January 1, 1970, at 0:00 UTC). Required only for results that include temporal behavior data.
     *
     * @return the created
     */
    public Long created() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * Timestamp that identifies when this content was last updated. Specify a value in milliseconds since the UNIX Epoch (January 1, 1970, at 0:00 UTC). Required only for results that include temporal behavior data.
     *
     * @return the updated
     */
    public Long updated() {
      return updated;
    }
    /**
     * Gets the contenttype.
     *
     * MIME type of the content. The default is plain text. The tags are stripped from HTML content before it is analyzed; plain text is processed as submitted.
     *
     * @return the contenttype
     */
    public String contenttype() {
      return contenttype;
    }
    /**
     * Gets the language.
     *
     * Language identifier (two-letter ISO 639-1 identifier) for the language of the content item. The default is `en` (English). Regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. A language specified with the `Content-Type` header overrides the value of this parameter; any content items that specify a different language are ignored. Omit the `Content-Type` header to base the language on the most prevalent specification among the content items; again, content items that specify a different language are ignored. You can specify any combination of languages for the input and response content.
     *
     * @return the language
     */
    public String language() {
      return language;
    }
    /**
     * Gets the parentid.
     *
     * Unique ID of the parent content item for this item. Used to identify hierarchical relationships between posts/replies, messages/replies, and so on.
     *
     * @return the parentid
     */
    public String parentid() {
      return parentid;
    }
    /**
     * Gets the reply.
     *
     * Indicates whether this content item is a reply to another content item.
     *
     * @return the reply
     */
    public Boolean reply() {
      return reply;
    }
    /**
     * Gets the forward.
     *
     * Indicates whether this content item is a forwarded/copied version of another content item.
     *
     * @return the forward
     */
    public Boolean forward() {
      return forward;
    }
    private ContentItem(ContentItemBuilder builder) {
      IBMWatsonValidator.notNull(builder.content, 'content cannot be null');
      content = builder.content;
      id = builder.id;
      created = builder.created;
      updated = builder.updated;
      contenttype = builder.contenttype;
      language = builder.language;
      parentid = builder.parentid;
      reply = builder.reply;
      forward = builder.forward;
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
    private String content;
    private String id;
    private Long created;
    private Long updated;
    private String contenttype;
    private String language;
    private String parentid;
    private Boolean reply;
    private Boolean forward;

    private ContentItemBuilder(ContentItem content_item) {
      content = content_item.content;
      id = content_item.id;
      created = content_item.created;
      updated = content_item.updated;
      contenttype = content_item.contenttype;
      language = content_item.language;
      parentid = content_item.parentid;
      reply = content_item.reply;
      forward = content_item.forward;
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
      this.content = content;
    }

    /**
     * Builds a ContentItem.
     *
     * @return the content_item
     */
    public ContentItem build() {
      return new ContentItem(this);
    }

    /**
     * Set the content.
     *
     * @param content the content
     * @return the ContentItem builder
     */
    public ContentItemBuilder content(String content) {
      this.content = content;
      return this;
    }

    /**
     * Set the id.
     *
     * @param id the id
     * @return the ContentItem builder
     */
    public ContentItemBuilder id(String id) {
      this.id = id;
      return this;
    }

    /**
     * Set the created.
     *
     * @param created the created
     * @return the ContentItem builder
     */
    public ContentItemBuilder created(Long created) {
      this.created = created;
      return this;
    }

    /**
     * Set the updated.
     *
     * @param updated the updated
     * @return the ContentItem builder
     */
    public ContentItemBuilder updated(Long updated) {
      this.updated = updated;
      return this;
    }

    /**
     * Set the contenttype.
     *
     * @param contenttype the contenttype
     * @return the ContentItem builder
     */
    public ContentItemBuilder contenttype(String contenttype) {
      this.contenttype = contenttype;
      return this;
    }

    /**
     * Set the language.
     *
     * @param language the language
     * @return the ContentItem builder
     */
    public ContentItemBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Set the parentid.
     *
     * @param parentid the parentid
     * @return the ContentItem builder
     */
    public ContentItemBuilder parentid(String parentid) {
      this.parentid = parentid;
      return this;
    }

    /**
     * Set the reply.
     *
     * @param reply the reply
     * @return the ContentItem builder
     */
    public ContentItemBuilder reply(Boolean reply) {
      this.reply = reply;
      return this;
    }

    /**
     * Set the forward.
     *
     * @param forward the forward
     * @return the ContentItem builder
     */
    public ContentItemBuilder forward(Boolean forward) {
      this.forward = forward;
      return this;
    }
  }

  /**
   * Profile.
   */
  public class Profile extends IBMWatsonGenericModel {
    private String processed_language;
    private Long word_count;
    private String word_count_message;
    private List<Trait> personality;
    private List<Trait> values;
    private List<Trait> needs;
    private List<Behavior> behavior;
    private List<ConsumptionPreferencesCategory> consumption_preferences;
    private List<Warning> warnings;
    /**
     * Gets the processed_language.
     *
     * The language model that was used to process the input; for example, `en`.
     *
     * @return the processed_language
     */
    public String getProcessedLanguage() {
      return processed_language;
    }
    /**
     * Gets the word_count.
     *
     * The number of words that were found in the input.
     *
     * @return the word_count
     */
    public Long getWordCount() {
      return word_count;
    }
    /**
     * Gets the word_count_message.
     *
     * When guidance is appropriate, a string that provides a message that indicates the number of words found and where that value falls in the range of required or suggested number of words.
     *
     * @return the word_count_message
     */
    public String getWordCountMessage() {
      return word_count_message;
    }
    /**
     * Gets the personality.
     *
     * Detailed results for the Big Five personality characteristics (dimensions and facets) inferred from the input text.
     *
     * @return the personality
     */
    public List<Trait> getPersonality() {
      return personality;
    }
    /**
     * Gets the values.
     *
     * Detailed results for the Needs characteristics inferred from the input text.
     *
     * @return the values
     */
    public List<Trait> getValues() {
      return values;
    }
    /**
     * Gets the needs.
     *
     * Detailed results for the Values characteristics inferred from the input text.
     *
     * @return the needs
     */
    public List<Trait> getNeeds() {
      return needs;
    }
    /**
     * Gets the behavior.
     *
     * For JSON content that is timestamped, detailed results about the social behavior disclosed by the input in terms of temporal characteristics. The results include information about the distribution of the content over the days of the week and the hours of the day.
     *
     * @return the behavior
     */
    public List<Behavior> getBehavior() {
      return behavior;
    }
    /**
     * Gets the consumption_preferences.
     *
     * If the `consumption_preferences` query parameter is `true`, detailed results for each category of consumption preferences. Each element of the array provides information inferred from the input text for the individual preferences of that category.
     *
     * @return the consumption_preferences
     */
    public List<ConsumptionPreferencesCategory> getConsumptionPreferences() {
      return consumption_preferences;
    }
    /**
     * Gets the warnings.
     *
     * Warning messages associated with the input text submitted with the request. The array is empty if the input generated no warnings.
     *
     * @return the warnings
     */
    public List<Warning> getWarnings() {
      return warnings;
    }

    /**
     * Sets the processed_language.
     *
     * @param processed_language the new processed_language
     */
    public void setProcessedLanguage(final String processed_language) {
      this.processed_language = processed_language;
    }

    /**
     * Sets the word_count.
     *
     * @param word_count the new word_count
     */
    public void setWordCount(final long word_count) {
      this.word_count = word_count;
    }

    /**
     * Sets the word_count_message.
     *
     * @param word_count_message the new word_count_message
     */
    public void setWordCountMessage(final String word_count_message) {
      this.word_count_message = word_count_message;
    }

    /**
     * Sets the personality.
     *
     * @param personality the new personality
     */
    public void setPersonality(final List<Trait> personality) {
      this.personality = personality;
    }

    /**
     * Sets the values.
     *
     * @param values the new values
     */
    public void setValues(final List<Trait> values) {
      this.values = values;
    }

    /**
     * Sets the needs.
     *
     * @param needs the new needs
     */
    public void setNeeds(final List<Trait> needs) {
      this.needs = needs;
    }

    /**
     * Sets the behavior.
     *
     * @param behavior the new behavior
     */
    public void setBehavior(final List<Behavior> behavior) {
      this.behavior = behavior;
    }

    /**
     * Sets the consumption_preferences.
     *
     * @param consumption_preferences the new consumption_preferences
     */
    public void setConsumptionPreferences(final List<ConsumptionPreferencesCategory> consumption_preferences) {
      this.consumption_preferences = consumption_preferences;
    }

    /**
     * Sets the warnings.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final List<Warning> warnings) {
      this.warnings = warnings;
    }
  }

  /**
   * The profile options.
   */
  public class ProfileOptions extends IBMWatsonGenericModel {
    private Content content;
    private String body;
    private String content_type;
    private String content_language;
    private String accept_language;
    private Boolean raw_scores;
    private Boolean csv_headers;
    private Boolean consumption_preferences;
    /**
     * Gets the content.
     *
     * A maximum of 20 MB of content to analyze, though the service requires much less text; for more information, see [Guidelines for providing sufficient input](https://console.bluemix.net/docs/services/personality-insights/user-overview.html#overviewGuidelines). A JSON request must conform to the `Content` model.
     *
     * @return the content
     */
    public Content content() {
      return content;
    }
    /**
     * Gets the body.
     *
     * A maximum of 20 MB of content to analyze, though the service requires much less text; for more information, see [Guidelines for providing sufficient input](https://console.bluemix.net/docs/services/personality-insights/user-overview.html#overviewGuidelines). A JSON request must conform to the `Content` model.
     *
     * @return the body
     */
    public String body() {
      return body;
    }
    /**
     * Gets the content_type.
     *
     * The type of the input: application/json, text/html, or text/plain. A character encoding can be specified by including a `charset` parameter. For example, 'text/html;charset=utf-8'.
     *
     * @return the content_type
     */
    public String contentType() {
      return content_type;
    }
    /**
     * Gets the content_language.
     *
     * The language of the input text for the request: Arabic, English, Japanese, Korean, or Spanish. Regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. The effect of the `Content-Language` header depends on the `Content-Type` header. When `Content-Type` is `text/plain` or `text/html`, `Content-Language` is the only way to specify the language. When `Content-Type` is `application/json`, `Content-Language` overrides a language specified with the `language` parameter of a `ContentItem` object, and content items that specify a different language are ignored; omit this header to base the language on the specification of the content items. You can specify any combination of languages for `Content-Language` and `Accept-Language`.
     *
     * @return the content_language
     */
    public String contentLanguage() {
      return content_language;
    }

    /**
     * Gets the accept_language.
     *
     * The desired language of the response. For two-character arguments, regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. You can specify any combination of languages for the input and response content.
     *
     * @return the accept_language
     */
    public String acceptLanguage() {
      return accept_language;
    }
    /**
     * Gets the raw_scores.
     *
     * If `true`, a raw score in addition to a normalized percentile is returned for each characteristic; raw scores are not compared with a sample population. If `false` (the default), only normalized percentiles are returned.
     *
     * @return the raw_scores
     */
    public Boolean rawScores() {
      return raw_scores;
    }
    /**
     * Gets the csv_headers.
     *
     * If `true`, column labels are returned with a CSV response; if `false` (the default), they are not. Applies only when the `Accept` header is set to `text/csv`.
     *
     * @return the csv_headers
     */
    public Boolean csvHeaders() {
      return csv_headers;
    }
    /**
     * Gets the consumption_preferences.
     *
     * If `true`, information about consumption preferences is returned with the results; if `false` (the default), the response does not include the information.
     *
     * @return the consumption_preferences
     */
    public Boolean consumptionPreferences() {
      return consumption_preferences;
    }
    private ProfileOptions(ProfileOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.content_type != null, 'content_type cannot be null');
      content = builder.content;
      body = builder.body;
      content_type = builder.content_type;
      content_language = builder.content_language;
      accept_language = builder.accept_language;
      raw_scores = builder.raw_scores;
      csv_headers = builder.csv_headers;
      consumption_preferences = builder.consumption_preferences;
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
  public class ProfileOptionsBuilder {
    private Content content;
    private String body;
    private String content_type;
    private String content_language;
    private String accept_language;
    private Boolean raw_scores;
    private Boolean csv_headers;
    private Boolean consumption_preferences;

    private ProfileOptionsBuilder(ProfileOptions profile_options) {
      content = profile_options.content;
      body = profile_options.body;
      content_type = profile_options.content_type;
      content_language = profile_options.content_language;
      accept_language = profile_options.accept_language;
      raw_scores = profile_options.raw_scores;
      csv_headers = profile_options.csv_headers;
      consumption_preferences = profile_options.consumption_preferences;
    }

    /**
     * Instantiates a new builder.
     */
    public ProfileOptionsBuilder() {
    }

    /**
     * Builds a ProfileOptions.
     *
     * @return the profile_options
     */
    public ProfileOptions build() {
      return new ProfileOptions(this);
    }

    /**
     * Set the content_language.
     *
     * @param content_language the content_language
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder contentLanguage(String content_language) {
      this.content_language = content_language;
      return this;
    }

    /**
     * Set the accept_language.
     *
     * @param accept_language the accept_language
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder acceptLanguage(String accept_language) {
      this.accept_language = accept_language;
      return this;
    }

    /**
     * Set the raw_scores.
     *
     * @param raw_scores the raw_scores
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder rawScores(Boolean raw_scores) {
      this.raw_scores = raw_scores;
      return this;
    }

    /**
     * Set the csv_headers.
     *
     * @param csv_headers the csv_headers
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder csvHeaders(Boolean csv_headers) {
      this.csv_headers = csv_headers;
      return this;
    }

    /**
     * Set the consumption_preferences.
     *
     * @param consumption_preferences the consumption_preferences
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder consumptionPreferences(Boolean consumption_preferences) {
      this.consumption_preferences = consumption_preferences;
      return this;
    }

    /**
     * Set the content.
     *
     * @param content the content
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder content(Content content) {
      this.content = content;
      this.content_type = IBMWatsonHttpMediaType.APPLICATION_JSON;
      return this;
    }

    /**
     * Set the html.
     *
     * @param html the html
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder html(String html) {
      this.body = html;
      this.content_type = IBMWatsonHttpMediaType.TEXT_HTML;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the ProfileOptions builder
     */
    public ProfileOptionsBuilder text(String text) {
      this.body = text;
      this.content_type = IBMWatsonHttpMediaType.TEXT_PLAIN;
      return this;
    }
  }

  /**
   * Trait.
   */
  public class Trait extends IBMWatsonGenericModel {
    private String trait_id;
    private String name;
    private String category;
    private Double percentile;
    private Double raw_score;
    private List<Trait> children;
    /**
     * Gets the trait_id.
     *
     * The unique identifier of the characteristic to which the results pertain. IDs have the form `big5_{characteristic}` for Big Five personality characteristics, `need_{characteristic}` for Needs, or `value_{characteristic}` for Values.
     *
     * @return the trait_id
     */
    public String getTraitId() {
      return trait_id;
    }
    /**
     * Gets the name.
     *
     * The user-visible name of the characteristic.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the category.
     *
     * The category of the characteristic: `personality` for Big Five personality characteristics, `needs` for Needs, or `values` for Values.
     *
     * @return the category
     */
    public String getCategory() {
      return category;
    }
    /**
     * Gets the percentile.
     *
     * The normalized percentile score for the characteristic. The range is 0 to 1. For example, if the percentage for Openness is 0.60, the author scored in the 60th percentile; the author is more open than 59 percent of the population and less open than 39 percent of the population.
     *
     * @return the percentile
     */
    public Double getPercentile() {
      return percentile;
    }
    /**
     * Gets the raw_score.
     *
     * The raw score for the characteristic. The range is 0 to 1. A higher score generally indicates a greater likelihood that the author has that characteristic, but raw scores must be considered in aggregate: The range of values in practice might be much smaller than 0 to 1, so an individual score must be considered in the context of the overall scores and their range. The raw score is computed based on the input and the service model; it is not normalized or compared with a sample population. The raw score enables comparison of the results against a different sampling population and with a custom normalization approach.
     *
     * @return the raw_score
     */
    public Double getRawScore() {
      return raw_score;
    }
    /**
     * Gets the children.
     *
     * For `personality` (Big Five) dimensions, more detailed results for the facets of each dimension as inferred from the input text.
     *
     * @return the children
     */
    public List<Trait> getChildren() {
      return children;
    }

    /**
     * Sets the trait_id.
     *
     * @param trait_id the new trait_id
     */
    public void setTraitId(final String trait_id) {
      this.trait_id = trait_id;
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
     * Sets the category.
     *
     * @param category the new category
     */
    public void setCategory(final String category) {
      this.category = category;
    }

    /**
     * Sets the percentile.
     *
     * @param percentile the new percentile
     */
    public void setPercentile(final Double percentile) {
      this.percentile = percentile;
    }

    /**
     * Sets the raw_score.
     *
     * @param raw_score the new raw_score
     */
    public void setRawScore(final Double raw_score) {
      this.raw_score = raw_score;
    }

    /**
     * Sets the children.
     *
     * @param children the new children
     */
    public void setChildren(final List<Trait> children) {
      this.children = children;
    }
  }

  /**
   * Warning.
   */
  public class Warning extends IBMWatsonGenericModel {
    private String warning_id;
    private String message;
    /**
     * Gets the warning_id.
     *
     * The identifier of the warning message, one of `WORD_COUNT_MESSAGE`, `JSON_AS_TEXT`, `CONTENT_TRUNCATED`, or `PARTIAL_TEXT_USED`.
     *
     * @return the warning_id
     */
    public String getWarningId() {
      return warning_id;
    }
    /**
     * Gets the message.
     *
     * The message associated with the `warning_id`. For `WORD_COUNT_MESSAGE`, "There were {number} words in the input. We need a minimum of 600, preferably 1,200 or more, to compute statistically significant estimates."; for `JSON_AS_TEXT`, "Request input was processed as text/plain as indicated, however detected a JSON input. Did you mean application/json?"; for `CONTENT_TRUNCATED`, "For maximum accuracy while also optimizing processing time, only the first 250KB of input text (excluding markup) was analyzed. Accuracy levels off at approximately 3,000 words so this did not affect the accuracy of the profile."; and for `PARTIAL_TEXT_USED`, "The text provided to compute the profile was trimmed for performance reasons. This action does not affect the accuracy of the output, as not all of the input text was required." The `PARTIAL_TEXT_USED` warning applies only when Arabic input text exceeds a threshold at which additional words do not contribute to the accuracy of the profile.
     *
     * @return the message
     */
    public String getMessage() {
      return message;
    }

    /**
     * Sets the warning_id.
     *
     * @param warning_id the new warning_id
     */
    public void setWarningId(final String warning_id) {
      this.warning_id = warning_id;
    }

    /**
     * Sets the message.
     *
     * @param message the new message
     */
    public void setMessage(final String message) {
      this.message = message;
    }
  }

}
