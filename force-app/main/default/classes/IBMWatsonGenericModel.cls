public virtual class IBMWatsonGenericModel {

  /**
   * Allows user to see the JSON string by default for easier debugging.
   *
   * @return serialized String form of this
   */
  public override String toString() {
    return JSON.serializePretty(this).remove('_serialized_name');
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