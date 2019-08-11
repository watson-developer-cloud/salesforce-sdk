public virtual class IBMWatsonOptionsModel {
  public Map<String, String> requestHeaders = new Map<String, String>();
  
  /**
   * Gets the internal request headers.
   */
  public Map<String, String> requestHeaders() {
    return this.requestHeaders;
  }

  public virtual Map<String, String> getSdkToApiMapping() {
    return new Map<String, String>();
  }

  public virtual Map<String, String> getApiToSdkMapping() {
    return new Map<String, String>();
  }
}
