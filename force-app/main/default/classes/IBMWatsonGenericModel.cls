public abstract class IBMWatsonGenericModel {

  /*
   * Allows the user to print out a model object and see the JSON by default.
   */
  public override String toString() {
    return JSON.serializePretty(this);
  }

  public abstract Object deserialize(String jsonString, Map<String, Object> jsonMap);
}