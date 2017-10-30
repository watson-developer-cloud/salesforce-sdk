public abstract class IBMWatsonDynamicModel {

  private Map<String, Object> additional_properties;

  /**
   * Allows user to see the JSON string by default for easier debugging.
   *
   * @return serialized String form of this
   */
  public override String toString() {
    return JSON.serializePretty(this);
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
    return additional_properties.get(key + '_serialized_name');
  }

  public void put(String key, Object val) {
    if (additional_properties == null) {
      additional_properties = new Map<String, Object>();
    }

    // dynamic properties coming from the service will already have this, but users won't add this extension
    if (!key.endsWith('_serialized_name')) {
      key += '_serialized_name';
    }

    additional_properties.put(key, val);
  }

  public abstract Object deserialize(String jsonString, Map<String, Object> jsonMap);

}