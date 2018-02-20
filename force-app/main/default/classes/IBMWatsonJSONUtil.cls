/*
 * Utility class to handle any special JSON serialization/deserialization beyond the
 * scope of the default JSON methods.
 */
public class IBMWatsonJSONUtil {

  private static Set<String> reservedWords;

  static {
    reservedWords = new Set<String> {
        'abstract', 'activate', 'and', 'any', 'array', 'as', 'asc', 'autonomous', 'begin', 'bigdecimal', 'blob',
        'break', 'bulk', 'by', 'byte', 'case', 'cast', 'catch', 'char', 'class', 'collect', 'commit', 'const',
        'continue', 'convertcurrency', 'decimal', 'default', 'delete', 'desc', 'do', 'else', 'end', 'enum',
        'exception', 'exit', 'export', 'extends', 'false', 'final', 'finally', 'float', 'for', 'from', 'future',
        'global', 'goto', 'group', 'having', 'hint', 'if', 'implements', 'import', 'inner', 'insert', 'instanceof',
        'interface', 'into', 'int', 'join', 'last_90_days', 'last_month', 'last_n_days', 'last_week', 'like',
        'limit', 'list', 'long', 'loop', 'map', 'merge', 'new', 'next_90_days', 'next_month', 'next_n_days',
        'next_week', 'not', 'null', 'nulls', 'number', 'object', 'of', 'on', 'or', 'outer', 'override', 'package',
        'parallel', 'pragma', 'private', 'protected', 'public', 'retrieve', 'return', 'returning', 'rollback',
        'savepoint', 'search', 'select', 'set', 'short', 'sort', 'stat', 'static', 'super', 'switch',
        'synchronized', 'system', 'testmethod', 'then', 'this', 'this_month', 'this_week', 'throw', 'today',
        'tolabel', 'tomorrow', 'transaction', 'trigger', 'true', 'try', 'type', 'undelete', 'update', 'upsert',
        'using', 'virtual', 'webservice', 'when', 'where', 'while', 'yesterday'
    };
  }

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
