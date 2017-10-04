/**
 * The profile options.
 */
public class IBMWatsonProfileOptions {
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

  private IBMWatsonContent content;
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
  public class Builder {
    private IBMWatsonContent content;
    private String body;
    private String contentType;
    private String contentLanguage;
    private String acceptLanguage;
    private Boolean rawScores;
    private Boolean csvHeaders;
    private Boolean consumptionPreferences;

    private Builder(IBMWatsonProfileOptions profileOptions) {
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
     * Builds a IBMWatsonProfileOptions.
     *
     * @return the profileOptions
     */
    public IBMWatsonProfileOptions build() {
      return new IBMWatsonProfileOptions(this);
    }

    /**
     * Set the contentLanguage.
     *
     * @param contentLanguage the contentLanguage
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder contentLanguage(String contentLanguage) {
      this.contentLanguage = contentLanguage;
      return this;
    }

    /**
     * Set the acceptLanguage.
     *
     * @param acceptLanguage the acceptLanguage
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder acceptLanguage(String acceptLanguage) {
      this.acceptLanguage = acceptLanguage;
      return this;
    }

    /**
     * Set the rawScores.
     *
     * @param rawScores the rawScores
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder rawScores(Boolean rawScores) {
      this.rawScores = rawScores;
      return this;
    }

    /**
     * Set the csvHeaders.
     *
     * @param csvHeaders the csvHeaders
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder csvHeaders(Boolean csvHeaders) {
      this.csvHeaders = csvHeaders;
      return this;
    }

    /**
     * Set the consumptionPreferences.
     *
     * @param consumptionPreferences the consumptionPreferences
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder consumptionPreferences(Boolean consumptionPreferences) {
      this.consumptionPreferences = consumptionPreferences;
      return this;
    }

    /**
     * Set the content.
     *
     * @param content the content
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder content(IBMWatsonContent content) {
      this.content = content;
      this.contentType = CONTENT_TYPE_APPLICATION_JSON;
      return this;
    }

    /**
     * Set the html.
     *
     * @param html the html
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder html(String html) {
      this.body = html;
      this.contentType = CONTENT_TYPE_TEXT_HTML;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the IBMWatsonProfileOptions builder
     */
    public Builder text(String text) {
      this.body = text;
      this.contentType = CONTENT_TYPE_TEXT_PLAIN;
      return this;
    }
  }

  private IBMWatsonProfileOptions(Builder builder) {
    Validator.isTrue(builder.contentType != null, 'contentType cannot be null');
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
   * @return a IBMWatsonProfileOptions builder
   */
  public Builder newBuilder() {
    return new Builder(this);
  }
}
