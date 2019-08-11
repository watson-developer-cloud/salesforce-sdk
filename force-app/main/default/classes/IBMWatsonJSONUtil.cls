/*
 * Utility class to handle any special JSON serialization/deserialization beyond the
 * scope of the default JSON methods.
 */
public class IBMWatsonJSONUtil {



  /**
   * Removes '_serialized_name' suffix to match API spec and modifies JSON request string
   * to properly handle additional properties.
   *
   * @param jsonString String representation of the JSON request
   *
   * @return String representing our modified JSON request ready to be sent
   */
  public static String serialize(String jsonString) {
    jsonString = jsonString.remove('_serialized_name');
    Map<String, Object> jsonMap = raiseAdditionalProperties((Map<String, Object>) JSON.deserializeUntyped(jsonString));
    return JSON.serialize(jsonMap);
  }

  /**
   * Calls appropriate methods to prepare the JSON response for deserialization. This involves removing empty
   * string values and adding the property suffix to avoid using reserved words.
   *
   * @param jsonMap Map<String, Object> representation of the JSON response
   *
   * return Map<String, Object> representing our JSON object ready to be deserialized
   */
  public static Map<String, Object> prepareResponse(Map<String, Object> jsonMap) {
    return addPropertySuffix(jsonMap);
  }

  /**
   * Adds '_serialized_name' suffix to all property keys.
   *
   * @param jsonMap Map<String, Object> representation of the JSON response
   *
   * @return Map<String, Object> representing the JSON response with modified keys
   */
  public static Map<String, Object> addPropertySuffix(Map<String, Object> jsonMap) {
    Map<String, Object> safeMap = new Map<String, Object>();

    for (String key : jsonMap.keySet()) {
      String safeKey = key + '_serialized_name';
      Object jsonValue = jsonMap.get(key);
      if (jsonValue instanceof Map<String, Object>) {
        safeMap.put(safeKey, addPropertySuffix((Map<String, Object>) jsonValue));
      } else if (jsonValue instanceof List<Object>) {
        safeMap.put(safeKey, addPropertySuffixList((List<Object>) jsonValue));
      } else {
        safeMap.put(safeKey, jsonValue);
      }
    }
    return safeMap;
  }

  private static List<Object> addPropertySuffixList(List<Object> jsonList) {
    List<Object> safeList = new List<Object>();
    for (Object jsonValue : jsonList) {
      if (jsonValue instanceof Map<String, Object>) {
        safeList.add(addPropertySuffix((Map<String, Object>) jsonValue));
      } else {
        safeList.add(jsonValue);
      }
    }
    return safeList;
  }

  /**
   * Brings additional properties on dynamic models up one JSON level so that they can
   * be processed properly by the service.
   *
   * @param jsonMap Map representation of the JSON request
   *
   * @return Map representing the JSON request with moved additional properties
   */
  private static Map<String, Object> raiseAdditionalProperties(Map<String, Object> jsonMap) {
    Map<String, Object> additionalProperties = (Map<String, Object>) jsonMap.get('additional_properties');
    if (additionalProperties != null) {
      for (String key : additionalProperties.keySet()) {
        jsonMap.put(key, additionalProperties.get(key));
      }
      jsonMap.remove('additional_properties');
    }

    for (String key : jsonMap.keySet()) {
      Object jsonSection = jsonMap.get(key);
      if (jsonSection instanceof Map<String, Object>) {
        Map<String, Object> raisedSection = raiseAdditionalProperties((Map<String, Object>) jsonSection);
        jsonMap.put(key, raisedSection);
      }
    }

    return jsonMap;
  }
}
