/**
 * The profile options.
 */
public class ProfileOptions extends IBMWatsonGenericModel {
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
   * The language of the input text for the request: Arabic, English, Japanese, Korean, or Spanish. Regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. The effect of the `Content-Language` header depends on the `Content-Type` header. When `Content-Type` is `text/plain` or `text/html`, `Content-Language` is the only way to specify the language. When `Content-Type` is `application/json`, `Content-Language` overrides a language specified with the `language` parameter of a `ContentItem` object, and content items that specify a different language are ignored; omit this header to base the language on the specification of the content items. You can specify any combination of languages for `Content-Language` and `Accept-Language`.
   */
  /** ar. */
  public static final String CONTENT_LANGUAGE_AR = 'ar';
  /** en. */
  public static final String CONTENT_LANGUAGE_EN = 'en';
  /** es. */
  public static final String CONTENT_LANGUAGE_ES = 'es';
  /** ja. */
  public static final String CONTENT_LANGUAGE_JA = 'ja';
  /** ko. */
  public static final String CONTENT_LANGUAGE_KO = 'ko';

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
  public class Builder {
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
      this.contentType = CONTENT_TYPE_APPLICATION_JSON;
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
      this.contentType = CONTENT_TYPE_TEXT_HTML;
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
      this.contentType = CONTENT_TYPE_TEXT_PLAIN;
      return this;
    }
  }

  private ProfileOptions(Builder builder) {
    //Validator.isTrue(builder.contentType != null, 'contentType cannot be null');
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
   * Gets the contentType.
   *
   * The type of the input: application/json, text/html, or text/plain. A character encoding can be specified by including a `charset` parameter. For example, 'text/html;charset=utf-8'.
   *
   * @return the contentType
   */
  public String contentType() {
    return contentType;
  }
  /**
   * Gets the contentLanguage.
   *
   * The language of the input text for the request: Arabic, English, Japanese, Korean, or Spanish. Regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. The effect of the `Content-Language` header depends on the `Content-Type` header. When `Content-Type` is `text/plain` or `text/html`, `Content-Language` is the only way to specify the language. When `Content-Type` is `application/json`, `Content-Language` overrides a language specified with the `language` parameter of a `ContentItem` object, and content items that specify a different language are ignored; omit this header to base the language on the specification of the content items. You can specify any combination of languages for `Content-Language` and `Accept-Language`.
   *
   * @return the contentLanguage
   */
  public String contentLanguage() {
    return contentLanguage;
  }
  /**
   * Gets the acceptLanguage.
   *
   * The desired language of the response. For two-character arguments, regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. You can specify any combination of languages for the input and response content.
   *
   * @return the acceptLanguage
   */
  public String acceptLanguage() {
    return acceptLanguage;
  }
  /**
   * Gets the rawScores.
   *
   * If `true`, a raw score in addition to a normalized percentile is returned for each characteristic; raw scores are not compared with a sample population. If `false` (the default), only normalized percentiles are returned.
   *
   * @return the rawScores
   */
  public Boolean rawScores() {
    return rawScores;
  }
  /**
   * Gets the csvHeaders.
   *
   * If `true`, column labels are returned with a CSV response; if `false` (the default), they are not. Applies only when the `Accept` header is set to `text/csv`.
   *
   * @return the csvHeaders
   */
  public Boolean csvHeaders() {
    return csvHeaders;
  }
  /**
   * Gets the consumptionPreferences.
   *
   * If `true`, information about consumption preferences is returned with the results; if `false` (the default), the response does not include the information.
   *
   * @return the consumptionPreferences
   */
  public Boolean consumptionPreferences() {
    return consumptionPreferences;
  }
}
