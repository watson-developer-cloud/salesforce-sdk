@isTest
private class IBMWatsonJSONUtilTest {
  /**
   * Test raiseAdditionalProperties
   *
   */
  /* static testMethod void testSerialize() {
    String mockJSON = '{"foo":"bar","additional_properties":{"baz":"bat"}}';

    String expectedJSON = '{"baz":"bat","foo":"bar"}';
    String actualJSON = IBMWatsonJSONUtil.serialize(mockJSON);

    System.assertEquals(actualJSON, expectedJSON);
  } */

  /**
   * Test raiseAdditionalProperties with nested additional properties
   *
   */
  /* static testMethod void testSerializeWithNestedAdditionalProperties() {
    String mockJSON = '{"foo":"bar","additional_properties":{"baz":"bat"},"bird":{"ohio":"cardinal","additional_properties":{"nest_materials":"twigs"}}}';

    String expectedJSON = '{"baz":"bat","bird":{"nest_materials":"twigs","ohio":"cardinal"},"foo":"bar"}';
    String actualJSON = IBMWatsonJSONUtil.serialize(mockJSON);

    System.assertEquals(actualJSON, expectedJSON);
  } */
}
