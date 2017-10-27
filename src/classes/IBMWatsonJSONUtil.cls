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
    jsonString = raiseAdditionalProperties(jsonString);
    return jsonString;
  }

  /**
   * Adds 'serialized_name' suffix to any properties which are reserved words in Apex.
   *
   * @param jsonString String representation of the JSON response
   *
   * @return String representing the JSON response with modified keys
   */
  public static String addReservedWordSuffix(String jsonString) {
    return jsonString.replaceAll('":', '_serialized_name":');
  }

  /**
   * Brings additional properties on dynamic models up one JSON level so that they can
   * be processed properly by the service.
   *
   * @param jsonString String representation of the JSON request
   *
   * @return String representing the JSON request with moved additional properties
   */
  private static String raiseAdditionalProperties(String jsonString) {
    JSONParser parser = JSON.createParser(jsonString);

    while (jsonString.contains('additional_properties')) {
      JSONToken token = parser.getCurrentToken();

      while (token == JSONToken.START_ARRAY
          || token == JSONToken.END_ARRAY
          || token == JSONToken.START_OBJECT
          || token == JSONToken.END_OBJECT) {
        token = parser.nextToken();
      }

      // this should be a key
      String key = parser.getCurrentName();

      if (key != null && key.equals('additional_properties')) {
        List<String> replacementList = new List<String>();
        replacementList.add('"' + parser.getText() + '":');
        Boolean hasAdditionalProperties = false;

        if (parser.nextToken() == JSONToken.START_OBJECT) {
          hasAdditionalProperties = true;
        }

        // we actually have additional properties to extract
        if (hasAdditionalProperties) {
          Integer braceCount = 0;
          JSONToken lastToken = parser.getCurrentToken();
          JSONToken current = lastToken;

          // looping until we find the end of the additional_properties object
          while (lastToken != JSONToken.END_OBJECT || braceCount > 0) {
            String replacementString = parser.getText();

            if (current == JSONToken.START_OBJECT) {
              braceCount++;
            }
            else if (current == JSONToken.END_OBJECT) {
              braceCount--;
              Integer lastIndex = replacementList.size() - 1;
              String lastVal = replacementList.get(lastIndex);

              lastVal = lastVal.substring(0, lastVal.length() - 1);
              replacementList.set(lastIndex, lastVal);
            }
            else if (current == JSONToken.END_ARRAY) {
              Integer lastIndex = replacementList.size() - 1;
              String lastVal = replacementList.get(lastIndex);

              lastVal = lastVal.substring(0, lastVal.length() - 1);
              replacementList.set(lastIndex, lastVal);
            }

            if (current == JSONToken.FIELD_NAME) {
              replacementString = '"' + replacementString + '":';
            }
            else if (current == JSONToken.VALUE_STRING) {
              replacementString = '"' + replacementString + '",';
            }
            else if (current == JSONToken.VALUE_NUMBER_INT
                || current == JSONToken.VALUE_TRUE
                || current == JSONToken.VALUE_FALSE
                || current == JSONToken.VALUE_NULL
                || current == JSONToken.END_ARRAY
                || current == JSONToken.END_OBJECT) {
              replacementString = replacementString + ',';
            }

            replacementList.add(replacementString);

            lastToken = current;
            current = parser.nextToken();
          }

          Integer lastIndex = replacementList.size() - 1;
          String lastString = replacementList.get(lastIndex);
          replacementList.set(lastIndex, lastString.substring(0, lastString.length() - 1));

          String stringToReplace = String.join(replacementList, '');

          // getting rid of "additional_properties": { }
          // which leaves just the inner properties
          replacementList.remove(0);
          replacementList.remove(0);
          replacementList.remove(replacementList.size() - 1);
          String replacementString = String.join(replacementList, '');

          Integer replacementIndex = jsonString.indexOf(stringToReplace);
          jsonString = jsonString.replace(stringToReplace, replacementString);
        }

        // we just need to remove the line with additional_properties as null
        else {
          String emptyAdditionalProperties = '"additional_properties":null';

          Integer indexWithoutComma = jsonString.indexOf(emptyAdditionalProperties);
          Integer indexWithComma = jsonString.indexOf(emptyAdditionalProperties + ',');

          if (indexWithComma <= indexWithoutComma) {
            jsonString = jsonString.replaceFirst(emptyAdditionalProperties + ',', '');
          }
          else {
            jsonString = jsonString.replaceFirst(emptyAdditionalProperties, '');
          }
        }
        parser = JSON.createParser(jsonString);
      }
      else {
        parser.nextToken();
      }
    }

    return jsonString;
  }
}