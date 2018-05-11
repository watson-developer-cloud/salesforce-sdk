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

    String valJson = JSON.serialize(val).remove('_serialized_name');
    additional_properties.put(key.removeEnd('_serialized_name'), JSON.deserializeUntyped(valJson));
  }

  public Map<String, Object> getDynamicProperties() {
    return this.additional_properties;
  }
}
