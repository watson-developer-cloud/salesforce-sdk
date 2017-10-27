public abstract class IBMWatsonDynamicModel {

  private Map<String, Object> additional_properties;

  /*
   * Allows the user to print out a model object and see the JSON by default.
   */
  public override String toString() {
    return JSON.serializePretty(this);
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
    additional_properties.put(key, val);
  }

  public abstract Object deserialize(String jsonString, Map<String, Object> jsonMap);

}