public virtual class IBMWatsonOptionsModel {
  public Map<String, String> requestHeaders = new Map<String, String>();
  
  /**
   * Gets the internal request headers.
   */
  public Map<String, String> requestHeaders() {
    return this.requestHeaders;
  }

  /**
   * Returns modified JSON string representation as necessary.
   */
  public virtual String modifySerializedOptions(String jsonString) {
    return jsonString;
  }
}
