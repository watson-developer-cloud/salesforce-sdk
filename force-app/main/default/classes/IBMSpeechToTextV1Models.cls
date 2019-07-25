public class IBMSpeechToTextV1Models {
  /**
   * Information about an existing custom acoustic model.
   */
  public class AcousticModel extends IBMWatsonResponseModel {
    private String customization_id_serialized_name;
    private String created_serialized_name;
    private String updated_serialized_name;
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
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model. The **Create a custom acoustic model** method returns
     * only this field of the object; it does not return the other fields.
     *
     * @return the customizationId
     */
    @AuraEnabled
    public String getCustomizationId() {
      return customization_id_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom acoustic model was created. The value
     * is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the created
     */
    @AuraEnabled
    public String getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom acoustic model was last modified. The
     * `created` and `updated` fields are equal when an acoustic model is first added but has yet to be updated. The
     * value is provided in full ISO 8601 format (YYYY-MM-DDThh:mm:ss.sTZD).
     *
     * @return the updated
     */
    @AuraEnabled
    public String getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * The language identifier of the custom acoustic model (for example, `en-US`).
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the versions.
     *
     * A list of the available versions of the custom acoustic model. Each element of the array indicates a version of
     * the base model with which the custom model can be used. Multiple versions exist only if the custom model has been
     * upgraded; otherwise, only a single version is shown.
     *
     * @return the versions
     */
    @AuraEnabled
    public List<String> getVersions() {
      return versions_serialized_name;
    }
 
    /**
     * Gets the owner.
     *
     * The GUID of the credentials for the instance of the service that owns the custom acoustic model.
     *
     * @return the owner
     */
    @AuraEnabled
    public String getOwner() {
      return owner_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * The name of the custom acoustic model.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the custom acoustic model.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the baseModelName.
     *
     * The name of the language model for which the custom acoustic model was created.
     *
     * @return the baseModelName
     */
    @AuraEnabled
    public String getBaseModelName() {
      return base_model_name_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The current status of the custom acoustic model:
     * * `pending`: The model was created but is waiting either for valid training data to be added or for the service
     * to finish analyzing added data.
     * * `ready`: The model contains valid data and is ready to be trained. If the model contains a mix of valid and
     * invalid resources, you need to set the `strict` parameter to `false` for the training to proceed.
     * * `training`: The model is currently being trained.
     * * `available`: The model is trained and ready to use.
     * * `upgrading`: The model is currently being upgraded.
     * * `failed`: Training of the model failed.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the progress.
     *
     * A percentage that indicates the progress of the custom acoustic model's current training. A value of `100` means
     * that the model is fully trained. **Note:** The `progress` field does not currently reflect the progress of the
     * training. The field changes from `0` to `100` when training is complete.
     *
     * @return the progress
     */
    @AuraEnabled
    public Long getProgress() {
      return progress_serialized_name;
    }
 
    /**
     * Gets the warnings.
     *
     * If the request included unknown parameters, the following message: `Unexpected query parameter(s) ['parameters']
     * detected`, where `parameters` is a list that includes a quoted string for each unknown parameter.
     *
     * @return the warnings
     */
    @AuraEnabled
    public String getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the customizationId.
     *
     * @param customizationId the new customizationId
     */
    public void setCustomizationId(final String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Sets the created.
     *
     * @param created the new created
     */
    public void setCreated(final String created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the updated.
     *
     * @param updated the new updated
     */
    public void setUpdated(final String updated) {
      this.updated_serialized_name = updated;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the versions.
     *
     * @param versions the new versions
     */
    public void setVersions(final List<String> versions) {
      this.versions_serialized_name = versions;
    }

    /**
     * Sets the owner.
     *
     * @param owner the new owner
     */
    public void setOwner(final String owner) {
      this.owner_serialized_name = owner;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the baseModelName.
     *
     * @param baseModelName the new baseModelName
     */
    public void setBaseModelName(final String baseModelName) {
      this.base_model_name_serialized_name = baseModelName;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the progress.
     *
     * @param progress the new progress
     */
    public void setProgress(final long progress) {
      this.progress_serialized_name = progress;
    }

    /**
     * Sets the warnings.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final String warnings) {
      this.warnings_serialized_name = warnings;
    }

  }

  /**
   * Information about existing custom acoustic models.
   */
  public class AcousticModels extends IBMWatsonResponseModel {
    private List<AcousticModel> customizations_serialized_name;
 
    /**
     * Gets the customizations.
     *
     * An array of `AcousticModel` objects that provides information about each available custom acoustic model. The
     * array is empty if the requesting credentials own no custom acoustic models (if no language is specified) or own
     * no custom acoustic models for the specified language.
     *
     * @return the customizations
     */
    @AuraEnabled
    public List<AcousticModel> getCustomizations() {
      return customizations_serialized_name;
    }

    /**
     * Sets the customizations.
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

      // calling custom deserializer for customizations
      List<AcousticModel> newCustomizations = new List<AcousticModel>();
      List<AcousticModel> deserializedCustomizations = ret.getCustomizations();
      if (deserializedCustomizations != null) {
        for (Integer i = 0; i < deserializedCustomizations.size(); i++) {
          AcousticModel currentItem = ret.getCustomizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('customizations_serialized_name');
          AcousticModel newItem = (AcousticModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AcousticModel.class);
          newCustomizations.add(newItem);
        }
        ret.customizations_serialized_name = newCustomizations;
      }

      return ret;
    }
  }

  /**
   * The addAudio options.
   */
  public class AddAudioOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String audioName;
    private IBMWatsonFile audioResource;
    private String contentType;
    private String containedContentType;
    private Boolean allowOverwrite;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the audioName.
     *
     * The name of the new audio resource for the custom acoustic model. Use a localized name that matches the language
     * of the custom model and reflects the contents of the resource.
     * * Include a maximum of 128 characters in the name.
     * * Do not use characters that need to be URL-encoded. For example, do not use spaces, slashes, backslashes,
     * colons, ampersands, double quotes, plus signs, equals signs, questions marks, and so on in the name. (The service
     * does not prevent the use of these characters. But because they must be URL-encoded wherever used, their use is
     * strongly discouraged.)
     * * Do not use the name of an audio resource that has already been added to the custom model.
     *
     * @return the audioName
     */
    public String audioName() {
      return audioName;
    }
 
    /**
     * Gets the audioResource.
     *
     * The audio resource that is to be added to the custom acoustic model, an individual audio file or an archive file.
     *
     *
     * With the `curl` command, use the `--data-binary` option to upload the file for the request.
     *
     * @return the audioResource
     */
    public IBMWatsonFile audioResource() {
      return audioResource;
    }
 
    /**
     * Gets the contentType.
     *
     * For an audio-type resource, the format (MIME type) of the audio. For more information, see **Content types for
     * audio-type resources** in the method description.
     *
     * For an archive-type resource, the media type of the archive file. For more information, see **Content types for
     * archive-type resources** in the method description.
     *
     * @return the contentType
     */
    public String contentType() {
      return contentType;
    }
 
    /**
     * Gets the containedContentType.
     *
     * **For an archive-type resource,** specify the format of the audio files that are contained in the archive file if
     * they are of type `audio/alaw`, `audio/basic`, `audio/l16`, or `audio/mulaw`. Include the `rate`, `channels`, and
     * `endianness` parameters where necessary. In this case, all audio files that are contained in the archive file
     * must be of the indicated type.
     *
     * For all other audio formats, you can omit the header. In this case, the audio files can be of multiple types as
     * long as they are not of the types listed in the previous paragraph.
     *
     * The parameter accepts all of the audio formats that are supported for use with speech recognition. For more
     * information, see **Content types for audio-type resources** in the method description.
     *
     * **For an audio-type resource,** omit the header.
     *
     * @return the containedContentType
     */
    public String containedContentType() {
      return containedContentType;
    }
 
    /**
     * Gets the allowOverwrite.
     *
     * If `true`, the specified audio resource overwrites an existing audio resource with the same name. If `false`, the
     * request fails if an audio resource with the same name already exists. The parameter has no effect if an audio
     * resource with the same name does not already exist.
     *
     * @return the allowOverwrite
     */
    public Boolean allowOverwrite() {
      return allowOverwrite;
    }

    private AddAudioOptions(AddAudioOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.audioName, 'audioName cannot be empty');
      IBMWatsonValidator.notNull(builder.audioResource, 'audioResource cannot be null');
      customizationId = builder.customizationId;
      audioName = builder.audioName;
      audioResource = builder.audioResource;
      contentType = builder.contentType;
      containedContentType = builder.containedContentType;
      allowOverwrite = builder.allowOverwrite;
      this.requestHeaders = builder.requestHeaders;
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
  public class AddAudioOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String audioName;
    private IBMWatsonFile audioResource;
    private String contentType;
    private String containedContentType;
    private Boolean allowOverwrite;

    private AddAudioOptionsBuilder(AddAudioOptions addAudioOptions) {
      customizationId = addAudioOptions.customizationId;
      audioName = addAudioOptions.audioName;
      audioResource = addAudioOptions.audioResource;
      contentType = addAudioOptions.contentType;
      containedContentType = addAudioOptions.containedContentType;
      allowOverwrite = addAudioOptions.allowOverwrite;
      this.requestHeaders.putAll(addAudioOptions.requestHeaders());
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
     * @param audioResource the audioResource
     */
    public AddAudioOptionsBuilder(String customizationId, String audioName, IBMWatsonFile audioResource) {
      this.customizationId = customizationId;
      this.audioName = audioName;
      this.audioResource = audioResource;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the audioName.
     *
     * @param audioName the audioName
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder audioName(String audioName) {
      this.audioName = audioName;
      return this;
    }

    /**
     * Set the audioResource.
     *
     * @param audioResource the audioResource
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder audioResource(IBMWatsonFile audioResource) {
      this.audioResource = audioResource;
      return this;
    }

    /**
     * Set the contentType.
     *
     * @param contentType the contentType
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder contentType(String contentType) {
      this.contentType = contentType;
      return this;
    }

    /**
     * Set the containedContentType.
     *
     * @param containedContentType the containedContentType
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder containedContentType(String containedContentType) {
      this.containedContentType = containedContentType;
      return this;
    }

    /**
     * Set the allowOverwrite.
     *
     * @param allowOverwrite the allowOverwrite
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder allowOverwrite(Boolean allowOverwrite) {
      this.allowOverwrite = allowOverwrite;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddAudioOptions builder
     */
    public AddAudioOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The addCorpus options.
   */
  public class AddCorpusOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String corpusName;
    private IBMWatsonFile corpusFile;
    private Boolean allowOverwrite;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the corpusName.
     *
     * The name of the new corpus for the custom language model. Use a localized name that matches the language of the
     * custom model and reflects the contents of the corpus.
     * * Include a maximum of 128 characters in the name.
     * * Do not use characters that need to be URL-encoded. For example, do not use spaces, slashes, backslashes,
     * colons, ampersands, double quotes, plus signs, equals signs, questions marks, and so on in the name. (The service
     * does not prevent the use of these characters. But because they must be URL-encoded wherever used, their use is
     * strongly discouraged.)
     * * Do not use the name of an existing corpus or grammar that is already defined for the custom model.
     * * Do not use the name `user`, which is reserved by the service to denote custom words that are added or modified
     * by the user.
     * * Do not use the name `base_lm` or `default_lm`. Both names are reserved for future use by the service.
     *
     * @return the corpusName
     */
    public String corpusName() {
      return corpusName;
    }
 
    /**
     * Gets the corpusFile.
     *
     * A plain text file that contains the training data for the corpus. Encode the file in UTF-8 if it contains
     * non-ASCII characters; the service assumes UTF-8 encoding if it encounters non-ASCII characters.
     *
     * Make sure that you know the character encoding of the file. You must use that encoding when working with the
     * words in the custom language model. For more information, see [Character
     * encoding](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-corporaWords#charEncoding).
     *
     * With the `curl` command, use the `--data-binary` option to upload the file for the request.
     *
     * @return the corpusFile
     */
    public IBMWatsonFile corpusFile() {
      return corpusFile;
    }
 
    /**
     * Gets the allowOverwrite.
     *
     * If `true`, the specified corpus overwrites an existing corpus with the same name. If `false`, the request fails
     * if a corpus with the same name already exists. The parameter has no effect if a corpus with the same name does
     * not already exist.
     *
     * @return the allowOverwrite
     */
    public Boolean allowOverwrite() {
      return allowOverwrite;
    }

    private AddCorpusOptions(AddCorpusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.corpusName, 'corpusName cannot be empty');
      IBMWatsonValidator.notNull(builder.corpusFile, 'corpusFile cannot be null');
      customizationId = builder.customizationId;
      corpusName = builder.corpusName;
      corpusFile = builder.corpusFile;
      allowOverwrite = builder.allowOverwrite;
      this.requestHeaders = builder.requestHeaders;
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
  public class AddCorpusOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String corpusName;
    private IBMWatsonFile corpusFile;
    private Boolean allowOverwrite;

    private AddCorpusOptionsBuilder(AddCorpusOptions addCorpusOptions) {
      customizationId = addCorpusOptions.customizationId;
      corpusName = addCorpusOptions.corpusName;
      corpusFile = addCorpusOptions.corpusFile;
      allowOverwrite = addCorpusOptions.allowOverwrite;
      this.requestHeaders.putAll(addCorpusOptions.requestHeaders());
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
      this.customizationId = customizationId;
      this.corpusName = corpusName;
      this.corpusFile = corpusFile;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the corpusName.
     *
     * @param corpusName the corpusName
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder corpusName(String corpusName) {
      this.corpusName = corpusName;
      return this;
    }

    /**
     * Set the corpusFile.
     *
     * @param corpusFile the corpusFile
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder corpusFile(IBMWatsonFile corpusFile) {
      this.corpusFile = corpusFile;
      return this;
    }

    /**
     * Set the allowOverwrite.
     *
     * @param allowOverwrite the allowOverwrite
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder allowOverwrite(Boolean allowOverwrite) {
      this.allowOverwrite = allowOverwrite;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddCorpusOptions builder
     */
    public AddCorpusOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The addGrammar options.
   */
  public class AddGrammarOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String grammarName;
    private IBMWatsonFile grammarFile;
    private String contentType;
    private Boolean allowOverwrite;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the grammarName.
     *
     * The name of the new grammar for the custom language model. Use a localized name that matches the language of the
     * custom model and reflects the contents of the grammar.
     * * Include a maximum of 128 characters in the name.
     * * Do not use characters that need to be URL-encoded. For example, do not use spaces, slashes, backslashes,
     * colons, ampersands, double quotes, plus signs, equals signs, questions marks, and so on in the name. (The service
     * does not prevent the use of these characters. But because they must be URL-encoded wherever used, their use is
     * strongly discouraged.)
     * * Do not use the name of an existing grammar or corpus that is already defined for the custom model.
     * * Do not use the name `user`, which is reserved by the service to denote custom words that are added or modified
     * by the user.
     * * Do not use the name `base_lm` or `default_lm`. Both names are reserved for future use by the service.
     *
     * @return the grammarName
     */
    public String grammarName() {
      return grammarName;
    }
 
    /**
     * Gets the grammarFile.
     *
     * A plain text file that contains the grammar in the format specified by the `Content-Type` header. Encode the file
     * in UTF-8 (ASCII is a subset of UTF-8). Using any other encoding can lead to issues when compiling the grammar or
     * to unexpected results in decoding. The service ignores an encoding that is specified in the header of the
     * grammar.
     *
     * With the `curl` command, use the `--data-binary` option to upload the file for the request.
     *
     * @return the grammarFile
     */
    public IBMWatsonFile grammarFile() {
      return grammarFile;
    }
 
    /**
     * Gets the contentType.
     *
     * The format (MIME type) of the grammar file:
     * * `application/srgs` for Augmented Backus-Naur Form (ABNF), which uses a plain-text representation that is
     * similar to traditional BNF grammars.
     * * `application/srgs+xml` for XML Form, which uses XML elements to represent the grammar.
     *
     * @return the contentType
     */
    public String contentType() {
      return contentType;
    }
 
    /**
     * Gets the allowOverwrite.
     *
     * If `true`, the specified grammar overwrites an existing grammar with the same name. If `false`, the request fails
     * if a grammar with the same name already exists. The parameter has no effect if a grammar with the same name does
     * not already exist.
     *
     * @return the allowOverwrite
     */
    public Boolean allowOverwrite() {
      return allowOverwrite;
    }

    private AddGrammarOptions(AddGrammarOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.grammarName, 'grammarName cannot be empty');
      IBMWatsonValidator.notNull(builder.grammarFile, 'grammarFile cannot be null');
      IBMWatsonValidator.notNull(builder.contentType, 'contentType cannot be null');
      customizationId = builder.customizationId;
      grammarName = builder.grammarName;
      grammarFile = builder.grammarFile;
      contentType = builder.contentType;
      allowOverwrite = builder.allowOverwrite;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a AddGrammarOptions builder
     */
    public AddGrammarOptionsBuilder newBuilder() {
      return new AddGrammarOptionsBuilder(this);
    }

  }

  /**
   * AddGrammarOptions Builder.
   */
  public class AddGrammarOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String grammarName;
    private IBMWatsonFile grammarFile;
    private String contentType;
    private Boolean allowOverwrite;

    private AddGrammarOptionsBuilder(AddGrammarOptions addGrammarOptions) {
      customizationId = addGrammarOptions.customizationId;
      grammarName = addGrammarOptions.grammarName;
      grammarFile = addGrammarOptions.grammarFile;
      contentType = addGrammarOptions.contentType;
      allowOverwrite = addGrammarOptions.allowOverwrite;
      this.requestHeaders.putAll(addGrammarOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public AddGrammarOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param grammarName the grammarName
     * @param grammarFile the grammarFile
     * @param contentType the contentType
     */
    public AddGrammarOptionsBuilder(String customizationId, String grammarName, IBMWatsonFile grammarFile, String contentType) {
      this.customizationId = customizationId;
      this.grammarName = grammarName;
      this.grammarFile = grammarFile;
      this.contentType = contentType;
    }

    /**
     * Builds a AddGrammarOptions.
     *
     * @return the addGrammarOptions
     */
    public AddGrammarOptions build() {
      return new AddGrammarOptions(this);
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the AddGrammarOptions builder
     */
    public AddGrammarOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the grammarName.
     *
     * @param grammarName the grammarName
     * @return the AddGrammarOptions builder
     */
    public AddGrammarOptionsBuilder grammarName(String grammarName) {
      this.grammarName = grammarName;
      return this;
    }

    /**
     * Set the grammarFile.
     *
     * @param grammarFile the grammarFile
     * @return the AddGrammarOptions builder
     */
    public AddGrammarOptionsBuilder grammarFile(IBMWatsonFile grammarFile) {
      this.grammarFile = grammarFile;
      return this;
    }

    /**
     * Set the contentType.
     *
     * @param contentType the contentType
     * @return the AddGrammarOptions builder
     */
    public AddGrammarOptionsBuilder contentType(String contentType) {
      this.contentType = contentType;
      return this;
    }

    /**
     * Set the allowOverwrite.
     *
     * @param allowOverwrite the allowOverwrite
     * @return the AddGrammarOptions builder
     */
    public AddGrammarOptionsBuilder allowOverwrite(Boolean allowOverwrite) {
      this.allowOverwrite = allowOverwrite;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddGrammarOptions builder
     */
    public AddGrammarOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The addWord options.
   */
  public class AddWordOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String wordName;
    private String word;
    private List<String> soundsLike;
    private String displayAs;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the wordName.
     *
     * The custom word that is to be added to or updated in the custom language model. Do not include spaces in the
     * word. Use a `-` (dash) or `_` (underscore) to connect the tokens of compound words. URL-encode the word if it
     * includes non-ASCII characters. For more information, see [Character
     * encoding](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-corporaWords#charEncoding).
     *
     * @return the wordName
     */
    public String wordName() {
      return wordName;
    }
 
    /**
     * Gets the word.
     *
     * For the **Add custom words** method, you must specify the custom word that is to be added to or updated in the
     * custom model. Do not include spaces in the word. Use a `-` (dash) or `_` (underscore) to connect the tokens of
     * compound words.
     *
     * Omit this parameter for the **Add a custom word** method.
     *
     * @return the word
     */
    public String word() {
      return word;
    }
 
    /**
     * Gets the soundsLike.
     *
     * An array of sounds-like pronunciations for the custom word. Specify how words that are difficult to pronounce,
     * foreign words, acronyms, and so on can be pronounced by users.
     * * For a word that is not in the service's base vocabulary, omit the parameter to have the service automatically
     * generate a sounds-like pronunciation for the word.
     * * For a word that is in the service's base vocabulary, use the parameter to specify additional pronunciations for
     * the word. You cannot override the default pronunciation of a word; pronunciations you add augment the
     * pronunciation from the base vocabulary.
     *
     * A word can have at most five sounds-like pronunciations. A pronunciation can include at most 40 characters not
     * including spaces.
     *
     * @return the soundsLike
     */
    public List<String> soundsLike() {
      return soundsLike;
    }
 
    /**
     * Gets the displayAs.
     *
     * An alternative spelling for the custom word when it appears in a transcript. Use the parameter when you want the
     * word to have a spelling that is different from its usual representation or from its spelling in corpora training
     * data.
     *
     * @return the displayAs
     */
    public String displayAs() {
      return displayAs;
    }

    private AddWordOptions(AddWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.wordName, 'wordName cannot be empty');
      customizationId = builder.customizationId;
      wordName = builder.wordName;
      word = builder.word;
      soundsLike = builder.soundsLike;
      displayAs = builder.displayAs;
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
    private String customizationId;
    private String wordName;
    private String word;
    private List<String> soundsLike;
    private String displayAs;

    private AddWordOptionsBuilder(AddWordOptions addWordOptions) {
      customizationId = addWordOptions.customizationId;
      wordName = addWordOptions.wordName;
      word = addWordOptions.word;
      soundsLike = addWordOptions.soundsLike;
      displayAs = addWordOptions.displayAs;
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
     * @param wordName the wordName
     */
    public AddWordOptionsBuilder(String customizationId, String wordName) {
      this.customizationId = customizationId;
      this.wordName = wordName;
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
     * Adds an soundsLike to soundsLike.
     *
     * @param soundsLike the new soundsLike
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder addSoundsLike(String soundsLike) {
      IBMWatsonValidator.notNull(soundsLike, 'soundsLike cannot be null');
      if (this.soundsLike == null) {
        this.soundsLike = new List<String>();
      }
      this.soundsLike.add(soundsLike);
      return this;
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the wordName.
     *
     * @param wordName the wordName
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder wordName(String wordName) {
      this.wordName = wordName;
      return this;
    }

    /**
     * Set the word.
     *
     * @param word the word
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder word(String word) {
      this.word = word;
      return this;
    }

    /**
     * Set the soundsLike.
     * Existing soundsLike will be replaced.
     *
     * @param soundsLike the soundsLike
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder soundsLike(List<String> soundsLike) {
      this.soundsLike = soundsLike;
      return this;
    }

    /**
     * Set the displayAs.
     *
     * @param displayAs the displayAs
     * @return the AddWordOptions builder
     */
    public AddWordOptionsBuilder displayAs(String displayAs) {
      this.displayAs = displayAs;
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
    private String customizationId;
    private List<CustomWord> words;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the words.
     *
     * An array of `CustomWord` objects that provides information about each custom word that is to be added to or
     * updated in the custom language model.
     *
     * @return the words
     */
    public List<CustomWord> words() {
      return words;
    }

    private AddWordsOptions(AddWordsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notNull(builder.words, 'words cannot be null');
      customizationId = builder.customizationId;
      words = builder.words;
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
    private String customizationId;
    private List<CustomWord> words;

    private AddWordsOptionsBuilder(AddWordsOptions addWordsOptions) {
      customizationId = addWordsOptions.customizationId;
      words = addWordsOptions.words;
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
     * @param words the words
     */
    public AddWordsOptionsBuilder(String customizationId, List<CustomWord> words) {
      this.customizationId = customizationId;
      this.words = words;
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
     * Adds an words to words.
     *
     * @param words the new words
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder addWords(CustomWord words) {
      IBMWatsonValidator.notNull(words, 'words cannot be null');
      if (this.words == null) {
        this.words = new List<CustomWord>();
      }
      this.words.add(words);
      return this;
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the words.
     * Existing words will be replaced.
     *
     * @param words the words
     * @return the AddWordsOptions builder
     */
    public AddWordsOptionsBuilder words(List<CustomWord> words) {
      this.words = words;
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
   * Information about an audio resource from a custom acoustic model.
   */
  public class AudioDetails extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String codec_serialized_name;
    private Long frequency_serialized_name;
    private String compression_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * The type of the audio resource:
     * * `audio` for an individual audio file
     * * `archive` for an archive (**.zip** or **.tar.gz**) file that contains audio files
     * * `undetermined` for a resource that the service cannot validate (for example, if the user mistakenly passes a
     * file that does not contain audio, such as a JPEG file).
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the codec.
     *
     * **For an audio-type resource,** the codec in which the audio is encoded. Omitted for an archive-type resource.
     *
     * @return the codec
     */
    @AuraEnabled
    public String getCodec() {
      return codec_serialized_name;
    }
 
    /**
     * Gets the frequency.
     *
     * **For an audio-type resource,** the sampling rate of the audio in Hertz (samples per second). Omitted for an
     * archive-type resource.
     *
     * @return the frequency
     */
    @AuraEnabled
    public Long getFrequency() {
      return frequency_serialized_name;
    }
 
    /**
     * Gets the compression.
     *
     * **For an archive-type resource,** the format of the compressed archive:
     * * `zip` for a **.zip** file
     * * `gzip` for a **.tar.gz** file
     *
     * Omitted for an audio-type resource.
     *
     * @return the compression
     */
    @AuraEnabled
    public String getCompression() {
      return compression_serialized_name;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
    }

    /**
     * Sets the codec.
     *
     * @param codec the new codec
     */
    public void setCodec(final String codec) {
      this.codec_serialized_name = codec;
    }

    /**
     * Sets the frequency.
     *
     * @param frequency the new frequency
     */
    public void setFrequency(final long frequency) {
      this.frequency_serialized_name = frequency;
    }

    /**
     * Sets the compression.
     *
     * @param compression the new compression
     */
    public void setCompression(final String compression) {
      this.compression_serialized_name = compression;
    }

  }

  /**
   * Information about an audio resource from a custom acoustic model.
   */
  public class AudioListing extends IBMWatsonResponseModel {
    private Long duration_serialized_name;
    private String name_serialized_name;
    private AudioDetails details_serialized_name;
    private String status_serialized_name;
    private AudioResource container_serialized_name;
    private List<AudioResource> audio_serialized_name;
 
    /**
     * Gets the duration.
     *
     * **For an audio-type resource,**  the total seconds of audio in the resource. Omitted for an archive-type
     * resource.
     *
     * @return the duration
     */
    @AuraEnabled
    public Long getDuration() {
      return duration_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * **For an audio-type resource,** the user-specified name of the resource. Omitted for an archive-type resource.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the details.
     *
     * **For an audio-type resource,** an `AudioDetails` object that provides detailed information about the resource.
     * The object is empty until the service finishes processing the audio. Omitted for an archive-type resource.
     *
     * @return the details
     */
    @AuraEnabled
    public AudioDetails getDetails() {
      return details_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * **For an audio-type resource,** the status of the resource:
     * * `ok`: The service successfully analyzed the audio data. The data can be used to train the custom model.
     * * `being_processed`: The service is still analyzing the audio data. The service cannot accept requests to add new
     * audio resources or to train the custom model until its analysis is complete.
     * * `invalid`: The audio data is not valid for training the custom model (possibly because it has the wrong format
     * or sampling rate, or because it is corrupted).
     *
     * Omitted for an archive-type resource.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the container.
     *
     * **For an archive-type resource,** an object of type `AudioResource` that provides information about the resource.
     * Omitted for an audio-type resource.
     *
     * @return the container
     */
    @AuraEnabled
    public AudioResource getContainer() {
      return container_serialized_name;
    }
 
    /**
     * Gets the audio.
     *
     * **For an archive-type resource,** an array of `AudioResource` objects that provides information about the
     * audio-type resources that are contained in the resource. Omitted for an audio-type resource.
     *
     * @return the audio
     */
    @AuraEnabled
    public List<AudioResource> getAudio() {
      return audio_serialized_name;
    }

    /**
     * Sets the duration.
     *
     * @param duration the new duration
     */
    public void setDuration(final long duration) {
      this.duration_serialized_name = duration;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the details.
     *
     * @param details the new details
     */
    public void setDetails(final AudioDetails details) {
      this.details_serialized_name = details;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the container.
     *
     * @param container the new container
     */
    public void setContainer(final AudioResource container) {
      this.container_serialized_name = container;
    }

    /**
     * Sets the audio.
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

      // calling custom deserializer for details
      AudioDetails newDetails = (AudioDetails) new AudioDetails().deserialize(JSON.serialize(ret.getDetails()), (Map<String, Object>) jsonMap.get('details_serialized_name'), AudioDetails.class);
      ret.setDetails(newDetails);

      // calling custom deserializer for container
      AudioResource newContainer = (AudioResource) new AudioResource().deserialize(JSON.serialize(ret.getContainer()), (Map<String, Object>) jsonMap.get('container_serialized_name'), AudioResource.class);
      ret.setContainer(newContainer);

      // calling custom deserializer for audio
      List<AudioResource> newAudio = new List<AudioResource>();
      List<AudioResource> deserializedAudio = ret.getAudio();
      if (deserializedAudio != null) {
        for (Integer i = 0; i < deserializedAudio.size(); i++) {
          AudioResource currentItem = ret.getAudio().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('audio_serialized_name');
          AudioResource newItem = (AudioResource) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioResource.class);
          newAudio.add(newItem);
        }
        ret.audio_serialized_name = newAudio;
      }

      return ret;
    }
  }

  /**
   * If audio metrics are requested, information about the signal characteristics of the input audio.
   */
  public class AudioMetrics extends IBMWatsonGenericModel {
    private Double sampling_interval_serialized_name;
    private AudioMetricsDetails accumulated_serialized_name;
 
    /**
     * Gets the samplingInterval.
     *
     * The interval in seconds (typically 0.1 seconds) at which the service calculated the audio metrics. In other
     * words, how often the service calculated the metrics. A single unit in each histogram (see the
     * `AudioMetricsHistogramBin` object) is calculated based on a `sampling_interval` length of audio.
     *
     * @return the samplingInterval
     */
    @AuraEnabled
    public Double getSamplingInterval() {
      return sampling_interval_serialized_name;
    }
 
    /**
     * Gets the accumulated.
     *
     * Detailed information about the signal characteristics of the input audio.
     *
     * @return the accumulated
     */
    @AuraEnabled
    public AudioMetricsDetails getAccumulated() {
      return accumulated_serialized_name;
    }

    /**
     * Sets the samplingInterval.
     *
     * @param samplingInterval the new samplingInterval
     */
    public void setSamplingInterval(final Double samplingInterval) {
      this.sampling_interval_serialized_name = samplingInterval;
    }

    /**
     * Sets the accumulated.
     *
     * @param accumulated the new accumulated
     */
    public void setAccumulated(final AudioMetricsDetails accumulated) {
      this.accumulated_serialized_name = accumulated;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AudioMetrics ret = (AudioMetrics) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for accumulated
      AudioMetricsDetails newAccumulated = (AudioMetricsDetails) new AudioMetricsDetails().deserialize(JSON.serialize(ret.getAccumulated()), (Map<String, Object>) jsonMap.get('accumulated_serialized_name'), AudioMetricsDetails.class);
      ret.setAccumulated(newAccumulated);

      return ret;
    }
  }

  /**
   * Detailed information about the signal characteristics of the input audio.
   */
  public class AudioMetricsDetails extends IBMWatsonGenericModel {
    private Boolean final_serialized_name;
    private Double end_time_serialized_name;
    private Double signal_to_noise_ratio_serialized_name;
    private Double speech_ratio_serialized_name;
    private Double high_frequency_loss_serialized_name;
    private List<AudioMetricsHistogramBin> direct_current_offset_serialized_name;
    private List<AudioMetricsHistogramBin> clipping_rate_serialized_name;
    private List<AudioMetricsHistogramBin> speech_level_serialized_name;
    private List<AudioMetricsHistogramBin> non_speech_level_serialized_name;
 
    /**
     * Gets the xfinal.
     *
     * If `true`, indicates the end of the audio stream, meaning that transcription is complete. Currently, the field is
     * always `true`. The service returns metrics just once per audio stream. The results provide aggregated audio
     * metrics that pertain to the complete audio stream.
     *
     * @return the xfinal
     */
    @AuraEnabled
    public Boolean getXfinal() {
      return final_serialized_name;
    }
 
    /**
     * Gets the endTime.
     *
     * The end time in seconds of the block of audio to which the metrics apply.
     *
     * @return the endTime
     */
    @AuraEnabled
    public Double getEndTime() {
      return end_time_serialized_name;
    }
 
    /**
     * Gets the signalToNoiseRatio.
     *
     * The signal-to-noise ratio (SNR) for the audio signal. The value indicates the ratio of speech to noise in the
     * audio. A valid value lies in the range of 0 to 100 decibels (dB). The service omits the field if it cannot
     * compute the SNR for the audio.
     *
     * @return the signalToNoiseRatio
     */
    @AuraEnabled
    public Double getSignalToNoiseRatio() {
      return signal_to_noise_ratio_serialized_name;
    }
 
    /**
     * Gets the speechRatio.
     *
     * The ratio of speech to non-speech segments in the audio signal. The value lies in the range of 0.0 to 1.0.
     *
     * @return the speechRatio
     */
    @AuraEnabled
    public Double getSpeechRatio() {
      return speech_ratio_serialized_name;
    }
 
    /**
     * Gets the highFrequencyLoss.
     *
     * The probability that the audio signal is missing the upper half of its frequency content.
     * * A value close to 1.0 typically indicates artificially up-sampled audio, which negatively impacts the accuracy
     * of the transcription results.
     * * A value at or near 0.0 indicates that the audio signal is good and has a full spectrum.
     * * A value around 0.5 means that detection of the frequency content is unreliable or not available.
     *
     * @return the highFrequencyLoss
     */
    @AuraEnabled
    public Double getHighFrequencyLoss() {
      return high_frequency_loss_serialized_name;
    }
 
    /**
     * Gets the directCurrentOffset.
     *
     * An array of `AudioMetricsHistogramBin` objects that defines a histogram of the cumulative direct current (DC)
     * component of the audio signal.
     *
     * @return the directCurrentOffset
     */
    @AuraEnabled
    public List<AudioMetricsHistogramBin> getDirectCurrentOffset() {
      return direct_current_offset_serialized_name;
    }
 
    /**
     * Gets the clippingRate.
     *
     * An array of `AudioMetricsHistogramBin` objects that defines a histogram of the clipping rate for the audio
     * segments. The clipping rate is defined as the fraction of samples in the segment that reach the maximum or
     * minimum value that is offered by the audio quantization range. The service auto-detects either a 16-bit
     * Pulse-Code Modulation(PCM) audio range (-32768 to +32767) or a unit range (-1.0 to +1.0). The clipping rate is
     * between 0.0 and 1.0, with higher values indicating possible degradation of speech recognition.
     *
     * @return the clippingRate
     */
    @AuraEnabled
    public List<AudioMetricsHistogramBin> getClippingRate() {
      return clipping_rate_serialized_name;
    }
 
    /**
     * Gets the speechLevel.
     *
     * An array of `AudioMetricsHistogramBin` objects that defines a histogram of the signal level in segments of the
     * audio that contain speech. The signal level is computed as the Root-Mean-Square (RMS) value in a decibel (dB)
     * scale normalized to the range 0.0 (minimum level) to 1.0 (maximum level).
     *
     * @return the speechLevel
     */
    @AuraEnabled
    public List<AudioMetricsHistogramBin> getSpeechLevel() {
      return speech_level_serialized_name;
    }
 
    /**
     * Gets the nonSpeechLevel.
     *
     * An array of `AudioMetricsHistogramBin` objects that defines a histogram of the signal level in segments of the
     * audio that do not contain speech. The signal level is computed as the Root-Mean-Square (RMS) value in a decibel
     * (dB) scale normalized to the range 0.0 (minimum level) to 1.0 (maximum level).
     *
     * @return the nonSpeechLevel
     */
    @AuraEnabled
    public List<AudioMetricsHistogramBin> getNonSpeechLevel() {
      return non_speech_level_serialized_name;
    }

    /**
     * Sets the xfinal.
     *
     * @param xfinal the new xfinal
     */
    public void setXfinal(final Boolean xfinal) {
      this.final_serialized_name = xfinal;
    }

    /**
     * Sets the endTime.
     *
     * @param endTime the new endTime
     */
    public void setEndTime(final Double endTime) {
      this.end_time_serialized_name = endTime;
    }

    /**
     * Sets the signalToNoiseRatio.
     *
     * @param signalToNoiseRatio the new signalToNoiseRatio
     */
    public void setSignalToNoiseRatio(final Double signalToNoiseRatio) {
      this.signal_to_noise_ratio_serialized_name = signalToNoiseRatio;
    }

    /**
     * Sets the speechRatio.
     *
     * @param speechRatio the new speechRatio
     */
    public void setSpeechRatio(final Double speechRatio) {
      this.speech_ratio_serialized_name = speechRatio;
    }

    /**
     * Sets the highFrequencyLoss.
     *
     * @param highFrequencyLoss the new highFrequencyLoss
     */
    public void setHighFrequencyLoss(final Double highFrequencyLoss) {
      this.high_frequency_loss_serialized_name = highFrequencyLoss;
    }

    /**
     * Sets the directCurrentOffset.
     *
     * @param directCurrentOffset the new directCurrentOffset
     */
    public void setDirectCurrentOffset(final List<AudioMetricsHistogramBin> directCurrentOffset) {
      this.direct_current_offset_serialized_name = directCurrentOffset;
    }

    /**
     * Sets the clippingRate.
     *
     * @param clippingRate the new clippingRate
     */
    public void setClippingRate(final List<AudioMetricsHistogramBin> clippingRate) {
      this.clipping_rate_serialized_name = clippingRate;
    }

    /**
     * Sets the speechLevel.
     *
     * @param speechLevel the new speechLevel
     */
    public void setSpeechLevel(final List<AudioMetricsHistogramBin> speechLevel) {
      this.speech_level_serialized_name = speechLevel;
    }

    /**
     * Sets the nonSpeechLevel.
     *
     * @param nonSpeechLevel the new nonSpeechLevel
     */
    public void setNonSpeechLevel(final List<AudioMetricsHistogramBin> nonSpeechLevel) {
      this.non_speech_level_serialized_name = nonSpeechLevel;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AudioMetricsDetails ret = (AudioMetricsDetails) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for directCurrentOffset
      List<AudioMetricsHistogramBin> newDirectCurrentOffset = new List<AudioMetricsHistogramBin>();
      List<AudioMetricsHistogramBin> deserializedDirectCurrentOffset = ret.getDirectCurrentOffset();
      if (deserializedDirectCurrentOffset != null) {
        for (Integer i = 0; i < deserializedDirectCurrentOffset.size(); i++) {
          AudioMetricsHistogramBin currentItem = ret.getDirectCurrentOffset().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('direct_current_offset_serialized_name');
          AudioMetricsHistogramBin newItem = (AudioMetricsHistogramBin) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioMetricsHistogramBin.class);
          newDirectCurrentOffset.add(newItem);
        }
        ret.direct_current_offset_serialized_name = newDirectCurrentOffset;
      }

      // calling custom deserializer for clippingRate
      List<AudioMetricsHistogramBin> newClippingRate = new List<AudioMetricsHistogramBin>();
      List<AudioMetricsHistogramBin> deserializedClippingRate = ret.getClippingRate();
      if (deserializedClippingRate != null) {
        for (Integer i = 0; i < deserializedClippingRate.size(); i++) {
          AudioMetricsHistogramBin currentItem = ret.getClippingRate().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('clipping_rate_serialized_name');
          AudioMetricsHistogramBin newItem = (AudioMetricsHistogramBin) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioMetricsHistogramBin.class);
          newClippingRate.add(newItem);
        }
        ret.clipping_rate_serialized_name = newClippingRate;
      }

      // calling custom deserializer for speechLevel
      List<AudioMetricsHistogramBin> newSpeechLevel = new List<AudioMetricsHistogramBin>();
      List<AudioMetricsHistogramBin> deserializedSpeechLevel = ret.getSpeechLevel();
      if (deserializedSpeechLevel != null) {
        for (Integer i = 0; i < deserializedSpeechLevel.size(); i++) {
          AudioMetricsHistogramBin currentItem = ret.getSpeechLevel().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('speech_level_serialized_name');
          AudioMetricsHistogramBin newItem = (AudioMetricsHistogramBin) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioMetricsHistogramBin.class);
          newSpeechLevel.add(newItem);
        }
        ret.speech_level_serialized_name = newSpeechLevel;
      }

      // calling custom deserializer for nonSpeechLevel
      List<AudioMetricsHistogramBin> newNonSpeechLevel = new List<AudioMetricsHistogramBin>();
      List<AudioMetricsHistogramBin> deserializedNonSpeechLevel = ret.getNonSpeechLevel();
      if (deserializedNonSpeechLevel != null) {
        for (Integer i = 0; i < deserializedNonSpeechLevel.size(); i++) {
          AudioMetricsHistogramBin currentItem = ret.getNonSpeechLevel().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('non_speech_level_serialized_name');
          AudioMetricsHistogramBin newItem = (AudioMetricsHistogramBin) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioMetricsHistogramBin.class);
          newNonSpeechLevel.add(newItem);
        }
        ret.non_speech_level_serialized_name = newNonSpeechLevel;
      }

      return ret;
    }
  }

  /**
   * A bin with defined boundaries that indicates the number of values in a range of signal characteristics for a
   * histogram. The first and last bins of a histogram are the boundary bins. They cover the intervals between negative
   * infinity and the first boundary, and between the last boundary and positive infinity, respectively.
   */
  public class AudioMetricsHistogramBin extends IBMWatsonGenericModel {
    private Double begin_serialized_name;
    private Double end_serialized_name;
    private Long count_serialized_name;
 
    /**
     * Gets the xbegin.
     *
     * The lower boundary of the bin in the histogram.
     *
     * @return the xbegin
     */
    @AuraEnabled
    public Double getXbegin() {
      return begin_serialized_name;
    }
 
    /**
     * Gets the xend.
     *
     * The upper boundary of the bin in the histogram.
     *
     * @return the xend
     */
    @AuraEnabled
    public Double getXend() {
      return end_serialized_name;
    }
 
    /**
     * Gets the count.
     *
     * The number of values in the bin of the histogram.
     *
     * @return the count
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }

    /**
     * Sets the xbegin.
     *
     * @param xbegin the new xbegin
     */
    public void setXbegin(final Double xbegin) {
      this.begin_serialized_name = xbegin;
    }

    /**
     * Sets the xend.
     *
     * @param xend the new xend
     */
    public void setXend(final Double xend) {
      this.end_serialized_name = xend;
    }

    /**
     * Sets the count.
     *
     * @param count the new count
     */
    public void setCount(final long count) {
      this.count_serialized_name = count;
    }

  }

  /**
   * Information about an audio resource from a custom acoustic model.
   */
  public class AudioResource extends IBMWatsonGenericModel {
    private Long duration_serialized_name;
    private String name_serialized_name;
    private AudioDetails details_serialized_name;
    private String status_serialized_name;
 
    /**
     * Gets the duration.
     *
     * The total seconds of audio in the audio resource.
     *
     * @return the duration
     */
    @AuraEnabled
    public Long getDuration() {
      return duration_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * **For an archive-type resource,** the user-specified name of the resource.
     *
     * **For an audio-type resource,** the user-specified name of the resource or the name of the audio file that the
     * user added for the resource. The value depends on the method that is called.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the details.
     *
     * An `AudioDetails` object that provides detailed information about the audio resource. The object is empty until
     * the service finishes processing the audio.
     *
     * @return the details
     */
    @AuraEnabled
    public AudioDetails getDetails() {
      return details_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The status of the audio resource:
     * * `ok`: The service successfully analyzed the audio data. The data can be used to train the custom model.
     * * `being_processed`: The service is still analyzing the audio data. The service cannot accept requests to add new
     * audio resources or to train the custom model until its analysis is complete.
     * * `invalid`: The audio data is not valid for training the custom model (possibly because it has the wrong format
     * or sampling rate, or because it is corrupted). For an archive file, the entire archive is invalid if any of its
     * audio files are invalid.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }

    /**
     * Sets the duration.
     *
     * @param duration the new duration
     */
    public void setDuration(final long duration) {
      this.duration_serialized_name = duration;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the details.
     *
     * @param details the new details
     */
    public void setDetails(final AudioDetails details) {
      this.details_serialized_name = details;
    }

    /**
     * Sets the status.
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

      // calling custom deserializer for details
      AudioDetails newDetails = (AudioDetails) new AudioDetails().deserialize(JSON.serialize(ret.getDetails()), (Map<String, Object>) jsonMap.get('details_serialized_name'), AudioDetails.class);
      ret.setDetails(newDetails);

      return ret;
    }
  }

  /**
   * Information about the audio resources from a custom acoustic model.
   */
  public class AudioResources extends IBMWatsonResponseModel {
    private Double total_minutes_of_audio_serialized_name;
    private List<AudioResource> audio_serialized_name;
 
    /**
     * Gets the totalMinutesOfAudio.
     *
     * The total minutes of accumulated audio summed over all of the valid audio resources for the custom acoustic
     * model. You can use this value to determine whether the custom model has too little or too much audio to begin
     * training.
     *
     * @return the totalMinutesOfAudio
     */
    @AuraEnabled
    public Double getTotalMinutesOfAudio() {
      return total_minutes_of_audio_serialized_name;
    }
 
    /**
     * Gets the audio.
     *
     * An array of `AudioResource` objects that provides information about the audio resources of the custom acoustic
     * model. The array is empty if the custom model has no audio resources.
     *
     * @return the audio
     */
    @AuraEnabled
    public List<AudioResource> getAudio() {
      return audio_serialized_name;
    }

    /**
     * Sets the totalMinutesOfAudio.
     *
     * @param totalMinutesOfAudio the new totalMinutesOfAudio
     */
    public void setTotalMinutesOfAudio(final Double totalMinutesOfAudio) {
      this.total_minutes_of_audio_serialized_name = totalMinutesOfAudio;
    }

    /**
     * Sets the audio.
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

      // calling custom deserializer for audio
      List<AudioResource> newAudio = new List<AudioResource>();
      List<AudioResource> deserializedAudio = ret.getAudio();
      if (deserializedAudio != null) {
        for (Integer i = 0; i < deserializedAudio.size(); i++) {
          AudioResource currentItem = ret.getAudio().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('audio_serialized_name');
          AudioResource newItem = (AudioResource) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AudioResource.class);
          newAudio.add(newItem);
        }
        ret.audio_serialized_name = newAudio;
      }

      return ret;
    }
  }

  /**
   * The checkJob options.
   */
  public class CheckJobOptions extends IBMWatsonOptionsModel {
    private String id;
 
    /**
     * Gets the id.
     *
     * The identifier of the asynchronous job that is to be used for the request. You must make the request with
     * credentials for the instance of the service that owns the job.
     *
     * @return the id
     */
    public String id() {
      return id;
    }

    private CheckJobOptions(CheckJobOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.id, 'id cannot be empty');
      id = builder.id;
      this.requestHeaders = builder.requestHeaders;
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
  public class CheckJobOptionsBuilder extends IBMWatsonOptionsModel {
    private String id;

    private CheckJobOptionsBuilder(CheckJobOptions checkJobOptions) {
      id = checkJobOptions.id;
      this.requestHeaders.putAll(checkJobOptions.requestHeaders());
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
      this.id = id;
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
     * Set the id.
     *
     * @param id the id
     * @return the CheckJobOptions builder
     */
    public CheckJobOptionsBuilder id(String id) {
      this.id = id;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CheckJobOptions builder
     */
    public CheckJobOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The checkJobs options.
   */
  public class CheckJobsOptions extends IBMWatsonOptionsModel {

    private CheckJobsOptions(CheckJobsOptionsBuilder builder) {
      this.requestHeaders = builder.requestHeaders;
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
  public class CheckJobsOptionsBuilder extends IBMWatsonOptionsModel {

    private CheckJobsOptionsBuilder(CheckJobsOptions checkJobsOptions) {
      this.requestHeaders.putAll(checkJobsOptions.requestHeaders());
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

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CheckJobsOptions builder
     */
    public CheckJobsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Information about the corpora from a custom language model.
   */
  public class Corpora extends IBMWatsonResponseModel {
    private List<Corpus> corpora_serialized_name;
 
    /**
     * Gets the corpora.
     *
     * An array of `Corpus` objects that provides information about the corpora for the custom model. The array is empty
     * if the custom model has no corpora.
     *
     * @return the corpora
     */
    @AuraEnabled
    public List<Corpus> getCorpora() {
      return corpora_serialized_name;
    }

    /**
     * Sets the corpora.
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

      // calling custom deserializer for corpora
      List<Corpus> newCorpora = new List<Corpus>();
      List<Corpus> deserializedCorpora = ret.getCorpora();
      if (deserializedCorpora != null) {
        for (Integer i = 0; i < deserializedCorpora.size(); i++) {
          Corpus currentItem = ret.getCorpora().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('corpora_serialized_name');
          Corpus newItem = (Corpus) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Corpus.class);
          newCorpora.add(newItem);
        }
        ret.corpora_serialized_name = newCorpora;
      }

      return ret;
    }
  }

  /**
   * Information about a corpus from a custom language model.
   */
  public class Corpus extends IBMWatsonResponseModel {
    private String name_serialized_name;
    private Long total_words_serialized_name;
    private Long out_of_vocabulary_words_serialized_name;
    private String status_serialized_name;
    private String error_serialized_name;
 
    /**
     * Gets the name.
     *
     * The name of the corpus.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the totalWords.
     *
     * The total number of words in the corpus. The value is `0` while the corpus is being processed.
     *
     * @return the totalWords
     */
    @AuraEnabled
    public Long getTotalWords() {
      return total_words_serialized_name;
    }
 
    /**
     * Gets the outOfVocabularyWords.
     *
     * The number of OOV words in the corpus. The value is `0` while the corpus is being processed.
     *
     * @return the outOfVocabularyWords
     */
    @AuraEnabled
    public Long getOutOfVocabularyWords() {
      return out_of_vocabulary_words_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The status of the corpus:
     * * `analyzed`: The service successfully analyzed the corpus. The custom model can be trained with data from the
     * corpus.
     * * `being_processed`: The service is still analyzing the corpus. The service cannot accept requests to add new
     * resources or to train the custom model.
     * * `undetermined`: The service encountered an error while processing the corpus. The `error` field describes the
     * failure.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the error.
     *
     * If the status of the corpus is `undetermined`, the following message: `Analysis of corpus 'name' failed. Please
     * try adding the corpus again by setting the 'allow_overwrite' flag to 'true'`.
     *
     * @return the error
     */
    @AuraEnabled
    public String getError() {
      return error_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the totalWords.
     *
     * @param totalWords the new totalWords
     */
    public void setTotalWords(final long totalWords) {
      this.total_words_serialized_name = totalWords;
    }

    /**
     * Sets the outOfVocabularyWords.
     *
     * @param outOfVocabularyWords the new outOfVocabularyWords
     */
    public void setOutOfVocabularyWords(final long outOfVocabularyWords) {
      this.out_of_vocabulary_words_serialized_name = outOfVocabularyWords;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the error.
     *
     * @param error the new error
     */
    public void setError(final String error) {
      this.error_serialized_name = error;
    }

  }

  /**
   * The createAcousticModel options.
   */
  public class CreateAcousticModelOptions extends IBMWatsonOptionsModel {
    private String name;
    private String baseModelName;
    private String description;
 
    /**
     * Gets the name.
     *
     * A user-defined name for the new custom acoustic model. Use a name that is unique among all custom acoustic models
     * that you own. Use a localized name that matches the language of the custom model. Use a name that describes the
     * acoustic environment of the custom model, such as `Mobile custom model` or `Noisy car custom model`.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the baseModelName.
     *
     * The name of the base language model that is to be customized by the new custom acoustic model. The new custom
     * model can be used only with the base model that it customizes.
     *
     * To determine whether a base model supports acoustic model customization, refer to [Language support for
     * customization](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-customization#languageSupport).
     *
     * @return the baseModelName
     */
    public String baseModelName() {
      return baseModelName;
    }
 
    /**
     * Gets the description.
     *
     * A description of the new custom acoustic model. Use a localized description that matches the language of the
     * custom model.
     *
     * @return the description
     */
    public String description() {
      return description;
    }

    private CreateAcousticModelOptions(CreateAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name, 'name cannot be null');
      IBMWatsonValidator.notNull(builder.baseModelName, 'baseModelName cannot be null');
      name = builder.name;
      baseModelName = builder.baseModelName;
      description = builder.description;
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateAcousticModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String name;
    private String baseModelName;
    private String description;

    private CreateAcousticModelOptionsBuilder(CreateAcousticModelOptions createAcousticModelOptions) {
      name = createAcousticModelOptions.name;
      baseModelName = createAcousticModelOptions.baseModelName;
      description = createAcousticModelOptions.description;
      this.requestHeaders.putAll(createAcousticModelOptions.requestHeaders());
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
      this.name = name;
      this.baseModelName = baseModelName;
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
     * Set the name.
     *
     * @param name the name
     * @return the CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the baseModelName.
     *
     * @param baseModelName the baseModelName
     * @return the CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder baseModelName(String baseModelName) {
      this.baseModelName = baseModelName;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateAcousticModelOptions builder
     */
    public CreateAcousticModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createJob options.
   */
  public class CreateJobOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile audio;
    private String contentType;
    private String model;
    private String callbackUrl;
    private String events;
    private String userToken;
    private Long resultsTtl;
    private String languageCustomizationId;
    private String acousticCustomizationId;
    private String baseModelVersion;
    private Double customizationWeight;
    private Long inactivityTimeout;
    private List<String> keywords;
    private Double keywordsThreshold;
    private Long maxAlternatives;
    private Double wordAlternativesThreshold;
    private Boolean wordConfidence;
    private Boolean timestamps;
    private Boolean profanityFilter;
    private Boolean smartFormatting;
    private Boolean speakerLabels;
    private String customizationId;
    private String grammarName;
    private Boolean redaction;
    private Boolean processingMetrics;
    private Double processingMetricsInterval;
    private Boolean audioMetrics;
 
    /**
     * Gets the audio.
     *
     * The audio to transcribe.
     *
     * @return the audio
     */
    public IBMWatsonFile audio() {
      return audio;
    }
 
    /**
     * Gets the contentType.
     *
     * The format (MIME type) of the audio. For more information about specifying an audio format, see **Audio formats
     * (content types)** in the method description.
     *
     * @return the contentType
     */
    public String contentType() {
      return contentType;
    }
 
    /**
     * Gets the model.
     *
     * The identifier of the model that is to be used for the recognition request. See [Languages and
     * models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-models#models).
     *
     * @return the model
     */
    public String model() {
      return model;
    }
 
    /**
     * Gets the callbackUrl.
     *
     * A URL to which callback notifications are to be sent. The URL must already be successfully white-listed by using
     * the **Register a callback** method. You can include the same callback URL with any number of job creation
     * requests. Omit the parameter to poll the service for job completion and results.
     *
     * Use the `user_token` parameter to specify a unique user-specified string with each job to differentiate the
     * callback notifications for the jobs.
     *
     * @return the callbackUrl
     */
    public String callbackUrl() {
      return callbackUrl;
    }
 
    /**
     * Gets the events.
     *
     * If the job includes a callback URL, a comma-separated list of notification events to which to subscribe. Valid
     * events are
     * * `recognitions.started` generates a callback notification when the service begins to process the job.
     * * `recognitions.completed` generates a callback notification when the job is complete. You must use the **Check a
     * job** method to retrieve the results before they time out or are deleted.
     * * `recognitions.completed_with_results` generates a callback notification when the job is complete. The
     * notification includes the results of the request.
     * * `recognitions.failed` generates a callback notification if the service experiences an error while processing
     * the job.
     *
     * The `recognitions.completed` and `recognitions.completed_with_results` events are incompatible. You can specify
     * only of the two events.
     *
     * If the job includes a callback URL, omit the parameter to subscribe to the default events:
     * `recognitions.started`, `recognitions.completed`, and `recognitions.failed`. If the job does not include a
     * callback URL, omit the parameter.
     *
     * @return the events
     */
    public String events() {
      return events;
    }
 
    /**
     * Gets the userToken.
     *
     * If the job includes a callback URL, a user-specified string that the service is to include with each callback
     * notification for the job; the token allows the user to maintain an internal mapping between jobs and notification
     * events. If the job does not include a callback URL, omit the parameter.
     *
     * @return the userToken
     */
    public String userToken() {
      return userToken;
    }
 
    /**
     * Gets the resultsTtl.
     *
     * The number of minutes for which the results are to be available after the job has finished. If not delivered via
     * a callback, the results must be retrieved within this time. Omit the parameter to use a time to live of one week.
     * The parameter is valid with or without a callback URL.
     *
     * @return the resultsTtl
     */
    public Long resultsTtl() {
      return resultsTtl;
    }
 
    /**
     * Gets the languageCustomizationId.
     *
     * The customization ID (GUID) of a custom language model that is to be used with the recognition request. The base
     * model of the specified custom language model must match the model specified with the `model` parameter. You must
     * make the request with credentials for the instance of the service that owns the custom model. By default, no
     * custom language model is used. See [Custom
     * models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#custom-input).
     *
     * **Note:** Use this parameter instead of the deprecated `customization_id` parameter.
     *
     * @return the languageCustomizationId
     */
    public String languageCustomizationId() {
      return languageCustomizationId;
    }
 
    /**
     * Gets the acousticCustomizationId.
     *
     * The customization ID (GUID) of a custom acoustic model that is to be used with the recognition request. The base
     * model of the specified custom acoustic model must match the model specified with the `model` parameter. You must
     * make the request with credentials for the instance of the service that owns the custom model. By default, no
     * custom acoustic model is used. See [Custom
     * models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#custom-input).
     *
     * @return the acousticCustomizationId
     */
    public String acousticCustomizationId() {
      return acousticCustomizationId;
    }
 
    /**
     * Gets the baseModelVersion.
     *
     * The version of the specified base model that is to be used with the recognition request. Multiple versions of a
     * base model can exist when a model is updated for internal improvements. The parameter is intended primarily for
     * use with custom models that have been upgraded for a new base model. The default value depends on whether the
     * parameter is used with or without a custom model. See [Base model
     * version](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#version).
     *
     * @return the baseModelVersion
     */
    public String baseModelVersion() {
      return baseModelVersion;
    }
 
    /**
     * Gets the customizationWeight.
     *
     * If you specify the customization ID (GUID) of a custom language model with the recognition request, the
     * customization weight tells the service how much weight to give to words from the custom language model compared
     * to those from the base model for the current request.
     *
     * Specify a value between 0.0 and 1.0. Unless a different customization weight was specified for the custom model
     * when it was trained, the default value is 0.3. A customization weight that you specify overrides a weight that
     * was specified when the custom model was trained.
     *
     * The default value yields the best performance in general. Assign a higher value if your audio makes frequent use
     * of OOV words from the custom model. Use caution when setting the weight: a higher value can improve the accuracy
     * of phrases from the custom model's domain, but it can negatively affect performance on non-domain phrases.
     *
     * See [Custom models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#custom-input).
     *
     * @return the customizationWeight
     */
    public Double customizationWeight() {
      return customizationWeight;
    }
 
    /**
     * Gets the inactivityTimeout.
     *
     * The time in seconds after which, if only silence (no speech) is detected in streaming audio, the connection is
     * closed with a 400 error. The parameter is useful for stopping audio submission from a live microphone when a user
     * simply walks away. Use `-1` for infinity. See [Inactivity
     * timeout](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#timeouts-inactivity).
     *
     * @return the inactivityTimeout
     */
    public Long inactivityTimeout() {
      return inactivityTimeout;
    }
 
    /**
     * Gets the keywords.
     *
     * An array of keyword strings to spot in the audio. Each keyword string can include one or more string tokens.
     * Keywords are spotted only in the final results, not in interim hypotheses. If you specify any keywords, you must
     * also specify a keywords threshold. You can spot a maximum of 1000 keywords. Omit the parameter or specify an
     * empty array if you do not need to spot keywords. See [Keyword
     * spotting](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#keyword_spotting).
     *
     * @return the keywords
     */
    public List<String> keywords() {
      return keywords;
    }
 
    /**
     * Gets the keywordsThreshold.
     *
     * A confidence value that is the lower bound for spotting a keyword. A word is considered to match a keyword if its
     * confidence is greater than or equal to the threshold. Specify a probability between 0.0 and 1.0. If you specify a
     * threshold, you must also specify one or more keywords. The service performs no keyword spotting if you omit
     * either parameter. See [Keyword
     * spotting](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#keyword_spotting).
     *
     * @return the keywordsThreshold
     */
    public Double keywordsThreshold() {
      return keywordsThreshold;
    }
 
    /**
     * Gets the maxAlternatives.
     *
     * The maximum number of alternative transcripts that the service is to return. By default, the service returns a
     * single transcript. If you specify a value of `0`, the service uses the default value, `1`. See [Maximum
     * alternatives](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#max_alternatives).
     *
     * @return the maxAlternatives
     */
    public Long maxAlternatives() {
      return maxAlternatives;
    }
 
    /**
     * Gets the wordAlternativesThreshold.
     *
     * A confidence value that is the lower bound for identifying a hypothesis as a possible word alternative (also
     * known as "Confusion Networks"). An alternative word is considered if its confidence is greater than or equal to
     * the threshold. Specify a probability between 0.0 and 1.0. By default, the service computes no alternative words.
     * See [Word
     * alternatives](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#word_alternatives).
     *
     * @return the wordAlternativesThreshold
     */
    public Double wordAlternativesThreshold() {
      return wordAlternativesThreshold;
    }
 
    /**
     * Gets the wordConfidence.
     *
     * If `true`, the service returns a confidence measure in the range of 0.0 to 1.0 for each word. By default, the
     * service returns no word confidence scores. See [Word
     * confidence](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#word_confidence).
     *
     * @return the wordConfidence
     */
    public Boolean wordConfidence() {
      return wordConfidence;
    }
 
    /**
     * Gets the timestamps.
     *
     * If `true`, the service returns time alignment for each word. By default, no timestamps are returned. See [Word
     * timestamps](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#word_timestamps).
     *
     * @return the timestamps
     */
    public Boolean timestamps() {
      return timestamps;
    }
 
    /**
     * Gets the profanityFilter.
     *
     * If `true`, the service filters profanity from all output except for keyword results by replacing inappropriate
     * words with a series of asterisks. Set the parameter to `false` to return results with no censoring. Applies to US
     * English transcription only. See [Profanity
     * filtering](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#profanity_filter).
     *
     * @return the profanityFilter
     */
    public Boolean profanityFilter() {
      return profanityFilter;
    }
 
    /**
     * Gets the smartFormatting.
     *
     * If `true`, the service converts dates, times, series of digits and numbers, phone numbers, currency values, and
     * internet addresses into more readable, conventional representations in the final transcript of a recognition
     * request. For US English, the service also converts certain keyword strings to punctuation symbols. By default,
     * the service performs no smart formatting.
     *
     * **Note:** Applies to US English, Japanese, and Spanish transcription only.
     *
     * See [Smart
     * formatting](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#smart_formatting).
     *
     * @return the smartFormatting
     */
    public Boolean smartFormatting() {
      return smartFormatting;
    }
 
    /**
     * Gets the speakerLabels.
     *
     * If `true`, the response includes labels that identify which words were spoken by which participants in a
     * multi-person exchange. By default, the service returns no speaker labels. Setting `speaker_labels` to `true`
     * forces the `timestamps` parameter to be `true`, regardless of whether you specify `false` for the parameter.
     *
     * **Note:** Applies to US English, Japanese, and Spanish transcription only. To determine whether a language model
     * supports speaker labels, you can also use the **Get a model** method and check that the attribute
     * `speaker_labels` is set to `true`.
     *
     * See [Speaker
     * labels](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#speaker_labels).
     *
     * @return the speakerLabels
     */
    public Boolean speakerLabels() {
      return speakerLabels;
    }
 
    /**
     * Gets the customizationId.
     *
     * **Deprecated.** Use the `language_customization_id` parameter to specify the customization ID (GUID) of a custom
     * language model that is to be used with the recognition request. Do not specify both parameters with a request.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the grammarName.
     *
     * The name of a grammar that is to be used with the recognition request. If you specify a grammar, you must also
     * use the `language_customization_id` parameter to specify the name of the custom language model for which the
     * grammar is defined. The service recognizes only strings that are recognized by the specified grammar; it does not
     * recognize other custom words from the model's words resource. See
     * [Grammars](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#grammars-input).
     *
     * @return the grammarName
     */
    public String grammarName() {
      return grammarName;
    }
 
    /**
     * Gets the redaction.
     *
     * If `true`, the service redacts, or masks, numeric data from final transcripts. The feature redacts any number
     * that has three or more consecutive digits by replacing each digit with an `X` character. It is intended to redact
     * sensitive numeric data, such as credit card numbers. By default, the service performs no redaction.
     *
     * When you enable redaction, the service automatically enables smart formatting, regardless of whether you
     * explicitly disable that feature. To ensure maximum security, the service also disables keyword spotting (ignores
     * the `keywords` and `keywords_threshold` parameters) and returns only a single final transcript (forces the
     * `max_alternatives` parameter to be `1`).
     *
     * **Note:** Applies to US English, Japanese, and Korean transcription only.
     *
     * See [Numeric
     * redaction](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#redaction).
     *
     * @return the redaction
     */
    public Boolean redaction() {
      return redaction;
    }
 
    /**
     * Gets the processingMetrics.
     *
     * If `true`, requests processing metrics about the service's transcription of the input audio. The service returns
     * processing metrics at the interval specified by the `processing_metrics_interval` parameter. It also returns
     * processing metrics for transcription events, for example, for final and interim results. By default, the service
     * returns no processing metrics.
     *
     * @return the processingMetrics
     */
    public Boolean processingMetrics() {
      return processingMetrics;
    }
 
    /**
     * Gets the processingMetricsInterval.
     *
     * Specifies the interval in real wall-clock seconds at which the service is to return processing metrics. The
     * parameter is ignored unless the `processing_metrics` parameter is set to `true`.
     *
     * The parameter accepts a minimum value of 0.1 seconds. The level of precision is not restricted, so you can
     * specify values such as 0.25 and 0.125.
     *
     * The service does not impose a maximum value. If you want to receive processing metrics only for transcription
     * events instead of at periodic intervals, set the value to a large number. If the value is larger than the
     * duration of the audio, the service returns processing metrics only for transcription events.
     *
     * @return the processingMetricsInterval
     */
    public Double processingMetricsInterval() {
      return processingMetricsInterval;
    }
 
    /**
     * Gets the audioMetrics.
     *
     * If `true`, requests detailed information about the signal characteristics of the input audio. The service returns
     * audio metrics with the final transcription results. By default, the service returns no audio metrics.
     *
     * @return the audioMetrics
     */
    public Boolean audioMetrics() {
      return audioMetrics;
    }

    private CreateJobOptions(CreateJobOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.audio, 'audio cannot be null');
      audio = builder.audio;
      contentType = builder.contentType;
      model = builder.model;
      callbackUrl = builder.callbackUrl;
      events = builder.events;
      userToken = builder.userToken;
      resultsTtl = builder.resultsTtl;
      languageCustomizationId = builder.languageCustomizationId;
      acousticCustomizationId = builder.acousticCustomizationId;
      baseModelVersion = builder.baseModelVersion;
      customizationWeight = builder.customizationWeight;
      inactivityTimeout = builder.inactivityTimeout;
      keywords = builder.keywords;
      keywordsThreshold = builder.keywordsThreshold;
      maxAlternatives = builder.maxAlternatives;
      wordAlternativesThreshold = builder.wordAlternativesThreshold;
      wordConfidence = builder.wordConfidence;
      timestamps = builder.timestamps;
      profanityFilter = builder.profanityFilter;
      smartFormatting = builder.smartFormatting;
      speakerLabels = builder.speakerLabels;
      customizationId = builder.customizationId;
      grammarName = builder.grammarName;
      redaction = builder.redaction;
      processingMetrics = builder.processingMetrics;
      processingMetricsInterval = builder.processingMetricsInterval;
      audioMetrics = builder.audioMetrics;
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateJobOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile audio;
    private String contentType;
    private String model;
    private String callbackUrl;
    private String events;
    private String userToken;
    private Long resultsTtl;
    private String languageCustomizationId;
    private String acousticCustomizationId;
    private String baseModelVersion;
    private Double customizationWeight;
    private Long inactivityTimeout;
    private List<String> keywords;
    private Double keywordsThreshold;
    private Long maxAlternatives;
    private Double wordAlternativesThreshold;
    private Boolean wordConfidence;
    private Boolean timestamps;
    private Boolean profanityFilter;
    private Boolean smartFormatting;
    private Boolean speakerLabels;
    private String customizationId;
    private String grammarName;
    private Boolean redaction;
    private Boolean processingMetrics;
    private Double processingMetricsInterval;
    private Boolean audioMetrics;

    private CreateJobOptionsBuilder(CreateJobOptions createJobOptions) {
      audio = createJobOptions.audio;
      contentType = createJobOptions.contentType;
      model = createJobOptions.model;
      callbackUrl = createJobOptions.callbackUrl;
      events = createJobOptions.events;
      userToken = createJobOptions.userToken;
      resultsTtl = createJobOptions.resultsTtl;
      languageCustomizationId = createJobOptions.languageCustomizationId;
      acousticCustomizationId = createJobOptions.acousticCustomizationId;
      baseModelVersion = createJobOptions.baseModelVersion;
      customizationWeight = createJobOptions.customizationWeight;
      inactivityTimeout = createJobOptions.inactivityTimeout;
      keywords = createJobOptions.keywords;
      keywordsThreshold = createJobOptions.keywordsThreshold;
      maxAlternatives = createJobOptions.maxAlternatives;
      wordAlternativesThreshold = createJobOptions.wordAlternativesThreshold;
      wordConfidence = createJobOptions.wordConfidence;
      timestamps = createJobOptions.timestamps;
      profanityFilter = createJobOptions.profanityFilter;
      smartFormatting = createJobOptions.smartFormatting;
      speakerLabels = createJobOptions.speakerLabels;
      customizationId = createJobOptions.customizationId;
      grammarName = createJobOptions.grammarName;
      redaction = createJobOptions.redaction;
      processingMetrics = createJobOptions.processingMetrics;
      processingMetricsInterval = createJobOptions.processingMetricsInterval;
      audioMetrics = createJobOptions.audioMetrics;
      this.requestHeaders.putAll(createJobOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateJobOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param audio the audio
     */
    public CreateJobOptionsBuilder(IBMWatsonFile audio) {
      this.audio = audio;
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
     * Adds an keywords to keywords.
     *
     * @param keywords the new keywords
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder addKeywords(String keywords) {
      IBMWatsonValidator.notNull(keywords, 'keywords cannot be null');
      if (this.keywords == null) {
        this.keywords = new List<String>();
      }
      this.keywords.add(keywords);
      return this;
    }

    /**
     * Set the audio.
     *
     * @param audio the audio
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder audio(IBMWatsonFile audio) {
      this.audio = audio;
      return this;
    }

    /**
     * Set the contentType.
     *
     * @param contentType the contentType
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder contentType(String contentType) {
      this.contentType = contentType;
      return this;
    }

    /**
     * Set the model.
     *
     * @param model the model
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder model(String model) {
      this.model = model;
      return this;
    }

    /**
     * Set the callbackUrl.
     *
     * @param callbackUrl the callbackUrl
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder callbackUrl(String callbackUrl) {
      this.callbackUrl = callbackUrl;
      return this;
    }

    /**
     * Set the events.
     *
     * @param events the events
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder events(String events) {
      this.events = events;
      return this;
    }

    /**
     * Set the userToken.
     *
     * @param userToken the userToken
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder userToken(String userToken) {
      this.userToken = userToken;
      return this;
    }

    /**
     * Set the resultsTtl.
     *
     * @param resultsTtl the resultsTtl
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder resultsTtl(Long resultsTtl) {
      this.resultsTtl = resultsTtl;
      return this;
    }

    /**
     * Set the languageCustomizationId.
     *
     * @param languageCustomizationId the languageCustomizationId
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder languageCustomizationId(String languageCustomizationId) {
      this.languageCustomizationId = languageCustomizationId;
      return this;
    }

    /**
     * Set the acousticCustomizationId.
     *
     * @param acousticCustomizationId the acousticCustomizationId
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder acousticCustomizationId(String acousticCustomizationId) {
      this.acousticCustomizationId = acousticCustomizationId;
      return this;
    }

    /**
     * Set the baseModelVersion.
     *
     * @param baseModelVersion the baseModelVersion
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder baseModelVersion(String baseModelVersion) {
      this.baseModelVersion = baseModelVersion;
      return this;
    }

    /**
     * Set the customizationWeight.
     *
     * @param customizationWeight the customizationWeight
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder customizationWeight(Double customizationWeight) {
      this.customizationWeight = customizationWeight;
      return this;
    }

    /**
     * Set the inactivityTimeout.
     *
     * @param inactivityTimeout the inactivityTimeout
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder inactivityTimeout(Long inactivityTimeout) {
      this.inactivityTimeout = inactivityTimeout;
      return this;
    }

    /**
     * Set the keywords.
     * Existing keywords will be replaced.
     *
     * @param keywords the keywords
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder keywords(List<String> keywords) {
      this.keywords = keywords;
      return this;
    }

    /**
     * Set the keywordsThreshold.
     *
     * @param keywordsThreshold the keywordsThreshold
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder keywordsThreshold(Double keywordsThreshold) {
      this.keywordsThreshold = keywordsThreshold;
      return this;
    }

    /**
     * Set the maxAlternatives.
     *
     * @param maxAlternatives the maxAlternatives
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder maxAlternatives(Long maxAlternatives) {
      this.maxAlternatives = maxAlternatives;
      return this;
    }

    /**
     * Set the wordAlternativesThreshold.
     *
     * @param wordAlternativesThreshold the wordAlternativesThreshold
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder wordAlternativesThreshold(Double wordAlternativesThreshold) {
      this.wordAlternativesThreshold = wordAlternativesThreshold;
      return this;
    }

    /**
     * Set the wordConfidence.
     *
     * @param wordConfidence the wordConfidence
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder wordConfidence(Boolean wordConfidence) {
      this.wordConfidence = wordConfidence;
      return this;
    }

    /**
     * Set the timestamps.
     *
     * @param timestamps the timestamps
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder timestamps(Boolean timestamps) {
      this.timestamps = timestamps;
      return this;
    }

    /**
     * Set the profanityFilter.
     *
     * @param profanityFilter the profanityFilter
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder profanityFilter(Boolean profanityFilter) {
      this.profanityFilter = profanityFilter;
      return this;
    }

    /**
     * Set the smartFormatting.
     *
     * @param smartFormatting the smartFormatting
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder smartFormatting(Boolean smartFormatting) {
      this.smartFormatting = smartFormatting;
      return this;
    }

    /**
     * Set the speakerLabels.
     *
     * @param speakerLabels the speakerLabels
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder speakerLabels(Boolean speakerLabels) {
      this.speakerLabels = speakerLabels;
      return this;
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the grammarName.
     *
     * @param grammarName the grammarName
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder grammarName(String grammarName) {
      this.grammarName = grammarName;
      return this;
    }

    /**
     * Set the redaction.
     *
     * @param redaction the redaction
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder redaction(Boolean redaction) {
      this.redaction = redaction;
      return this;
    }

    /**
     * Set the processingMetrics.
     *
     * @param processingMetrics the processingMetrics
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder processingMetrics(Boolean processingMetrics) {
      this.processingMetrics = processingMetrics;
      return this;
    }

    /**
     * Set the processingMetricsInterval.
     *
     * @param processingMetricsInterval the processingMetricsInterval
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder processingMetricsInterval(Double processingMetricsInterval) {
      this.processingMetricsInterval = processingMetricsInterval;
      return this;
    }

    /**
     * Set the audioMetrics.
     *
     * @param audioMetrics the audioMetrics
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder audioMetrics(Boolean audioMetrics) {
      this.audioMetrics = audioMetrics;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateJobOptions builder
     */
    public CreateJobOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createLanguageModel options.
   */
  public class CreateLanguageModelOptions extends IBMWatsonOptionsModel {
    private String name;
    private String baseModelName;
    private String dialect;
    private String description;
 
    /**
     * Gets the name.
     *
     * A user-defined name for the new custom language model. Use a name that is unique among all custom language models
     * that you own. Use a localized name that matches the language of the custom model. Use a name that describes the
     * domain of the custom model, such as `Medical custom model` or `Legal custom model`.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the baseModelName.
     *
     * The name of the base language model that is to be customized by the new custom language model. The new custom
     * model can be used only with the base model that it customizes.
     *
     * To determine whether a base model supports language model customization, use the **Get a model** method and check
     * that the attribute `custom_language_model` is set to `true`. You can also refer to [Language support for
     * customization](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-customization#languageSupport).
     *
     * @return the baseModelName
     */
    public String baseModelName() {
      return baseModelName;
    }
 
    /**
     * Gets the dialect.
     *
     * The dialect of the specified language that is to be used with the custom language model. The parameter is
     * meaningful only for Spanish models, for which the service creates a custom language model that is suited for
     * speech in one of the following dialects:
     * * `es-ES` for Castilian Spanish (the default)
     * * `es-LA` for Latin American Spanish
     * * `es-US` for North American (Mexican) Spanish
     *
     * A specified dialect must be valid for the base model. By default, the dialect matches the language of the base
     * model; for example, `en-US` for either of the US English language models.
     *
     * @return the dialect
     */
    public String dialect() {
      return dialect;
    }
 
    /**
     * Gets the description.
     *
     * A description of the new custom language model. Use a localized description that matches the language of the
     * custom model.
     *
     * @return the description
     */
    public String description() {
      return description;
    }

    private CreateLanguageModelOptions(CreateLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name, 'name cannot be null');
      IBMWatsonValidator.notNull(builder.baseModelName, 'baseModelName cannot be null');
      name = builder.name;
      baseModelName = builder.baseModelName;
      dialect = builder.dialect;
      description = builder.description;
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateLanguageModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String name;
    private String baseModelName;
    private String dialect;
    private String description;

    private CreateLanguageModelOptionsBuilder(CreateLanguageModelOptions createLanguageModelOptions) {
      name = createLanguageModelOptions.name;
      baseModelName = createLanguageModelOptions.baseModelName;
      dialect = createLanguageModelOptions.dialect;
      description = createLanguageModelOptions.description;
      this.requestHeaders.putAll(createLanguageModelOptions.requestHeaders());
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
      this.name = name;
      this.baseModelName = baseModelName;
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
     * Set the name.
     *
     * @param name the name
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the baseModelName.
     *
     * @param baseModelName the baseModelName
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder baseModelName(String baseModelName) {
      this.baseModelName = baseModelName;
      return this;
    }

    /**
     * Set the dialect.
     *
     * @param dialect the dialect
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder dialect(String dialect) {
      this.dialect = dialect;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateLanguageModelOptions builder
     */
    public CreateLanguageModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Information about a word that is to be added to a custom language model.
   */
  public class CustomWord {
    private String word_serialized_name;
    private List<String> sounds_like_serialized_name;
    private String display_as_serialized_name;
 
    /**
     * Gets the word.
     *
     * For the **Add custom words** method, you must specify the custom word that is to be added to or updated in the
     * custom model. Do not include spaces in the word. Use a `-` (dash) or `_` (underscore) to connect the tokens of
     * compound words.
     *
     * Omit this parameter for the **Add a custom word** method.
     *
     * @return the word
     */
    public String getWord() {
      return word_serialized_name;
    }
 
    /**
     * Gets the soundsLike.
     *
     * An array of sounds-like pronunciations for the custom word. Specify how words that are difficult to pronounce,
     * foreign words, acronyms, and so on can be pronounced by users.
     * * For a word that is not in the service's base vocabulary, omit the parameter to have the service automatically
     * generate a sounds-like pronunciation for the word.
     * * For a word that is in the service's base vocabulary, use the parameter to specify additional pronunciations for
     * the word. You cannot override the default pronunciation of a word; pronunciations you add augment the
     * pronunciation from the base vocabulary.
     *
     * A word can have at most five sounds-like pronunciations. A pronunciation can include at most 40 characters not
     * including spaces.
     *
     * @return the soundsLike
     */
    public List<String> getSoundsLike() {
      return sounds_like_serialized_name;
    }
 
    /**
     * Gets the displayAs.
     *
     * An alternative spelling for the custom word when it appears in a transcript. Use the parameter when you want the
     * word to have a spelling that is different from its usual representation or from its spelling in corpora training
     * data.
     *
     * @return the displayAs
     */
    public String getDisplayAs() {
      return display_as_serialized_name;
    }

    /**
     * Sets the word.
     *
     * @param word the new word
     */
    public void setWord(final String word) {
      this.word_serialized_name = word;
    }

    /**
     * Sets the soundsLike.
     *
     * @param soundsLike the new soundsLike
     */
    public void setSoundsLike(final List<String> soundsLike) {
      this.sounds_like_serialized_name = soundsLike;
    }

    /**
     * Sets the displayAs.
     *
     * @param displayAs the new displayAs
     */
    public void setDisplayAs(final String displayAs) {
      this.display_as_serialized_name = displayAs;
    }

  }

  /**
   * The deleteAcousticModel options.
   */
  public class DeleteAcousticModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private DeleteAcousticModelOptions(DeleteAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteAcousticModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private DeleteAcousticModelOptionsBuilder(DeleteAcousticModelOptions deleteAcousticModelOptions) {
      customizationId = deleteAcousticModelOptions.customizationId;
      this.requestHeaders.putAll(deleteAcousticModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the DeleteAcousticModelOptions builder
     */
    public DeleteAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteAcousticModelOptions builder
     */
    public DeleteAcousticModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteAudio options.
   */
  public class DeleteAudioOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String audioName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the audioName.
     *
     * The name of the audio resource for the custom acoustic model.
     *
     * @return the audioName
     */
    public String audioName() {
      return audioName;
    }

    private DeleteAudioOptions(DeleteAudioOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.audioName, 'audioName cannot be empty');
      customizationId = builder.customizationId;
      audioName = builder.audioName;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteAudioOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String audioName;

    private DeleteAudioOptionsBuilder(DeleteAudioOptions deleteAudioOptions) {
      customizationId = deleteAudioOptions.customizationId;
      audioName = deleteAudioOptions.audioName;
      this.requestHeaders.putAll(deleteAudioOptions.requestHeaders());
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
      this.customizationId = customizationId;
      this.audioName = audioName;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the DeleteAudioOptions builder
     */
    public DeleteAudioOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the audioName.
     *
     * @param audioName the audioName
     * @return the DeleteAudioOptions builder
     */
    public DeleteAudioOptionsBuilder audioName(String audioName) {
      this.audioName = audioName;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteAudioOptions builder
     */
    public DeleteAudioOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteCorpus options.
   */
  public class DeleteCorpusOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String corpusName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the corpusName.
     *
     * The name of the corpus for the custom language model.
     *
     * @return the corpusName
     */
    public String corpusName() {
      return corpusName;
    }

    private DeleteCorpusOptions(DeleteCorpusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.corpusName, 'corpusName cannot be empty');
      customizationId = builder.customizationId;
      corpusName = builder.corpusName;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteCorpusOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String corpusName;

    private DeleteCorpusOptionsBuilder(DeleteCorpusOptions deleteCorpusOptions) {
      customizationId = deleteCorpusOptions.customizationId;
      corpusName = deleteCorpusOptions.corpusName;
      this.requestHeaders.putAll(deleteCorpusOptions.requestHeaders());
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
      this.customizationId = customizationId;
      this.corpusName = corpusName;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the DeleteCorpusOptions builder
     */
    public DeleteCorpusOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the corpusName.
     *
     * @param corpusName the corpusName
     * @return the DeleteCorpusOptions builder
     */
    public DeleteCorpusOptionsBuilder corpusName(String corpusName) {
      this.corpusName = corpusName;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteCorpusOptions builder
     */
    public DeleteCorpusOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteGrammar options.
   */
  public class DeleteGrammarOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String grammarName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the grammarName.
     *
     * The name of the grammar for the custom language model.
     *
     * @return the grammarName
     */
    public String grammarName() {
      return grammarName;
    }

    private DeleteGrammarOptions(DeleteGrammarOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.grammarName, 'grammarName cannot be empty');
      customizationId = builder.customizationId;
      grammarName = builder.grammarName;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteGrammarOptions builder
     */
    public DeleteGrammarOptionsBuilder newBuilder() {
      return new DeleteGrammarOptionsBuilder(this);
    }

  }

  /**
   * DeleteGrammarOptions Builder.
   */
  public class DeleteGrammarOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String grammarName;

    private DeleteGrammarOptionsBuilder(DeleteGrammarOptions deleteGrammarOptions) {
      customizationId = deleteGrammarOptions.customizationId;
      grammarName = deleteGrammarOptions.grammarName;
      this.requestHeaders.putAll(deleteGrammarOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteGrammarOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param grammarName the grammarName
     */
    public DeleteGrammarOptionsBuilder(String customizationId, String grammarName) {
      this.customizationId = customizationId;
      this.grammarName = grammarName;
    }

    /**
     * Builds a DeleteGrammarOptions.
     *
     * @return the deleteGrammarOptions
     */
    public DeleteGrammarOptions build() {
      return new DeleteGrammarOptions(this);
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the DeleteGrammarOptions builder
     */
    public DeleteGrammarOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the grammarName.
     *
     * @param grammarName the grammarName
     * @return the DeleteGrammarOptions builder
     */
    public DeleteGrammarOptionsBuilder grammarName(String grammarName) {
      this.grammarName = grammarName;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteGrammarOptions builder
     */
    public DeleteGrammarOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteJob options.
   */
  public class DeleteJobOptions extends IBMWatsonOptionsModel {
    private String id;
 
    /**
     * Gets the id.
     *
     * The identifier of the asynchronous job that is to be used for the request. You must make the request with
     * credentials for the instance of the service that owns the job.
     *
     * @return the id
     */
    public String id() {
      return id;
    }

    private DeleteJobOptions(DeleteJobOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.id, 'id cannot be empty');
      id = builder.id;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteJobOptionsBuilder extends IBMWatsonOptionsModel {
    private String id;

    private DeleteJobOptionsBuilder(DeleteJobOptions deleteJobOptions) {
      id = deleteJobOptions.id;
      this.requestHeaders.putAll(deleteJobOptions.requestHeaders());
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
      this.id = id;
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
     * Set the id.
     *
     * @param id the id
     * @return the DeleteJobOptions builder
     */
    public DeleteJobOptionsBuilder id(String id) {
      this.id = id;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteJobOptions builder
     */
    public DeleteJobOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteLanguageModel options.
   */
  public class DeleteLanguageModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private DeleteLanguageModelOptions(DeleteLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteLanguageModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private DeleteLanguageModelOptionsBuilder(DeleteLanguageModelOptions deleteLanguageModelOptions) {
      customizationId = deleteLanguageModelOptions.customizationId;
      this.requestHeaders.putAll(deleteLanguageModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the DeleteLanguageModelOptions builder
     */
    public DeleteLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteLanguageModelOptions builder
     */
    public DeleteLanguageModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteUserData options.
   */
  public class DeleteUserDataOptions extends IBMWatsonOptionsModel {
    private String customerId;
 
    /**
     * Gets the customerId.
     *
     * The customer ID for which all data is to be deleted.
     *
     * @return the customerId
     */
    public String customerId() {
      return customerId;
    }

    private DeleteUserDataOptions(DeleteUserDataOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.customerId, 'customerId cannot be null');
      customerId = builder.customerId;
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
    private String customerId;

    private DeleteUserDataOptionsBuilder(DeleteUserDataOptions deleteUserDataOptions) {
      customerId = deleteUserDataOptions.customerId;
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
      this.customerId = customerId;
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
     * Set the customerId.
     *
     * @param customerId the customerId
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder customerId(String customerId) {
      this.customerId = customerId;
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
   * The deleteWord options.
   */
  public class DeleteWordOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String wordName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the wordName.
     *
     * The custom word that is to be deleted from the custom language model. URL-encode the word if it includes
     * non-ASCII characters. For more information, see [Character
     * encoding](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-corporaWords#charEncoding).
     *
     * @return the wordName
     */
    public String wordName() {
      return wordName;
    }

    private DeleteWordOptions(DeleteWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.wordName, 'wordName cannot be empty');
      customizationId = builder.customizationId;
      wordName = builder.wordName;
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
    private String customizationId;
    private String wordName;

    private DeleteWordOptionsBuilder(DeleteWordOptions deleteWordOptions) {
      customizationId = deleteWordOptions.customizationId;
      wordName = deleteWordOptions.wordName;
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
     * @param wordName the wordName
     */
    public DeleteWordOptionsBuilder(String customizationId, String wordName) {
      this.customizationId = customizationId;
      this.wordName = wordName;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the DeleteWordOptions builder
     */
    public DeleteWordOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the wordName.
     *
     * @param wordName the wordName
     * @return the DeleteWordOptions builder
     */
    public DeleteWordOptionsBuilder wordName(String wordName) {
      this.wordName = wordName;
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
   * The getAcousticModel options.
   */
  public class GetAcousticModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private GetAcousticModelOptions(GetAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetAcousticModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private GetAcousticModelOptionsBuilder(GetAcousticModelOptions getAcousticModelOptions) {
      customizationId = getAcousticModelOptions.customizationId;
      this.requestHeaders.putAll(getAcousticModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the GetAcousticModelOptions builder
     */
    public GetAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetAcousticModelOptions builder
     */
    public GetAcousticModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getAudio options.
   */
  public class GetAudioOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String audioName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the audioName.
     *
     * The name of the audio resource for the custom acoustic model.
     *
     * @return the audioName
     */
    public String audioName() {
      return audioName;
    }

    private GetAudioOptions(GetAudioOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.audioName, 'audioName cannot be empty');
      customizationId = builder.customizationId;
      audioName = builder.audioName;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetAudioOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String audioName;

    private GetAudioOptionsBuilder(GetAudioOptions getAudioOptions) {
      customizationId = getAudioOptions.customizationId;
      audioName = getAudioOptions.audioName;
      this.requestHeaders.putAll(getAudioOptions.requestHeaders());
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
      this.customizationId = customizationId;
      this.audioName = audioName;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the GetAudioOptions builder
     */
    public GetAudioOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the audioName.
     *
     * @param audioName the audioName
     * @return the GetAudioOptions builder
     */
    public GetAudioOptionsBuilder audioName(String audioName) {
      this.audioName = audioName;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetAudioOptions builder
     */
    public GetAudioOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getCorpus options.
   */
  public class GetCorpusOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String corpusName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the corpusName.
     *
     * The name of the corpus for the custom language model.
     *
     * @return the corpusName
     */
    public String corpusName() {
      return corpusName;
    }

    private GetCorpusOptions(GetCorpusOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.corpusName, 'corpusName cannot be empty');
      customizationId = builder.customizationId;
      corpusName = builder.corpusName;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetCorpusOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String corpusName;

    private GetCorpusOptionsBuilder(GetCorpusOptions getCorpusOptions) {
      customizationId = getCorpusOptions.customizationId;
      corpusName = getCorpusOptions.corpusName;
      this.requestHeaders.putAll(getCorpusOptions.requestHeaders());
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
      this.customizationId = customizationId;
      this.corpusName = corpusName;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the GetCorpusOptions builder
     */
    public GetCorpusOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the corpusName.
     *
     * @param corpusName the corpusName
     * @return the GetCorpusOptions builder
     */
    public GetCorpusOptionsBuilder corpusName(String corpusName) {
      this.corpusName = corpusName;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetCorpusOptions builder
     */
    public GetCorpusOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getGrammar options.
   */
  public class GetGrammarOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String grammarName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the grammarName.
     *
     * The name of the grammar for the custom language model.
     *
     * @return the grammarName
     */
    public String grammarName() {
      return grammarName;
    }

    private GetGrammarOptions(GetGrammarOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.grammarName, 'grammarName cannot be empty');
      customizationId = builder.customizationId;
      grammarName = builder.grammarName;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetGrammarOptions builder
     */
    public GetGrammarOptionsBuilder newBuilder() {
      return new GetGrammarOptionsBuilder(this);
    }

  }

  /**
   * GetGrammarOptions Builder.
   */
  public class GetGrammarOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String grammarName;

    private GetGrammarOptionsBuilder(GetGrammarOptions getGrammarOptions) {
      customizationId = getGrammarOptions.customizationId;
      grammarName = getGrammarOptions.grammarName;
      this.requestHeaders.putAll(getGrammarOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetGrammarOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     * @param grammarName the grammarName
     */
    public GetGrammarOptionsBuilder(String customizationId, String grammarName) {
      this.customizationId = customizationId;
      this.grammarName = grammarName;
    }

    /**
     * Builds a GetGrammarOptions.
     *
     * @return the getGrammarOptions
     */
    public GetGrammarOptions build() {
      return new GetGrammarOptions(this);
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the GetGrammarOptions builder
     */
    public GetGrammarOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the grammarName.
     *
     * @param grammarName the grammarName
     * @return the GetGrammarOptions builder
     */
    public GetGrammarOptionsBuilder grammarName(String grammarName) {
      this.grammarName = grammarName;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetGrammarOptions builder
     */
    public GetGrammarOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getLanguageModel options.
   */
  public class GetLanguageModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private GetLanguageModelOptions(GetLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetLanguageModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private GetLanguageModelOptionsBuilder(GetLanguageModelOptions getLanguageModelOptions) {
      customizationId = getLanguageModelOptions.customizationId;
      this.requestHeaders.putAll(getLanguageModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the GetLanguageModelOptions builder
     */
    public GetLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetLanguageModelOptions builder
     */
    public GetLanguageModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getModel options.
   */
  public class GetModelOptions extends IBMWatsonOptionsModel {
    private String modelId;
 
    /**
     * Gets the modelId.
     *
     * The identifier of the model in the form of its name from the output of the **Get a model** method.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }

    private GetModelOptions(GetModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.modelId, 'modelId cannot be empty');
      modelId = builder.modelId;
      this.requestHeaders = builder.requestHeaders;
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
  public class GetModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String modelId;

    private GetModelOptionsBuilder(GetModelOptions getModelOptions) {
      modelId = getModelOptions.modelId;
      this.requestHeaders.putAll(getModelOptions.requestHeaders());
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
      this.modelId = modelId;
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
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the GetModelOptions builder
     */
    public GetModelOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetModelOptions builder
     */
    public GetModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getWord options.
   */
  public class GetWordOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String wordName;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the wordName.
     *
     * The custom word that is to be read from the custom language model. URL-encode the word if it includes non-ASCII
     * characters. For more information, see [Character
     * encoding](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-corporaWords#charEncoding).
     *
     * @return the wordName
     */
    public String wordName() {
      return wordName;
    }

    private GetWordOptions(GetWordOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.wordName, 'wordName cannot be empty');
      customizationId = builder.customizationId;
      wordName = builder.wordName;
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
    private String customizationId;
    private String wordName;

    private GetWordOptionsBuilder(GetWordOptions getWordOptions) {
      customizationId = getWordOptions.customizationId;
      wordName = getWordOptions.wordName;
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
     * @param wordName the wordName
     */
    public GetWordOptionsBuilder(String customizationId, String wordName) {
      this.customizationId = customizationId;
      this.wordName = wordName;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the GetWordOptions builder
     */
    public GetWordOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the wordName.
     *
     * @param wordName the wordName
     * @return the GetWordOptions builder
     */
    public GetWordOptionsBuilder wordName(String wordName) {
      this.wordName = wordName;
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
   * Information about a grammar from a custom language model.
   */
  public class Grammar extends IBMWatsonResponseModel {
    private String name_serialized_name;
    private Long out_of_vocabulary_words_serialized_name;
    private String status_serialized_name;
    private String error_serialized_name;
 
    /**
     * Gets the name.
     *
     * The name of the grammar.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the outOfVocabularyWords.
     *
     * The number of OOV words in the grammar. The value is `0` while the grammar is being processed.
     *
     * @return the outOfVocabularyWords
     */
    @AuraEnabled
    public Long getOutOfVocabularyWords() {
      return out_of_vocabulary_words_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The status of the grammar:
     * * `analyzed`: The service successfully analyzed the grammar. The custom model can be trained with data from the
     * grammar.
     * * `being_processed`: The service is still analyzing the grammar. The service cannot accept requests to add new
     * resources or to train the custom model.
     * * `undetermined`: The service encountered an error while processing the grammar. The `error` field describes the
     * failure.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the error.
     *
     * If the status of the grammar is `undetermined`, the following message: `Analysis of grammar '{grammar_name}'
     * failed. Please try fixing the error or adding the grammar again by setting the 'allow_overwrite' flag to
     * 'true'.`.
     *
     * @return the error
     */
    @AuraEnabled
    public String getError() {
      return error_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the outOfVocabularyWords.
     *
     * @param outOfVocabularyWords the new outOfVocabularyWords
     */
    public void setOutOfVocabularyWords(final long outOfVocabularyWords) {
      this.out_of_vocabulary_words_serialized_name = outOfVocabularyWords;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the error.
     *
     * @param error the new error
     */
    public void setError(final String error) {
      this.error_serialized_name = error;
    }

  }

  /**
   * Information about the grammars from a custom language model.
   */
  public class Grammars extends IBMWatsonResponseModel {
    private List<Grammar> grammars_serialized_name;
 
    /**
     * Gets the grammars.
     *
     * An array of `Grammar` objects that provides information about the grammars for the custom model. The array is
     * empty if the custom model has no grammars.
     *
     * @return the grammars
     */
    @AuraEnabled
    public List<Grammar> getGrammars() {
      return grammars_serialized_name;
    }

    /**
     * Sets the grammars.
     *
     * @param grammars the new grammars
     */
    public void setGrammars(final List<Grammar> grammars) {
      this.grammars_serialized_name = grammars;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Grammars ret = (Grammars) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for grammars
      List<Grammar> newGrammars = new List<Grammar>();
      List<Grammar> deserializedGrammars = ret.getGrammars();
      if (deserializedGrammars != null) {
        for (Integer i = 0; i < deserializedGrammars.size(); i++) {
          Grammar currentItem = ret.getGrammars().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('grammars_serialized_name');
          Grammar newItem = (Grammar) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Grammar.class);
          newGrammars.add(newItem);
        }
        ret.grammars_serialized_name = newGrammars;
      }

      return ret;
    }
  }

  /**
   * Information about a match for a keyword from speech recognition results.
   */
  public class KeywordResult extends IBMWatsonGenericModel {
    private String normalized_text_serialized_name;
    private Double start_time_serialized_name;
    private Double end_time_serialized_name;
    private Double confidence_serialized_name;
 
    /**
     * Gets the normalizedText.
     *
     * A specified keyword normalized to the spoken phrase that matched in the audio input.
     *
     * @return the normalizedText
     */
    @AuraEnabled
    public String getNormalizedText() {
      return normalized_text_serialized_name;
    }
 
    /**
     * Gets the startTime.
     *
     * The start time in seconds of the keyword match.
     *
     * @return the startTime
     */
    @AuraEnabled
    public Double getStartTime() {
      return start_time_serialized_name;
    }
 
    /**
     * Gets the endTime.
     *
     * The end time in seconds of the keyword match.
     *
     * @return the endTime
     */
    @AuraEnabled
    public Double getEndTime() {
      return end_time_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * A confidence score for the keyword match in the range of 0.0 to 1.0.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    /**
     * Sets the normalizedText.
     *
     * @param normalizedText the new normalizedText
     */
    public void setNormalizedText(final String normalizedText) {
      this.normalized_text_serialized_name = normalizedText;
    }

    /**
     * Sets the startTime.
     *
     * @param startTime the new startTime
     */
    public void setStartTime(final Double startTime) {
      this.start_time_serialized_name = startTime;
    }

    /**
     * Sets the endTime.
     *
     * @param endTime the new endTime
     */
    public void setEndTime(final Double endTime) {
      this.end_time_serialized_name = endTime;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

  }

  /**
   * Information about an existing custom language model.
   */
  public class LanguageModel extends IBMWatsonResponseModel {
    private String customization_id_serialized_name;
    private String created_serialized_name;
    private String updated_serialized_name;
    private String language_serialized_name;
    private String dialect_serialized_name;
    private List<String> versions_serialized_name;
    private String owner_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String base_model_name_serialized_name;
    private String status_serialized_name;
    private Long progress_serialized_name;
    private String error_serialized_name;
    private String warnings_serialized_name;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model. The **Create a custom language model** method returns
     * only this field of the object; it does not return the other fields.
     *
     * @return the customizationId
     */
    @AuraEnabled
    public String getCustomizationId() {
      return customization_id_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom language model was created. The value
     * is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the created
     */
    @AuraEnabled
    public String getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the custom language model was last modified. The
     * `created` and `updated` fields are equal when a language model is first added but has yet to be updated. The
     * value is provided in full ISO 8601 format (YYYY-MM-DDThh:mm:ss.sTZD).
     *
     * @return the updated
     */
    @AuraEnabled
    public String getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * The language identifier of the custom language model (for example, `en-US`).
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the dialect.
     *
     * The dialect of the language for the custom language model. By default, the dialect matches the language of the
     * base model; for example, `en-US` for either of the US English language models. For Spanish models, the field
     * indicates the dialect for which the model was created:
     * * `es-ES` for Castilian Spanish (the default)
     * * `es-LA` for Latin American Spanish
     * * `es-US` for North American (Mexican) Spanish.
     *
     * @return the dialect
     */
    @AuraEnabled
    public String getDialect() {
      return dialect_serialized_name;
    }
 
    /**
     * Gets the versions.
     *
     * A list of the available versions of the custom language model. Each element of the array indicates a version of
     * the base model with which the custom model can be used. Multiple versions exist only if the custom model has been
     * upgraded; otherwise, only a single version is shown.
     *
     * @return the versions
     */
    @AuraEnabled
    public List<String> getVersions() {
      return versions_serialized_name;
    }
 
    /**
     * Gets the owner.
     *
     * The GUID of the credentials for the instance of the service that owns the custom language model.
     *
     * @return the owner
     */
    @AuraEnabled
    public String getOwner() {
      return owner_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * The name of the custom language model.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the custom language model.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the baseModelName.
     *
     * The name of the language model for which the custom language model was created.
     *
     * @return the baseModelName
     */
    @AuraEnabled
    public String getBaseModelName() {
      return base_model_name_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The current status of the custom language model:
     * * `pending`: The model was created but is waiting either for valid training data to be added or for the service
     * to finish analyzing added data.
     * * `ready`: The model contains valid data and is ready to be trained. If the model contains a mix of valid and
     * invalid resources, you need to set the `strict` parameter to `false` for the training to proceed.
     * * `training`: The model is currently being trained.
     * * `available`: The model is trained and ready to use.
     * * `upgrading`: The model is currently being upgraded.
     * * `failed`: Training of the model failed.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the progress.
     *
     * A percentage that indicates the progress of the custom language model's current training. A value of `100` means
     * that the model is fully trained. **Note:** The `progress` field does not currently reflect the progress of the
     * training. The field changes from `0` to `100` when training is complete.
     *
     * @return the progress
     */
    @AuraEnabled
    public Long getProgress() {
      return progress_serialized_name;
    }
 
    /**
     * Gets the error.
     *
     * If an error occurred while adding a grammar file to the custom language model, a message that describes an
     * `Internal Server Error` and includes the string `Cannot compile grammar`. The status of the custom model is not
     * affected by the error, but the grammar cannot be used with the model.
     *
     * @return the error
     */
    @AuraEnabled
    public String getError() {
      return error_serialized_name;
    }
 
    /**
     * Gets the warnings.
     *
     * If the request included unknown parameters, the following message: `Unexpected query parameter(s) ['parameters']
     * detected`, where `parameters` is a list that includes a quoted string for each unknown parameter.
     *
     * @return the warnings
     */
    @AuraEnabled
    public String getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the customizationId.
     *
     * @param customizationId the new customizationId
     */
    public void setCustomizationId(final String customizationId) {
      this.customization_id_serialized_name = customizationId;
    }

    /**
     * Sets the created.
     *
     * @param created the new created
     */
    public void setCreated(final String created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the updated.
     *
     * @param updated the new updated
     */
    public void setUpdated(final String updated) {
      this.updated_serialized_name = updated;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the dialect.
     *
     * @param dialect the new dialect
     */
    public void setDialect(final String dialect) {
      this.dialect_serialized_name = dialect;
    }

    /**
     * Sets the versions.
     *
     * @param versions the new versions
     */
    public void setVersions(final List<String> versions) {
      this.versions_serialized_name = versions;
    }

    /**
     * Sets the owner.
     *
     * @param owner the new owner
     */
    public void setOwner(final String owner) {
      this.owner_serialized_name = owner;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the baseModelName.
     *
     * @param baseModelName the new baseModelName
     */
    public void setBaseModelName(final String baseModelName) {
      this.base_model_name_serialized_name = baseModelName;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the progress.
     *
     * @param progress the new progress
     */
    public void setProgress(final long progress) {
      this.progress_serialized_name = progress;
    }

    /**
     * Sets the error.
     *
     * @param error the new error
     */
    public void setError(final String error) {
      this.error_serialized_name = error;
    }

    /**
     * Sets the warnings.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final String warnings) {
      this.warnings_serialized_name = warnings;
    }

  }

  /**
   * Information about existing custom language models.
   */
  public class LanguageModels extends IBMWatsonResponseModel {
    private List<LanguageModel> customizations_serialized_name;
 
    /**
     * Gets the customizations.
     *
     * An array of `LanguageModel` objects that provides information about each available custom language model. The
     * array is empty if the requesting credentials own no custom language models (if no language is specified) or own
     * no custom language models for the specified language.
     *
     * @return the customizations
     */
    @AuraEnabled
    public List<LanguageModel> getCustomizations() {
      return customizations_serialized_name;
    }

    /**
     * Sets the customizations.
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

      // calling custom deserializer for customizations
      List<LanguageModel> newCustomizations = new List<LanguageModel>();
      List<LanguageModel> deserializedCustomizations = ret.getCustomizations();
      if (deserializedCustomizations != null) {
        for (Integer i = 0; i < deserializedCustomizations.size(); i++) {
          LanguageModel currentItem = ret.getCustomizations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('customizations_serialized_name');
          LanguageModel newItem = (LanguageModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), LanguageModel.class);
          newCustomizations.add(newItem);
        }
        ret.customizations_serialized_name = newCustomizations;
      }

      return ret;
    }
  }

  /**
   * The listAcousticModels options.
   */
  public class ListAcousticModelsOptions extends IBMWatsonOptionsModel {
    private String language;
 
    /**
     * Gets the language.
     *
     * The identifier of the language for which custom language or custom acoustic models are to be returned (for
     * example, `en-US`). Omit the parameter to see all custom language or custom acoustic models that are owned by the
     * requesting credentials.
     *
     * @return the language
     */
    public String language() {
      return language;
    }

    private ListAcousticModelsOptions(ListAcousticModelsOptionsBuilder builder) {
      language = builder.language;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListAcousticModelsOptionsBuilder extends IBMWatsonOptionsModel {
    private String language;

    private ListAcousticModelsOptionsBuilder(ListAcousticModelsOptions listAcousticModelsOptions) {
      language = listAcousticModelsOptions.language;
      this.requestHeaders.putAll(listAcousticModelsOptions.requestHeaders());
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
     * Set the language.
     *
     * @param language the language
     * @return the ListAcousticModelsOptions builder
     */
    public ListAcousticModelsOptionsBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListAcousticModelsOptions builder
     */
    public ListAcousticModelsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listAudio options.
   */
  public class ListAudioOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private ListAudioOptions(ListAudioOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListAudioOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private ListAudioOptionsBuilder(ListAudioOptions listAudioOptions) {
      customizationId = listAudioOptions.customizationId;
      this.requestHeaders.putAll(listAudioOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the ListAudioOptions builder
     */
    public ListAudioOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListAudioOptions builder
     */
    public ListAudioOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listCorpora options.
   */
  public class ListCorporaOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private ListCorporaOptions(ListCorporaOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListCorporaOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private ListCorporaOptionsBuilder(ListCorporaOptions listCorporaOptions) {
      customizationId = listCorporaOptions.customizationId;
      this.requestHeaders.putAll(listCorporaOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the ListCorporaOptions builder
     */
    public ListCorporaOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListCorporaOptions builder
     */
    public ListCorporaOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listGrammars options.
   */
  public class ListGrammarsOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private ListGrammarsOptions(ListGrammarsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListGrammarsOptions builder
     */
    public ListGrammarsOptionsBuilder newBuilder() {
      return new ListGrammarsOptionsBuilder(this);
    }

  }

  /**
   * ListGrammarsOptions Builder.
   */
  public class ListGrammarsOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private ListGrammarsOptionsBuilder(ListGrammarsOptions listGrammarsOptions) {
      customizationId = listGrammarsOptions.customizationId;
      this.requestHeaders.putAll(listGrammarsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListGrammarsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customizationId the customizationId
     */
    public ListGrammarsOptionsBuilder(String customizationId) {
      this.customizationId = customizationId;
    }

    /**
     * Builds a ListGrammarsOptions.
     *
     * @return the listGrammarsOptions
     */
    public ListGrammarsOptions build() {
      return new ListGrammarsOptions(this);
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the ListGrammarsOptions builder
     */
    public ListGrammarsOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListGrammarsOptions builder
     */
    public ListGrammarsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listLanguageModels options.
   */
  public class ListLanguageModelsOptions extends IBMWatsonOptionsModel {
    private String language;
 
    /**
     * Gets the language.
     *
     * The identifier of the language for which custom language or custom acoustic models are to be returned (for
     * example, `en-US`). Omit the parameter to see all custom language or custom acoustic models that are owned by the
     * requesting credentials.
     *
     * @return the language
     */
    public String language() {
      return language;
    }

    private ListLanguageModelsOptions(ListLanguageModelsOptionsBuilder builder) {
      language = builder.language;
      this.requestHeaders = builder.requestHeaders;
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
  public class ListLanguageModelsOptionsBuilder extends IBMWatsonOptionsModel {
    private String language;

    private ListLanguageModelsOptionsBuilder(ListLanguageModelsOptions listLanguageModelsOptions) {
      language = listLanguageModelsOptions.language;
      this.requestHeaders.putAll(listLanguageModelsOptions.requestHeaders());
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
     * Set the language.
     *
     * @param language the language
     * @return the ListLanguageModelsOptions builder
     */
    public ListLanguageModelsOptionsBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListLanguageModelsOptions builder
     */
    public ListLanguageModelsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listModels options.
   */
  public class ListModelsOptions extends IBMWatsonOptionsModel {

    private ListModelsOptions(ListModelsOptionsBuilder builder) {
      this.requestHeaders = builder.requestHeaders;
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
  public class ListModelsOptionsBuilder extends IBMWatsonOptionsModel {

    private ListModelsOptionsBuilder(ListModelsOptions listModelsOptions) {
      this.requestHeaders.putAll(listModelsOptions.requestHeaders());
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

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listWords options.
   */
  public class ListWordsOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String wordType;
    private String xsort;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the wordType.
     *
     * The type of words to be listed from the custom language model's words resource:
     * * `all` (the default) shows all words.
     * * `user` shows only custom words that were added or modified by the user directly.
     * * `corpora` shows only OOV that were extracted from corpora.
     * * `grammars` shows only OOV words that are recognized by grammars.
     *
     * @return the wordType
     */
    public String wordType() {
      return wordType;
    }
 
    /**
     * Gets the xsort.
     *
     * Indicates the order in which the words are to be listed, `alphabetical` or by `count`. You can prepend an
     * optional `+` or `-` to an argument to indicate whether the results are to be sorted in ascending or descending
     * order. By default, words are sorted in ascending alphabetical order. For alphabetical ordering, the
     * lexicographical precedence is numeric values, uppercase letters, and lowercase letters. For count ordering,
     * values with the same count are ordered alphabetically. With the `curl` command, URL-encode the `+` symbol as
     * `%2B`.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }

    private ListWordsOptions(ListWordsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      wordType = builder.wordType;
      xsort = builder.xsort;
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
    private String customizationId;
    private String wordType;
    private String xsort;

    private ListWordsOptionsBuilder(ListWordsOptions listWordsOptions) {
      customizationId = listWordsOptions.customizationId;
      wordType = listWordsOptions.wordType;
      xsort = listWordsOptions.xsort;
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the ListWordsOptions builder
     */
    public ListWordsOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the wordType.
     *
     * @param wordType the wordType
     * @return the ListWordsOptions builder
     */
    public ListWordsOptionsBuilder wordType(String wordType) {
      this.wordType = wordType;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListWordsOptions builder
     */
    public ListWordsOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
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
   * Detailed timing information about the service's processing of the input audio.
   */
  public class ProcessedAudio extends IBMWatsonGenericModel {
    private Double received_serialized_name;
    private Double seen_by_engine_serialized_name;
    private Double transcription_serialized_name;
    private Double speaker_labels_serialized_name;
 
    /**
     * Gets the received.
     *
     * The seconds of audio that the service has received as of this response. The value of the field is greater than
     * the values of the `transcription` and `speaker_labels` fields during speech recognition processing, since the
     * service first has to receive the audio before it can begin to process it. The final value can also be greater
     * than the value of the `transcription` and `speaker_labels` fields by a fractional number of seconds.
     *
     * @return the received
     */
    @AuraEnabled
    public Double getReceived() {
      return received_serialized_name;
    }
 
    /**
     * Gets the seenByEngine.
     *
     * The seconds of audio that the service has passed to its speech-processing engine as of this response. The value
     * of the field is greater than the values of the `transcription` and `speaker_labels` fields during speech
     * recognition processing. The `received` and `seen_by_engine` fields have identical values when the service has
     * finished processing all audio. This final value can be greater than the value of the `transcription` and
     * `speaker_labels` fields by a fractional number of seconds.
     *
     * @return the seenByEngine
     */
    @AuraEnabled
    public Double getSeenByEngine() {
      return seen_by_engine_serialized_name;
    }
 
    /**
     * Gets the transcription.
     *
     * The seconds of audio that the service has processed for speech recognition as of this response.
     *
     * @return the transcription
     */
    @AuraEnabled
    public Double getTranscription() {
      return transcription_serialized_name;
    }
 
    /**
     * Gets the speakerLabels.
     *
     * If speaker labels are requested, the seconds of audio that the service has processed to determine speaker labels
     * as of this response. This value often trails the value of the `transcription` field during speech recognition
     * processing. The `transcription` and `speaker_labels` fields have identical values when the service has finished
     * processing all audio.
     *
     * @return the speakerLabels
     */
    @AuraEnabled
    public Double getSpeakerLabels() {
      return speaker_labels_serialized_name;
    }

    /**
     * Sets the received.
     *
     * @param received the new received
     */
    public void setReceived(final Double received) {
      this.received_serialized_name = received;
    }

    /**
     * Sets the seenByEngine.
     *
     * @param seenByEngine the new seenByEngine
     */
    public void setSeenByEngine(final Double seenByEngine) {
      this.seen_by_engine_serialized_name = seenByEngine;
    }

    /**
     * Sets the transcription.
     *
     * @param transcription the new transcription
     */
    public void setTranscription(final Double transcription) {
      this.transcription_serialized_name = transcription;
    }

    /**
     * Sets the speakerLabels.
     *
     * @param speakerLabels the new speakerLabels
     */
    public void setSpeakerLabels(final Double speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
    }

  }

  /**
   * If processing metrics are requested, information about the service's processing of the input audio. Processing
   * metrics are not available with the synchronous **Recognize audio** method.
   */
  public class ProcessingMetrics extends IBMWatsonGenericModel {
    private ProcessedAudio processed_audio_serialized_name;
    private Double wall_clock_since_first_byte_received_serialized_name;
    private Boolean periodic_serialized_name;
 
    /**
     * Gets the processedAudio.
     *
     * Detailed timing information about the service's processing of the input audio.
     *
     * @return the processedAudio
     */
    @AuraEnabled
    public ProcessedAudio getProcessedAudio() {
      return processed_audio_serialized_name;
    }
 
    /**
     * Gets the wallClockSinceFirstByteReceived.
     *
     * The amount of real time in seconds that has passed since the service received the first byte of input audio.
     * Values in this field are generally multiples of the specified metrics interval, with two differences:
     * * Values might not reflect exact intervals (for instance, 0.25, 0.5, and so on). Actual values might be 0.27,
     * 0.52, and so on, depending on when the service receives and processes audio.
     * * The service also returns values for transcription events if you set the `interim_results` parameter to `true`.
     * The service returns both processing metrics and transcription results when such events occur.
     *
     * @return the wallClockSinceFirstByteReceived
     */
    @AuraEnabled
    public Double getWallClockSinceFirstByteReceived() {
      return wall_clock_since_first_byte_received_serialized_name;
    }
 
    /**
     * Gets the periodic.
     *
     * An indication of whether the metrics apply to a periodic interval or a transcription event:
     * * `true` means that the response was triggered by a specified processing interval. The information contains
     * processing metrics only.
     * * `false` means that the response was triggered by a transcription event. The information contains processing
     * metrics plus transcription results.
     *
     * Use the field to identify why the service generated the response and to filter different results if necessary.
     *
     * @return the periodic
     */
    @AuraEnabled
    public Boolean getPeriodic() {
      return periodic_serialized_name;
    }

    /**
     * Sets the processedAudio.
     *
     * @param processedAudio the new processedAudio
     */
    public void setProcessedAudio(final ProcessedAudio processedAudio) {
      this.processed_audio_serialized_name = processedAudio;
    }

    /**
     * Sets the wallClockSinceFirstByteReceived.
     *
     * @param wallClockSinceFirstByteReceived the new wallClockSinceFirstByteReceived
     */
    public void setWallClockSinceFirstByteReceived(final Double wallClockSinceFirstByteReceived) {
      this.wall_clock_since_first_byte_received_serialized_name = wallClockSinceFirstByteReceived;
    }

    /**
     * Sets the periodic.
     *
     * @param periodic the new periodic
     */
    public void setPeriodic(final Boolean periodic) {
      this.periodic_serialized_name = periodic;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ProcessingMetrics ret = (ProcessingMetrics) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for processedAudio
      ProcessedAudio newProcessedAudio = (ProcessedAudio) new ProcessedAudio().deserialize(JSON.serialize(ret.getProcessedAudio()), (Map<String, Object>) jsonMap.get('processed_audio_serialized_name'), ProcessedAudio.class);
      ret.setProcessedAudio(newProcessedAudio);

      return ret;
    }
  }

  /**
   * Information about a current asynchronous speech recognition job.
   */
  public class RecognitionJob extends IBMWatsonResponseModel {
    private String id_serialized_name;
    private String status_serialized_name;
    private String created_serialized_name;
    private String updated_serialized_name;
    private String url_serialized_name;
    private String user_token_serialized_name;
    private List<SpeechRecognitionResults> results_serialized_name;
    private List<String> warnings_serialized_name;
 
    /**
     * Gets the id.
     *
     * The ID of the asynchronous job.
     *
     * @return the id
     */
    @AuraEnabled
    public String getId() {
      return id_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The current status of the job:
     * * `waiting`: The service is preparing the job for processing. The service returns this status when the job is
     * initially created or when it is waiting for capacity to process the job. The job remains in this state until the
     * service has the capacity to begin processing it.
     * * `processing`: The service is actively processing the job.
     * * `completed`: The service has finished processing the job. If the job specified a callback URL and the event
     * `recognitions.completed_with_results`, the service sent the results with the callback notification. Otherwise,
     * you must retrieve the results by checking the individual job.
     * * `failed`: The job failed.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the job was created. The value is provided in full
     * ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`).
     *
     * @return the created
     */
    @AuraEnabled
    public String getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The date and time in Coordinated Universal Time (UTC) at which the job was last updated by the service. The value
     * is provided in full ISO 8601 format (`YYYY-MM-DDThh:mm:ss.sTZD`). This field is returned only by the **Check
     * jobs** and **Check a job** methods.
     *
     * @return the updated
     */
    @AuraEnabled
    public String getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the url.
     *
     * The URL to use to request information about the job with the **Check a job** method. This field is returned only
     * by the **Create a job** method.
     *
     * @return the url
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
 
    /**
     * Gets the userToken.
     *
     * The user token associated with a job that was created with a callback URL and a user token. This field can be
     * returned only by the **Check jobs** method.
     *
     * @return the userToken
     */
    @AuraEnabled
    public String getUserToken() {
      return user_token_serialized_name;
    }
 
    /**
     * Gets the results.
     *
     * If the status is `completed`, the results of the recognition request as an array that includes a single instance
     * of a `SpeechRecognitionResults` object. This field is returned only by the **Check a job** method.
     *
     * @return the results
     */
    @AuraEnabled
    public List<SpeechRecognitionResults> getResults() {
      return results_serialized_name;
    }
 
    /**
     * Gets the warnings.
     *
     * An array of warning messages about invalid parameters included with the request. Each warning includes a
     * descriptive message and a list of invalid argument strings, for example, `"unexpected query parameter
     * 'user_token', query parameter 'callback_url' was not specified"`. The request succeeds despite the warnings. This
     * field can be returned only by the **Create a job** method.
     *
     * @return the warnings
     */
    @AuraEnabled
    public List<String> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the id.
     *
     * @param id the new id
     */
    public void setId(final String id) {
      this.id_serialized_name = id;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the created.
     *
     * @param created the new created
     */
    public void setCreated(final String created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the updated.
     *
     * @param updated the new updated
     */
    public void setUpdated(final String updated) {
      this.updated_serialized_name = updated;
    }

    /**
     * Sets the url.
     *
     * @param url the new url
     */
    public void setUrl(final String url) {
      this.url_serialized_name = url;
    }

    /**
     * Sets the userToken.
     *
     * @param userToken the new userToken
     */
    public void setUserToken(final String userToken) {
      this.user_token_serialized_name = userToken;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<SpeechRecognitionResults> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the warnings.
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

      // calling custom deserializer for results
      List<SpeechRecognitionResults> newResults = new List<SpeechRecognitionResults>();
      List<SpeechRecognitionResults> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          SpeechRecognitionResults currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          SpeechRecognitionResults newItem = (SpeechRecognitionResults) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechRecognitionResults.class);
          newResults.add(newItem);
        }
        ret.results_serialized_name = newResults;
      }

      return ret;
    }
  }

  /**
   * Information about current asynchronous speech recognition jobs.
   */
  public class RecognitionJobs extends IBMWatsonResponseModel {
    private List<RecognitionJob> recognitions_serialized_name;
 
    /**
     * Gets the recognitions.
     *
     * An array of `RecognitionJob` objects that provides the status for each of the user's current jobs. The array is
     * empty if the user has no current jobs.
     *
     * @return the recognitions
     */
    @AuraEnabled
    public List<RecognitionJob> getRecognitions() {
      return recognitions_serialized_name;
    }

    /**
     * Sets the recognitions.
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

      // calling custom deserializer for recognitions
      List<RecognitionJob> newRecognitions = new List<RecognitionJob>();
      List<RecognitionJob> deserializedRecognitions = ret.getRecognitions();
      if (deserializedRecognitions != null) {
        for (Integer i = 0; i < deserializedRecognitions.size(); i++) {
          RecognitionJob currentItem = ret.getRecognitions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('recognitions_serialized_name');
          RecognitionJob newItem = (RecognitionJob) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RecognitionJob.class);
          newRecognitions.add(newItem);
        }
        ret.recognitions_serialized_name = newRecognitions;
      }

      return ret;
    }
  }

  /**
   * The recognize options.
   */
  public class RecognizeOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile audio;
    private String contentType;
    private String model;
    private String languageCustomizationId;
    private String acousticCustomizationId;
    private String baseModelVersion;
    private Double customizationWeight;
    private Long inactivityTimeout;
    private List<String> keywords;
    private Double keywordsThreshold;
    private Long maxAlternatives;
    private Double wordAlternativesThreshold;
    private Boolean wordConfidence;
    private Boolean timestamps;
    private Boolean profanityFilter;
    private Boolean smartFormatting;
    private Boolean speakerLabels;
    private String customizationId;
    private String grammarName;
    private Boolean redaction;
    private Boolean audioMetrics;
 
    /**
     * Gets the audio.
     *
     * The audio to transcribe.
     *
     * @return the audio
     */
    public IBMWatsonFile audio() {
      return audio;
    }
 
    /**
     * Gets the contentType.
     *
     * The format (MIME type) of the audio. For more information about specifying an audio format, see **Audio formats
     * (content types)** in the method description.
     *
     * @return the contentType
     */
    public String contentType() {
      return contentType;
    }
 
    /**
     * Gets the model.
     *
     * The identifier of the model that is to be used for the recognition request. See [Languages and
     * models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-models#models).
     *
     * @return the model
     */
    public String model() {
      return model;
    }
 
    /**
     * Gets the languageCustomizationId.
     *
     * The customization ID (GUID) of a custom language model that is to be used with the recognition request. The base
     * model of the specified custom language model must match the model specified with the `model` parameter. You must
     * make the request with credentials for the instance of the service that owns the custom model. By default, no
     * custom language model is used. See [Custom
     * models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#custom-input).
     *
     * **Note:** Use this parameter instead of the deprecated `customization_id` parameter.
     *
     * @return the languageCustomizationId
     */
    public String languageCustomizationId() {
      return languageCustomizationId;
    }
 
    /**
     * Gets the acousticCustomizationId.
     *
     * The customization ID (GUID) of a custom acoustic model that is to be used with the recognition request. The base
     * model of the specified custom acoustic model must match the model specified with the `model` parameter. You must
     * make the request with credentials for the instance of the service that owns the custom model. By default, no
     * custom acoustic model is used. See [Custom
     * models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#custom-input).
     *
     * @return the acousticCustomizationId
     */
    public String acousticCustomizationId() {
      return acousticCustomizationId;
    }
 
    /**
     * Gets the baseModelVersion.
     *
     * The version of the specified base model that is to be used with the recognition request. Multiple versions of a
     * base model can exist when a model is updated for internal improvements. The parameter is intended primarily for
     * use with custom models that have been upgraded for a new base model. The default value depends on whether the
     * parameter is used with or without a custom model. See [Base model
     * version](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#version).
     *
     * @return the baseModelVersion
     */
    public String baseModelVersion() {
      return baseModelVersion;
    }
 
    /**
     * Gets the customizationWeight.
     *
     * If you specify the customization ID (GUID) of a custom language model with the recognition request, the
     * customization weight tells the service how much weight to give to words from the custom language model compared
     * to those from the base model for the current request.
     *
     * Specify a value between 0.0 and 1.0. Unless a different customization weight was specified for the custom model
     * when it was trained, the default value is 0.3. A customization weight that you specify overrides a weight that
     * was specified when the custom model was trained.
     *
     * The default value yields the best performance in general. Assign a higher value if your audio makes frequent use
     * of OOV words from the custom model. Use caution when setting the weight: a higher value can improve the accuracy
     * of phrases from the custom model's domain, but it can negatively affect performance on non-domain phrases.
     *
     * See [Custom models](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#custom-input).
     *
     * @return the customizationWeight
     */
    public Double customizationWeight() {
      return customizationWeight;
    }
 
    /**
     * Gets the inactivityTimeout.
     *
     * The time in seconds after which, if only silence (no speech) is detected in streaming audio, the connection is
     * closed with a 400 error. The parameter is useful for stopping audio submission from a live microphone when a user
     * simply walks away. Use `-1` for infinity. See [Inactivity
     * timeout](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#timeouts-inactivity).
     *
     * @return the inactivityTimeout
     */
    public Long inactivityTimeout() {
      return inactivityTimeout;
    }
 
    /**
     * Gets the keywords.
     *
     * An array of keyword strings to spot in the audio. Each keyword string can include one or more string tokens.
     * Keywords are spotted only in the final results, not in interim hypotheses. If you specify any keywords, you must
     * also specify a keywords threshold. You can spot a maximum of 1000 keywords. Omit the parameter or specify an
     * empty array if you do not need to spot keywords. See [Keyword
     * spotting](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#keyword_spotting).
     *
     * @return the keywords
     */
    public List<String> keywords() {
      return keywords;
    }
 
    /**
     * Gets the keywordsThreshold.
     *
     * A confidence value that is the lower bound for spotting a keyword. A word is considered to match a keyword if its
     * confidence is greater than or equal to the threshold. Specify a probability between 0.0 and 1.0. If you specify a
     * threshold, you must also specify one or more keywords. The service performs no keyword spotting if you omit
     * either parameter. See [Keyword
     * spotting](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#keyword_spotting).
     *
     * @return the keywordsThreshold
     */
    public Double keywordsThreshold() {
      return keywordsThreshold;
    }
 
    /**
     * Gets the maxAlternatives.
     *
     * The maximum number of alternative transcripts that the service is to return. By default, the service returns a
     * single transcript. If you specify a value of `0`, the service uses the default value, `1`. See [Maximum
     * alternatives](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#max_alternatives).
     *
     * @return the maxAlternatives
     */
    public Long maxAlternatives() {
      return maxAlternatives;
    }
 
    /**
     * Gets the wordAlternativesThreshold.
     *
     * A confidence value that is the lower bound for identifying a hypothesis as a possible word alternative (also
     * known as "Confusion Networks"). An alternative word is considered if its confidence is greater than or equal to
     * the threshold. Specify a probability between 0.0 and 1.0. By default, the service computes no alternative words.
     * See [Word
     * alternatives](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#word_alternatives).
     *
     * @return the wordAlternativesThreshold
     */
    public Double wordAlternativesThreshold() {
      return wordAlternativesThreshold;
    }
 
    /**
     * Gets the wordConfidence.
     *
     * If `true`, the service returns a confidence measure in the range of 0.0 to 1.0 for each word. By default, the
     * service returns no word confidence scores. See [Word
     * confidence](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#word_confidence).
     *
     * @return the wordConfidence
     */
    public Boolean wordConfidence() {
      return wordConfidence;
    }
 
    /**
     * Gets the timestamps.
     *
     * If `true`, the service returns time alignment for each word. By default, no timestamps are returned. See [Word
     * timestamps](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#word_timestamps).
     *
     * @return the timestamps
     */
    public Boolean timestamps() {
      return timestamps;
    }
 
    /**
     * Gets the profanityFilter.
     *
     * If `true`, the service filters profanity from all output except for keyword results by replacing inappropriate
     * words with a series of asterisks. Set the parameter to `false` to return results with no censoring. Applies to US
     * English transcription only. See [Profanity
     * filtering](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#profanity_filter).
     *
     * @return the profanityFilter
     */
    public Boolean profanityFilter() {
      return profanityFilter;
    }
 
    /**
     * Gets the smartFormatting.
     *
     * If `true`, the service converts dates, times, series of digits and numbers, phone numbers, currency values, and
     * internet addresses into more readable, conventional representations in the final transcript of a recognition
     * request. For US English, the service also converts certain keyword strings to punctuation symbols. By default,
     * the service performs no smart formatting.
     *
     * **Note:** Applies to US English, Japanese, and Spanish transcription only.
     *
     * See [Smart
     * formatting](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#smart_formatting).
     *
     * @return the smartFormatting
     */
    public Boolean smartFormatting() {
      return smartFormatting;
    }
 
    /**
     * Gets the speakerLabels.
     *
     * If `true`, the response includes labels that identify which words were spoken by which participants in a
     * multi-person exchange. By default, the service returns no speaker labels. Setting `speaker_labels` to `true`
     * forces the `timestamps` parameter to be `true`, regardless of whether you specify `false` for the parameter.
     *
     * **Note:** Applies to US English, Japanese, and Spanish transcription only. To determine whether a language model
     * supports speaker labels, you can also use the **Get a model** method and check that the attribute
     * `speaker_labels` is set to `true`.
     *
     * See [Speaker
     * labels](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#speaker_labels).
     *
     * @return the speakerLabels
     */
    public Boolean speakerLabels() {
      return speakerLabels;
    }
 
    /**
     * Gets the customizationId.
     *
     * **Deprecated.** Use the `language_customization_id` parameter to specify the customization ID (GUID) of a custom
     * language model that is to be used with the recognition request. Do not specify both parameters with a request.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the grammarName.
     *
     * The name of a grammar that is to be used with the recognition request. If you specify a grammar, you must also
     * use the `language_customization_id` parameter to specify the name of the custom language model for which the
     * grammar is defined. The service recognizes only strings that are recognized by the specified grammar; it does not
     * recognize other custom words from the model's words resource. See
     * [Grammars](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-input#grammars-input).
     *
     * @return the grammarName
     */
    public String grammarName() {
      return grammarName;
    }
 
    /**
     * Gets the redaction.
     *
     * If `true`, the service redacts, or masks, numeric data from final transcripts. The feature redacts any number
     * that has three or more consecutive digits by replacing each digit with an `X` character. It is intended to redact
     * sensitive numeric data, such as credit card numbers. By default, the service performs no redaction.
     *
     * When you enable redaction, the service automatically enables smart formatting, regardless of whether you
     * explicitly disable that feature. To ensure maximum security, the service also disables keyword spotting (ignores
     * the `keywords` and `keywords_threshold` parameters) and returns only a single final transcript (forces the
     * `max_alternatives` parameter to be `1`).
     *
     * **Note:** Applies to US English, Japanese, and Korean transcription only.
     *
     * See [Numeric
     * redaction](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-output#redaction).
     *
     * @return the redaction
     */
    public Boolean redaction() {
      return redaction;
    }
 
    /**
     * Gets the audioMetrics.
     *
     * If `true`, requests detailed information about the signal characteristics of the input audio. The service returns
     * audio metrics with the final transcription results. By default, the service returns no audio metrics.
     *
     * @return the audioMetrics
     */
    public Boolean audioMetrics() {
      return audioMetrics;
    }

    private RecognizeOptions(RecognizeOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.audio, 'audio cannot be null');
      audio = builder.audio;
      contentType = builder.contentType;
      model = builder.model;
      languageCustomizationId = builder.languageCustomizationId;
      acousticCustomizationId = builder.acousticCustomizationId;
      baseModelVersion = builder.baseModelVersion;
      customizationWeight = builder.customizationWeight;
      inactivityTimeout = builder.inactivityTimeout;
      keywords = builder.keywords;
      keywordsThreshold = builder.keywordsThreshold;
      maxAlternatives = builder.maxAlternatives;
      wordAlternativesThreshold = builder.wordAlternativesThreshold;
      wordConfidence = builder.wordConfidence;
      timestamps = builder.timestamps;
      profanityFilter = builder.profanityFilter;
      smartFormatting = builder.smartFormatting;
      speakerLabels = builder.speakerLabels;
      customizationId = builder.customizationId;
      grammarName = builder.grammarName;
      redaction = builder.redaction;
      audioMetrics = builder.audioMetrics;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a RecognizeOptions builder
     */
    public RecognizeOptionsBuilder newBuilder() {
      return new RecognizeOptionsBuilder(this);
    }

  }

  /**
   * RecognizeOptions Builder.
   */
  public class RecognizeOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile audio;
    private String contentType;
    private String model;
    private String languageCustomizationId;
    private String acousticCustomizationId;
    private String baseModelVersion;
    private Double customizationWeight;
    private Long inactivityTimeout;
    private List<String> keywords;
    private Double keywordsThreshold;
    private Long maxAlternatives;
    private Double wordAlternativesThreshold;
    private Boolean wordConfidence;
    private Boolean timestamps;
    private Boolean profanityFilter;
    private Boolean smartFormatting;
    private Boolean speakerLabels;
    private String customizationId;
    private String grammarName;
    private Boolean redaction;
    private Boolean audioMetrics;

    private RecognizeOptionsBuilder(RecognizeOptions recognizeOptions) {
      audio = recognizeOptions.audio;
      contentType = recognizeOptions.contentType;
      model = recognizeOptions.model;
      languageCustomizationId = recognizeOptions.languageCustomizationId;
      acousticCustomizationId = recognizeOptions.acousticCustomizationId;
      baseModelVersion = recognizeOptions.baseModelVersion;
      customizationWeight = recognizeOptions.customizationWeight;
      inactivityTimeout = recognizeOptions.inactivityTimeout;
      keywords = recognizeOptions.keywords;
      keywordsThreshold = recognizeOptions.keywordsThreshold;
      maxAlternatives = recognizeOptions.maxAlternatives;
      wordAlternativesThreshold = recognizeOptions.wordAlternativesThreshold;
      wordConfidence = recognizeOptions.wordConfidence;
      timestamps = recognizeOptions.timestamps;
      profanityFilter = recognizeOptions.profanityFilter;
      smartFormatting = recognizeOptions.smartFormatting;
      speakerLabels = recognizeOptions.speakerLabels;
      customizationId = recognizeOptions.customizationId;
      grammarName = recognizeOptions.grammarName;
      redaction = recognizeOptions.redaction;
      audioMetrics = recognizeOptions.audioMetrics;
      this.requestHeaders.putAll(recognizeOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public RecognizeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param audio the audio
     */
    public RecognizeOptionsBuilder(IBMWatsonFile audio) {
      this.audio = audio;
    }

    /**
     * Builds a RecognizeOptions.
     *
     * @return the recognizeOptions
     */
    public RecognizeOptions build() {
      return new RecognizeOptions(this);
    }

    /**
     * Adds an keywords to keywords.
     *
     * @param keywords the new keywords
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder addKeywords(String keywords) {
      IBMWatsonValidator.notNull(keywords, 'keywords cannot be null');
      if (this.keywords == null) {
        this.keywords = new List<String>();
      }
      this.keywords.add(keywords);
      return this;
    }

    /**
     * Set the audio.
     *
     * @param audio the audio
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder audio(IBMWatsonFile audio) {
      this.audio = audio;
      return this;
    }

    /**
     * Set the contentType.
     *
     * @param contentType the contentType
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder contentType(String contentType) {
      this.contentType = contentType;
      return this;
    }

    /**
     * Set the model.
     *
     * @param model the model
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder model(String model) {
      this.model = model;
      return this;
    }

    /**
     * Set the languageCustomizationId.
     *
     * @param languageCustomizationId the languageCustomizationId
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder languageCustomizationId(String languageCustomizationId) {
      this.languageCustomizationId = languageCustomizationId;
      return this;
    }

    /**
     * Set the acousticCustomizationId.
     *
     * @param acousticCustomizationId the acousticCustomizationId
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder acousticCustomizationId(String acousticCustomizationId) {
      this.acousticCustomizationId = acousticCustomizationId;
      return this;
    }

    /**
     * Set the baseModelVersion.
     *
     * @param baseModelVersion the baseModelVersion
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder baseModelVersion(String baseModelVersion) {
      this.baseModelVersion = baseModelVersion;
      return this;
    }

    /**
     * Set the customizationWeight.
     *
     * @param customizationWeight the customizationWeight
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder customizationWeight(Double customizationWeight) {
      this.customizationWeight = customizationWeight;
      return this;
    }

    /**
     * Set the inactivityTimeout.
     *
     * @param inactivityTimeout the inactivityTimeout
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder inactivityTimeout(Long inactivityTimeout) {
      this.inactivityTimeout = inactivityTimeout;
      return this;
    }

    /**
     * Set the keywords.
     * Existing keywords will be replaced.
     *
     * @param keywords the keywords
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder keywords(List<String> keywords) {
      this.keywords = keywords;
      return this;
    }

    /**
     * Set the keywordsThreshold.
     *
     * @param keywordsThreshold the keywordsThreshold
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder keywordsThreshold(Double keywordsThreshold) {
      this.keywordsThreshold = keywordsThreshold;
      return this;
    }

    /**
     * Set the maxAlternatives.
     *
     * @param maxAlternatives the maxAlternatives
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder maxAlternatives(Long maxAlternatives) {
      this.maxAlternatives = maxAlternatives;
      return this;
    }

    /**
     * Set the wordAlternativesThreshold.
     *
     * @param wordAlternativesThreshold the wordAlternativesThreshold
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder wordAlternativesThreshold(Double wordAlternativesThreshold) {
      this.wordAlternativesThreshold = wordAlternativesThreshold;
      return this;
    }

    /**
     * Set the wordConfidence.
     *
     * @param wordConfidence the wordConfidence
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder wordConfidence(Boolean wordConfidence) {
      this.wordConfidence = wordConfidence;
      return this;
    }

    /**
     * Set the timestamps.
     *
     * @param timestamps the timestamps
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder timestamps(Boolean timestamps) {
      this.timestamps = timestamps;
      return this;
    }

    /**
     * Set the profanityFilter.
     *
     * @param profanityFilter the profanityFilter
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder profanityFilter(Boolean profanityFilter) {
      this.profanityFilter = profanityFilter;
      return this;
    }

    /**
     * Set the smartFormatting.
     *
     * @param smartFormatting the smartFormatting
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder smartFormatting(Boolean smartFormatting) {
      this.smartFormatting = smartFormatting;
      return this;
    }

    /**
     * Set the speakerLabels.
     *
     * @param speakerLabels the speakerLabels
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder speakerLabels(Boolean speakerLabels) {
      this.speakerLabels = speakerLabels;
      return this;
    }

    /**
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the grammarName.
     *
     * @param grammarName the grammarName
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder grammarName(String grammarName) {
      this.grammarName = grammarName;
      return this;
    }

    /**
     * Set the redaction.
     *
     * @param redaction the redaction
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder redaction(Boolean redaction) {
      this.redaction = redaction;
      return this;
    }

    /**
     * Set the audioMetrics.
     *
     * @param audioMetrics the audioMetrics
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder audioMetrics(Boolean audioMetrics) {
      this.audioMetrics = audioMetrics;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the RecognizeOptions builder
     */
    public RecognizeOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The registerCallback options.
   */
  public class RegisterCallbackOptions extends IBMWatsonOptionsModel {
    private String callbackUrl;
    private String userSecret;
 
    /**
     * Gets the callbackUrl.
     *
     * An HTTP or HTTPS URL to which callback notifications are to be sent. To be white-listed, the URL must
     * successfully echo the challenge string during URL verification. During verification, the client can also check
     * the signature that the service sends in the `X-Callback-Signature` header to verify the origin of the request.
     *
     * @return the callbackUrl
     */
    public String callbackUrl() {
      return callbackUrl;
    }
 
    /**
     * Gets the userSecret.
     *
     * A user-specified string that the service uses to generate the HMAC-SHA1 signature that it sends via the
     * `X-Callback-Signature` header. The service includes the header during URL verification and with every
     * notification sent to the callback URL. It calculates the signature over the payload of the notification. If you
     * omit the parameter, the service does not send the header.
     *
     * @return the userSecret
     */
    public String userSecret() {
      return userSecret;
    }

    private RegisterCallbackOptions(RegisterCallbackOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.callbackUrl, 'callbackUrl cannot be null');
      callbackUrl = builder.callbackUrl;
      userSecret = builder.userSecret;
      this.requestHeaders = builder.requestHeaders;
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
  public class RegisterCallbackOptionsBuilder extends IBMWatsonOptionsModel {
    private String callbackUrl;
    private String userSecret;

    private RegisterCallbackOptionsBuilder(RegisterCallbackOptions registerCallbackOptions) {
      callbackUrl = registerCallbackOptions.callbackUrl;
      userSecret = registerCallbackOptions.userSecret;
      this.requestHeaders.putAll(registerCallbackOptions.requestHeaders());
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
      this.callbackUrl = callbackUrl;
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
     * Set the callbackUrl.
     *
     * @param callbackUrl the callbackUrl
     * @return the RegisterCallbackOptions builder
     */
    public RegisterCallbackOptionsBuilder callbackUrl(String callbackUrl) {
      this.callbackUrl = callbackUrl;
      return this;
    }

    /**
     * Set the userSecret.
     *
     * @param userSecret the userSecret
     * @return the RegisterCallbackOptions builder
     */
    public RegisterCallbackOptionsBuilder userSecret(String userSecret) {
      this.userSecret = userSecret;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the RegisterCallbackOptions builder
     */
    public RegisterCallbackOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Information about a request to register a callback for asynchronous speech recognition.
   */
  public class RegisterStatus extends IBMWatsonResponseModel {
    private String status_serialized_name;
    private String url_serialized_name;
 
    /**
     * Gets the status.
     *
     * The current status of the job:
     * * `created`: The service successfully white-listed the callback URL as a result of the call.
     * * `already created`: The URL was already white-listed.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the url.
     *
     * The callback URL that is successfully registered.
     *
     * @return the url
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the url.
     *
     * @param url the new url
     */
    public void setUrl(final String url) {
      this.url_serialized_name = url;
    }

  }

  /**
   * The resetAcousticModel options.
   */
  public class ResetAcousticModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private ResetAcousticModelOptions(ResetAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class ResetAcousticModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private ResetAcousticModelOptionsBuilder(ResetAcousticModelOptions resetAcousticModelOptions) {
      customizationId = resetAcousticModelOptions.customizationId;
      this.requestHeaders.putAll(resetAcousticModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the ResetAcousticModelOptions builder
     */
    public ResetAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ResetAcousticModelOptions builder
     */
    public ResetAcousticModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The resetLanguageModel options.
   */
  public class ResetLanguageModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private ResetLanguageModelOptions(ResetLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class ResetLanguageModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private ResetLanguageModelOptionsBuilder(ResetLanguageModelOptions resetLanguageModelOptions) {
      customizationId = resetLanguageModelOptions.customizationId;
      this.requestHeaders.putAll(resetLanguageModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the ResetLanguageModelOptions builder
     */
    public ResetLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ResetLanguageModelOptions builder
     */
    public ResetLanguageModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Information about the speakers from speech recognition results.
   */
  public class SpeakerLabelsResult extends IBMWatsonGenericModel {
    private Double from_serialized_name;
    private Double to_serialized_name;
    private Long speaker_serialized_name;
    private Double confidence_serialized_name;
    private Boolean final_serialized_name;
 
    /**
     * Gets the xfrom.
     *
     * The start time of a word from the transcript. The value matches the start time of a word from the `timestamps`
     * array.
     *
     * @return the xfrom
     */
    @AuraEnabled
    public Double getXfrom() {
      return from_serialized_name;
    }
 
    /**
     * Gets the to.
     *
     * The end time of a word from the transcript. The value matches the end time of a word from the `timestamps` array.
     *
     * @return the to
     */
    @AuraEnabled
    public Double getTo() {
      return to_serialized_name;
    }
 
    /**
     * Gets the speaker.
     *
     * The numeric identifier that the service assigns to a speaker from the audio. Speaker IDs begin at `0` initially
     * but can evolve and change across interim results (if supported by the method) and between interim and final
     * results as the service processes the audio. They are not guaranteed to be sequential, contiguous, or ordered.
     *
     * @return the speaker
     */
    @AuraEnabled
    public Long getSpeaker() {
      return speaker_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * A score that indicates the service's confidence in its identification of the speaker in the range of 0.0 to 1.0.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
 
    /**
     * Gets the finalResults.
     *
     * An indication of whether the service might further change word and speaker-label results. A value of `true` means
     * that the service guarantees not to send any further updates for the current or any preceding results; `false`
     * means that the service might send further updates to the results.
     *
     * @return the finalResults
     */
    @AuraEnabled
    public Boolean getFinalResults() {
      return final_serialized_name;
    }

    /**
     * Sets the xfrom.
     *
     * @param xfrom the new xfrom
     */
    public void setXfrom(final Double xfrom) {
      this.from_serialized_name = xfrom;
    }

    /**
     * Sets the to.
     *
     * @param to the new to
     */
    public void setTo(final Double to) {
      this.to_serialized_name = to;
    }

    /**
     * Sets the speaker.
     *
     * @param speaker the new speaker
     */
    public void setSpeaker(final long speaker) {
      this.speaker_serialized_name = speaker;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the finalResults.
     *
     * @param finalResults the new finalResults
     */
    public void setFinalResults(final Boolean finalResults) {
      this.final_serialized_name = finalResults;
    }

  }

  /**
   * Information about an available language model.
   */
  public class SpeechModel extends IBMWatsonResponseModel {
    private String name_serialized_name;
    private String language_serialized_name;
    private Long rate_serialized_name;
    private String url_serialized_name;
    private SupportedFeatures supported_features_serialized_name;
    private String description_serialized_name;
 
    /**
     * Gets the name.
     *
     * The name of the model for use as an identifier in calls to the service (for example, `en-US_BroadbandModel`).
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * The language identifier of the model (for example, `en-US`).
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the rate.
     *
     * The sampling rate (minimum acceptable rate for audio) used by the model in Hertz.
     *
     * @return the rate
     */
    @AuraEnabled
    public Long getRate() {
      return rate_serialized_name;
    }
 
    /**
     * Gets the url.
     *
     * The URI for the model.
     *
     * @return the url
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
 
    /**
     * Gets the supportedFeatures.
     *
     * Additional service features that are supported with the model.
     *
     * @return the supportedFeatures
     */
    @AuraEnabled
    public SupportedFeatures getSupportedFeatures() {
      return supported_features_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * A brief description of the model.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the rate.
     *
     * @param rate the new rate
     */
    public void setRate(final long rate) {
      this.rate_serialized_name = rate;
    }

    /**
     * Sets the url.
     *
     * @param url the new url
     */
    public void setUrl(final String url) {
      this.url_serialized_name = url;
    }

    /**
     * Sets the supportedFeatures.
     *
     * @param supportedFeatures the new supportedFeatures
     */
    public void setSupportedFeatures(final SupportedFeatures supportedFeatures) {
      this.supported_features_serialized_name = supportedFeatures;
    }

    /**
     * Sets the description.
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

      // calling custom deserializer for supportedFeatures
      SupportedFeatures newSupportedFeatures = (SupportedFeatures) new SupportedFeatures().deserialize(JSON.serialize(ret.getSupportedFeatures()), (Map<String, Object>) jsonMap.get('supported_features_serialized_name'), SupportedFeatures.class);
      ret.setSupportedFeatures(newSupportedFeatures);

      return ret;
    }
  }

  /**
   * Information about the available language models.
   */
  public class SpeechModels extends IBMWatsonResponseModel {
    private List<SpeechModel> models_serialized_name;
 
    /**
     * Gets the models.
     *
     * An array of `SpeechModel` objects that provides information about each available model.
     *
     * @return the models
     */
    @AuraEnabled
    public List<SpeechModel> getModels() {
      return models_serialized_name;
    }

    /**
     * Sets the models.
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

      // calling custom deserializer for models
      List<SpeechModel> newModels = new List<SpeechModel>();
      List<SpeechModel> deserializedModels = ret.getModels();
      if (deserializedModels != null) {
        for (Integer i = 0; i < deserializedModels.size(); i++) {
          SpeechModel currentItem = ret.getModels().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('models_serialized_name');
          SpeechModel newItem = (SpeechModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechModel.class);
          newModels.add(newItem);
        }
        ret.models_serialized_name = newModels;
      }

      return ret;
    }
  }

  /**
   * An alternative transcript from speech recognition results.
   */
  public class SpeechRecognitionAlternative extends IBMWatsonGenericModel {
    private String transcript_serialized_name;
    private Double confidence_serialized_name;
    private List<List<String>> timestamps_serialized_name;
    private List<List<String>> word_confidence_serialized_name;
 
    /**
     * Gets the transcript.
     *
     * A transcription of the audio.
     *
     * @return the transcript
     */
    @AuraEnabled
    public String getTranscript() {
      return transcript_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * A score that indicates the service's confidence in the transcript in the range of 0.0 to 1.0. A confidence score
     * is returned only for the best alternative and only with results marked as final.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
 
    /**
     * Gets the timestamps.
     *
     * Time alignments for each word from the transcript as a list of lists. Each inner list consists of three elements:
     * the word followed by its start and end time in seconds, for example: `[["hello",0.0,1.2],["world",1.2,2.5]]`.
     * Timestamps are returned only for the best alternative.
     *
     * @return the timestamps
     */
    @AuraEnabled
    public List<List<String>> getTimestamps() {
      return timestamps_serialized_name;
    }
 
    /**
     * Gets the wordConfidence.
     *
     * A confidence score for each word of the transcript as a list of lists. Each inner list consists of two elements:
     * the word and its confidence score in the range of 0.0 to 1.0, for example: `[["hello",0.95],["world",0.866]]`.
     * Confidence scores are returned only for the best alternative and only with results marked as final.
     *
     * @return the wordConfidence
     */
    @AuraEnabled
    public List<List<String>> getWordConfidence() {
      return word_confidence_serialized_name;
    }

    /**
     * Sets the transcript.
     *
     * @param transcript the new transcript
     */
    public void setTranscript(final String transcript) {
      this.transcript_serialized_name = transcript;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the timestamps.
     *
     * @param timestamps the new timestamps
     */
    public void setTimestamps(final List<List<String>> timestamps) {
      this.timestamps_serialized_name = timestamps;
    }

    /**
     * Sets the wordConfidence.
     *
     * @param wordConfidence the new wordConfidence
     */
    public void setWordConfidence(final List<List<String>> wordConfidence) {
      this.word_confidence_serialized_name = wordConfidence;
    }

  }

  /**
   * Component results for a speech recognition request.
   */
  public class SpeechRecognitionResult extends IBMWatsonGenericModel {
    private Boolean final_serialized_name;
    private List<SpeechRecognitionAlternative> alternatives_serialized_name;
    private Map<String, List<KeywordResult>> keywords_result_serialized_name;
    private List<WordAlternativeResults> word_alternatives_serialized_name;
 
    /**
     * Gets the finalResults.
     *
     * An indication of whether the transcription results are final. If `true`, the results for this utterance are not
     * updated further; no additional results are sent for a `result_index` once its results are indicated as final.
     *
     * @return the finalResults
     */
    @AuraEnabled
    public Boolean getFinalResults() {
      return final_serialized_name;
    }
 
    /**
     * Gets the alternatives.
     *
     * An array of alternative transcripts. The `alternatives` array can include additional requested output such as
     * word confidence or timestamps.
     *
     * @return the alternatives
     */
    @AuraEnabled
    public List<SpeechRecognitionAlternative> getAlternatives() {
      return alternatives_serialized_name;
    }
 
    /**
     * Gets the keywordsResult.
     *
     * A dictionary (or associative array) whose keys are the strings specified for `keywords` if both that parameter
     * and `keywords_threshold` are specified. The value for each key is an array of matches spotted in the audio for
     * that keyword. Each match is described by a `KeywordResult` object. A keyword for which no matches are found is
     * omitted from the dictionary. The dictionary is omitted entirely if no matches are found for any keywords.
     *
     * @return the keywordsResult
     */
    @AuraEnabled
    public Map<String, List<KeywordResult>> getKeywordsResult() {
      return keywords_result_serialized_name;
    }
 
    /**
     * Gets the wordAlternatives.
     *
     * An array of alternative hypotheses found for words of the input audio if a `word_alternatives_threshold` is
     * specified.
     *
     * @return the wordAlternatives
     */
    @AuraEnabled
    public List<WordAlternativeResults> getWordAlternatives() {
      return word_alternatives_serialized_name;
    }

    /**
     * Sets the finalResults.
     *
     * @param finalResults the new finalResults
     */
    public void setFinalResults(final Boolean finalResults) {
      this.final_serialized_name = finalResults;
    }

    /**
     * Sets the alternatives.
     *
     * @param alternatives the new alternatives
     */
    public void setAlternatives(final List<SpeechRecognitionAlternative> alternatives) {
      this.alternatives_serialized_name = alternatives;
    }

    /**
     * Sets the keywordsResult.
     *
     * @param keywordsResult the new keywordsResult
     */
    public void setKeywordsResult(final Map<String, List<KeywordResult>> keywordsResult) {
      this.keywords_result_serialized_name = keywordsResult;
    }

    /**
     * Sets the wordAlternatives.
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

      // calling custom deserializer for alternatives
      List<SpeechRecognitionAlternative> newAlternatives = new List<SpeechRecognitionAlternative>();
      List<SpeechRecognitionAlternative> deserializedAlternatives = ret.getAlternatives();
      if (deserializedAlternatives != null) {
        for (Integer i = 0; i < deserializedAlternatives.size(); i++) {
          SpeechRecognitionAlternative currentItem = ret.getAlternatives().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('alternatives_serialized_name');
          SpeechRecognitionAlternative newItem = (SpeechRecognitionAlternative) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechRecognitionAlternative.class);
          newAlternatives.add(newItem);
        }
        ret.alternatives_serialized_name = newAlternatives;
      }

      // calling custom deserializer for keywordsResult
      Map<String, List<KeywordResult>> newKeywordsResult = new Map<String, List<KeywordResult>>();
      Map<String, List<KeywordResult>> deserializedKeywordsResult = ret.getKeywordsResult();
      if (deserializedKeywordsResult != null) {
        for (String key : deserializedKeywordsResult.keySet()) {
          List<KeywordResult> newKeywordResult = new List<KeywordResult>();
          List<KeywordResult> keywordResultList = deserializedKeywordsResult.get(key);
          for (Integer i = 0; i < keywordResultList.size(); i++) {
            KeywordResult currentItem = keywordResultList.get(i);
            Map<String, Object> itemInMap = (Map<String, Object>) jsonMap.get('keywords_result_serialized_name');
            Object innerObject = ((List<Object>) itemInMap.get(key)).get(i);
            KeywordResult newItem = (KeywordResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(innerObject)), KeywordResult.class);
            newKeywordResult.add(newItem);
          }
          newKeywordsResult.put(key, newKeywordResult);
        }
        ret.setKeywordsResult(newKeywordsResult);
      }

      // calling custom deserializer for wordAlternatives
      List<WordAlternativeResults> newWordAlternatives = new List<WordAlternativeResults>();
      List<WordAlternativeResults> deserializedWordAlternatives = ret.getWordAlternatives();
      if (deserializedWordAlternatives != null) {
        for (Integer i = 0; i < deserializedWordAlternatives.size(); i++) {
          WordAlternativeResults currentItem = ret.getWordAlternatives().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('word_alternatives_serialized_name');
          WordAlternativeResults newItem = (WordAlternativeResults) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WordAlternativeResults.class);
          newWordAlternatives.add(newItem);
        }
        ret.word_alternatives_serialized_name = newWordAlternatives;
      }

      return ret;
    }
  }

  /**
   * The complete results for a speech recognition request.
   */
  public class SpeechRecognitionResults extends IBMWatsonResponseModel {
    private List<SpeechRecognitionResult> results_serialized_name;
    private Long result_index_serialized_name;
    private List<SpeakerLabelsResult> speaker_labels_serialized_name;
    private ProcessingMetrics processing_metrics_serialized_name;
    private AudioMetrics audio_metrics_serialized_name;
    private List<String> warnings_serialized_name;
 
    /**
     * Gets the results.
     *
     * An array of `SpeechRecognitionResult` objects that can include interim and final results (interim results are
     * returned only if supported by the method). Final results are guaranteed not to change; interim results might be
     * replaced by further interim results and final results. The service periodically sends updates to the results
     * list; the `result_index` is set to the lowest index in the array that has changed; it is incremented for new
     * results.
     *
     * @return the results
     */
    @AuraEnabled
    public List<SpeechRecognitionResult> getResults() {
      return results_serialized_name;
    }
 
    /**
     * Gets the resultIndex.
     *
     * An index that indicates a change point in the `results` array. The service increments the index only for
     * additional results that it sends for new audio for the same request.
     *
     * @return the resultIndex
     */
    @AuraEnabled
    public Long getResultIndex() {
      return result_index_serialized_name;
    }
 
    /**
     * Gets the speakerLabels.
     *
     * An array of `SpeakerLabelsResult` objects that identifies which words were spoken by which speakers in a
     * multi-person exchange. The array is returned only if the `speaker_labels` parameter is `true`. When interim
     * results are also requested for methods that support them, it is possible for a `SpeechRecognitionResults` object
     * to include only the `speaker_labels` field.
     *
     * @return the speakerLabels
     */
    @AuraEnabled
    public List<SpeakerLabelsResult> getSpeakerLabels() {
      return speaker_labels_serialized_name;
    }
 
    /**
     * Gets the processingMetrics.
     *
     * If processing metrics are requested, information about the service's processing of the input audio. Processing
     * metrics are not available with the synchronous **Recognize audio** method.
     *
     * @return the processingMetrics
     */
    @AuraEnabled
    public ProcessingMetrics getProcessingMetrics() {
      return processing_metrics_serialized_name;
    }
 
    /**
     * Gets the audioMetrics.
     *
     * If audio metrics are requested, information about the signal characteristics of the input audio.
     *
     * @return the audioMetrics
     */
    @AuraEnabled
    public AudioMetrics getAudioMetrics() {
      return audio_metrics_serialized_name;
    }
 
    /**
     * Gets the warnings.
     *
     * An array of warning messages associated with the request:
     * * Warnings for invalid parameters or fields can include a descriptive message and a list of invalid argument
     * strings, for example, `"Unknown arguments:"` or `"Unknown url query arguments:"` followed by a list of the form
     * `"{invalid_arg_1}, {invalid_arg_2}."`
     * * The following warning is returned if the request passes a custom model that is based on an older version of a
     * base model for which an updated version is available: `"Using previous version of base model, because your custom
     * model has been built with it. Please note that this version will be supported only for a limited time. Consider
     * updating your custom model to the new base model. If you do not do that you will be automatically switched to
     * base model when you used the non-updated custom model."`
     *
     * In both cases, the request succeeds despite the warnings.
     *
     * @return the warnings
     */
    @AuraEnabled
    public List<String> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the results.
     *
     * @param results the new results
     */
    public void setResults(final List<SpeechRecognitionResult> results) {
      this.results_serialized_name = results;
    }

    /**
     * Sets the resultIndex.
     *
     * @param resultIndex the new resultIndex
     */
    public void setResultIndex(final long resultIndex) {
      this.result_index_serialized_name = resultIndex;
    }

    /**
     * Sets the speakerLabels.
     *
     * @param speakerLabels the new speakerLabels
     */
    public void setSpeakerLabels(final List<SpeakerLabelsResult> speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
    }

    /**
     * Sets the processingMetrics.
     *
     * @param processingMetrics the new processingMetrics
     */
    public void setProcessingMetrics(final ProcessingMetrics processingMetrics) {
      this.processing_metrics_serialized_name = processingMetrics;
    }

    /**
     * Sets the audioMetrics.
     *
     * @param audioMetrics the new audioMetrics
     */
    public void setAudioMetrics(final AudioMetrics audioMetrics) {
      this.audio_metrics_serialized_name = audioMetrics;
    }

    /**
     * Sets the warnings.
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

      // calling custom deserializer for results
      List<SpeechRecognitionResult> newResults = new List<SpeechRecognitionResult>();
      List<SpeechRecognitionResult> deserializedResults = ret.getResults();
      if (deserializedResults != null) {
        for (Integer i = 0; i < deserializedResults.size(); i++) {
          SpeechRecognitionResult currentItem = ret.getResults().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('results_serialized_name');
          SpeechRecognitionResult newItem = (SpeechRecognitionResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeechRecognitionResult.class);
          newResults.add(newItem);
        }
        ret.results_serialized_name = newResults;
      }

      // calling custom deserializer for speakerLabels
      List<SpeakerLabelsResult> newSpeakerLabels = new List<SpeakerLabelsResult>();
      List<SpeakerLabelsResult> deserializedSpeakerLabels = ret.getSpeakerLabels();
      if (deserializedSpeakerLabels != null) {
        for (Integer i = 0; i < deserializedSpeakerLabels.size(); i++) {
          SpeakerLabelsResult currentItem = ret.getSpeakerLabels().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('speaker_labels_serialized_name');
          SpeakerLabelsResult newItem = (SpeakerLabelsResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SpeakerLabelsResult.class);
          newSpeakerLabels.add(newItem);
        }
        ret.speaker_labels_serialized_name = newSpeakerLabels;
      }

      // calling custom deserializer for processingMetrics
      ProcessingMetrics newProcessingMetrics = (ProcessingMetrics) new ProcessingMetrics().deserialize(JSON.serialize(ret.getProcessingMetrics()), (Map<String, Object>) jsonMap.get('processing_metrics_serialized_name'), ProcessingMetrics.class);
      ret.setProcessingMetrics(newProcessingMetrics);

      // calling custom deserializer for audioMetrics
      AudioMetrics newAudioMetrics = (AudioMetrics) new AudioMetrics().deserialize(JSON.serialize(ret.getAudioMetrics()), (Map<String, Object>) jsonMap.get('audio_metrics_serialized_name'), AudioMetrics.class);
      ret.setAudioMetrics(newAudioMetrics);

      return ret;
    }
  }

  /**
   * Additional service features that are supported with the model.
   */
  public class SupportedFeatures extends IBMWatsonGenericModel {
    private Boolean custom_language_model_serialized_name;
    private Boolean speaker_labels_serialized_name;
 
    /**
     * Gets the customLanguageModel.
     *
     * Indicates whether the customization interface can be used to create a custom language model based on the language
     * model.
     *
     * @return the customLanguageModel
     */
    @AuraEnabled
    public Boolean getCustomLanguageModel() {
      return custom_language_model_serialized_name;
    }
 
    /**
     * Gets the speakerLabels.
     *
     * Indicates whether the `speaker_labels` parameter can be used with the language model.
     *
     * @return the speakerLabels
     */
    @AuraEnabled
    public Boolean getSpeakerLabels() {
      return speaker_labels_serialized_name;
    }

    /**
     * Sets the customLanguageModel.
     *
     * @param customLanguageModel the new customLanguageModel
     */
    public void setCustomLanguageModel(final Boolean customLanguageModel) {
      this.custom_language_model_serialized_name = customLanguageModel;
    }

    /**
     * Sets the speakerLabels.
     *
     * @param speakerLabels the new speakerLabels
     */
    public void setSpeakerLabels(final Boolean speakerLabels) {
      this.speaker_labels_serialized_name = speakerLabels;
    }

  }

  /**
   * The trainAcousticModel options.
   */
  public class TrainAcousticModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String customLanguageModelId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the customLanguageModelId.
     *
     * The customization ID (GUID) of a custom language model that is to be used during training of the custom acoustic
     * model. Specify a custom language model that has been trained with verbatim transcriptions of the audio resources
     * or that contains words that are relevant to the contents of the audio resources. The custom language model must
     * be based on the same version of the same base model as the custom acoustic model. The credentials specified with
     * the request must own both custom models.
     *
     * @return the customLanguageModelId
     */
    public String customLanguageModelId() {
      return customLanguageModelId;
    }

    private TrainAcousticModelOptions(TrainAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      customLanguageModelId = builder.customLanguageModelId;
      this.requestHeaders = builder.requestHeaders;
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
  public class TrainAcousticModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String customLanguageModelId;

    private TrainAcousticModelOptionsBuilder(TrainAcousticModelOptions trainAcousticModelOptions) {
      customizationId = trainAcousticModelOptions.customizationId;
      customLanguageModelId = trainAcousticModelOptions.customLanguageModelId;
      this.requestHeaders.putAll(trainAcousticModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the TrainAcousticModelOptions builder
     */
    public TrainAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the customLanguageModelId.
     *
     * @param customLanguageModelId the customLanguageModelId
     * @return the TrainAcousticModelOptions builder
     */
    public TrainAcousticModelOptionsBuilder customLanguageModelId(String customLanguageModelId) {
      this.customLanguageModelId = customLanguageModelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the TrainAcousticModelOptions builder
     */
    public TrainAcousticModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The trainLanguageModel options.
   */
  public class TrainLanguageModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String wordTypeToAdd;
    private Double customizationWeight;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the wordTypeToAdd.
     *
     * The type of words from the custom language model's words resource on which to train the model:
     * * `all` (the default) trains the model on all new words, regardless of whether they were extracted from corpora
     * or grammars or were added or modified by the user.
     * * `user` trains the model only on new words that were added or modified by the user directly. The model is not
     * trained on new words extracted from corpora or grammars.
     *
     * @return the wordTypeToAdd
     */
    public String wordTypeToAdd() {
      return wordTypeToAdd;
    }
 
    /**
     * Gets the customizationWeight.
     *
     * Specifies a customization weight for the custom language model. The customization weight tells the service how
     * much weight to give to words from the custom language model compared to those from the base model for speech
     * recognition. Specify a value between 0.0 and 1.0; the default is 0.3.
     *
     * The default value yields the best performance in general. Assign a higher value if your audio makes frequent use
     * of OOV words from the custom model. Use caution when setting the weight: a higher value can improve the accuracy
     * of phrases from the custom model's domain, but it can negatively affect performance on non-domain phrases.
     *
     * The value that you assign is used for all recognition requests that use the model. You can override it for any
     * recognition request by specifying a customization weight for that request.
     *
     * @return the customizationWeight
     */
    public Double customizationWeight() {
      return customizationWeight;
    }

    private TrainLanguageModelOptions(TrainLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      wordTypeToAdd = builder.wordTypeToAdd;
      customizationWeight = builder.customizationWeight;
      this.requestHeaders = builder.requestHeaders;
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
  public class TrainLanguageModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String wordTypeToAdd;
    private Double customizationWeight;

    private TrainLanguageModelOptionsBuilder(TrainLanguageModelOptions trainLanguageModelOptions) {
      customizationId = trainLanguageModelOptions.customizationId;
      wordTypeToAdd = trainLanguageModelOptions.wordTypeToAdd;
      customizationWeight = trainLanguageModelOptions.customizationWeight;
      this.requestHeaders.putAll(trainLanguageModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the wordTypeToAdd.
     *
     * @param wordTypeToAdd the wordTypeToAdd
     * @return the TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder wordTypeToAdd(String wordTypeToAdd) {
      this.wordTypeToAdd = wordTypeToAdd;
      return this;
    }

    /**
     * Set the customizationWeight.
     *
     * @param customizationWeight the customizationWeight
     * @return the TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder customizationWeight(Double customizationWeight) {
      this.customizationWeight = customizationWeight;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the TrainLanguageModelOptions builder
     */
    public TrainLanguageModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The response from training of a custom language or custom acoustic model.
   */
  public class TrainingResponse extends IBMWatsonResponseModel {
    private List<TrainingWarning> warnings_serialized_name;
 
    /**
     * Gets the warnings.
     *
     * An array of `TrainingWarning` objects that lists any invalid resources contained in the custom model. For custom
     * language models, invalid resources are grouped and identified by type of resource. The method can return warnings
     * only if the `strict` parameter is set to `false`.
     *
     * @return the warnings
     */
    @AuraEnabled
    public List<TrainingWarning> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the warnings.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final List<TrainingWarning> warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TrainingResponse ret = (TrainingResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for warnings
      List<TrainingWarning> newWarnings = new List<TrainingWarning>();
      List<TrainingWarning> deserializedWarnings = ret.getWarnings();
      if (deserializedWarnings != null) {
        for (Integer i = 0; i < deserializedWarnings.size(); i++) {
          TrainingWarning currentItem = ret.getWarnings().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('warnings_serialized_name');
          TrainingWarning newItem = (TrainingWarning) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TrainingWarning.class);
          newWarnings.add(newItem);
        }
        ret.warnings_serialized_name = newWarnings;
      }

      return ret;
    }
  }

  /**
   * A warning from training of a custom language or custom acoustic model.
   */
  public class TrainingWarning extends IBMWatsonGenericModel {
    private String code_serialized_name;
    private String message_serialized_name;
 
    /**
     * Gets the code.
     *
     * An identifier for the type of invalid resources listed in the `description` field.
     *
     * @return the code
     */
    @AuraEnabled
    public String getCode() {
      return code_serialized_name;
    }
 
    /**
     * Gets the message.
     *
     * A warning message that lists the invalid resources that are excluded from the custom model's training. The
     * message has the following format: `Analysis of the following {resource_type} has not completed successfully:
     * [{resource_names}]. They will be excluded from custom {model_type} model training.`.
     *
     * @return the message
     */
    @AuraEnabled
    public String getMessage() {
      return message_serialized_name;
    }

    /**
     * Sets the code.
     *
     * @param code the new code
     */
    public void setCode(final String code) {
      this.code_serialized_name = code;
    }

    /**
     * Sets the message.
     *
     * @param message the new message
     */
    public void setMessage(final String message) {
      this.message_serialized_name = message;
    }

  }

  /**
   * The unregisterCallback options.
   */
  public class UnregisterCallbackOptions extends IBMWatsonOptionsModel {
    private String callbackUrl;
 
    /**
     * Gets the callbackUrl.
     *
     * The callback URL that is to be unregistered.
     *
     * @return the callbackUrl
     */
    public String callbackUrl() {
      return callbackUrl;
    }

    private UnregisterCallbackOptions(UnregisterCallbackOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.callbackUrl, 'callbackUrl cannot be null');
      callbackUrl = builder.callbackUrl;
      this.requestHeaders = builder.requestHeaders;
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
  public class UnregisterCallbackOptionsBuilder extends IBMWatsonOptionsModel {
    private String callbackUrl;

    private UnregisterCallbackOptionsBuilder(UnregisterCallbackOptions unregisterCallbackOptions) {
      callbackUrl = unregisterCallbackOptions.callbackUrl;
      this.requestHeaders.putAll(unregisterCallbackOptions.requestHeaders());
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
      this.callbackUrl = callbackUrl;
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
     * Set the callbackUrl.
     *
     * @param callbackUrl the callbackUrl
     * @return the UnregisterCallbackOptions builder
     */
    public UnregisterCallbackOptionsBuilder callbackUrl(String callbackUrl) {
      this.callbackUrl = callbackUrl;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UnregisterCallbackOptions builder
     */
    public UnregisterCallbackOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The upgradeAcousticModel options.
   */
  public class UpgradeAcousticModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
    private String customLanguageModelId;
    private Boolean force;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom acoustic model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }
 
    /**
     * Gets the customLanguageModelId.
     *
     * If the custom acoustic model was trained with a custom language model, the customization ID (GUID) of that custom
     * language model. The custom language model must be upgraded before the custom acoustic model can be upgraded. The
     * credentials specified with the request must own both custom models.
     *
     * @return the customLanguageModelId
     */
    public String customLanguageModelId() {
      return customLanguageModelId;
    }
 
    /**
     * Gets the force.
     *
     * If `true`, forces the upgrade of a custom acoustic model for which no input data has been modified since it was
     * last trained. Use this parameter only to force the upgrade of a custom acoustic model that is trained with a
     * custom language model, and only if you receive a 400 response code and the message `No input data modified since
     * last training`. See [Upgrading a custom acoustic
     * model](https://cloud.ibm.com/docs/services/speech-to-text?topic=speech-to-text-customUpgrade#upgradeAcoustic).
     *
     * @return the force
     */
    public Boolean force() {
      return force;
    }

    private UpgradeAcousticModelOptions(UpgradeAcousticModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      customLanguageModelId = builder.customLanguageModelId;
      force = builder.force;
      this.requestHeaders = builder.requestHeaders;
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
  public class UpgradeAcousticModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;
    private String customLanguageModelId;
    private Boolean force;

    private UpgradeAcousticModelOptionsBuilder(UpgradeAcousticModelOptions upgradeAcousticModelOptions) {
      customizationId = upgradeAcousticModelOptions.customizationId;
      customLanguageModelId = upgradeAcousticModelOptions.customLanguageModelId;
      force = upgradeAcousticModelOptions.force;
      this.requestHeaders.putAll(upgradeAcousticModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the UpgradeAcousticModelOptions builder
     */
    public UpgradeAcousticModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Set the customLanguageModelId.
     *
     * @param customLanguageModelId the customLanguageModelId
     * @return the UpgradeAcousticModelOptions builder
     */
    public UpgradeAcousticModelOptionsBuilder customLanguageModelId(String customLanguageModelId) {
      this.customLanguageModelId = customLanguageModelId;
      return this;
    }

    /**
     * Set the force.
     *
     * @param force the force
     * @return the UpgradeAcousticModelOptions builder
     */
    public UpgradeAcousticModelOptionsBuilder force(Boolean force) {
      this.force = force;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpgradeAcousticModelOptions builder
     */
    public UpgradeAcousticModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The upgradeLanguageModel options.
   */
  public class UpgradeLanguageModelOptions extends IBMWatsonOptionsModel {
    private String customizationId;
 
    /**
     * Gets the customizationId.
     *
     * The customization ID (GUID) of the custom language model that is to be used for the request. You must make the
     * request with credentials for the instance of the service that owns the custom model.
     *
     * @return the customizationId
     */
    public String customizationId() {
      return customizationId;
    }

    private UpgradeLanguageModelOptions(UpgradeLanguageModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.customizationId, 'customizationId cannot be empty');
      customizationId = builder.customizationId;
      this.requestHeaders = builder.requestHeaders;
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
  public class UpgradeLanguageModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String customizationId;

    private UpgradeLanguageModelOptionsBuilder(UpgradeLanguageModelOptions upgradeLanguageModelOptions) {
      customizationId = upgradeLanguageModelOptions.customizationId;
      this.requestHeaders.putAll(upgradeLanguageModelOptions.requestHeaders());
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
      this.customizationId = customizationId;
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
     * Set the customizationId.
     *
     * @param customizationId the customizationId
     * @return the UpgradeLanguageModelOptions builder
     */
    public UpgradeLanguageModelOptionsBuilder customizationId(String customizationId) {
      this.customizationId = customizationId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpgradeLanguageModelOptions builder
     */
    public UpgradeLanguageModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Information about a word from a custom language model.
   */
  public class Word extends IBMWatsonResponseModel {
    private String word_serialized_name;
    private List<String> sounds_like_serialized_name;
    private String display_as_serialized_name;
    private Long count_serialized_name;
    private List<String> source_serialized_name;
    private List<WordError> error_serialized_name;
 
    /**
     * Gets the word.
     *
     * A word from the custom model's words resource. The spelling of the word is used to train the model.
     *
     * @return the word
     */
    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }
 
    /**
     * Gets the soundsLike.
     *
     * An array of pronunciations for the word. The array can include the sounds-like pronunciation automatically
     * generated by the service if none is provided for the word; the service adds this pronunciation when it finishes
     * processing the word.
     *
     * @return the soundsLike
     */
    @AuraEnabled
    public List<String> getSoundsLike() {
      return sounds_like_serialized_name;
    }
 
    /**
     * Gets the displayAs.
     *
     * The spelling of the word that the service uses to display the word in a transcript. The field contains an empty
     * string if no display-as value is provided for the word, in which case the word is displayed as it is spelled.
     *
     * @return the displayAs
     */
    @AuraEnabled
    public String getDisplayAs() {
      return display_as_serialized_name;
    }
 
    /**
     * Gets the count.
     *
     * A sum of the number of times the word is found across all corpora. For example, if the word occurs five times in
     * one corpus and seven times in another, its count is `12`. If you add a custom word to a model before it is added
     * by any corpora, the count begins at `1`; if the word is added from a corpus first and later modified, the count
     * reflects only the number of times it is found in corpora.
     *
     * @return the count
     */
    @AuraEnabled
    public Long getCount() {
      return count_serialized_name;
    }
 
    /**
     * Gets the source.
     *
     * An array of sources that describes how the word was added to the custom model's words resource. For OOV words
     * added from a corpus, includes the name of the corpus; if the word was added by multiple corpora, the names of all
     * corpora are listed. If the word was modified or added by the user directly, the field includes the string `user`.
     *
     * @return the source
     */
    @AuraEnabled
    public List<String> getSource() {
      return source_serialized_name;
    }
 
    /**
     * Gets the error.
     *
     * If the service discovered one or more problems that you need to correct for the word's definition, an array that
     * describes each of the errors.
     *
     * @return the error
     */
    @AuraEnabled
    public List<WordError> getError() {
      return error_serialized_name;
    }

    /**
     * Sets the word.
     *
     * @param word the new word
     */
    public void setWord(final String word) {
      this.word_serialized_name = word;
    }

    /**
     * Sets the soundsLike.
     *
     * @param soundsLike the new soundsLike
     */
    public void setSoundsLike(final List<String> soundsLike) {
      this.sounds_like_serialized_name = soundsLike;
    }

    /**
     * Sets the displayAs.
     *
     * @param displayAs the new displayAs
     */
    public void setDisplayAs(final String displayAs) {
      this.display_as_serialized_name = displayAs;
    }

    /**
     * Sets the count.
     *
     * @param count the new count
     */
    public void setCount(final long count) {
      this.count_serialized_name = count;
    }

    /**
     * Sets the source.
     *
     * @param source the new source
     */
    public void setSource(final List<String> source) {
      this.source_serialized_name = source;
    }

    /**
     * Sets the error.
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

      // calling custom deserializer for error
      List<WordError> newError = new List<WordError>();
      List<WordError> deserializedError = ret.getError();
      if (deserializedError != null) {
        for (Integer i = 0; i < deserializedError.size(); i++) {
          WordError currentItem = ret.getError().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('error_serialized_name');
          WordError newItem = (WordError) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WordError.class);
          newError.add(newItem);
        }
        ret.error_serialized_name = newError;
      }

      return ret;
    }
  }

  /**
   * An alternative hypothesis for a word from speech recognition results.
   */
  public class WordAlternativeResult extends IBMWatsonGenericModel {
    private Double confidence_serialized_name;
    private String word_serialized_name;
 
    /**
     * Gets the confidence.
     *
     * A confidence score for the word alternative hypothesis in the range of 0.0 to 1.0.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
 
    /**
     * Gets the word.
     *
     * An alternative hypothesis for a word from the input audio.
     *
     * @return the word
     */
    @AuraEnabled
    public String getWord() {
      return word_serialized_name;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the word.
     *
     * @param word the new word
     */
    public void setWord(final String word) {
      this.word_serialized_name = word;
    }

  }

  /**
   * Information about alternative hypotheses for words from speech recognition results.
   */
  public class WordAlternativeResults extends IBMWatsonGenericModel {
    private Double start_time_serialized_name;
    private Double end_time_serialized_name;
    private List<WordAlternativeResult> alternatives_serialized_name;
 
    /**
     * Gets the startTime.
     *
     * The start time in seconds of the word from the input audio that corresponds to the word alternatives.
     *
     * @return the startTime
     */
    @AuraEnabled
    public Double getStartTime() {
      return start_time_serialized_name;
    }
 
    /**
     * Gets the endTime.
     *
     * The end time in seconds of the word from the input audio that corresponds to the word alternatives.
     *
     * @return the endTime
     */
    @AuraEnabled
    public Double getEndTime() {
      return end_time_serialized_name;
    }
 
    /**
     * Gets the alternatives.
     *
     * An array of alternative hypotheses for a word from the input audio.
     *
     * @return the alternatives
     */
    @AuraEnabled
    public List<WordAlternativeResult> getAlternatives() {
      return alternatives_serialized_name;
    }

    /**
     * Sets the startTime.
     *
     * @param startTime the new startTime
     */
    public void setStartTime(final Double startTime) {
      this.start_time_serialized_name = startTime;
    }

    /**
     * Sets the endTime.
     *
     * @param endTime the new endTime
     */
    public void setEndTime(final Double endTime) {
      this.end_time_serialized_name = endTime;
    }

    /**
     * Sets the alternatives.
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

      // calling custom deserializer for alternatives
      List<WordAlternativeResult> newAlternatives = new List<WordAlternativeResult>();
      List<WordAlternativeResult> deserializedAlternatives = ret.getAlternatives();
      if (deserializedAlternatives != null) {
        for (Integer i = 0; i < deserializedAlternatives.size(); i++) {
          WordAlternativeResult currentItem = ret.getAlternatives().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('alternatives_serialized_name');
          WordAlternativeResult newItem = (WordAlternativeResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WordAlternativeResult.class);
          newAlternatives.add(newItem);
        }
        ret.alternatives_serialized_name = newAlternatives;
      }

      return ret;
    }
  }

  /**
   * An error associated with a word from a custom language model.
   */
  public class WordError extends IBMWatsonGenericModel {
    private String element_serialized_name;
 
    /**
     * Gets the element.
     *
     * A key-value pair that describes an error associated with the definition of a word in the words resource. The pair
     * has the format `"element": "message"`, where `element` is the aspect of the definition that caused the problem
     * and `message` describes the problem. The following example describes a problem with one of the word's sounds-like
     * definitions: `"{sounds_like_string}": "Numbers are not allowed in sounds-like. You can try for example
     * '{suggested_string}'."`.
     *
     * @return the element
     */
    @AuraEnabled
    public String getElement() {
      return element_serialized_name;
    }

    /**
     * Sets the element.
     *
     * @param element the new element
     */
    public void setElement(final String element) {
      this.element_serialized_name = element;
    }

  }

  /**
   * Information about the words from a custom language model.
   */
  public class Words extends IBMWatsonResponseModel {
    private List<Word> words_serialized_name;
 
    /**
     * Gets the words.
     *
     * An array of `Word` objects that provides information about each word in the custom model's words resource. The
     * array is empty if the custom model has no words.
     *
     * @return the words
     */
    @AuraEnabled
    public List<Word> getWords() {
      return words_serialized_name;
    }

    /**
     * Sets the words.
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

      // calling custom deserializer for words
      List<Word> newWords = new List<Word>();
      List<Word> deserializedWords = ret.getWords();
      if (deserializedWords != null) {
        for (Integer i = 0; i < deserializedWords.size(); i++) {
          Word currentItem = ret.getWords().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('words_serialized_name');
          Word newItem = (Word) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Word.class);
          newWords.add(newItem);
        }
        ret.words_serialized_name = newWords;
      }

      return ret;
    }
  }

}
