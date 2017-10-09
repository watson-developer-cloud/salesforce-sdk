/**
 * Content.
 */
public class Content extends IBMWatsonGenericModel {
  private List<ContentItem> contentItems;

  /**
   * Builder.
   */
  public class Builder {
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
      //Validator.notNull(contentItem, 'contentItem cannot be null');
      if (this.contentItems == null) {
        this.contentItems = new List<ContentItem>();
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
    //Validator.notNull(builder.contentItems, 'contentItems cannot be null');
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
  /**
   * Gets the contentItems.
   *
   * An array of `ContentItem` objects that provides the text that is to be analyzed.
   *
   * @return the contentItems
   */
  public List<ContentItem> contentItems() {
    return contentItems;
  }
}
