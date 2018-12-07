/**
 * ### Service Overview
 * The IBM&reg; Text to Speech service provides APIs that use IBM's speech-synthesis capabilities to synthesize text
 * into natural-sounding speech in a variety of languages, dialects, and voices. The service supports at least one male
 * or female voice, sometimes both, for each language. The audio is streamed back to the client with minimal delay.
 *
 * For speech synthesis, the service supports a synchronous HTTP Representational State Transfer (REST) interface. It
 * also supports a WebSocket interface that provides both plain text and SSML input, including the SSML &lt;mark&gt;
 * element and word timings. SSML is an XML-based markup language that provides text annotation for speech-synthesis
 * applications.
 *
 * The service also offers a customization interface. You can use the interface to define sounds-like or phonetic
 * translations for words. A sounds-like translation consists of one or more words that, when combined, sound like the
 * word. A phonetic translation is based on the SSML phoneme format for representing a word. You can specify a phonetic
 * translation in standard International Phonetic Alphabet (IPA) representation or in the proprietary IBM Symbolic
 * Phonetic Representation (SPR).
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
   * Instantiates a new `IBMTextToSpeechV1` with IAM. Note that if the access token is specified in the
   * iamOptions, you accept responsibility for managing the access token yourself. You must set a new access token before this
   * one expires or after receiving a 401 error from the service. Failing to do so will result in authentication errors
   * after this token expires.
   *
   * @param iamOptions the options for authenticating through IAM
   */
  public IBMTextToSpeechV1(IBMWatsonIAMOptions iamOptions) {
    this();
    setIamCredentials(iamOptions);
  }

  /**
   * Get a voice.
   *
   * Gets information about the specified voice. The information includes the name, language, gender, and other details
   * about the voice. Specify a customization ID to obtain information for that custom voice model of the specified
   * voice. To list information about all available voices, use the **List voices** method.
   *
   * **See also:** [Specifying a voice](/docs/services/text-to-speech/http.html#voices).
   *
   * @param getVoiceOptions the {@link IBMTextToSpeechV1Models.GetVoiceOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Voice} with the response
   */
  public IBMTextToSpeechV1Models.Voice getVoice(IBMTextToSpeechV1Models.GetVoiceOptions getVoiceOptions) {
    IBMWatsonValidator.notNull(getVoiceOptions, 'getVoiceOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/voices/{0}', new String[]{ getVoiceOptions.voice() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getVoiceOptions != null) ? getVoiceOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (getVoiceOptions.customizationId() != null) {
      builder.query('customization_id', getVoiceOptions.customizationId());
    }

    return (IBMTextToSpeechV1Models.Voice) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Voice.class);
  }

  /**
   * List voices.
   *
   * Lists all voices available for use with the service. The information includes the name, language, gender, and other
   * details about the voice. To see information about a specific voice, use the **Get a voice** method.
   *
   * **See also:** [Specifying a voice](/docs/services/text-to-speech/http.html#voices).
   *
   * @param listVoicesOptions the {@link IBMTextToSpeechV1Models.ListVoicesOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Voices} with the response
   */
  public IBMTextToSpeechV1Models.Voices listVoices(IBMTextToSpeechV1Models.ListVoicesOptions listVoicesOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/voices');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listVoicesOptions != null) ? listVoicesOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMTextToSpeechV1Models.Voices) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Voices.class);
  }

  /**
   * Synthesize audio.
   *
   * Synthesizes text to audio that is spoken in the specified voice. The service bases its understanding of the
   * language for the input text on the specified voice. Use a voice that matches the language of the input text.
   *
   * The service returns the synthesized audio stream as an array of bytes. You can pass a maximum of 5 KB of text to
   * the service.
   *
   * **See also:** [Synthesizing text to audio](/docs/services/text-to-speech/http.html#synthesize).
   *
   * ### Audio formats (accept types)
   *
   *  The service can return audio in the following formats (MIME types).
   * * Where indicated, you can optionally specify the sampling rate (`rate`) of the audio. You must specify a sampling
   * rate for the `audio/l16` and `audio/mulaw` formats. A specified sampling rate must lie in the range of 8 kHz to 192
   * kHz.
   * * For the `audio/l16` format, you can optionally specify the endianness (`endianness`) of the audio:
   * `endianness=big-endian` or `endianness=little-endian`.
   *
   * Use the `Accept` header or the `accept` parameter to specify the requested format of the response audio. If you
   * omit an audio format altogether, the service returns the audio in Ogg format with the Opus codec
   * (`audio/ogg;codecs=opus`). The service always returns single-channel audio.
   * * `audio/basic`
   *
   *   The service returns audio with a sampling rate of 8000 Hz.
   * * `audio/flac`
   *
   *   You can optionally specify the `rate` of the audio. The default sampling rate is 22,050 Hz.
   * * `audio/l16`
   *
   *   You must specify the `rate` of the audio. You can optionally specify the `endianness` of the audio. The default
   * endianness is `little-endian`.
   * * `audio/mp3`
   *
   *   You can optionally specify the `rate` of the audio. The default sampling rate is 22,050 Hz.
   * * `audio/mpeg`
   *
   *   You can optionally specify the `rate` of the audio. The default sampling rate is 22,050 Hz.
   * * `audio/mulaw`
   *
   *   You must specify the `rate` of the audio.
   * * `audio/ogg`
   *
   *   The service returns the audio in the `vorbis` codec. You can optionally specify the `rate` of the audio. The
   * default sampling rate is 22,050 Hz.
   * * `audio/ogg;codecs=opus`
   *
   *   You can optionally specify the `rate` of the audio. The default sampling rate is 22,050 Hz.
   * * `audio/ogg;codecs=vorbis`
   *
   *   You can optionally specify the `rate` of the audio. The default sampling rate is 22,050 Hz.
   * * `audio/wav`
   *
   *   You can optionally specify the `rate` of the audio. The default sampling rate is 22,050 Hz.
   * * `audio/webm`
   *
   *   The service returns the audio in the `opus` codec. The service returns audio with a sampling rate of 48,000 Hz.
   * * `audio/webm;codecs=opus`
   *
   *   The service returns audio with a sampling rate of 48,000 Hz.
   * * `audio/webm;codecs=vorbis`
   *
   *   You can optionally specify the `rate` of the audio. The default sampling rate is 22,050 Hz.
   *
   * For more information about specifying an audio format, including additional details about some of the formats, see
   * [Specifying an audio format](/docs/services/text-to-speech/http.html#format).
   *
   * ### Warning messages
   *
   *  If a request includes invalid query parameters, the service returns a `Warnings` response header that provides
   * messages about the invalid parameters. The warning includes a descriptive message and a list of invalid argument
   * strings. For example, a message such as `\"Unknown arguments:\"` or `\"Unknown url query arguments:\"` followed by
   * a list of the form `\"{invalid_arg_1}, {invalid_arg_2}.\"` The request succeeds despite the warnings.
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
    Map<String, String> requestHeaders = (synthesizeOptions != null) ? synthesizeOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
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
   * Get pronunciation.
   *
   * Gets the phonetic pronunciation for the specified word. You can request the pronunciation for a specific format.
   * You can also request the pronunciation for a specific voice to see the default translation for the language of that
   * voice or for a specific custom voice model to see the translation for that voice model.
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Querying a word from a
   * language](/docs/services/text-to-speech/custom-entries.html#cuWordsQueryLanguage).
   *
   * @param getPronunciationOptions the {@link IBMTextToSpeechV1Models.GetPronunciationOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Pronunciation} with the response
   */
  public IBMTextToSpeechV1Models.Pronunciation getPronunciation(IBMTextToSpeechV1Models.GetPronunciationOptions getPronunciationOptions) {
    IBMWatsonValidator.notNull(getPronunciationOptions, 'getPronunciationOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/pronunciation');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getPronunciationOptions != null) ? getPronunciationOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
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
   * Create a custom model.
   *
   * Creates a new empty custom voice model. You must specify a name for the new custom model. You can optionally
   * specify the language and a description for the new model. The model is owned by the instance of the service whose
   * credentials are used to create it.
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Creating a custom model](/docs/services/text-to-speech/custom-models.html#cuModelsCreate).
   *
   * @param createVoiceModelOptions the {@link IBMTextToSpeechV1Models.CreateVoiceModelOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.VoiceModel} with the response
   */
  public IBMTextToSpeechV1Models.VoiceModel createVoiceModel(IBMTextToSpeechV1Models.CreateVoiceModelOptions createVoiceModelOptions) {
    IBMWatsonValidator.notNull(createVoiceModelOptions, 'createVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + '/v1/customizations');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (createVoiceModelOptions != null) ? createVoiceModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
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
   * Delete a custom model.
   *
   * Deletes the specified custom voice model. You must use credentials for the instance of the service that owns a
   * model to delete it.
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Deleting a custom model](/docs/services/text-to-speech/custom-models.html#cuModelsDelete).
   *
   * @param deleteVoiceModelOptions the {@link IBMTextToSpeechV1Models.DeleteVoiceModelOptions} containing the options for the call
   * @return the service call
   */
  public void deleteVoiceModel(IBMTextToSpeechV1Models.DeleteVoiceModelOptions deleteVoiceModelOptions) {
    IBMWatsonValidator.notNull(deleteVoiceModelOptions, 'deleteVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ deleteVoiceModelOptions.customizationId() }));
    Map<String, String> requestHeaders = (deleteVoiceModelOptions != null) ? deleteVoiceModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    createServiceCall(builder.build(), null);
  }

  /**
   * Get a custom model.
   *
   * Gets all information about a specified custom voice model. In addition to metadata such as the name and description
   * of the voice model, the output includes the words and their translations as defined in the model. To see just the
   * metadata for a voice model, use the **List custom models** method.
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Querying a custom model](/docs/services/text-to-speech/custom-models.html#cuModelsQuery).
   *
   * @param getVoiceModelOptions the {@link IBMTextToSpeechV1Models.GetVoiceModelOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.VoiceModel} with the response
   */
  public IBMTextToSpeechV1Models.VoiceModel getVoiceModel(IBMTextToSpeechV1Models.GetVoiceModelOptions getVoiceModelOptions) {
    IBMWatsonValidator.notNull(getVoiceModelOptions, 'getVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ getVoiceModelOptions.customizationId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getVoiceModelOptions != null) ? getVoiceModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMTextToSpeechV1Models.VoiceModel) createServiceCall(builder.build(), IBMTextToSpeechV1Models.VoiceModel.class);
  }

  /**
   * List custom models.
   *
   * Lists metadata such as the name and description for all custom voice models that are owned by an instance of the
   * service. Specify a language to list the voice models for that language only. To see the words in addition to the
   * metadata for a specific voice model, use the **List a custom model** method. You must use credentials for the
   * instance of the service that owns a model to list information about it.
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Querying all custom models](/docs/services/text-to-speech/custom-models.html#cuModelsQueryAll).
   *
   * @param listVoiceModelsOptions the {@link IBMTextToSpeechV1Models.ListVoiceModelsOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.VoiceModels} with the response
   */
  public IBMTextToSpeechV1Models.VoiceModels listVoiceModels(IBMTextToSpeechV1Models.ListVoiceModelsOptions listVoiceModelsOptions) {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + '/v1/customizations');
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listVoiceModelsOptions != null) ? listVoiceModelsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    if (listVoiceModelsOptions != null && listVoiceModelsOptions.language() != null) {
      builder.query('language', listVoiceModelsOptions.language());
    }

    return (IBMTextToSpeechV1Models.VoiceModels) createServiceCall(builder.build(), IBMTextToSpeechV1Models.VoiceModels.class);
  }

  /**
   * Update a custom model.
   *
   * Updates information for the specified custom voice model. You can update metadata such as the name and description
   * of the voice model. You can also update the words in the model and their translations. Adding a new translation for
   * a word that already exists in a custom model overwrites the word's existing translation. A custom model can contain
   * no more than 20,000 entries. You must use credentials for the instance of the service that owns a model to update
   * it.
   *
   * You can define sounds-like or phonetic translations for words. A sounds-like translation consists of one or more
   * words that, when combined, sound like the word. Phonetic translations are based on the SSML phoneme format for
   * representing a word. You can specify them in standard International Phonetic Alphabet (IPA) representation
   *
   *   <code>&lt;phoneme alphabet=\"ipa\" ph=\"t&#601;m&#712;&#593;to\"&gt;&lt;/phoneme&gt;</code>
   *
   *   or in the proprietary IBM Symbolic Phonetic Representation (SPR)
   *
   *   <code>&lt;phoneme alphabet=\"ibm\" ph=\"1gAstroEntxrYFXs\"&gt;&lt;/phoneme&gt;</code>
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:**
   * * [Updating a custom model](/docs/services/text-to-speech/custom-models.html#cuModelsUpdate)
   * * [Adding words to a Japanese custom model](/docs/services/text-to-speech/custom-entries.html#cuJapaneseAdd)
   * * [Understanding customization](/docs/services/text-to-speech/custom-intro.html).
   *
   * @param updateVoiceModelOptions the {@link IBMTextToSpeechV1Models.UpdateVoiceModelOptions} containing the options for the call
   * @return the service call
   */
  public void updateVoiceModel(IBMTextToSpeechV1Models.UpdateVoiceModelOptions updateVoiceModelOptions) {
    IBMWatsonValidator.notNull(updateVoiceModelOptions, 'updateVoiceModelOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}', new String[]{ updateVoiceModelOptions.customizationId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (updateVoiceModelOptions != null) ? updateVoiceModelOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
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
   * Add a custom word.
   *
   * Adds a single word and its translation to the specified custom voice model. Adding a new translation for a word
   * that already exists in a custom model overwrites the word's existing translation. A custom model can contain no
   * more than 20,000 entries. You must use credentials for the instance of the service that owns a model to add a word
   * to it.
   *
   * You can define sounds-like or phonetic translations for words. A sounds-like translation consists of one or more
   * words that, when combined, sound like the word. Phonetic translations are based on the SSML phoneme format for
   * representing a word. You can specify them in standard International Phonetic Alphabet (IPA) representation
   *
   *   <code>&lt;phoneme alphabet=\"ipa\" ph=\"t&#601;m&#712;&#593;to\"&gt;&lt;/phoneme&gt;</code>
   *
   *   or in the proprietary IBM Symbolic Phonetic Representation (SPR)
   *
   *   <code>&lt;phoneme alphabet=\"ibm\" ph=\"1gAstroEntxrYFXs\"&gt;&lt;/phoneme&gt;</code>
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:**
   * * [Adding a single word to a custom model](/docs/services/text-to-speech/custom-entries.html#cuWordAdd)
   * * [Adding words to a Japanese custom model](/docs/services/text-to-speech/custom-entries.html#cuJapaneseAdd)
   * * [Understanding customization](/docs/services/text-to-speech/custom-intro.html).
   *
   * @param addWordOptions the {@link IBMTextToSpeechV1Models.AddWordOptions} containing the options for the call
   * @return the service call
   */
  public void addWord(IBMTextToSpeechV1Models.AddWordOptions addWordOptions) {
    IBMWatsonValidator.notNull(addWordOptions, 'addWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPut(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ addWordOptions.customizationId(), addWordOptions.word() }));
    Map<String, String> requestHeaders = (addWordOptions != null) ? addWordOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
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
   * Add custom words.
   *
   * Adds one or more words and their translations to the specified custom voice model. Adding a new translation for a
   * word that already exists in a custom model overwrites the word's existing translation. A custom model can contain
   * no more than 20,000 entries. You must use credentials for the instance of the service that owns a model to add
   * words to it.
   *
   * You can define sounds-like or phonetic translations for words. A sounds-like translation consists of one or more
   * words that, when combined, sound like the word. Phonetic translations are based on the SSML phoneme format for
   * representing a word. You can specify them in standard International Phonetic Alphabet (IPA) representation
   *
   *   <code>&lt;phoneme alphabet=\"ipa\" ph=\"t&#601;m&#712;&#593;to\"&gt;&lt;/phoneme&gt;</code>
   *
   *   or in the proprietary IBM Symbolic Phonetic Representation (SPR)
   *
   *   <code>&lt;phoneme alphabet=\"ibm\" ph=\"1gAstroEntxrYFXs\"&gt;&lt;/phoneme&gt;</code>
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:**
   * * [Adding multiple words to a custom model](/docs/services/text-to-speech/custom-entries.html#cuWordsAdd)
   * * [Adding words to a Japanese custom model](/docs/services/text-to-speech/custom-entries.html#cuJapaneseAdd)
   * * [Understanding customization](/docs/services/text-to-speech/custom-intro.html).
   *
   * @param addWordsOptions the {@link IBMTextToSpeechV1Models.AddWordsOptions} containing the options for the call
   * @return the service call
   */
  public void addWords(IBMTextToSpeechV1Models.AddWordsOptions addWordsOptions) {
    IBMWatsonValidator.notNull(addWordsOptions, 'addWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ addWordsOptions.customizationId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (addWordsOptions != null) ? addWordsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }
    final Map<String, Object> contentJson = new Map<String, Object>();
    if (addWordsOptions.words() != null) {
      contentJson.put('words', addWordsOptions.words());
    }
    builder.bodyJson(JSON.serialize(contentJson, true));

    createServiceCall(builder.build(), null);
  }

  /**
   * Delete a custom word.
   *
   * Deletes a single word from the specified custom voice model. You must use credentials for the instance of the
   * service that owns a model to delete its words.
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Deleting a word from a custom
   * model](/docs/services/text-to-speech/custom-entries.html#cuWordDelete).
   *
   * @param deleteWordOptions the {@link IBMTextToSpeechV1Models.DeleteWordOptions} containing the options for the call
   * @return the service call
   */
  public void deleteWord(IBMTextToSpeechV1Models.DeleteWordOptions deleteWordOptions) {
    IBMWatsonValidator.notNull(deleteWordOptions, 'deleteWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpDelete(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ deleteWordOptions.customizationId(), deleteWordOptions.word() }));
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
   * Gets the translation for a single word from the specified custom model. The output shows the translation as it is
   * defined in the model. You must use credentials for the instance of the service that owns a model to list its words.
   *
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Querying a single word from a custom
   * model](/docs/services/text-to-speech/custom-entries.html#cuWordQueryModel).
   *
   * @param getWordOptions the {@link IBMTextToSpeechV1Models.GetWordOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Translation} with the response
   */
  public IBMTextToSpeechV1Models.Translation getWord(IBMTextToSpeechV1Models.GetWordOptions getWordOptions) {
    IBMWatsonValidator.notNull(getWordOptions, 'getWordOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words/{1}', new String[]{ getWordOptions.customizationId(), getWordOptions.word() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (getWordOptions != null) ? getWordOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMTextToSpeechV1Models.Translation) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Translation.class);
  }

  /**
   * List custom words.
   *
   * Lists all of the words and their translations for the specified custom voice model. The output shows the
   * translations as they are defined in the model. You must use credentials for the instance of the service that owns a
   * model to list its words.
   *
   * **Note:** This method is currently a beta release.
   *
   * **See also:** [Querying all words from a custom
   * model](/docs/services/text-to-speech/custom-entries.html#cuWordsQueryModel).
   *
   * @param listWordsOptions the {@link IBMTextToSpeechV1Models.ListWordsOptions} containing the options for the call
   * @return the {@link IBMTextToSpeechV1Models.Words} with the response
   */
  public IBMTextToSpeechV1Models.Words listWords(IBMTextToSpeechV1Models.ListWordsOptions listWordsOptions) {
    IBMWatsonValidator.notNull(listWordsOptions, 'listWordsOptions cannot be null');
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpGet(getEndPoint() + String.format('/v1/customizations/{0}/words', new String[]{ listWordsOptions.customizationId() }));
    builder.addHeader('Accept', 'application/json');
    Map<String, String> requestHeaders = (listWordsOptions != null) ? listWordsOptions.requestHeaders() : null;
    if (requestHeaders != null && requestHeaders.size() > 0) {
      for (String name : requestHeaders.keySet()) {
        builder.addHeader(name, requestHeaders.get(name));
      }
    }

    return (IBMTextToSpeechV1Models.Words) createServiceCall(builder.build(), IBMTextToSpeechV1Models.Words.class);
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
   * data.
   *
   * **See also:** [Information security](/docs/services/text-to-speech/information-security.html).
   *
   * @param deleteUserDataOptions the {@link IBMTextToSpeechV1Models.DeleteUserDataOptions} containing the options for the call
   * @return the service call
   */
  public void deleteUserData(IBMTextToSpeechV1Models.DeleteUserDataOptions deleteUserDataOptions) {
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
