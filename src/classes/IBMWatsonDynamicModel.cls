public abstract class IBMWatsonDynamicModel {

  private Map<String, Object> additionalProperties = new Map<String, Object>();
  
  /*
   * Allows the user to print out a model object and see the JSON by default.
   */
  public override String toString() {
    return JSON.serializePretty(this);
  }

  public Object get(String key) {
    return additionalProperties.get(key);
  }

  public void put(String key, Object val) {
    additionalProperties.put(key, val);
  }
}