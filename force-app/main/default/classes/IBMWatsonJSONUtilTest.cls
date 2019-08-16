@isTest
private class IBMWatsonJSONUtilTest {
  /**
   * Test that property names can be replaced with flat JSON.
   */
  static testMethod void testReplacePropertyNamesFlat() {
    String mockJson = '{"foo":"bar","go":"bucks"}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    Map<String, String> propertyMapping = new Map<String, String> { 'foo' => 'oof' };
    String expectedJson = '{"oof":"bar","go":"bucks"}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = IBMWatsonJSONUtil.replacePropertyNames(mockObject, propertyMapping);

    System.assert(expectedMap.equals(actualMap));
  }

  /**
   * Test that property names can be replaced with nested JSON.
   */
  static testMethod void testReplacePropertyNamesNested() {
    String mockJson = '{"foo":"bar","ohio":{"city":"columbus"}}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    Map<String, String> propertyMapping = new Map<String, String> { 'foo' => 'oof', 'ohio/city' => 'capital' };
    String expectedJson = '{"oof":"bar","ohio":{"capital":"columbus"}}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = IBMWatsonJSONUtil.replacePropertyNames(mockObject, propertyMapping);

    System.assert(expectedMap.equals(actualMap));
  }

  /**
   * Test that property names can be replaced with JSON containing an array.
   */
  static testMethod void testReplacePropertyNamesList() {
    String mockJson = '{"foo":"bar","teams":[{"soccer":"crew"},{"american_football":"browns"}]}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    Map<String, String> propertyMapping = new Map<String, String> { 'foo' => 'oof', 'teams/american_football' => 'pigskin' };
    String expectedJson = '{"oof":"bar","teams":[{"soccer":"crew"},{"pigskin":"browns"}]}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = IBMWatsonJSONUtil.replacePropertyNames(mockObject, propertyMapping);

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

  /**
   * Test that JSON can be serialized properly for our purposes (essentially combining all the above tests).
   */
  static testMethod void testSerialize() {
    String mockJson = '{"foo":"bar","teams":[{"soccer":"crew","additionalProperties":{"mascot":"crew cat"}},{"american_football":"browns"}]}';
    Map<String, Object> mockObject = (Map<String, Object>) JSON.deserializeUntyped(mockJson);
    Map<String, String> propertyMapping = new Map<String, String> { 'foo' => 'oof', 'teams/american_football' => 'pigskin' };
    String expectedJson = '{"oof":"bar","teams":[{"soccer":"crew","mascot":"crew cat"},{"pigskin":"browns"}]}';
    Map<String, Object> expectedMap = (Map<String, Object>) JSON.deserializeUntyped(expectedJson);

    Map<String, Object> actualMap = (Map<String, Object>) JSON.deserializeUntyped(IBMWatsonJSONUtil.serialize(mockObject, propertyMapping));

    System.assert(expectedMap.equals(actualMap));
  }
}
