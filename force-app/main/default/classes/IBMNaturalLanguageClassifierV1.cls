/**
 * IBM Watson&trade; Natural Language Classifier uses machine learning algorithms to return the top matching predefined
 * classes for short text input. You create and train a classifier to connect predefined classes to example texts so
 * that the service can apply those classes to new inputs.
 *
 * @version V1
 * @see <a href="https://cloud.ibm.com/docs/services/natural-language-classifier/">Natural Language Classifier</a>
 */
public class IBMNaturalLanguageClassifierV1 extends IBMWatsonService {

  private static final String SERVICE_NAME = 'natural_language_classifier';
  private static final String URL = 'https://gateway.watsonplatform.net/natural-language-classifier/api';

  /**
   * Instantiates a new `IBMNaturalLanguageClassifierV1`.
   *
   * @param authenticator The IBMWatsonAuthenticator implementation to use for authenticating when making service requests
   */
  public IBMNaturalLanguageClassifierV1(IBMWatsonAuthenticator authenticator) {
    super(SERVICE_NAME, 'v1', authenticator);

    if ((getEndPoint() == null) || String.isBlank(getEndPoint())) {
      setEndPoint(URL);
    }
  }

  /**
   * Classify a phrase.
   *
   * Returns label information for the input. The status must be `Available` before you can use the classifier to
   * classify text.
   *
   * @param classifyOptions the {@link IBMNaturalLanguageClassifierV1Models.ClassifyOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageClassifierV1Models.Classification} with the response
   */
  public IBMNaturalLanguageClassifierV1Models.Classification classify(IBMNaturalLanguageClassifierV1Models.ClassifyOptions classifyOptions) {
    IBMWatsonValidator.notNull(classifyOptions, 'classifyOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/classifiers/{0}/classify', new String[]{ classifyOptions.classifierId() }));
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural_language_classifier;service_version=V1;operation_id=classify');
    Map<String, String> requestHeaders = (classifyOptions != null) ? classifyOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', classifyOptions.text());
    builder.bodyJson(JSON.serialize(contentJson));

    return (IBMNaturalLanguageClassifierV1Models.Classification) createServiceCall(builder.build(), IBMNaturalLanguageClassifierV1Models.Classification.class);
  }

  /**
   * Classify multiple phrases.
   *
   * Returns label information for multiple phrases. The status must be `Available` before you can use the classifier to
   * classify text.
   *
   * Note that classifying Japanese texts is a beta feature.
   *
   * @param classifyCollectionOptions the {@link IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageClassifierV1Models.ClassificationCollection} with the response
   */
  public IBMNaturalLanguageClassifierV1Models.ClassificationCollection classifyCollection(IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions classifyCollectionOptions) {
    IBMWatsonValidator.notNull(classifyCollectionOptions, 'classifyCollectionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/classifiers/{0}/classify_collection', new String[]{ classifyCollectionOptions.classifierId() }));
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural_language_classifier;service_version=V1;operation_id=classifyCollection');
    Map<String, String> requestHeaders = (classifyCollectionOptions != null) ? classifyCollectionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    List<Object> collectionList = new List<Object>();
    for (IBMNaturalLanguageClassifierV1Models.ClassifyInput collectionItem : classifyCollectionOptions.collection()) {
      collectionList.add(collectionItem.serialize());
    }
    contentJson.put('collection', collectionList);
    builder.bodyJson(JSON.serialize(contentJson));

    return (IBMNaturalLanguageClassifierV1Models.ClassificationCollection) createServiceCall(builder.build(), IBMNaturalLanguageClassifierV1Models.ClassificationCollection.class);
  }

  /**
   * Create classifier.
   *
   * Sends data to create and train a classifier and returns information about the new classifier.
   *
   * @param createClassifierOptions the {@link IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageClassifierV1Models.Classifier} with the response
   */
  public IBMNaturalLanguageClassifierV1Models.Classifier createClassifier(IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions createClassifierOptions) {
    IBMWatsonValidator.notNull(createClassifierOptions, 'createClassifierOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/classifiers');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural_language_classifier;service_version=V1;operation_id=createClassifier');
    Map<String, String> requestHeaders = (createClassifierOptions != null) ? createClassifierOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    IBMWatsonRequestBody trainingMetadataBody = IBMWatsonRequestBody.create(createClassifierOptions.trainingMetadata(), 'application/json');
    multipartBuilder.addFormDataPart('training_metadata', 'filename', trainingMetadataBody);
    IBMWatsonRequestBody trainingDataBody = IBMWatsonRequestBody.create(createClassifierOptions.trainingData(), 'text/csv');
    multipartBuilder.addFormDataPart('training_data', 'filename', trainingDataBody);
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMNaturalLanguageClassifierV1Models.Classifier) createServiceCall(builder.build(), IBMNaturalLanguageClassifierV1Models.Classifier.class);
  }

  /**
   * List classifiers.
   *
   * Returns an empty array if no classifiers are available.
   *
   * @param listClassifiersOptions the {@link IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageClassifierV1Models.ClassifierList} with the response
   */
  public IBMNaturalLanguageClassifierV1Models.ClassifierList listClassifiers(IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions listClassifiersOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/classifiers');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural_language_classifier;service_version=V1;operation_id=listClassifiers');
    Map<String, String> requestHeaders = (listClassifiersOptions != null) ? listClassifiersOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMNaturalLanguageClassifierV1Models.ClassifierList) createServiceCall(builder.build(), IBMNaturalLanguageClassifierV1Models.ClassifierList.class);
  }

  /**
   * Get information about a classifier.
   *
   * Returns status and other information about a classifier.
   *
   * @param getClassifierOptions the {@link IBMNaturalLanguageClassifierV1Models.GetClassifierOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageClassifierV1Models.Classifier} with the response
   */
  public IBMNaturalLanguageClassifierV1Models.Classifier getClassifier(IBMNaturalLanguageClassifierV1Models.GetClassifierOptions getClassifierOptions) {
    IBMWatsonValidator.notNull(getClassifierOptions, 'getClassifierOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/classifiers/{0}', new String[]{ getClassifierOptions.classifierId() }));
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural_language_classifier;service_version=V1;operation_id=getClassifier');
    Map<String, String> requestHeaders = (getClassifierOptions != null) ? getClassifierOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMNaturalLanguageClassifierV1Models.Classifier) createServiceCall(builder.build(), IBMNaturalLanguageClassifierV1Models.Classifier.class);
  }

  /**
   * Delete classifier.
   *
   * @param deleteClassifierOptions the {@link IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions} containing the options for the call
   * @return the service call
   */
  public void deleteClassifier(IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions deleteClassifierOptions) {
    IBMWatsonValidator.notNull(deleteClassifierOptions, 'deleteClassifierOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/classifiers/{0}', new String[]{ deleteClassifierOptions.classifierId() }));
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=natural_language_classifier;service_version=V1;operation_id=deleteClassifier');
    Map<String, String> requestHeaders = (deleteClassifierOptions != null) ? deleteClassifierOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

}
