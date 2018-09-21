/**
 * The IBM&reg; Speech to Text service provides an API that uses IBM's speech-recognition capabilities to produce
 * transcripts of spoken audio. The service can transcribe speech from various languages and audio formats. It addition
 * to basic transcription, the service can produce detailed information about many different aspects of the audio. For
 * most languages, the service supports two sampling rates, broadband and narrowband. It returns all JSON response
 * content in the UTF-8 character set.
 *
 *  For more information about the service, see the [IBM&reg; Cloud
 * documentation](https://console.bluemix.net/docs/services/speech-to-text/index.html).
 *
 * ### API usage guidelines
 * * **Audio formats:** The service accepts audio in many formats (MIME types). See [Audio
 * formats](https://console.bluemix.net/docs/services/speech-to-text/audio-formats.html).
 * * **HTTP interfaces:** The service provides two HTTP Representational State Transfer (REST) interfaces for speech
 * recognition. The basic interface includes a single synchronous method. The asynchronous interface provides multiple
 * methods that use registered callbacks and polling for non-blocking recognition. See [The HTTP
 * interface](https://console.bluemix.net/docs/services/speech-to-text/http.html) and [The asynchronous HTTP
 * interface](https://console.bluemix.net/docs/services/speech-to-text/async.html).
 * * **WebSocket interface:** The service also offers a WebSocket interface for speech recognition. The WebSocket
 * interface provides a full-duplex, low-latency communication channel. Clients send requests and audio to the service
 * and receive results over a single connection in an asynchronous fashion. See [The WebSocket
 * interface](https://console.bluemix.net/docs/services/speech-to-text/websockets.html).
 * * **Customization:** The service offers two customization interfaces. Use language model customization to expand the
 * vocabulary of a base model with domain-specific terminology. Use acoustic model customization to adapt a base model
 * for the acoustic characteristics of your audio. Language model customization is generally available for production
 * use by most supported languages; acoustic model customization is beta functionality that is available for all
 * supported languages. See [The customization
 * interface](https://console.bluemix.net/docs/services/speech-to-text/custom.html).
 * * **Customization IDs:** Many methods accept a customization ID to identify a custom language or custom acoustic
 * model. Customization IDs are Globally Unique Identifiers (GUIDs). They are hexadecimal strings that have the format
 * `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`.
 * * **`X-Watson-Learning-Opt-Out`:** By default, all Watson services log requests and their results. Logging is done
 * only to improve the services for future users. The logged data is not shared or made public. To prevent IBM from
 * accessing your data for general service improvements, set the `X-Watson-Learning-Opt-Out` request header to `true`
 * for all requests. You must set the header on each request that you do not want IBM to access for general service
 * improvements.
 *
 *   Methods of the customization interface do not log corpora, words, and audio resources that you use to build custom
 * models. Your training data is never used to improve the service's base models. However, the service does log such
 * data when a custom model is used with a recognition request. You must set the `X-Watson-Learning-Opt-Out` request
 * header to `true` to prevent IBM from accessing the data to improve the service.
 * * **`X-Watson-Metadata`**: This header allows you to associate a customer ID with data that is passed with a request.
 * If necessary, you can use the **Delete labeled data** method to delete the data for a customer ID. See [Information
 * security](https://console.bluemix.net/docs/services/speech-to-text/information-security.html).
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/speech-to-text.html">Speech to Text</a>
 */
public class IBMSpeechToTextV1 extends IBMWatsonService {

  private static final String URL = 'https://stream.watsonplatform.net/speech-to-text/api';

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
   * Instantiates a new `IBMSpeechToTextV1` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMSpeechToTextV1(IBMWatsonIAMOptions iamOptions) {
    this();
    setIamCredentials(iamOptions);
  }

  /**
   * Get a model.
   *
   * Gets information for a single specified language model that is available for use with the service. The information
   * includes the name of the model and its minimum sampling rate in Hertz, among other things.
   *
   * @param getModelOptions the {@link IBMSpeechToTextV1Models.GetModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.SpeechModel} with the response
   */
  public IBMSpeechToTextV1Models.SpeechModel getModel(IBMSpeechToTextV1Models.GetModelOptions getModelOptions) {
    IBMWatsonValidator.notNull(getModelOptions, 'getModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/models/{0}', new String[]{ getModelOptions.modelId() }));
    Map<String, String> requestHeaders = (getModelOptions != null) ? getModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.SpeechModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.SpeechModel.class);
  }

  /**
   * List models.
   *
   * Lists all language models that are available for use with the service. The information includes the name of the
   * model and its minimum sampling rate in Hertz, among other things.
   *
   * @param listModelsOptions the {@link IBMSpeechToTextV1Models.ListModelsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.SpeechModels} with the response
   */
  public IBMSpeechToTextV1Models.SpeechModels listModels(IBMSpeechToTextV1Models.ListModelsOptions listModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/models');
    Map<String, String> requestHeaders = (listModelsOptions != null) ? listModelsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.SpeechModels) createServiceCall(builder.build(), IBMSpeechToTextV1Models.SpeechModels.class);
  }

  /**
   * Recognize audio.
   *
   * Sends audio and returns transcription results for a recognition request. Returns only the final results; to enable
   * interim results, use the WebSocket API. The service imposes a data size limit of 100 MB. It automatically detects
   * the endianness of the incoming audio and, for audio that includes multiple channels, downmixes the audio to
   * one-channel mono during transcoding. (For the `audio/l16` format, you can specify the endianness.)
   *
   * ### Streaming mode
   *
   *  For requests to transcribe live audio as it becomes available, you must set the `Transfer-Encoding` header to
   * `chunked` to use streaming mode. In streaming mode, the server closes the connection (status code 408) if the
   * service receives no data chunk for 30 seconds and it has no audio to transcribe for 30 seconds. The server also
   * closes the connection (status code 400) if no speech is detected for `inactivity_timeout` seconds of audio (not
   * processing time); use the `inactivity_timeout` parameter to change the default of 30 seconds.
   *
   * ### Audio formats (content types)
   *
   *  Use the `Content-Type` header to specify the audio format (MIME type) of the audio. The service accepts the
   * following formats:
   * * `audio/basic` (Use only with narrowband models.)
   * * `audio/flac`
   * * `audio/l16` (Specify the sampling rate (`rate`) and optionally the number of channels (`channels`) and endianness
   * (`endianness`) of the audio.)
   * * `audio/mp3`
   * * `audio/mpeg`
   * * `audio/mulaw` (Specify the sampling rate (`rate`) of the audio.)
   * * `audio/ogg` (The service automatically detects the codec of the input audio.)
   * * `audio/ogg;codecs=opus`
   * * `audio/ogg;codecs=vorbis`
   * * `audio/wav` (Provide audio with a maximum of nine channels.)
   * * `audio/webm` (The service automatically detects the codec of the input audio.)
   * * `audio/webm;codecs=opus`
   * * `audio/webm;codecs=vorbis`
   *
   * For information about the supported audio formats, including specifying the sampling rate, channels, and endianness
   * for the indicated formats, see [Audio
   * formats](https://console.bluemix.net/docs/services/speech-to-text/audio-formats.html).
   *
   * ### Multipart speech recognition
   *
   *  The method also supports multipart recognition requests. With multipart requests, you pass all audio data as
   * multipart form data. You specify some parameters as request headers and query parameters, but you pass JSON
   * metadata as form data to control most aspects of the transcription.
   *
   * The multipart approach is intended for use with browsers for which JavaScript is disabled or when the parameters
   * used with the request are greater than the 8 KB limit imposed by most HTTP servers and proxies. You can encounter
   * this limit, for example, if you want to spot a very large number of keywords.
   *
   * For information about submitting a multipart request, see [Making a multipart HTTP
   * request](https://console.bluemix.net/docs/services/speech-to-text/http.html#HTTP-multi).
   *
   * @param recognizeOptions the {@link IBMSpeechToTextV1Models.RecognizeOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.SpeechRecognitionResults} with the response
   */
  public IBMSpeechToTextV1Models.SpeechRecognitionResults recognize(IBMSpeechToTextV1Models.RecognizeOptions recognizeOptions) {
    IBMWatsonValidator.notNull(recognizeOptions, 'recognizeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/recognize');
    builder.addHeader('Content-Type', recognizeOptions.contentType());
    Map<String, String> requestHeaders = (recognizeOptions != null) ? recognizeOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (recognizeOptions.model() != null) {
      builder.query('model', recognizeOptions.model());
    }
    if (recognizeOptions.customizationId() != null) {
      builder.query('customization_id', recognizeOptions.customizationId());
    }
    if (recognizeOptions.acousticCustomizationId() != null) {
      builder.query('acoustic_customization_id', recognizeOptions.acousticCustomizationId());
    }
    if (recognizeOptions.baseModelVersion() != null) {
      builder.query('base_model_version', recognizeOptions.baseModelVersion());
    }
    if (recognizeOptions.customizationWeight() != null) {
      builder.query('customization_weight', String.valueOf(recognizeOptions.customizationWeight()));
    }
    if (recognizeOptions.inactivityTimeout() != null) {
      builder.query('inactivity_timeout', String.valueOf(recognizeOptions.inactivityTimeout()));
    }
    if (recognizeOptions.keywords() != null) {
      builder.query('keywords', String.join(recognizeOptions.keywords(), ','));
    }
    if (recognizeOptions.keywordsThreshold() != null) {
      builder.query('keywords_threshold', String.valueOf(recognizeOptions.keywordsThreshold()));
    }
    if (recognizeOptions.maxAlternatives() != null) {
      builder.query('max_alternatives', String.valueOf(recognizeOptions.maxAlternatives()));
    }
    if (recognizeOptions.wordAlternativesThreshold() != null) {
      builder.query('word_alternatives_threshold', String.valueOf(recognizeOptions.wordAlternativesThreshold()));
    }
    if (recognizeOptions.wordConfidence() != null) {
      builder.query('word_confidence', String.valueOf(recognizeOptions.wordConfidence()));
    }
    if (recognizeOptions.timestamps() != null) {
      builder.query('timestamps', String.valueOf(recognizeOptions.timestamps()));
    }
    if (recognizeOptions.profanityFilter() != null) {
      builder.query('profanity_filter', String.valueOf(recognizeOptions.profanityFilter()));
    }
    if (recognizeOptions.smartFormatting() != null) {
      builder.query('smart_formatting', String.valueOf(recognizeOptions.smartFormatting()));
    }
    if (recognizeOptions.speakerLabels() != null) {
      builder.query('speaker_labels', String.valueOf(recognizeOptions.speakerLabels()));
    }
    builder.body(IBMWatsonRequestBody.create(recognizeOptions.audio(), IBMWatsonMediaType.parse(recognizeOptions.contentType())));

    return (IBMSpeechToTextV1Models.SpeechRecognitionResults) createServiceCall(builder.build(), IBMSpeechToTextV1Models.SpeechRecognitionResults.class);
  }

  /**
   * Check a job.
   *
   * Returns information about the specified job. The response always includes the status of the job and its creation
   * and update times. If the status is `completed`, the response includes the results of the recognition request. You
   * must submit the request with the service credentials of the user who created the job.
   *
   * You can use the method to retrieve the results of any job, regardless of whether it was submitted with a callback
   * URL and the `recognitions.completed_with_results` event, and you can retrieve the results multiple times for as
   * long as they remain available. Use the **Check jobs** method to request information about the most recent jobs
   * associated with the calling user.
   *
   * @param checkJobOptions the {@link IBMSpeechToTextV1Models.CheckJobOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RecognitionJob} with the response
   */
  public IBMSpeechToTextV1Models.RecognitionJob checkJob(IBMSpeechToTextV1Models.CheckJobOptions checkJobOptions) {
    IBMWatsonValidator.notNull(checkJobOptions, 'checkJobOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/recognitions/{0}', new String[]{ checkJobOptions.id() }));
    Map<String, String> requestHeaders = (checkJobOptions != null) ? checkJobOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.RecognitionJob) createServiceCall(builder.build(), IBMSpeechToTextV1Models.RecognitionJob.class);
  }

  /**
   * Check jobs.
   *
   * Returns the ID and status of the latest 100 outstanding jobs associated with the service credentials with which it
   * is called. The method also returns the creation and update times of each job, and, if a job was created with a
   * callback URL and a user token, the user token for the job. To obtain the results for a job whose status is
   * `completed` or not one of the latest 100 outstanding jobs, use the **Check a job** method. A job and its results
   * remain available until you delete them with the **Delete a job** method or until the job's time to live expires,
   * whichever comes first.
   *
   * @param checkJobsOptions the {@link IBMSpeechToTextV1Models.CheckJobsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RecognitionJobs} with the response
   */
  public IBMSpeechToTextV1Models.RecognitionJobs checkJobs(IBMSpeechToTextV1Models.CheckJobsOptions checkJobsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/recognitions');
    Map<String, String> requestHeaders = (checkJobsOptions != null) ? checkJobsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.RecognitionJobs) createServiceCall(builder.build(), IBMSpeechToTextV1Models.RecognitionJobs.class);
  }

  /**
   * Create a job.
   *
   * Creates a job for a new asynchronous recognition request. The job is owned by the user whose service credentials
   * are used to create it. How you learn the status and results of a job depends on the parameters you include with the
   * job creation request:
   * * By callback notification: Include the `callback_url` parameter to specify a URL to which the service is to send
   * callback notifications when the status of the job changes. Optionally, you can also include the `events` and
   * `user_token` parameters to subscribe to specific events and to specify a string that is to be included with each
   * notification for the job.
   * * By polling the service: Omit the `callback_url`, `events`, and `user_token` parameters. You must then use the
   * **Check jobs** or **Check a job** methods to check the status of the job, using the latter to retrieve the results
   * when the job is complete.
   *
   * The two approaches are not mutually exclusive. You can poll the service for job status or obtain results from the
   * service manually even if you include a callback URL. In both cases, you can include the `results_ttl` parameter to
   * specify how long the results are to remain available after the job is complete. For detailed usage information
   * about the two approaches, including callback notifications, see [Creating a
   * job](https://console.bluemix.net/docs/services/speech-to-text/async.html#create). Using the HTTPS **Check a job**
   * method to retrieve results is more secure than receiving them via callback notification over HTTP because it
   * provides confidentiality in addition to authentication and data integrity.
   *
   * The method supports the same basic parameters as other HTTP and WebSocket recognition requests. It also supports
   * the following parameters specific to the asynchronous interface:
   * * `callback_url`
   * * `events`
   * * `user_token`
   * * `results_ttl`
   *
   * The service imposes a data size limit of 100 MB. It automatically detects the endianness of the incoming audio and,
   * for audio that includes multiple channels, downmixes the audio to one-channel mono during transcoding. (For the
   * `audio/l16` format, you can specify the endianness.)
   *
   * ### Audio formats (content types)
   *
   *  Use the `Content-Type` parameter to specify the audio format (MIME type) of the audio:
   * * `audio/basic` (Use only with narrowband models.)
   * * `audio/flac`
   * * `audio/l16` (Specify the sampling rate (`rate`) and optionally the number of channels (`channels`) and endianness
   * (`endianness`) of the audio.)
   * * `audio/mp3`
   * * `audio/mpeg`
   * * `audio/mulaw` (Specify the sampling rate (`rate`) of the audio.)
   * * `audio/ogg` (The service automatically detects the codec of the input audio.)
   * * `audio/ogg;codecs=opus`
   * * `audio/ogg;codecs=vorbis`
   * * `audio/wav` (Provide audio with a maximum of nine channels.)
   * * `audio/webm` (The service automatically detects the codec of the input audio.)
   * * `audio/webm;codecs=opus`
   * * `audio/webm;codecs=vorbis`
   *
   * For information about the supported audio formats, including specifying the sampling rate, channels, and endianness
   * for the indicated formats, see [Audio
   * formats](https://console.bluemix.net/docs/services/speech-to-text/audio-formats.html).
   *
   * @param createJobOptions the {@link IBMSpeechToTextV1Models.CreateJobOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RecognitionJob} with the response
   */
  public IBMSpeechToTextV1Models.RecognitionJob createJob(IBMSpeechToTextV1Models.CreateJobOptions createJobOptions) {
    IBMWatsonValidator.notNull(createJobOptions, 'createJobOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/recognitions');
    builder.addHeader('Content-Type', createJobOptions.contentType());
    Map<String, String> requestHeaders = (createJobOptions != null) ? createJobOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (createJobOptions.model() != null) {
      builder.query('model', createJobOptions.model());
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
    if (createJobOptions.customizationId() != null) {
      builder.query('customization_id', createJobOptions.customizationId());
    }
    if (createJobOptions.acousticCustomizationId() != null) {
      builder.query('acoustic_customization_id', createJobOptions.acousticCustomizationId());
    }
    if (createJobOptions.baseModelVersion() != null) {
      builder.query('base_model_version', createJobOptions.baseModelVersion());
    }
    if (createJobOptions.customizationWeight() != null) {
      builder.query('customization_weight', String.valueOf(createJobOptions.customizationWeight()));
    }
    if (createJobOptions.inactivityTimeout() != null) {
      builder.query('inactivity_timeout', String.valueOf(createJobOptions.inactivityTimeout()));
    }
    if (createJobOptions.keywords() != null) {
      builder.query('keywords', String.join(createJobOptions.keywords(), ','));
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
    builder.body(IBMWatsonRequestBody.create(createJobOptions.audio(), IBMWatsonMediaType.parse(createJobOptions.contentType())));

    return (IBMSpeechToTextV1Models.RecognitionJob) createServiceCall(builder.build(), IBMSpeechToTextV1Models.RecognitionJob.class);
  }

  /**
   * Delete a job.
   *
   * Deletes the specified job. You cannot delete a job that the service is actively processing. Once you delete a job,
   * its results are no longer available. The service automatically deletes a job and its results when the time to live
   * for the results expires. You must submit the request with the service credentials of the user who created the job.
   *
   * @param deleteJobOptions the {@link IBMSpeechToTextV1Models.DeleteJobOptions} containing the options for the call
   * @return the service call
   */
  public void deleteJob(IBMSpeechToTextV1Models.DeleteJobOptions deleteJobOptions) {
    IBMWatsonValidator.notNull(deleteJobOptions, 'deleteJobOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/recognitions/{0}', new String[]{ deleteJobOptions.id() }));
    Map<String, String> requestHeaders = (deleteJobOptions != null) ? deleteJobOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Register a callback.
   *
   * Registers a callback URL with the service for use with subsequent asynchronous recognition requests. The service
   * attempts to register, or white-list, the callback URL if it is not already registered by sending a `GET` request to
   * the callback URL. The service passes a random alphanumeric challenge string via the `challenge_string` parameter of
   * the request. The request includes an `Accept` header that specifies `text/plain` as the required response type.
   *
   * To be registered successfully, the callback URL must respond to the `GET` request from the service. The response
   * must send status code 200 and must include the challenge string in its body. Set the `Content-Type` response header
   * to `text/plain`. Upon receiving this response, the service responds to the original registration request with
   * response code 201.
   *
   * The service sends only a single `GET` request to the callback URL. If the service does not receive a reply with a
   * response code of 200 and a body that echoes the challenge string sent by the service within five seconds, it does
   * not white-list the URL; it instead sends status code 400 in response to the **Register a callback** request. If the
   * requested callback URL is already white-listed, the service responds to the initial registration request with
   * response code 200.
   *
   * If you specify a user secret with the request, the service uses it as a key to calculate an HMAC-SHA1 signature of
   * the challenge string in its response to the `POST` request. It sends this signature in the `X-Callback-Signature`
   * header of its `GET` request to the URL during registration. It also uses the secret to calculate a signature over
   * the payload of every callback notification that uses the URL. The signature provides authentication and data
   * integrity for HTTP communications.
   *
   * After you successfully register a callback URL, you can use it with an indefinite number of recognition requests.
   * You can register a maximum of 20 callback URLS in a one-hour span of time. For more information, see [Registering a
   * callback URL](https://console.bluemix.net/docs/services/speech-to-text/async.html#register).
   *
   * @param registerCallbackOptions the {@link IBMSpeechToTextV1Models.RegisterCallbackOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.RegisterStatus} with the response
   */
  public IBMSpeechToTextV1Models.RegisterStatus registerCallback(IBMSpeechToTextV1Models.RegisterCallbackOptions registerCallbackOptions) {
    IBMWatsonValidator.notNull(registerCallbackOptions, 'registerCallbackOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/register_callback');
    Map<String, String> requestHeaders = (registerCallbackOptions != null) ? registerCallbackOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
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
   * Unregister a callback.
   *
   * Unregisters a callback URL that was previously white-listed with a **Register a callback** request for use with the
   * asynchronous interface. Once unregistered, the URL can no longer be used with asynchronous recognition requests.
   *
   * @param unregisterCallbackOptions the {@link IBMSpeechToTextV1Models.UnregisterCallbackOptions} containing the options for the call
   * @return the service call
   */
  public void unregisterCallback(IBMSpeechToTextV1Models.UnregisterCallbackOptions unregisterCallbackOptions) {
    IBMWatsonValidator.notNull(unregisterCallbackOptions, 'unregisterCallbackOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/unregister_callback');
    Map<String, String> requestHeaders = (unregisterCallbackOptions != null) ? unregisterCallbackOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (unregisterCallbackOptions.callbackUrl() != null) {
      builder.query('callback_url', unregisterCallbackOptions.callbackUrl());
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Create a custom language model.
   *
   * Creates a new custom language model for a specified base model. The custom language model can be used only with the
   * base model for which it is created. The model is owned by the instance of the service whose credentials are used to
   * create it.
   *
   * @param createLanguageModelOptions the {@link IBMSpeechToTextV1Models.CreateLanguageModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.LanguageModel} with the response
   */
  public IBMSpeechToTextV1Models.LanguageModel createLanguageModel(IBMSpeechToTextV1Models.CreateLanguageModelOptions createLanguageModelOptions) {
    IBMWatsonValidator.notNull(createLanguageModelOptions, 'createLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/customizations');
    Map<String, String> requestHeaders = (createLanguageModelOptions != null) ? createLanguageModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('name', createLanguageModelOptions.name());
    contentJson.put('base_model_name', createLanguageModelOptions.baseModelName());
    if (createLanguageModelOptions.dialect() != null) {
      contentJson.put('dialect', createLanguageModelOptions.dialect());
    }
    if (createLanguageModelOptions.description() != null) {
      contentJson.put('description', createLanguageModelOptions.description());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMSpeechToTextV1Models.LanguageModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.LanguageModel.class);
  }

  /**
   * Delete a custom language model.
   *
   * Deletes an existing custom language model. The custom model cannot be deleted if another request, such as adding a
   * corpus to the model, is currently being processed. You must use credentials for the instance of the service that
   * owns a model to delete it.
   *
   * @param deleteLanguageModelOptions the {@link IBMSpeechToTextV1Models.DeleteLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteLanguageModel(IBMSpeechToTextV1Models.DeleteLanguageModelOptions deleteLanguageModelOptions) {
    IBMWatsonValidator.notNull(deleteLanguageModelOptions, 'deleteLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ deleteLanguageModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (deleteLanguageModelOptions != null) ? deleteLanguageModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Get a custom language model.
   *
   * Gets information about a specified custom language model. You must use credentials for the instance of the service
   * that owns a model to list information about it.
   *
   * @param getLanguageModelOptions the {@link IBMSpeechToTextV1Models.GetLanguageModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.LanguageModel} with the response
   */
  public IBMSpeechToTextV1Models.LanguageModel getLanguageModel(IBMSpeechToTextV1Models.GetLanguageModelOptions getLanguageModelOptions) {
    IBMWatsonValidator.notNull(getLanguageModelOptions, 'getLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ getLanguageModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (getLanguageModelOptions != null) ? getLanguageModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.LanguageModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.LanguageModel.class);
  }

  /**
   * List custom language models.
   *
   * Lists information about all custom language models that are owned by an instance of the service. Use the `language`
   * parameter to see all custom language models for the specified language. Omit the parameter to see all custom
   * language models for all languages. You must use credentials for the instance of the service that owns a model to
   * list information about it.
   *
   * @param listLanguageModelsOptions the {@link IBMSpeechToTextV1Models.ListLanguageModelsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.LanguageModels} with the response
   */
  public IBMSpeechToTextV1Models.LanguageModels listLanguageModels(IBMSpeechToTextV1Models.ListLanguageModelsOptions listLanguageModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/customizations');
    Map<String, String> requestHeaders = (listLanguageModelsOptions != null) ? listLanguageModelsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (listLanguageModelsOptions != null && listLanguageModelsOptions.language() != null) {
      builder.query('language', listLanguageModelsOptions.language());
    }

    return (IBMSpeechToTextV1Models.LanguageModels) createServiceCall(builder.build(), IBMSpeechToTextV1Models.LanguageModels.class);
  }

  /**
   * Reset a custom language model.
   *
   * Resets a custom language model by removing all corpora and words from the model. Resetting a custom language model
   * initializes the model to its state when it was first created. Metadata such as the name and language of the model
   * are preserved, but the model's words resource is removed and must be re-created. You must use credentials for the
   * instance of the service that owns a model to reset it.
   *
   * @param resetLanguageModelOptions the {@link IBMSpeechToTextV1Models.ResetLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void resetLanguageModel(IBMSpeechToTextV1Models.ResetLanguageModelOptions resetLanguageModelOptions) {
    IBMWatsonValidator.notNull(resetLanguageModelOptions, 'resetLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/reset', new String[]{ resetLanguageModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (resetLanguageModelOptions != null) ? resetLanguageModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Train a custom language model.
   *
   * Initiates the training of a custom language model with new corpora, custom words, or both. After adding, modifying,
   * or deleting corpora or words for a custom language model, use this method to begin the actual training of the model
   * on the latest data. You can specify whether the custom language model is to be trained with all words from its
   * words resource or only with words that were added or modified by the user. You must use credentials for the
   * instance of the service that owns a model to train it.
   *
   * The training method is asynchronous. It can take on the order of minutes to complete depending on the amount of
   * data on which the service is being trained and the current load on the service. The method returns an HTTP 200
   * response code to indicate that the training process has begun.
   *
   * You can monitor the status of the training by using the **Get a custom language model** method to poll the model's
   * status. Use a loop to check the status every 10 seconds. The method returns a `LanguageModel` object that includes
   * `status` and `progress` fields. A status of `available` means that the custom model is trained and ready to use.
   * The service cannot accept subsequent training requests, or requests to add new corpora or words, until the existing
   * request completes.
   *
   * Training can fail to start for the following reasons:
   * * The service is currently handling another request for the custom model, such as another training request or a
   * request to add a corpus or words to the model.
   * * No training data (corpora or words) have been added to the custom model.
   * * One or more words that were added to the custom model have invalid sounds-like pronunciations that you must fix.
   *
   * @param trainLanguageModelOptions the {@link IBMSpeechToTextV1Models.TrainLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void trainLanguageModel(IBMSpeechToTextV1Models.TrainLanguageModelOptions trainLanguageModelOptions) {
    IBMWatsonValidator.notNull(trainLanguageModelOptions, 'trainLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/train', new String[]{ trainLanguageModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (trainLanguageModelOptions != null) ? trainLanguageModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
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
   * Upgrade a custom language model.
   *
   * Initiates the upgrade of a custom language model to the latest version of its base language model. The upgrade
   * method is asynchronous. It can take on the order of minutes to complete depending on the amount of data in the
   * custom model and the current load on the service. A custom model must be in the `ready` or `available` state to be
   * upgraded. You must use credentials for the instance of the service that owns a model to upgrade it.
   *
   * The method returns an HTTP 200 response code to indicate that the upgrade process has begun successfully. You can
   * monitor the status of the upgrade by using the **Get a custom language model** method to poll the model's status.
   * The method returns a `LanguageModel` object that includes `status` and `progress` fields. Use a loop to check the
   * status every 10 seconds. While it is being upgraded, the custom model has the status `upgrading`. When the upgrade
   * is complete, the model resumes the status that it had prior to upgrade. The service cannot accept subsequent
   * requests for the model until the upgrade completes.
   *
   * For more information, see [Upgrading custom
   * models](https://console.bluemix.net/docs/services/speech-to-text/custom-upgrade.html).
   *
   * @param upgradeLanguageModelOptions the {@link IBMSpeechToTextV1Models.UpgradeLanguageModelOptions} containing the options for the call
   * @return the service call
   */
  public void upgradeLanguageModel(IBMSpeechToTextV1Models.UpgradeLanguageModelOptions upgradeLanguageModelOptions) {
    IBMWatsonValidator.notNull(upgradeLanguageModelOptions, 'upgradeLanguageModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/upgrade_model', new String[]{ upgradeLanguageModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (upgradeLanguageModelOptions != null) ? upgradeLanguageModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Add a corpus.
   *
   * Adds a single corpus text file of new training data to a custom language model. Use multiple requests to submit
   * multiple corpus text files. You must use credentials for the instance of the service that owns a model to add a
   * corpus to it. Adding a corpus does not affect the custom language model until you train the model for the new data
   * by using the **Train a custom language model** method.
   *
   * Submit a plain text file that contains sample sentences from the domain of interest to enable the service to
   * extract words in context. The more sentences you add that represent the context in which speakers use words from
   * the domain, the better the service's recognition accuracy. For guidelines about adding a corpus text file and for
   * information about how the service parses a corpus file, see [Preparing a corpus text
   * file](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#prepareCorpus).
   *
   * The call returns an HTTP 201 response code if the corpus is valid. The service then asynchronously processes the
   * contents of the corpus and automatically extracts new words that it finds. This can take on the order of a minute
   * or two to complete depending on the total number of words and the number of new words in the corpus, as well as the
   * current load on the service. You cannot submit requests to add additional corpora or words to the custom model, or
   * to train the model, until the service's analysis of the corpus for the current request completes. Use the **List a
   * corpus** method to check the status of the analysis.
   *
   * The service auto-populates the model's words resource with any word that is not found in its base vocabulary; these
   * are referred to as out-of-vocabulary (OOV) words. You can use the **List custom words** method to examine the words
   * resource, using other words method to eliminate typos and modify how words are pronounced as needed.
   *
   * To add a corpus file that has the same name as an existing corpus, set the `allow_overwrite` parameter to `true`;
   * otherwise, the request fails. Overwriting an existing corpus causes the service to process the corpus text file and
   * extract OOV words anew. Before doing so, it removes any OOV words associated with the existing corpus from the
   * model's words resource unless they were also added by another corpus or they have been modified in some way with
   * the **Add custom words** or **Add a custom word** method.
   *
   * The service limits the overall amount of data that you can add to a custom model to a maximum of 10 million total
   * words from all corpora combined. Also, you can add no more than 30 thousand custom (OOV) words to a model; this
   * includes words that the service extracts from corpora and words that you add directly.
   *
   * @param addCorpusOptions the {@link IBMSpeechToTextV1Models.AddCorpusOptions} containing the options for the call
   * @return the service call
   */
  public void addCorpus(IBMSpeechToTextV1Models.AddCorpusOptions addCorpusOptions) {
    IBMWatsonValidator.notNull(addCorpusOptions, 'addCorpusOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/corpora/{1}', new String[]{ addCorpusOptions.customizationId(), addCorpusOptions.corpusName() }));
    Map<String, String> requestHeaders = (addCorpusOptions != null) ? addCorpusOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (addCorpusOptions.allowOverwrite() != null) {
      builder.query('allow_overwrite', String.valueOf(addCorpusOptions.allowOverwrite()));
    }
    IBMWatsonMultipartBody.Builder multipartBuilder = new IBMWatsonMultipartBody.Builder();
    multipartBuilder.setType(IBMWatsonMultipartBody.FORM);
    IBMWatsonRequestBody fileBody = IBMWatsonRequestBody.create(addCorpusOptions.corpusFile(), 'text/plain');
    multipartBuilder.addFormDataPart('corpus_file', addCorpusOptions.corpusFilename(), fileBody);
    IBMWatsonMultipartBody multipartBody = multipartBuilder.build();
    builder.body(multipartBody).addHeaders(multipartBody.getAllHeaders());

    createServiceCall(builder.build(), null);
  }

  /**
   * Delete a corpus.
   *
   * Deletes an existing corpus from a custom language model. The service removes any out-of-vocabulary (OOV) words
   * associated with the corpus from the custom model's words resource unless they were also added by another corpus or
   * they have been modified in some way with the **Add custom words** or **Add a custom word** method. Removing a
   * corpus does not affect the custom model until you train the model with the **Train a custom language model**
   * method. You must use credentials for the instance of the service that owns a model to delete its corpora.
   *
   * @param deleteCorpusOptions the {@link IBMSpeechToTextV1Models.DeleteCorpusOptions} containing the options for the call
   * @return the service call
   */
  public void deleteCorpus(IBMSpeechToTextV1Models.DeleteCorpusOptions deleteCorpusOptions) {
    IBMWatsonValidator.notNull(deleteCorpusOptions, 'deleteCorpusOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}/corpora/{1}', new String[]{ deleteCorpusOptions.customizationId(), deleteCorpusOptions.corpusName() }));
    Map<String, String> requestHeaders = (deleteCorpusOptions != null) ? deleteCorpusOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Get a corpus.
   *
   * Gets information about a corpus from a custom language model. The information includes the total number of words
   * and out-of-vocabulary (OOV) words, name, and status of the corpus. You must use credentials for the instance of the
   * service that owns a model to list its corpora.
   *
   * @param getCorpusOptions the {@link IBMSpeechToTextV1Models.GetCorpusOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Corpus} with the response
   */
  public IBMSpeechToTextV1Models.Corpus getCorpus(IBMSpeechToTextV1Models.GetCorpusOptions getCorpusOptions) {
    IBMWatsonValidator.notNull(getCorpusOptions, 'getCorpusOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/corpora/{1}', new String[]{ getCorpusOptions.customizationId(), getCorpusOptions.corpusName() }));
    Map<String, String> requestHeaders = (getCorpusOptions != null) ? getCorpusOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.Corpus) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Corpus.class);
  }

  /**
   * List corpora.
   *
   * Lists information about all corpora from a custom language model. The information includes the total number of
   * words and out-of-vocabulary (OOV) words, name, and status of each corpus. You must use credentials for the instance
   * of the service that owns a model to list its corpora.
   *
   * @param listCorporaOptions the {@link IBMSpeechToTextV1Models.ListCorporaOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Corpora} with the response
   */
  public IBMSpeechToTextV1Models.Corpora listCorpora(IBMSpeechToTextV1Models.ListCorporaOptions listCorporaOptions) {
    IBMWatsonValidator.notNull(listCorporaOptions, 'listCorporaOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/corpora', new String[]{ listCorporaOptions.customizationId() }));
    Map<String, String> requestHeaders = (listCorporaOptions != null) ? listCorporaOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.Corpora) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Corpora.class);
  }

  /**
   * Add a custom word.
   *
   * Adds a custom word to a custom language model. The service populates the words resource for a custom model with
   * out-of-vocabulary (OOV) words found in each corpus added to the model. You can use this method to add a word or to
   * modify an existing word in the words resource. The words resource for a model can contain a maximum of 30 thousand
   * custom (OOV) words, including words that the service extracts from corpora and words that you add directly.
   *
   * You must use credentials for the instance of the service that owns a model to add or modify a custom word for the
   * model. Adding or modifying a custom word does not affect the custom model until you train the model for the new
   * data by using the **Train a custom language model** method.
   *
   * Use the `word_name` parameter to specify the custom word that is to be added or modified. Use the `CustomWord`
   * object to provide one or both of the optional `sounds_like` and `display_as` fields for the word.
   * * The `sounds_like` field provides an array of one or more pronunciations for the word. Use the parameter to
   * specify how the word can be pronounced by users. Use the parameter for words that are difficult to pronounce,
   * foreign words, acronyms, and so on. For example, you might specify that the word `IEEE` can sound like `i triple
   * e`. You can specify a maximum of five sounds-like pronunciations for a word. For information about pronunciation
   * rules, see [Using the sounds_like
   * field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#soundsLike).
   * * The `display_as` field provides a different way of spelling the word in a transcript. Use the parameter when you
   * want the word to appear different from its usual representation or from its spelling in corpora training data. For
   * example, you might indicate that the word `IBM(trademark)` is to be displayed as `IBM&trade;`. For more
   * information, see [Using the display_as
   * field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#displayAs).
   *
   *
   * If you add a custom word that already exists in the words resource for the custom model, the new definition
   * overwrites the existing data for the word. If the service encounters an error, it does not add the word to the
   * words resource. Use the **List a custom word** method to review the word that you add.
   *
   * @param addWordOptions the {@link IBMSpeechToTextV1Models.AddWordOptions} containing the options for the call
   * @return the service call
   */
  public void addWord(IBMSpeechToTextV1Models.AddWordOptions addWordOptions) {
    IBMWatsonValidator.notNull(addWordOptions, 'addWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ addWordOptions.customizationId(), addWordOptions.wordName() }));
    Map<String, String> requestHeaders = (addWordOptions != null) ? addWordOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (addWordOptions.word() != null) {
      contentJson.put('word', addWordOptions.word());
    }
    if (addWordOptions.soundsLike() != null) {
      contentJson.put('sounds_like', addWordOptions.soundsLike());
    }
    if (addWordOptions.displayAs() != null) {
      contentJson.put('display_as', addWordOptions.displayAs());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    createServiceCall(builder.build(), null);
  }

  /**
   * Add custom words.
   *
   * Adds one or more custom words to a custom language model. The service populates the words resource for a custom
   * model with out-of-vocabulary (OOV) words found in each corpus added to the model. You can use this method to add
   * additional words or to modify existing words in the words resource. The words resource for a model can contain a
   * maximum of 30 thousand custom (OOV) words, including words that the service extracts from corpora and words that
   * you add directly.
   *
   * You must use credentials for the instance of the service that owns a model to add or modify custom words for the
   * model. Adding or modifying custom words does not affect the custom model until you train the model for the new data
   * by using the **Train a custom language model** method.
   *
   * You add custom words by providing a `CustomWords` object, which is an array of `CustomWord` objects, one per word.
   * You must use the object's `word` parameter to identify the word that is to be added. You can also provide one or
   * both of the optional `sounds_like` and `display_as` fields for each word.
   * * The `sounds_like` field provides an array of one or more pronunciations for the word. Use the parameter to
   * specify how the word can be pronounced by users. Use the parameter for words that are difficult to pronounce,
   * foreign words, acronyms, and so on. For example, you might specify that the word `IEEE` can sound like `i triple
   * e`. You can specify a maximum of five sounds-like pronunciations for a word. For information about pronunciation
   * rules, see [Using the sounds_like
   * field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#soundsLike).
   * * The `display_as` field provides a different way of spelling the word in a transcript. Use the parameter when you
   * want the word to appear different from its usual representation or from its spelling in corpora training data. For
   * example, you might indicate that the word `IBM(trademark)` is to be displayed as `IBM&trade;`. For more
   * information, see [Using the display_as
   * field](https://console.bluemix.net/docs/services/speech-to-text/language-resource.html#displayAs).
   *
   *
   * If you add a custom word that already exists in the words resource for the custom model, the new definition
   * overwrites the existing data for the word. If the service encounters an error with the input data, it returns a
   * failure code and does not add any of the words to the words resource.
   *
   * The call returns an HTTP 201 response code if the input data is valid. It then asynchronously processes the words
   * to add them to the model's words resource. The time that it takes for the analysis to complete depends on the
   * number of new words that you add but is generally faster than adding a corpus or training a model.
   *
   * You can monitor the status of the request by using the **List a custom language model** method to poll the model's
   * status. Use a loop to check the status every 10 seconds. The method returns a `Customization` object that includes
   * a `status` field. A status of `ready` means that the words have been added to the custom model. The service cannot
   * accept requests to add new corpora or words or to train the model until the existing request completes.
   *
   * You can use the **List custom words** or **List a custom word** method to review the words that you add. Words with
   * an invalid `sounds_like` field include an `error` field that describes the problem. You can use other words-related
   * methods to correct errors, eliminate typos, and modify how words are pronounced as needed.
   *
   * @param addWordsOptions the {@link IBMSpeechToTextV1Models.AddWordsOptions} containing the options for the call
   * @return the service call
   */
  public void addWords(IBMSpeechToTextV1Models.AddWordsOptions addWordsOptions) {
    IBMWatsonValidator.notNull(addWordsOptions, 'addWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ addWordsOptions.customizationId() }));
    Map<String, String> requestHeaders = (addWordsOptions != null) ? addWordsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('words', addWordsOptions.words());
    builder.bodyJson(JSON.serialize(contentJson, true));

    createServiceCall(builder.build(), null);
  }

  /**
   * Delete a custom word.
   *
   * Deletes a custom word from a custom language model. You can remove any word that you added to the custom model's
   * words resource via any means. However, if the word also exists in the service's base vocabulary, the service
   * removes only the custom pronunciation for the word; the word remains in the base vocabulary. Removing a custom word
   * does not affect the custom model until you train the model with the **Train a custom language model** method. You
   * must use credentials for the instance of the service that owns a model to delete its words.
   *
   * @param deleteWordOptions the {@link IBMSpeechToTextV1Models.DeleteWordOptions} containing the options for the call
   * @return the service call
   */
  public void deleteWord(IBMSpeechToTextV1Models.DeleteWordOptions deleteWordOptions) {
    IBMWatsonValidator.notNull(deleteWordOptions, 'deleteWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ deleteWordOptions.customizationId(), deleteWordOptions.wordName() }));
    Map<String, String> requestHeaders = (deleteWordOptions != null) ? deleteWordOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Get a custom word.
   *
   * Gets information about a custom word from a custom language model. You must use credentials for the instance of the
   * service that owns a model to query information about its words.
   *
   * @param getWordOptions the {@link IBMSpeechToTextV1Models.GetWordOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Word} with the response
   */
  public IBMSpeechToTextV1Models.Word getWord(IBMSpeechToTextV1Models.GetWordOptions getWordOptions) {
    IBMWatsonValidator.notNull(getWordOptions, 'getWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ getWordOptions.customizationId(), getWordOptions.wordName() }));
    Map<String, String> requestHeaders = (getWordOptions != null) ? getWordOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.Word) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Word.class);
  }

  /**
   * List custom words.
   *
   * Lists information about custom words from a custom language model. You can list all words from the custom model's
   * words resource, only custom words that were added or modified by the user, or only out-of-vocabulary (OOV) words
   * that were extracted from corpora. You can also indicate the order in which the service is to return words; by
   * default, words are listed in ascending alphabetical order. You must use credentials for the instance of the service
   * that owns a model to query information about its words.
   *
   * @param listWordsOptions the {@link IBMSpeechToTextV1Models.ListWordsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.Words} with the response
   */
  public IBMSpeechToTextV1Models.Words listWords(IBMSpeechToTextV1Models.ListWordsOptions listWordsOptions) {
    IBMWatsonValidator.notNull(listWordsOptions, 'listWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ listWordsOptions.customizationId() }));
    Map<String, String> requestHeaders = (listWordsOptions != null) ? listWordsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (listWordsOptions.wordType() != null) {
      builder.query('word_type', listWordsOptions.wordType());
    }
    if (listWordsOptions.sortField() != null) {
      builder.query('sort', listWordsOptions.sortField());
    }

    return (IBMSpeechToTextV1Models.Words) createServiceCall(builder.build(), IBMSpeechToTextV1Models.Words.class);
  }

  /**
   * Create a custom acoustic model.
   *
   * Creates a new custom acoustic model for a specified base model. The custom acoustic model can be used only with the
   * base model for which it is created. The model is owned by the instance of the service whose credentials are used to
   * create it.
   *
   * @param createAcousticModelOptions the {@link IBMSpeechToTextV1Models.CreateAcousticModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AcousticModel} with the response
   */
  public IBMSpeechToTextV1Models.AcousticModel createAcousticModel(IBMSpeechToTextV1Models.CreateAcousticModelOptions createAcousticModelOptions) {
    IBMWatsonValidator.notNull(createAcousticModelOptions, 'createAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/acoustic_customizations');
    Map<String, String> requestHeaders = (createAcousticModelOptions != null) ? createAcousticModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('name', createAcousticModelOptions.name());
    contentJson.put('base_model_name', createAcousticModelOptions.baseModelName());
    if (createAcousticModelOptions.description() != null) {
      contentJson.put('description', createAcousticModelOptions.description());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMSpeechToTextV1Models.AcousticModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AcousticModel.class);
  }

  /**
   * Delete a custom acoustic model.
   *
   * Deletes an existing custom acoustic model. The custom model cannot be deleted if another request, such as adding an
   * audio resource to the model, is currently being processed. You must use credentials for the instance of the service
   * that owns a model to delete it.
   *
   * @param deleteAcousticModelOptions the {@link IBMSpeechToTextV1Models.DeleteAcousticModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteAcousticModel(IBMSpeechToTextV1Models.DeleteAcousticModelOptions deleteAcousticModelOptions) {
    IBMWatsonValidator.notNull(deleteAcousticModelOptions, 'deleteAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/acoustic_customizations/{0}', new String[]{ deleteAcousticModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (deleteAcousticModelOptions != null) ? deleteAcousticModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Get a custom acoustic model.
   *
   * Gets information about a specified custom acoustic model. You must use credentials for the instance of the service
   * that owns a model to list information about it.
   *
   * @param getAcousticModelOptions the {@link IBMSpeechToTextV1Models.GetAcousticModelOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AcousticModel} with the response
   */
  public IBMSpeechToTextV1Models.AcousticModel getAcousticModel(IBMSpeechToTextV1Models.GetAcousticModelOptions getAcousticModelOptions) {
    IBMWatsonValidator.notNull(getAcousticModelOptions, 'getAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/acoustic_customizations/{0}', new String[]{ getAcousticModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (getAcousticModelOptions != null) ? getAcousticModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.AcousticModel) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AcousticModel.class);
  }

  /**
   * List custom acoustic models.
   *
   * Lists information about all custom acoustic models that are owned by an instance of the service. Use the `language`
   * parameter to see all custom acoustic models for the specified language. Omit the parameter to see all custom
   * acoustic models for all languages. You must use credentials for the instance of the service that owns a model to
   * list information about it.
   *
   * @param listAcousticModelsOptions the {@link IBMSpeechToTextV1Models.ListAcousticModelsOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AcousticModels} with the response
   */
  public IBMSpeechToTextV1Models.AcousticModels listAcousticModels(IBMSpeechToTextV1Models.ListAcousticModelsOptions listAcousticModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/acoustic_customizations');
    Map<String, String> requestHeaders = (listAcousticModelsOptions != null) ? listAcousticModelsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (listAcousticModelsOptions != null && listAcousticModelsOptions.language() != null) {
      builder.query('language', listAcousticModelsOptions.language());
    }

    return (IBMSpeechToTextV1Models.AcousticModels) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AcousticModels.class);
  }

  /**
   * Reset a custom acoustic model.
   *
   * Resets a custom acoustic model by removing all audio resources from the model. Resetting a custom acoustic model
   * initializes the model to its state when it was first created. Metadata such as the name and language of the model
   * are preserved, but the model's audio resources are removed and must be re-created. You must use credentials for the
   * instance of the service that owns a model to reset it.
   *
   * @param resetAcousticModelOptions the {@link IBMSpeechToTextV1Models.ResetAcousticModelOptions} containing the options for the call
   * @return the service call
   */
  public void resetAcousticModel(IBMSpeechToTextV1Models.ResetAcousticModelOptions resetAcousticModelOptions) {
    IBMWatsonValidator.notNull(resetAcousticModelOptions, 'resetAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/reset', new String[]{ resetAcousticModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (resetAcousticModelOptions != null) ? resetAcousticModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Train a custom acoustic model.
   *
   * Initiates the training of a custom acoustic model with new or changed audio resources. After adding or deleting
   * audio resources for a custom acoustic model, use this method to begin the actual training of the model on the
   * latest audio data. The custom acoustic model does not reflect its changed data until you train it. You must use
   * credentials for the instance of the service that owns a model to train it.
   *
   * The training method is asynchronous. It can take on the order of minutes or hours to complete depending on the
   * total amount of audio data on which the custom acoustic model is being trained and the current load on the service.
   * Typically, training a custom acoustic model takes approximately two to four times the length of its audio data. The
   * range of time depends on the model being trained and the nature of the audio, such as whether the audio is clean or
   * noisy. The method returns an HTTP 200 response code to indicate that the training process has begun.
   *
   * You can monitor the status of the training by using the **Get a custom acoustic model** method to poll the model's
   * status. Use a loop to check the status once a minute. The method returns an `AcousticModel` object that includes
   * `status` and `progress` fields. A status of `available` indicates that the custom model is trained and ready to
   * use. The service cannot accept subsequent training requests, or requests to add new audio resources, until the
   * existing request completes.
   *
   * You can use the optional `custom_language_model_id` parameter to specify the GUID of a separately created custom
   * language model that is to be used during training. Specify a custom language model if you have verbatim
   * transcriptions of the audio files that you have added to the custom model or you have either corpora (text files)
   * or a list of words that are relevant to the contents of the audio files. For information about creating a separate
   * custom language model, see [Creating a custom language
   * model](https://console.bluemix.net/docs/services/speech-to-text/language-create.html).
   *
   * Training can fail to start for the following reasons:
   * * The service is currently handling another request for the custom model, such as another training request or a
   * request to add audio resources to the model.
   * * The custom model contains less than 10 minutes or more than 50 hours of audio data.
   * * One or more of the custom model's audio resources is invalid.
   *
   * @param trainAcousticModelOptions the {@link IBMSpeechToTextV1Models.TrainAcousticModelOptions} containing the options for the call
   * @return the service call
   */
  public void trainAcousticModel(IBMSpeechToTextV1Models.TrainAcousticModelOptions trainAcousticModelOptions) {
    IBMWatsonValidator.notNull(trainAcousticModelOptions, 'trainAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/train', new String[]{ trainAcousticModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (trainAcousticModelOptions != null) ? trainAcousticModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (trainAcousticModelOptions.customLanguageModelId() != null) {
      builder.query('custom_language_model_id', trainAcousticModelOptions.customLanguageModelId());
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Upgrade a custom acoustic model.
   *
   * Initiates the upgrade of a custom acoustic model to the latest version of its base language model. The upgrade
   * method is asynchronous. It can take on the order of minutes or hours to complete depending on the amount of data in
   * the custom model and the current load on the service; typically, upgrade takes approximately twice the length of
   * the total audio contained in the custom model. A custom model must be in the `ready` or `available` state to be
   * upgraded. You must use credentials for the instance of the service that owns a model to upgrade it.
   *
   * The method returns an HTTP 200 response code to indicate that the upgrade process has begun successfully. You can
   * monitor the status of the upgrade by using the **Get a custom acoustic model** method to poll the model's status.
   * The method returns an `AcousticModel` object that includes `status` and `progress` fields. Use a loop to check the
   * status once a minute. While it is being upgraded, the custom model has the status `upgrading`. When the upgrade is
   * complete, the model resumes the status that it had prior to upgrade. The service cannot accept subsequent requests
   * for the model until the upgrade completes.
   *
   * If the custom acoustic model was trained with a separately created custom language model, you must use the
   * `custom_language_model_id` parameter to specify the GUID of that custom language model. The custom language model
   * must be upgraded before the custom acoustic model can be upgraded. Omit the parameter if the custom acoustic model
   * was not trained with a custom language model.
   *
   * For more information, see [Upgrading custom
   * models](https://console.bluemix.net/docs/services/speech-to-text/custom-upgrade.html).
   *
   * @param upgradeAcousticModelOptions the {@link IBMSpeechToTextV1Models.UpgradeAcousticModelOptions} containing the options for the call
   * @return the service call
   */
  public void upgradeAcousticModel(IBMSpeechToTextV1Models.UpgradeAcousticModelOptions upgradeAcousticModelOptions) {
    IBMWatsonValidator.notNull(upgradeAcousticModelOptions, 'upgradeAcousticModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/upgrade_model', new String[]{ upgradeAcousticModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (upgradeAcousticModelOptions != null) ? upgradeAcousticModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (upgradeAcousticModelOptions.customLanguageModelId() != null) {
      builder.query('custom_language_model_id', upgradeAcousticModelOptions.customLanguageModelId());
    }
    builder.bodyJson('{}');

    createServiceCall(builder.build(), null);
  }

  /**
   * Add an audio resource.
   *
   * Adds an audio resource to a custom acoustic model. Add audio content that reflects the acoustic characteristics of
   * the audio that you plan to transcribe. You must use credentials for the instance of the service that owns a model
   * to add an audio resource to it. Adding audio data does not affect the custom acoustic model until you train the
   * model for the new data by using the **Train a custom acoustic model** method.
   *
   * You can add individual audio files or an archive file that contains multiple audio files. Adding multiple audio
   * files via a single archive file is significantly more efficient than adding each file individually. You can add
   * audio resources in any format that the service supports for speech recognition.
   *
   * You can use this method to add any number of audio resources to a custom model by calling the method once for each
   * audio or archive file. But the addition of one audio resource must be fully complete before you can add another.
   * You must add a minimum of 10 minutes and a maximum of 50 hours of audio that includes speech, not just silence, to
   * a custom acoustic model before you can train it. No audio resource, audio- or archive-type, can be larger than 100
   * MB. To add an audio resource that has the same name as an existing audio resource, set the `allow_overwrite`
   * parameter to `true`; otherwise, the request fails.
   *
   * The method is asynchronous. It can take several seconds to complete depending on the duration of the audio and, in
   * the case of an archive file, the total number of audio files being processed. The service returns a 201 response
   * code if the audio is valid. It then asynchronously analyzes the contents of the audio file or files and
   * automatically extracts information about the audio such as its length, sampling rate, and encoding. You cannot
   * submit requests to add additional audio resources to a custom acoustic model, or to train the model, until the
   * service's analysis of all audio files for the current request completes.
   *
   * To determine the status of the service's analysis of the audio, use the **Get an audio resource** method to poll
   * the status of the audio. The method accepts the customization ID of the custom model and the name of the audio
   * resource, and it returns the status of the resource. Use a loop to check the status of the audio every few seconds
   * until it becomes `ok`.
   *
   * ### Content types for audio-type resources
   *
   *  You can add an individual audio file in any format that the service supports for speech recognition. For an
   * audio-type resource, use the `Content-Type` parameter to specify the audio format (MIME type) of the audio file:
   * * `audio/basic` (Use only with narrowband models.)
   * * `audio/flac`
   * * `audio/l16` (Specify the sampling rate (`rate`) and optionally the number of channels (`channels`) and endianness
   * (`endianness`) of the audio.)
   * * `audio/mp3`
   * * `audio/mpeg`
   * * `audio/mulaw` (Specify the sampling rate (`rate`) of the audio.)
   * * `audio/ogg` (The service automatically detects the codec of the input audio.)
   * * `audio/ogg;codecs=opus`
   * * `audio/ogg;codecs=vorbis`
   * * `audio/wav` (Provide audio with a maximum of nine channels.)
   * * `audio/webm` (The service automatically detects the codec of the input audio.)
   * * `audio/webm;codecs=opus`
   * * `audio/webm;codecs=vorbis`
   *
   * For information about the supported audio formats, including specifying the sampling rate, channels, and endianness
   * for the indicated formats, see [Audio
   * formats](https://console.bluemix.net/docs/services/speech-to-text/audio-formats.html).
   *
   * **Note:** The sampling rate of an audio file must match the sampling rate of the base model for the custom model:
   * for broadband models, at least 16 kHz; for narrowband models, at least 8 kHz. If the sampling rate of the audio is
   * higher than the minimum required rate, the service down-samples the audio to the appropriate rate. If the sampling
   * rate of the audio is lower than the minimum required rate, the service labels the audio file as `invalid`.
   *
   * ### Content types for archive-type resources
   *
   *  You can add an archive file (**.zip** or **.tar.gz** file) that contains audio files in any format that the
   * service supports for speech recognition. For an archive-type resource, use the `Content-Type` parameter to specify
   * the media type of the archive file:
   * * `application/zip` for a **.zip** file
   * * `application/gzip` for a **.tar.gz** file.
   *
   * All audio files contained in the archive must have the same audio format. Use the `Contained-Content-Type`
   * parameter to specify the format of the contained audio files. The parameter accepts all of the audio formats
   * supported for use with speech recognition and with the `Content-Type` header, including the `rate`, `channels`, and
   * `endianness` parameters that are used with some formats. The default contained audio format is `audio/wav`.
   *
   * ### Naming restrictions for embedded audio files
   *
   *  The name of an audio file that is embedded within an archive-type resource must meet the following restrictions:
   * * Include a maximum of 128 characters in the file name; this includes the file extension.
   * * Do not include spaces, slashes, or backslashes in the file name.
   * * Do not use the name of an audio file that has already been added to the custom model as part of an archive-type
   * resource.
   *
   * @param addAudioOptions the {@link IBMSpeechToTextV1Models.AddAudioOptions} containing the options for the call
   * @return the service call
   */
  public void addAudio(IBMSpeechToTextV1Models.AddAudioOptions addAudioOptions) {
    IBMWatsonValidator.notNull(addAudioOptions, 'addAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio/{1}', new String[]{ addAudioOptions.customizationId(), addAudioOptions.audioName() }));
    builder.addHeader('Content-Type', addAudioOptions.contentType());
    if (addAudioOptions.containedContentType() != null) {
      builder.addHeader('Contained-Content-Type', addAudioOptions.containedContentType());
    }
    Map<String, String> requestHeaders = (addAudioOptions != null) ? addAudioOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (addAudioOptions.allowOverwrite() != null) {
      builder.query('allow_overwrite', String.valueOf(addAudioOptions.allowOverwrite()));
    }
    builder.body(IBMWatsonRequestBody.create(addAudioOptions.audioResource(), IBMWatsonMediaType.parse(addAudioOptions.contentType())));

    createServiceCall(builder.build(), null);
  }

  /**
   * Delete an audio resource.
   *
   * Deletes an existing audio resource from a custom acoustic model. Deleting an archive-type audio resource removes
   * the entire archive of files; the current interface does not allow deletion of individual files from an archive
   * resource. Removing an audio resource does not affect the custom model until you train the model on its updated data
   * by using the **Train a custom acoustic model** method. You must use credentials for the instance of the service
   * that owns a model to delete its audio resources.
   *
   * @param deleteAudioOptions the {@link IBMSpeechToTextV1Models.DeleteAudioOptions} containing the options for the call
   * @return the service call
   */
  public void deleteAudio(IBMSpeechToTextV1Models.DeleteAudioOptions deleteAudioOptions) {
    IBMWatsonValidator.notNull(deleteAudioOptions, 'deleteAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio/{1}', new String[]{ deleteAudioOptions.customizationId(), deleteAudioOptions.audioName() }));
    Map<String, String> requestHeaders = (deleteAudioOptions != null) ? deleteAudioOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Get an audio resource.
   *
   * Gets information about an audio resource from a custom acoustic model. The method returns an `AudioListing` object
   * whose fields depend on the type of audio resource that you specify with the method's `audio_name` parameter:
   * * **For an audio-type resource,** the object's fields match those of an `AudioResource` object: `duration`, `name`,
   * `details`, and `status`.
   * * **For an archive-type resource,** the object includes a `container` field whose fields match those of an
   * `AudioResource` object. It also includes an `audio` field, which contains an array of `AudioResource` objects that
   * provides information about the audio files that are contained in the archive.
   *
   * The information includes the status of the specified audio resource. The status is important for checking the
   * service's analysis of a resource that you add to the custom model.
   * * For an audio-type resource, the `status` field is located in the `AudioListing` object.
   * * For an archive-type resource, the `status` field is located in the `AudioResource` object that is returned in the
   * `container` field.
   *
   * You must use credentials for the instance of the service that owns a model to list its audio resources.
   *
   * @param getAudioOptions the {@link IBMSpeechToTextV1Models.GetAudioOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AudioListing} with the response
   */
  public IBMSpeechToTextV1Models.AudioListing getAudio(IBMSpeechToTextV1Models.GetAudioOptions getAudioOptions) {
    IBMWatsonValidator.notNull(getAudioOptions, 'getAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio/{1}', new String[]{ getAudioOptions.customizationId(), getAudioOptions.audioName() }));
    Map<String, String> requestHeaders = (getAudioOptions != null) ? getAudioOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.AudioListing) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AudioListing.class);
  }

  /**
   * List audio resources.
   *
   * Lists information about all audio resources from a custom acoustic model. The information includes the name of the
   * resource and information about its audio data, such as its duration. It also includes the status of the audio
   * resource, which is important for checking the service's analysis of the resource in response to a request to add it
   * to the custom acoustic model. You must use credentials for the instance of the service that owns a model to list
   * its audio resources.
   *
   * @param listAudioOptions the {@link IBMSpeechToTextV1Models.ListAudioOptions} containing the options for the call
   * @return the {@link IBMSpeechToTextV1Models.AudioResources} with the response
   */
  public IBMSpeechToTextV1Models.AudioResources listAudio(IBMSpeechToTextV1Models.ListAudioOptions listAudioOptions) {
    IBMWatsonValidator.notNull(listAudioOptions, 'listAudioOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/acoustic_customizations/{0}/audio', new String[]{ listAudioOptions.customizationId() }));
    Map<String, String> requestHeaders = (listAudioOptions != null) ? listAudioOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMSpeechToTextV1Models.AudioResources) createServiceCall(builder.build(), IBMSpeechToTextV1Models.AudioResources.class);
  }

  /**
   * Delete labeled data.
   *
   * Deletes all data that is associated with a specified customer ID. The method deletes all data for the customer ID,
   * regardless of the method by which the information was added. The method has no effect if no data is associated with
   * the customer ID. You must issue the request with credentials for the same instance of the service that was used to
   * associate the customer ID with the data.
   *
   * You associate a customer ID with data by passing the `X-Watson-Metadata` header with a request that passes the
   * data. For more information about customer IDs and about using this method, see [Information
   * security](https://console.bluemix.net/docs/services/speech-to-text/information-security.html).
   *
   * @param deleteUserDataOptions the {@link IBMSpeechToTextV1Models.DeleteUserDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteUserData(IBMSpeechToTextV1Models.DeleteUserDataOptions deleteUserDataOptions) {
    IBMWatsonValidator.notNull(deleteUserDataOptions, 'deleteUserDataOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + '/v1/user_data');
    Map<String, String> requestHeaders = (deleteUserDataOptions != null) ? deleteUserDataOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (deleteUserDataOptions.customerId() != null) {
      builder.query('customer_id', deleteUserDataOptions.customerId());
    }

    createServiceCall(builder.build(), null);
  }

}
