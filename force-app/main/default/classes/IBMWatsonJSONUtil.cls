/*
 * Utility class to handle any special JSON serialization/deserialization beyond the
 * scope of the default JSON methods.
 */
public class IBMWatsonJSONUtil {
  public static String serialize(Map<String, Object> jsonMap, Map<String, String> propertyNameMapping) {
    // need to make sure everything inside is of core Apex types so that we can manipulate it properly
    jsonMap = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(jsonMap, true));

    // change keys to work with API
    jsonMap = replacePropertyNames(jsonMap, propertyNameMapping);

    // raise additional properties up a level to play well with API
    jsonMap = raiseAdditionalProperties(jsonMap);

    return JSON.serialize(jsonMap);
  }

  private static Map<String, Object> replacePropertyNames(Map<String, Object> jsonMap, Map<String, String> propertyNameMapping) {
    for (String key : jsonMap.keySet()) {
      Object jsonValue = jsonMap.get(key);
      String keyToUse = key;
      if (propertyNameMapping.containsKey(key)) {
        keyToUse = propertyNameMapping.get(key);
        jsonMap.put(keyToUse, jsonValue);
        jsonMap.remove(key);
      }
      if (jsonValue instanceof Map<String, Object>) {
        jsonMap.put(keyToUse, replacePropertyNames((Map<String, Object>) jsonValue, propertyNameMapping));
      }
    }

    return jsonMap;
  }

  /**
   * Brings additional properties on dynamic models up one JSON level so that they can
   * be processed properly by the service.
   *
   * @param jsonMap Map representation of the JSON request
   *
   * @return Map representing the JSON request with moved additional properties
   */
  public static Map<String, Object> raiseAdditionalProperties(Map<String, Object> jsonMap) {
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
