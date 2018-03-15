/**
 * ### Service Overview
 * The IBM Text to Speech service provides a Representational State Transfer (REST) Application Programming Interface
 * (API) that uses IBM's speech-synthesis capabilities to synthesize text into natural-sounding speech in a variety of
 * languages, dialects, and voices. The service currently synthesizes text from US English, UK English, French, German,
 * Italian, Japanese, Spanish, or Brazilian Portuguese into audio spoken in a male or female voice (the service supports
 * only a single gender for some languages). The audio is streamed back to the client with minimal delay.
 * ### API Overview
 * The Text to Speech service consists of the following related endpoints:
 * * `/v1/voices` provides information about the voices available for synthesized speech.
 * * `/v1/synthesize` synthesizes written text to audio speech.
 * * `/v1/pronunciation` returns the pronunciation for a specified word. The `/v1/pronunciation` method is currently
 * beta functionality.
 * * `/v1/customizations` and `/v1/customizations/{customization_id}` lets users create custom voice models, which are
 * dictionaries of words and their translations for use in speech synthesis. All `/v1/customizations` methods are
 * currently beta functionality.
 * * `/v1/customizations/{customization_id}/words` and `/v1/customizations/{customization_id}/words/{word}` lets users
 * manage the words in a custom voice model.
 *
 *
 * **Note about the Try It Out feature:** The `Try it out!` button lets you experiment with the methods of the API by
 * making actual cURL calls to the service. The feature is **not** supported for use with the `POST /v1/synthesize`
 * method. For examples of calls to this method, see the [Text to Speech API
 * reference](http://www.ibm.com/watson/developercloud/text-to-speech/api/v1/).
 * ### API Usage
 * The following information provides details about using the service to synthesize audio:
 * * **Audio formats:** The service supports a number of audio formats (MIME types). For more information about audio
 * formats and sampling rates, including links to a number of Internet sites that provide technical and usage details
 * about the different formats, see [Specifying an audio
 * format](https://console.bluemix.net/docs/services/text-to-speech/http.html#format).
 * * **SSML:** Many methods refer to the Speech Synthesis Markup Language (SSML), an XML-based markup language that
 * provides annotations of text for speech-synthesis applications; for example, many methods accept or produce
 * translations that use an SSML-based phoneme format. See [Using
 * SSML](https://console.bluemix.net/docs/services/text-to-speech/SSML.html) and [Using IBM
 * SPR](https://console.bluemix.net/docs/services/text-to-speech/SPRs.html).
 * * **Word translations:** Many customization methods accept or return sounds-like or phonetic translations for words.
 * A phonetic translation is based on the SSML format for representing the phonetic string of a word. Phonetic
 * translations can use standard International Phonetic Alphabet (IPA) representation:
 *
 *  &lt;phoneme alphabet="ipa" ph="t&#601;m&#712;&#593;to"&gt;&lt;/phoneme&gt;
 *
 *  or the proprietary IBM Symbolic Phonetic Representation (SPR):
 *
 *  &lt;phoneme alphabet="ibm" ph="1gAstroEntxrYFXs"&gt;&lt;/phoneme&gt;
 *
 *  For more information about customization and about sounds-like and phonetic translations, see [Understanding
 * customization](https://console.bluemix.net/docs/services/text-to-speech/custom-intro.html).
 * * **GUIDs:** The pronunciation and customization methods accept or return a Globally Unique Identifier (GUID). For
 * example, customization IDs (specified with the `customization_id` parameter) and service credentials are GUIDs. GUIDs
 * are hexadecimal strings that have the format `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`.
 * * **WebSocket interface:** The service also offers a WebSocket interface as an alternative to its HTTP REST interface
 * for speech synthesis. The WebSocket interface supports both plain text and SSML input, including the SSML
 * &lt;mark&gt; element and word timings. See [The WebSocket
 * interface](https://console.bluemix.net/docs/services/text-to-speech/websockets.html).
 * * **Authentication:** You authenticate to the service by using your service credentials. You can use your credentials
 * to authenticate via a proxy server that resides in IBM Cloud, or you can use your credentials to obtain a token and
 * contact the service directly. See [Service credentials for Watson
 * services](https://console.bluemix.net/docs/services/watson/getting-started-credentials.html) and [Tokens for
 * authentication](https://console.bluemix.net/docs/services/watson/getting-started-tokens.html).
 * * **Custom voice model ownership:** In all cases, you must use service credentials created for the instance of the
 * service that owns a custom voice model to use the methods described in this documentation with that model. For more
 * information, see [Ownership of custom voice
 * models](https://console.bluemix.net/docs/services/text-to-speech/custom-models.html#customOwner).
 * * **Request Logging:** By default, all Watson services log requests and their results. Data is collected only to
 * improve the Watson services. If you do not want to share your data, set the header parameter
 * `X-Watson-Learning-Opt-Out` to `true` for each request. Data is collected for any request that omits this header. See
 * [Controlling request logging for Watson
 * services](https://console.bluemix.net/docs/services/watson/getting-started-logging.html).
 *
 *  The service does not log data (words and translations) that are used to build custom language models; your training
 * data is never used to improve the service's base models. The service does log data when a custom model is used with a
 * synthesize request; you must set the `X-Watson-Learning-Opt-Out` request header to prevent logging for recognition
 * requests. For more information, see [Request logging and data
 * privacy](https://console.bluemix.net/docs/services/text-to-speech/custom-models.html#customLogging).
 *
 * For more information about the service and its various interfaces, see [About Text to
 * Speech](https://console.bluemix.net/docs/services/text-to-speech/index.html).
 *
 * @version V1
 * @see <a href="http://www.ibm.com/watson/developercloud/text-to-speech.html">Text to Speech</a>
 */
public class IBMTextToSpeechV1 extends IBMWatsonService {

  private static final String URL = 'https://stream.watsonplatform.net/text-to-speech/api';

  /**
   * Instantiates a new `IBMTextToSpeechV1`.
   *
   */
  public IBMTextToSpeechV1() {
    super('watson_text_to_speech_v1');
  }

  /**
   * Instantiates a new `IBMTextToSpeechV1` with username and password.
   *
   * @param username the username
   * @param password the password
   */
  public IBMTextToSpeechV1(String username, String password) {
    this();
    setUsernameAndPassword(username, password);
  }

  /**
   * Retrieves a specific voice available for speech synthesis.
   *
   * Lists information about the voice specified with the `voice` path parameter. Specify the `customization_id` query parameter to obtain information for that custom voice model of the specified voice. Use the `GET /v1/voices` method to see a list of all available voices.
   *
   * @param getVoiceOptions the {@link IBMTextToSpeechV1Models.GetVoiceOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Voice} with the response
   */
  public IBMTextToSpeechV1Models.Voice getVoice(IBMTextToSpeechV1Models.GetVoiceOptions getVoiceOptions) {
    IBMWatsonValidator.notNull(getVoiceOptions, 'getVoiceOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/voices/{0}', new String[]{ getVoiceOptions.voice() }));
    if (getVoiceOptions.customizationId() != null) {
      builder.query('customization_id', getVoiceOptions.customizationId());
    }

    return (IBMTextToSpeechV1Models.Voice) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Voice.class);
  }

  /**
   * Retrieves all voices available for speech synthesis.
   *
   * Lists information about all available voices. To see information about a specific voice, use the `GET /v1/voices/{voice}` method.
   *
   * @param listVoicesOptions the {@link IBMTextToSpeechV1Models.ListVoicesOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Voices} with the response
   */
  public IBMTextToSpeechV1Models.Voices listVoices(IBMTextToSpeechV1Models.ListVoicesOptions listVoicesOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/voices');

    return (IBMTextToSpeechV1Models.Voices) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Voices.class);
  }

  /**
   * Streaming speech synthesis of the text in the body parameter.
   *
   * Synthesizes text to spoken audio, returning the synthesized audio stream as an array of bytes. Identical to the `GET` method but passes longer text in the body of the request, not with the URL. Text size is limited to 5 KB. (For the `audio/l16` format, you can optionally specify `endianness=big-endian` or `endianness=little-endian`; the default is little endian.)   If a request includes invalid query parameters, the service returns a `Warnings` response header that provides messages about the invalid parameters. The warning includes a descriptive message and a list of invalid argument strings. For example, a message such as `\"Unknown arguments:\"` or `\"Unknown url query arguments:\"` followed by a list of the form `\"invalid_arg_1, invalid_arg_2.\"` The request succeeds despite the warnings.   **Note about the Try It Out feature:** The `Try it out!` button is **not** supported for use with the the `POST /v1/synthesize` method. For examples of calls to the method, see the [Text to Speech API reference](http://www.ibm.com/watson/developercloud/text-to-speech/api/v1/).
   *
   * @param synthesizeOptions the {@link IBMTextToSpeechV1Models.SynthesizeOptions} containing the options for the call
   * @return the {@link IBMWatsonFile} with the response
   */
  public IBMWatsonFile synthesize(IBMTextToSpeechV1Models.SynthesizeOptions synthesizeOptions) {
    IBMWatsonValidator.notNull(synthesizeOptions, 'synthesizeOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/synthesize');
    if (synthesizeOptions.accept() != null) {
      builder.addHeader('Accept', synthesizeOptions.accept());
    }
    if (synthesizeOptions.voice() != null) {
      builder.query('voice', synthesizeOptions.voice());
    }
    if (synthesizeOptions.customizationId() != null) {
      builder.query('customization_id', synthesizeOptions.customizationId());
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('text', synthesizeOptions.text());
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMWatsonFile) createServiceCall(builder.build(), IBMWatsonFile.class);
  }

  /**
   * Gets the pronunciation for a word.
   *
   * Returns the phonetic pronunciation for the word specified by the `text` parameter. You can request the pronunciation for a specific format. You can also request the pronunciation for a specific voice to see the default translation for the language of that voice or for a specific custom voice model to see the translation for that voice model.   **Note:** This method is currently a beta release.
   *
   * @param getPronunciationOptions the {@link IBMTextToSpeechV1Models.GetPronunciationOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Pronunciation} with the response
   */
  public IBMTextToSpeechV1Models.Pronunciation getPronunciation(IBMTextToSpeechV1Models.GetPronunciationOptions getPronunciationOptions) {
    IBMWatsonValidator.notNull(getPronunciationOptions, 'getPronunciationOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/pronunciation');
    if (getPronunciationOptions.text() != null) {
      builder.query('text', getPronunciationOptions.text());
    }
    if (getPronunciationOptions.voice() != null) {
      builder.query('voice', getPronunciationOptions.voice());
    }
    if (getPronunciationOptions.format() != null) {
      builder.query('format', getPronunciationOptions.format());
    }
    if (getPronunciationOptions.customizationId() != null) {
      builder.query('customization_id', getPronunciationOptions.customizationId());
    }

    return (IBMTextToSpeechV1Models.Pronunciation) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Pronunciation.class);
  }

  /**
   * Creates a new custom voice model.
   *
   * Creates a new empty custom voice model. The model is owned by the instance of the service whose credentials are used to create it.   **Note:** This method is currently a beta release.
   *
   * @param createVoiceModelOptions the {@link IBMTextToSpeechV1Models.CreateVoiceModelOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.VoiceModel} with the response
   */
  public IBMTextToSpeechV1Models.VoiceModel createVoiceModel(IBMTextToSpeechV1Models.CreateVoiceModelOptions createVoiceModelOptions) {
    IBMWatsonValidator.notNull(createVoiceModelOptions, 'createVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/customizations');
    final Map<String, Object> contentJson = new Map<String, Object>();
    contentJson.put('name', createVoiceModelOptions.name());
    if (createVoiceModelOptions.language() != null) {
      contentJson.put('language', createVoiceModelOptions.language());
    }
    if (createVoiceModelOptions.description() != null) {
      contentJson.put('description', createVoiceModelOptions.description());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    return (IBMTextToSpeechV1Models.VoiceModel) createServiceCall(builder.build(), IBMTextToSpeechV1Models.VoiceModel.class);
  }

  /**
   * Deletes a custom voice model.
   *
   * Deletes the custom voice model with the specified `customization_id`. You must use credentials for the instance of the service that owns a model to delete it.   **Note:** This method is currently a beta release.
   *
   * @param deleteVoiceModelOptions the {@link IBMTextToSpeechV1Models.DeleteVoiceModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteVoiceModel(IBMTextToSpeechV1Models.DeleteVoiceModelOptions deleteVoiceModelOptions) {
    IBMWatsonValidator.notNull(deleteVoiceModelOptions, 'deleteVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ deleteVoiceModelOptions.customizationId() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Queries the contents of a custom voice model.
   *
   * Lists all information about the custom voice model with the specified `customization_id`. In addition to metadata such as the name and description of the voice model, the output includes the words in the model and their translations as defined in the model. To see just the metadata for a voice model, use the `GET /v1/customizations` method. You must use credentials for the instance of the service that owns a model to list information about it.   **Note:** This method is currently a beta release.
   *
   * @param getVoiceModelOptions the {@link IBMTextToSpeechV1Models.GetVoiceModelOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.VoiceModel} with the response
   */
  public IBMTextToSpeechV1Models.VoiceModel getVoiceModel(IBMTextToSpeechV1Models.GetVoiceModelOptions getVoiceModelOptions) {
    IBMWatsonValidator.notNull(getVoiceModelOptions, 'getVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ getVoiceModelOptions.customizationId() }));

    return (IBMTextToSpeechV1Models.VoiceModel) createServiceCall(builder.build(), IBMTextToSpeechV1Models.VoiceModel.class);
  }

  /**
   * Lists all available custom voice models for a language or for all languages.
   *
   * Lists metadata such as the name and description for the custom voice models that you own. Use the `language` query parameter to list the voice models that you own for the specified language only. Omit the parameter to see all voice models that you own for all languages. To see the words in addition to the metadata for a specific voice model, use the `GET /v1/customizations/{customization_id}` method. You must use credentials for the instance of the service that owns a model to list information about it.   **Note:** This method is currently a beta release.
   *
   * @param listVoiceModelsOptions the {@link IBMTextToSpeechV1Models.ListVoiceModelsOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.VoiceModels} with the response
   */
  public IBMTextToSpeechV1Models.VoiceModels listVoiceModels(IBMTextToSpeechV1Models.ListVoiceModelsOptions listVoiceModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/customizations');
    if (listVoiceModelsOptions != null && listVoiceModelsOptions.language() != null) {
      builder.query('language', listVoiceModelsOptions.language());
    }

    return (IBMTextToSpeechV1Models.VoiceModels) createServiceCall(builder.build(), IBMTextToSpeechV1Models.VoiceModels.class);
  }

  /**
   * Updates information and words for a custom voice model.
   *
   * Updates information for the custom voice model with the specified `customization_id`. You can update the metadata such as the name and description of the voice model. You can also update the words in the model and their translations. Adding a new translation for a word that already exists in a custom model overwrites the word's existing translation. A custom model can contain no more than 20,000 entries. You must use credentials for the instance of the service that owns a model to update it.   **Note:** This method is currently a beta release.
   *
   * @param updateVoiceModelOptions the {@link IBMTextToSpeechV1Models.UpdateVoiceModelOptions} containing the options for the call
   * @return the service call
   */
  public void updateVoiceModel(IBMTextToSpeechV1Models.UpdateVoiceModelOptions updateVoiceModelOptions) {
    IBMWatsonValidator.notNull(updateVoiceModelOptions, 'updateVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ updateVoiceModelOptions.customizationId() }));
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (updateVoiceModelOptions.name() != null) {
      contentJson.put('name', updateVoiceModelOptions.name());
    }
    if (updateVoiceModelOptions.description() != null) {
      contentJson.put('description', updateVoiceModelOptions.description());
    }
    if (updateVoiceModelOptions.words() != null) {
      contentJson.put('words', updateVoiceModelOptions.words());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    createServiceCall(builder.build(), null);
  }

  /**
   * Adds a word to a custom voice model.
   *
   * Adds a single word and its translation to the custom voice model with the specified `customization_id`. Adding a new translation for a word that already exists in a custom model overwrites the word's existing translation. A custom model can contain no more than 20,000 entries. You must use credentials for the instance of the service that owns a model to add a word to it.   **Note:** This method is currently a beta release.
   *
   * @param addWordOptions the {@link IBMTextToSpeechV1Models.AddWordOptions} containing the options for the call
   * @return the service call
   */
  public void addWord(IBMTextToSpeechV1Models.AddWordOptions addWordOptions) {
    IBMWatsonValidator.notNull(addWordOptions, 'addWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ addWordOptions.customizationId(), addWordOptions.word() }));
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (addWordOptions.translation() != null) {
      contentJson.put('translation', addWordOptions.translation());
    }
    if (addWordOptions.partOfSpeech() != null) {
      contentJson.put('part_of_speech', addWordOptions.partOfSpeech());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    createServiceCall(builder.build(), null);
  }

  /**
   * Adds one or more words to a custom voice model.
   *
   * Adds one or more words and their translations to the custom voice model with the specified `customization_id`. Adding a new translation for a word that already exists in a custom model overwrites the word's existing translation. A custom model can contain no more than 20,000 entries. You must use credentials for the instance of the service that owns a model to add words to it.   **Note:** This method is currently a beta release.
   *
   * @param addWordsOptions the {@link IBMTextToSpeechV1Models.AddWordsOptions} containing the options for the call
   * @return the service call
   */
  public void addWords(IBMTextToSpeechV1Models.AddWordsOptions addWordsOptions) {
    IBMWatsonValidator.notNull(addWordsOptions, 'addWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ addWordsOptions.customizationId() }));
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (addWordsOptions.words() != null) {
      contentJson.put('words', addWordsOptions.words());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    createServiceCall(builder.build(), null);
  }

  /**
   * Deletes a word from a custom voice model.
   *
   * Deletes a single word from the custom voice model with the specified `customization_id`. You must use credentials for the instance of the service that owns a model to delete it.   **Note:** This method is currently a beta release.
   *
   * @param deleteWordOptions the {@link IBMTextToSpeechV1Models.DeleteWordOptions} containing the options for the call
   * @return the service call
   */
  public void deleteWord(IBMTextToSpeechV1Models.DeleteWordOptions deleteWordOptions) {
    IBMWatsonValidator.notNull(deleteWordOptions, 'deleteWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ deleteWordOptions.customizationId(), deleteWordOptions.word() }));

    createServiceCall(builder.build(), null);
  }

  /**
   * Queries details about a word in a custom voice model.
   *
   * Returns the translation for a single word from the custom model with the specified `customization_id`. The output shows the translation as it is defined in the model. You must use credentials for the instance of the service that owns a model to query information about its words.   **Note:** This method is currently a beta release.
   *
   * @param getWordOptions the {@link IBMTextToSpeechV1Models.GetWordOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Translation} with the response
   */
  public IBMTextToSpeechV1Models.Translation getWord(IBMTextToSpeechV1Models.GetWordOptions getWordOptions) {
    IBMWatsonValidator.notNull(getWordOptions, 'getWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ getWordOptions.customizationId(), getWordOptions.word() }));

    return (IBMTextToSpeechV1Models.Translation) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Translation.class);
  }

  /**
   * Queries details about the words in a custom voice model.
   *
   * Lists all of the words and their translations for the custom voice model with the specified `customization_id`. The output shows the translations as they are defined in the model. You must use credentials for the instance of the service that owns a model to query information about its words.   **Note:** This method is currently a beta release.
   *
   * @param listWordsOptions the {@link IBMTextToSpeechV1Models.ListWordsOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Words} with the response
   */
  public IBMTextToSpeechV1Models.Words listWords(IBMTextToSpeechV1Models.ListWordsOptions listWordsOptions) {
    IBMWatsonValidator.notNull(listWordsOptions, 'listWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ listWordsOptions.customizationId() }));

    return (IBMTextToSpeechV1Models.Words) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Words.class);
  }

}
