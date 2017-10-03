public class IBMWatsonPersonalityInsightsV1Models {
  /**
   * Behavior.
   */
  public class Behavior {
    private String traitId;
    private String name;
    private String category;
    private Double percentage;
  }
  /**
   * ConsumptionPreferences.
   */
  public class ConsumptionPreferences {
    private String consumptionPreferenceId;
    private String name;
    private Double score;
  }
  /**
   * ConsumptionPreferencesCategory.
   */
  public class ConsumptionPreferencesCategory {
    private String consumptionPreferenceCategoryId;
    private String name;
    private List<ConsumptionPreferences> consumptionPreferences;
  }
  /**
   * Content.
   */
  public class Content {
    private List<ContentItem> contentItems;

    /**
     * Builder.
     */
    public static class Builder {
      private List<ContentItem> contentItems;

      private Builder(Content content) {
        contentItems = content.contentItems;
      }

      /**
       * Instantiates a new builder.
       */
      public Builder() {
      }

      /**
       * Instantiates a new builder with required properties.
       *
       * @param contentItems the contentItems
       */
      public Builder(List<ContentItem> contentItems) {
        this.contentItems = contentItems;
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
       * Adds an contentItem to contentItems.
       *
       * @param contentItem the new contentItem
       * @return the Content builder
       */
      public Builder addContentItem(ContentItem contentItem) {
        Validator.notNull(contentItem, "contentItem cannot be null");
        if (this.contentItems == null) {
          this.contentItems = new ArrayList<ContentItem>();
        }
        this.contentItems.add(contentItem);
        return this;
      }

      /**
       * Set the contentItems.
       * Existing contentItems will be replaced.
       *
       * @param contentItems the contentItems
       * @return the Content builder
       */
      public Builder contentItems(List<ContentItem> contentItems) {
        this.contentItems = contentItems;
        return this;
      }
    }

    private Content(Builder builder) {
      Validator.notNull(builder.contentItems, "contentItems cannot be null");
      contentItems = builder.contentItems;
    }

    /**
     * New builder.
     *
     * @return a Content builder
     */
    public Builder newBuilder() {
      return new Builder(this);
    }
  }
  /**
   * ContentItem.
   */
  public class ContentItem {
    /**
     * MIME type of the content. The default is plain text. The tags are stripped from HTML content before it is analyzed; plain text is processed as submitted.
     */
    /** text/plain. */
    public static final String CONTENTTYPE_TEXT_PLAIN = 'text/plain';
    /** text/html. */
    public static final String CONTENTTYPE_TEXT_HTML = 'text/html';

    /**
     * Language identifier (two-letter ISO 639-1 identifier) for the language of the content item. The default is `en` (English). Regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. A language specified with the `Content-Type` header overrides the value of this parameter; any content items that specify a different language are ignored. Omit the `Content-Type` header to base the language on the most prevalent specification among the content items; again, content items that specify a different language are ignored. You can specify any combination of languages for the input and response content.
     */
    /** ar. */
    public static final String LANGUAGE_AR = 'ar';
    /** en. */
    public static final String LANGUAGE_EN = 'en';
    /** es. */
    public static final String LANGUAGE_ES = 'es';
    /** ja. */
    public static final String LANGUAGE_JA = 'ja';

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
     * Builder.
     */
    public static class Builder {
      private String content;
      private String id;
      private Long created;
      private Long updated;
      private String contenttype;
      private String language;
      private String parentid;
      private Boolean reply;
      private Boolean forward;

      private Builder(ContentItem contentItem) {
        content = contentItem.content;
        id = contentItem.id;
        created = contentItem.created;
        updated = contentItem.updated;
        contenttype = contentItem.contenttype;
        language = contentItem.language;
        parentid = contentItem.parentid;
        reply = contentItem.reply;
        forward = contentItem.forward;
      }

      /**
       * Instantiates a new builder.
       */
      public Builder() {
      }

      /**
       * Instantiates a new builder with required properties.
       *
       * @param content the content
       */
      public Builder(String content) {
        this.content = content;
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
       * Set the content.
       *
       * @param content the content
       * @return the ContentItem builder
       */
      public Builder content(String content) {
        this.content = content;
        return this;
      }

      /**
       * Set the id.
       *
       * @param id the id
       * @return the ContentItem builder
       */
      public Builder id(String id) {
        this.id = id;
        return this;
      }

      /**
       * Set the created.
       *
       * @param created the created
       * @return the ContentItem builder
       */
      public Builder created(long created) {
        this.created = created;
        return this;
      }

      /**
       * Set the updated.
       *
       * @param updated the updated
       * @return the ContentItem builder
       */
      public Builder updated(long updated) {
        this.updated = updated;
        return this;
      }

      /**
       * Set the contenttype.
       *
       * @param contenttype the contenttype
       * @return the ContentItem builder
       */
      public Builder contenttype(String contenttype) {
        this.contenttype = contenttype;
        return this;
      }

      /**
       * Set the language.
       *
       * @param language the language
       * @return the ContentItem builder
       */
      public Builder language(String language) {
        this.language = language;
        return this;
      }

      /**
       * Set the parentid.
       *
       * @param parentid the parentid
       * @return the ContentItem builder
       */
      public Builder parentid(String parentid) {
        this.parentid = parentid;
        return this;
      }

      /**
       * Set the reply.
       *
       * @param reply the reply
       * @return the ContentItem builder
       */
      public Builder reply(Boolean reply) {
        this.reply = reply;
        return this;
      }

      /**
       * Set the forward.
       *
       * @param forward the forward
       * @return the ContentItem builder
       */
      public Builder forward(Boolean forward) {
        this.forward = forward;
        return this;
      }
    }

    private ContentItem(Builder builder) {
      Validator.notNull(builder.content, "content cannot be null");
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
    public Builder newBuilder() {
      return new Builder(this);
    }
  }
  /**
   * Profile.
   */
  public class Profile {
    private String processedLanguage;
    private Long wordCount;
    private String wordCountMessage;
    private List<Trait> personality;
    private List<Trait> values;
    private List<Trait> needs;
    private List<Behavior> behavior;
    private List<ConsumptionPreferencesCategory> consumptionPreferences;
    private List<Warning> warnings;
  }
  /**
   * The profile options.
   */
  public class ProfileOptions {
    /**
     * The type of the input: application/json, text/html, or text/plain. A character encoding can be specified by including a `charset` parameter. For example, 'text/html;charset=utf-8'.
     */
    /** application/json. */
    public static final String CONTENT_TYPE_APPLICATION_JSON = 'application/json';
    /** text/html. */
    public static final String CONTENT_TYPE_TEXT_HTML = 'text/html';
    /** text/plain. */
    public static final String CONTENT_TYPE_TEXT_PLAIN = 'text/plain';

    /**
     * The language of the input text for the request: Arabic, English, Spanish, or Japanese. Regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. The effect of the `Content-Language` header depends on the `Content-Type` header. When `Content-Type` is `text/plain` or `text/html`, `Content-Language` is the only way to specify the language. When `Content-Type` is `application/json`, `Content-Language` overrides a language specified with the `language` parameter of a `ContentItem` object, and content items that specify a different language are ignored; omit this header to base the language on the specification of the content items. You can specify any combination of languages for `Content-Language` and `Accept-Language`.
     */
    /** ar. */
    public static final String CONTENT_LANGUAGE_AR = 'ar';
    /** en. */
    public static final String CONTENT_LANGUAGE_EN = 'en';
    /** es. */
    public static final String CONTENT_LANGUAGE_ES = 'es';
    /** ja. */
    public static final String CONTENT_LANGUAGE_JA = 'ja';

    /**
     * The desired language of the response. For two-character arguments, regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. You can specify any combination of languages for the input and response content.
     */
    /** ar. */
    public static final String ACCEPT_LANGUAGE_AR = 'ar';
    /** de. */
    public static final String ACCEPT_LANGUAGE_DE = 'de';
    /** en. */
    public static final String ACCEPT_LANGUAGE_EN = 'en';
    /** es. */
    public static final String ACCEPT_LANGUAGE_ES = 'es';
    /** fr. */
    public static final String ACCEPT_LANGUAGE_FR = 'fr';
    /** it. */
    public static final String ACCEPT_LANGUAGE_IT = 'it';
    /** ja. */
    public static final String ACCEPT_LANGUAGE_JA = 'ja';
    /** ko. */
    public static final String ACCEPT_LANGUAGE_KO = 'ko';
    /** pt-br. */
    public static final String ACCEPT_LANGUAGE_PT_BR = 'pt-br';
    /** zh-cn. */
    public static final String ACCEPT_LANGUAGE_ZH_CN = 'zh-cn';
    /** zh-tw. */
    public static final String ACCEPT_LANGUAGE_ZH_TW = 'zh-tw';

    private Content content;
    private String body;
    private String contentType;
    private String contentLanguage;
    private String acceptLanguage;
    private Boolean rawScores;
    private Boolean csvHeaders;
    private Boolean consumptionPreferences;

    /**
     * Builder.
     */
    public static class Builder {
      private Content content;
      private String body;
      private String contentType;
      private String contentLanguage;
      private String acceptLanguage;
      private Boolean rawScores;
      private Boolean csvHeaders;
      private Boolean consumptionPreferences;

      private Builder(ProfileOptions profileOptions) {
        content = profileOptions.content;
        body = profileOptions.body;
        contentType = profileOptions.contentType;
        contentLanguage = profileOptions.contentLanguage;
        acceptLanguage = profileOptions.acceptLanguage;
        rawScores = profileOptions.rawScores;
        csvHeaders = profileOptions.csvHeaders;
        consumptionPreferences = profileOptions.consumptionPreferences;
      }

      /**
       * Instantiates a new builder.
       */
      public Builder() {
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
       * Set the contentLanguage.
       *
       * @param contentLanguage the contentLanguage
       * @return the ProfileOptions builder
       */
      public Builder contentLanguage(String contentLanguage) {
        this.contentLanguage = contentLanguage;
        return this;
      }

      /**
       * Set the acceptLanguage.
       *
       * @param acceptLanguage the acceptLanguage
       * @return the ProfileOptions builder
       */
      public Builder acceptLanguage(String acceptLanguage) {
        this.acceptLanguage = acceptLanguage;
        return this;
      }

      /**
       * Set the rawScores.
       *
       * @param rawScores the rawScores
       * @return the ProfileOptions builder
       */
      public Builder rawScores(Boolean rawScores) {
        this.rawScores = rawScores;
        return this;
      }

      /**
       * Set the csvHeaders.
       *
       * @param csvHeaders the csvHeaders
       * @return the ProfileOptions builder
       */
      public Builder csvHeaders(Boolean csvHeaders) {
        this.csvHeaders = csvHeaders;
        return this;
      }

      /**
       * Set the consumptionPreferences.
       *
       * @param consumptionPreferences the consumptionPreferences
       * @return the ProfileOptions builder
       */
      public Builder consumptionPreferences(Boolean consumptionPreferences) {
        this.consumptionPreferences = consumptionPreferences;
        return this;
      }

      /**
       * Set the content.
       *
       * @param content the content
       * @return the ProfileOptions builder
       */
      public Builder content(Content content) {
        this.content = content;
        this.contentType = ProfileOptions.ContentType.APPLICATION_JSON;
        return this;
      }

      /**
       * Set the html.
       *
       * @param html the html
       * @return the ProfileOptions builder
       */
      public Builder html(String html) {
        this.body = html;
        this.contentType = ProfileOptions.ContentType.TEXT_HTML;
        return this;
      }

      /**
       * Set the text.
       *
       * @param text the text
       * @return the ProfileOptions builder
       */
      public Builder text(String text) {
        this.body = text;
        this.contentType = ProfileOptions.ContentType.TEXT_PLAIN;
        return this;
      }
    }

    private ProfileOptions(Builder builder) {
      Validator.isTrue(builder.contentType != null, "contentType cannot be null");
      content = builder.content;
      body = builder.body;
      contentType = builder.contentType;
      contentLanguage = builder.contentLanguage;
      acceptLanguage = builder.acceptLanguage;
      rawScores = builder.rawScores;
      csvHeaders = builder.csvHeaders;
      consumptionPreferences = builder.consumptionPreferences;
    }

    /**
     * New builder.
     *
     * @return a ProfileOptions builder
     */
    public Builder newBuilder() {
      return new Builder(this);
    }
  }
  /**
   * Trait.
   */
  public class Trait {
    private String traitId;
    private String name;
    private String category;
    private Double percentile;
    private Double rawScore;
    private List<Trait> children;
  }
  /**
   * Warning.
   */
  public class Warning {
    private String warningId;
    private String message;
  }
}
