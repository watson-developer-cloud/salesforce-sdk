public virtual class IBMWatsonResponseModel {
  private Map<String, String> headers = new Map<String, String>();

  /**
   * Allows user to see the JSON string by default for easier debugging.
   *
   * @return serialized String form of this
   */
  public override String toString() {
    // remove response headers from string representation
    Map<String, Object> fullJsonMap = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this, true));
    fullJsonMap.remove('headers');

    // raise additional props
    fullJsonMap = IBMWatsonJSONUtil.raiseAdditionalProperties(fullJsonMap);

    // pretty print formatting
    return JSON.serializePretty(fullJsonMap);
  }

  /**
   * Allows comparison of custom models based on their serialized String form.
   *
   * @param obj the object this is being compared to
   *
   * @return Boolean indicating whether or not the two objects are equal
   */
  public Boolean equals(Object obj) {
    if ((obj == null)) {
      return false;
    }

    IBMWatsonResponseModel other = (IBMWatsonResponseModel) obj;

    return this.toString().equals(other.toString());
  }

  public virtual Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
    Object ret;
    if (jsonString.equals('null')) {
      ret = classType.newInstance();
    }
    else {
      ret = JSON.deserialize(jsonString, classType);
    }

    return ret;
  }

  /**
   * Gets the response headers attached to this response model.
   */
  public Map<String, String> getHeaders() {
    return this.headers;
  }

  /**
   * Adds a header to this response model.
   *
   * Meant to only be used internally to populate response headers from the IBMWatsonService class.
   */
  public void addHeader(String name, String value) {
    if (this.headers == null) {
      this.headers = new Map<String, String>();
    }
    this.headers.put(name, value);
  }

  public virtual Map<String, String> getSdkToApiMapping() {
    return new Map<String, String>();
  }

  public virtual Map<String, String> getApiToSdkMapping() {
    return new Map<String, String>();
  }
}
