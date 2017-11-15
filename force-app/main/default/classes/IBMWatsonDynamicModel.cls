public virtual class IBMWatsonDynamicModel {

  private Map<String, Object> additional_properties;

  /**
   * Allows user to see the JSON string by default for easier debugging.
   *
   * @return serialized String form of this
   */
  public override String toString() {
    // get JSON string representation
    String jsonString = JSON.serialize(this, true).remove('\\n');
    
    // call custom serializer to raise additional properties
    jsonString = IBMWatsonJSONUtil.serialize(jsonString);
    
    // pretty print formatting
    jsonString = JSON.serializePretty(JSON.deserializeUntyped(jsonString));
    return jsonString;
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

    IBMWatsonDynamicModel other = (IBMWatsonDynamicModel) obj;

    return this.toString().equals(other.toString());
  }

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

  public Map<String, Object> getDynamicProperties() {
    return this.additional_properties;
  }

}