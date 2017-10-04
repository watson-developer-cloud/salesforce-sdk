/**
 * IBMWatsonContent.
 */
public class IBMWatsonContent {
  private List<IBMWatsonContentItem> contentItems;

  /**
   * Builder.
   */
  public class Builder {
    private List<IBMWatsonContentItem> contentItems;

    private Builder(IBMWatsonContent content) {
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
    public Builder(List<IBMWatsonContentItem> contentItems) {
      this.contentItems = contentItems;
    }

    /**
     * Builds a IBMWatsonContent.
     *
     * @return the content
     */
    public IBMWatsonContent build() {
      return new IBMWatsonContent(this);
    }

    /**
     * Adds an contentItem to contentItems.
     *
     * @param contentItem the new contentItem
     * @return the IBMWatsonContent builder
     */
    public Builder addContentItem(IBMWatsonContentItem contentItem) {
      Validator.notNull(contentItem, 'contentItem cannot be null');
      if (this.contentItems == null) {
        this.contentItems = new List<IBMWatsonContentItem>();
      }
      this.contentItems.add(contentItem);
      return this;
    }

    /**
     * Set the contentItems.
     * Existing contentItems will be replaced.
     *
     * @param contentItems the contentItems
     * @return the IBMWatsonContent builder
     */
    public Builder contentItems(List<IBMWatsonContentItem> contentItems) {
      this.contentItems = contentItems;
      return this;
    }
  }

  private IBMWatsonContent(Builder builder) {
    Validator.notNull(builder.contentItems, 'contentItems cannot be null');
    contentItems = builder.contentItems;
  }

  /**
   * New builder.
   *
   * @return a IBMWatsonContent builder
   */
  public Builder newBuilder() {
    return new Builder(this);
  }
}
