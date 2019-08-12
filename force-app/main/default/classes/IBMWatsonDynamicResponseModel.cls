public virtual class IBMWatsonDynamicResponseModel extends IBMWatsonResponseModel {
  private Map<String, Object> additionalProperties;

  public Object get(String key) {
    if (additionalProperties == null) {
      additionalProperties = new Map<String, Object>();
    }
    return additionalProperties.get(key);
  }

  public void put(String key, Object val) {
    if (additionalProperties == null) {
      additionalProperties = new Map<String, Object>();
    }
    additionalProperties.put(key, val);
  }

  public Map<String, Object> getDynamicProperties() {
    return this.additionalProperties;
  }
}
