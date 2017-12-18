/**
 * ### Service Overview
 *  The IBM Speech to Text service provides a Representational State Transfer (REST) Application Programming Interface
 * (API) that enables you to add IBM's speech transcription capabilities to your applications. The service also supports
 * an asynchronous HTTP interface for transcribing audio via non-blocking calls. And it supports a customization
 * interface that lets you expand the vocabulary of a base model with domain-specific terminology or adapt a base model
 * for the acoustic characteristics of your audio.
 *
 *  The service transcribes speech from various languages and audio formats to text with low latency. The service
 * supports transcription of the following languages: Brazilian Portuguese, French, Japanese, Mandarin Chinese, Modern
 * Standard Arabic, Spanish, UK English, and US English. For most languages, the service supports two sampling rates,
 * broadband and narrowband.
 * ### API Overview
 * The Speech to Text service provides the following endpoints:
 * * `/v1/models` returns information about the language models that are available for speech recognition.
 * * `/v1/recognize` (sessionless) includes a single method that provides a simple means of transcribing audio without
 * the overhead of establishing and maintaining a session, but it lacks some of the capabilities available with
 * sessions.
 * * `/v1/sessions` provides a collection of methods that provide a mechanism for a client to maintain a long,
 * multi-turn exchange, or session, with the service or to establish multiple parallel conversations with a particular
 * instance of the service.
 * * `/v1/recognitions` (asynchronous) provides a set of non-blocking methods for submitting, querying, and deleting
 * jobs for recognition requests with the asynchronous HTTP interface. The interface includes calls to register
 * (white-list) and unregister a callback URL.
 * * `/v1/customizations` provides methods for creating and managing custom language models. Custom language models let
 * you expand the vocabulary of a base model with domain-specific terminology.
 * * `/v1/customizations/{customization_id}/corpora` provides methods for managing the corpora associated with a custom
 * language model. You add corpora to extract out-of-vocabulary (OOV) words from the corpora into the custom language
 * model's vocabulary. You can add, list, and delete corpora from a custom language model.
 * * `/v1/customizations/{customization_id}/words` includes methods for managing individual words in a custom language
 * model. You can add, modify, list, and delete words from a custom language model.
 * * `/v1/acoustic_customizations` provides methods for creating and managing custom acoustic models. The interface lets
 * you adapt a base model for the audio characteristics of your environment and speakers.
 * * `/v1/acoustic_customizations/{customization_id}/audio` provides methods for managing the audio resources associated
 * with a custom acoustic model. You add audio resources that closely match the acoustic characteristics of the audio
 * that you want to transcribe. You can add, list, and delete audio resources from a custom acoustic model.
 *
 *
 * **Note about the Try It Out feature:** The `Try it out!` button lets you experiment with the methods of the API by
 * making actual cURL calls to the service. The feature is **not** supported for use with the the session-based `POST
 * /v1/sessions/{session_id}/recognize` and sessionless `POST /v1/recognize` methods. For examples of calls to these
 * methods, see the [Speech to Text API reference](http://www.ibm.com/watson/developercloud/speech-to-text/api/v1/).
 * ### API Usage
 * The following information provides details about using the service to transcribe audio:
 * * **HTTP REST interfaces:** You can use methods of the session-based, sessionless, or asynchronous HTTP interfaces to
 * pass audio data to the service. All interfaces let you send the data via the body of the request; the session-based
 * and sessionless methods also let you pass data as multipart form data. With the former approach, you control the
 * transcription via a collection of request headers and query parameters. With the latter, you control the
 * transcription primarily via JSON metadata sent as form data.
 * * **WebSocket interface:** The service also offers a WebSocket interface as an alternative to its HTTP interfaces.
 * The WebSocket interface supports efficient implementation, lower latency, and higher throughput. The interface
 * establishes a persistent connection with the service, eliminating the need for session-based calls from the HTTP
 * interface. See [The WebSocket interface](https://console.bluemix.net/docs/services/speech-to-text/websockets.html).
 * * **Audio formats:** The service supports a variety of popular audio formats. For more information, including links
 * to a number of Internet sites that provide technical and usage details about the different formats, see [Audio
 * formats](https://console.bluemix.net/docs/services/speech-to-text/audio-formats.html).
 * * **Audio transmission:** You can pass the audio to be transcribed as a one-shot delivery or in streaming mode. With
 * one-shot delivery, you pass all of the audio data to the service at one time. With streaming mode, you send audio
 * data to the service in chunks over a persistent connection. To use streaming, you must pass the `Transfer-Encoding`
 * request header with a value of `chunked`. Both forms of data transmission impose a limit of 100 MB of total data for
 * transcription. See [Audio
 * transmission](https://console.bluemix.net/docs/services/speech-to-text/input.html#transmission).
 * * **Authentication:** You authenticate to the service by using your service credentials. You can use your credentials
 * to authenticate via a proxy server that resides in IBM Cloud, or you can use your credentials to obtain a token and
 * contact the service directly. See [Service credentials for Watson
 * services](https://console.bluemix.net/docs/services/watson/getting-started-credentials.html) and [Tokens for
 * authentication](https://console.bluemix.net/docs/services/watson/getting-started-tokens.html).
 * * **Request Logging:** By default, all Watson services log requests and their results. Data is collected only to
 * improve the Watson services. If you do not want to share your data, set the header parameter
 * `X-Watson-Learning-Opt-Out` to `true` for each request. Data is collected for any request that omits this header. See
 * [Controlling request logging for Watson
 * services](https://console.bluemix.net/docs/services/watson/getting-started-logging.html).
 *
 * For more information about the service and its various interfaces, see [About Speech to
 * Text](https://console.bluemix.net/docs/services/speech-to-text/index.html).
 * ### Customization API Usage
 *   The following information pertains to methods of the customization interface:
 * * Language model customization and acoustic model customization are available only for a limited set of languages.
 * They are generally available for production use for some languages but are beta offerings for other languages. For a
 * complete list of supported languages and the status of their availability, see [Language support for
 * customization](https://console.bluemix.net/docs/services/speech-to-text/custom.html#languageSupport).
 * * In all cases, you must use service credentials created for the instance of the service that owns a custom model to
 * use the methods described in this documentation with that model. For more information, see [Ownership of custom
 * language models](https://console.bluemix.net/docs/services/speech-to-text/custom.html#customOwner).
 * * How the service handles request logging for the customization interface depends on the request. The service does
 * not log data that are used to build custom models. But it does log data when a custom model is used with a
 * recognition request. For more information, see [Request logging and data
 * privacy](https://console.bluemix.net/docs/services/speech-to-text/custom.html#customLogging).
 * * Each custom model is identified by a customization ID, which is a Globally Unique Identifier (GUID). A GUID is a
 * hexadecimal string that has the same format as Watson service credentials: `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`.
 * You specify a custom model's GUID with the appropriate customization parameter of methods that support customization.
 *
 *
 * For more information about using the service's customization interface, see [The customization
 * interface](https://console.bluemix.net/docs/services/speech-to-text/custom.html).
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/speech-to-text.html">Speech to Text</a>
 */
public class IBMSpeechToTextV1 extends IBMWatsonService {

  private static final String URL = 'https://gateway.watsonplatform.net/speech-to-text/api';
  private String versionDate;

  /**
   * Instantiates a new `IBMSpeechToTextV1`.
   *
   */
  public IBMSpeechToTextV1() {
    super('watson_speech_to_text_v1');
  }

  /**
   * Instantiates a new `IBMSpeechToTextV1` with username and password.
   *
   * @param username the username
   * @param password the password
   */
  public IBMSpeechToTextV1(String username, String password) {
    this();
    setUsernameAndPassword(username, password);
  }

  /**
   * Retrieves information about the model
   *
   * Returns information about a single specified language model that is available for use with the service. The information includes the name of the model and its minimum sampling rate in Hertz, among other things.
   *
   * @param getModelOptions the {@link IBMSpeechToTextV1Models.GetModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.SpeechModel} with the response
   */
  public IBMSpeechToTextV1Models.SpeechModel getModel(IBMSpeechToTextV1Models.GetModelOptions getModelOptions) {
    IBMWatsonValidator.notNull(getModelOptions, 'getModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/models/{0}', new String[]{ getModelOptions.modelId() }));

    return (IBMSpeechToTextV1Models.SpeechModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.SpeechModel.class);
  }

  /**
   * Retrieves the models available for the service
   *
   * Returns a list of all language models that are available for use with the service. The information includes the name of the model and its minimum sampling rate in Hertz, among other things.
   *
   * @param listModelsOptions the {@link IBMSpeechToTextV1Models.ListModelsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.SpeechModels} with the response
   */
  public IBMSpeechToTextV1Models.SpeechModels listModels(IBMSpeechToTextV1Models.ListModelsOptions listModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/models');

    return (IBMSpeechToTextV1Models.SpeechModels) createServiceCall(builder.build(), IBMSpeechToTextV1Models.SpeechModels.class);
  }

  /**
   * Checks the status of the specified asynchronous job
   *
   * Returns information about the specified job. The response always includes the status of the job and its creation and update times. If the status is `completed`, the response includes the results of the recognition request. You must submit the request with the service credentials of the user who created the job.   You can use the method to retrieve the results of any job, regardless of whether it was submitted with a callback URL and the `recognitions.completed_with_results` event, and you can retrieve the results multiple times for as long as they remain available.
   *
   * @param checkJobOptions the {@link IBMSpeechToTextV1Models.CheckJobOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RecognitionJob} with the response
   */
  public IBMSpeechToTextV1Models.RecognitionJob checkJob(IBMSpeechToTextV1Models.CheckJobOptions checkJobOptions) {
    IBMWatsonValidator.notNull(checkJobOptions, 'checkJobOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/recognitions/{0}', new String[]{ checkJobOptions.id() }));

    return (IBMSpeechToTextV1Models.RecognitionJob) createServiceCall(builder.build(), IBMSpeechToTextV1Models.RecognitionJob.class);
  }

  /**
   * Checks the status of all asynchronous jobs
   *
   * Returns the ID and status of all outstanding jobs associated with the service credentials with which it is called. The method also returns the creation and update times of each job, and, if a job was created with a callback URL and a user token, the user token for the job. To obtain the results for a job whose status is `completed`, use the `GET /v1/recognitions/{id}` method. A job and its results remain available until you delete them with the `DELETE /v1/recognitions/{id}` method or until the job's time to live expires, whichever comes first.
   *
   * @param checkJobsOptions the {@link IBMSpeechToTextV1Models.CheckJobsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RecognitionJobs} with the response
   */
  public IBMSpeechToTextV1Models.RecognitionJobs checkJobs(IBMSpeechToTextV1Models.CheckJobsOptions checkJobsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/recognitions');

    return (IBMSpeechToTextV1Models.RecognitionJobs) createServiceCall(builder.build(), IBMSpeechToTextV1Models.RecognitionJobs.class);
  }

  /**
   * Creates a job for an asynchronous recognition request
   *
   * Creates a job for a new asynchronous recognition request. The job is owned by the user whose service credentials are used to create it. How you learn the status and results of a job depends on the parameters you include with the job creation request: * By callback notification: Include the `callback_url` query parameter to specify a URL to which the service is to send callback notifications when the status of the job changes. Optionally, you can also include the `events` and `user_token` query parameters to subscribe to specific events and to specify a string that is to be included with each notification for the job. * By polling the service: Omit the `callback_url`, `events`, and `user_token` query parameters. You must then use the `GET /v1/recognitions` or `GET /v1/recognitions/{id}` methods to check the status of the job, using the latter to retrieve the results when the job is complete.  The two approaches are not mutually exclusive. You can poll the service for job status or obtain results from the service manually even if you include a callback URL. In both cases, you can include the `results_ttl` parameter to specify how long the results are to remain available after the job is complete. Note that using the HTTPS `GET /v1/recognitions/{id}` method to retrieve results is more secure than receiving them via callback notification over HTTP because it provides confidentiality in addition to authentication and data integrity.   The method supports the same basic parameters as other HTTP and WebSocket recognition requests. The service imposes a data size limit of 100 MB. It automatically detects the endianness of the incoming audio and, for audio that includes multiple channels, downmixes the audio to one-channel mono during transcoding. (For the `audio/l16` format, you can specify the endianness.)   **Note:** You can pass the `interim_results` parameter with a recognition request made with the HTTP asynchronous interface. However, the service sends all results, both interim and final, at the same time, when the request completes. The service does **not** return interim results as it generates them.
   *
   * @param createJobOptions the {@link IBMSpeechToTextV1Models.CreateJobOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RecognitionJob} with the response
   */
  public IBMSpeechToTextV1Models.RecognitionJob createJob(IBMSpeechToTextV1Models.CreateJobOptions createJobOptions) {
    IBMWatsonValidator.notNull(createJobOptions, 'createJobOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/recognitions');
    if (createJobOptions.transferEncoding() != null) {
      builder.addHeader('Transfer-Encoding', createJobOptions.transferEncoding());
    }
    builder.addHeader('Content-Type', createJobOptions.contentType());
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (createJobOptions.audio() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(createJobOptions.audio(), createJobOptions.contentType());
      multipartBuilder.addFormDataPart('audio', createJobOptions.audioFilename(), fileBody);
    }
    if (createJobOptions.callbackUrl() != null) {
      builder.query('callback_url', createJobOptions.callbackUrl());
    }
    if (createJobOptions.events() != null) {
      builder.query('events', createJobOptions.events());
    }
    if (createJobOptions.userToken() != null) {
      builder.query('user_token', createJobOptions.userToken());
    }
    if (createJobOptions.resultsTtl() != null) {
      builder.query('results_ttl', String.valueOf(createJobOptions.resultsTtl()));
    }
    if (createJobOptions.model() != null) {
      builder.query('model', createJobOptions.model());
    }
    if (createJobOptions.customizationId() != null) {
      builder.query('customization_id', createJobOptions.customizationId());
    }
    if (createJobOptions.acousticCustomizationId() != null) {
      builder.query('acoustic_customization_id', createJobOptions.acousticCustomizationId());
    }
    if (createJobOptions.customizationWeight() != null) {
      builder.query('customization_weight', String.valueOf(createJobOptions.customizationWeight()));
    }
    if (createJobOptions.inactivityTimeout() != null) {
      builder.query('inactivity_timeout', String.valueOf(createJobOptions.inactivityTimeout()));
    }
    if (createJobOptions.keywords() != null) {
      builder.query('keywords', String.join(createJobOptions.keywords(), ', '));
    }
    if (createJobOptions.keywordsThreshold() != null) {
      builder.query('keywords_threshold', String.valueOf(createJobOptions.keywordsThreshold()));
    }
    if (createJobOptions.maxAlternatives() != null) {
      builder.query('max_alternatives', String.valueOf(createJobOptions.maxAlternatives()));
    }
    if (createJobOptions.wordAlternativesThreshold() != null) {
      builder.query('word_alternatives_threshold', String.valueOf(createJobOptions.wordAlternativesThreshold()));
    }
    if (createJobOptions.wordConfidence() != null) {
      builder.query('word_confidence', String.valueOf(createJobOptions.wordConfidence()));
    }
    if (createJobOptions.timestamps() != null) {
      builder.query('timestamps', String.valueOf(createJobOptions.timestamps()));
    }
    if (createJobOptions.profanityFilter() != null) {
      builder.query('profanity_filter', String.valueOf(createJobOptions.profanityFilter()));
    }
    if (createJobOptions.smartFormatting() != null) {
      builder.query('smart_formatting', String.valueOf(createJobOptions.smartFormatting()));
    }
    if (createJobOptions.speakerLabels() != null) {
      builder.query('speaker_labels', String.valueOf(createJobOptions.speakerLabels()));
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody);

    return (IBMSpeechToTextV1Models.RecognitionJob) createServiceCall(builder.build(), IBMSpeechToTextV1Models.RecognitionJob.class);
  }

  /**
   * Deletes the specified asynchronous job
   *
   * Deletes the specified job. You cannot delete a job that the service is actively processing. Once you delete a job, its results are no longer available. The service automatically deletes a job and its results when the time to live for the results expires. You must submit the request with the service credentials of the user who created the job.
   *
   * @param deleteJobOptions the {@link IBMSpeechToTextV1Models.DeleteJobOptions} containing the options for the call
   * @return the service call
   */
  public void deleteJob(IBMSpeechToTextV1Models.DeleteJobOptions deleteJobOptions) {
    IBMWatsonValidator.notNull(deleteJobOptions, 'deleteJobOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/recognitions/{0}', new String[]{ deleteJobOptions.id() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Registers a callback URL for use with the asynchronous interface
   *
   * Registers a callback URL with the service for use with subsequent asynchronous recognition requests. The service attempts to register, or white-list, the callback URL if it is not already registered by sending a `GET` request to the callback URL. The service passes a random alphanumeric challenge string via the `challenge_string` query parameter of the request. The request includes an `Accept` header that specifies `text/plain` as the required response type.   To be registered successfully, the callback URL must respond to the `GET` request from the service. The response must send status code 200 and must include the challenge string in its body. Set the `Content-Type` response header to `text/plain`. Upon receiving this response, the service responds to the original `POST` registration request with response code 201.   The service sends only a single `GET` request to the callback URL. If the service does not receive a reply with a response code of 200 and a body that echoes the challenge string sent by the service within five seconds, it does not white-list the URL; it instead sends status code 400 in response to the `POST` registration request. If the requested callback URL is already white-listed, the service responds to the initial registration request with response code 200.   If you specify a user secret with the request, the service uses it as a key to calculate an HMAC-SHA1 signature of the challenge string in its response to the `POST` request. It sends this signature in the `X-Callback-Signature` header of its `GET` request to the URL during registration. It also uses the secret to calculate a signature over the payload of every callback notification that uses the URL. The signature provides authentication and data integrity for HTTP communications.   Once you successfully register a callback URL, you can use it with an indefinite number of recognition requests. You can register a maximum of 20 callback URLS in a one-hour span of time. For more information, see [Registering a callback URL](https://console.bluemix.net/docs/services/speech-to-text/async.html#register).
   *
   * @param registerCallbackOptions the {@link IBMSpeechToTextV1Models.RegisterCallbackOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RegisterStatus} with the response
   */
  public IBMSpeechToTextV1Models.RegisterStatus registerCallback(IBMSpeechToTextV1Models.RegisterCallbackOptions registerCallbackOptions) {
    IBMWatsonValidator.notNull(registerCallbackOptions, 'registerCallbackOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/register_callback');
    if (registerCallbackOptions.callbackUrl() != null) {
      builder.query('callback_url', registerCallbackOptions.callbackUrl());
    }
    if (registerCallbackOptions.userSecret() != null) {
      builder.query('user_secret', registerCallbackOptions.userSecret());
    }
    builder.bodyJson('{}');

    return (IBMSpeechToTextV1Models.RegisterStatus) createServiceCall(builder.build(), IBMSpeechToTextV1Models.RegisterStatus.class);
  }

  /**
   * Removes the registration for an asynchronous callback URL
   *
   * Unregisters a callback URL that was previously white-listed with a `POST register_callback` request for use with the asynchronous interface. Once unregistered, the URL can no longer be used with asynchronous recognition requests.
   *
   * @param unregisterCallbackOptions the {@link IBMSpeechToTextV1Models.UnregisterCallbackOptions} containing the options for the call
   * @return the service call
   */
  public void unregisterCallback(IBMSpeechToTextV1Models.UnregisterCallbackOptions unregisterCallbackOptions) {
    IBMWatsonValidator.notNull(unregisterCallbackOptions, 'unregisterCallbackOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/unregister_callback');
    if (unregisterCallbackOptions.callbackUrl() != null) {
      builder.query('callback_url', unregisterCallbackOptions.callbackUrl());
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Creates a custom language model
   *
   * Creates a new custom language model for a specified base model. The custom language model can be used only with the base model for which it is created. The model is owned by the instance of the service whose credentials are used to create it.
   *
   * @param createLanguageModelOptions the {@link IBMSpeechToTextV1Models.CreateLanguageModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.LanguageModel} with the response
   */
  public IBMSpeechToTextV1Models.LanguageModel createLanguageModel(IBMSpeechToTextV1Models.CreateLanguageModelOptions createLanguageModelOptions) {
    IBMWatsonValidator.notNull(createLanguageModelOptions, 'createLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/customizations');
    builder.addHeader('Content-Type', createLanguageModelOptions.contentType());
    if (createLanguageModelOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(createLanguageModelOptions.createLanguageModel(), true));
    }
    else {
      builder.bodyContent(createLanguageModelOptions.body(), createLanguageModelOptions.contentType());
    }

    return (IBMSpeechToTextV1Models.LanguageModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.LanguageModel.class);
  }

  /**
   * Deletes a custom language model
   *
   * Deletes an existing custom language model. The custom model cannot be deleted if another request, such as adding a corpus to the model, is currently being processed. You must use credentials for the instance of the service that owns a model to delete it.
   *
   * @param deleteLanguageModelOptions the {@link IBMSpeechToTextV1Models.DeleteLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteLanguageModel(IBMSpeechToTextV1Models.DeleteLanguageModelOptions deleteLanguageModelOptions) {
    IBMWatsonValidator.notNull(deleteLanguageModelOptions, 'deleteLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ deleteLanguageModelOptions.customizationId() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Lists information about a custom language model
   *
   * Lists information about a specified custom language model. You must use credentials for the instance of the service that owns a model to list information about it.
   *
   * @param getLanguageModelOptions the {@link IBMSpeechToTextV1Models.GetLanguageModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.LanguageModel} with the response
   */
  public IBMSpeechToTextV1Models.LanguageModel getLanguageModel(IBMSpeechToTextV1Models.GetLanguageModelOptions getLanguageModelOptions) {
    IBMWatsonValidator.notNull(getLanguageModelOptions, 'getLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ getLanguageModelOptions.customizationId() }));

    return (IBMSpeechToTextV1Models.LanguageModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.LanguageModel.class);
  }

  /**
   * Lists information about all custom language models
   *
   * Lists information about all custom language models that are owned by an instance of the service. Use the `language` parameter to see all custom language models for the specified language; omit the parameter to see all custom language models for all languages. You must use credentials for the instance of the service that owns a model to list information about it.
   *
   * @param listLanguageModelsOptions the {@link IBMSpeechToTextV1Models.ListLanguageModelsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.LanguageModels} with the response
   */
  public IBMSpeechToTextV1Models.LanguageModels listLanguageModels(IBMSpeechToTextV1Models.ListLanguageModelsOptions listLanguageModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/customizations');
    if (listLanguageModelsOptions != null && listLanguageModelsOptions.language() != null) {
      builder.query('language', listLanguageModelsOptions.language());
    }

    return (IBMSpeechToTextV1Models.LanguageModels) createServiceCall(builder.build(), IBMSpeechToTextV1Models.LanguageModels.class);
  }

  /**
   * Resets a custom language model
   *
   * Resets a custom language model by removing all corpora and words from the model. Resetting a custom language model initializes the model to its state when it was first created. Metadata such as the name and language of the model are preserved, but the model's words resource is removed and must be re-created. You must use credentials for the instance of the service that owns a model to reset it.
   *
   * @param resetLanguageModelOptions the {@link IBMSpeechToTextV1Models.ResetLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void resetLanguageModel(IBMSpeechToTextV1Models.ResetLanguageModelOptions resetLanguageModelOptions) {
    IBMWatsonValidator.notNull(resetLanguageModelOptions, 'resetLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/reset', new String[]{ resetLanguageModelOptions.customizationId() }));
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Trains a custom language model
   *
   * Initiates the training of a custom language model with new corpora, custom words, or both. After adding, modifying, or deleting corpora or words for a custom language model, use this method to begin the actual training of the model on the latest data. You can specify whether the custom language model is to be trained with all words from its words resource or only with words that were added or modified by the user. You must use credentials for the instance of the service that owns a model to train it.   The training method is asynchronous. It can take on the order of minutes to complete depending on the amount of data on which the service is being trained and the current load on the service. The method returns an HTTP 200 response code to indicate that the training process has begun.   You can monitor the status of the training by using the `GET /v1/customizations/{customization_id}` method to poll the model's status. Use a loop to check the status every 10 seconds. The method returns a `Customization` object that includes `status` and `progress` fields. A status of `available` means that the custom model is trained and ready to use. The service cannot accept subsequent training requests, or requests to add new corpora or words, until the existing request completes.   Training can fail to start for the following reasons: * The service is currently handling another request for the custom model, such as another training request or a request to add a corpus or words to the model. * No training data (corpora or words) have been added to the custom model. * One or more words that were added to the custom model have invalid sounds-like pronunciations that you must fix.
   *
   * @param trainLanguageModelOptions the {@link IBMSpeechToTextV1Models.TrainLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void trainLanguageModel(IBMSpeechToTextV1Models.TrainLanguageModelOptions trainLanguageModelOptions) {
    IBMWatsonValidator.notNull(trainLanguageModelOptions, 'trainLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/train', new String[]{ trainLanguageModelOptions.customizationId() }));
    if (trainLanguageModelOptions.wordTypeToAdd() != null) {
      builder.query('word_type_to_add', trainLanguageModelOptions.wordTypeToAdd());
    }
    if (trainLanguageModelOptions.customizationWeight() != null) {
      builder.query('customization_weight', String.valueOf(trainLanguageModelOptions.customizationWeight()));
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Upgrades a custom language model
   *
   * Upgrades a custom language model to the latest release level of the Speech to Text service. The method bases the upgrade on the latest trained data stored for the custom model. If the corpora or words associated with the model have changed since the model was last trained, you must use the `POST /v1/customizations/{customization_id}/train` method to train the model on the new data. You must use credentials for the instance of the service that owns a model to upgrade it.   **Note:** This method is not currently implemented. It will be added for a future release of the API.
   *
   * @param upgradeLanguageModelOptions the {@link IBMSpeechToTextV1Models.UpgradeLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void upgradeLanguageModel(IBMSpeechToTextV1Models.UpgradeLanguageModelOptions upgradeLanguageModelOptions) {
    IBMWatsonValidator.notNull(upgradeLanguageModelOptions, 'upgradeLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/upgrade', new String[]{ upgradeLanguageModelOptions.customizationId() }));
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Adds a corpus text file to a custom language model
   *
   * Adds a single corpus text file of new training data to a custom language model. Use multiple requests to submit multiple corpus text files. You must use credentials for the instance of the service that owns a model to add a corpus to it. Note that adding a corpus does not affect the custom language model until you train the model for the new data by using the `POST /v1/customizations/{customization_id}/train` method.   Submit a plain text file that contains sample sentences from the domain of interest to enable the service to extract words in context. The more sentences you add that represent the context in which speakers use words from the domain, the better the service's recognition accuracy. For guidelines about adding a corpus text file and for information about how the service parses a corpus file, see [Preparing a corpus text file](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#prepareCorpus).   The call returns an HTTP 201 response code if the corpus is valid. The service then asynchronously processes the contents of the corpus and automatically extracts new words that it finds. This can take on the order of a minute or two to complete depending on the total number of words and the number of new words in the corpus, as well as the current load on the service. You cannot submit requests to add additional corpora or words to the custom model, or to train the model, until the service's analysis of the corpus for the current request completes. Use the `GET /v1/customizations/{customization_id}/corpora/{corpus_name}` method to check the status of the analysis.   The service auto-populates the model's words resource with any word that is not found in its base vocabulary; these are referred to as out-of-vocabulary (OOV) words. You can use the `GET /v1/customizations/{customization_id}/words` method to examine the words resource, using other words method to eliminate typos and modify how words are pronounced as needed.   To add a corpus file that has the same name as an existing corpus, set the allow_overwrite query parameter to true; otherwise, the request fails. Overwriting an existing corpus causes the service to process the corpus text file and extract OOV words anew. Before doing so, it removes any OOV words associated with the existing corpus from the model's words resource unless they were also added by another corpus or they have been modified in some way with the `POST /v1/customizations/{customization_id}/words` or `PUT /v1/customizations/{customization_id}/words/{word_name}` method.   The service limits the overall amount of data that you can add to a custom model to a maximum of 10 million total words from all corpora combined. Also, you can add no more than 30 thousand new custom words to a model; this includes words that the service extracts from corpora and words that you add directly.
   *
   * @param addCorpusOptions the {@link IBMSpeechToTextV1Models.AddCorpusOptions} containing the options for the call
   * @return the service call
   */
  public void addCorpus(IBMSpeechToTextV1Models.AddCorpusOptions addCorpusOptions) {
    IBMWatsonValidator.notNull(addCorpusOptions, 'addCorpusOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/corpora/{1}', new String[]{ addCorpusOptions.customizationId(), addCorpusOptions.corpusName() }));
    if (addCorpusOptions.allowOverwrite() != null) {
      builder.query('allow_overwrite', String.valueOf(addCorpusOptions.allowOverwrite()));
    }
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(addCorpusOptions.corpusFile(), addCorpusOptions.corpusFileContentType());
    multipartBuilder.addFormDataPart('corpus_file', addCorpusOptions.corpusFilename(), fileBody);
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    createServiceCall(builder.build(), null);
  }

  /**
   * Deletes a corpus from a custom language model
   *
   * Deletes an existing corpus from a custom language model. The service removes any out-of-vocabulary (OOV) words associated with the corpus from the custom model's words resource unless they were also added by another corpus or they have been modified in some way with the `POST /v1/customizations/{customization_id}/words` or `PUT /v1/customizations/{customization_id}/words/{word_name}` method. Removing a corpus does not affect the custom model until you train the model with the `POST /v1/customizations/{customization_id}/train` method. You must use credentials for the instance of the service that owns a model to delete its corpora.
   *
   * @param deleteCorpusOptions the {@link IBMSpeechToTextV1Models.DeleteCorpusOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCorpus(IBMSpeechToTextV1Models.DeleteCorpusOptions deleteCorpusOptions) {
    IBMWatsonValidator.notNull(deleteCorpusOptions, 'deleteCorpusOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}/corpora/{1}', new String[]{ deleteCorpusOptions.customizationId(), deleteCorpusOptions.corpusName() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Lists information about a corpus for a custom language model
   *
   * Lists information about a corpus from a custom language model. The information includes the total number of words and out-of-vocabulary (OOV) words, name, and status of the corpus. You must use credentials for the instance of the service that owns a model to list its corpora.
   *
   * @param getCorpusOptions the {@link IBMSpeechToTextV1Models.GetCorpusOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Corpus} with the response
   */
  public IBMSpeechToTextV1Models.Corpus getCorpus(IBMSpeechToTextV1Models.GetCorpusOptions getCorpusOptions) {
    IBMWatsonValidator.notNull(getCorpusOptions, 'getCorpusOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/corpora/{1}', new String[]{ getCorpusOptions.customizationId(), getCorpusOptions.corpusName() }));

    return (IBMSpeechToTextV1Models.Corpus) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Corpus.class);
  }

  /**
   * Lists information about all corpora for a custom language model
   *
   * Lists information about all corpora from a custom language model. The information includes the total number of words and out-of-vocabulary (OOV) words, name, and status of each corpus. You must use credentials for the instance of the service that owns a model to list its corpora.
   *
   * @param listCorporaOptions the {@link IBMSpeechToTextV1Models.ListCorporaOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Corpora} with the response
   */
  public IBMSpeechToTextV1Models.Corpora listCorpora(IBMSpeechToTextV1Models.ListCorporaOptions listCorporaOptions) {
    IBMWatsonValidator.notNull(listCorporaOptions, 'listCorporaOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/corpora', new String[]{ listCorporaOptions.customizationId() }));

    return (IBMSpeechToTextV1Models.Corpora) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Corpora.class);
  }

  /**
   * Adds a custom word to a custom language model
   *
   * Adds a custom word to a custom language model. The service populates the words resource for a custom model with out-of-vocabulary (OOV) words found in each corpus added to the model. You can use this method to add additional words or to modify existing words in the words resource. You must use credentials for the instance of the service that owns a model to add or modify a custom word for the model. Adding or modifying a custom word does not affect the custom model until you train the model for the new data by using the `POST /v1/customizations/{customization_id}/train` method.   Use the `word_name` path parameter to specify the custom word that is to be added or modified. Use the `CustomWord` object to provide one or both of the optional `sounds_like` and `display_as` fields for the word. * The `sounds_like` field provides an array of one or more pronunciations for the word. Use the parameter to specify how the word can be pronounced by users. Use the parameter for words that are difficult to pronounce, foreign words, acronyms, and so on. For example, you might specify that the word `IEEE` can sound like `i triple e`. You can specify a maximum of five sounds-like pronunciations for a word. For information about pronunciation rules, see [Using the sounds_like field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#soundsLike). * The `display_as` field provides a different way of spelling the word in a transcript. Use the parameter when you want the word to appear different from its usual representation or from its spelling in corpora training data. For example, you might indicate that the word `IBM(trademark)` is to be displayed as `IBM`. For more information, see [Using the display_as field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#displayAs).    If you add a custom word that already exists in the words resource for the custom model, the new definition overwrites the existing data for the word. If the service encounters an error, it does not add the word to the words resource. Use the `GET /v1/customizations/{customization_id}/words/{word_name}` method to review the word that you add.
   *
   * @param addWordOptions the {@link IBMSpeechToTextV1Models.AddWordOptions} containing the options for the call
   * @return the service call
   */
  public void addWord(IBMSpeechToTextV1Models.AddWordOptions addWordOptions) {
    IBMWatsonValidator.notNull(addWordOptions, 'addWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ addWordOptions.customizationId(), addWordOptions.wordName() }));
    builder.addHeader('Content-Type', addWordOptions.contentType());
    if (addWordOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(addWordOptions.customWord(), true));
    }
    else {
      builder.bodyContent(addWordOptions.body(), addWordOptions.contentType());
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Adds one or more custom words to a custom language model
   *
   * Adds one or more custom words to a custom language model. The service populates the words resource for a custom model with out-of-vocabulary (OOV) words found in each corpus added to the model. You can use this method to add additional words or to modify existing words in the words resource. You must use credentials for the instance of the service that owns a model to add or modify custom words for the model. Adding or modifying custom words does not affect the custom model until you train the model for the new data by using the `POST /v1/customizations/{customization_id}/train` method.   You add custom words by providing a `Words` object, which is an array of `Word` objects, one per word. You must use the object's word parameter to identify the word that is to be added. You can also provide one or both of the optional `sounds_like` and `display_as` fields for each word. * The `sounds_like` field provides an array of one or more pronunciations for the word. Use the parameter to specify how the word can be pronounced by users. Use the parameter for words that are difficult to pronounce, foreign words, acronyms, and so on. For example, you might specify that the word `IEEE` can sound like `i triple e`. You can specify a maximum of five sounds-like pronunciations for a word. For information about pronunciation rules, see [Using the sounds_like field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#soundsLike). * The `display_as` field provides a different way of spelling the word in a transcript. Use the parameter when you want the word to appear different from its usual representation or from its spelling in corpora training data. For example, you might indicate that the word `IBM(trademark)` is to be displayed as `IBM`. For more information, see [Using the display_as field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#displayAs).    If you add a custom word that already exists in the words resource for the custom model, the new definition overwrites the existing data for the word. If the service encounters an error with the input data, it returns a failure code and does not add any of the words to the words resource.   The call returns an HTTP 201 response code if the input data is valid. It then asynchronously processes the words to add them to the model's words resource. The time that it takes for the analysis to complete depends on the number of new words that you add but is generally faster than adding a corpus or training a model.   You can monitor the status of the request by using the `GET /v1/customizations/{customization_id}` method to poll the model's status. Use a loop to check the status every 10 seconds. The method returns a `Customization` object that includes a `status` field. A status of `ready` means that the words have been added to the custom model. The service cannot accept requests to add new corpora or words or to train the model until the existing request completes.   You can use the `GET /v1/customizations/{customization_id}/words` or `GET /v1/customizations/{customization_id}/words/{word_name}` method to review the words that you add. Words with an invalid `sounds_like` field include an `error` field that describes the problem. You can use other words methods to correct errors, eliminate typos, and modify how words are pronounced as needed.
   *
   * @param addWordsOptions the {@link IBMSpeechToTextV1Models.AddWordsOptions} containing the options for the call
   * @return the service call
   */
  public void addWords(IBMSpeechToTextV1Models.AddWordsOptions addWordsOptions) {
    IBMWatsonValidator.notNull(addWordsOptions, 'addWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ addWordsOptions.customizationId() }));
    builder.addHeader('Content-Type', addWordsOptions.contentType());
    if (addWordsOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(addWordsOptions.customWords(), true));
    }
    else {
      builder.bodyContent(addWordsOptions.body(), addWordsOptions.contentType());
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Deletes a custom word from a custom language model
   *
   * Deletes a custom word from a custom language model. You can remove any word that you added to the custom model's words resource via any means. However, if the word also exists in the service's base vocabulary, the service removes only the custom pronunciation for the word; the word remains in the base vocabulary. Removing a custom word does not affect the custom model until you train the model with the `POST /v1/customizations/{customization_id}/train` method. You must use credentials for the instance of the service that owns a model to delete its words.
   *
   * @param deleteWordOptions the {@link IBMSpeechToTextV1Models.DeleteWordOptions} containing the options for the call
   * @return the service call
   */
  public void deleteWord(IBMSpeechToTextV1Models.DeleteWordOptions deleteWordOptions) {
    IBMWatsonValidator.notNull(deleteWordOptions, 'deleteWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ deleteWordOptions.customizationId(), deleteWordOptions.wordName() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Lists a custom word from a custom language model
   *
   * Lists information about a custom word from a custom language model. You must use credentials for the instance of the service that owns a model to query information about its words.
   *
   * @param getWordOptions the {@link IBMSpeechToTextV1Models.GetWordOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Word} with the response
   */
  public IBMSpeechToTextV1Models.Word getWord(IBMSpeechToTextV1Models.GetWordOptions getWordOptions) {
    IBMWatsonValidator.notNull(getWordOptions, 'getWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ getWordOptions.customizationId(), getWordOptions.wordName() }));

    return (IBMSpeechToTextV1Models.Word) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Word.class);
  }

  /**
   * Lists all custom words from a custom language model
   *
   * Lists information about custom words from a custom language model. You can list all words from the custom model's words resource, only custom words that were added or modified by the user, or only out-of-vocabulary (OOV) words that were extracted from corpora. You can also indicate the order in which the service is to return words; by default, words are listed in ascending alphabetical order. You must use credentials for the instance of the service that owns a model to query information about its words.
   *
   * @param listWordsOptions the {@link IBMSpeechToTextV1Models.ListWordsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Words} with the response
   */
  public IBMSpeechToTextV1Models.Words listWords(IBMSpeechToTextV1Models.ListWordsOptions listWordsOptions) {
    IBMWatsonValidator.notNull(listWordsOptions, 'listWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ listWordsOptions.customizationId() }));
    if (listWordsOptions.wordType() != null) {
      builder.query('word_type', listWordsOptions.wordType());
    }
    if (listWordsOptions.sortField() != null) {
      builder.query('sort', listWordsOptions.sortField());
    }

    return (IBMSpeechToTextV1Models.Words) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Words.class);
  }

  /**
   * Creates a custom acoustic model
   *
   * Creates a new custom acoustic model for a specified base model. The custom acoustic model can be used only with the base model for which it is created. The model is owned by the instance of the service whose credentials are used to create it.
   *
   * @param createAcousticModelOptions the {@link IBMSpeechToTextV1Models.CreateAcousticModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AcousticModel} with the response
   */
  public IBMSpeechToTextV1Models.AcousticModel createAcousticModel(IBMSpeechToTextV1Models.CreateAcousticModelOptions createAcousticModelOptions) {
    IBMWatsonValidator.notNull(createAcousticModelOptions, 'createAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/acoustic_customizations');
    builder.addHeader('Content-Type', createAcousticModelOptions.contentType());
    if (createAcousticModelOptions.contentType().equalsIgnoreCase(IBMWatsonHttpMediaType.APPLICATION_JSON)) {
      builder.bodyJson(JSON.serialize(createAcousticModelOptions.createAcousticModel(), true));
    }
    else {
      builder.bodyContent(createAcousticModelOptions.body(), createAcousticModelOptions.contentType());
    }

    return (IBMSpeechToTextV1Models.AcousticModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AcousticModel.class);
  }

  /**
   * Deletes a custom acoustic model
   *
   * Deletes an existing custom acoustic model. The custom model cannot be deleted if another request, such as adding an audio resource to the model, is currently being processed. You must use credentials for the instance of the service that owns a model to delete it.
   *
   * @param deleteAcousticModelOptions the {@link IBMSpeechToTextV1Models.DeleteAcousticModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteAcousticModel(IBMSpeechToTextV1Models.DeleteAcousticModelOptions deleteAcousticModelOptions) {
    IBMWatsonValidator.notNull(deleteAcousticModelOptions, 'deleteAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/acoustic_customizations/{0}', new String[]{ deleteAcousticModelOptions.customizationId() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Lists information about a custom acoustic model
   *
   * Lists information about a specified custom acoustic model. You must use credentials for the instance of the service that owns a model to list information about it.
   *
   * @param getAcousticModelOptions the {@link IBMSpeechToTextV1Models.GetAcousticModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AcousticModel} with the response
   */
  public IBMSpeechToTextV1Models.AcousticModel getAcousticModel(IBMSpeechToTextV1Models.GetAcousticModelOptions getAcousticModelOptions) {
    IBMWatsonValidator.notNull(getAcousticModelOptions, 'getAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/acoustic_customizations/{0}', new String[]{ getAcousticModelOptions.customizationId() }));

    return (IBMSpeechToTextV1Models.AcousticModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AcousticModel.class);
  }

  /**
   * Lists information about all custom acoustic models
   *
   * Lists information about all custom acoustic models that are owned by an instance of the service. Use the `language` parameter to see all custom acoustic models for the specified language; omit the parameter to see all custom acoustic models for all languages. You must use credentials for the instance of the service that owns a model to list information about it.
   *
   * @param listAcousticModelsOptions the {@link IBMSpeechToTextV1Models.ListAcousticModelsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AcousticModels} with the response
   */
  public IBMSpeechToTextV1Models.AcousticModels listAcousticModels(IBMSpeechToTextV1Models.ListAcousticModelsOptions listAcousticModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/acoustic_customizations');
    if (listAcousticModelsOptions != null && listAcousticModelsOptions.language() != null) {
      builder.query('language', listAcousticModelsOptions.language());
    }

    return (IBMSpeechToTextV1Models.AcousticModels) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AcousticModels.class);
  }

  /**
   * Resets a custom acoustic model
   *
   * Resets a custom acoustic model by removing all audio resources from the model. Resetting a custom acoustic model initializes the model to its state when it was first created. Metadata such as the name and language of the model are preserved, but the model's audio resources are removed and must be re-created. You must use credentials for the instance of the service that owns a model to reset it.
   *
   * @param resetAcousticModelOptions the {@link IBMSpeechToTextV1Models.ResetAcousticModelOptions} containing the options for the call
   * @return the service call
   */
  public void resetAcousticModel(IBMSpeechToTextV1Models.ResetAcousticModelOptions resetAcousticModelOptions) {
    IBMWatsonValidator.notNull(resetAcousticModelOptions, 'resetAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/reset', new String[]{ resetAcousticModelOptions.customizationId() }));
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Trains a custom acoustic model
   *
   * Initiates the training of a custom acoustic model with new or changed audio resources. After adding or deleting audio resources for a custom acoustic model, use this method to begin the actual training of the model on the latest audio data. The custom acoustic model does not reflect its changed data until you train it. You must use credentials for the instance of the service that owns a model to train it.   The training method is asynchronous. It can take on the order of minutes or hours to complete depending on the total amount of audio data on which the model is being trained and the current load on the service. Typically, training takes approximately twice the length of the total audio contained in the custom model. The method returns an HTTP 200 response code to indicate that the training process has begun.   You can monitor the status of the training by using the `GET /v1/acoustic_customizations/{customization_id}` method to poll the model's status. Use a loop to check the status once a minute. The method returns an `Customization` object that includes `status` and `progress` fields. A status of `available` indicates that the custom model is trained and ready to use. The service cannot accept subsequent training requests, or requests to add new audio resources, until the existing request completes.   You can use the optional `custom_language_model_id` query parameter to specify the GUID of a separately created custom language model that is to be used during training. Specify a custom language model if you have verbatim transcriptions of the audio files that you have added to the custom model or you have either corpora (text files) or a list of words that are relevant to the contents of the audio files. For information about creating a separate custom language model, see [Creating a custom language model](https://console.bluemix.net/docs/services/speech-to-text/language-create.html).   Training can fail to start for the following reasons: * The service is currently handling another request for the custom model, such as another training request or a request to add audio resources to the model. * The custom model contains less than 10 minutes or more than 50 hours of audio data. * One or more of the custom model's audio resources is invalid.
   *
   * @param trainAcousticModelOptions the {@link IBMSpeechToTextV1Models.TrainAcousticModelOptions} containing the options for the call
   * @return the service call
   */
  public void trainAcousticModel(IBMSpeechToTextV1Models.TrainAcousticModelOptions trainAcousticModelOptions) {
    IBMWatsonValidator.notNull(trainAcousticModelOptions, 'trainAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/train', new String[]{ trainAcousticModelOptions.customizationId() }));
    if (trainAcousticModelOptions.customLanguageModelId() != null) {
      builder.query('custom_language_model_id', trainAcousticModelOptions.customLanguageModelId());
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Adds an audio resource to a custom acoustic model
   *
   * Adds an audio resource to a custom acoustic model. Add audio content that reflects the acoustic characteristics of the audio that you plan to transcribe. You must use credentials for the instance of the service that owns a model to add an audio resource to it. Adding audio data does not affect the custom acoustic model until you train the model for the new data by using the `POST /v1/acoustic_customizations/{customization_id}/train` method.   You can add individual audio files or an archive file that contains multiple audio files. Adding multiple audio files via a single archive file is significantly more efficient than adding each file individually. * You can add an individual audio file in any format that the service supports for speech recognition. Use the `Content-Type` header to specify the format of the audio file. * You can add an archive file (**.zip** or **.tar.gz** file) that contains audio files in any format that the service supports for speech recognition. All audio files added with the same archive file must have the same audio format. Use the `Content-Type` header to specify the archive type, `application/zip` or `application/gzip`. Use the `Contained-Content-Type` header to specify the format of the contained audio files; the default format is `audio/wav`.   You can use this method to add any number of audio resources to a custom model by calling the method once for each audio or archive file. But the addition of one audio resource must be fully complete before you can add another. You must add a minimum of 10 minutes and a maximum of 50 hours of audio that includes speech, not just silence, to a custom acoustic model before you can train it. No audio resource, audio- or archive-type, can be larger than 100 MB.   The method is asynchronous. It can take several seconds to complete depending on the duration of the audio and, in the case of an archive file, the total number of audio files being processed. The service returns a 201 response code if the audio is valid. It then asynchronously analyzes the contents of the audio file or files and automatically extracts information about the audio such as its length, sampling rate, and encoding. You cannot submit requests to add additional audio resources to a custom acoustic model, or to train the model, until the service's analysis of all audio files for the current request completes.   To determine the status of the service's analysis of the audio, use the `GET /v1/acoustic_customizations/{customization_id}/audio/{audio_name}` method to poll the status of the audio. The method accepts the GUID of the custom model and the name of the audio resource, and it returns the status of the resource. Use a loop to check the status of the audio every few seconds until it becomes `ok`.   **Note:** The sampling rate of an audio file must match the sampling rate of the base model for the custom model: for broadband models, at least 16 kHz; for narrowband models, at least 8 kHz. If the sampling rate of the audio is higher than the minimum required rate, the service down-samples the audio to the appropriate rate. If the sampling rate of the audio is lower than the minimum required rate, the service labels the audio file as `invalid`.
   *
   * @param addAudioOptions the {@link IBMSpeechToTextV1Models.AddAudioOptions} containing the options for the call
   * @return the service call
   */
  public void addAudio(IBMSpeechToTextV1Models.AddAudioOptions addAudioOptions) {
    IBMWatsonValidator.notNull(addAudioOptions, 'addAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio/{1}', new String[]{ addAudioOptions.customizationId(), addAudioOptions.audioName() }));
    if (addAudioOptions.containedContentType() != null) {
      builder.addHeader('Contained-Content-Type', addAudioOptions.containedContentType());
    }
    builder.addHeader('Content-Type', addAudioOptions.contentType());
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (addAudioOptions.audio() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(addAudioOptions.audio(), addAudioOptions.contentType());
      multipartBuilder.addFormDataPart('audio', addAudioOptions.audioFilename(), fileBody);
    }
    if (addAudioOptions.allowOverwrite() != null) {
      builder.query('allow_overwrite', String.valueOf(addAudioOptions.allowOverwrite()));
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody);

    createServiceCall(builder.build(), null);
  }

  /**
   * Deletes an audio resource from a custom acoustic model
   *
   * Deletes an existing audio resource from a custom acoustic model. Deleting an archive-type audio resource removes the entire archive of files; the current interface does not allow deletion of individual files from an archive resource. Removing an audio resource does not affect the custom model until you train the model on its updated data by using the `POST /v1/acoustic_customizations/{customization_id}/train` method. You must use credentials for the instance of the service that owns a model to delete its audio resources.
   *
   * @param deleteAudioOptions the {@link IBMSpeechToTextV1Models.DeleteAudioOptions} containing the options for the call
   * @return the service call
   */
  public void deleteAudio(IBMSpeechToTextV1Models.DeleteAudioOptions deleteAudioOptions) {
    IBMWatsonValidator.notNull(deleteAudioOptions, 'deleteAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio/{1}', new String[]{ deleteAudioOptions.customizationId(), deleteAudioOptions.audioName() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Lists information about an audio resource for a custom acoustic model
   *
   * Lists information about an audio resource from a custom acoustic model. The method returns an `AudioListing` object whose fields depend on the type of audio resource you specify with the method's `audio_name` parameter: * **For an audio-type resource,** the object's fields match those of an `AudioResource` object: `duration`, `name`, `details`, and `status`. * **For an archive-type resource,** the object includes a `container` field whose fields match those of an `AudioResource` object. It also includes an `audio` field, which contains an array of `AudioResource` objects that provides information about the audio files that are contained in the archive.   The information includes the status of the specified audio resource, which is important for checking the service's analysis of the resource in response to a request to add it to the custom model. You must use credentials for the instance of the service that owns a model to list its audio resources.
   *
   * @param getAudioOptions the {@link IBMSpeechToTextV1Models.GetAudioOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AudioListing} with the response
   */
  public IBMSpeechToTextV1Models.AudioListing getAudio(IBMSpeechToTextV1Models.GetAudioOptions getAudioOptions) {
    IBMWatsonValidator.notNull(getAudioOptions, 'getAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio/{1}', new String[]{ getAudioOptions.customizationId(), getAudioOptions.audioName() }));

    return (IBMSpeechToTextV1Models.AudioListing) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AudioListing.class);
  }

  /**
   * Lists information about all audio resources for a custom acoustic model
   *
   * Lists information about all audio resources from a custom acoustic model. The information includes the name of the resource and information about its audio data, such as its duration. It also includes the status of the audio resource, which is important for checking the service's analysis of the resource in response to a request to add it to the custom acoustic model. You must use credentials for the instance of the service that owns a model to list its audio resources.
   *
   * @param listAudioOptions the {@link IBMSpeechToTextV1Models.ListAudioOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AudioResources} with the response
   */
  public IBMSpeechToTextV1Models.AudioResources listAudio(IBMSpeechToTextV1Models.ListAudioOptions listAudioOptions) {
    IBMWatsonValidator.notNull(listAudioOptions, 'listAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio', new String[]{ listAudioOptions.customizationId() }));

    return (IBMSpeechToTextV1Models.AudioResources) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AudioResources.class);
  }

  public IBMSpeechToTextV1Models.SpeechResults recognize(IBMSpeechToTextV1Models.RecognizeOptions recognizeOptions) {
    IBMWatsonValidator.notNull(recognizeOptions, 'recognizeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/recognize');

    builder.addHeader('Content-Type', recognizeOptions.fileContentType());
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    if (recognizeOptions.audio() != null) {
      IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(recognizeOptions.audio(), recognizeOptions.fileContentType());
      multipartBuilder.addFormDataPart('audio', recognizeOptions.audioFilename(), fileBody);
    }
    if (recognizeOptions.continuous() != null) {
      builder.query('continuous', String.valueOf(recognizeOptions.continuous()));
    }
    if (recognizeOptions.maxAlternatives() != null) {
      builder.query('max_alternatives', String.valueOf(recognizeOptions.maxAlternatives()));
    }
    if (recognizeOptions.timestamps() != null) {
      builder.query('timestamps', String.valueOf(recognizeOptions.timestamps()));
    }
    if (recognizeOptions.wordConfidence() != null) {
      builder.query('word_confidence', String.valueOf(recognizeOptions.wordConfidence()));
    }
    if (recognizeOptions.inactivityTimeout() != null) {
      builder.query('inactivity_timeout', String.valueOf(recognizeOptions.inactivityTimeout()));
    }
    if (recognizeOptions.model() != null) {
      builder.query('model', recognizeOptions.model());
    }
    if (recognizeOptions.interimResults() != null) {
      builder.query('interim_results', String.valueOf(recognizeOptions.interimResults()));
    }
    if (recognizeOptions.keywords() != null) {
      builder.query('keywords', String.valueOf(recognizeOptions.keywords()));
    }
    if (recognizeOptions.keywordsThreshold() != null) {
      builder.query('keywords_threshold', String.valueOf(recognizeOptions.keywordsThreshold()));
    }
    if (recognizeOptions.wordAlternativesThreshold() != null) {
      builder.query('word_alternatives_threshold', String.valueOf(recognizeOptions.wordAlternativesThreshold()));
    }
    if (recognizeOptions.profanityFilter() != null) {
      builder.query('profanity_filter', String.valueOf(recognizeOptions.profanityFilter()));
    }
    if (recognizeOptions.smartFormatting() != null) {
      builder.query('smart_formatting', String.valueOf(recognizeOptions.smartFormatting()));
    }
    if (recognizeOptions.customizationId() != null) {
      builder.query('customization_id', recognizeOptions.customizationId());
    }
    if (recognizeOptions.speakerLabels() != null) {
      builder.query('speaker_labels', String.valueOf(recognizeOptions.speakerLabels()));
    }
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody);

    return (IBMSpeechToTextV1Models.SpeechResults) createServiceCall(builder.build(), IBMSpeechToTextV1Models.SpeechResults.class);
  }
}
