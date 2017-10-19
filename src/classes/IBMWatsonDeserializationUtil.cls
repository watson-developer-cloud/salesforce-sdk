/*
 * Because our property names must match up with the JSON response keys, sometimes we run into the case
 * that a JSON key happens to be a reserved word. This utility class attaches the proper suffix if we run into that
 * problem.
 */
public class IBMWatsonDeserializationUtil {

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

  public static Object deserialize(String jsonString, Type modelType) {
    JSONParser parser = JSON.createParser(jsonString);
    JSONToken token = parser.getCurrentToken();
    while (parser.nextToken() != null) {

      while (token == JSONToken.START_ARRAY
          || token == JSONToken.END_ARRAY
          || token == JSONToken.START_OBJECT
          || token == JSONToken.END_OBJECT) {
        token = parser.nextToken();
      }

      // this should be a key
      String key = parser.getCurrentName();
      if (reservedWords.contains(key)) {
        String stringToReplace = '"' + key + '":';
        String replacementString = '"' + key + '_serialized_name":';
        jsonString = jsonString.replace(stringToReplace, replacementString);
      }
      parser.nextToken();
    }

    return JSON.deserialize(jsonString, modelType);
  }
}