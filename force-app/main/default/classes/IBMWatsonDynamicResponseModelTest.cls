@isTest
private class IBMWatsonDynamicResponseModelTest {
  private class TestModel extends IBMWatsonDynamicResponseModel {}

  static testMethod void testAdditionalProps() {
    Test.startTest();

    String testKey = 'key';
    String testVal = 'val';
    TestModel testModel = new TestModel();

    testModel.put(testKey, testVal);
    System.assertEquals(testVal, testModel.get(testKey));
    System.assert(testModel.getDynamicProperties().size() == 1);

    Test.stopTest();
  }

  static testMethod void testGetEmptyAdditionalProps() {
    Test.startTest();

    TestModel testModel = new TestModel();
    Object nullResponse = testModel.get('nonexistent key');
    System.assert(nullResponse == null);

    Test.stopTest();
  }
}
