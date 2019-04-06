/**
 * IBM Watson&trade; Language Translator translates text from one language to another. The service offers multiple IBM
 * provided translation models that you can customize based on your unique terminology and language. Use Language
 * Translator to take news from across the globe and present it in your language, communicate with your customers in
 * their own language, and more.
 *
 * @version V3
 * @see <a href="http://www.ibm.com/watson/developercloud/language-translator.html">Language Translator</a>
 */
public class IBMLanguageTranslatorV3 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/language-translator/api';

  private String versionDate;

  /**
   * Instantiates a new `IBMLanguageTranslatorV3`.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   */
  public IBMLanguageTranslatorV3(String versionDate) {
    super('language_translator', 'v3');

    if (String.isBlank(versionDate)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('versionDate cannot be null.');
    }
    this.versionDate = versionDate;
  }

  /**
   * Instantiates a new `IBMLanguageTranslatorV3` with username and password.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param username the username
   * @param password the password
   */
  public IBMLanguageTranslatorV3(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }

  /**
   * Instantiates a new `IBMLanguageTranslatorV3` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param versionDate The version date (yyyy-MM-dd) of the REST API to use. Specifying this value will keep your API
   *        calls from failing when the service introduces breaking changes.
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMLanguageTranslatorV3(String versionDate, IBMWatsonIAMOptions iamOptions) {
    this(versionDate);
    setIamCredentials(iamOptions);
  }

  /**
   * Translate.
   *
   * Translates the input text from the source language to the target language.
   *
   * @param translateOptions the {@link IBMLanguageTranslatorV3Models.TranslateOptions} containing the options for the call
   * @return the {@link IBMLanguageTranslatorV3Models.TranslationResult} with the response
   */
  public IBMLanguageTranslatorV3Models.TranslationResult translate(IBMLanguageTranslatorV3Models.TranslateOptions translateOptions) {
    IBMWatsonValidator.notNull(translateOptions, 'translateOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/translate');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=language_translator;service_version=V3;operation_id=translate');
    Map<String, String> requestHeaders = (translateOptions != null) ? translateOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', translateOptions.text());
    if (translateOptions.modelId() != null) {
      contentJson.put('model_id', translateOptions.modelId());
    }
    if (translateOptions.source() != null) {
      contentJson.put('source', translateOptions.source());
    }
    if (translateOptions.target() != null) {
      contentJson.put('target', translateOptions.target());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMLanguageTranslatorV3Models.TranslationResult) createServiceCall(builder.build(), IBMLanguageTranslatorV3Models.TranslationResult.class);
  }

  /**
   * Identify language.
   *
   * Identifies the language of the input text.
   *
   * @param identifyOptions the {@link IBMLanguageTranslatorV3Models.IdentifyOptions} containing the options for the call
   * @return the {@link IBMLanguageTranslatorV3Models.IdentifiedLanguages} with the response
   */
  public IBMLanguageTranslatorV3Models.IdentifiedLanguages identify(IBMLanguageTranslatorV3Models.IdentifyOptions identifyOptions) {
    IBMWatsonValidator.notNull(identifyOptions, 'identifyOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/identify');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=language_translator;service_version=V3;operation_id=identify');
    Map<String, String> requestHeaders = (identifyOptions != null) ? identifyOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    builder.bodyContent(identifyOptions.text(), 'text/plain');

    return (IBMLanguageTranslatorV3Models.IdentifiedLanguages) createServiceCall(builder.build(), IBMLanguageTranslatorV3Models.IdentifiedLanguages.class);
  }

  /**
   * List identifiable languages.
   *
   * Lists the languages that the service can identify. Returns the language code (for example, `en` for English or `es`
   * for Spanish) and name of each language.
   *
   * @param listIdentifiableLanguagesOptions the {@link IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptions} containing the options for the call
   * @return the {@link IBMLanguageTranslatorV3Models.IdentifiableLanguages} with the response
   */
  public IBMLanguageTranslatorV3Models.IdentifiableLanguages listIdentifiableLanguages(IBMLanguageTranslatorV3Models.ListIdentifiableLanguagesOptions listIdentifiableLanguagesOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v3/identifiable_languages');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=language_translator;service_version=V3;operation_id=listIdentifiableLanguages');
    Map<String, String> requestHeaders = (listIdentifiableLanguagesOptions != null) ? listIdentifiableLanguagesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMLanguageTranslatorV3Models.IdentifiableLanguages) createServiceCall(builder.build(), IBMLanguageTranslatorV3Models.IdentifiableLanguages.class);
  }

  /**
   * Create model.
   *
   * Uploads Translation Memory eXchange (TMX) files to customize a translation model.
   *
   * You can either customize a model with a forced glossary or with a corpus that contains parallel sentences. To
   * create a model that is customized with a parallel corpus <b>and</b> a forced glossary, proceed in two steps:
   * customize with a parallel corpus first and then customize the resulting model with a glossary. Depending on the
   * type of customization and the size of the uploaded corpora, training can range from minutes for a glossary to
   * several hours for a large parallel corpus. You can upload a single forced glossary file and this file must be less
   * than <b>10 MB</b>. You can upload multiple parallel corpora tmx files. The cumulative file size of all uploaded
   * files is limited to <b>250 MB</b>. To successfully train with a parallel corpus you must have at least <b>5,000
   * parallel sentences</b> in your corpus.
   *
   * You can have a <b>maxium of 10 custom models per language pair</b>.
   *
   * @param createModelOptions the {@link IBMLanguageTranslatorV3Models.CreateModelOptions} containing the options for the call
   * @return the {@link IBMLanguageTranslatorV3Models.TranslationModel} with the response
   */
  public IBMLanguageTranslatorV3Models.TranslationModel createModel(IBMLanguageTranslatorV3Models.CreateModelOptions createModelOptions) {
    IBMWatsonValidator.notNull(createModelOptions, 'createModelOptions cannot be null');
    IBMWatsonValidator.isTrue((createModelOptions.forcedGlossary() != null) || (createModelOptions.parallelCorpus() != null), 'At least one of forced_glossary or parallel_corpus must be supplied.');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v3/models');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=language_translator;service_version=V3;operation_id=createModel');
    Map<String, String> requestHeaders = (createModelOptions != null) ? createModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (createModelOptions.baseModelId() != null) {
      builder.query('base_model_id', createModelOptions.baseModelId());
    }
    if (createModelOptions.name() != null) {
      builder.query('name', createModelOptions.name());
    }
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (createModelOptions.forcedGlossary() != null) {
      IBMWatsonRequestBody forcedGlossaryBody = IBMWatsonRequestBody.create(createModelOptions.forcedGlossary(), 'application/octet-stream');
      multipartBuilder.addFormDataPart('forced_glossary', null, forcedGlossaryBody);
    }
    if (createModelOptions.parallelCorpus() != null) {
      IBMWatsonRequestBody parallelCorpusBody = IBMWatsonRequestBody.create(createModelOptions.parallelCorpus(), 'application/octet-stream');
      multipartBuilder.addFormDataPart('parallel_corpus', null, parallelCorpusBody);
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    return (IBMLanguageTranslatorV3Models.TranslationModel) createServiceCall(builder.build(), IBMLanguageTranslatorV3Models.TranslationModel.class);
  }

  /**
   * Delete model.
   *
   * Deletes a custom translation model.
   *
   * @param deleteModelOptions the {@link IBMLanguageTranslatorV3Models.DeleteModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteModel(IBMLanguageTranslatorV3Models.DeleteModelOptions deleteModelOptions) {
    IBMWatsonValidator.notNull(deleteModelOptions, 'deleteModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v3/models/{0}', new String[]{ deleteModelOptions.modelId() }));
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=language_translator;service_version=V3;operation_id=deleteModel');
    Map<String, String> requestHeaders = (deleteModelOptions != null) ? deleteModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    createServiceCall(builder.build(), null);
  }

  /**
   * Get model details.
   *
   * Gets information about a translation model, including training status for custom models. Use this API call to poll
   * the status of your customization request. A successfully completed training will have a status of `available`.
   *
   * @param getModelOptions the {@link IBMLanguageTranslatorV3Models.GetModelOptions} containing the options for the call
   * @return the {@link IBMLanguageTranslatorV3Models.TranslationModel} with the response
   */
  public IBMLanguageTranslatorV3Models.TranslationModel getModel(IBMLanguageTranslatorV3Models.GetModelOptions getModelOptions) {
    IBMWatsonValidator.notNull(getModelOptions, 'getModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v3/models/{0}', new String[]{ getModelOptions.modelId() }));
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=language_translator;service_version=V3;operation_id=getModel');
    Map<String, String> requestHeaders = (getModelOptions != null) ? getModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);

    return (IBMLanguageTranslatorV3Models.TranslationModel) createServiceCall(builder.build(), IBMLanguageTranslatorV3Models.TranslationModel.class);
  }

  /**
   * List models.
   *
   * Lists available translation models.
   *
   * @param listModelsOptions the {@link IBMLanguageTranslatorV3Models.ListModelsOptions} containing the options for the call
   * @return the {@link IBMLanguageTranslatorV3Models.TranslationModels} with the response
   */
  public IBMLanguageTranslatorV3Models.TranslationModels listModels(IBMLanguageTranslatorV3Models.ListModelsOptions listModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v3/models');
    builder.addHeader('Accept', 'application/json');
    builder.addHeader('X-IBMCloud-SDK-Analytics', 'service_name=language_translator;service_version=V3;operation_id=listModels');
    Map<String, String> requestHeaders = (listModelsOptions != null) ? listModelsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.query('version', versionDate);
    if (listModelsOptions != null && listModelsOptions.source() != null) {
      builder.query('source', listModelsOptions.source());
    }
    if (listModelsOptions != null && listModelsOptions.target() != null) {
      builder.query('target', listModelsOptions.target());
    }
    if (listModelsOptions != null && listModelsOptions.defaultModels() != null) {
      builder.query('default', String.valueOf(listModelsOptions.defaultModels()));
    }

    return (IBMLanguageTranslatorV3Models.TranslationModels) createServiceCall(builder.build(), IBMLanguageTranslatorV3Models.TranslationModels.class);
  }

}
