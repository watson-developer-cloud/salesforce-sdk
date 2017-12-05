@isTest
private class IBMWatsonJSONUtilTest {
  /**
   * Test prepareResponse
   *
   */
  static testMethod void testPrepareResponse() {
    Map<String, Object> mockExtractedMetadata = new Map<String, Object>();
    mockExtractedMetadata.put('file_type', 'application/json');
    mockExtractedMetadata.put('filename', 'my_sweet_file.json');
    Map<String, Object> mockResponse = new Map<String, Object>();
    mockResponse.put('foo', 'bar');
    mockResponse.put('extracted_metadata', mockExtractedMetadata);
    mockResponse.put('crazy_json', '{"some_serialized_name": "value"}');

    Map<String, Object> expectedExtractedMetadata = new Map<String, Object>();
    expectedExtractedMetadata.put('file_type_serialized_name', 'application/json');
    expectedExtractedMetadata.put('filename_serialized_name', 'my_sweet_file.json');
    Map<String, Object> expectedResponse = new Map<String, Object>();
    expectedResponse.put('foo_serialized_name', 'bar');
    expectedResponse.put('crazy_json_serialized_name', '{"some_serialized_name": "value"}');
    expectedResponse.put('extracted_metadata_serialized_name', expectedExtractedMetadata);

    Map<String, Object> actualResponse = IBMWatsonJSONUtil.prepareResponse(mockResponse);

    System.assertEquals(actualResponse, expectedResponse);
  }

  /**
   * Test raiseAdditionalProperties
   *
   */
  static testMethod void testSerialize() {
    String mockJSON = '{"foo_serialized_name":"bar","additional_properties":{"baz_serialized_name":"bat"}}';

    String expectedJSON = '{"baz":"bat","foo":"bar"}';
    String actualJSON = IBMWatsonJSONUtil.serialize(mockJSON);

    System.assertEquals(actualJSON, expectedJSON);
  }
}
