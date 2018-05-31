public class IBMTextToSpeechV1Models {
  /**
   * The addWord options.
   */
  public class AddWordOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String word_serialized_name;
    private String translation_serialized_name;
    private String part_of_speech_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_serialized_name.
     *
     * The word that is to be added or updated for the custom voice model.
     *
     * @return the word_serialized_name
     */
    public String word() {
      return word_serialized_name;
    }
    /**
     * Gets the translation_serialized_name.
     *
     * The phonetic or sounds-like translation for the word. A phonetic translation is based on the SSML format for representing the phonetic string of a word either as an IPA translation or as an IBM SPR translation. A sounds-like is one or more words that, when combined, sound like the word.
     *
     * @return the translation_serialized_name
     */
    public String translation() {
      return translation_serialized_name;
    }
    /**
     * Gets the part_of_speech_serialized_name.
     *
     * **Japanese only.** The part of speech for the word. The service uses the value to produce the correct intonation for the word. You can create only a single entry, with or without a single part of speech, for any word; you cannot create multiple entries with different parts of speech for the same word. For more information, see [Working with Japanese entries](https://console.bluemix.net/docs/services/text-to-speech/custom-rules.html#jaNotes).
     *
     * @return the part_of_speech_serialized_name
     */
    public String partOfSpeech() {
      return part_of_speech_serialized_name;
    }
    private AddWordOptions(AddWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.word_serialized_name, 'word_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_serialized_name = builder.word_serialized_name;
      translation_serialized_name = builder.translation_serialized_name;
      part_of_speech_serialized_name = builder.part_of_speech_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a AddWordOptions builder
     */
    public AddWordOptionsBuilder newBuilder() {
      return new AddWordOptionsBuilder(this);
    }

  }

  /**
   * AddWordOptions Builder.
   */
  public class AddWordOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String word_serialized_name;
    private String translation_serialized_name;
    private String part_of_speech_serialized_name;

    private AddWordOptionsBuilder(AddWordOptions addWordOptions) {
      customization_id_serialized_name = addWordOptions.customization_id_serialized_name;
      word_serialized_name = addWordOptions.word_serialized_name;
      translation_serialized_name = addWordOptions.translation_serialized_name;
      part_of_speech_serialized_name = addWordOptions.part_of_speech_serialized_name;
      this.requestHeaders.putAll(addWordOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public AddWordOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param word the word
     */
    public AddWordOptionsBuilder(String customizationId, String word) {
      this.customization_id_serialized_name = customizationId;
      this.word_serialized_name = word;
    }

    /**
     * Builds a AddWordOptions.
     *
     * @return the addWordOptions
     */
    public AddWordOptions build() {
      return new AddWordOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the word_serialized_name.
     *
     * @param word the word
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder word(String word) {
      this.word_serialized_name = word;
      return this;
    }

    /**
     * Set the translation_serialized_name.
     *
     * @param translation the translation
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder translation(String translation) {
      this.translation_serialized_name = translation;
      return this;
    }

    /**
     * Set the part_of_speech_serialized_name.
     *
     * @param partOfSpeech the partOfSpeech
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder partOfSpeech(String partOfSpeech) {
      this.part_of_speech_serialized_name = partOfSpeech;
      return this;
    }

    /**
     * Set the translation.
     *
     * @param translation the translation
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder translation(Translation translation) {
      this.translation_serialized_name = translation.getTranslation();
      this.part_of_speech_serialized_name = translation.getPartOfSpeech();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The addWords options.
   */
  public class AddWordsOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private List<Word> words_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the words_serialized_name.
     *
     * The **Add custom words** method accepts an array of `Word` objects. Each object provides a word that is to be added or updated for the custom voice model and the word's translation.   The **List custom words** method returns an array of `Word` objects. Each object shows a word and its translation from the custom voice model. The words are listed in alphabetical order, with uppercase letters listed before lowercase letters. The array is empty if the custom model contains no words.
     *
     * @return the words_serialized_name
     */
    public List<Word> words() {
      return words_serialized_name;
    }
    private AddWordsOptions(AddWordsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      words_serialized_name = builder.words_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a AddWordsOptions builder
     */
    public AddWordsOptionsBuilder newBuilder() {
      return new AddWordsOptionsBuilder(this);
    }

  }

  /**
   * AddWordsOptions Builder.
   */
  public class AddWordsOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private List<Word> words_serialized_name;

    private AddWordsOptionsBuilder(AddWordsOptions addWordsOptions) {
      customization_id_serialized_name = addWordsOptions.customization_id_serialized_name;
      words_serialized_name = addWordsOptions.words_serialized_name;
      this.requestHeaders.putAll(addWordsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public AddWordsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public AddWordsOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a AddWordsOptions.
     *
     * @return the addWordsOptions
     */
    public AddWordsOptions build() {
      return new AddWordsOptions(this);
    }

    /**
     * Adds an words to words_serialized_name.
     *
     * @param words the new words
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder addWords(Word words) {
      IBMWatsonValidator.notNull(words, 'words cannot be null');
      if (this.words_serialized_name == null) {
        this.words_serialized_name = new List<Word>();
      }
      this.words_serialized_name.add(words);
      return this;
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the words_serialized_name.
     * Existing words_serialized_name will be replaced.
     *
     * @param words the words
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder words(List<Word> words) {
      this.words_serialized_name = words;
      return this;
    }

    /**
     * Set the words.
     *
     * @param words the words
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder words(Words words) {
      this.words_serialized_name = words.getWords();
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createVoiceModel options.
   */
  public class CreateVoiceModelOptions extends IBMWatsonOptionsModel {
    private String name_serialized_name;
    private String language_serialized_name;
    private String description_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * The name of the new custom voice model.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the new custom voice model. Omit the parameter to use the the default language, `en-US`.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * A description of the new custom voice model. Specifying a description is recommended.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    private CreateVoiceModelOptions(CreateVoiceModelOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name_serialized_name, 'name_serialized_name cannot be null');
      name_serialized_name = builder.name_serialized_name;
      language_serialized_name = builder.language_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateVoiceModelOptions builder
     */
    public CreateVoiceModelOptionsBuilder newBuilder() {
      return new CreateVoiceModelOptionsBuilder(this);
    }

  }

  /**
   * CreateVoiceModelOptions Builder.
   */
  public class CreateVoiceModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String name_serialized_name;
    private String language_serialized_name;
    private String description_serialized_name;

    private CreateVoiceModelOptionsBuilder(CreateVoiceModelOptions createVoiceModelOptions) {
      name_serialized_name = createVoiceModelOptions.name_serialized_name;
      language_serialized_name = createVoiceModelOptions.language_serialized_name;
      description_serialized_name = createVoiceModelOptions.description_serialized_name;
      this.requestHeaders.putAll(createVoiceModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateVoiceModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param name the name
     */
    public CreateVoiceModelOptionsBuilder(String name) {
      this.name_serialized_name = name;
    }

    /**
     * Builds a CreateVoiceModelOptions.
     *
     * @return the createVoiceModelOptions
     */
    public CreateVoiceModelOptions build() {
      return new CreateVoiceModelOptions(this);
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateVoiceModelOptions builder
     */
    public CreateVoiceModelOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the CreateVoiceModelOptions builder
     */
    public CreateVoiceModelOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateVoiceModelOptions builder
     */
    public CreateVoiceModelOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateVoiceModelOptions builder
     */
    public CreateVoiceModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteUserData options.
   */
  public class DeleteUserDataOptions extends IBMWatsonOptionsModel {
    private String customer_id_serialized_name;
    /**
     * Gets the customer_id_serialized_name.
     *
     * The customer ID for which all data is to be deleted.
     *
     * @return the customer_id_serialized_name
     */
    public String customerId() {
      return customer_id_serialized_name;
    }
    private DeleteUserDataOptions(DeleteUserDataOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.customer_id_serialized_name, 'customer_id_serialized_name cannot be null');
      customer_id_serialized_name = builder.customer_id_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder newBuilder() {
      return new DeleteUserDataOptionsBuilder(this);
    }

  }

  /**
   * DeleteUserDataOptions Builder.
   */
  public class DeleteUserDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String customer_id_serialized_name;

    private DeleteUserDataOptionsBuilder(DeleteUserDataOptions deleteUserDataOptions) {
      customer_id_serialized_name = deleteUserDataOptions.customer_id_serialized_name;
      this.requestHeaders.putAll(deleteUserDataOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteUserDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customerId the customerId
     */
    public DeleteUserDataOptionsBuilder(String customerId) {
      this.customer_id_serialized_name = customerId;
    }

    /**
     * Builds a DeleteUserDataOptions.
     *
     * @return the deleteUserDataOptions
     */
    public DeleteUserDataOptions build() {
      return new DeleteUserDataOptions(this);
    }

    /**
     * Set the customer_id_serialized_name.
     *
     * @param customerId the customerId
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder customerId(String customerId) {
      this.customer_id_serialized_name = customerId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteVoiceModel options.
   */
  public class DeleteVoiceModelOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private DeleteVoiceModelOptions(DeleteVoiceModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteVoiceModelOptions builder
     */
    public DeleteVoiceModelOptionsBuilder newBuilder() {
      return new DeleteVoiceModelOptionsBuilder(this);
    }

  }

  /**
   * DeleteVoiceModelOptions Builder.
   */
  public class DeleteVoiceModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;

    private DeleteVoiceModelOptionsBuilder(DeleteVoiceModelOptions deleteVoiceModelOptions) {
      customization_id_serialized_name = deleteVoiceModelOptions.customization_id_serialized_name;
      this.requestHeaders.putAll(deleteVoiceModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteVoiceModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public DeleteVoiceModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a DeleteVoiceModelOptions.
     *
     * @return the deleteVoiceModelOptions
     */
    public DeleteVoiceModelOptions build() {
      return new DeleteVoiceModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the DeleteVoiceModelOptions builder
     */
    public DeleteVoiceModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteVoiceModelOptions builder
     */
    public DeleteVoiceModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteWord options.
   */
  public class DeleteWordOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String word_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_serialized_name.
     *
     * The word that is to be deleted from the custom voice model.
     *
     * @return the word_serialized_name
     */
    public String word() {
      return word_serialized_name;
    }
    private DeleteWordOptions(DeleteWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.word_serialized_name, 'word_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_serialized_name = builder.word_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteWordOptions builder
     */
    public DeleteWordOptionsBuilder newBuilder() {
      return new DeleteWordOptionsBuilder(this);
    }

  }

  /**
   * DeleteWordOptions Builder.
   */
  public class DeleteWordOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String word_serialized_name;

    private DeleteWordOptionsBuilder(DeleteWordOptions deleteWordOptions) {
      customization_id_serialized_name = deleteWordOptions.customization_id_serialized_name;
      word_serialized_name = deleteWordOptions.word_serialized_name;
      this.requestHeaders.putAll(deleteWordOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteWordOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param word the word
     */
    public DeleteWordOptionsBuilder(String customizationId, String word) {
      this.customization_id_serialized_name = customizationId;
      this.word_serialized_name = word;
    }

    /**
     * Builds a DeleteWordOptions.
     *
     * @return the deleteWordOptions
     */
    public DeleteWordOptions build() {
      return new DeleteWordOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the DeleteWordOptions builder
     */
    public DeleteWordOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the word_serialized_name.
     *
     * @param word the word
     * @return the DeleteWordOptions builder
     */
    public DeleteWordOptionsBuilder word(String word) {
      this.word_serialized_name = word;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteWordOptions builder
     */
    public DeleteWordOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getPronunciation options.
   */
  public class GetPronunciationOptions extends IBMWatsonOptionsModel {
    private String text_serialized_name;
    private String voice_serialized_name;
    private String format_serialized_name;
    private String customization_id_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The word for which the pronunciation is requested.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the voice_serialized_name.
     *
     * A voice that specifies the language in which the pronunciation is to be returned. All voices for the same language (for example, `en-US`) return the same translation.
     *
     * @return the voice_serialized_name
     */
    public String voice() {
      return voice_serialized_name;
    }
    /**
     * Gets the format_serialized_name.
     *
     * The phoneme format in which to return the pronunciation. Omit the parameter to obtain the pronunciation in the default format.
     *
     * @return the format_serialized_name
     */
    public String format() {
      return format_serialized_name;
    }
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of a custom voice model for which the pronunciation is to be returned. The language of a specified custom model must match the language of the specified voice. If the word is not defined in the specified custom model, the service returns the default translation for the custom model's language. You must make the request with service credentials created for the instance of the service that owns the custom model. Omit the parameter to see the translation for the specified voice with no customization.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private GetPronunciationOptions(GetPronunciationOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
      voice_serialized_name = builder.voice_serialized_name;
      format_serialized_name = builder.format_serialized_name;
      customization_id_serialized_name = builder.customization_id_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetPronunciationOptions builder
     */
    public GetPronunciationOptionsBuilder newBuilder() {
      return new GetPronunciationOptionsBuilder(this);
    }

  }

  /**
   * GetPronunciationOptions Builder.
   */
  public class GetPronunciationOptionsBuilder extends IBMWatsonOptionsModel {
    private String text_serialized_name;
    private String voice_serialized_name;
    private String format_serialized_name;
    private String customization_id_serialized_name;

    private GetPronunciationOptionsBuilder(GetPronunciationOptions getPronunciationOptions) {
      text_serialized_name = getPronunciationOptions.text_serialized_name;
      voice_serialized_name = getPronunciationOptions.voice_serialized_name;
      format_serialized_name = getPronunciationOptions.format_serialized_name;
      customization_id_serialized_name = getPronunciationOptions.customization_id_serialized_name;
      this.requestHeaders.putAll(getPronunciationOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetPronunciationOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text the text
     */
    public GetPronunciationOptionsBuilder(String text) {
      this.text_serialized_name = text;
    }

    /**
     * Builds a GetPronunciationOptions.
     *
     * @return the getPronunciationOptions
     */
    public GetPronunciationOptions build() {
      return new GetPronunciationOptions(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the GetPronunciationOptions builder
     */
    public GetPronunciationOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the voice_serialized_name.
     *
     * @param voice the voice
     * @return the GetPronunciationOptions builder
     */
    public GetPronunciationOptionsBuilder voice(String voice) {
      this.voice_serialized_name = voice;
      return this;
    }

    /**
     * Set the format_serialized_name.
     *
     * @param format the format
     * @return the GetPronunciationOptions builder
     */
    public GetPronunciationOptionsBuilder format(String format) {
      this.format_serialized_name = format;
      return this;
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetPronunciationOptions builder
     */
    public GetPronunciationOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetPronunciationOptions builder
     */
    public GetPronunciationOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getVoiceModel options.
   */
  public class GetVoiceModelOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private GetVoiceModelOptions(GetVoiceModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetVoiceModelOptions builder
     */
    public GetVoiceModelOptionsBuilder newBuilder() {
      return new GetVoiceModelOptionsBuilder(this);
    }

  }

  /**
   * GetVoiceModelOptions Builder.
   */
  public class GetVoiceModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;

    private GetVoiceModelOptionsBuilder(GetVoiceModelOptions getVoiceModelOptions) {
      customization_id_serialized_name = getVoiceModelOptions.customization_id_serialized_name;
      this.requestHeaders.putAll(getVoiceModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetVoiceModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public GetVoiceModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a GetVoiceModelOptions.
     *
     * @return the getVoiceModelOptions
     */
    public GetVoiceModelOptions build() {
      return new GetVoiceModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetVoiceModelOptions builder
     */
    public GetVoiceModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetVoiceModelOptions builder
     */
    public GetVoiceModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getVoice options.
   */
  public class GetVoiceOptions extends IBMWatsonOptionsModel {
    private String voice_serialized_name;
    private String customization_id_serialized_name;
    /**
     * Gets the voice_serialized_name.
     *
     * The voice for which information is to be returned.
     *
     * @return the voice_serialized_name
     */
    public String voice() {
      return voice_serialized_name;
    }
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of a custom voice model for which information is to be returned. You must make the request with service credentials created for the instance of the service that owns the custom model. Omit the parameter to see information about the specified voice with no customization.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private GetVoiceOptions(GetVoiceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.voice_serialized_name, 'voice_serialized_name cannot be empty');
      voice_serialized_name = builder.voice_serialized_name;
      customization_id_serialized_name = builder.customization_id_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetVoiceOptions builder
     */
    public GetVoiceOptionsBuilder newBuilder() {
      return new GetVoiceOptionsBuilder(this);
    }

  }

  /**
   * GetVoiceOptions Builder.
   */
  public class GetVoiceOptionsBuilder extends IBMWatsonOptionsModel {
    private String voice_serialized_name;
    private String customization_id_serialized_name;

    private GetVoiceOptionsBuilder(GetVoiceOptions getVoiceOptions) {
      voice_serialized_name = getVoiceOptions.voice_serialized_name;
      customization_id_serialized_name = getVoiceOptions.customization_id_serialized_name;
      this.requestHeaders.putAll(getVoiceOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetVoiceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param voice the voice
     */
    public GetVoiceOptionsBuilder(String voice) {
      this.voice_serialized_name = voice;
    }

    /**
     * Builds a GetVoiceOptions.
     *
     * @return the getVoiceOptions
     */
    public GetVoiceOptions build() {
      return new GetVoiceOptions(this);
    }

    /**
     * Set the voice_serialized_name.
     *
     * @param voice the voice
     * @return the GetVoiceOptions builder
     */
    public GetVoiceOptionsBuilder voice(String voice) {
      this.voice_serialized_name = voice;
      return this;
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetVoiceOptions builder
     */
    public GetVoiceOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetVoiceOptions builder
     */
    public GetVoiceOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getWord options.
   */
  public class GetWordOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String word_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_serialized_name.
     *
     * The word that is to be queried from the custom voice model.
     *
     * @return the word_serialized_name
     */
    public String word() {
      return word_serialized_name;
    }
    private GetWordOptions(GetWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.word_serialized_name, 'word_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_serialized_name = builder.word_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetWordOptions builder
     */
    public GetWordOptionsBuilder newBuilder() {
      return new GetWordOptionsBuilder(this);
    }

  }

  /**
   * GetWordOptions Builder.
   */
  public class GetWordOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String word_serialized_name;

    private GetWordOptionsBuilder(GetWordOptions getWordOptions) {
      customization_id_serialized_name = getWordOptions.customization_id_serialized_name;
      word_serialized_name = getWordOptions.word_serialized_name;
      this.requestHeaders.putAll(getWordOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetWordOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param word the word
     */
    public GetWordOptionsBuilder(String customizationId, String word) {
      this.customization_id_serialized_name = customizationId;
      this.word_serialized_name = word;
    }

    /**
     * Builds a GetWordOptions.
     *
     * @return the getWordOptions
     */
    public GetWordOptions build() {
      return new GetWordOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetWordOptions builder
     */
    public GetWordOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the word_serialized_name.
     *
     * @param word the word
     * @return the GetWordOptions builder
     */
    public GetWordOptionsBuilder word(String word) {
      this.word_serialized_name = word;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetWordOptions builder
     */
    public GetWordOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listVoiceModels options.
   */
  public class ListVoiceModelsOptions extends IBMWatsonOptionsModel {
    private String language_serialized_name;
    /**
     * Gets the language_serialized_name.
     *
     * The language for which custom voice models that are owned by the requesting service credentials are to be returned. Omit the parameter to see all custom voice models that are owned by the requester.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    private ListVoiceModelsOptions(ListVoiceModelsOptionsBuilder builder) {
      language_serialized_name = builder.language_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListVoiceModelsOptions builder
     */
    public ListVoiceModelsOptionsBuilder newBuilder() {
      return new ListVoiceModelsOptionsBuilder(this);
    }

  }

  /**
   * ListVoiceModelsOptions Builder.
   */
  public class ListVoiceModelsOptionsBuilder extends IBMWatsonOptionsModel {
    private String language_serialized_name;

    private ListVoiceModelsOptionsBuilder(ListVoiceModelsOptions listVoiceModelsOptions) {
      language_serialized_name = listVoiceModelsOptions.language_serialized_name;
      this.requestHeaders.putAll(listVoiceModelsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListVoiceModelsOptionsBuilder() {
    }

    /**
     * Builds a ListVoiceModelsOptions.
     *
     * @return the listVoiceModelsOptions
     */
    public ListVoiceModelsOptions build() {
      return new ListVoiceModelsOptions(this);
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the ListVoiceModelsOptions builder
     */
    public ListVoiceModelsOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListVoiceModelsOptions builder
     */
    public ListVoiceModelsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listVoices options.
   */
  public class ListVoicesOptions extends IBMWatsonOptionsModel {
    private ListVoicesOptions(ListVoicesOptionsBuilder builder) {
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListVoicesOptions builder
     */
    public ListVoicesOptionsBuilder newBuilder() {
      return new ListVoicesOptionsBuilder(this);
    }

  }

  /**
   * ListVoicesOptions Builder.
   */
  public class ListVoicesOptionsBuilder extends IBMWatsonOptionsModel {

    private ListVoicesOptionsBuilder(ListVoicesOptions listVoicesOptions) {
      this.requestHeaders.putAll(listVoicesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListVoicesOptionsBuilder() {
    }

    /**
     * Builds a ListVoicesOptions.
     *
     * @return the listVoicesOptions
     */
    public ListVoicesOptions build() {
      return new ListVoicesOptions(this);
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListVoicesOptions builder
     */
    public ListVoicesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listWords options.
   */
  public class ListWordsOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private ListWordsOptions(ListWordsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListWordsOptions builder
     */
    public ListWordsOptionsBuilder newBuilder() {
      return new ListWordsOptionsBuilder(this);
    }

  }

  /**
   * ListWordsOptions Builder.
   */
  public class ListWordsOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;

    private ListWordsOptionsBuilder(ListWordsOptions listWordsOptions) {
      customization_id_serialized_name = listWordsOptions.customization_id_serialized_name;
      this.requestHeaders.putAll(listWordsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListWordsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public ListWordsOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a ListWordsOptions.
     *
     * @return the listWordsOptions
     */
    public ListWordsOptions build() {
      return new ListWordsOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the ListWordsOptions builder
     */
    public ListWordsOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListWordsOptions builder
     */
    public ListWordsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Pronunciation.
   */
  public class Pronunciation extends IBMWatsonResponseModel {
    private String pronunciation_serialized_name;
    /**
     * Gets the pronunciation_serialized_name.
     *
     * The pronunciation of the specified text in the requested voice and format. If a custom voice model is specified, the pronunciation also reflects that custom voice.
     *
     * @return the pronunciation_serialized_name
     */
    @AuraEnabled
    public String getPronunciation() {
      return pronunciation_serialized_name;
    }

    /**
     * Sets the pronunciation_serialized_name.
     *
     * @param pronunciation the new pronunciation
     */
    public void setPronunciation(final String pronunciation) {
      this.pronunciation_serialized_name = pronunciation;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Pronunciation ret = (Pronunciation) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * SupportedFeatures.
   */
  public class SupportedFeatures extends IBMWatsonGenericModel {
    private Boolean custom_pronunciation_serialized_name;
    private Boolean voice_transformation_serialized_name;
    /**
     * Gets the custom_pronunciation_serialized_name.
     *
     * If `true`, the voice can be customized; if `false`, the voice cannot be customized. (Same as `customizable`.).
     *
     * @return the custom_pronunciation_serialized_name
     */
    @AuraEnabled
    public Boolean getCustomPronunciation() {
      return custom_pronunciation_serialized_name;
    }
    /**
     * Gets the voice_transformation_serialized_name.
     *
     * If `true`, the voice can be transformed by using the SSML &lt;voice-transformation&gt; element; if `false`, the voice cannot be transformed.
     *
     * @return the voice_transformation_serialized_name
     */
    @AuraEnabled
    public Boolean getVoiceTransformation() {
      return voice_transformation_serialized_name;
    }

    /**
     * Sets the custom_pronunciation_serialized_name.
     *
     * @param customPronunciation the new customPronunciation
     */
    public void setCustomPronunciation(final Boolean customPronunciation) {
      this.custom_pronunciation_serialized_name = customPronunciation;
    }

    /**
     * Sets the voice_transformation_serialized_name.
     *
     * @param voiceTransformation the new voiceTransformation
     */
    public void setVoiceTransformation(final Boolean voiceTransformation) {
      this.voice_transformation_serialized_name = voiceTransformation;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SupportedFeatures ret = (SupportedFeatures) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The synthesize options.
   */
  public class SynthesizeOptions extends IBMWatsonOptionsModel {
    private String text_serialized_name;
    private String accept_serialized_name;
    private String voice_serialized_name;
    private String customization_id_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The text to synthesize.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the accept_serialized_name.
     *
     * The type of the response: audio/basic, audio/flac, audio/l16;rate=nnnn, audio/ogg, audio/ogg;codecs=opus, audio/ogg;codecs=vorbis, audio/mp3, audio/mpeg, audio/mulaw;rate=nnnn, audio/wav, audio/webm, audio/webm;codecs=opus, or audio/webm;codecs=vorbis.
     *
     * @return the accept_serialized_name
     */
    public String accept() {
      return accept_serialized_name;
    }
    /**
     * Gets the voice_serialized_name.
     *
     * The voice to use for synthesis.
     *
     * @return the voice_serialized_name
     */
    public String voice() {
      return voice_serialized_name;
    }
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of a custom voice model to use for the synthesis. If a custom voice model is specified, it is guaranteed to work only if it matches the language of the indicated voice. You must make the request with service credentials created for the instance of the service that owns the custom model. Omit the parameter to use the specified voice with no customization.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private SynthesizeOptions(SynthesizeOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
      accept_serialized_name = builder.accept_serialized_name;
      voice_serialized_name = builder.voice_serialized_name;
      customization_id_serialized_name = builder.customization_id_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a SynthesizeOptions builder
     */
    public SynthesizeOptionsBuilder newBuilder() {
      return new SynthesizeOptionsBuilder(this);
    }

  }

  /**
   * SynthesizeOptions Builder.
   */
  public class SynthesizeOptionsBuilder extends IBMWatsonOptionsModel {
    private String text_serialized_name;
    private String accept_serialized_name;
    private String voice_serialized_name;
    private String customization_id_serialized_name;

    private SynthesizeOptionsBuilder(SynthesizeOptions synthesizeOptions) {
      text_serialized_name = synthesizeOptions.text_serialized_name;
      accept_serialized_name = synthesizeOptions.accept_serialized_name;
      voice_serialized_name = synthesizeOptions.voice_serialized_name;
      customization_id_serialized_name = synthesizeOptions.customization_id_serialized_name;
      this.requestHeaders.putAll(synthesizeOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public SynthesizeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text the text
     */
    public SynthesizeOptionsBuilder(String text) {
      this.text_serialized_name = text;
    }

    /**
     * Builds a SynthesizeOptions.
     *
     * @return the synthesizeOptions
     */
    public SynthesizeOptions build() {
      return new SynthesizeOptions(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the SynthesizeOptions builder
     */
    public SynthesizeOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the accept_serialized_name.
     *
     * @param accept the accept
     * @return the SynthesizeOptions builder
     */
    public SynthesizeOptionsBuilder accept(String accept) {
      this.accept_serialized_name = accept;
      return this;
    }

    /**
     * Set the voice_serialized_name.
     *
     * @param voice the voice
     * @return the SynthesizeOptions builder
     */
    public SynthesizeOptionsBuilder voice(String voice) {
      this.voice_serialized_name = voice;
      return this;
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the SynthesizeOptions builder
     */
    public SynthesizeOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the SynthesizeOptions builder
     */
    public SynthesizeOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Translation.
   */
  public class Translation extends IBMWatsonResponseModel {
    private String translation_serialized_name;
    private String part_of_speech_serialized_name;
    /**
     * Gets the translation_serialized_name.
     *
     * The phonetic or sounds-like translation for the word. A phonetic translation is based on the SSML format for representing the phonetic string of a word either as an IPA translation or as an IBM SPR translation. A sounds-like is one or more words that, when combined, sound like the word.
     *
     * @return the translation_serialized_name
     */
    @AuraEnabled
    public String getTranslation() {
      return translation_serialized_name;
    }
    /**
     * Gets the part_of_speech_serialized_name.
     *
     * **Japanese only.** The part of speech for the word. The service uses the value to produce the correct intonation for the word. You can create only a single entry, with or without a single part of speech, for any word; you cannot create multiple entries with different parts of speech for the same word. For more information, see [Working with Japanese entries](https://console.bluemix.net/docs/services/text-to-speech/custom-rules.html#jaNotes).
     *
     * @return the part_of_speech_serialized_name
     */
    @AuraEnabled
    public String getPartOfSpeech() {
      return part_of_speech_serialized_name;
    }

    /**
     * Sets the translation_serialized_name.
     *
     * @param translation the new translation
     */
    public void setTranslation(final String translation) {
      this.translation_serialized_name = translation;
    }

    /**
     * Sets the part_of_speech_serialized_name.
     *
     * @param partOfSpeech the new partOfSpeech
     */
    public void setPartOfSpeech(final String partOfSpeech) {
      this.part_of_speech_serialized_name = partOfSpeech;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Translation ret = (Translation) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The updateVoiceModel options.
   */
  public class UpdateVoiceModelOptions extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private List<Word> words_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * A new name for the custom voice model.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * A new description for the custom voice model.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the words_serialized_name.
     *
     * An array of `Word` objects that provides the words and their translations that are to be added or updated for the custom voice model. Pass an empty array to make no additions or updates.
     *
     * @return the words_serialized_name
     */
    public List<Word> words() {
      return words_serialized_name;
    }
    private UpdateVoiceModelOptions(UpdateVoiceModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      words_serialized_name = builder.words_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateVoiceModelOptions builder
     */
    public UpdateVoiceModelOptionsBuilder newBuilder() {
      return new UpdateVoiceModelOptionsBuilder(this);
    }

  }

  /**
   * UpdateVoiceModelOptions Builder.
   */
  public class UpdateVoiceModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customization_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private List<Word> words_serialized_name;

    private UpdateVoiceModelOptionsBuilder(UpdateVoiceModelOptions updateVoiceModelOptions) {
      customization_id_serialized_name = updateVoiceModelOptions.customization_id_serialized_name;
      name_serialized_name = updateVoiceModelOptions.name_serialized_name;
      description_serialized_name = updateVoiceModelOptions.description_serialized_name;
      words_serialized_name = updateVoiceModelOptions.words_serialized_name;
      this.requestHeaders.putAll(updateVoiceModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateVoiceModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public UpdateVoiceModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a UpdateVoiceModelOptions.
     *
     * @return the updateVoiceModelOptions
     */
    public UpdateVoiceModelOptions build() {
      return new UpdateVoiceModelOptions(this);
    }

    /**
     * Adds an words to words_serialized_name.
     *
     * @param words the new words
     * @return the UpdateVoiceModelOptions builder
     */
    public UpdateVoiceModelOptionsBuilder addWords(Word words) {
      IBMWatsonValidator.notNull(words, 'words cannot be null');
      if (this.words_serialized_name == null) {
        this.words_serialized_name = new List<Word>();
      }
      this.words_serialized_name.add(words);
      return this;
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the UpdateVoiceModelOptions builder
     */
    public UpdateVoiceModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the UpdateVoiceModelOptions builder
     */
    public UpdateVoiceModelOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the UpdateVoiceModelOptions builder
     */
    public UpdateVoiceModelOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the words_serialized_name.
     * Existing words_serialized_name will be replaced.
     *
     * @param words the words
     * @return the UpdateVoiceModelOptions builder
     */
    public UpdateVoiceModelOptionsBuilder words(List<Word> words) {
      this.words_serialized_name = words;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateVoiceModelOptions builder
     */
    public UpdateVoiceModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Voice.
   */
  public class Voice extends IBMWatsonResponseModel {
    private String url_serialized_name;
    private String gender_serialized_name;
    private String name_serialized_name;
    private String language_serialized_name;
    private String description_serialized_name;
    private Boolean customizable_serialized_name;
    private SupportedFeatures supported_features_serialized_name;
    private VoiceModel customization_serialized_name;
    /**
     * Gets the url_serialized_name.
     *
     * The URI of the voice.
     *
     * @return the url_serialized_name
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
    /**
     * Gets the gender_serialized_name.
     *
     * The gender of the voice: `male` or `female`.
     *
     * @return the gender_serialized_name
     */
    @AuraEnabled
    public String getGender() {
      return gender_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the voice. Use this as the voice identifier in all requests.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language and region of the voice (for example, `en-US`).
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * A textual description of the voice.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the customizable_serialized_name.
     *
     * If `true`, the voice can be customized; if `false`, the voice cannot be customized. (Same as `custom_pronunciation`; maintained for backward compatibility.).
     *
     * @return the customizable_serialized_name
     */
    @AuraEnabled
    public Boolean getCustomizable() {
      return customizable_serialized_name;
    }
    /**
     * Gets the supported_features_serialized_name.
     *
     * Describes the additional service features supported with the voice.
     *
     * @return the supported_features_serialized_name
     */
    @AuraEnabled
    public SupportedFeatures getSupportedFeatures() {
      return supported_features_serialized_name;
    }
    /**
     * Gets the customization_serialized_name.
     *
     * Returns information about a specified custom voice model. This field is returned only by the **Get a voice** method and only when you specify the customization ID of a custom voice model.
     *
     * @return the customization_serialized_name
     */
    @AuraEnabled
    public VoiceModel getCustomization() {
      return customization_serialized_name;
    }

    /**
     * Sets the url_serialized_name.
     *
     * @param url the new url
     */
    public void setUrl(final String url) {
      this.url_serialized_name = url;
    }

    /**
     * Sets the gender_serialized_name.
     *
     * @param gender the new gender
     */
    public void setGender(final String gender) {
      this.gender_serialized_name = gender;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the customizable_serialized_name.
     *
     * @param customizable the new customizable
     */
    public void setCustomizable(final Boolean customizable) {
      this.customizable_serialized_name = customizable;
    }

    /**
     * Sets the supported_features_serialized_name.
     *
     * @param supportedFeatures the new supportedFeatures
     */
    public void setSupportedFeatures(final SupportedFeatures supportedFeatures) {
      this.supported_features_serialized_name = supportedFeatures;
    }

    /**
     * Sets the customization_serialized_name.
     *
     * @param customization the new customization
     */
    public void setCustomization(final VoiceModel customization) {
      this.customization_serialized_name = customization;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Voice ret = (Voice) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for supported_features_serialized_name
      SupportedFeatures newSupportedFeatures = (SupportedFeatures) new SupportedFeatures().deserialize(JSON.serialize(ret.getSupportedFeatures()), (Map<String, Object>) jsonMap.get('supported_features_serialized_name'), SupportedFeatures.class);
      ret.setSupportedFeatures(newSupportedFeatures);

      // calling custom deserializer for customization_serialized_name
      VoiceModel newCustomization = (VoiceModel) new VoiceModel().deserialize(JSON.serialize(ret.getCustomization()), (Map<String, Object>) jsonMap.get('customization_serialized_name'), VoiceModel.class);
      ret.setCustomization(newCustomization);

      return ret;
    }
  }

  /**
   * VoiceModel.
   */
  public class VoiceModel extends IBMWatsonResponseModel {
    private String customization_id_serialized_name;
    private String name_serialized_name;
    private String language_serialized_name;
    private String owner_serialized_name;
    private String created_serialized_name;
    private String last_modified_serialized_name;
    private String description_serialized_name;
    private List<Word> words_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom voice model. The **Create a custom model** method returns only this field. It does not not return the other fields of this object.
     *
     * @return the customization_id_serialized_name
     */
    @AuraEnabled
    public String getCustomizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the custom voice model.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language identifier of the custom voice model (for example, `en-US`).
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the owner_serialized_name.
     *
     * The GUID of the service credentials for the instance of the service that owns the custom voice model.
     *
     * @return the owner_serialized_name
     */
    @AuraEnabled
    public String getOwner() {
      return owner_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom voice model was created. The value is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public String getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the last_modified_serialized_name.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom voice model was last modified. Equals `created` when a new voice model is first added but has yet to be updated. The value is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the last_modified_serialized_name
     */
    @AuraEnabled
    public String getLastModified() {
      return last_modified_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the custom voice model.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the words_serialized_name.
     *
     * An array of `Word` objects that lists the words and their translations from the custom voice model. The words are listed in alphabetical order, with uppercase letters listed before lowercase letters. The array is empty if the custom model contains no words. This field is returned only by the **Get a voice** method and only when you specify the customization ID of a custom voice model.
     *
     * @return the words_serialized_name
     */
    @AuraEnabled
    public List<Word> getWords() {
      return words_serialized_name;
    }

    /**
     * Sets the customization_id_serialized_name.
     *
     * @param customizationId the new customizationId
     */
    public void setCustomizationId(final String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the owner_serialized_name.
     *
     * @param owner the new owner
     */
    public void setOwner(final String owner) {
      this.owner_serialized_name = owner;
    }

    /**
     * Sets the created_serialized_name.
     *
     * @param created the new created
     */
    public void setCreated(final String created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the last_modified_serialized_name.
     *
     * @param lastModified the new lastModified
     */
    public void setLastModified(final String lastModified) {
      this.last_modified_serialized_name = lastModified;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the words_serialized_name.
     *
     * @param words the new words
     */
    public void setWords(final List<Word> words) {
      this.words_serialized_name = words;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      VoiceModel ret = (VoiceModel) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for words_serialized_name
      List<Word> newWords = new List<Word>();
      List<Word> deserializedWords = ret.getWords();
      if (deserializedWords != null) {
        for (Integer i = 0; i < deserializedWords.size(); i++) {
          Word currentItem = ret.getWords().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('words_serialized_name');
          Word newItem = (Word) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Word.class);
          newWords.add(newItem);
        }
        ret.setWords(newWords);
      }

      return ret;
    }
  }

  /**
   * VoiceModels.
   */
  public class VoiceModels extends IBMWatsonResponseModel {
    private List<VoiceModel> customizations_serialized_name;
    /**
     * Gets the customizations_serialized_name.
     *
     * An array of `VoiceModel` objects that provides information about each available custom voice model. The array is empty if the requesting service credentials own no custom voice models (if no language is specified) or own no custom voice models for the specified language.
     *
     * @return the customizations_serialized_name
     */
    @AuraEnabled
    public List<VoiceModel> getCustomizations() {
      return customizations_serialized_name;
    }

    /**
     * Sets the customizations_serialized_name.
     *
     * @param customizations the new customizations
     */
    public void setCustomizations(final List<VoiceModel> customizations) {
      this.customizations_serialized_name = customizations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      VoiceModels ret = (VoiceModels) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for customizations_serialized_name
      List<VoiceModel> newCustomizations = new List<VoiceModel>();
      List<VoiceModel> deserializedCustomizations = ret.getCustomizations();
      if (deserializedCustomizations != null) {
        for (Integer i = 0; i < deserializedCustomizations.size(); i++) {
          VoiceModel currentItem = ret.getCustomizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('customizations_serialized_name');
          VoiceModel newItem = (VoiceModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), VoiceModel.class);
          newCustomizations.add(newItem);
        }
        ret.setCustomizations(newCustomizations);
      }

      return ret;
    }
  }

  /**
   * Voices.
   */
  public class Voices extends IBMWatsonResponseModel {
    private List<Voice> voices_serialized_name;
    /**
     * Gets the voices_serialized_name.
     *
     * A list of available voices.
     *
     * @return the voices_serialized_name
     */
    @AuraEnabled
    public List<Voice> getVoices() {
      return voices_serialized_name;
    }

    /**
     * Sets the voices_serialized_name.
     *
     * @param voices the new voices
     */
    public void setVoices(final List<Voice> voices) {
      this.voices_serialized_name = voices;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Voices ret = (Voices) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for voices_serialized_name
      List<Voice> newVoices = new List<Voice>();
      List<Voice> deserializedVoices = ret.getVoices();
      if (deserializedVoices != null) {
        for (Integer i = 0; i < deserializedVoices.size(); i++) {
          Voice currentItem = ret.getVoices().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('voices_serialized_name');
          Voice newItem = (Voice) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Voice.class);
          newVoices.add(newItem);
        }
        ret.setVoices(newVoices);
      }

      return ret;
    }
  }

  /**
   * Word.
   */
  public class Word extends IBMWatsonGenericModel {
    private String word_serialized_name;
    private String translation_serialized_name;
    private String part_of_speech_serialized_name;
    /**
     * Gets the word_serialized_name.
     *
     * A word from the custom voice model.
     *
     * @return the word_serialized_name
     */
    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }
    /**
     * Gets the translation_serialized_name.
     *
     * The phonetic or sounds-like translation for the word. A phonetic translation is based on the SSML format for representing the phonetic string of a word either as an IPA or IBM SPR translation. A sounds-like translation consists of one or more words that, when combined, sound like the word.
     *
     * @return the translation_serialized_name
     */
    @AuraEnabled
    public String getTranslation() {
      return translation_serialized_name;
    }
    /**
     * Gets the part_of_speech_serialized_name.
     *
     * **Japanese only.** The part of speech for the word. The service uses the value to produce the correct intonation for the word. You can create only a single entry, with or without a single part of speech, for any word; you cannot create multiple entries with different parts of speech for the same word. For more information, see [Working with Japanese entries](https://console.bluemix.net/docs/services/text-to-speech/custom-rules.html#jaNotes).
     *
     * @return the part_of_speech_serialized_name
     */
    @AuraEnabled
    public String getPartOfSpeech() {
      return part_of_speech_serialized_name;
    }

    /**
     * Sets the word_serialized_name.
     *
     * @param word the new word
     */
    public void setWord(final String word) {
      this.word_serialized_name = word;
    }

    /**
     * Sets the translation_serialized_name.
     *
     * @param translation the new translation
     */
    public void setTranslation(final String translation) {
      this.translation_serialized_name = translation;
    }

    /**
     * Sets the part_of_speech_serialized_name.
     *
     * @param partOfSpeech the new partOfSpeech
     */
    public void setPartOfSpeech(final String partOfSpeech) {
      this.part_of_speech_serialized_name = partOfSpeech;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Word ret = (Word) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Words.
   */
  public class Words extends IBMWatsonResponseModel {
    private List<Word> words_serialized_name;
    /**
     * Gets the words_serialized_name.
     *
     * The **Add custom words** method accepts an array of `Word` objects. Each object provides a word that is to be added or updated for the custom voice model and the word's translation.   The **List custom words** method returns an array of `Word` objects. Each object shows a word and its translation from the custom voice model. The words are listed in alphabetical order, with uppercase letters listed before lowercase letters. The array is empty if the custom model contains no words.
     *
     * @return the words_serialized_name
     */
    @AuraEnabled
    public List<Word> getWords() {
      return words_serialized_name;
    }

    /**
     * Sets the words_serialized_name.
     *
     * @param words the new words
     */
    public void setWords(final List<Word> words) {
      this.words_serialized_name = words;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Words ret = (Words) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for words_serialized_name
      List<Word> newWords = new List<Word>();
      List<Word> deserializedWords = ret.getWords();
      if (deserializedWords != null) {
        for (Integer i = 0; i < deserializedWords.size(); i++) {
          Word currentItem = ret.getWords().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('words_serialized_name');
          Word newItem = (Word) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Word.class);
          newWords.add(newItem);
        }
        ret.setWords(newWords);
      }

      return ret;
    }
  }

}
