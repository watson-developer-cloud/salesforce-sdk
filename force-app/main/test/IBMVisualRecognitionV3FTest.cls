public with sharing class IBMVisualRecognitionV3FTest {
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_visual_recognition_v3';
  private static String API_KEY = '<your API key>';
  private static String attachmentId = '<your attachment id>';
  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMVisualRecognitionV3Models.ClassifiedImages testClassify() {
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint('https://gateway-a.watsonplatform.net/visual-recognition/api/');
    visualRecognition.setApiKey(API_KEY);
    IBMVisualRecognitionV3Models.ClassifyOptions options = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .url('http://www.godalmingmuseum.org.uk/uploads/images/People/Jekyll/Jekyll,_Gertrude,_middle_aged_Y.JPG')
      .build();
    IBMVisualRecognitionV3Models.ClassifiedImages resp = visualRecognition.classify(options);
    System.debug('IBMVisualRecognitionV3FTest.testClassify(): ' + resp);
    return resp;
  }
  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMVisualRecognitionV3Models.ClassifiedImages testClassifyFile() {
   IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint('https://gateway-a.watsonplatform.net/visual-recognition/api/');
    visualRecognition.setApiKey(API_KEY);
    Attachment att = [Select Id,Body,BodyLength,ContentType,Name,Description From Attachment where Id=:attachmentId];
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .attachment(att)
      .build();
    IBMVisualRecognitionV3Models.ClassifyOptions options = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .acceptLanguage('en')
      .imagesFile(testfile)
      .imagesFilename(att.Name)
      .imagesFileContentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.ClassifiedImages resp = visualRecognition.classify(options);
    System.debug('IBMVisualRecognitionV3FTest.testClassify(): ' + resp);
    return resp;
  }
  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMVisualRecognitionV3Models.DetectedFaces testDetectFaces() {
    IBMVisualRecognitionV3 visualRecognition = new IBMVisualRecognitionV3('2016-05-20', API_KEY);
    visualRecognition.setEndPoint(NAMED_CREDENTIALS);
    Attachment att = [Select Id,Body,BodyLength,ContentType,Name,Description From Attachment where Id=:attachmentId];
    IBMWatsonFile testfile = new IBMWatsonFile.FileBuilder()
      .body(att.Body)
      .name(att.Name)
      .description(att.Description)
      .contentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.DetectFacesOptions options = new IBMVisualRecognitionV3Models.DetectFacesOptionsBuilder()
      .imagesFile(testfile)
      .imagesFilename(att.Name)
      .imagesFileContentType(att.ContentType)
      .build();
    IBMVisualRecognitionV3Models.DetectedFaces resp = visualRecognition.detectFaces(options);
    System.debug('IBMVisualRecognitionV3FTest.testDetectFaces(): ' + resp);
    return resp;
  }
}
