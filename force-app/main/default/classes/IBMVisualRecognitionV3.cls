/**
 * The IBM Watson Visual Recognition service uses deep learning algorithms to identify scenes, objects, and faces  in
 * images you upload to the service. You can create and train a custom classifier to identify subjects that suit your
 * needs.
 *
 * @version V3
 * @see <a href="http://www.ibm.com/watson/developercloud/visual-recognition.html">Visual Recognition</a>
 */
public class IBMVisualRecognitionV3 extends IBMWatsonService {

  private static final String URL = 'https://gateway-a.watsonplatform.net/visual-recognition/api';
  private static final String DUMMY_API_KEY = '00000';

  private String versionDate;

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
   */
  protected override void setAuthentication(IBMWatsonRequest.Builder builder) {
    if (isTokenManagerSet()) {
      // add dummy API key as a query parameter for backwards-compatibility until it's not required by the service
      addApiKeyQueryParameter(builder, DUMMY_API_KEY);
      super.setAuthentication(builder);
    } else if (getApiKey() != null) {
      addApiKeyQueryParameter(builder, getApiKey());
    } else {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('Credentials need to be specified. Use setApiKey() or setIamCredentials().');
    }
  }

  /**
   * Adds the API key as a query parameter to the request URL.
   *
   * @param builder builder for the current request
   * @param apiKey API key to be added
   */
  private void addApiKeyQueryParameter(IBMWatsonRequest.Builder builder, String apiKey) {
    Url url = builder.build().getUrl();

    if (String.isBlank(url.getQuery())) {
      builder.url(builder.build().getUrl().toExternalForm() + '?api_key=' + apiKey);
    } else {
      builder.url(builder.build().getUrl().toExternalForm() + '&api_key=' + apiKey);
    }
  }

  /**
   * Instantiates a new `IBMVisualRecognitionV3` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMVisualRecognitionV3(String versionDate, IBMWatsonIAMOptions iamOptions) {
    this(versionDate);
    setIamCredentials(iamOptions);
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
    IBMWatsonValidator.isTrue((classifyOptions.imagesFile() != null) || (classifyOptions.url() != null) || (classifyOptions.threshold() != null) || (classifyOptions.owners() != null) || (classifyOptions.classifierIds() != null), 'At least one of images_file, url, threshold, owners, or classifier_ids must be supplied.');
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
    if (classifyOptions.url() != null) {
      multipartBuilder.addFormDataPart('url', classifyOptions.url());
    }
    if (classifyOptions.threshold() != null) {
      multipartBuilder.addFormDataPart('threshold', String.valueOf(classifyOptions.threshold()));
    }
    if (classifyOptions.owners() != null) {
      multipartBuilder.addFormDataPart('owners', String.join(classifyOptions.owners(), ','));
    }
    if (classifyOptions.classifierIds() != null) {
      multipartBuilder.addFormDataPart('classifier_ids', String.join(classifyOptions.classifierIds(), ','));
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMVisualRecognitionV3Models.ClassifiedImages) createServiceCall(builder.build(), IBMVisualRecognitionV3Models.ClassifiedImages.class);
  }

  /**
   * Detect faces in images.
   *
   * **Important:** On April 2, 2018, the identity information in the response to calls to the Face model will be removed. The identity information refers to the `name` of the person, `score`, and `type_hierarchy` knowledge graph. For details about the enhanced Face model, see the [Release notes](https://console.bluemix.net/docs/services/visual-recognition/release-notes.html#23february2018).  Analyze and get data about faces in images. Responses can include estimated age and gender, and the service can identify celebrities. This feature uses a built-in classifier, so you do not train it on custom classifiers. The Detect faces method does not support general biometric facial recognition.
   *
   * @param detectFacesOptions the {@link IBMVisualRecognitionV3Models.DetectFacesOptions} containing the options for the call
   * @return the {@link IBMVisualRecognitionV3Models.DetectedFaces} with the response
   */
  public IBMVisualRecognitionV3Models.DetectedFaces detectFaces(IBMVisualRecognitionV3Models.DetectFacesOptions detectFacesOptions) {
    IBMWatsonValidator.notNull(detectFacesOptions, 'detectFacesOptions cannot be null');
    IBMWatsonValidator.isTrue((detectFacesOptions.imagesFile() != null) || (detectFacesOptions.url() != null), 'At least one of images_file or url must be supplied.');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/detect_faces');
    builder.query('version', versionDate);
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (detectFacesOptions.parameters() != null) {
      multipartBuilder.addFormDataPart('parameters', detectFacesOptions.parameters());
    }
    if (detectFacesOptions.imagesFile() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(detectFacesOptions.imagesFile(), detectFacesOptions.imagesFileContentType());
      multipartBuilder.addFormDataPart('images_file', detectFacesOptions.imagesFilename(), fileBody);
    }
    if (detectFacesOptions.url() != null) {
      multipartBuilder.addFormDataPart('url', detectFacesOptions.url());
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
   * Retrieve a list of classifiers.
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
   * Update a custom classifier by adding new positive or negative classes (examples) or by adding new images to existing classes. You must supply at least one set of positive or negative examples. For details, see [Updating custom classifiers](https://console.bluemix.net/docs/services/visual-recognition/customizing.html#updating-custom-classifiers).  Encode all names in UTF-8 if they contain non-ASCII characters (.zip and image file names, and classifier and class names). The service assumes UTF-8 encoding if it encounters non-ASCII characters.  **Important:** You can't update a custom classifier with an API key for a Lite plan. To update a custom classifier on a Lite plan, create another service instance on a Standard plan and re-create your custom classifier.  **Tip:** Don't make retraining calls on a classifier until the status is ready. When you submit retraining requests in parallel, the last request overwrites the previous requests. The retrained property shows the last time the classifier retraining finished.
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

  /**
   * Retrieve a Core ML model of a classifier.
   *
   * Download a Core ML model file (.mlmodel) of a custom classifier that returns <tt>\"core_ml_enabled\": true</tt> in the classifier details.
   *
   * @param getCoreMlModelOptions the {@link IBMVisualRecognitionV3Models.GetCoreMlModelOptions} containing the options for the call
   * @return the {@link IBMWatsonFile} with the response
   */
  public IBMWatsonFile getCoreMlModel(IBMVisualRecognitionV3Models.GetCoreMlModelOptions getCoreMlModelOptions) {
    IBMWatsonValidator.notNull(getCoreMlModelOptions, 'getCoreMlModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v3/classifiers/{0}/core_ml_model', new String[]{ getCoreMlModelOptions.classifierId() }));
    builder.query('version', versionDate);

    return (IBMWatsonFile) createServiceCall(builder.build(), IBMWatsonFile.class);
  }

}
