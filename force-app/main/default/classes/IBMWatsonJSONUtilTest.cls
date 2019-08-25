@isTest
private class IBMWatsonJSONUtilTest {
  static testMethod void testReplaceKeyNamesInMap() {
    String mockJson = '{"foo":"bar","go":"bucks"}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    Map<String, String> propertyMapping = new Map<String, String> { 'foo' => 'oof' };
    String expectedJson = '{"oof":"bar","go":"bucks"}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = IBMWatsonJSONUtil.replaceKeyNamesInMap(mockObject, propertyMapping);

    System.assert(expectedMap.equals(actualMap));
  }

  static testMethod void testReplaceKeyNamesInString() {
    String mockJson = '{"foo":"bar","go":"bucks"}';
    Map<String, String> propertyMapping = new Map<String, String> { 'foo' => 'oof' };
    String expectedJson = '{"oof":"bar","go":"bucks"}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = (Map<String, Object>) JSON.deserializeUntyped(IBMWatsonJSONUtil.replaceKeyNamesInString(mockJson, propertyMapping));

    System.assert(expectedMap.equals(actualMap));
  }

  /**
   * Test that additional properties are brought up a level as expected with flat JSON.
   */
  static testMethod void testRaiseAdditionalPropertiesFlat() {
    String mockJson = '{"foo":"bar","additionalProperties":{"drink": "coffee"}}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    String expectedJson = '{"foo":"bar","drink":"coffee"}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = IBMWatsonJSONUtil.raiseAdditionalProperties(mockObject);

    System.assert(expectedMap.equals(actualMap));
  }

  /**
   * Test that additional properties are brought up a level as expected with nested JSON.
   */
  static testMethod void testRaiseAdditionalPropertiesNested() {
    String mockJson = '{"foo":"bar","ohio":{"city":"columbus","additionalProperties": {"very":"cool"}}}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    String expectedJson = '{"foo":"bar","ohio":{"city":"columbus","very":"cool"}}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = IBMWatsonJSONUtil.raiseAdditionalProperties(mockObject);

    System.assert(expectedMap.equals(actualMap));
  }

  /**
   * Test that additional properties are brought up a level as expected with JSON containing an array.
   */
  static testMethod void testRaiseAdditionalPropertiesList() {
    String mockJson = '{"foo":"bar","teams":[{"soccer":"crew","basketball":{"name": "cavaliers","additionalProperties":{"king":"lebron"}}}]}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    String expectedJson = '{"foo":"bar","teams":[{"soccer":"crew","basketball":{"name": "cavaliers","king":"lebron"}}]}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = IBMWatsonJSONUtil.raiseAdditionalProperties(mockObject);

    System.assert(expectedMap.equals(actualMap));
  }
}
