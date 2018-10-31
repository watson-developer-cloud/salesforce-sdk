public class IBMLanguageTranslatorV3Models {
  /**
   * The createModel options.
   */
  public class CreateModelOptions extends IBMWatsonOptionsModel {
    private String baseModelId;
    private String name;
    private IBMWatsonFile forcedGlossary;
    private String forcedGlossaryFilename;
    private IBMWatsonFile parallelCorpus;
    private String parallelCorpusFilename;
 
    /**
     * Gets the baseModelId.
     *
     * The model ID of the model to use as the base for customization. To see available models, use the `List models`
     * method. Usually all IBM provided models are customizable. In addition, all your models that have been created via
     * parallel corpus customization, can be further customized with a forced glossary.
     *
     * @return the baseModelId
     */
    public String baseModelId() {
      return baseModelId;
    }
 
    /**
     * Gets the name.
     *
     * An optional model name that you can use to identify the model. Valid characters are letters, numbers, dashes,
     * underscores, spaces and apostrophes. The maximum length is 32 characters.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the forcedGlossary.
     *
     * A TMX file with your customizations. The customizations in the file completely overwrite the domain translaton
     * data, including high frequency or high confidence phrase translations. You can upload only one glossary with a
     * file size less than 10 MB per call. A forced glossary should contain single words or short phrases.
     *
     * @return the forcedGlossary
     */
    public IBMWatsonFile forcedGlossary() {
      return forcedGlossary;
    }
 
    /**
     * Gets the forcedGlossaryFilename.
     *
     * The filename for forcedGlossary.
     *
     * @return the forcedGlossaryFilename
     */
    public String forcedGlossaryFilename() {
      return forcedGlossaryFilename;
    }
 
    /**
     * Gets the parallelCorpus.
     *
     * A TMX file with parallel sentences for source and target language. You can upload multiple parallel_corpus files
     * in one request. All uploaded parallel_corpus files combined, your parallel corpus must contain at least 5,000
     * parallel sentences to train successfully.
     *
     * @return the parallelCorpus
     */
    public IBMWatsonFile parallelCorpus() {
      return parallelCorpus;
    }
 
    /**
     * Gets the parallelCorpusFilename.
     *
     * The filename for parallelCorpus.
     *
     * @return the parallelCorpusFilename
     */
    public String parallelCorpusFilename() {
      return parallelCorpusFilename;
    }

    private CreateModelOptions(CreateModelOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.baseModelId, 'baseModelId cannot be null');
      baseModelId = builder.baseModelId;
      name = builder.name;
      forcedGlossary = builder.forcedGlossary;
      forcedGlossaryFilename = builder.forcedGlossaryFilename;
      parallelCorpus = builder.parallelCorpus;
      parallelCorpusFilename = builder.parallelCorpusFilename;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateModelOptions builder
     */
    public CreateModelOptionsBuilder newBuilder() {
      return new CreateModelOptionsBuilder(this);
    }

  }

  /**
   * CreateModelOptions Builder.
   */
  public class CreateModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String baseModelId;
    private String name;
    private IBMWatsonFile forcedGlossary;
    private String forcedGlossaryFilename;
    private IBMWatsonFile parallelCorpus;
    private String parallelCorpusFilename;

    private CreateModelOptionsBuilder(CreateModelOptions createModelOptions) {
      baseModelId = createModelOptions.baseModelId;
      name = createModelOptions.name;
      forcedGlossary = createModelOptions.forcedGlossary;
      forcedGlossaryFilename = createModelOptions.forcedGlossaryFilename;
      parallelCorpus = createModelOptions.parallelCorpus;
      parallelCorpusFilename = createModelOptions.parallelCorpusFilename;
      this.requestHeaders.putAll(createModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param baseModelId the baseModelId
     */
    public CreateModelOptionsBuilder(String baseModelId) {
      this.baseModelId = baseModelId;
    }

    /**
     * Builds a CreateModelOptions.
     *
     * @return the createModelOptions
     */
    public CreateModelOptions build() {
      return new CreateModelOptions(this);
    }

    /**
     * Set the baseModelId.
     *
     * @param baseModelId the baseModelId
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder baseModelId(String baseModelId) {
      this.baseModelId = baseModelId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the forcedGlossary.
     *
     * @param forcedGlossary the forcedGlossary
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder forcedGlossary(IBMWatsonFile forcedGlossary) {
      this.forcedGlossary = forcedGlossary;
      return this;
    }

    /**
     * Set the forcedGlossaryFilename.
     *
     * @param forcedGlossaryFilename the forcedGlossaryFilename
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder forcedGlossaryFilename(String forcedGlossaryFilename) {
      this.forcedGlossaryFilename = forcedGlossaryFilename;
      return this;
    }

    /**
     * Set the parallelCorpus.
     *
     * @param parallelCorpus the parallelCorpus
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder parallelCorpus(IBMWatsonFile parallelCorpus) {
      this.parallelCorpus = parallelCorpus;
      return this;
    }

    /**
     * Set the parallelCorpusFilename.
     *
     * @param parallelCorpusFilename the parallelCorpusFilename
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder parallelCorpusFilename(String parallelCorpusFilename) {
      this.parallelCorpusFilename = parallelCorpusFilename;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteModel options.
   */
  public class DeleteModelOptions extends IBMWatsonOptionsModel {
    private String modelId;
 
    /**
     * Gets the modelId.
     *
     * Model ID of the model to delete.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }

    private DeleteModelOptions(DeleteModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.modelId, 'modelId cannot be empty');
      modelId = builder.modelId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder newBuilder() {
      return new DeleteModelOptionsBuilder(this);
    }

  }

  /**
   * DeleteModelOptions Builder.
   */
  public class DeleteModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String modelId;

    private DeleteModelOptionsBuilder(DeleteModelOptions deleteModelOptions) {
      modelId = deleteModelOptions.modelId;
      this.requestHeaders.putAll(deleteModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param modelId the modelId
     */
    public DeleteModelOptionsBuilder(String modelId) {
      this.modelId = modelId;
    }

    /**
     * Builds a DeleteModelOptions.
     *
     * @return the deleteModelOptions
     */
    public DeleteModelOptions build() {
      return new DeleteModelOptions(this);
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder addHeader(String name, String value) {
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
     * Model ID of the model to get.
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
   * IdentifiableLanguage.
   */
  public class IdentifiableLanguage extends IBMWatsonGenericModel {
    private String language_serialized_name;
    private String name_serialized_name;
 
    /**
     * Gets the language.
     *
     * The language code for an identifiable language.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * The name of the identifiable language.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
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
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      IdentifiableLanguage ret = (IdentifiableLanguage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * IdentifiableLanguages.
   */
  public class IdentifiableLanguages extends IBMWatsonResponseModel {
    private List<IdentifiableLanguage> languages_serialized_name;
 
    /**
     * Gets the languages.
     *
     * A list of all languages that the service can identify.
     *
     * @return the languages
     */
    @AuraEnabled
    public List<IdentifiableLanguage> getLanguages() {
      return languages_serialized_name;
    }

    /**
     * Sets the languages.
     *
     * @param languages the new languages
     */
    public void setLanguages(final List<IdentifiableLanguage> languages) {
      this.languages_serialized_name = languages;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      IdentifiableLanguages ret = (IdentifiableLanguages) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for languages
      List<IdentifiableLanguage> newLanguages = new List<IdentifiableLanguage>();
      List<IdentifiableLanguage> deserializedLanguages = ret.getLanguages();
      if (deserializedLanguages != null) {
        for (Integer i = 0; i < deserializedLanguages.size(); i++) {
          IdentifiableLanguage currentItem = ret.getLanguages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('languages_serialized_name');
          IdentifiableLanguage newItem = (IdentifiableLanguage) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), IdentifiableLanguage.class);
          newLanguages.add(newItem);
        }
        ret.setLanguages(newLanguages);
      }

      return ret;
    }
  }

  /**
   * IdentifiedLanguage.
   */
  public class IdentifiedLanguage extends IBMWatsonGenericModel {
    private String language_serialized_name;
    private Double confidence_serialized_name;
 
    /**
     * Gets the language.
     *
     * The language code for an identified language.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * The confidence score for the identified language.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
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
     * Sets the confidence.
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

      IdentifiedLanguage ret = (IdentifiedLanguage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * IdentifiedLanguages.
   */
  public class IdentifiedLanguages extends IBMWatsonResponseModel {
    private List<IdentifiedLanguage> languages_serialized_name;
 
    /**
     * Gets the languages.
     *
     * A ranking of identified languages with confidence scores.
     *
     * @return the languages
     */
    @AuraEnabled
    public List<IdentifiedLanguage> getLanguages() {
      return languages_serialized_name;
    }

    /**
     * Sets the languages.
     *
     * @param languages the new languages
     */
    public void setLanguages(final List<IdentifiedLanguage> languages) {
      this.languages_serialized_name = languages;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      IdentifiedLanguages ret = (IdentifiedLanguages) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for languages
      List<IdentifiedLanguage> newLanguages = new List<IdentifiedLanguage>();
      List<IdentifiedLanguage> deserializedLanguages = ret.getLanguages();
      if (deserializedLanguages != null) {
        for (Integer i = 0; i < deserializedLanguages.size(); i++) {
          IdentifiedLanguage currentItem = ret.getLanguages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('languages_serialized_name');
          IdentifiedLanguage newItem = (IdentifiedLanguage) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), IdentifiedLanguage.class);
          newLanguages.add(newItem);
        }
        ret.setLanguages(newLanguages);
      }

      return ret;
    }
  }

  /**
   * The identify options.
   */
  public class IdentifyOptions extends IBMWatsonOptionsModel {
    private String text;
 
    /**
     * Gets the text.
     *
     * Input text in UTF-8 format.
     *
     * @return the text
     */
    public String text() {
      return text;
    }

    private IdentifyOptions(IdentifyOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      text = builder.text;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a IdentifyOptions builder
     */
    public IdentifyOptionsBuilder newBuilder() {
      return new IdentifyOptionsBuilder(this);
    }

  }

  /**
   * IdentifyOptions Builder.
   */
  public class IdentifyOptionsBuilder extends IBMWatsonOptionsModel {
    private String text;

    private IdentifyOptionsBuilder(IdentifyOptions identifyOptions) {
      text = identifyOptions.text;
      this.requestHeaders.putAll(identifyOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public IdentifyOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text the text
     */
    public IdentifyOptionsBuilder(String text) {
      this.text = text;
    }

    /**
     * Builds a IdentifyOptions.
     *
     * @return the identifyOptions
     */
    public IdentifyOptions build() {
      return new IdentifyOptions(this);
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the IdentifyOptions builder
     */
    public IdentifyOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the IdentifyOptions builder
     */
    public IdentifyOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listIdentifiableLanguages options.
   */
  public class ListIdentifiableLanguagesOptions extends IBMWatsonOptionsModel {

    private ListIdentifiableLanguagesOptions(ListIdentifiableLanguagesOptionsBuilder builder) {
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListIdentifiableLanguagesOptions builder
     */
    public ListIdentifiableLanguagesOptionsBuilder newBuilder() {
      return new ListIdentifiableLanguagesOptionsBuilder(this);
    }

  }

  /**
   * ListIdentifiableLanguagesOptions Builder.
   */
  public class ListIdentifiableLanguagesOptionsBuilder extends IBMWatsonOptionsModel {

    private ListIdentifiableLanguagesOptionsBuilder(ListIdentifiableLanguagesOptions listIdentifiableLanguagesOptions) {
      this.requestHeaders.putAll(listIdentifiableLanguagesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListIdentifiableLanguagesOptionsBuilder() {
    }

    /**
     * Builds a ListIdentifiableLanguagesOptions.
     *
     * @return the listIdentifiableLanguagesOptions
     */
    public ListIdentifiableLanguagesOptions build() {
      return new ListIdentifiableLanguagesOptions(this);
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListIdentifiableLanguagesOptions builder
     */
    public ListIdentifiableLanguagesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listModels options.
   */
  public class ListModelsOptions extends IBMWatsonOptionsModel {
    private String source;
    private String target;
    private Boolean defaultModels;
 
    /**
     * Gets the source.
     *
     * Specify a language code to filter results by source language.
     *
     * @return the source
     */
    public String source() {
      return source;
    }
 
    /**
     * Gets the target.
     *
     * Specify a language code to filter results by target language.
     *
     * @return the target
     */
    public String target() {
      return target;
    }
 
    /**
     * Gets the defaultModels.
     *
     * If the default parameter isn't specified, the service will return all models (default and non-default) for each
     * language pair. To return only default models, set this to `true`. To return only non-default models, set this to
     * `false`. There is exactly one default model per language pair, the IBM provided base model.
     *
     * @return the defaultModels
     */
    public Boolean defaultModels() {
      return defaultModels;
    }

    private ListModelsOptions(ListModelsOptionsBuilder builder) {
      source = builder.source;
      target = builder.target;
      defaultModels = builder.defaultModels;
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
    private String source;
    private String target;
    private Boolean defaultModels;

    private ListModelsOptionsBuilder(ListModelsOptions listModelsOptions) {
      source = listModelsOptions.source;
      target = listModelsOptions.target;
      defaultModels = listModelsOptions.defaultModels;
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
     * Set the source.
     *
     * @param source the source
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder source(String source) {
      this.source = source;
      return this;
    }

    /**
     * Set the target.
     *
     * @param target the target
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder target(String target) {
      this.target = target;
      return this;
    }

    /**
     * Set the defaultModels.
     *
     * @param defaultModels the defaultModels
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder defaultModels(Boolean defaultModels) {
      this.defaultModels = defaultModels;
      return this;
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
   * The translate options.
   */
  public class TranslateOptions extends IBMWatsonOptionsModel {
    private List<String> text;
    private String modelId;
    private String source;
    private String target;
 
    /**
     * Gets the text.
     *
     * Input text in UTF-8 encoding. Multiple entries will result in multiple translations in the response.
     *
     * @return the text
     */
    public List<String> text() {
      return text;
    }
 
    /**
     * Gets the modelId.
     *
     * Model ID of the translation model to use. If this is specified, the **source** and **target** parameters will be
     * ignored. The method requires either a model ID or both the **source** and **target** parameters.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }
 
    /**
     * Gets the source.
     *
     * Language code of the source text language. Use with `target` as an alternative way to select a translation model.
     * When `source` and `target` are set, and a model ID is not set, the system chooses a default model for the
     * language pair (usually the model based on the news domain).
     *
     * @return the source
     */
    public String source() {
      return source;
    }
 
    /**
     * Gets the target.
     *
     * Language code of the translation target language. Use with source as an alternative way to select a translation
     * model.
     *
     * @return the target
     */
    public String target() {
      return target;
    }

    private TranslateOptions(TranslateOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      text = builder.text;
      modelId = builder.modelId;
      source = builder.source;
      target = builder.target;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a TranslateOptions builder
     */
    public TranslateOptionsBuilder newBuilder() {
      return new TranslateOptionsBuilder(this);
    }

  }

  /**
   * TranslateOptions Builder.
   */
  public class TranslateOptionsBuilder extends IBMWatsonOptionsModel {
    private List<String> text;
    private String modelId;
    private String source;
    private String target;

    private TranslateOptionsBuilder(TranslateOptions translateOptions) {
      text = translateOptions.text;
      modelId = translateOptions.modelId;
      source = translateOptions.source;
      target = translateOptions.target;
      this.requestHeaders.putAll(translateOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public TranslateOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text the text
     */
    public TranslateOptionsBuilder(List<String> text) {
      this.text = text;
    }

    /**
     * Builds a TranslateOptions.
     *
     * @return the translateOptions
     */
    public TranslateOptions build() {
      return new TranslateOptions(this);
    }

    /**
     * Adds an text to text.
     *
     * @param text the new text
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder addText(String text) {
      IBMWatsonValidator.notNull(text, 'text cannot be null');
      if (this.text == null) {
        this.text = new List<String>();
      }
      this.text.add(text);
      return this;
    }

    /**
     * Set the text.
     * Existing text will be replaced.
     *
     * @param text the text
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder text(List<String> text) {
      this.text = text;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Set the source.
     *
     * @param source the source
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder source(String source) {
      this.source = source;
      return this;
    }

    /**
     * Set the target.
     *
     * @param target the target
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder target(String target) {
      this.target = target;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Translation.
   */
  public class Translation extends IBMWatsonGenericModel {
    private String translation_serialized_name;
 
    /**
     * Gets the translationOutput.
     *
     * Translation output in UTF-8.
     *
     * @return the translationOutput
     */
    @AuraEnabled
    public String getTranslationOutput() {
      return translation_serialized_name;
    }

    /**
     * Sets the translationOutput.
     *
     * @param translationOutput the new translationOutput
     */
    public void setTranslationOutput(final String translationOutput) {
      this.translation_serialized_name = translationOutput;
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
   * Response payload for models.
   */
  public class TranslationModel extends IBMWatsonResponseModel {
    private String model_id_serialized_name;
    private String name_serialized_name;
    private String source_serialized_name;
    private String target_serialized_name;
    private String base_model_id_serialized_name;
    private String domain_serialized_name;
    private Boolean customizable_serialized_name;
    private Boolean default_model_serialized_name;
    private String owner_serialized_name;
    private String status_serialized_name;
 
    /**
     * Gets the modelId.
     *
     * A globally unique string that identifies the underlying model that is used for translation.
     *
     * @return the modelId
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * Optional name that can be specified when the model is created.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the source.
     *
     * Translation source language code.
     *
     * @return the source
     */
    @AuraEnabled
    public String getSource() {
      return source_serialized_name;
    }
 
    /**
     * Gets the target.
     *
     * Translation target language code.
     *
     * @return the target
     */
    @AuraEnabled
    public String getTarget() {
      return target_serialized_name;
    }
 
    /**
     * Gets the baseModelId.
     *
     * Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be
     * an empty string.
     *
     * @return the baseModelId
     */
    @AuraEnabled
    public String getBaseModelId() {
      return base_model_id_serialized_name;
    }
 
    /**
     * Gets the domain.
     *
     * The domain of the translation model.
     *
     * @return the domain
     */
    @AuraEnabled
    public String getDomain() {
      return domain_serialized_name;
    }
 
    /**
     * Gets the customizable.
     *
     * Whether this model can be used as a base for customization. Customized models are not further customizable, and
     * some base models are not customizable.
     *
     * @return the customizable
     */
    @AuraEnabled
    public Boolean getCustomizable() {
      return customizable_serialized_name;
    }
 
    /**
     * Gets the defaultModel.
     *
     * Whether or not the model is a default model. A default model is the model for a given language pair that will be
     * used when that language pair is specified in the source and target parameters.
     *
     * @return the defaultModel
     */
    @AuraEnabled
    public Boolean getDefaultModel() {
      return default_model_serialized_name;
    }
 
    /**
     * Gets the owner.
     *
     * Either an empty string, indicating the model is not a custom model, or the ID of the service instance that
     * created the model.
     *
     * @return the owner
     */
    @AuraEnabled
    public String getOwner() {
      return owner_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * Availability of a model.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }

    /**
     * Sets the modelId.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
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
     * Sets the source.
     *
     * @param source the new source
     */
    public void setSource(final String source) {
      this.source_serialized_name = source;
    }

    /**
     * Sets the target.
     *
     * @param target the new target
     */
    public void setTarget(final String target) {
      this.target_serialized_name = target;
    }

    /**
     * Sets the baseModelId.
     *
     * @param baseModelId the new baseModelId
     */
    public void setBaseModelId(final String baseModelId) {
      this.base_model_id_serialized_name = baseModelId;
    }

    /**
     * Sets the domain.
     *
     * @param domain the new domain
     */
    public void setDomain(final String domain) {
      this.domain_serialized_name = domain;
    }

    /**
     * Sets the customizable.
     *
     * @param customizable the new customizable
     */
    public void setCustomizable(final Boolean customizable) {
      this.customizable_serialized_name = customizable;
    }

    /**
     * Sets the defaultModel.
     *
     * @param defaultModel the new defaultModel
     */
    public void setDefaultModel(final Boolean defaultModel) {
      this.default_model_serialized_name = defaultModel;
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

      TranslationModel ret = (TranslationModel) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The response type for listing existing translation models.
   */
  public class TranslationModels extends IBMWatsonResponseModel {
    private List<TranslationModel> models_serialized_name;
 
    /**
     * Gets the models.
     *
     * An array of available models.
     *
     * @return the models
     */
    @AuraEnabled
    public List<TranslationModel> getModels() {
      return models_serialized_name;
    }

    /**
     * Sets the models.
     *
     * @param models the new models
     */
    public void setModels(final List<TranslationModel> models) {
      this.models_serialized_name = models;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TranslationModels ret = (TranslationModels) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for models
      List<TranslationModel> newModels = new List<TranslationModel>();
      List<TranslationModel> deserializedModels = ret.getModels();
      if (deserializedModels != null) {
        for (Integer i = 0; i < deserializedModels.size(); i++) {
          TranslationModel currentItem = ret.getModels().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('models_serialized_name');
          TranslationModel newItem = (TranslationModel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TranslationModel.class);
          newModels.add(newItem);
        }
        ret.setModels(newModels);
      }

      return ret;
    }
  }

  /**
   * TranslationResult.
   */
  public class TranslationResult extends IBMWatsonResponseModel {
    private Long word_count_serialized_name;
    private Long character_count_serialized_name;
    private List<Translation> translations_serialized_name;
 
    /**
     * Gets the wordCount.
     *
     * Number of words in the input text.
     *
     * @return the wordCount
     */
    @AuraEnabled
    public Long getWordCount() {
      return word_count_serialized_name;
    }
 
    /**
     * Gets the characterCount.
     *
     * Number of characters in the input text.
     *
     * @return the characterCount
     */
    @AuraEnabled
    public Long getCharacterCount() {
      return character_count_serialized_name;
    }
 
    /**
     * Gets the translations.
     *
     * List of translation output in UTF-8, corresponding to the input text entries.
     *
     * @return the translations
     */
    @AuraEnabled
    public List<Translation> getTranslations() {
      return translations_serialized_name;
    }

    /**
     * Sets the wordCount.
     *
     * @param wordCount the new wordCount
     */
    public void setWordCount(final long wordCount) {
      this.word_count_serialized_name = wordCount;
    }

    /**
     * Sets the characterCount.
     *
     * @param characterCount the new characterCount
     */
    public void setCharacterCount(final long characterCount) {
      this.character_count_serialized_name = characterCount;
    }

    /**
     * Sets the translations.
     *
     * @param translations the new translations
     */
    public void setTranslations(final List<Translation> translations) {
      this.translations_serialized_name = translations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TranslationResult ret = (TranslationResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for translations
      List<Translation> newTranslations = new List<Translation>();
      List<Translation> deserializedTranslations = ret.getTranslations();
      if (deserializedTranslations != null) {
        for (Integer i = 0; i < deserializedTranslations.size(); i++) {
          Translation currentItem = ret.getTranslations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('translations_serialized_name');
          Translation newItem = (Translation) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Translation.class);
          newTranslations.add(newItem);
        }
        ret.setTranslations(newTranslations);
      }

      return ret;
    }
  }

}
