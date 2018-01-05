/**
 * **Important:** As of September 8, 2017, the beta period for Similarity Search is closed. For more information, see
 * [Visual Recognition API – Similarity Search
 * Update](https://www.ibm.com/blogs/bluemix/2017/08/visual-recognition-api-similarity-search-update).
 *
 * The IBM Watson Visual Recognition service uses deep learning algorithms to identify scenes, objects, and faces  in
 * images you upload to the service. You can create and train a custom classifier to identify subjects that suit your
 * needs.
 *
 * **Tip:** To test calls to the **Custom classifiers** methods with the API explorer, provide your `api_key` from your
 * IBM&reg; Cloud service instance.
 *
 * @version V3
 * @see <a href="http://www.ibm.com/watson/developercloud/visual-recognition.html">Visual Recognition</a>
 */
public class IBMVisualRecognitionV3 extends IBMWatsonService {

  private static final String URL = 'https://gateway-a.watsonplatform.net/visual-recognition/api';
  private String versionDate;

  /** The Constant VERSION_DATE_2016_05_20. */
  public static final String VERSION_DATE_2016_05_20 = '2016-05-20';

  /**
   * Instantiates a new `IBMVisualRecognitionV3`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMVisualRecognitionV3(String versionDate) {
    super('watson_visual_recognition_v3');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMVisualRecognitionV3` with API Key.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param apiKey the API Key
   */
  public IBMVisualRecognitionV3(String versionDate, String apiKey) {
    super('watson_visual_recognition_v3');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;

    setApiKey(apiKey);
  }

  /*
   * Override authentication mechanism for this endpoint
   *
   */
  protected override void setAuthentication(IBMWatsonRequest.Builder builder) {
    if (getApiKey() == null) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('api_key needs to be specified. Use setApiKey()');
    }
    Url url = builder.build().getUrl();
    if (String.isBlank(url.getQuery())) {
      builder.url(builder.build().getUrl().toExternalForm() + '?api_key=' + getApiKey());
    } else {
      builder.url(builder.build().getUrl().toExternalForm() + '&api_key=' + getApiKey());
    }
  }

  /**
   * Classify images.
   *
   * Classify images with built-in or custom classifiers.
   *
   * @param classifyOptions the {@link IBMVisualRecognitionV3Models.ClassifyOptions} containing the options for the call
   * @return the {@link IBMVisualRecognitionV3Models.ClassifiedImages} with the response
   */
  public IBMVisualRecognitionV3Models.ClassifiedImages classify(IBMVisualRecognitionV3Models.ClassifyOptions classifyOptions) {
    IBMWatsonValidator.notNull(classifyOptions, 'classifyOptions cannot be null');
    IBMWatsonValidator.isTrue((classifyOptions.imagesFile() != null) || (classifyOptions.parameters() != null), 'At least one of images_file or parameters must be supplied.');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/classify');
    if (classifyOptions.acceptLanguage() != null) {
      builder.addHeader('Accept-Language', classifyOptions.acceptLanguage());
    }
    builder.query('version', versionDate);
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (classifyOptions.imagesFile() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(classifyOptions.imagesFile(), classifyOptions.imagesFileContentType());
      multipartBuilder.addFormDataPart('images_file', classifyOptions.imagesFilename(), fileBody);
    }
    if (classifyOptions.parameters() != null) {
      multipartBuilder.addFormDataPart('parameters', classifyOptions.parameters());
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMVisualRecognitionV3Models.ClassifiedImages) createServiceCall(builder.build(), IBMVisualRecognitionV3Models.ClassifiedImages.class);
  }

  /**
   * Detect faces in images.
   *
   * Analyze and get data about faces in images. Responses can include estimated age and gender, and the service can identify celebrities. This feature uses a built-in classifier, so you do not train it on custom classifiers. The Detect faces method does not support general biometric facial recognition.
   *
   * @param detectFacesOptions the {@link IBMVisualRecognitionV3Models.DetectFacesOptions} containing the options for the call
   * @return the {@link IBMVisualRecognitionV3Models.DetectedFaces} with the response
   */
  public IBMVisualRecognitionV3Models.DetectedFaces detectFaces(IBMVisualRecognitionV3Models.DetectFacesOptions detectFacesOptions) {
    IBMWatsonValidator.notNull(detectFacesOptions, 'detectFacesOptions cannot be null');
    IBMWatsonValidator.isTrue((detectFacesOptions.imagesFile() != null) || (detectFacesOptions.parameters() != null), 'At least one of images_file or parameters must be supplied.');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/detect_faces');
    builder.query('version', versionDate);
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (detectFacesOptions.imagesFile() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(detectFacesOptions.imagesFile(), detectFacesOptions.imagesFileContentType());
      multipartBuilder.addFormDataPart('images_file', detectFacesOptions.imagesFilename(), fileBody);
    }
    if (detectFacesOptions.parameters() != null) {
      multipartBuilder.addFormDataPart('parameters', detectFacesOptions.parameters());
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMVisualRecognitionV3Models.DetectedFaces) createServiceCall(builder.build(), IBMVisualRecognitionV3Models.DetectedFaces.class);
  }

  /**
   * Create a classifier.
   *
   * Train a new multi-faceted classifier on the uploaded image data. Create your custom classifier with positive or negative examples. Include at least two sets of examples, either two positive example files or one positive and one negative file. You can upload a maximum of 256 MB per call.  Encode all names in UTF-8 if they contain non-ASCII characters (.zip and image file names, and classifier and class names). The service assumes UTF-8 encoding if it encounters non-ASCII characters.
   *
   * @param createClassifierOptions the {@link IBMVisualRecognitionV3Models.CreateClassifierOptions} containing the options for the call
   * @return the {@link IBMVisualRecognitionV3Models.Classifier} with the response
   */
  public IBMVisualRecognitionV3Models.Classifier createClassifier(IBMVisualRecognitionV3Models.CreateClassifierOptions createClassifierOptions) {
    IBMWatsonValidator.notNull(createClassifierOptions, 'createClassifierOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/classifiers');
    builder.query('version', versionDate);
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    multipartBuilder.addFormDataPart('name', createClassifierOptions.name());
    // Classes
    for (String className : createClassifierOptions.classNames()) {
      String dataName = className + '_positive_examples';
      IBMWatsonFile positiveExamples = createClassifierOptions.positiveExamplesByClassName(className);
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(
        positiveExamples,
        'application/octet-stream'
      );
      multipartBuilder.addFormDataPart(dataName, positiveExamples.name(), fileBody);
    }
    if (createClassifierOptions.negativeExamples() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(createClassifierOptions.negativeExamples(), 'application/octet-stream');
      multipartBuilder.addFormDataPart('negative_examples', createClassifierOptions.negativeExamplesFilename(), fileBody);
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMVisualRecognitionV3Models.Classifier) createServiceCall(builder.build(), IBMVisualRecognitionV3Models.Classifier.class);
  }

  /**
   * Delete a classifier.
   *
   * @param deleteClassifierOptions the {@link IBMVisualRecognitionV3Models.DeleteClassifierOptions} containing the options for the call
   * @return the service call
   */
  public void deleteClassifier(IBMVisualRecognitionV3Models.DeleteClassifierOptions deleteClassifierOptions) {
    IBMWatsonValidator.notNull(deleteClassifierOptions, 'deleteClassifierOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v3/classifiers/{0}', new String[]{ deleteClassifierOptions.classifierId() }));
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Retrieve classifier details.
   *
   * Retrieve information about a custom classifier.
   *
   * @param getClassifierOptions the {@link IBMVisualRecognitionV3Models.GetClassifierOptions} containing the options for the call
   * @return the {@link IBMVisualRecognitionV3Models.Classifier} with the response
   */
  public IBMVisualRecognitionV3Models.Classifier getClassifier(IBMVisualRecognitionV3Models.GetClassifierOptions getClassifierOptions) {
    IBMWatsonValidator.notNull(getClassifierOptions, 'getClassifierOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v3/classifiers/{0}', new String[]{ getClassifierOptions.classifierId() }));
    builder.query('version', versionDate);

    return (IBMVisualRecognitionV3Models.Classifier) createServiceCall(builder.build(), IBMVisualRecognitionV3Models.Classifier.class);
  }

  /**
   * Retrieve a list of custom classifiers.
   *
   * @param listClassifiersOptions the {@link IBMVisualRecognitionV3Models.ListClassifiersOptions} containing the options for the call
   * @return the {@link IBMVisualRecognitionV3Models.Classifiers} with the response
   */
  public IBMVisualRecognitionV3Models.Classifiers listClassifiers(IBMVisualRecognitionV3Models.ListClassifiersOptions listClassifiersOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v3/classifiers');
    builder.query('version', versionDate);
    if (listClassifiersOptions != null && listClassifiersOptions.verbose() != null) {
      builder.query('verbose', String.valueOf(listClassifiersOptions.verbose()));
    }

    return (IBMVisualRecognitionV3Models.Classifiers) createServiceCall(builder.build(), IBMVisualRecognitionV3Models.Classifiers.class);
  }

  /**
   * Update a classifier.
   *
   * Update a custom classifier by adding new positive or negative classes (examples) or by adding new images to existing classes. You must supply at least one set of positive or negative examples. For details, see [Updating custom classifiers](https://console.bluemix.net/docs/services/visual-recognition/customizing.html#updating-custom-classifiers).  Encode all names in UTF-8 if they contain non-ASCII characters (.zip and image file names, and classifier and class names). The service assumes UTF-8 encoding if it encounters non-ASCII characters.  **Important:** You can't update a custom classifier with a free API key. If you have a free key, you can upgrade to a Standard plan. For details, see [Changing your plan](https://console.bluemix.net/docs/pricing/changing_plan.html).  **Tip:** Don't make retraining calls on a classifier until the status is ready. When you submit retraining requests in parallel, the last request overwrites the previous requests. The retrained property shows the last time the classifier retraining finished.
   *
   * @param updateClassifierOptions the {@link IBMVisualRecognitionV3Models.UpdateClassifierOptions} containing the options for the call
   * @return the {@link IBMVisualRecognitionV3Models.Classifier} with the response
   */
  public IBMVisualRecognitionV3Models.Classifier updateClassifier(IBMVisualRecognitionV3Models.UpdateClassifierOptions updateClassifierOptions) {
    IBMWatsonValidator.notNull(updateClassifierOptions, 'updateClassifierOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v3/classifiers/{0}', new String[]{ updateClassifierOptions.classifierId() }));
    builder.query('version', versionDate);
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    // Classes
    for (String className : updateClassifierOptions.classNames()) {
      String dataName = className + '_positive_examples';
      IBMWatsonFile positiveExamples = updateClassifierOptions.positiveExamplesByClassName(className);
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(positiveExamples, 'application/octet-stream');
      multipartBuilder.addFormDataPart(dataName, positiveExamples.name(), fileBody);
    }
    if (updateClassifierOptions.negativeExamples() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(updateClassifierOptions.negativeExamples(), 'application/octet-stream');
      multipartBuilder.addFormDataPart('negative_examples', updateClassifierOptions.negativeExamplesFilename(), fileBody);
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMVisualRecognitionV3Models.Classifier) createServiceCall(builder.build(), IBMVisualRecognitionV3Models.Classifier.class);
  }

}
