public with sharing class IBMVisualRecognitionV3FTest {
  private static String URL = 'https://gateway.watsonplatform.net/visual-recognition/api';
  private static String VERSION = '2016-05-20';

  public static void runAllTests(String iamApiKey) {
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey(iamApiKey)
      .build();
    IBMVisualRecognitionV3 service = new IBMVisualRecognitionV3(VERSION, iamOptions);
    service.setEndPoint(URL);

    testClassify(service);
    // ignoring for now because the service is returning 500s :(
    //testDetectFaces(service);
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

  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMVisualRecognitionV3Models.DetectedFaces testDetectFaces(IBMVisualRecognitionV3 service) {
    IBMVisualRecognitionV3Models.DetectFacesOptions options = new IBMVisualRecognitionV3Models.DetectFacesOptionsBuilder()
      .url('https://watson-test-resources.mybluemix.net/resources/obama.jpg')
      .build();
    IBMVisualRecognitionV3Models.DetectedFaces resp = service.detectFaces(options);
    System.debug('IBMVisualRecognitionV3FTest.testDetectFaces(): ' + resp);
    return resp;
  }
}
