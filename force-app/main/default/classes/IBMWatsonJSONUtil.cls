/*
 * Utility class to handle any special JSON serialization/deserialization beyond the
 * scope of the default JSON methods.
 */
public class IBMWatsonJSONUtil {

  /**
   * Serializes a map and uses the provided name mapping to create a valid JSON string for
   * an external API.
   *
   * @param jsonMap Map representation of the JSON request
   * @param propertyNameMapping Map with keys representing property names for the SDK and values
   *        representing the names accepted by the API
   *
   * @return JSON string ready to be sent to the API
   */
  public static String serialize(Map<String, Object> jsonMap, Map<String, String> propertyNameMapping) {
    // need to make sure everything inside is of core Apex types so that we can manipulate it properly
    jsonMap = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(jsonMap, true));

    // change keys to work with API
    jsonMap = replacePropertyNames(jsonMap, propertyNameMapping);

    // raise additional properties up a level to play well with API
    jsonMap = raiseAdditionalProperties(jsonMap);

    return JSON.serialize(jsonMap);
  }

  /**
   * Parses through the provided map to change key names according to the supplied mapping.
   *
   * @param jsonMap Map representation of the eventual JSON request
   * @param propertyNameMapping Map with keys representing property names for the SDK and values
   *        representing the names accepted by the API
   *
   * @return Map with modified keys
   */
  public static Map<String, Object> replacePropertyNames(Map<String, Object> jsonMap, Map<String, String> propertyNameMapping) {
    return replacePropertyNames(null, jsonMap, propertyNameMapping);
  }

  /**
   * Helper function for the public method which tracks a parentProp to help differentiate between
   * keys of the same name at different levels of the JSON object.
   *
   * @param parentProp String representing the current level of the JSON tree, with parents separated by '/'. For
   *        example: dialog_node/actions/
   * @param jsonMap Map representation of the JSON object being parsed
   * @param propertyNameMapping Map with keys representing property names for the SDK and values
   *        representing the names accepted by the API
   *
   * @return Map with modified keys
   */
  private static Map<String, Object> replacePropertyNames(String parentProp, Map<String, Object> jsonMap, Map<String, String> propertyNameMapping) {
    String label = '';
    if (parentProp != null) {
      label = parentProp + '/';
    }

    for (String key : jsonMap.keySet()) {
      Object jsonValue = jsonMap.get(key);
      String keyToUse = key;

      if (propertyNameMapping.containsKey(label + key)) {
        keyToUse = propertyNameMapping.get(label + key);
        jsonMap.put(keyToUse, jsonValue);
        jsonMap.remove(key);
      }
      if (jsonValue instanceof Map<String, Object>) {
        jsonMap.put(keyToUse, replacePropertyNames(label + key, (Map<String, Object>) jsonValue, propertyNameMapping));
      }
      if (jsonValue instanceof List<Object>) {
        jsonMap.put(keyToUse, replacePropertyNamesList(label + key, (List<Object>) jsonValue, propertyNameMapping));
      }
    }

    return jsonMap;
  }

  /**
   * Helper function for the public method to specifically handle JSON arrays.
   * @param parentProp String representing the current level of the JSON tree, with parents separated by '/'. For
   *        example: dialog_node/actions/
   * @param jsonList List representation of the JSON array being parsed
   * @param propertyNameMapping Map with keys representing property names for the SDK and values
   *        representing the names accepted by the API
   *
   * @return List with modified keys inside (if there are any)
   */
  private static List<Object> replacePropertyNamesList(String parentProp, List<Object> jsonList, Map<String, String> propertyNameMapping) {
    List<Object> modifiedList = new List<Object>();
    for (Object val : jsonList) {
      if (val instanceof Map<String, Object>) {
        modifiedList.add(replacePropertyNames(parentProp, (Map<String, Object>) val, propertyNameMapping));
      } else {
        modifiedList.add(val);
      }
    }
    return modifiedList;
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
    Map<String, Object> additionalProperties = (Map<String, Object>) jsonMap.get('additionalProperties');
    if (additionalProperties != null) {
      for (String key : additionalProperties.keySet()) {
        jsonMap.put(key, additionalProperties.get(key));
      }
      jsonMap.remove('additionalProperties');
    }

    for (String key : jsonMap.keySet()) {
      Object jsonSection = jsonMap.get(key);
      if (jsonSection instanceof Map<String, Object>) {
        Map<String, Object> raisedSection = raiseAdditionalProperties((Map<String, Object>) jsonSection);
        jsonMap.put(key, raisedSection);
      }
      if (jsonSection instanceof List<Object>) {
        List<Object> raisedSection = raiseAdditionalPropertiesList((List<Object>) jsonSection);
        jsonMap.put(key, raisedSection);
      }
    }

    return jsonMap;
  }

  /**
   * Helper function for the public method to specifically handle JSON arrays.
   *
   * @param jsonList List representation of the current JSON array
   *
   * @return List with any nested additional properties brought up a level
   */
  private static List<Object> raiseAdditionalPropertiesList(List<Object> jsonList) {
    List<Object> modifiedList = new List<Object>();
    for (Object val : jsonList) {
      if (val instanceof Map<String, Object>) {
        modifiedList.add(raiseAdditionalProperties((Map<String, Object>) val));
      } else {
        modifiedList.add(val);
      }
    }
    return modifiedList;
  }
}
