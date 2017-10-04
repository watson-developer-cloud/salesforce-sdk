/**
 * IBMWatsonContentItem.
 */
public class IBMWatsonContentItem {
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
  public class Builder {
    private String content;
    private String id;
    private Long created;
    private Long updated;
    private String contenttype;
    private String language;
    private String parentid;
    private Boolean reply;
    private Boolean forward;

    private Builder(IBMWatsonContentItem contentItem) {
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
     * Builds a IBMWatsonContentItem.
     *
     * @return the contentItem
     */
    public IBMWatsonContentItem build() {
      return new IBMWatsonContentItem(this);
    }

    /**
     * Set the content.
     *
     * @param content the content
     * @return the IBMWatsonContentItem builder
     */
    public Builder content(String content) {
      this.content = content;
      return this;
    }

    /**
     * Set the id.
     *
     * @param id the id
     * @return the IBMWatsonContentItem builder
     */
    public Builder id(String id) {
      this.id = id;
      return this;
    }

    /**
     * Set the created.
     *
     * @param created the created
     * @return the IBMWatsonContentItem builder
     */
    public Builder created(long created) {
      this.created = created;
      return this;
    }

    /**
     * Set the updated.
     *
     * @param updated the updated
     * @return the IBMWatsonContentItem builder
     */
    public Builder updated(long updated) {
      this.updated = updated;
      return this;
    }

    /**
     * Set the contenttype.
     *
     * @param contenttype the contenttype
     * @return the IBMWatsonContentItem builder
     */
    public Builder contenttype(String contenttype) {
      this.contenttype = contenttype;
      return this;
    }

    /**
     * Set the language.
     *
     * @param language the language
     * @return the IBMWatsonContentItem builder
     */
    public Builder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Set the parentid.
     *
     * @param parentid the parentid
     * @return the IBMWatsonContentItem builder
     */
    public Builder parentid(String parentid) {
      this.parentid = parentid;
      return this;
    }

    /**
     * Set the reply.
     *
     * @param reply the reply
     * @return the IBMWatsonContentItem builder
     */
    public Builder reply(Boolean reply) {
      this.reply = reply;
      return this;
    }

    /**
     * Set the forward.
     *
     * @param forward the forward
     * @return the IBMWatsonContentItem builder
     */
    public Builder forward(Boolean forward) {
      this.forward = forward;
      return this;
    }
  }

  private IBMWatsonContentItem(Builder builder) {
    Validator.notNull(builder.content, 'content cannot be null');
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
   * @return a IBMWatsonContentItem builder
   */
  public Builder newBuilder() {
    return new Builder(this);
  }
}
