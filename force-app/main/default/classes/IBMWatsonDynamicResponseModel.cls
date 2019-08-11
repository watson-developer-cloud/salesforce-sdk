public virtual class IBMWatsonDynamicResponseModel extends IBMWatsonResponseModel {
  private Map<String, Object> additional_properties;

  public Object get(String key) {
    if (additional_properties == null) {
      additional_properties = new Map<String, Object>();
    }
    return additional_properties.get(key);
  }

  public void put(String key, Object val) {
    if (additional_properties == null) {
      additional_properties = new Map<String, Object>();
    }
    additional_properties.put(key, val);
  }

  public Map<String, Object> getDynamicProperties() {
    return this.additional_properties;
  }
}
