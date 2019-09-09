@isTest
private class IBMWatsonResponseModelTest {
  private class TestModel extends IBMWatsonResponseModel {
    private String team;

    public TestModel() {
      team = 'buckeyes';
    }
  }

  static testMethod void testEquals() {
    Test.startTest();

    TestModel testModel1 = new TestModel();
    TestModel testModel2 = new TestModel();
    System.assert(testModel1.equals(testModel2));

    Test.stopTest();
  }

  static testMethod void testHeaders() {
    Test.startTest();

    String headerKey = 'key';
    String headerVal = 'val';
    TestModel testModel = new TestModel();
    testModel.addHeader(headerKey, headerVal);
    System.assert(testModel.getHeaders().size() == 1);
    System.assertEquals(headerVal, testModel.getHeaders().get(headerKey));

    Test.stopTest();
  }
}
