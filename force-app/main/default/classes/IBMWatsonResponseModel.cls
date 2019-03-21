public virtual class IBMWatsonResponseModel {
  private Map<String, String> headers = new Map<String, String>();

  /**
   * Allows user to see the JSON string by default for easier debugging.
   *
   * @return serialized String form of this
   */
  public override String toString() {
    // get JSON string representation
    String jsonString = JSON.serialize(this, true);

    // remove response headers from string representation
    Map<String, Object> fullJsonMap = (Map<String, Object>) JSON.deserializeUntyped(jsonString);
    fullJsonMap.remove('headers');
    String jsonStringWithoutHeaders = JSON.serialize(fullJsonMap);

    // call custom serializer to raise additional properties
    jsonStringWithoutHeaders = IBMWatsonJSONUtil.serialize(jsonStringWithoutHeaders);

    // pretty print formatting
    jsonStringWithoutHeaders = JSON.serializePretty(JSON.deserializeUntyped(jsonStringWithoutHeaders));
    return jsonStringWithoutHeaders;
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

  /**
   * Replaces values in the JSON string representation that aren't syntactically valid.
   */
  public String replaceKeysForSdk(String jsonString) {
    return jsonString;
  }
}
