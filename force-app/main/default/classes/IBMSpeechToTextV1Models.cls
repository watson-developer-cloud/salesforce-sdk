public class IBMSpeechToTextV1Models {
  /**
   * AcousticModel.
   */
  public class AcousticModel extends IBMWatsonGenericModel {
    private String customization_id_serialized_name;
    private String created_serialized_name;
    private String language_serialized_name;
    private List<String> versions_serialized_name;
    private String owner_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String base_model_name_serialized_name;
    private String status_serialized_name;
    private Long progress_serialized_name;
    private String warnings_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom acoustic model. **Note:** When you create a new custom acoustic model, the service returns only the GUID of the new model; it does not return the other fields of this object.
     *
     * @return the customization_id_serialized_name
     */
    @AuraEnabled
    public String getCustomizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom acoustic model was created. The value is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public String getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language identifier of the custom acoustic model (for example, `en-US`).
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the versions_serialized_name.
     *
     * A list of the available versions of the custom acoustic model. Each element of the array indicates a version of the base model with which the custom model can be used. Multiple versions exist only if the custom model has been upgraded; otherwise, only a single version is shown.
     *
     * @return the versions_serialized_name
     */
    @AuraEnabled
    public List<String> getVersions() {
      return versions_serialized_name;
    }
    /**
     * Gets the owner_serialized_name.
     *
     * The GUID of the service credentials for the instance of the service that owns the custom acoustic model.
     *
     * @return the owner_serialized_name
     */
    @AuraEnabled
    public String getOwner() {
      return owner_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the custom acoustic model.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the custom acoustic model.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the base_model_name_serialized_name.
     *
     * The name of the language model for which the custom acoustic model was created.
     *
     * @return the base_model_name_serialized_name
     */
    @AuraEnabled
    public String getBaseModelName() {
      return base_model_name_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The current status of the custom acoustic model: * `pending` indicates that the model was created but is waiting either for training data to be added or for the service to finish analyzing added data. * `ready` indicates that the model contains data and is ready to be trained. * `training` indicates that the model is currently being trained. * `available` indicates that the model is trained and ready to use. * `upgrading` indicates that the model is currently being upgraded. * `failed` indicates that training of the model failed.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the progress_serialized_name.
     *
     * A percentage that indicates the progress of the custom acoustic model's current training. A value of `100` means that the model is fully trained. **Note:** The `progress` field does not currently reflect the progress of the training; the field changes from `0` to `100` when training is complete.
     *
     * @return the progress_serialized_name
     */
    @AuraEnabled
    public Long getProgress() {
      return progress_serialized_name;
    }
    /**
     * Gets the warnings_serialized_name.
     *
     * If the request included unknown query parameters, the following message: `Unexpected query parameter(s) ['parameters'] detected`, where `parameters` is a list that includes a quoted string for each unknown parameter.
     *
     * @return the warnings_serialized_name
     */
    @AuraEnabled
    public String getWarnings() {
      return warnings_serialized_name;
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
     * Sets the created_serialized_name.
     *
     * @param created the new created
     */
    public void setCreated(final String created) {
      this.created_serialized_name = created;
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
     * Sets the versions_serialized_name.
     *
     * @param versions the new versions
     */
    public void setVersions(final List<String> versions) {
      this.versions_serialized_name = versions;
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
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
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
     * Sets the base_model_name_serialized_name.
     *
     * @param baseModelName the new baseModelName
     */
    public void setBaseModelName(final String baseModelName) {
      this.base_model_name_serialized_name = baseModelName;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the progress_serialized_name.
     *
     * @param progress the new progress
     */
    public void setProgress(final long progress) {
      this.progress_serialized_name = progress;
    }

    /**
     * Sets the warnings_serialized_name.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final String warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AcousticModel ret = (AcousticModel) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * AcousticModels.
   */
  public class AcousticModels extends IBMWatsonGenericModel {
    private List<AcousticModel> customizations_serialized_name;
    /**
     * Gets the customizations_serialized_name.
     *
     * An array of objects that provides information about each available custom acoustic model. The array is empty if the requesting service credentials own no custom acoustic models (if no language is specified) or own no custom acoustic models for the specified language.
     *
     * @return the customizations_serialized_name
     */
    @AuraEnabled
    public List<AcousticModel> getCustomizations() {
      return customizations_serialized_name;
    }

    /**
     * Sets the customizations_serialized_name.
     *
     * @param customizations the new customizations
     */
    public void setCustomizations(final List<AcousticModel> customizations) {
      this.customizations_serialized_name = customizations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AcousticModels ret = (AcousticModels) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for customizations_serialized_name
      List<AcousticModel> newCustomizations = new List<AcousticModel>();
      List<AcousticModel> deserializedCustomizations = ret.getCustomizations();
      if (deserializedCustomizations != null) {
        for (Integer i = 0; i < deserializedCustomizations.size(); i++) {
          AcousticModel currentItem = ret.getCustomizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('customizations_serialized_name');
          AcousticModel newItem = (AcousticModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AcousticModel.class);
          newCustomizations.add(newItem);
        }
        ret.setCustomizations(newCustomizations);
      }

      return ret;
    }
  }

  /**
   * The addAudio options.
   */
  public class AddAudioOptions {
    private String customization_id_serialized_name;
    private String audio_name_serialized_name;
    private String content_type_serialized_name;
    private String contained_content_type_serialized_name;
    private Boolean allow_overwrite_serialized_name;
    private IBMWatsonFile audio_serialized_name;
    private String audio_filename_serialized_name;

    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model to which an audio resource is to be added. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the audio_name_serialized_name.
     *
     * The name of the audio resource that is to be added to the custom acoustic model. The name cannot contain spaces. Use a localized name that matches the language of the custom model.
     *
     * @return the audio_name_serialized_name
     */
    public String audioName() {
      return audio_name_serialized_name;
    }
    /**
     * Gets the content_type_serialized_name.
     *
     * The type of the input: application/zip, application/gzip, audio/basic, audio/flac, audio/l16, audio/mp3, audio/mpeg, audio/mulaw, audio/ogg, audio/ogg;codecs=opus, audio/ogg;codecs=vorbis, audio/wav, audio/webm, audio/webm;codecs=opus, or audio/webm;codecs=vorbis.
     *
     * @return the content_type_serialized_name
     */
    public String contentType() {
      return content_type_serialized_name;
    }
    /**
     * Gets the contained_content_type_serialized_name.
     *
     * For an archive-type resource that contains audio files whose format is not `audio/wav`, specifies the format of the audio files. The header accepts all of the audio formats supported for use with speech recognition and with the `Content-Type` header, including the `rate`, `channels`, and `endianness` parameters that are used with some formats. For a complete list of supported audio formats, see [Audio formats](/docs/services/speech-to-text/input.html#formats).
     *
     * @return the contained_content_type_serialized_name
     */
    public String containedContentType() {
      return contained_content_type_serialized_name;
    }
    /**
     * Gets the allow_overwrite_serialized_name.
     *
     * Indicates whether the specified audio resource is to overwrite an existing resource with the same name. If a resource with the same name already exists, the request fails unless `allow_overwrite` is set to `true`; by default, the parameter is `false`. The parameter has no effect if a resource with the same name does not already exist.
     *
     * @return the allow_overwrite_serialized_name
     */
    public Boolean allowOverwrite() {
      return allow_overwrite_serialized_name;
    }

    public IBMWatsonFile audio() {
      return audio_serialized_name;
    }

    public String audioFilename() {
      return audio_filename_serialized_name;
    }

    private AddAudioOptions(AddAudioOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.audio_serialized_name, 'audio cannot be null');
      IBMWatsonValidator.notEmpty(builder.audio_filename_serialized_name, 'audioFilename cannot be null');
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.audio_name_serialized_name, 'audio_name_serialized_name cannot be empty');
      IBMWatsonValidator.isTrue(builder.content_type_serialized_name != null, 'content_type_serialized_name cannot be null');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      audio_name_serialized_name = builder.audio_name_serialized_name;
      content_type_serialized_name = builder.content_type_serialized_name;
      contained_content_type_serialized_name = builder.contained_content_type_serialized_name;
      allow_overwrite_serialized_name = builder.allow_overwrite_serialized_name;
      audio_serialized_name = builder.audio_serialized_name;
      audio_filename_serialized_name = builder.audio_filename_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a AddAudioOptions builder
     */
    public AddAudioOptionsBuilder newBuilder() {
      return new AddAudioOptionsBuilder(this);
    }

  }

  /**
   * AddAudioOptions Builder.
   */
  public class AddAudioOptionsBuilder {
    private String customization_id_serialized_name;
    private String audio_name_serialized_name;
    private String content_type_serialized_name;
    private String contained_content_type_serialized_name;
    private Boolean allow_overwrite_serialized_name;
    private IBMWatsonFile audio_serialized_name;
    private String audio_filename_serialized_name;

    private AddAudioOptionsBuilder(AddAudioOptions addAudioOptions) {
      customization_id_serialized_name = addAudioOptions.customization_id_serialized_name;
      audio_name_serialized_name = addAudioOptions.audio_name_serialized_name;
      content_type_serialized_name = addAudioOptions.content_type_serialized_name;
      contained_content_type_serialized_name = addAudioOptions.contained_content_type_serialized_name;
      allow_overwrite_serialized_name = addAudioOptions.allow_overwrite_serialized_name;
      audio_serialized_name = addAudioOptions.audio_serialized_name;
      audio_filename_serialized_name = addAudioOptions.audio_filename_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public AddAudioOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param audioName the audioName
     */
    public AddAudioOptionsBuilder(String customizationId, String audioName, IBMWatsonFile audio, String audioFilename) {
      this.customization_id_serialized_name = customizationId;
      this.audio_name_serialized_name = audioName;
      this.audio_serialized_name = audio;
      this.audio_filename_serialized_name = audioFilename;
      this.content_type_serialized_name = audio.contentType();
    }

    /**
     * Builds a AddAudioOptions.
     *
     * @return the addAudioOptions
     */
    public AddAudioOptions build() {
      return new AddAudioOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the audio_name_serialized_name.
     *
     * @param audioName the audioName
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder audioName(String audioName) {
      this.audio_name_serialized_name = audioName;
      return this;
    }

    /**
     * Set the contained_content_type_serialized_name.
     *
     * @param containedContentType the containedContentType
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder containedContentType(String containedContentType) {
      this.contained_content_type_serialized_name = containedContentType;
      return this;
    }

    /**
     * Set the allow_overwrite_serialized_name.
     *
     * @param allowOverwrite the allowOverwrite
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder allowOverwrite(Boolean allowOverwrite) {
      this.allow_overwrite_serialized_name = allowOverwrite;
      return this;
    }

    public AddAudioOptionsBuilder audio(IBMWatsonFile audio) {
      this.audio_serialized_name = audio;
      this.content_type_serialized_name = audio.contentType();
      return this;
    }

    public AddAudioOptionsBuilder audioFilename(String audioFilename) {
      this.audio_filename_serialized_name = audioFilename;
      return this;
    }
  }

  /**
   * The addCorpus options.
   */
  public class AddCorpusOptions {
    private String customization_id_serialized_name;
    private String corpus_name_serialized_name;
    private IBMWatsonFile corpus_file_serialized_name;
    private String corpus_filename_serialized_name;
    private Boolean allow_overwrite_serialized_name;
    private String corpus_file_content_type_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model to which a corpus is to be added. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the corpus_name_serialized_name.
     *
     * The name of the corpus that is to be added to the custom language model. The name cannot contain spaces and cannot be the string `user`, which is reserved by the service to denote custom words added or modified by the user. Use a localized name that matches the language of the custom model.
     *
     * @return the corpus_name_serialized_name
     */
    public String corpusName() {
      return corpus_name_serialized_name;
    }
    /**
     * Gets the corpus_file_serialized_name.
     *
     * A plain text file that contains the training data for the corpus. Encode the file in UTF-8 if it contains non-ASCII characters; the service assumes UTF-8 encoding if it encounters non-ASCII characters. With cURL, use the `--data-binary` option to upload the file for the request.
     *
     * @return the corpus_file_serialized_name
     */
    public IBMWatsonFile corpusFile() {
      return corpus_file_serialized_name;
    }
    /**
     * Gets the corpus_filename_serialized_name.
     *
     * The filename for corpus_file.
     *
     * @return the corpus_filename_serialized_name
     */
    public String corpusFilename() {
      return corpus_filename_serialized_name;
    }
    /**
     * Gets the allow_overwrite_serialized_name.
     *
     * Indicates whether the specified corpus is to overwrite an existing corpus with the same name. If a corpus with the same name already exists, the request fails unless `allow_overwrite` is set to `true`; by default, the parameter is `false`. The parameter has no effect if a corpus with the same name does not already exist.
     *
     * @return the allow_overwrite_serialized_name
     */
    public Boolean allowOverwrite() {
      return allow_overwrite_serialized_name;
    }
    /**
     * Gets the corpus_file_content_type_serialized_name.
     *
     * The content type of corpus_file.
     *
     * @return the corpus_file_content_type_serialized_name
     */
    public String corpusFileContentType() {
      return corpus_file_content_type_serialized_name;
    }
    private AddCorpusOptions(AddCorpusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.corpus_name_serialized_name, 'corpus_name_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.corpus_file_serialized_name, 'corpus_file_serialized_name cannot be null');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      corpus_name_serialized_name = builder.corpus_name_serialized_name;
      corpus_file_serialized_name = builder.corpus_file_serialized_name;
      corpus_filename_serialized_name = builder.corpus_filename_serialized_name;
      allow_overwrite_serialized_name = builder.allow_overwrite_serialized_name;
      corpus_file_content_type_serialized_name = builder.corpus_file_content_type_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder newBuilder() {
      return new AddCorpusOptionsBuilder(this);
    }

  }

  /**
   * AddCorpusOptions Builder.
   */
  public class AddCorpusOptionsBuilder {
    private String customization_id_serialized_name;
    private String corpus_name_serialized_name;
    private IBMWatsonFile corpus_file_serialized_name;
    private String corpus_filename_serialized_name;
    private Boolean allow_overwrite_serialized_name;
    private String corpus_file_content_type_serialized_name;

    private AddCorpusOptionsBuilder(AddCorpusOptions addCorpusOptions) {
      customization_id_serialized_name = addCorpusOptions.customization_id_serialized_name;
      corpus_name_serialized_name = addCorpusOptions.corpus_name_serialized_name;
      corpus_file_serialized_name = addCorpusOptions.corpus_file_serialized_name;
      corpus_filename_serialized_name = addCorpusOptions.corpus_filename_serialized_name;
      allow_overwrite_serialized_name = addCorpusOptions.allow_overwrite_serialized_name;
      corpus_file_content_type_serialized_name = addCorpusOptions.corpus_file_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public AddCorpusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param corpusName the corpusName
     * @param corpusFile the corpusFile
     */
    public AddCorpusOptionsBuilder(String customizationId, String corpusName, IBMWatsonFile corpusFile) {
      this.customization_id_serialized_name = customizationId;
      this.corpus_name_serialized_name = corpusName;
      this.corpus_file_serialized_name = corpusFile;
    }

    /**
     * Builds a AddCorpusOptions.
     *
     * @return the addCorpusOptions
     */
    public AddCorpusOptions build() {
      return new AddCorpusOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the corpus_name_serialized_name.
     *
     * @param corpusName the corpusName
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder corpusName(String corpusName) {
      this.corpus_name_serialized_name = corpusName;
      return this;
    }

    /**
     * Set the corpus_file_serialized_name.
     *
     * @param corpusFile the corpusFile
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder corpusFile(IBMWatsonFile corpusFile) {
      this.corpus_file_serialized_name = corpusFile;
      return this;
    }

    /**
     * Set the corpus_filename_serialized_name.
     *
     * @param corpusFilename the corpusFilename
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder corpusFilename(String corpusFilename) {
      this.corpus_filename_serialized_name = corpusFilename;
      return this;
    }

    /**
     * Set the allow_overwrite_serialized_name.
     *
     * @param allowOverwrite the allowOverwrite
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder allowOverwrite(Boolean allowOverwrite) {
      this.allow_overwrite_serialized_name = allowOverwrite;
      return this;
    }

    /**
     * Set the corpus_file_content_type_serialized_name.
     *
     * @param corpusFileContentType the corpusFileContentType
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder corpusFileContentType(String corpusFileContentType) {
      this.corpus_file_content_type_serialized_name = corpusFileContentType;
      return this;
    }
  }

  /**
   * The addWord options.
   */
  public class AddWordOptions {
    private String customization_id_serialized_name;
    private String word_name_serialized_name;
    private String word_serialized_name;
    private List<String> sounds_like_serialized_name;
    private String display_as_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model to which a word is to be added. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_name_serialized_name.
     *
     * The custom word that is to be added to or updated in the custom model. Do not include spaces in the word. Use a - (dash) or _ (underscore) to connect the tokens of compound words.
     *
     * @return the word_name_serialized_name
     */
    public String wordName() {
      return word_name_serialized_name;
    }
    /**
     * Gets the word_serialized_name.
     *
     * **When specifying an array of one or more words,** you must specify the custom word that is to be added to or updated in the custom model. Do not include spaces in the word. Use a - (dash) or _ (underscore) to connect the tokens of compound words. **When adding or updating a single word directly,** omit this field.
     *
     * @return the word_serialized_name
     */
    public String word() {
      return word_serialized_name;
    }
    /**
     * Gets the sounds_like_serialized_name.
     *
     * An array of sounds-like pronunciations for the custom word. Specify how words that are difficult to pronounce, foreign words, acronyms, and so on can be pronounced by users. For a word that is not in the service's base vocabulary, omit the parameter to have the service automatically generate a sounds-like pronunciation for the word. For a word that is in the service's base vocabulary, use the parameter to specify additional pronunciations for the word. You cannot override the default pronunciation of a word; pronunciations you add augment the pronunciation from the base vocabulary. A word can have at most five sounds-like pronunciations, and a pronunciation can include at most 40 characters not including spaces.
     *
     * @return the sounds_like_serialized_name
     */
    public List<String> soundsLike() {
      return sounds_like_serialized_name;
    }
    /**
     * Gets the display_as_serialized_name.
     *
     * An alternative spelling for the custom word when it appears in a transcript. Use the parameter when you want the word to have a spelling that is different from its usual representation or from its spelling in corpora training data.
     *
     * @return the display_as_serialized_name
     */
    public String displayAs() {
      return display_as_serialized_name;
    }
    private AddWordOptions(AddWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.word_name_serialized_name, 'word_name_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_name_serialized_name = builder.word_name_serialized_name;
      word_serialized_name = builder.word_serialized_name;
      sounds_like_serialized_name = builder.sounds_like_serialized_name;
      display_as_serialized_name = builder.display_as_serialized_name;
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
  public class AddWordOptionsBuilder {
    private String customization_id_serialized_name;
    private String word_name_serialized_name;
    private String word_serialized_name;
    private List<String> sounds_like_serialized_name;
    private String display_as_serialized_name;

    private AddWordOptionsBuilder(AddWordOptions addWordOptions) {
      customization_id_serialized_name = addWordOptions.customization_id_serialized_name;
      word_name_serialized_name = addWordOptions.word_name_serialized_name;
      word_serialized_name = addWordOptions.word_serialized_name;
      sounds_like_serialized_name = addWordOptions.sounds_like_serialized_name;
      display_as_serialized_name = addWordOptions.display_as_serialized_name;
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
     * @param wordName the wordName
     */
    public AddWordOptionsBuilder(String customizationId, String wordName) {
      this.customization_id_serialized_name = customizationId;
      this.word_name_serialized_name = wordName;
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
     * Adds an soundsLike to sounds_like_serialized_name.
     *
     * @param soundsLike the new soundsLike
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder addSoundsLike(String soundsLike) {
      IBMWatsonValidator.notNull(soundsLike, 'soundsLike cannot be null');
      if (this.sounds_like_serialized_name == null) {
        this.sounds_like_serialized_name = new List<String>();
      }
      this.sounds_like_serialized_name.add(soundsLike);
      return this;
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
     * Set the word_name_serialized_name.
     *
     * @param wordName the wordName
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder wordName(String wordName) {
      this.word_name_serialized_name = wordName;
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
     * Set the sounds_like_serialized_name.
     * Existing sounds_like_serialized_name will be replaced.
     *
     * @param soundsLike the soundsLike
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder soundsLike(List<String> soundsLike) {
      this.sounds_like_serialized_name = soundsLike;
      return this;
    }

    /**
     * Set the display_as_serialized_name.
     *
     * @param displayAs the displayAs
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder displayAs(String displayAs) {
      this.display_as_serialized_name = displayAs;
      return this;
    }
  }

  /**
   * The addWords options.
   */
  public class AddWordsOptions {
    private String customization_id_serialized_name;
    private List<CustomWord> words_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model to which words are to be added. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the words_serialized_name.
     *
     * An array of objects that provides information about each custom word that is to be added to or updated in the custom language model.
     *
     * @return the words_serialized_name
     */
    public List<CustomWord> words() {
      return words_serialized_name;
    }
    private AddWordsOptions(AddWordsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.words_serialized_name, 'words_serialized_name cannot be null');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      words_serialized_name = builder.words_serialized_name;
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
  public class AddWordsOptionsBuilder {
    private String customization_id_serialized_name;
    private List<CustomWord> words_serialized_name;

    private AddWordsOptionsBuilder(AddWordsOptions addWordsOptions) {
      customization_id_serialized_name = addWordsOptions.customization_id_serialized_name;
      words_serialized_name = addWordsOptions.words_serialized_name;
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
     * @param words the words
     */
    public AddWordsOptionsBuilder(String customizationId, List<CustomWord> words) {
      this.customization_id_serialized_name = customizationId;
      this.words_serialized_name = words;
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
    public AddWordsOptionsBuilder addWords(CustomWord words) {
      IBMWatsonValidator.notNull(words, 'words cannot be null');
      if (this.words_serialized_name == null) {
        this.words_serialized_name = new List<CustomWord>();
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
    public AddWordsOptionsBuilder words(List<CustomWord> words) {
      this.words_serialized_name = words;
      return this;
    }
  }

  /**
   * AudioDetails.
   */
  public class AudioDetails extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String codec_serialized_name;
    private Long frequency_serialized_name;
    private String compression_serialized_name;
    /**
     * Gets the type_serialized_name.
     *
     * The type of the audio resource: * `audio` for an individual audio file * `archive` for an archive (**.zip** or **.tar.gz**) file that contains audio files.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the codec_serialized_name.
     *
     * **For an audio-type resource,** the codec in which the audio is encoded. Omitted for an archive-type resource.
     *
     * @return the codec_serialized_name
     */
    @AuraEnabled
    public String getCodec() {
      return codec_serialized_name;
    }
    /**
     * Gets the frequency_serialized_name.
     *
     * **For an audio-type resource,** the sampling rate of the audio in Hertz (samples per second). Omitted for an archive-type resource.
     *
     * @return the frequency_serialized_name
     */
    @AuraEnabled
    public Long getFrequency() {
      return frequency_serialized_name;
    }
    /**
     * Gets the compression_serialized_name.
     *
     * **For an archive-type resource,** the format of the compressed archive: * `zip` for a **.zip** file * `gzip` for a **.tar.gz** file   Omitted for an audio-type resource.
     *
     * @return the compression_serialized_name
     */
    @AuraEnabled
    public String getCompression() {
      return compression_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    /**
     * Sets the codec_serialized_name.
     *
     * @param codec the new codec
     */
    public void setCodec(final String codec) {
      this.codec_serialized_name = codec;
    }

    /**
     * Sets the frequency_serialized_name.
     *
     * @param frequency the new frequency
     */
    public void setFrequency(final long frequency) {
      this.frequency_serialized_name = frequency;
    }

    /**
     * Sets the compression_serialized_name.
     *
     * @param compression the new compression
     */
    public void setCompression(final String compression) {
      this.compression_serialized_name = compression;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AudioDetails ret = (AudioDetails) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * AudioListing.
   */
  public class AudioListing extends IBMWatsonGenericModel {
    private Double duration_serialized_name;
    private String name_serialized_name;
    private AudioDetails details_serialized_name;
    private String status_serialized_name;
    private AudioResource container_serialized_name;
    private List<AudioResource> audio_serialized_name;
    /**
     * Gets the duration_serialized_name.
     *
     * **For an audio-type resource,**  the total seconds of audio in the resource. Omitted for an archive-type resource.
     *
     * @return the duration_serialized_name
     */
    @AuraEnabled
    public Double getDuration() {
      return duration_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * **For an audio-type resource,** the name of the resource. Omitted for an archive-type resource.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the details_serialized_name.
     *
     * **For an audio-type resource,** an `AudioDetails` object that provides detailed information about the resource. The object is empty until the service finishes processing the audio. Omitted for an archive-type resource.
     *
     * @return the details_serialized_name
     */
    @AuraEnabled
    public AudioDetails getDetails() {
      return details_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * **For an audio-type resource,** the status of the resource: * `ok` indicates that the service has successfully analyzed the audio data. The data can be used to train the custom model. * `being_processed` indicates that the service is still analyzing the audio data. The service cannot accept requests to add new audio resources or to train the custom model until its analysis is complete. * `invalid` indicates that the audio data is not valid for training the custom model (possibly because it has the wrong format or sampling rate, or because it is corrupted).   Omitted for an archive-type resource.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the container_serialized_name.
     *
     * **For an archive-type resource,** an object of type `AudioResource` that provides information about the resource. Omitted for an audio-type resource.
     *
     * @return the container_serialized_name
     */
    @AuraEnabled
    public AudioResource getContainer() {
      return container_serialized_name;
    }
    /**
     * Gets the audio_serialized_name.
     *
     * **For an archive-type resource,** an array of `AudioResource` objects that provides information about the audio-type resources that are contained in the resource. Omitted for an audio-type resource.
     *
     * @return the audio_serialized_name
     */
    @AuraEnabled
    public List<AudioResource> getAudio() {
      return audio_serialized_name;
    }

    /**
     * Sets the duration_serialized_name.
     *
     * @param duration the new duration
     */
    public void setDuration(final Double duration) {
      this.duration_serialized_name = duration;
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
     * Sets the details_serialized_name.
     *
     * @param details the new details
     */
    public void setDetails(final AudioDetails details) {
      this.details_serialized_name = details;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the container_serialized_name.
     *
     * @param container the new container
     */
    public void setContainer(final AudioResource container) {
      this.container_serialized_name = container;
    }

    /**
     * Sets the audio_serialized_name.
     *
     * @param audio the new audio
     */
    public void setAudio(final List<AudioResource> audio) {
      this.audio_serialized_name = audio;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AudioListing ret = (AudioListing) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for details_serialized_name
      AudioDetails newDetails = (AudioDetails) new AudioDetails().deserialize(JSON.serialize(ret.getDetails()), (Map<String, Object>) jsonMap.get('details_serialized_name'), AudioDetails.class);
      ret.setDetails(newDetails);

      // calling custom deserializer for container_serialized_name
      AudioResource newContainer = (AudioResource) new AudioResource().deserialize(JSON.serialize(ret.getContainer()), (Map<String, Object>) jsonMap.get('container_serialized_name'), AudioResource.class);
      ret.setContainer(newContainer);

      // calling custom deserializer for audio_serialized_name
      List<AudioResource> newAudio = new List<AudioResource>();
      List<AudioResource> deserializedAudio = ret.getAudio();
      if (deserializedAudio != null) {
        for (Integer i = 0; i < deserializedAudio.size(); i++) {
          AudioResource currentItem = ret.getAudio().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('audio_serialized_name');
          AudioResource newItem = (AudioResource) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioResource.class);
          newAudio.add(newItem);
        }
        ret.setAudio(newAudio);
      }

      return ret;
    }
  }

  /**
   * AudioResource.
   */
  public class AudioResource extends IBMWatsonGenericModel {
    private Double duration_serialized_name;
    private String name_serialized_name;
    private AudioDetails details_serialized_name;
    private String status_serialized_name;
    /**
     * Gets the duration_serialized_name.
     *
     * The total seconds of audio in the audio resource.
     *
     * @return the duration_serialized_name
     */
    @AuraEnabled
    public Double getDuration() {
      return duration_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the audio resource.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the details_serialized_name.
     *
     * An `AudioDetails` object that provides detailed information about the audio resource. The object is empty until the service finishes processing the audio.
     *
     * @return the details_serialized_name
     */
    @AuraEnabled
    public AudioDetails getDetails() {
      return details_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The status of the audio resource: * `ok` indicates that the service has successfully analyzed the audio data. The data can be used to train the custom model. * `being_processed` indicates that the service is still analyzing the audio data. The service cannot accept requests to add new audio resources or to train the custom model until its analysis is complete. * `invalid` indicates that the audio data is not valid for training the custom model (possibly because it has the wrong format or sampling rate, or because it is corrupted). For an archive file, the entire archive is invalid if any of its audio files are invalid.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }

    /**
     * Sets the duration_serialized_name.
     *
     * @param duration the new duration
     */
    public void setDuration(final Double duration) {
      this.duration_serialized_name = duration;
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
     * Sets the details_serialized_name.
     *
     * @param details the new details
     */
    public void setDetails(final AudioDetails details) {
      this.details_serialized_name = details;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AudioResource ret = (AudioResource) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for details_serialized_name
      AudioDetails newDetails = (AudioDetails) new AudioDetails().deserialize(JSON.serialize(ret.getDetails()), (Map<String, Object>) jsonMap.get('details_serialized_name'), AudioDetails.class);
      ret.setDetails(newDetails);

      return ret;
    }
  }

  /**
   * AudioResources.
   */
  public class AudioResources extends IBMWatsonGenericModel {
    private Double total_minutes_of_audio_serialized_name;
    private List<AudioResource> audio_serialized_name;
    /**
     * Gets the total_minutes_of_audio_serialized_name.
     *
     * The total minutes of accumulated audio summed over all of the valid audio resources for the custom acoustic model. You can use this value to determine whether the custom model has too little or too much audio to begin training.
     *
     * @return the total_minutes_of_audio_serialized_name
     */
    @AuraEnabled
    public Double getTotalMinutesOfAudio() {
      return total_minutes_of_audio_serialized_name;
    }
    /**
     * Gets the audio_serialized_name.
     *
     * An array of `AudioResource` objects that provides information about the audio resources of the custom acoustic model. The array is empty if the custom model has no audio resources.
     *
     * @return the audio_serialized_name
     */
    @AuraEnabled
    public List<AudioResource> getAudio() {
      return audio_serialized_name;
    }

    /**
     * Sets the total_minutes_of_audio_serialized_name.
     *
     * @param totalMinutesOfAudio the new totalMinutesOfAudio
     */
    public void setTotalMinutesOfAudio(final Double totalMinutesOfAudio) {
      this.total_minutes_of_audio_serialized_name = totalMinutesOfAudio;
    }

    /**
     * Sets the audio_serialized_name.
     *
     * @param audio the new audio
     */
    public void setAudio(final List<AudioResource> audio) {
      this.audio_serialized_name = audio;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AudioResources ret = (AudioResources) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for audio_serialized_name
      List<AudioResource> newAudio = new List<AudioResource>();
      List<AudioResource> deserializedAudio = ret.getAudio();
      if (deserializedAudio != null) {
        for (Integer i = 0; i < deserializedAudio.size(); i++) {
          AudioResource currentItem = ret.getAudio().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('audio_serialized_name');
          AudioResource newItem = (AudioResource) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioResource.class);
          newAudio.add(newItem);
        }
        ret.setAudio(newAudio);
      }

      return ret;
    }
  }

  /**
   * The checkJob options.
   */
  public class CheckJobOptions {
    private String id_serialized_name;
    /**
     * Gets the id_serialized_name.
     *
     * The ID of the job whose status is to be checked.
     *
     * @return the id_serialized_name
     */
    public String id() {
      return id_serialized_name;
    }
    private CheckJobOptions(CheckJobOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.id_serialized_name, 'id_serialized_name cannot be empty');
      id_serialized_name = builder.id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CheckJobOptions builder
     */
    public CheckJobOptionsBuilder newBuilder() {
      return new CheckJobOptionsBuilder(this);
    }

  }

  /**
   * CheckJobOptions Builder.
   */
  public class CheckJobOptionsBuilder {
    private String id_serialized_name;

    private CheckJobOptionsBuilder(CheckJobOptions checkJobOptions) {
      id_serialized_name = checkJobOptions.id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CheckJobOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param id the id
     */
    public CheckJobOptionsBuilder(String id) {
      this.id_serialized_name = id;
    }

    /**
     * Builds a CheckJobOptions.
     *
     * @return the checkJobOptions
     */
    public CheckJobOptions build() {
      return new CheckJobOptions(this);
    }

    /**
     * Set the id_serialized_name.
     *
     * @param id the id
     * @return the CheckJobOptions builder
     */
    public CheckJobOptionsBuilder id(String id) {
      this.id_serialized_name = id;
      return this;
    }
  }

  /**
   * The checkJobs options.
   */
  public class CheckJobsOptions {
    private CheckJobsOptions(CheckJobsOptionsBuilder builder) {
    }

    /**
     * New builder.
     *
     * @return a CheckJobsOptions builder
     */
    public CheckJobsOptionsBuilder newBuilder() {
      return new CheckJobsOptionsBuilder(this);
    }

  }

  /**
   * CheckJobsOptions Builder.
   */
  public class CheckJobsOptionsBuilder {

    private CheckJobsOptionsBuilder(CheckJobsOptions checkJobsOptions) {
    }

    /**
     * Instantiates a new builder.
     */
    public CheckJobsOptionsBuilder() {
    }

    /**
     * Builds a CheckJobsOptions.
     *
     * @return the checkJobsOptions
     */
    public CheckJobsOptions build() {
      return new CheckJobsOptions(this);
    }
  }

  /**
   * Corpora.
   */
  public class Corpora extends IBMWatsonGenericModel {
    private List<Corpus> corpora_serialized_name;
    /**
     * Gets the corpora_serialized_name.
     *
     * Information about corpora of the custom model. The array is empty if the custom model has no corpora.
     *
     * @return the corpora_serialized_name
     */
    @AuraEnabled
    public List<Corpus> getCorpora() {
      return corpora_serialized_name;
    }

    /**
     * Sets the corpora_serialized_name.
     *
     * @param corpora the new corpora
     */
    public void setCorpora(final List<Corpus> corpora) {
      this.corpora_serialized_name = corpora;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Corpora ret = (Corpora) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for corpora_serialized_name
      List<Corpus> newCorpora = new List<Corpus>();
      List<Corpus> deserializedCorpora = ret.getCorpora();
      if (deserializedCorpora != null) {
        for (Integer i = 0; i < deserializedCorpora.size(); i++) {
          Corpus currentItem = ret.getCorpora().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('corpora_serialized_name');
          Corpus newItem = (Corpus) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Corpus.class);
          newCorpora.add(newItem);
        }
        ret.setCorpora(newCorpora);
      }

      return ret;
    }
  }

  /**
   * Corpus.
   */
  public class Corpus extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private Long total_words_serialized_name;
    private Long out_of_vocabulary_words_serialized_name;
    private String status_serialized_name;
    private String error_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * The name of the corpus.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the total_words_serialized_name.
     *
     * The total number of words in the corpus. The value is `0` while the corpus is being processed.
     *
     * @return the total_words_serialized_name
     */
    @AuraEnabled
    public Long getTotalWords() {
      return total_words_serialized_name;
    }
    /**
     * Gets the out_of_vocabulary_words_serialized_name.
     *
     * The number of OOV words in the corpus. The value is `0` while the corpus is being processed.
     *
     * @return the out_of_vocabulary_words_serialized_name
     */
    @AuraEnabled
    public Long getOutOfVocabularyWords() {
      return out_of_vocabulary_words_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The status of the corpus: * `analyzed` indicates that the service has successfully analyzed the corpus; the custom model can be trained with data from the corpus. * `being_processed` indicates that the service is still analyzing the corpus; the service cannot accept requests to add new corpora or words, or to train the custom model. * `undetermined` indicates that the service encountered an error while processing the corpus.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the error_serialized_name.
     *
     * If the status of the corpus is `undetermined`, the following message: `Analysis of corpus 'name' failed. Please try adding the corpus again by setting the 'allow_overwrite' flag to 'true'`.
     *
     * @return the error_serialized_name
     */
    @AuraEnabled
    public String getError() {
      return error_serialized_name;
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
     * Sets the total_words_serialized_name.
     *
     * @param totalWords the new totalWords
     */
    public void setTotalWords(final long totalWords) {
      this.total_words_serialized_name = totalWords;
    }

    /**
     * Sets the out_of_vocabulary_words_serialized_name.
     *
     * @param outOfVocabularyWords the new outOfVocabularyWords
     */
    public void setOutOfVocabularyWords(final long outOfVocabularyWords) {
      this.out_of_vocabulary_words_serialized_name = outOfVocabularyWords;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the error_serialized_name.
     *
     * @param error the new error
     */
    public void setError(final String error) {
      this.error_serialized_name = error;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Corpus ret = (Corpus) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The createAcousticModel options.
   */
  public class CreateAcousticModelOptions {
    private String name_serialized_name;
    private String base_model_name_serialized_name;
    private String description_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * A user-defined name for the new custom acoustic model. Use a name that is unique among all custom acoustic models that you own. Use a localized name that matches the language of the custom model. Use a name that describes the acoustic environment of the custom model, such as `Mobile custom model` or `Noisy car custom model`.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the base_model_name_serialized_name.
     *
     * The name of the base language model that is to be customized by the new custom acoustic model. The new custom model can be used only with the base model that it customizes. To determine whether a base model supports acoustic model customization, refer to [Language support for customization](https://console.bluemix.net/docs/services/speech-to-text/custom.html#languageSupport).
     *
     * @return the base_model_name_serialized_name
     */
    public String baseModelName() {
      return base_model_name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * A description of the new custom acoustic model. Use a localized description that matches the language of the custom model.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    private CreateAcousticModelOptions(CreateAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name_serialized_name, 'name_serialized_name cannot be null');
      IBMWatsonValidator.notNull(builder.base_model_name_serialized_name, 'base_model_name_serialized_name cannot be null');
      name_serialized_name = builder.name_serialized_name;
      base_model_name_serialized_name = builder.base_model_name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder newBuilder() {
      return new CreateAcousticModelOptionsBuilder(this);
    }

  }

  /**
   * CreateAcousticModelOptions Builder.
   */
  public class CreateAcousticModelOptionsBuilder {
    private String name_serialized_name;
    private String base_model_name_serialized_name;
    private String description_serialized_name;

    private CreateAcousticModelOptionsBuilder(CreateAcousticModelOptions createAcousticModelOptions) {
      name_serialized_name = createAcousticModelOptions.name_serialized_name;
      base_model_name_serialized_name = createAcousticModelOptions.base_model_name_serialized_name;
      description_serialized_name = createAcousticModelOptions.description_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateAcousticModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param name the name
     * @param baseModelName the baseModelName
     */
    public CreateAcousticModelOptionsBuilder(String name, String baseModelName) {
      this.name_serialized_name = name;
      this.base_model_name_serialized_name = baseModelName;
    }

    /**
     * Builds a CreateAcousticModelOptions.
     *
     * @return the createAcousticModelOptions
     */
    public CreateAcousticModelOptions build() {
      return new CreateAcousticModelOptions(this);
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the base_model_name_serialized_name.
     *
     * @param baseModelName the baseModelName
     * @return the CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder baseModelName(String baseModelName) {
      this.base_model_name_serialized_name = baseModelName;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }
  }

  /**
   * The createJob options.
   */
  public class CreateJobOptions {
    private String content_type_serialized_name;
    private String model_serialized_name;
    private String callback_url_serialized_name;
    private String events_serialized_name;
    private String user_token_serialized_name;
    private Long results_ttl_serialized_name;
    private String customization_id_serialized_name;
    private String acoustic_customization_id_serialized_name;
    private Double customization_weight_serialized_name;
    private String version_serialized_name;
    private Long inactivity_timeout_serialized_name;
    private List<String> keywords_serialized_name;
    private Double keywords_threshold_serialized_name;
    private Long max_alternatives_serialized_name;
    private Double word_alternatives_threshold_serialized_name;
    private Boolean word_confidence_serialized_name;
    private Boolean timestamps_serialized_name;
    private Boolean profanity_filter_serialized_name;
    private Boolean smart_formatting_serialized_name;
    private Boolean speaker_labels_serialized_name;
    private IBMWatsonFile audio_serialized_name;
    private String audio_filename_serialized_name;

    /**
     * Gets the content_type_serialized_name.
     *
     * The type of the input: audio/basic, audio/flac, audio/l16, audio/mp3, audio/mpeg, audio/mulaw, audio/ogg, audio/ogg;codecs=opus, audio/ogg;codecs=vorbis, audio/wav, audio/webm, audio/webm;codecs=opus, or audio/webm;codecs=vorbis.
     *
     * @return the content_type_serialized_name
     */
    public String contentType() {
      return content_type_serialized_name;
    }
    /**
     * Gets the model_serialized_name.
     *
     * The identifier of the model to be used for the recognition request. (Use `GET /v1/models` for a list of available models.).
     *
     * @return the model_serialized_name
     */
    public String model() {
      return model_serialized_name;
    }
    /**
     * Gets the callback_url_serialized_name.
     *
     * A URL to which callback notifications are to be sent. The URL must already be successfully white-listed by using the `POST /v1/register_callback` method. Omit the parameter to poll the service for job completion and results. You can include the same callback URL with any number of job creation requests. Use the `user_token` query parameter to specify a unique user-specified string with each job to differentiate the callback notifications for the jobs.
     *
     * @return the callback_url_serialized_name
     */
    public String callbackUrl() {
      return callback_url_serialized_name;
    }
    /**
     * Gets the events_serialized_name.
     *
     * If the job includes a callback URL, a comma-separated list of notification events to which to subscribe. Valid events are: `recognitions.started` generates a callback notification when the service begins to process the job. `recognitions.completed` generates a callback notification when the job is complete; you must use the `GET /v1/recognitions/{id}` method to retrieve the results before they time out or are deleted. `recognitions.completed_with_results` generates a callback notification when the job is complete; the notification includes the results of the request. `recognitions.failed` generates a callback notification if the service experiences an error while processing the job. Omit the parameter to subscribe to the default events: `recognitions.started`, `recognitions.completed`, and `recognitions.failed`. The `recognitions.completed` and `recognitions.completed_with_results` events are incompatible; you can specify only of the two events. If the job does not include a callback URL, omit the parameter.
     *
     * @return the events_serialized_name
     */
    public String events() {
      return events_serialized_name;
    }
    /**
     * Gets the user_token_serialized_name.
     *
     * If the job includes a callback URL, a user-specified string that the service is to include with each callback notification for the job; the token allows the user to maintain an internal mapping between jobs and notification events. If the job does not include a callback URL, omit the parameter.
     *
     * @return the user_token_serialized_name
     */
    public String userToken() {
      return user_token_serialized_name;
    }
    /**
     * Gets the results_ttl_serialized_name.
     *
     * The number of minutes for which the results are to be available after the job has finished. If not delivered via a callback, the results must be retrieved within this time. Omit the parameter to use a time to live of one week. The parameter is valid with or without a callback URL.
     *
     * @return the results_ttl_serialized_name
     */
    public Long resultsTtl() {
      return results_ttl_serialized_name;
    }
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of a custom language model that is to be used with the request. The base model of the specified custom language model must match the model specified with the `model` parameter. You must make the request with service credentials created for the instance of the service that owns the custom model. By default, no custom language model is used.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the acoustic_customization_id_serialized_name.
     *
     * The GUID of a custom acoustic model that is to be used with the request. The base model of the specified custom acoustic model must match the model specified with the `model` parameter. You must make the request with service credentials created for the instance of the service that owns the custom model. By default, no custom acoustic model is used.
     *
     * @return the acoustic_customization_id_serialized_name
     */
    public String acousticCustomizationId() {
      return acoustic_customization_id_serialized_name;
    }
    /**
     * Gets the customization_weight_serialized_name.
     *
     * If you specify a `customization_id` with the request, you can use the `customization_weight` parameter to tell the service how much weight to give to words from the custom language model compared to those from the base model for speech recognition.   Specify a value between 0.0 and 1.0. Unless a different customization weight was specified for the custom model when it was trained, the default value is 0.3. A customization weight that you specify overrides a weight that was specified when the custom model was trained.   The default value yields the best performance in general. Assign a higher value if your audio makes frequent use of OOV words from the custom model. Use caution when setting the weight: a higher value can improve the accuracy of phrases from the custom model's domain, but it can negatively affect  performance on non-domain phrases.
     *
     * @return the customization_weight_serialized_name
     */
    public Double customizationWeight() {
      return customization_weight_serialized_name;
    }
    /**
     * Gets the version_serialized_name.
     *
     * The version of the specified base `model` that is to be used with the request. Multiple versions of a base model can exist when a model is updated for internal improvements. The parameter is intended primarily for use with custom models that have been upgraded for a new base model. The default value depends on whether the parameter is used with or without a custom model. For more information, see [Base model version](https://console.bluemix.net/docs/services/speech-to-text/input.html#version).
     *
     * @return the version_serialized_name
     */
    public String version() {
      return version_serialized_name;
    }
    /**
     * Gets the inactivity_timeout_serialized_name.
     *
     * The time in seconds after which, if only silence (no speech) is detected in submitted audio, the connection is closed with a 400 error. Useful for stopping audio submission from a live microphone when a user simply walks away. Use `-1` for infinity.
     *
     * @return the inactivity_timeout_serialized_name
     */
    public Long inactivityTimeout() {
      return inactivity_timeout_serialized_name;
    }
    /**
     * Gets the keywords_serialized_name.
     *
     * Array of keyword strings to spot in the audio. Each keyword string can include one or more tokens. Keywords are spotted only in the final hypothesis, not in interim results. If you specify any keywords, you must also specify a keywords threshold. Omit the parameter or specify an empty array if you do not need to spot keywords.
     *
     * @return the keywords_serialized_name
     */
    public List<String> keywords() {
      return keywords_serialized_name;
    }
    /**
     * Gets the keywords_threshold_serialized_name.
     *
     * Confidence value that is the lower bound for spotting a keyword. A word is considered to match a keyword if its confidence is greater than or equal to the threshold. Specify a probability between 0 and 1 inclusive. No keyword spotting is performed if you omit the parameter. If you specify a threshold, you must also specify one or more keywords.
     *
     * @return the keywords_threshold_serialized_name
     */
    public Double keywordsThreshold() {
      return keywords_threshold_serialized_name;
    }
    /**
     * Gets the max_alternatives_serialized_name.
     *
     * Maximum number of alternative transcripts to be returned. By default, a single transcription is returned.
     *
     * @return the max_alternatives_serialized_name
     */
    public Long maxAlternatives() {
      return max_alternatives_serialized_name;
    }
    /**
     * Gets the word_alternatives_threshold_serialized_name.
     *
     * Confidence value that is the lower bound for identifying a hypothesis as a possible word alternative (also known as "Confusion Networks"). An alternative word is considered if its confidence is greater than or equal to the threshold. Specify a probability between 0 and 1 inclusive. No alternative words are computed if you omit the parameter.
     *
     * @return the word_alternatives_threshold_serialized_name
     */
    public Double wordAlternativesThreshold() {
      return word_alternatives_threshold_serialized_name;
    }
    /**
     * Gets the word_confidence_serialized_name.
     *
     * If `true`, confidence measure per word is returned.
     *
     * @return the word_confidence_serialized_name
     */
    public Boolean wordConfidence() {
      return word_confidence_serialized_name;
    }
    /**
     * Gets the timestamps_serialized_name.
     *
     * If `true`, time alignment for each word is returned.
     *
     * @return the timestamps_serialized_name
     */
    public Boolean timestamps() {
      return timestamps_serialized_name;
    }
    /**
     * Gets the profanity_filter_serialized_name.
     *
     * If `true` (the default), filters profanity from all output except for keyword results by replacing inappropriate words with a series of asterisks. Set the parameter to `false` to return results with no censoring. Applies to US English transcription only.
     *
     * @return the profanity_filter_serialized_name
     */
    public Boolean profanityFilter() {
      return profanity_filter_serialized_name;
    }
    /**
     * Gets the smart_formatting_serialized_name.
     *
     * If `true`, converts dates, times, series of digits and numbers, phone numbers, currency values, and Internet addresses into more readable, conventional representations in the final transcript of a recognition request. If `false` (the default), no formatting is performed. Applies to US English transcription only.
     *
     * @return the smart_formatting_serialized_name
     */
    public Boolean smartFormatting() {
      return smart_formatting_serialized_name;
    }
    /**
     * Gets the speaker_labels_serialized_name.
     *
     * Indicates whether labels that identify which words were spoken by which participants in a multi-person exchange are to be included in the response. The default is `false`; no speaker labels are returned. Setting `speaker_labels` to `true` forces the `timestamps` parameter to be `true`, regardless of whether you specify `false` for the parameter.   To determine whether a language model supports speaker labels, use the `GET /v1/models` method and check that the attribute `speaker_labels` is set to `true`. You can also refer to [Speaker labels](https://console.bluemix.net/docs/services/speech-to-text/output.html#speaker_labels).
     *
     * @return the speaker_labels_serialized_name
     */
    public Boolean speakerLabels() {
      return speaker_labels_serialized_name;
    }
    public IBMWatsonFile audio() {
      return audio_serialized_name;
    }

    public String audioFilename() {
      return audio_filename_serialized_name;
    }

    private CreateJobOptions(CreateJobOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.content_type_serialized_name != null, 'content_type_serialized_name cannot be null');
      IBMWatsonValidator.notNull(builder.audio_serialized_name, 'audio cannot be null');
      IBMWatsonValidator.notEmpty(builder.audio_filename_serialized_name, 'audioFilename cannot be null');
      audio_serialized_name = builder.audio_serialized_name;
      audio_filename_serialized_name = builder.audio_filename_serialized_name;
      content_type_serialized_name = builder.content_type_serialized_name;
      model_serialized_name = builder.model_serialized_name;
      callback_url_serialized_name = builder.callback_url_serialized_name;
      events_serialized_name = builder.events_serialized_name;
      user_token_serialized_name = builder.user_token_serialized_name;
      results_ttl_serialized_name = builder.results_ttl_serialized_name;
      customization_id_serialized_name = builder.customization_id_serialized_name;
      acoustic_customization_id_serialized_name = builder.acoustic_customization_id_serialized_name;
      customization_weight_serialized_name = builder.customization_weight_serialized_name;
      version_serialized_name = builder.version_serialized_name;
      inactivity_timeout_serialized_name = builder.inactivity_timeout_serialized_name;
      keywords_serialized_name = builder.keywords_serialized_name;
      keywords_threshold_serialized_name = builder.keywords_threshold_serialized_name;
      max_alternatives_serialized_name = builder.max_alternatives_serialized_name;
      word_alternatives_threshold_serialized_name = builder.word_alternatives_threshold_serialized_name;
      word_confidence_serialized_name = builder.word_confidence_serialized_name;
      timestamps_serialized_name = builder.timestamps_serialized_name;
      profanity_filter_serialized_name = builder.profanity_filter_serialized_name;
      smart_formatting_serialized_name = builder.smart_formatting_serialized_name;
      speaker_labels_serialized_name = builder.speaker_labels_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateJobOptions builder
     */
    public CreateJobOptionsBuilder newBuilder() {
      return new CreateJobOptionsBuilder(this);
    }

  }

  /**
   * CreateJobOptions Builder.
   */
  public class CreateJobOptionsBuilder {
    private String content_type_serialized_name;
    private String model_serialized_name;
    private String callback_url_serialized_name;
    private String events_serialized_name;
    private String user_token_serialized_name;
    private Long results_ttl_serialized_name;
    private String customization_id_serialized_name;
    private String acoustic_customization_id_serialized_name;
    private Double customization_weight_serialized_name;
    private String version_serialized_name;
    private Long inactivity_timeout_serialized_name;
    private List<String> keywords_serialized_name;
    private Double keywords_threshold_serialized_name;
    private Long max_alternatives_serialized_name;
    private Double word_alternatives_threshold_serialized_name;
    private Boolean word_confidence_serialized_name;
    private Boolean timestamps_serialized_name;
    private Boolean profanity_filter_serialized_name;
    private Boolean smart_formatting_serialized_name;
    private Boolean speaker_labels_serialized_name;
    private IBMWatsonFile audio_serialized_name;
    private String audio_filename_serialized_name;

    private CreateJobOptionsBuilder(CreateJobOptions createJobOptions) {
      content_type_serialized_name = createJobOptions.content_type_serialized_name;
      model_serialized_name = createJobOptions.model_serialized_name;
      callback_url_serialized_name = createJobOptions.callback_url_serialized_name;
      events_serialized_name = createJobOptions.events_serialized_name;
      user_token_serialized_name = createJobOptions.user_token_serialized_name;
      results_ttl_serialized_name = createJobOptions.results_ttl_serialized_name;
      customization_id_serialized_name = createJobOptions.customization_id_serialized_name;
      acoustic_customization_id_serialized_name = createJobOptions.acoustic_customization_id_serialized_name;
      customization_weight_serialized_name = createJobOptions.customization_weight_serialized_name;
      version_serialized_name = createJobOptions.version_serialized_name;
      inactivity_timeout_serialized_name = createJobOptions.inactivity_timeout_serialized_name;
      keywords_serialized_name = createJobOptions.keywords_serialized_name;
      keywords_threshold_serialized_name = createJobOptions.keywords_threshold_serialized_name;
      max_alternatives_serialized_name = createJobOptions.max_alternatives_serialized_name;
      word_alternatives_threshold_serialized_name = createJobOptions.word_alternatives_threshold_serialized_name;
      word_confidence_serialized_name = createJobOptions.word_confidence_serialized_name;
      timestamps_serialized_name = createJobOptions.timestamps_serialized_name;
      profanity_filter_serialized_name = createJobOptions.profanity_filter_serialized_name;
      smart_formatting_serialized_name = createJobOptions.smart_formatting_serialized_name;
      speaker_labels_serialized_name = createJobOptions.speaker_labels_serialized_name;
      audio_serialized_name = createJobOptions.audio_serialized_name;
      audio_filename_serialized_name = createJobOptions.audio_filename_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateJobOptionsBuilder() {
    }

    /**
     * Builds a CreateJobOptions.
     *
     * @return the createJobOptions
     */
    public CreateJobOptions build() {
      return new CreateJobOptions(this);
    }

    /**
     * Adds an keywords to keywords_serialized_name.
     *
     * @param keywords the new keywords
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder addKeywords(String keywords) {
      IBMWatsonValidator.notNull(keywords, 'keywords cannot be null');
      if (this.keywords_serialized_name == null) {
        this.keywords_serialized_name = new List<String>();
      }
      this.keywords_serialized_name.add(keywords);
      return this;
    }

    /**
     * Set the model_serialized_name.
     *
     * @param model the model
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder model(String model) {
      this.model_serialized_name = model;
      return this;
    }

    /**
     * Set the callback_url_serialized_name.
     *
     * @param callbackUrl the callbackUrl
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder callbackUrl(String callbackUrl) {
      this.callback_url_serialized_name = callbackUrl;
      return this;
    }

    /**
     * Set the events_serialized_name.
     *
     * @param events the events
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder events(String events) {
      this.events_serialized_name = events;
      return this;
    }

    /**
     * Set the user_token_serialized_name.
     *
     * @param userToken the userToken
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder userToken(String userToken) {
      this.user_token_serialized_name = userToken;
      return this;
    }

    /**
     * Set the results_ttl_serialized_name.
     *
     * @param resultsTtl the resultsTtl
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder resultsTtl(Long resultsTtl) {
      this.results_ttl_serialized_name = resultsTtl;
      return this;
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the acoustic_customization_id_serialized_name.
     *
     * @param acousticCustomizationId the acousticCustomizationId
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder acousticCustomizationId(String acousticCustomizationId) {
      this.acoustic_customization_id_serialized_name = acousticCustomizationId;
      return this;
    }

    /**
     * Set the customization_weight_serialized_name.
     *
     * @param customizationWeight the customizationWeight
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder customizationWeight(Double customizationWeight) {
      this.customization_weight_serialized_name = customizationWeight;
      return this;
    }

    /**
     * Set the version_serialized_name.
     *
     * @param version the version
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder version(String version) {
      this.version_serialized_name = version;
      return this;
    }

    /**
     * Set the inactivity_timeout_serialized_name.
     *
     * @param inactivityTimeout the inactivityTimeout
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder inactivityTimeout(Long inactivityTimeout) {
      this.inactivity_timeout_serialized_name = inactivityTimeout;
      return this;
    }

    /**
     * Set the keywords_serialized_name.
     * Existing keywords_serialized_name will be replaced.
     *
     * @param keywords the keywords
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder keywords(List<String> keywords) {
      this.keywords_serialized_name = keywords;
      return this;
    }

    /**
     * Set the keywords_threshold_serialized_name.
     *
     * @param keywordsThreshold the keywordsThreshold
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder keywordsThreshold(Double keywordsThreshold) {
      this.keywords_threshold_serialized_name = keywordsThreshold;
      return this;
    }

    /**
     * Set the max_alternatives_serialized_name.
     *
     * @param maxAlternatives the maxAlternatives
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder maxAlternatives(Long maxAlternatives) {
      this.max_alternatives_serialized_name = maxAlternatives;
      return this;
    }

    /**
     * Set the word_alternatives_threshold_serialized_name.
     *
     * @param wordAlternativesThreshold the wordAlternativesThreshold
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder wordAlternativesThreshold(Double wordAlternativesThreshold) {
      this.word_alternatives_threshold_serialized_name = wordAlternativesThreshold;
      return this;
    }

    /**
     * Set the word_confidence_serialized_name.
     *
     * @param wordConfidence the wordConfidence
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder wordConfidence(Boolean wordConfidence) {
      this.word_confidence_serialized_name = wordConfidence;
      return this;
    }

    /**
     * Set the timestamps_serialized_name.
     *
     * @param timestamps the timestamps
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder timestamps(Boolean timestamps) {
      this.timestamps_serialized_name = timestamps;
      return this;
    }

    /**
     * Set the profanity_filter_serialized_name.
     *
     * @param profanityFilter the profanityFilter
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder profanityFilter(Boolean profanityFilter) {
      this.profanity_filter_serialized_name = profanityFilter;
      return this;
    }

    /**
     * Set the smart_formatting_serialized_name.
     *
     * @param smartFormatting the smartFormatting
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder smartFormatting(Boolean smartFormatting) {
      this.smart_formatting_serialized_name = smartFormatting;
      return this;
    }

    /**
     * Set the speaker_labels_serialized_name.
     *
     * @param speakerLabels the speakerLabels
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder speakerLabels(Boolean speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
      return this;
    }

    public CreateJobOptionsBuilder audio(IBMWatsonFile audio) {
      this.audio_serialized_name = audio;
      this.content_type_serialized_name = audio.contentType();
      return this;
    }

    public CreateJobOptionsBuilder audioFilename(String audioFilename) {
      this.audio_filename_serialized_name = audioFilename;
      return this;
    }
  }

  /**
   * The createLanguageModel options.
   */
  public class CreateLanguageModelOptions {
    private String name_serialized_name;
    private String base_model_name_serialized_name;
    private String dialect_serialized_name;
    private String description_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * A user-defined name for the new custom language model. Use a name that is unique among all custom language models that you own. Use a localized name that matches the language of the custom model. Use a name that describes the domain of the custom model, such as `Medical custom model` or `Legal custom model`.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the base_model_name_serialized_name.
     *
     * The name of the base language model that is to be customized by the new custom language model. The new custom model can be used only with the base model that it customizes. To determine whether a base model supports language model customization, request information about the base model and check that the attribute `custom_language_model` is set to `true`, or refer to [Language support for customization](https://console.bluemix.net/docs/services/speech-to-text/custom.html#languageSupport).
     *
     * @return the base_model_name_serialized_name
     */
    public String baseModelName() {
      return base_model_name_serialized_name;
    }
    /**
     * Gets the dialect_serialized_name.
     *
     * The dialect of the specified language that is to be used with the custom language model. The parameter is meaningful only for Spanish models, for which the service creates a custom language model that is suited for speech in one of the following dialects: * `es-ES` for Castilian Spanish (the default) * `es-LA` for Latin American Spanish * `es-US` for North American (Mexican) Spanish   A specified dialect must be valid for the base model. By default, the dialect matches the language of the base model; for example, `en-US` for either of the US English language models.
     *
     * @return the dialect_serialized_name
     */
    public String dialect() {
      return dialect_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * A description of the new custom language model. Use a localized description that matches the language of the custom model.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    private CreateLanguageModelOptions(CreateLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name_serialized_name, 'name_serialized_name cannot be null');
      IBMWatsonValidator.notNull(builder.base_model_name_serialized_name, 'base_model_name_serialized_name cannot be null');
      name_serialized_name = builder.name_serialized_name;
      base_model_name_serialized_name = builder.base_model_name_serialized_name;
      dialect_serialized_name = builder.dialect_serialized_name;
      description_serialized_name = builder.description_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder newBuilder() {
      return new CreateLanguageModelOptionsBuilder(this);
    }

  }

  /**
   * CreateLanguageModelOptions Builder.
   */
  public class CreateLanguageModelOptionsBuilder {
    private String name_serialized_name;
    private String base_model_name_serialized_name;
    private String dialect_serialized_name;
    private String description_serialized_name;

    private CreateLanguageModelOptionsBuilder(CreateLanguageModelOptions createLanguageModelOptions) {
      name_serialized_name = createLanguageModelOptions.name_serialized_name;
      base_model_name_serialized_name = createLanguageModelOptions.base_model_name_serialized_name;
      dialect_serialized_name = createLanguageModelOptions.dialect_serialized_name;
      description_serialized_name = createLanguageModelOptions.description_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateLanguageModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param name the name
     * @param baseModelName the baseModelName
     */
    public CreateLanguageModelOptionsBuilder(String name, String baseModelName) {
      this.name_serialized_name = name;
      this.base_model_name_serialized_name = baseModelName;
    }

    /**
     * Builds a CreateLanguageModelOptions.
     *
     * @return the createLanguageModelOptions
     */
    public CreateLanguageModelOptions build() {
      return new CreateLanguageModelOptions(this);
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the base_model_name_serialized_name.
     *
     * @param baseModelName the baseModelName
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder baseModelName(String baseModelName) {
      this.base_model_name_serialized_name = baseModelName;
      return this;
    }

    /**
     * Set the dialect_serialized_name.
     *
     * @param dialect the dialect
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder dialect(String dialect) {
      this.dialect_serialized_name = dialect;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }
  }

  /**
   * CustomWord.
   */
  public class CustomWord extends IBMWatsonGenericModel {
    private String word_serialized_name;
    private List<String> sounds_like_serialized_name;
    private String display_as_serialized_name;
    /**
     * Gets the word_serialized_name.
     *
     * **When specifying an array of one or more words,** you must specify the custom word that is to be added to or updated in the custom model. Do not include spaces in the word. Use a - (dash) or _ (underscore) to connect the tokens of compound words. **When adding or updating a single word directly,** omit this field.
     *
     * @return the word_serialized_name
     */
    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }
    /**
     * Gets the sounds_like_serialized_name.
     *
     * An array of sounds-like pronunciations for the custom word. Specify how words that are difficult to pronounce, foreign words, acronyms, and so on can be pronounced by users. For a word that is not in the service's base vocabulary, omit the parameter to have the service automatically generate a sounds-like pronunciation for the word. For a word that is in the service's base vocabulary, use the parameter to specify additional pronunciations for the word. You cannot override the default pronunciation of a word; pronunciations you add augment the pronunciation from the base vocabulary. A word can have at most five sounds-like pronunciations, and a pronunciation can include at most 40 characters not including spaces.
     *
     * @return the sounds_like_serialized_name
     */
    @AuraEnabled
    public List<String> getSoundsLike() {
      return sounds_like_serialized_name;
    }
    /**
     * Gets the display_as_serialized_name.
     *
     * An alternative spelling for the custom word when it appears in a transcript. Use the parameter when you want the word to have a spelling that is different from its usual representation or from its spelling in corpora training data.
     *
     * @return the display_as_serialized_name
     */
    @AuraEnabled
    public String getDisplayAs() {
      return display_as_serialized_name;
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
     * Sets the sounds_like_serialized_name.
     *
     * @param soundsLike the new soundsLike
     */
    public void setSoundsLike(final List<String> soundsLike) {
      this.sounds_like_serialized_name = soundsLike;
    }

    /**
     * Sets the display_as_serialized_name.
     *
     * @param displayAs the new displayAs
     */
    public void setDisplayAs(final String displayAs) {
      this.display_as_serialized_name = displayAs;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CustomWord ret = (CustomWord) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The deleteAcousticModel options.
   */
  public class DeleteAcousticModelOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model that is to be deleted. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private DeleteAcousticModelOptions(DeleteAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteAcousticModelOptions builder
     */
    public DeleteAcousticModelOptionsBuilder newBuilder() {
      return new DeleteAcousticModelOptionsBuilder(this);
    }

  }

  /**
   * DeleteAcousticModelOptions Builder.
   */
  public class DeleteAcousticModelOptionsBuilder {
    private String customization_id_serialized_name;

    private DeleteAcousticModelOptionsBuilder(DeleteAcousticModelOptions deleteAcousticModelOptions) {
      customization_id_serialized_name = deleteAcousticModelOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteAcousticModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public DeleteAcousticModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a DeleteAcousticModelOptions.
     *
     * @return the deleteAcousticModelOptions
     */
    public DeleteAcousticModelOptions build() {
      return new DeleteAcousticModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the DeleteAcousticModelOptions builder
     */
    public DeleteAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * The deleteAudio options.
   */
  public class DeleteAudioOptions {
    private String customization_id_serialized_name;
    private String audio_name_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model from which an audio resource is to be deleted. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the audio_name_serialized_name.
     *
     * The name of the audio resource that is to be deleted from the custom acoustic model.
     *
     * @return the audio_name_serialized_name
     */
    public String audioName() {
      return audio_name_serialized_name;
    }
    private DeleteAudioOptions(DeleteAudioOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.audio_name_serialized_name, 'audio_name_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      audio_name_serialized_name = builder.audio_name_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteAudioOptions builder
     */
    public DeleteAudioOptionsBuilder newBuilder() {
      return new DeleteAudioOptionsBuilder(this);
    }

  }

  /**
   * DeleteAudioOptions Builder.
   */
  public class DeleteAudioOptionsBuilder {
    private String customization_id_serialized_name;
    private String audio_name_serialized_name;

    private DeleteAudioOptionsBuilder(DeleteAudioOptions deleteAudioOptions) {
      customization_id_serialized_name = deleteAudioOptions.customization_id_serialized_name;
      audio_name_serialized_name = deleteAudioOptions.audio_name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteAudioOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param audioName the audioName
     */
    public DeleteAudioOptionsBuilder(String customizationId, String audioName) {
      this.customization_id_serialized_name = customizationId;
      this.audio_name_serialized_name = audioName;
    }

    /**
     * Builds a DeleteAudioOptions.
     *
     * @return the deleteAudioOptions
     */
    public DeleteAudioOptions build() {
      return new DeleteAudioOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the DeleteAudioOptions builder
     */
    public DeleteAudioOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the audio_name_serialized_name.
     *
     * @param audioName the audioName
     * @return the DeleteAudioOptions builder
     */
    public DeleteAudioOptionsBuilder audioName(String audioName) {
      this.audio_name_serialized_name = audioName;
      return this;
    }
  }

  /**
   * The deleteCorpus options.
   */
  public class DeleteCorpusOptions {
    private String customization_id_serialized_name;
    private String corpus_name_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model from which a corpus is to be deleted. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the corpus_name_serialized_name.
     *
     * The name of the corpus that is to be deleted from the custom language model.
     *
     * @return the corpus_name_serialized_name
     */
    public String corpusName() {
      return corpus_name_serialized_name;
    }
    private DeleteCorpusOptions(DeleteCorpusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.corpus_name_serialized_name, 'corpus_name_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      corpus_name_serialized_name = builder.corpus_name_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteCorpusOptions builder
     */
    public DeleteCorpusOptionsBuilder newBuilder() {
      return new DeleteCorpusOptionsBuilder(this);
    }

  }

  /**
   * DeleteCorpusOptions Builder.
   */
  public class DeleteCorpusOptionsBuilder {
    private String customization_id_serialized_name;
    private String corpus_name_serialized_name;

    private DeleteCorpusOptionsBuilder(DeleteCorpusOptions deleteCorpusOptions) {
      customization_id_serialized_name = deleteCorpusOptions.customization_id_serialized_name;
      corpus_name_serialized_name = deleteCorpusOptions.corpus_name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCorpusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param corpusName the corpusName
     */
    public DeleteCorpusOptionsBuilder(String customizationId, String corpusName) {
      this.customization_id_serialized_name = customizationId;
      this.corpus_name_serialized_name = corpusName;
    }

    /**
     * Builds a DeleteCorpusOptions.
     *
     * @return the deleteCorpusOptions
     */
    public DeleteCorpusOptions build() {
      return new DeleteCorpusOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the DeleteCorpusOptions builder
     */
    public DeleteCorpusOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the corpus_name_serialized_name.
     *
     * @param corpusName the corpusName
     * @return the DeleteCorpusOptions builder
     */
    public DeleteCorpusOptionsBuilder corpusName(String corpusName) {
      this.corpus_name_serialized_name = corpusName;
      return this;
    }
  }

  /**
   * The deleteJob options.
   */
  public class DeleteJobOptions {
    private String id_serialized_name;
    /**
     * Gets the id_serialized_name.
     *
     * The ID of the job that is to be deleted.
     *
     * @return the id_serialized_name
     */
    public String id() {
      return id_serialized_name;
    }
    private DeleteJobOptions(DeleteJobOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.id_serialized_name, 'id_serialized_name cannot be empty');
      id_serialized_name = builder.id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteJobOptions builder
     */
    public DeleteJobOptionsBuilder newBuilder() {
      return new DeleteJobOptionsBuilder(this);
    }

  }

  /**
   * DeleteJobOptions Builder.
   */
  public class DeleteJobOptionsBuilder {
    private String id_serialized_name;

    private DeleteJobOptionsBuilder(DeleteJobOptions deleteJobOptions) {
      id_serialized_name = deleteJobOptions.id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteJobOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param id the id
     */
    public DeleteJobOptionsBuilder(String id) {
      this.id_serialized_name = id;
    }

    /**
     * Builds a DeleteJobOptions.
     *
     * @return the deleteJobOptions
     */
    public DeleteJobOptions build() {
      return new DeleteJobOptions(this);
    }

    /**
     * Set the id_serialized_name.
     *
     * @param id the id
     * @return the DeleteJobOptions builder
     */
    public DeleteJobOptionsBuilder id(String id) {
      this.id_serialized_name = id;
      return this;
    }
  }

  /**
   * The deleteLanguageModel options.
   */
  public class DeleteLanguageModelOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model that is to be deleted. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private DeleteLanguageModelOptions(DeleteLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteLanguageModelOptions builder
     */
    public DeleteLanguageModelOptionsBuilder newBuilder() {
      return new DeleteLanguageModelOptionsBuilder(this);
    }

  }

  /**
   * DeleteLanguageModelOptions Builder.
   */
  public class DeleteLanguageModelOptionsBuilder {
    private String customization_id_serialized_name;

    private DeleteLanguageModelOptionsBuilder(DeleteLanguageModelOptions deleteLanguageModelOptions) {
      customization_id_serialized_name = deleteLanguageModelOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteLanguageModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public DeleteLanguageModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a DeleteLanguageModelOptions.
     *
     * @return the deleteLanguageModelOptions
     */
    public DeleteLanguageModelOptions build() {
      return new DeleteLanguageModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the DeleteLanguageModelOptions builder
     */
    public DeleteLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * The deleteWord options.
   */
  public class DeleteWordOptions {
    private String customization_id_serialized_name;
    private String word_name_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model from which a word is to be deleted. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_name_serialized_name.
     *
     * The custom word that is to be deleted from the custom language model.
     *
     * @return the word_name_serialized_name
     */
    public String wordName() {
      return word_name_serialized_name;
    }
    private DeleteWordOptions(DeleteWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.word_name_serialized_name, 'word_name_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_name_serialized_name = builder.word_name_serialized_name;
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
  public class DeleteWordOptionsBuilder {
    private String customization_id_serialized_name;
    private String word_name_serialized_name;

    private DeleteWordOptionsBuilder(DeleteWordOptions deleteWordOptions) {
      customization_id_serialized_name = deleteWordOptions.customization_id_serialized_name;
      word_name_serialized_name = deleteWordOptions.word_name_serialized_name;
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
     * @param wordName the wordName
     */
    public DeleteWordOptionsBuilder(String customizationId, String wordName) {
      this.customization_id_serialized_name = customizationId;
      this.word_name_serialized_name = wordName;
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
     * Set the word_name_serialized_name.
     *
     * @param wordName the wordName
     * @return the DeleteWordOptions builder
     */
    public DeleteWordOptionsBuilder wordName(String wordName) {
      this.word_name_serialized_name = wordName;
      return this;
    }
  }

  /**
   * The getAcousticModel options.
   */
  public class GetAcousticModelOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model for which information is to be returned. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private GetAcousticModelOptions(GetAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetAcousticModelOptions builder
     */
    public GetAcousticModelOptionsBuilder newBuilder() {
      return new GetAcousticModelOptionsBuilder(this);
    }

  }

  /**
   * GetAcousticModelOptions Builder.
   */
  public class GetAcousticModelOptionsBuilder {
    private String customization_id_serialized_name;

    private GetAcousticModelOptionsBuilder(GetAcousticModelOptions getAcousticModelOptions) {
      customization_id_serialized_name = getAcousticModelOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetAcousticModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public GetAcousticModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a GetAcousticModelOptions.
     *
     * @return the getAcousticModelOptions
     */
    public GetAcousticModelOptions build() {
      return new GetAcousticModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetAcousticModelOptions builder
     */
    public GetAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * The getAudio options.
   */
  public class GetAudioOptions {
    private String customization_id_serialized_name;
    private String audio_name_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model for which an audio resource is to be listed. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the audio_name_serialized_name.
     *
     * The name of the audio resource about which information is to be listed.
     *
     * @return the audio_name_serialized_name
     */
    public String audioName() {
      return audio_name_serialized_name;
    }
    private GetAudioOptions(GetAudioOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.audio_name_serialized_name, 'audio_name_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      audio_name_serialized_name = builder.audio_name_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetAudioOptions builder
     */
    public GetAudioOptionsBuilder newBuilder() {
      return new GetAudioOptionsBuilder(this);
    }

  }

  /**
   * GetAudioOptions Builder.
   */
  public class GetAudioOptionsBuilder {
    private String customization_id_serialized_name;
    private String audio_name_serialized_name;

    private GetAudioOptionsBuilder(GetAudioOptions getAudioOptions) {
      customization_id_serialized_name = getAudioOptions.customization_id_serialized_name;
      audio_name_serialized_name = getAudioOptions.audio_name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetAudioOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param audioName the audioName
     */
    public GetAudioOptionsBuilder(String customizationId, String audioName) {
      this.customization_id_serialized_name = customizationId;
      this.audio_name_serialized_name = audioName;
    }

    /**
     * Builds a GetAudioOptions.
     *
     * @return the getAudioOptions
     */
    public GetAudioOptions build() {
      return new GetAudioOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetAudioOptions builder
     */
    public GetAudioOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the audio_name_serialized_name.
     *
     * @param audioName the audioName
     * @return the GetAudioOptions builder
     */
    public GetAudioOptionsBuilder audioName(String audioName) {
      this.audio_name_serialized_name = audioName;
      return this;
    }
  }

  /**
   * The getCorpus options.
   */
  public class GetCorpusOptions {
    private String customization_id_serialized_name;
    private String corpus_name_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model for which a corpus is to be listed. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the corpus_name_serialized_name.
     *
     * The name of the corpus about which information is to be listed.
     *
     * @return the corpus_name_serialized_name
     */
    public String corpusName() {
      return corpus_name_serialized_name;
    }
    private GetCorpusOptions(GetCorpusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.corpus_name_serialized_name, 'corpus_name_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      corpus_name_serialized_name = builder.corpus_name_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetCorpusOptions builder
     */
    public GetCorpusOptionsBuilder newBuilder() {
      return new GetCorpusOptionsBuilder(this);
    }

  }

  /**
   * GetCorpusOptions Builder.
   */
  public class GetCorpusOptionsBuilder {
    private String customization_id_serialized_name;
    private String corpus_name_serialized_name;

    private GetCorpusOptionsBuilder(GetCorpusOptions getCorpusOptions) {
      customization_id_serialized_name = getCorpusOptions.customization_id_serialized_name;
      corpus_name_serialized_name = getCorpusOptions.corpus_name_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetCorpusOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param corpusName the corpusName
     */
    public GetCorpusOptionsBuilder(String customizationId, String corpusName) {
      this.customization_id_serialized_name = customizationId;
      this.corpus_name_serialized_name = corpusName;
    }

    /**
     * Builds a GetCorpusOptions.
     *
     * @return the getCorpusOptions
     */
    public GetCorpusOptions build() {
      return new GetCorpusOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetCorpusOptions builder
     */
    public GetCorpusOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the corpus_name_serialized_name.
     *
     * @param corpusName the corpusName
     * @return the GetCorpusOptions builder
     */
    public GetCorpusOptionsBuilder corpusName(String corpusName) {
      this.corpus_name_serialized_name = corpusName;
      return this;
    }
  }

  /**
   * The getLanguageModel options.
   */
  public class GetLanguageModelOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model for which information is to be returned. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private GetLanguageModelOptions(GetLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetLanguageModelOptions builder
     */
    public GetLanguageModelOptionsBuilder newBuilder() {
      return new GetLanguageModelOptionsBuilder(this);
    }

  }

  /**
   * GetLanguageModelOptions Builder.
   */
  public class GetLanguageModelOptionsBuilder {
    private String customization_id_serialized_name;

    private GetLanguageModelOptionsBuilder(GetLanguageModelOptions getLanguageModelOptions) {
      customization_id_serialized_name = getLanguageModelOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetLanguageModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public GetLanguageModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a GetLanguageModelOptions.
     *
     * @return the getLanguageModelOptions
     */
    public GetLanguageModelOptions build() {
      return new GetLanguageModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the GetLanguageModelOptions builder
     */
    public GetLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * The getModel options.
   */
  public class GetModelOptions {
    private String model_id_serialized_name;
    /**
     * Gets the model_id_serialized_name.
     *
     * The identifier of the desired model in the form of its `name` from the output of `GET /v1/models`.
     *
     * @return the model_id_serialized_name
     */
    public String modelId() {
      return model_id_serialized_name;
    }
    private GetModelOptions(GetModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.model_id_serialized_name, 'model_id_serialized_name cannot be empty');
      model_id_serialized_name = builder.model_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetModelOptions builder
     */
    public GetModelOptionsBuilder newBuilder() {
      return new GetModelOptionsBuilder(this);
    }

  }

  /**
   * GetModelOptions Builder.
   */
  public class GetModelOptionsBuilder {
    private String model_id_serialized_name;

    private GetModelOptionsBuilder(GetModelOptions getModelOptions) {
      model_id_serialized_name = getModelOptions.model_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param modelId the modelId
     */
    public GetModelOptionsBuilder(String modelId) {
      this.model_id_serialized_name = modelId;
    }

    /**
     * Builds a GetModelOptions.
     *
     * @return the getModelOptions
     */
    public GetModelOptions build() {
      return new GetModelOptions(this);
    }

    /**
     * Set the model_id_serialized_name.
     *
     * @param modelId the modelId
     * @return the GetModelOptions builder
     */
    public GetModelOptionsBuilder modelId(String modelId) {
      this.model_id_serialized_name = modelId;
      return this;
    }
  }

  /**
   * The getWord options.
   */
  public class GetWordOptions {
    private String customization_id_serialized_name;
    private String word_name_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model from which a word is to be queried. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_name_serialized_name.
     *
     * The custom word that is to be queried from the custom language model.
     *
     * @return the word_name_serialized_name
     */
    public String wordName() {
      return word_name_serialized_name;
    }
    private GetWordOptions(GetWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.word_name_serialized_name, 'word_name_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_name_serialized_name = builder.word_name_serialized_name;
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
  public class GetWordOptionsBuilder {
    private String customization_id_serialized_name;
    private String word_name_serialized_name;

    private GetWordOptionsBuilder(GetWordOptions getWordOptions) {
      customization_id_serialized_name = getWordOptions.customization_id_serialized_name;
      word_name_serialized_name = getWordOptions.word_name_serialized_name;
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
     * @param wordName the wordName
     */
    public GetWordOptionsBuilder(String customizationId, String wordName) {
      this.customization_id_serialized_name = customizationId;
      this.word_name_serialized_name = wordName;
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
     * Set the word_name_serialized_name.
     *
     * @param wordName the wordName
     * @return the GetWordOptions builder
     */
    public GetWordOptionsBuilder wordName(String wordName) {
      this.word_name_serialized_name = wordName;
      return this;
    }
  }

  /**
   * KeywordResult.
   */
  public class KeywordResult extends IBMWatsonGenericModel {
    private String normalized_text_serialized_name;
    private Double start_time_serialized_name;
    private Double end_time_serialized_name;
    private Double confidence_serialized_name;
    /**
     * Gets the normalized_text_serialized_name.
     *
     * A specified keyword normalized to the spoken phrase that matched in the audio input.
     *
     * @return the normalized_text_serialized_name
     */
    @AuraEnabled
    public String getNormalizedText() {
      return normalized_text_serialized_name;
    }
    /**
     * Gets the start_time_serialized_name.
     *
     * The start time in seconds of the keyword match.
     *
     * @return the start_time_serialized_name
     */
    @AuraEnabled
    public Double getStartTime() {
      return start_time_serialized_name;
    }
    /**
     * Gets the end_time_serialized_name.
     *
     * The end time in seconds of the keyword match.
     *
     * @return the end_time_serialized_name
     */
    @AuraEnabled
    public Double getEndTime() {
      return end_time_serialized_name;
    }
    /**
     * Gets the confidence_serialized_name.
     *
     * A confidence score for the keyword match in the range of 0 to 1.
     *
     * @return the confidence_serialized_name
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    /**
     * Sets the normalized_text_serialized_name.
     *
     * @param normalizedText the new normalizedText
     */
    public void setNormalizedText(final String normalizedText) {
      this.normalized_text_serialized_name = normalizedText;
    }

    /**
     * Sets the start_time_serialized_name.
     *
     * @param startTime the new startTime
     */
    public void setStartTime(final Double startTime) {
      this.start_time_serialized_name = startTime;
    }

    /**
     * Sets the end_time_serialized_name.
     *
     * @param endTime the new endTime
     */
    public void setEndTime(final Double endTime) {
      this.end_time_serialized_name = endTime;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      KeywordResult ret = (KeywordResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * LanguageModel.
   */
  public class LanguageModel extends IBMWatsonGenericModel {
    private String customization_id_serialized_name;
    private String created_serialized_name;
    private String language_serialized_name;
    private String dialect_serialized_name;
    private List<String> versions_serialized_name;
    private String owner_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String base_model_name_serialized_name;
    private String status_serialized_name;
    private Long progress_serialized_name;
    private String warnings_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The customization ID (GUID) of the custom language model. **Note:** When you create a new custom language model, the service returns only the GUID of the new model; it does not return the other fields of this object.
     *
     * @return the customization_id_serialized_name
     */
    @AuraEnabled
    public String getCustomizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom language model was created. The value is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public String getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language identifier of the custom language model (for example, `en-US`).
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the dialect_serialized_name.
     *
     * The dialect of the language for the custom language model. By default, the dialect matches the language of the base model; for example, `en-US` for either of the US English language models. For Spanish models, the field indicates the dialect for which the model was created: * `es-ES` for Castilian Spanish (the default) * `es-LA` for Latin American Spanish * `es-US` for North American (Mexican) Spanish.
     *
     * @return the dialect_serialized_name
     */
    @AuraEnabled
    public String getDialect() {
      return dialect_serialized_name;
    }
    /**
     * Gets the versions_serialized_name.
     *
     * A list of the available versions of the custom language model. Each element of the array indicates a version of the base model with which the custom model can be used. Multiple versions exist only if the custom model has been upgraded; otherwise, only a single version is shown.
     *
     * @return the versions_serialized_name
     */
    @AuraEnabled
    public List<String> getVersions() {
      return versions_serialized_name;
    }
    /**
     * Gets the owner_serialized_name.
     *
     * The GUID of the service credentials for the instance of the service that owns the custom language model.
     *
     * @return the owner_serialized_name
     */
    @AuraEnabled
    public String getOwner() {
      return owner_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the custom language model.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the custom language model.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the base_model_name_serialized_name.
     *
     * The name of the language model for which the custom language model was created.
     *
     * @return the base_model_name_serialized_name
     */
    @AuraEnabled
    public String getBaseModelName() {
      return base_model_name_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The current status of the custom language model: * `pending` indicates that the model was created but is waiting either for training data to be added or for the service to finish analyzing added data. * `ready` indicates that the model contains data and is ready to be trained. * `training` indicates that the model is currently being trained. * `available` indicates that the model is trained and ready to use. * `upgrading` indicates that the model is currently being upgraded. * `failed` indicates that training of the model failed.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the progress_serialized_name.
     *
     * A percentage that indicates the progress of the custom language model's current training. A value of `100` means that the model is fully trained. **Note:** The `progress` field does not currently reflect the progress of the training; the field changes from `0` to `100` when training is complete.
     *
     * @return the progress_serialized_name
     */
    @AuraEnabled
    public Long getProgress() {
      return progress_serialized_name;
    }
    /**
     * Gets the warnings_serialized_name.
     *
     * If the request included unknown query parameters, the following message: `Unexpected query parameter(s) ['parameters'] detected`, where `parameters` is a list that includes a quoted string for each unknown parameter.
     *
     * @return the warnings_serialized_name
     */
    @AuraEnabled
    public String getWarnings() {
      return warnings_serialized_name;
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
     * Sets the created_serialized_name.
     *
     * @param created the new created
     */
    public void setCreated(final String created) {
      this.created_serialized_name = created;
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
     * Sets the dialect_serialized_name.
     *
     * @param dialect the new dialect
     */
    public void setDialect(final String dialect) {
      this.dialect_serialized_name = dialect;
    }

    /**
     * Sets the versions_serialized_name.
     *
     * @param versions the new versions
     */
    public void setVersions(final List<String> versions) {
      this.versions_serialized_name = versions;
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
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
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
     * Sets the base_model_name_serialized_name.
     *
     * @param baseModelName the new baseModelName
     */
    public void setBaseModelName(final String baseModelName) {
      this.base_model_name_serialized_name = baseModelName;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the progress_serialized_name.
     *
     * @param progress the new progress
     */
    public void setProgress(final long progress) {
      this.progress_serialized_name = progress;
    }

    /**
     * Sets the warnings_serialized_name.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final String warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LanguageModel ret = (LanguageModel) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * LanguageModels.
   */
  public class LanguageModels extends IBMWatsonGenericModel {
    private List<LanguageModel> customizations_serialized_name;
    /**
     * Gets the customizations_serialized_name.
     *
     * An array of objects that provides information about each available custom language model. The array is empty if the requesting service credentials own no custom language models (if no language is specified) or own no custom language models for the specified language.
     *
     * @return the customizations_serialized_name
     */
    @AuraEnabled
    public List<LanguageModel> getCustomizations() {
      return customizations_serialized_name;
    }

    /**
     * Sets the customizations_serialized_name.
     *
     * @param customizations the new customizations
     */
    public void setCustomizations(final List<LanguageModel> customizations) {
      this.customizations_serialized_name = customizations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LanguageModels ret = (LanguageModels) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for customizations_serialized_name
      List<LanguageModel> newCustomizations = new List<LanguageModel>();
      List<LanguageModel> deserializedCustomizations = ret.getCustomizations();
      if (deserializedCustomizations != null) {
        for (Integer i = 0; i < deserializedCustomizations.size(); i++) {
          LanguageModel currentItem = ret.getCustomizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('customizations_serialized_name');
          LanguageModel newItem = (LanguageModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), LanguageModel.class);
          newCustomizations.add(newItem);
        }
        ret.setCustomizations(newCustomizations);
      }

      return ret;
    }
  }

  /**
   * The listAcousticModels options.
   */
  public class ListAcousticModelsOptions {
    private String language_serialized_name;
    /**
     * Gets the language_serialized_name.
     *
     * The identifier of the language for which custom acoustic models are to be returned (for example, `en-US`). Omit the parameter to see all custom acoustic models owned by the requesting service credentials.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    private ListAcousticModelsOptions(ListAcousticModelsOptionsBuilder builder) {
      language_serialized_name = builder.language_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListAcousticModelsOptions builder
     */
    public ListAcousticModelsOptionsBuilder newBuilder() {
      return new ListAcousticModelsOptionsBuilder(this);
    }

  }

  /**
   * ListAcousticModelsOptions Builder.
   */
  public class ListAcousticModelsOptionsBuilder {
    private String language_serialized_name;

    private ListAcousticModelsOptionsBuilder(ListAcousticModelsOptions listAcousticModelsOptions) {
      language_serialized_name = listAcousticModelsOptions.language_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListAcousticModelsOptionsBuilder() {
    }

    /**
     * Builds a ListAcousticModelsOptions.
     *
     * @return the listAcousticModelsOptions
     */
    public ListAcousticModelsOptions build() {
      return new ListAcousticModelsOptions(this);
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the ListAcousticModelsOptions builder
     */
    public ListAcousticModelsOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }
  }

  /**
   * The listAudio options.
   */
  public class ListAudioOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model for which audio resources are to be listed. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private ListAudioOptions(ListAudioOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListAudioOptions builder
     */
    public ListAudioOptionsBuilder newBuilder() {
      return new ListAudioOptionsBuilder(this);
    }

  }

  /**
   * ListAudioOptions Builder.
   */
  public class ListAudioOptionsBuilder {
    private String customization_id_serialized_name;

    private ListAudioOptionsBuilder(ListAudioOptions listAudioOptions) {
      customization_id_serialized_name = listAudioOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListAudioOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public ListAudioOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a ListAudioOptions.
     *
     * @return the listAudioOptions
     */
    public ListAudioOptions build() {
      return new ListAudioOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the ListAudioOptions builder
     */
    public ListAudioOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * The listCorpora options.
   */
  public class ListCorporaOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model for which corpora are to be listed. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private ListCorporaOptions(ListCorporaOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListCorporaOptions builder
     */
    public ListCorporaOptionsBuilder newBuilder() {
      return new ListCorporaOptionsBuilder(this);
    }

  }

  /**
   * ListCorporaOptions Builder.
   */
  public class ListCorporaOptionsBuilder {
    private String customization_id_serialized_name;

    private ListCorporaOptionsBuilder(ListCorporaOptions listCorporaOptions) {
      customization_id_serialized_name = listCorporaOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCorporaOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public ListCorporaOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a ListCorporaOptions.
     *
     * @return the listCorporaOptions
     */
    public ListCorporaOptions build() {
      return new ListCorporaOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the ListCorporaOptions builder
     */
    public ListCorporaOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * The listLanguageModels options.
   */
  public class ListLanguageModelsOptions {
    private String language_serialized_name;
    /**
     * Gets the language_serialized_name.
     *
     * The identifier of the language for which custom language models are to be returned (for example, `en-US`). Omit the parameter to see all custom language models owned by the requesting service credentials.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    private ListLanguageModelsOptions(ListLanguageModelsOptionsBuilder builder) {
      language_serialized_name = builder.language_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ListLanguageModelsOptions builder
     */
    public ListLanguageModelsOptionsBuilder newBuilder() {
      return new ListLanguageModelsOptionsBuilder(this);
    }

  }

  /**
   * ListLanguageModelsOptions Builder.
   */
  public class ListLanguageModelsOptionsBuilder {
    private String language_serialized_name;

    private ListLanguageModelsOptionsBuilder(ListLanguageModelsOptions listLanguageModelsOptions) {
      language_serialized_name = listLanguageModelsOptions.language_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListLanguageModelsOptionsBuilder() {
    }

    /**
     * Builds a ListLanguageModelsOptions.
     *
     * @return the listLanguageModelsOptions
     */
    public ListLanguageModelsOptions build() {
      return new ListLanguageModelsOptions(this);
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the ListLanguageModelsOptions builder
     */
    public ListLanguageModelsOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }
  }

  /**
   * The listModels options.
   */
  public class ListModelsOptions {
    private ListModelsOptions(ListModelsOptionsBuilder builder) {
    }

    /**
     * New builder.
     *
     * @return a ListModelsOptions builder
     */
    public ListModelsOptionsBuilder newBuilder() {
      return new ListModelsOptionsBuilder(this);
    }

  }

  /**
   * ListModelsOptions Builder.
   */
  public class ListModelsOptionsBuilder {

    private ListModelsOptionsBuilder(ListModelsOptions listModelsOptions) {
    }

    /**
     * Instantiates a new builder.
     */
    public ListModelsOptionsBuilder() {
    }

    /**
     * Builds a ListModelsOptions.
     *
     * @return the listModelsOptions
     */
    public ListModelsOptions build() {
      return new ListModelsOptions(this);
    }
  }

  /**
   * The listWords options.
   */
  public class ListWordsOptions {
    private String customization_id_serialized_name;
    private String word_type_serialized_name;
    private String sort_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model from which words are to be queried. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_type_serialized_name.
     *
     * The type of words to be listed from the custom language model's words resource: * `all` (the default) shows all words. * `user` shows only custom words that were added or modified by the user. * `corpora` shows only OOV that were extracted from corpora.
     *
     * @return the word_type_serialized_name
     */
    public String wordType() {
      return word_type_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * Indicates the order in which the words are to be listed, `alphabetical` or by `count`. You can prepend an optional `+` or `-` to an argument to indicate whether the results are to be sorted in ascending or descending order. By default, words are sorted in ascending alphabetical order. For alphabetical ordering, the lexicographical precedence is numeric values, uppercase letters, and lowercase letters. For count ordering, values with the same count are ordered alphabetically. With cURL, URL encode the `+` symbol as `%2B`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    private ListWordsOptions(ListWordsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_type_serialized_name = builder.word_type_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
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
  public class ListWordsOptionsBuilder {
    private String customization_id_serialized_name;
    private String word_type_serialized_name;
    private String sort_serialized_name;

    private ListWordsOptionsBuilder(ListWordsOptions listWordsOptions) {
      customization_id_serialized_name = listWordsOptions.customization_id_serialized_name;
      word_type_serialized_name = listWordsOptions.word_type_serialized_name;
      sort_serialized_name = listWordsOptions.sort_serialized_name;
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
     * Set the word_type_serialized_name.
     *
     * @param wordType the wordType
     * @return the ListWordsOptions builder
     */
    public ListWordsOptionsBuilder wordType(String wordType) {
      this.word_type_serialized_name = wordType;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListWordsOptions builder
     */
    public ListWordsOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }
  }

  /**
   * RecognitionJob.
   */
  public class RecognitionJob extends IBMWatsonGenericModel {
    private String id_serialized_name;
    private String status_serialized_name;
    private String created_serialized_name;
    private String updated_serialized_name;
    private String url_serialized_name;
    private String user_token_serialized_name;
    private List<SpeechRecognitionResults> results_serialized_name;
    private List<String> warnings_serialized_name;
    /**
     * Gets the id_serialized_name.
     *
     * The ID of the job.
     *
     * @return the id_serialized_name
     */
    @AuraEnabled
    public String getId() {
      return id_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The current status of the job: * `waiting`: The service is preparing the job for processing. The service returns this status when the job is initially created or when it is waiting for capacity to process the job. The job remains in this state until the service has the capacity to begin processing it. * `processing`: The service is actively processing the job. * `completed`: The service has finished processing the job. If the job specified a callback URL and the event `recognitions.completed_with_results`, the service sent the results with the callback notification; otherwise, you must retrieve the results by checking the individual job. * `failed`: The job failed.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the job was created. The value is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public String getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the job was last updated by the service. The value is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`). **Note:** This field is returned only when you list information about a specific or all existing jobs.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public String getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * The URL to use to request information about the job with the `GET /v1/recognitions/{id}` method. **Note:** This field is returned only when you create a new job.
     *
     * @return the url_serialized_name
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
    /**
     * Gets the user_token_serialized_name.
     *
     * The user token associated with a job that was created with a callback URL and a user token. **Note:** This field can be returned only when you list information about all existing jobs.
     *
     * @return the user_token_serialized_name
     */
    @AuraEnabled
    public String getUserToken() {
      return user_token_serialized_name;
    }
    /**
     * Gets the results_serialized_name.
     *
     * If the status is `completed`, the results of the recognition request as an array that includes a single instance of a `SpeechRecognitionResults` object. **Note:** This field can be returned only when you list information about a specific existing job.
     *
     * @return the results_serialized_name
     */
    @AuraEnabled
    public List<SpeechRecognitionResults> getResults() {
      return results_serialized_name;
    }
    /**
     * Gets the warnings_serialized_name.
     *
     * An array of warning messages about invalid query parameters included with the request. Each warning includes a descriptive message and a list of invalid argument strings, for example, `"unexpected query parameter 'user_token', query parameter 'callback_url' was not specified"`. The request succeeds despite the warnings. **Note:** This field can be returned only when you create a new job.
     *
     * @return the warnings_serialized_name
     */
    @AuraEnabled
    public List<String> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the id_serialized_name.
     *
     * @param id the new id
     */
    public void setId(final String id) {
      this.id_serialized_name = id;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
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
     * Sets the updated_serialized_name.
     *
     * @param updated the new updated
     */
    public void setUpdated(final String updated) {
      this.updated_serialized_name = updated;
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
     * Sets the user_token_serialized_name.
     *
     * @param userToken the new userToken
     */
    public void setUserToken(final String userToken) {
      this.user_token_serialized_name = userToken;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results the new results
     */
    public void setResults(final List<SpeechRecognitionResults> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the warnings_serialized_name.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final List<String> warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RecognitionJob ret = (RecognitionJob) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results_serialized_name
      List<SpeechRecognitionResults> newResults = new List<SpeechRecognitionResults>();
      List<SpeechRecognitionResults> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          SpeechRecognitionResults currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          SpeechRecognitionResults newItem = (SpeechRecognitionResults) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechRecognitionResults.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      return ret;
    }
  }

  /**
   * RecognitionJobs.
   */
  public class RecognitionJobs extends IBMWatsonGenericModel {
    private List<RecognitionJob> recognitions_serialized_name;
    /**
     * Gets the recognitions_serialized_name.
     *
     * An array of objects that provides the status for each of the user's current jobs. The array is empty if the user has no current jobs.
     *
     * @return the recognitions_serialized_name
     */
    @AuraEnabled
    public List<RecognitionJob> getRecognitions() {
      return recognitions_serialized_name;
    }

    /**
     * Sets the recognitions_serialized_name.
     *
     * @param recognitions the new recognitions
     */
    public void setRecognitions(final List<RecognitionJob> recognitions) {
      this.recognitions_serialized_name = recognitions;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RecognitionJobs ret = (RecognitionJobs) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for recognitions_serialized_name
      List<RecognitionJob> newRecognitions = new List<RecognitionJob>();
      List<RecognitionJob> deserializedRecognitions = ret.getRecognitions();
      if (deserializedRecognitions != null) {
        for (Integer i = 0; i < deserializedRecognitions.size(); i++) {
          RecognitionJob currentItem = ret.getRecognitions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('recognitions_serialized_name');
          RecognitionJob newItem = (RecognitionJob) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RecognitionJob.class);
          newRecognitions.add(newItem);
        }
        ret.setRecognitions(newRecognitions);
      }

      return ret;
    }
  }

  /**
   * The registerCallback options.
   */
  public class RegisterCallbackOptions {
    private String callback_url_serialized_name;
    private String user_secret_serialized_name;
    /**
     * Gets the callback_url_serialized_name.
     *
     * An HTTP or HTTPS URL to which callback notifications are to be sent. To be white-listed, the URL must successfully echo the challenge string during URL verification. During verification, the client can also check the signature that the service sends in the `X-Callback-Signature` header to verify the origin of the request.
     *
     * @return the callback_url_serialized_name
     */
    public String callbackUrl() {
      return callback_url_serialized_name;
    }
    /**
     * Gets the user_secret_serialized_name.
     *
     * A user-specified string that the service uses to generate the HMAC-SHA1 signature that it sends via the `X-Callback-Signature` header. The service includes the header during URL verification and with every notification sent to the callback URL. It calculates the signature over the payload of the notification. If you omit the parameter, the service does not send the header.
     *
     * @return the user_secret_serialized_name
     */
    public String userSecret() {
      return user_secret_serialized_name;
    }
    private RegisterCallbackOptions(RegisterCallbackOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.callback_url_serialized_name, 'callback_url_serialized_name cannot be null');
      callback_url_serialized_name = builder.callback_url_serialized_name;
      user_secret_serialized_name = builder.user_secret_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a RegisterCallbackOptions builder
     */
    public RegisterCallbackOptionsBuilder newBuilder() {
      return new RegisterCallbackOptionsBuilder(this);
    }

  }

  /**
   * RegisterCallbackOptions Builder.
   */
  public class RegisterCallbackOptionsBuilder {
    private String callback_url_serialized_name;
    private String user_secret_serialized_name;

    private RegisterCallbackOptionsBuilder(RegisterCallbackOptions registerCallbackOptions) {
      callback_url_serialized_name = registerCallbackOptions.callback_url_serialized_name;
      user_secret_serialized_name = registerCallbackOptions.user_secret_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public RegisterCallbackOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param callbackUrl the callbackUrl
     */
    public RegisterCallbackOptionsBuilder(String callbackUrl) {
      this.callback_url_serialized_name = callbackUrl;
    }

    /**
     * Builds a RegisterCallbackOptions.
     *
     * @return the registerCallbackOptions
     */
    public RegisterCallbackOptions build() {
      return new RegisterCallbackOptions(this);
    }

    /**
     * Set the callback_url_serialized_name.
     *
     * @param callbackUrl the callbackUrl
     * @return the RegisterCallbackOptions builder
     */
    public RegisterCallbackOptionsBuilder callbackUrl(String callbackUrl) {
      this.callback_url_serialized_name = callbackUrl;
      return this;
    }

    /**
     * Set the user_secret_serialized_name.
     *
     * @param userSecret the userSecret
     * @return the RegisterCallbackOptions builder
     */
    public RegisterCallbackOptionsBuilder userSecret(String userSecret) {
      this.user_secret_serialized_name = userSecret;
      return this;
    }
  }

  /**
   * RegisterStatus.
   */
  public class RegisterStatus extends IBMWatsonGenericModel {
    private String status_serialized_name;
    private String url_serialized_name;
    /**
     * Gets the status_serialized_name.
     *
     * The current status of the job: * `created` if the callback URL was successfully white-listed as a result of the call. * `already created` if the URL was already white-listed.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * The callback URL that is successfully registered.
     *
     * @return the url_serialized_name
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the url_serialized_name.
     *
     * @param url the new url
     */
    public void setUrl(final String url) {
      this.url_serialized_name = url;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RegisterStatus ret = (RegisterStatus) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The resetAcousticModel options.
   */
  public class ResetAcousticModelOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model that is to be reset. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private ResetAcousticModelOptions(ResetAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ResetAcousticModelOptions builder
     */
    public ResetAcousticModelOptionsBuilder newBuilder() {
      return new ResetAcousticModelOptionsBuilder(this);
    }

  }

  /**
   * ResetAcousticModelOptions Builder.
   */
  public class ResetAcousticModelOptionsBuilder {
    private String customization_id_serialized_name;

    private ResetAcousticModelOptionsBuilder(ResetAcousticModelOptions resetAcousticModelOptions) {
      customization_id_serialized_name = resetAcousticModelOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ResetAcousticModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public ResetAcousticModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a ResetAcousticModelOptions.
     *
     * @return the resetAcousticModelOptions
     */
    public ResetAcousticModelOptions build() {
      return new ResetAcousticModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the ResetAcousticModelOptions builder
     */
    public ResetAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * The resetLanguageModel options.
   */
  public class ResetLanguageModelOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model that is to be reset. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private ResetLanguageModelOptions(ResetLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ResetLanguageModelOptions builder
     */
    public ResetLanguageModelOptionsBuilder newBuilder() {
      return new ResetLanguageModelOptionsBuilder(this);
    }

  }

  /**
   * ResetLanguageModelOptions Builder.
   */
  public class ResetLanguageModelOptionsBuilder {
    private String customization_id_serialized_name;

    private ResetLanguageModelOptionsBuilder(ResetLanguageModelOptions resetLanguageModelOptions) {
      customization_id_serialized_name = resetLanguageModelOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ResetLanguageModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public ResetLanguageModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a ResetLanguageModelOptions.
     *
     * @return the resetLanguageModelOptions
     */
    public ResetLanguageModelOptions build() {
      return new ResetLanguageModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the ResetLanguageModelOptions builder
     */
    public ResetLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * SpeakerLabelsResult.
   */
  public class SpeakerLabelsResult extends IBMWatsonGenericModel {
    private Double from_serialized_name;
    private Double to_serialized_name;
    private Long speaker_serialized_name;
    private Double confidence_serialized_name;
    private Boolean final_serialized_name;
    /**
     * Gets the from_serialized_name.
     *
     * The start time of a word from the transcript. The value matches the start time of a word from the `timestamps` array.
     *
     * @return the from_serialized_name
     */
    @AuraEnabled
    public Double getFrom() {
      return from_serialized_name;
    }
    /**
     * Gets the to_serialized_name.
     *
     * The end time of a word from the transcript. The value matches the end time of a word from the `timestamps` array.
     *
     * @return the to_serialized_name
     */
    @AuraEnabled
    public Double getTo() {
      return to_serialized_name;
    }
    /**
     * Gets the speaker_serialized_name.
     *
     * The numeric identifier that the service assigns to a speaker from the audio. Speaker IDs begin at `0` initially but can evolve and change across interim results (if supported by the method) and between interim and final results as the service processes the audio. They are not guaranteed to be sequential, contiguous, or ordered.
     *
     * @return the speaker_serialized_name
     */
    @AuraEnabled
    public Long getSpeaker() {
      return speaker_serialized_name;
    }
    /**
     * Gets the confidence_serialized_name.
     *
     * A score that indicates the service's confidence in its identification of the speaker in the range of 0 to 1.
     *
     * @return the confidence_serialized_name
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
    /**
     * Gets the final_serialized_name.
     *
     * An indication of whether the service might further change word and speaker-label results. A value of `true` means that the service guarantees not to send any further updates for the current or any preceding results; `false` means that the service might send further updates to the results.
     *
     * @return the final_serialized_name
     */
    @AuraEnabled
    public Boolean getFinal() {
      return final_serialized_name;
    }

    /**
     * Sets the from_serialized_name.
     *
     * @param fromVar the new fromVar
     */
    public void setFrom(final Double fromVar) {
      this.from_serialized_name = fromVar;
    }

    /**
     * Sets the to_serialized_name.
     *
     * @param to the new to
     */
    public void setTo(final Double to) {
      this.to_serialized_name = to;
    }

    /**
     * Sets the speaker_serialized_name.
     *
     * @param speaker the new speaker
     */
    public void setSpeaker(final long speaker) {
      this.speaker_serialized_name = speaker;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the final_serialized_name.
     *
     * @param finalVar the new finalVar
     */
    public void setFinal(final Boolean finalVar) {
      this.final_serialized_name = finalVar;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeakerLabelsResult ret = (SpeakerLabelsResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * SpeechModel.
   */
  public class SpeechModel extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private String language_serialized_name;
    private Long rate_serialized_name;
    private String url_serialized_name;
    private SupportedFeatures supported_features_serialized_name;
    private String description_serialized_name;

    /**
     * Gets the name_serialized_name.
     *
     * The name of the model for use as an identifier in calls to the service (for example, `en-US_BroadbandModel`).
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
     * The language identifier for the model (for example, `en-US`).
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the rate_serialized_name.
     *
     * The sampling rate (minimum acceptable rate for audio) used by the model in Hertz.
     *
     * @return the rate_serialized_name
     */
    @AuraEnabled
    public Long getRate() {
      return rate_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * The URI for the model.
     *
     * @return the url_serialized_name
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
    /**
     * Gets the supported_features_serialized_name.
     *
     * Describes the additional service features supported with the model.
     *
     * @return the supported_features_serialized_name
     */
    @AuraEnabled
    public SupportedFeatures getSupportedFeatures() {
      return supported_features_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * Brief description of the model.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
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
     * Sets the rate_serialized_name.
     *
     * @param rate the new rate
     */
    public void setRate(final long rate) {
      this.rate_serialized_name = rate;
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
     * Sets the supported_features_serialized_name.
     *
     * @param supportedFeatures the new supportedFeatures
     */
    public void setSupportedFeatures(final SupportedFeatures supportedFeatures) {
      this.supported_features_serialized_name = supportedFeatures;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechModel ret = (SpeechModel) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for supported_features_serialized_name
      SupportedFeatures newSupportedFeatures = (SupportedFeatures) new SupportedFeatures().deserialize(JSON.serialize(ret.getSupportedFeatures()), (Map<String, Object>) jsonMap.get('supported_features_serialized_name'), SupportedFeatures.class);
      ret.setSupportedFeatures(newSupportedFeatures);

      return ret;
    }
  }

  /**
   * SpeechModels.
   */
  public class SpeechModels extends IBMWatsonGenericModel {
    private List<SpeechModel> models_serialized_name;
    /**
     * Gets the models_serialized_name.
     *
     * Information about each available model.
     *
     * @return the models_serialized_name
     */
    @AuraEnabled
    public List<SpeechModel> getModels() {
      return models_serialized_name;
    }

    /**
     * Sets the models_serialized_name.
     *
     * @param models the new models
     */
    public void setModels(final List<SpeechModel> models) {
      this.models_serialized_name = models;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechModels ret = (SpeechModels) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for models_serialized_name
      List<SpeechModel> newModels = new List<SpeechModel>();
      List<SpeechModel> deserializedModels = ret.getModels();
      if (deserializedModels != null) {
        for (Integer i = 0; i < deserializedModels.size(); i++) {
          SpeechModel currentItem = ret.getModels().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('models_serialized_name');
          SpeechModel newItem = (SpeechModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechModel.class);
          newModels.add(newItem);
        }
        ret.setModels(newModels);
      }

      return ret;
    }
  }

  /**
   * SpeechRecognitionAlternative.
   */
  public class SpeechRecognitionAlternative extends IBMWatsonGenericModel {
    private String transcript_serialized_name;
    private Double confidence_serialized_name;
    private List<String> timestamps_serialized_name;
    private List<String> word_confidence_serialized_name;
    /**
     * Gets the transcript_serialized_name.
     *
     * A transcription of the audio.
     *
     * @return the transcript_serialized_name
     */
    @AuraEnabled
    public String getTranscript() {
      return transcript_serialized_name;
    }
    /**
     * Gets the confidence_serialized_name.
     *
     * A score that indicates the service's confidence in the transcript in the range of 0 to 1. Available only for the best alternative and only in results marked as final.
     *
     * @return the confidence_serialized_name
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
    /**
     * Gets the timestamps_serialized_name.
     *
     * Time alignments for each word from the transcript as a list of lists. Each inner list consists of three elements: the word followed by its start and end time in seconds. Example: `[["hello",0.0,1.2],["world",1.2,2.5]]`. Available only for the best alternative.
     *
     * @return the timestamps_serialized_name
     */
    @AuraEnabled
    public List<String> getTimestamps() {
      return timestamps_serialized_name;
    }
    /**
     * Gets the word_confidence_serialized_name.
     *
     * A confidence score for each word of the transcript as a list of lists. Each inner list consists of two elements: the word and its confidence score in the range of 0 to 1. Example: `[["hello",0.95],["world",0.866]]`. Available only for the best alternative and only in results marked as final.
     *
     * @return the word_confidence_serialized_name
     */
    @AuraEnabled
    public List<String> getWordConfidence() {
      return word_confidence_serialized_name;
    }

    /**
     * Sets the transcript_serialized_name.
     *
     * @param transcript the new transcript
     */
    public void setTranscript(final String transcript) {
      this.transcript_serialized_name = transcript;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the timestamps_serialized_name.
     *
     * @param timestamps the new timestamps
     */
    public void setTimestamps(final List<String> timestamps) {
      this.timestamps_serialized_name = timestamps;
    }

    /**
     * Sets the word_confidence_serialized_name.
     *
     * @param wordConfidence the new wordConfidence
     */
    public void setWordConfidence(final List<String> wordConfidence) {
      this.word_confidence_serialized_name = wordConfidence;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechRecognitionAlternative ret = (SpeechRecognitionAlternative) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * SpeechRecognitionResult.
   */
  public class SpeechRecognitionResult extends IBMWatsonGenericModel {
    private Boolean final_serialized_name;
    private List<SpeechRecognitionAlternative> alternatives_serialized_name;
    private Map<String, List<KeywordResult>> keywords_result_serialized_name;
    private List<WordAlternativeResults> word_alternatives_serialized_name;
    /**
     * Gets the final_serialized_name.
     *
     * An indication of whether the transcription results are final. If `true`, the results for this utterance are not updated further; no additional results are sent for a `result_index` once its results are indicated as final.
     *
     * @return the final_serialized_name
     */
    @AuraEnabled
    public Boolean getFinal() {
      return final_serialized_name;
    }
    /**
     * Gets the alternatives_serialized_name.
     *
     * An array of alternative transcripts. The `alternatives` array can include additional requested output such as word confidence or timestamps.
     *
     * @return the alternatives_serialized_name
     */
    @AuraEnabled
    public List<SpeechRecognitionAlternative> getAlternatives() {
      return alternatives_serialized_name;
    }
    /**
     * Gets the keywords_result_serialized_name.
     *
     * A dictionary (or associative array) whose keys are the strings specified for `keywords` if both that parameter and `keywords_threshold` are specified. A keyword for which no matches are found is omitted from the array. The array is omitted if no keywords are found.
     *
     * @return the keywords_result_serialized_name
     */
    @AuraEnabled
    public Map<String, List<KeywordResult>> getKeywordsResult() {
      return keywords_result_serialized_name;
    }
    /**
     * Gets the word_alternatives_serialized_name.
     *
     * An array of alternative hypotheses found for words of the input audio if a `word_alternatives_threshold` is specified.
     *
     * @return the word_alternatives_serialized_name
     */
    @AuraEnabled
    public List<WordAlternativeResults> getWordAlternatives() {
      return word_alternatives_serialized_name;
    }

    /**
     * Sets the final_serialized_name.
     *
     * @param finalVar the new finalVar
     */
    public void setFinal(final Boolean finalVar) {
      this.final_serialized_name = finalVar;
    }

    /**
     * Sets the alternatives_serialized_name.
     *
     * @param alternatives the new alternatives
     */
    public void setAlternatives(final List<SpeechRecognitionAlternative> alternatives) {
      this.alternatives_serialized_name = alternatives;
    }

    /**
     * Sets the keywords_result_serialized_name.
     *
     * @param keywordsResult the new keywordsResult
     */
    public void setKeywordsResult(final Map<String, List<KeywordResult>> keywordsResult) {
      this.keywords_result_serialized_name = keywordsResult;
    }

    /**
     * Sets the word_alternatives_serialized_name.
     *
     * @param wordAlternatives the new wordAlternatives
     */
    public void setWordAlternatives(final List<WordAlternativeResults> wordAlternatives) {
      this.word_alternatives_serialized_name = wordAlternatives;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechRecognitionResult ret = (SpeechRecognitionResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for alternatives_serialized_name
      List<SpeechRecognitionAlternative> newAlternatives = new List<SpeechRecognitionAlternative>();
      List<SpeechRecognitionAlternative> deserializedAlternatives = ret.getAlternatives();
      if (deserializedAlternatives != null) {
        for (Integer i = 0; i < deserializedAlternatives.size(); i++) {
          SpeechRecognitionAlternative currentItem = ret.getAlternatives().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('alternatives_serialized_name');
          SpeechRecognitionAlternative newItem = (SpeechRecognitionAlternative) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechRecognitionAlternative.class);
          newAlternatives.add(newItem);
        }
        ret.setAlternatives(newAlternatives);
      }

      // calling custom deserializer for keywords_result_serialized_name
      Map<String, List<KeywordResult>> newKeywordsResult = new Map<String, List<KeywordResult>>();
      Map<String, List<KeywordResult>> deserializedKeywordsResult = ret.getKeywordsResult();
      if (deserializedKeywordsResult != null) {
        for (String key : deserializedKeywordsResult.keySet()) {
          List<KeywordResult> newKeywordResult = new List<KeywordResult>();
          List<KeywordResult> keywordResultList = deserializedKeywordsResult.get(key);
          for (Integer i = 0; i < keywordResultList.size(); i++) {
            KeywordResult currentItem = keywordResultList.get(i);
            Map<String, Object> itemInMap = (Map<String, Object>) jsonMap.get('keywords_result_serialized_name');
            List<Object> currentList = (List<Object>) itemInMap.get(key);
            KeywordResult newItem = (KeywordResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(currentList.get(i))), KeywordResult.class);
            newKeywordResult.add(newItem);
          }
          newKeywordsResult.put(key, newKeywordResult);
        }
        ret.setKeywordsResult(newKeywordsResult);
      }

      // calling custom deserializer for word_alternatives_serialized_name
      List<WordAlternativeResults> newWordAlternatives = new List<WordAlternativeResults>();
      List<WordAlternativeResults> deserializedWordAlternatives = ret.getWordAlternatives();
      if (deserializedWordAlternatives != null) {
        for (Integer i = 0; i < deserializedWordAlternatives.size(); i++) {
          WordAlternativeResults currentItem = ret.getWordAlternatives().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('word_alternatives_serialized_name');
          WordAlternativeResults newItem = (WordAlternativeResults) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WordAlternativeResults.class);
          newWordAlternatives.add(newItem);
        }
        ret.setWordAlternatives(newWordAlternatives);
      }

      return ret;
    }
  }

  /**
   * SpeechRecognitionResults.
   */
  public class SpeechRecognitionResults extends IBMWatsonGenericModel {
    private List<SpeechRecognitionResult> results_serialized_name;
    private Long result_index_serialized_name;
    private List<SpeakerLabelsResult> speaker_labels_serialized_name;
    private List<String> warnings_serialized_name;
    /**
     * Gets the results_serialized_name.
     *
     * An array that can include interim and final results (interim results are returned only if supported by the method). Final results are guaranteed not to change; interim results might be replaced by further interim results and final results. The service periodically sends updates to the results list; the `result_index` is set to the lowest index in the array that has changed; it is incremented for new results.
     *
     * @return the results_serialized_name
     */
    @AuraEnabled
    public List<SpeechRecognitionResult> getResults() {
      return results_serialized_name;
    }
    /**
     * Gets the result_index_serialized_name.
     *
     * An index that indicates a change point in the `results` array. The service increments the index only for additional results that it sends for new audio for the same request.
     *
     * @return the result_index_serialized_name
     */
    @AuraEnabled
    public Long getResultIndex() {
      return result_index_serialized_name;
    }
    /**
     * Gets the speaker_labels_serialized_name.
     *
     * An array that identifies which words were spoken by which speakers in a multi-person exchange. Returned in the response only if `speaker_labels` is `true`. When interim results are also requested for methods that support them, it is possible for a `SpeechRecognitionResults` object to include only the `speaker_labels` field.
     *
     * @return the speaker_labels_serialized_name
     */
    @AuraEnabled
    public List<SpeakerLabelsResult> getSpeakerLabels() {
      return speaker_labels_serialized_name;
    }
    /**
     * Gets the warnings_serialized_name.
     *
     * An array of warning messages associated with the request: * Warnings for invalid query parameters or JSON fields can include a descriptive message and a list of invalid argument strings, for example, `"Unknown arguments:"` or `"Unknown url query arguments:"` followed by a list of the form `"invalid_arg_1, invalid_arg_2."` * The following warning is returned if the request passes a custom model that is based on an older version of a base model for which an updated version is available: `"Using previous version of base model, because your custom model has been built with it. Please note that this version will be supported only for a limited time. Consider updating your custom model to the new base model. If you do not do that you will be automatically switched to base model when you used the non-updated custom model."`  In both cases, the request succeeds despite the warnings.
     *
     * @return the warnings_serialized_name
     */
    @AuraEnabled
    public List<String> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the results_serialized_name.
     *
     * @param results the new results
     */
    public void setResults(final List<SpeechRecognitionResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the result_index_serialized_name.
     *
     * @param resultIndex the new resultIndex
     */
    public void setResultIndex(final long resultIndex) {
      this.result_index_serialized_name = resultIndex;
    }

    /**
     * Sets the speaker_labels_serialized_name.
     *
     * @param speakerLabels the new speakerLabels
     */
    public void setSpeakerLabels(final List<SpeakerLabelsResult> speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
    }

    /**
     * Sets the warnings_serialized_name.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final List<String> warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechRecognitionResults ret = (SpeechRecognitionResults) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for results_serialized_name
      List<SpeechRecognitionResult> newResults = new List<SpeechRecognitionResult>();
      List<SpeechRecognitionResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          SpeechRecognitionResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          SpeechRecognitionResult newItem = (SpeechRecognitionResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechRecognitionResult.class);
          newResults.add(newItem);
        }
        ret.setResults(newResults);
      }

      // calling custom deserializer for speaker_labels_serialized_name
      List<SpeakerLabelsResult> newSpeakerLabels = new List<SpeakerLabelsResult>();
      List<SpeakerLabelsResult> deserializedSpeakerLabels = ret.getSpeakerLabels();
      if (deserializedSpeakerLabels != null) {
        for (Integer i = 0; i < deserializedSpeakerLabels.size(); i++) {
          SpeakerLabelsResult currentItem = ret.getSpeakerLabels().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('speaker_labels_serialized_name');
          SpeakerLabelsResult newItem = (SpeakerLabelsResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeakerLabelsResult.class);
          newSpeakerLabels.add(newItem);
        }
        ret.setSpeakerLabels(newSpeakerLabels);
      }

      return ret;
    }
  }

  /**
   * SupportedFeatures.
   */
  public class SupportedFeatures extends IBMWatsonGenericModel {
    private Boolean custom_language_model_serialized_name;
    private Boolean speaker_labels_serialized_name;
    /**
     * Gets the custom_language_model_serialized_name.
     *
     * Indicates whether the customization interface can be used to create a custom language model based on the language model.
     *
     * @return the custom_language_model_serialized_name
     */
    @AuraEnabled
    public Boolean getCustomLanguageModel() {
      return custom_language_model_serialized_name;
    }
    /**
     * Gets the speaker_labels_serialized_name.
     *
     * Indicates whether the `speaker_labels` parameter can be used with the language model.
     *
     * @return the speaker_labels_serialized_name
     */
    @AuraEnabled
    public Boolean getSpeakerLabels() {
      return speaker_labels_serialized_name;
    }

    /**
     * Sets the custom_language_model_serialized_name.
     *
     * @param customLanguageModel the new customLanguageModel
     */
    public void setCustomLanguageModel(final Boolean customLanguageModel) {
      this.custom_language_model_serialized_name = customLanguageModel;
    }

    /**
     * Sets the speaker_labels_serialized_name.
     *
     * @param speakerLabels the new speakerLabels
     */
    public void setSpeakerLabels(final Boolean speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
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
   * The trainAcousticModel options.
   */
  public class TrainAcousticModelOptions {
    private String customization_id_serialized_name;
    private String custom_language_model_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model that is to be trained. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the custom_language_model_id_serialized_name.
     *
     * The GUID of a custom language model that is to be used during training of the custom acoustic model. Specify a custom language model that has been trained with verbatim transcriptions of the audio resources or that contains words that are relevant to the contents of the audio resources.
     *
     * @return the custom_language_model_id_serialized_name
     */
    public String customLanguageModelId() {
      return custom_language_model_id_serialized_name;
    }
    private TrainAcousticModelOptions(TrainAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      custom_language_model_id_serialized_name = builder.custom_language_model_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a TrainAcousticModelOptions builder
     */
    public TrainAcousticModelOptionsBuilder newBuilder() {
      return new TrainAcousticModelOptionsBuilder(this);
    }

  }

  /**
   * TrainAcousticModelOptions Builder.
   */
  public class TrainAcousticModelOptionsBuilder {
    private String customization_id_serialized_name;
    private String custom_language_model_id_serialized_name;

    private TrainAcousticModelOptionsBuilder(TrainAcousticModelOptions trainAcousticModelOptions) {
      customization_id_serialized_name = trainAcousticModelOptions.customization_id_serialized_name;
      custom_language_model_id_serialized_name = trainAcousticModelOptions.custom_language_model_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public TrainAcousticModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public TrainAcousticModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a TrainAcousticModelOptions.
     *
     * @return the trainAcousticModelOptions
     */
    public TrainAcousticModelOptions build() {
      return new TrainAcousticModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the TrainAcousticModelOptions builder
     */
    public TrainAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the custom_language_model_id_serialized_name.
     *
     * @param customLanguageModelId the customLanguageModelId
     * @return the TrainAcousticModelOptions builder
     */
    public TrainAcousticModelOptionsBuilder customLanguageModelId(String customLanguageModelId) {
      this.custom_language_model_id_serialized_name = customLanguageModelId;
      return this;
    }
  }

  /**
   * The trainLanguageModel options.
   */
  public class TrainLanguageModelOptions {
    private String customization_id_serialized_name;
    private String word_type_to_add_serialized_name;
    private Double customization_weight_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model that is to be trained. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the word_type_to_add_serialized_name.
     *
     * The type of words from the custom language model's words resource on which to train the model: * `all` (the default) trains the model on all new words, regardless of whether they were extracted from corpora or were added or modified by the user. * `user` trains the model only on new words that were added or modified by the user; the model is not trained on new words extracted from corpora.
     *
     * @return the word_type_to_add_serialized_name
     */
    public String wordTypeToAdd() {
      return word_type_to_add_serialized_name;
    }
    /**
     * Gets the customization_weight_serialized_name.
     *
     * Specifies a customization weight for the custom language model. The customization weight tells the service how much weight to give to words from the custom language model compared to those from the base model for speech recognition. Specify a value between 0.0 and 1.0. The default value is 0.3.   The default value yields the best performance in general. Assign a higher value if your audio makes frequent use of OOV words from the custom model. Use caution when setting the weight: a higher value can improve the accuracy of phrases from the custom model's domain, but it can negatively affect performance on non-domain phrases.   The value that you assign is used for all recognition requests that use the model. You can override it for any recognition request by specifying a customization weight for that request.
     *
     * @return the customization_weight_serialized_name
     */
    public Double customizationWeight() {
      return customization_weight_serialized_name;
    }
    private TrainLanguageModelOptions(TrainLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      word_type_to_add_serialized_name = builder.word_type_to_add_serialized_name;
      customization_weight_serialized_name = builder.customization_weight_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder newBuilder() {
      return new TrainLanguageModelOptionsBuilder(this);
    }

  }

  /**
   * TrainLanguageModelOptions Builder.
   */
  public class TrainLanguageModelOptionsBuilder {
    private String customization_id_serialized_name;
    private String word_type_to_add_serialized_name;
    private Double customization_weight_serialized_name;

    private TrainLanguageModelOptionsBuilder(TrainLanguageModelOptions trainLanguageModelOptions) {
      customization_id_serialized_name = trainLanguageModelOptions.customization_id_serialized_name;
      word_type_to_add_serialized_name = trainLanguageModelOptions.word_type_to_add_serialized_name;
      customization_weight_serialized_name = trainLanguageModelOptions.customization_weight_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public TrainLanguageModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public TrainLanguageModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a TrainLanguageModelOptions.
     *
     * @return the trainLanguageModelOptions
     */
    public TrainLanguageModelOptions build() {
      return new TrainLanguageModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the word_type_to_add_serialized_name.
     *
     * @param wordTypeToAdd the wordTypeToAdd
     * @return the TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder wordTypeToAdd(String wordTypeToAdd) {
      this.word_type_to_add_serialized_name = wordTypeToAdd;
      return this;
    }

    /**
     * Set the customization_weight_serialized_name.
     *
     * @param customizationWeight the customizationWeight
     * @return the TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder customizationWeight(Double customizationWeight) {
      this.customization_weight_serialized_name = customizationWeight;
      return this;
    }
  }

  /**
   * The unregisterCallback options.
   */
  public class UnregisterCallbackOptions {
    private String callback_url_serialized_name;
    /**
     * Gets the callback_url_serialized_name.
     *
     * The callback URL that is to be unregistered.
     *
     * @return the callback_url_serialized_name
     */
    public String callbackUrl() {
      return callback_url_serialized_name;
    }
    private UnregisterCallbackOptions(UnregisterCallbackOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.callback_url_serialized_name, 'callback_url_serialized_name cannot be null');
      callback_url_serialized_name = builder.callback_url_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UnregisterCallbackOptions builder
     */
    public UnregisterCallbackOptionsBuilder newBuilder() {
      return new UnregisterCallbackOptionsBuilder(this);
    }

  }

  /**
   * UnregisterCallbackOptions Builder.
   */
  public class UnregisterCallbackOptionsBuilder {
    private String callback_url_serialized_name;

    private UnregisterCallbackOptionsBuilder(UnregisterCallbackOptions unregisterCallbackOptions) {
      callback_url_serialized_name = unregisterCallbackOptions.callback_url_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UnregisterCallbackOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param callbackUrl the callbackUrl
     */
    public UnregisterCallbackOptionsBuilder(String callbackUrl) {
      this.callback_url_serialized_name = callbackUrl;
    }

    /**
     * Builds a UnregisterCallbackOptions.
     *
     * @return the unregisterCallbackOptions
     */
    public UnregisterCallbackOptions build() {
      return new UnregisterCallbackOptions(this);
    }

    /**
     * Set the callback_url_serialized_name.
     *
     * @param callbackUrl the callbackUrl
     * @return the UnregisterCallbackOptions builder
     */
    public UnregisterCallbackOptionsBuilder callbackUrl(String callbackUrl) {
      this.callback_url_serialized_name = callbackUrl;
      return this;
    }
  }

  /**
   * The upgradeAcousticModel options.
   */
  public class UpgradeAcousticModelOptions {
    private String customization_id_serialized_name;
    private String custom_language_model_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom acoustic model that is to be upgraded. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    /**
     * Gets the custom_language_model_id_serialized_name.
     *
     * If the custom acoustic model was trained with a custom language model, the GUID of that custom language model. The custom language model must be upgraded before the custom acoustic model can be upgraded.
     *
     * @return the custom_language_model_id_serialized_name
     */
    public String customLanguageModelId() {
      return custom_language_model_id_serialized_name;
    }
    private UpgradeAcousticModelOptions(UpgradeAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
      custom_language_model_id_serialized_name = builder.custom_language_model_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UpgradeAcousticModelOptions builder
     */
    public UpgradeAcousticModelOptionsBuilder newBuilder() {
      return new UpgradeAcousticModelOptionsBuilder(this);
    }

  }

  /**
   * UpgradeAcousticModelOptions Builder.
   */
  public class UpgradeAcousticModelOptionsBuilder {
    private String customization_id_serialized_name;
    private String custom_language_model_id_serialized_name;

    private UpgradeAcousticModelOptionsBuilder(UpgradeAcousticModelOptions upgradeAcousticModelOptions) {
      customization_id_serialized_name = upgradeAcousticModelOptions.customization_id_serialized_name;
      custom_language_model_id_serialized_name = upgradeAcousticModelOptions.custom_language_model_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpgradeAcousticModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public UpgradeAcousticModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a UpgradeAcousticModelOptions.
     *
     * @return the upgradeAcousticModelOptions
     */
    public UpgradeAcousticModelOptions build() {
      return new UpgradeAcousticModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the UpgradeAcousticModelOptions builder
     */
    public UpgradeAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    /**
     * Set the custom_language_model_id_serialized_name.
     *
     * @param customLanguageModelId the customLanguageModelId
     * @return the UpgradeAcousticModelOptions builder
     */
    public UpgradeAcousticModelOptionsBuilder customLanguageModelId(String customLanguageModelId) {
      this.custom_language_model_id_serialized_name = customLanguageModelId;
      return this;
    }
  }

  /**
   * The upgradeLanguageModel options.
   */
  public class UpgradeLanguageModelOptions {
    private String customization_id_serialized_name;
    /**
     * Gets the customization_id_serialized_name.
     *
     * The GUID of the custom language model that is to be upgraded. You must make the request with service credentials created for the instance of the service that owns the custom model.
     *
     * @return the customization_id_serialized_name
     */
    public String customizationId() {
      return customization_id_serialized_name;
    }
    private UpgradeLanguageModelOptions(UpgradeLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customization_id_serialized_name, 'customization_id_serialized_name cannot be empty');
      customization_id_serialized_name = builder.customization_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a UpgradeLanguageModelOptions builder
     */
    public UpgradeLanguageModelOptionsBuilder newBuilder() {
      return new UpgradeLanguageModelOptionsBuilder(this);
    }

  }

  /**
   * UpgradeLanguageModelOptions Builder.
   */
  public class UpgradeLanguageModelOptionsBuilder {
    private String customization_id_serialized_name;

    private UpgradeLanguageModelOptionsBuilder(UpgradeLanguageModelOptions upgradeLanguageModelOptions) {
      customization_id_serialized_name = upgradeLanguageModelOptions.customization_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpgradeLanguageModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public UpgradeLanguageModelOptionsBuilder(String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Builds a UpgradeLanguageModelOptions.
     *
     * @return the upgradeLanguageModelOptions
     */
    public UpgradeLanguageModelOptions build() {
      return new UpgradeLanguageModelOptions(this);
    }

    /**
     * Set the customization_id_serialized_name.
     *
     * @param customizationId the customizationId
     * @return the UpgradeLanguageModelOptions builder
     */
    public UpgradeLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }
  }

  /**
   * Word.
   */
  public class Word extends IBMWatsonGenericModel {
    private String word_serialized_name;
    private List<String> sounds_like_serialized_name;
    private String display_as_serialized_name;
    private Long count_serialized_name;
    private List<String> source_serialized_name;
    private List<WordError> error_serialized_name;
    /**
     * Gets the word_serialized_name.
     *
     * A word from the custom model's words resource. The spelling of the word is used to train the model.
     *
     * @return the word_serialized_name
     */
    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }
    /**
     * Gets the sounds_like_serialized_name.
     *
     * An array of pronunciations for the word. The array can include the sounds-like pronunciation automatically generated by the service if none is provided for the word; the service adds this pronunciation when it finishes processing the word.
     *
     * @return the sounds_like_serialized_name
     */
    @AuraEnabled
    public List<String> getSoundsLike() {
      return sounds_like_serialized_name;
    }
    /**
     * Gets the display_as_serialized_name.
     *
     * The spelling of the word that the service uses to display the word in a transcript. The field contains an empty string if no display-as value is provided for the word, in which case the word is displayed as it is spelled.
     *
     * @return the display_as_serialized_name
     */
    @AuraEnabled
    public String getDisplayAs() {
      return display_as_serialized_name;
    }
    /**
     * Gets the count_serialized_name.
     *
     * A sum of the number of times the word is found across all corpora. For example, if the word occurs five times in one corpus and seven times in another, its count is `12`. If you add a custom word to a model before it is added by any corpora, the count begins at `1`; if the word is added from a corpus first and later modified, the count reflects only the number of times it is found in corpora.
     *
     * @return the count_serialized_name
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }
    /**
     * Gets the source_serialized_name.
     *
     * An array of sources that describes how the word was added to the custom model's words resource. For OOV words added from a corpus, includes the name of the corpus; if the word was added by multiple corpora, the names of all corpora are listed. If the word was modified or added by the user directly, the field includes the string `user`.
     *
     * @return the source_serialized_name
     */
    @AuraEnabled
    public List<String> getSource() {
      return source_serialized_name;
    }
    /**
     * Gets the error_serialized_name.
     *
     * If the service discovered one or more problems that you need to correct for the word's definition, an array that describes each of the errors.
     *
     * @return the error_serialized_name
     */
    @AuraEnabled
    public List<WordError> getError() {
      return error_serialized_name;
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
     * Sets the sounds_like_serialized_name.
     *
     * @param soundsLike the new soundsLike
     */
    public void setSoundsLike(final List<String> soundsLike) {
      this.sounds_like_serialized_name = soundsLike;
    }

    /**
     * Sets the display_as_serialized_name.
     *
     * @param displayAs the new displayAs
     */
    public void setDisplayAs(final String displayAs) {
      this.display_as_serialized_name = displayAs;
    }

    /**
     * Sets the count_serialized_name.
     *
     * @param count the new count
     */
    public void setCount(final long count) {
      this.count_serialized_name = count;
    }

    /**
     * Sets the source_serialized_name.
     *
     * @param source the new source
     */
    public void setSource(final List<String> source) {
      this.source_serialized_name = source;
    }

    /**
     * Sets the error_serialized_name.
     *
     * @param error the new error
     */
    public void setError(final List<WordError> error) {
      this.error_serialized_name = error;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Word ret = (Word) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for error_serialized_name
      List<WordError> newError = new List<WordError>();
      List<WordError> deserializedError = ret.getError();
      if (deserializedError != null) {
        for (Integer i = 0; i < deserializedError.size(); i++) {
          WordError currentItem = ret.getError().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('error_serialized_name');
          WordError newItem = (WordError) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WordError.class);
          newError.add(newItem);
        }
        ret.setError(newError);
      }

      return ret;
    }
  }

  /**
   * WordAlternativeResult.
   */
  public class WordAlternativeResult extends IBMWatsonGenericModel {
    private Double confidence_serialized_name;
    private String word_serialized_name;
    /**
     * Gets the confidence_serialized_name.
     *
     * A confidence score for the word alternative hypothesis in the range of 0 to 1.
     *
     * @return the confidence_serialized_name
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
    /**
     * Gets the word_serialized_name.
     *
     * An alternative hypothesis for a word from the input audio.
     *
     * @return the word_serialized_name
     */
    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the word_serialized_name.
     *
     * @param word the new word
     */
    public void setWord(final String word) {
      this.word_serialized_name = word;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WordAlternativeResult ret = (WordAlternativeResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * WordAlternativeResults.
   */
  public class WordAlternativeResults extends IBMWatsonGenericModel {
    private Double start_time_serialized_name;
    private Double end_time_serialized_name;
    private List<WordAlternativeResult> alternatives_serialized_name;
    /**
     * Gets the start_time_serialized_name.
     *
     * The start time in seconds of the word from the input audio that corresponds to the word alternatives.
     *
     * @return the start_time_serialized_name
     */
    @AuraEnabled
    public Double getStartTime() {
      return start_time_serialized_name;
    }
    /**
     * Gets the end_time_serialized_name.
     *
     * The end time in seconds of the word from the input audio that corresponds to the word alternatives.
     *
     * @return the end_time_serialized_name
     */
    @AuraEnabled
    public Double getEndTime() {
      return end_time_serialized_name;
    }
    /**
     * Gets the alternatives_serialized_name.
     *
     * An array of alternative hypotheses for a word from the input audio.
     *
     * @return the alternatives_serialized_name
     */
    @AuraEnabled
    public List<WordAlternativeResult> getAlternatives() {
      return alternatives_serialized_name;
    }

    /**
     * Sets the start_time_serialized_name.
     *
     * @param startTime the new startTime
     */
    public void setStartTime(final Double startTime) {
      this.start_time_serialized_name = startTime;
    }

    /**
     * Sets the end_time_serialized_name.
     *
     * @param endTime the new endTime
     */
    public void setEndTime(final Double endTime) {
      this.end_time_serialized_name = endTime;
    }

    /**
     * Sets the alternatives_serialized_name.
     *
     * @param alternatives the new alternatives
     */
    public void setAlternatives(final List<WordAlternativeResult> alternatives) {
      this.alternatives_serialized_name = alternatives;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WordAlternativeResults ret = (WordAlternativeResults) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for alternatives_serialized_name
      List<WordAlternativeResult> newAlternatives = new List<WordAlternativeResult>();
      List<WordAlternativeResult> deserializedAlternatives = ret.getAlternatives();
      if (deserializedAlternatives != null) {
        for (Integer i = 0; i < deserializedAlternatives.size(); i++) {
          WordAlternativeResult currentItem = ret.getAlternatives().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('alternatives_serialized_name');
          WordAlternativeResult newItem = (WordAlternativeResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WordAlternativeResult.class);
          newAlternatives.add(newItem);
        }
        ret.setAlternatives(newAlternatives);
      }

      return ret;
    }
  }

  /**
   * WordError.
   */
  public class WordError extends IBMWatsonGenericModel {
    private String element_serialized_name;
    /**
     * Gets the element_serialized_name.
     *
     * A key-value pair that describes an error associated with the definition of a word in the words resource. Each pair has the format `"element": "message"`, where `element` is the aspect of the definition that caused the problem and `message` describes the problem. The following example describes a problem with one of the word's sounds-like definitions: `"sounds_like_string": "Numbers are not allowed in sounds-like. You can try for example 'suggested_string'."` You must correct the error before you can train the model.
     *
     * @return the element_serialized_name
     */
    @AuraEnabled
    public String getElement() {
      return element_serialized_name;
    }

    /**
     * Sets the element_serialized_name.
     *
     * @param element the new element
     */
    public void setElement(final String element) {
      this.element_serialized_name = element;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WordError ret = (WordError) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Words.
   */
  public class Words extends IBMWatsonGenericModel {
    private List<Word> words_serialized_name;
    /**
     * Gets the words_serialized_name.
     *
     * Information about each word in the custom model's words resource. The array is empty if the custom model has no words.
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

  public class RecognizeOptions {
    private IBMWatsonFile audio_serialized_name;
    private String audio_filename_serialized_name;
    private String file_content_type_serialized_name;
    private Boolean continuous_serialized_name;
    private Integer max_alternatives_serialized_name;
    private Boolean timestamps_serialized_name;
    private Boolean word_confidence_serialized_name;
    private Integer inactivity_timeout_serialized_name;
    private String model_serialized_name;
    private Boolean interim_results_serialized_name;
    private Boolean keywords_serialized_name;
    private Double keywords_threshold_serialized_name;
    private Double word_alternatives_threshold_serialized_name;
    private Boolean profanity_filter_serialized_name;
    private Boolean smart_formatting_serialized_name;
    private String customization_id_serialized_name;
    private Boolean speaker_labels_serialized_name;

    public IBMWatsonFile audio() {
      return audio_serialized_name;
    }

    public String audioFilename() {
      return audio_filename_serialized_name;
    }

    public String fileContentType() {
      return file_content_type_serialized_name;
    }

    public Boolean continuous() {
      return continuous_serialized_name;
    }

    public Integer maxAlternatives() {
      return max_alternatives_serialized_name;
    }

    public Boolean timestamps() {
      return timestamps_serialized_name;
    }

    public Boolean wordConfidence() {
      return word_confidence_serialized_name;
    }

    public Integer inactivityTimeout() {
      return inactivity_timeout_serialized_name;
    }

    public String model() {
      return model_serialized_name;
    }

    public Boolean interimResults() {
      return interim_results_serialized_name;
    }

    public Boolean keywords() {
      return keywords_serialized_name;
    }

    public Double keywordsThreshold() {
      return keywords_threshold_serialized_name;
    }

    public Double wordAlternativesThreshold() {
      return word_alternatives_threshold_serialized_name;
    }

    public Boolean profanityFilter() {
      return profanity_filter_serialized_name;
    }

    public Boolean smartFormatting() {
      return smart_formatting_serialized_name;
    }

    public String customizationId() {
      return customization_id_serialized_name;
    }

    public Boolean speakerLabels() {
      return speaker_labels_serialized_name;
    }

    private RecognizeOptions(RecognizeOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.audio_serialized_name, 'audio cannot be empty');
      IBMWatsonValidator.notEmpty(builder.audio_filename_serialized_name, 'audioFilename cannot be empty');
      IBMWatsonValidator.notEmpty(builder.file_content_type_serialized_name, 'fileContenttype cannot be empty');
      audio_serialized_name = builder.audio_serialized_name;
      audio_filename_serialized_name = builder.audio_filename_serialized_name;
      file_content_type_serialized_name = builder.file_content_type_serialized_name;
      continuous_serialized_name = builder.continuous_serialized_name;
      max_alternatives_serialized_name = builder.max_alternatives_serialized_name;
      timestamps_serialized_name = builder.timestamps_serialized_name;
      word_confidence_serialized_name = builder.word_confidence_serialized_name;
      inactivity_timeout_serialized_name = builder.inactivity_timeout_serialized_name;
      model_serialized_name = builder.model_serialized_name;
      interim_results_serialized_name = builder.interim_results_serialized_name;
      keywords_serialized_name = builder.keywords_serialized_name;
      keywords_threshold_serialized_name = builder.keywords_threshold_serialized_name;
      word_alternatives_threshold_serialized_name = builder.word_alternatives_threshold_serialized_name;
      profanity_filter_serialized_name = builder.profanity_filter_serialized_name;
      smart_formatting_serialized_name = builder.smart_formatting_serialized_name;
      customization_id_serialized_name = builder.customization_id_serialized_name;
      speaker_labels_serialized_name = builder.speaker_labels_serialized_name;
    }

    public RecognizeOptionsBuilder newBuilder() {
      return new RecognizeOptionsBuilder(this);
    }
  }

  public class RecognizeOptionsBuilder {
    private IBMWatsonFile audio_serialized_name;
    private String audio_filename_serialized_name;
    private String file_content_type_serialized_name;
    private Boolean continuous_serialized_name;
    private Integer max_alternatives_serialized_name;
    private Boolean timestamps_serialized_name;
    private Boolean word_confidence_serialized_name;
    private Integer inactivity_timeout_serialized_name;
    private String model_serialized_name;
    private Boolean interim_results_serialized_name;
    private Boolean keywords_serialized_name;
    private Double keywords_threshold_serialized_name;
    private Double word_alternatives_threshold_serialized_name;
    private Boolean profanity_filter_serialized_name;
    private Boolean smart_formatting_serialized_name;
    private String customization_id_serialized_name;
    private Boolean speaker_labels_serialized_name;

    private RecognizeOptionsBuilder(RecognizeOptions recognizeOptions) {
      audio_serialized_name = recognizeOptions.audio_serialized_name;
      audio_filename_serialized_name = recognizeOptions.audio_filename_serialized_name;
      file_content_type_serialized_name = recognizeOptions.file_content_type_serialized_name;
      continuous_serialized_name = recognizeOptions.continuous_serialized_name;
      max_alternatives_serialized_name = recognizeOptions.max_alternatives_serialized_name;
      timestamps_serialized_name = recognizeOptions.timestamps_serialized_name;
      word_confidence_serialized_name = recognizeOptions.word_confidence_serialized_name;
      inactivity_timeout_serialized_name = recognizeOptions.inactivity_timeout_serialized_name;
      model_serialized_name = recognizeOptions.model_serialized_name;
      interim_results_serialized_name = recognizeOptions.interim_results_serialized_name;
      keywords_serialized_name = recognizeOptions.keywords_serialized_name;
      keywords_threshold_serialized_name = recognizeOptions.keywords_threshold_serialized_name;
      word_alternatives_threshold_serialized_name = recognizeOptions.word_alternatives_threshold_serialized_name;
      profanity_filter_serialized_name = recognizeOptions.profanity_filter_serialized_name;
      smart_formatting_serialized_name = recognizeOptions.smart_formatting_serialized_name;
      customization_id_serialized_name = recognizeOptions.customization_id_serialized_name;
      speaker_labels_serialized_name = recognizeOptions.speaker_labels_serialized_name;
    }

    public RecognizeOptionsBuilder() {
    }

    public RecognizeOptionsBuilder(IBMWatsonFile audio, String audioFilename, String fileContentType) {
      this.audio_serialized_name = audio;
      this.audio_filename_serialized_name = audioFilename;
      this.file_content_type_serialized_name = fileContentType;
    }

    public RecognizeOptions build() {
      return new RecognizeOptions(this);
    }

    public RecognizeOptionsBuilder audio(IBMWatsonFile audio) {
      this.audio_serialized_name = audio;
      return this;
    }

    public RecognizeOptionsBuilder audioFilename(String audioFilename) {
      this.audio_filename_serialized_name = audioFilename;
      return this;
    }

    public RecognizeOptionsBuilder fileContentType(String fileContentType) {
      this.file_content_type_serialized_name = fileContentType;
      return this;
    }

    public RecognizeOptionsBuilder continuous(Boolean continuous) {
      this.continuous_serialized_name = continuous;
      return this;
    }

    public RecognizeOptionsBuilder maxAlternatives(Integer maxAlternatives) {
      this.max_alternatives_serialized_name = maxAlternatives;
      return this;
    }

    public RecognizeOptionsBuilder timestamps(Boolean timestamps) {
      this.timestamps_serialized_name = timestamps;
      return this;
    }

    public RecognizeOptionsBuilder wordConfidence(Boolean wordConfidence) {
      this.word_confidence_serialized_name = wordConfidence;
      return this;
    }

    public RecognizeOptionsBuilder inactivityTimeout(Integer inactivityTimeout) {
      this.inactivity_timeout_serialized_name = inactivityTimeout;
      return this;
    }

    public RecognizeOptionsBuilder model(String model) {
      this.model_serialized_name = model;
      return this;
    }

    public RecognizeOptionsBuilder interimResults(Boolean interimResults) {
      this.interim_results_serialized_name = interimResults;
      return this;
    }

    public RecognizeOptionsBuilder keywords(Boolean keywords) {
      this.keywords_serialized_name = keywords;
      return this;
    }

    public RecognizeOptionsBuilder keywordsThreshold(Double keywordsThreshold) {
      this.keywords_threshold_serialized_name = keywordsThreshold;
      return this;
    }

    public RecognizeOptionsBuilder wordAlternativesThreshold(Double wordAlternativesThreshold) {
      this.word_alternatives_threshold_serialized_name = wordAlternativesThreshold;
      return this;
    }

    public RecognizeOptionsBuilder profanityFilter(Boolean profanityFilter) {
      this.profanity_filter_serialized_name = profanityFilter;
      return this;
    }

    public RecognizeOptionsBuilder smartFormatting(Boolean smartFormatting) {
      this.smart_formatting_serialized_name = smartFormatting;
      return this;
    }

    public RecognizeOptionsBuilder customizationId(String customizationId) {
      this.customization_id_serialized_name = customizationId;
      return this;
    }

    public RecognizeOptionsBuilder speakerLabels(Boolean speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
      return this;
    }
  }

  public class SpeechAlternative extends IBMWatsonGenericModel {
    private Double confidence_serialized_name;
    private List<SpeechTimestamp> timestamps_serialized_name;
    private String transcript_serialized_name;
    private List<SpeechWordConfidence> word_confidences_serialized_name;

    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    @AuraEnabled
    public List<SpeechTimestamp> getTimestamps() {
      return timestamps_serialized_name;
    }

    @AuraEnabled
    public String getTranscript() {
      return transcript_serialized_name;
    }

    @AuraEnabled
    public List<SpeechWordConfidence> getWordConfidences() {
      return word_confidences_serialized_name;
    }

    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    public void setTimestamps(final List<SpeechTimestamp> timestamps) {
      this.timestamps_serialized_name = timestamps;
    }

    public void setTranscript(final String transcript) {
      this.transcript_serialized_name = transcript;
    }

    public void setWordConfidences(final List<SpeechWordConfidence> wordConfidences) {
      this.word_confidences_serialized_name = wordConfidences;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechAlternative ret = (SpeechAlternative) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  public class SpeechResults extends IBMWatsonGenericModel {
    private Integer result_index_serialized_name;
    private List<Transcript> results_serialized_name;
    private List<SpeakerLabelsResult> speaker_labels_serialized_name;

    @AuraEnabled
    public Integer getResultIndex() {
      return result_index_serialized_name;
    }

    @AuraEnabled
    public List<Transcript> getResults() {
      return results_serialized_name;
    }

    @AuraEnabled
    public List<SpeakerLabelsResult> getSpeakerLabels() {
      return speaker_labels_serialized_name;
    }

    public void setResultIndex(final Integer resultIndex) {
      this.result_index_serialized_name = resultIndex;
    }

    public void setResults(final List<Transcript> results) {
      this.results_serialized_name = results;
    }

    public void setSpeakerLabels(final List<SpeakerLabelsResult> speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechResults ret = (SpeechResults) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  public class SpeechTimestamp extends IBMWatsonGenericModel {
    private Double end_time_serialized_name;
    private Double start_time_serialized_name;
    private String word_serialized_name;

    @AuraEnabled
    public Double getEndTime() {
      return end_time_serialized_name;
    }

    @AuraEnabled
    public Double getStartTime() {
      return start_time_serialized_name;
    }

    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }

    public void setEndTime(final Double endTime) {
      this.end_time_serialized_name = endTime;
    }

    public void setStartTime(final Double startTime) {
      this.start_time_serialized_name = startTime;
    }

    public void setWord(final String word) {
      this.word_serialized_name = word;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechTimestamp ret = (SpeechTimestamp) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  public class SpeechWordAlternatives extends IBMWatsonGenericModel {
    private Double start_time_serialized_name;
    private Double end_time_serialized_name;
    private List<WordAlternativeResult> alternatives_serialized_name;

    @AuraEnabled
    public Double getStartTime() {
      return start_time_serialized_name;
    }

    @AuraEnabled
    public Double getEndTime() {
      return end_time_serialized_name;
    }

    @AuraEnabled
    public List<WordAlternativeResult> getAlternatives() {
      return alternatives_serialized_name;
    }

    public void setStartTime(final Double startTime) {
      this.start_time_serialized_name = startTime;
    }

    public void setEndTime(final Double endTime) {
      this.end_time_serialized_name = endTime;
    }

    public void setAlternatives(final List<WordAlternativeResult> alternatives) {
      this.alternatives_serialized_name = alternatives;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechWordAlternatives ret = (SpeechWordAlternatives) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  public class SpeechWordConfidence extends IBMWatsonGenericModel {
    private Double confidence_serialized_name;
    private String word_serialized_name;

    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }

    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    public void setWord(final String word) {
      this.word_serialized_name = word;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SpeechWordConfidence ret = (SpeechWordConfidence) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  public class Transcript extends IBMWatsonGenericModel {
    private Boolean ffinal_serialize_name;
    private List<SpeechAlternative> alternatives_serialized_name;
    private Map<String, List<KeywordResult>> keyword_results_serialized_name;
    private List<SpeechWordAlternatives> word_alternatives_serialized_name;

    @AuraEnabled
    public Boolean getFinal() {
      return ffinal_serialize_name;
    }

    @AuraEnabled
    public List<SpeechAlternative> getAlternatives() {
      return alternatives_serialized_name;
    }

    @AuraEnabled
    public Map<String, List<KeywordResult>> getKeywordResults() {
      return keyword_results_serialized_name;
    }

    @AuraEnabled
    public List<SpeechWordAlternatives> getWordAlternatives() {
      return word_alternatives_serialized_name;
    }

    public void setFinal(final Boolean isFinal) {
      this.ffinal_serialize_name = isFinal;
    }
    
    public void setAlternatives(final List<SpeechAlternative> alternatives) {
      this.alternatives_serialized_name = alternatives;
    }

    public void setKeywordResults(final Map<String, List<KeywordResult>> keywordResults) {
      this.keyword_results_serialized_name = keywordResults;
    }

    public void setWordAlternatives(final List<SpeechWordAlternatives> wordAlternatives) {
      this.word_alternatives_serialized_name = wordAlternatives;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Transcript ret = (Transcript) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }
}
