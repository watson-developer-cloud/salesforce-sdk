public virtual class IBMWatsonGenericModel {

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

    IBMWatsonGenericModel other = (IBMWatsonGenericModel) obj;

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
}