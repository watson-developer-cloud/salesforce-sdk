/**
 * IBM Watson Natural Language Classifier uses machine learning algorithms to return the top matching predefined classes
 * for short text input. You create and train a classifier to connect predefined classes to example texts so that the
 * service can apply those classes to new inputs.
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/natural-language-classifier.html">Natural Language Classifier</a>
 */
public class IBMNaturalLanguageClassifierV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/natural-language-classifier/api';

  /**
   * Instantiates a new `IBMNaturalLanguageClassifierV1`.
   *
   */
  public IBMNaturalLanguageClassifierV1() {
    super('watson_natural_language_classifier_v1');
  }

  /**
   * Instantiates a new `IBMNaturalLanguageClassifierV1` with username and password.
   *
   * @param username the username
   * @param password the password
   */
  public IBMNaturalLanguageClassifierV1(String username, String password) {
    this();
    setUsernameAndPassword(username, password);
  }


  /**
   * Classify a phrase.
   *
   * Returns label information for the input. The status must be `Available` before you can use the classifier to classify text.
   *
   * @param classifyOptions the {@link IBMNaturalLanguageClassifierV1Models.ClassifyOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageClassifierV1Models.Classification} with the response
   */
  public IBMNaturalLanguageClassifierV1Models.Classification classify(IBMNaturalLanguageClassifierV1Models.ClassifyOptions classifyOptions) {
    IBMWatsonValidator.notNull(classifyOptions, 'classifyOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/classifiers/{0}/classify', new String[]{ classifyOptions.classifierId() }));
    Map<String, String> requestHeaders = (classifyOptions != null) ? classifyOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', classifyOptions.text());
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMNaturalLanguageClassifierV1Models.Classification) createServiceCall(builder.build(), IBMNaturalLanguageClassifierV1Models.Classification.class);
  }

  /**
   * Classify multiple phrases.
   *
   * Returns label information for multiple phrases. The status must be `Available` before you can use the classifier to classify text.  Note that classifying Japanese texts is a beta feature.
   *
   * @param classifyCollectionOptions the {@link IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions} containing the options for the call
   * @return the {@link IBMNaturalLanguageClassifierV1Models.ClassificationCollection} with the response
   */
  public IBMNaturalLanguageClassifierV1Models.ClassificationCollection classifyCollection(IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions classifyCollectionOptions) {
    IBMWatsonValidator.notNull(classifyCollectionOptions, 'classifyCollectionOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/classifiers/{0}/classify_collection', new String[]{ classifyCollectionOptions.classifierId() }));
    Map<String, String> requestHeaders = (classifyCollectionOptions != null) ? classifyCollectionOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('collection', classifyCollectionOptions.collection());
    builder.bodyJson(JSON.serialize(contentJson, true));

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
    Map<String, String> requestHeaders = (createClassifierOptions != null) ? createClassifierOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(createClassifierOptions.metadata(), 'application/json');
    multipartBuilder.addFormDataPart('training_metadata', createClassifierOptions.trainingMetadataFilename(), fileBody);
    IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(createClassifierOptions.trainingData(), 'text/csv');
    multipartBuilder.addFormDataPart('training_data', createClassifierOptions.trainingDataFilename(), fileBody);
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

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
    Map<String, String> requestHeaders = (deleteClassifierOptions != null) ? deleteClassifierOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
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
    Map<String, String> requestHeaders = (getClassifierOptions != null) ? getClassifierOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

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
    Map<String, String> requestHeaders = (listClassifiersOptions != null) ? listClassifiersOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMNaturalLanguageClassifierV1Models.ClassifierList) createServiceCall(builder.build(), IBMNaturalLanguageClassifierV1Models.ClassifierList.class);
  }

}
