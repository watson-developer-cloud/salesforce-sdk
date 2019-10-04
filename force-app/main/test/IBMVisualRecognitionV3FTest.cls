public with sharing class IBMVisualRecognitionV3FTest {
  private static String URL = 'https://gateway.watsonplatform.net/visual-recognition/api';
  private static String VERSION = '2018-03-19';

  public static void runAllTests(String iamApiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(iamApiKey);
    IBMVisualRecognitionV3 service = new IBMVisualRecognitionV3(VERSION, authenticator);
    service.setServiceURL(URL);

    testClassify(service);
  }

  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMVisualRecognitionV3Models.ClassifiedImages testClassify(IBMVisualRecognitionV3 service) {
    IBMVisualRecognitionV3Models.ClassifyOptions options = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .url('https://watson-test-resources.mybluemix.net/resources/car.png')
      .build();
    IBMVisualRecognitionV3Models.ClassifiedImages resp = service.classify(options);
    System.debug('IBMVisualRecognitionV3FTest.testClassify(): ' + resp);
    return resp;
  }
}
