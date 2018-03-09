public class IBMLanguageTranslatorV2Models {
  /**
   * The createModel options.
   */
  public class CreateModelOptions {
    private String base_model_id_serialized_name;
    private String name_serialized_name;
    private IBMWatsonFile forced_glossary_serialized_name;
    private String forced_glossary_filename_serialized_name;
    private IBMWatsonFile parallel_corpus_serialized_name;
    private String parallel_corpus_filename_serialized_name;
    private IBMWatsonFile monolingual_corpus_serialized_name;
    private String monolingual_corpus_filename_serialized_name;
    /**
     * Gets the base_model_id_serialized_name.
     *
     * The model ID of the model to use as the base for customization. To see available models, use the `List models` method.
     *
     * @return the base_model_id_serialized_name
     */
    public String baseModelId() {
      return base_model_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * An optional model name that you can use to identify the model. Valid characters are letters, numbers, dashes, underscores, spaces and apostrophes. The maximum length is 32 characters.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the forced_glossary_serialized_name.
     *
     * A TMX file with your customizations. The customizations in the file completely overwrite the domain translaton data, including high frequency or high confidence phrase translations. You can upload only one glossary with a file size less than 10 MB per call.
     *
     * @return the forced_glossary_serialized_name
     */
    public IBMWatsonFile forcedGlossary() {
      return forced_glossary_serialized_name;
    }
    /**
     * Gets the forced_glossary_filename_serialized_name.
     *
     * The filename for forced_glossary.
     *
     * @return the forced_glossary_filename_serialized_name
     */
    public String forcedGlossaryFilename() {
      return forced_glossary_filename_serialized_name;
    }
    /**
     * Gets the parallel_corpus_serialized_name.
     *
     * A TMX file that contains entries that are treated as a parallel corpus instead of a glossary.
     *
     * @return the parallel_corpus_serialized_name
     */
    public IBMWatsonFile parallelCorpus() {
      return parallel_corpus_serialized_name;
    }
    /**
     * Gets the parallel_corpus_filename_serialized_name.
     *
     * The filename for parallel_corpus.
     *
     * @return the parallel_corpus_filename_serialized_name
     */
    public String parallelCorpusFilename() {
      return parallel_corpus_filename_serialized_name;
    }
    /**
     * Gets the monolingual_corpus_serialized_name.
     *
     * A UTF-8 encoded plain text file that is used to customize the target language model.
     *
     * @return the monolingual_corpus_serialized_name
     */
    public IBMWatsonFile monolingualCorpus() {
      return monolingual_corpus_serialized_name;
    }
    /**
     * Gets the monolingual_corpus_filename_serialized_name.
     *
     * The filename for monolingual_corpus.
     *
     * @return the monolingual_corpus_filename_serialized_name
     */
    public String monolingualCorpusFilename() {
      return monolingual_corpus_filename_serialized_name;
    }
    private CreateModelOptions(CreateModelOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.base_model_id_serialized_name, 'base_model_id_serialized_name cannot be null');
      base_model_id_serialized_name = builder.base_model_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      forced_glossary_serialized_name = builder.forced_glossary_serialized_name;
      forced_glossary_filename_serialized_name = builder.forced_glossary_filename_serialized_name;
      parallel_corpus_serialized_name = builder.parallel_corpus_serialized_name;
      parallel_corpus_filename_serialized_name = builder.parallel_corpus_filename_serialized_name;
      monolingual_corpus_serialized_name = builder.monolingual_corpus_serialized_name;
      monolingual_corpus_filename_serialized_name = builder.monolingual_corpus_filename_serialized_name;
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
  public class CreateModelOptionsBuilder {
    private String base_model_id_serialized_name;
    private String name_serialized_name;
    private IBMWatsonFile forced_glossary_serialized_name;
    private String forced_glossary_filename_serialized_name;
    private IBMWatsonFile parallel_corpus_serialized_name;
    private String parallel_corpus_filename_serialized_name;
    private IBMWatsonFile monolingual_corpus_serialized_name;
    private String monolingual_corpus_filename_serialized_name;

    private CreateModelOptionsBuilder(CreateModelOptions createModelOptions) {
      base_model_id_serialized_name = createModelOptions.base_model_id_serialized_name;
      name_serialized_name = createModelOptions.name_serialized_name;
      forced_glossary_serialized_name = createModelOptions.forced_glossary_serialized_name;
      forced_glossary_filename_serialized_name = createModelOptions.forced_glossary_filename_serialized_name;
      parallel_corpus_serialized_name = createModelOptions.parallel_corpus_serialized_name;
      parallel_corpus_filename_serialized_name = createModelOptions.parallel_corpus_filename_serialized_name;
      monolingual_corpus_serialized_name = createModelOptions.monolingual_corpus_serialized_name;
      monolingual_corpus_filename_serialized_name = createModelOptions.monolingual_corpus_filename_serialized_name;
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
      this.base_model_id_serialized_name = baseModelId;
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
     * Set the base_model_id_serialized_name.
     *
     * @param baseModelId the baseModelId
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder baseModelId(String baseModelId) {
      this.base_model_id_serialized_name = baseModelId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the forced_glossary_serialized_name.
     *
     * @param forcedGlossary the forcedGlossary
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder forcedGlossary(IBMWatsonFile forcedGlossary) {
      this.forced_glossary_serialized_name = forcedGlossary;
      return this;
    }

    /**
     * Set the forced_glossary_filename_serialized_name.
     *
     * @param forcedGlossaryFilename the forcedGlossaryFilename
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder forcedGlossaryFilename(String forcedGlossaryFilename) {
      this.forced_glossary_filename_serialized_name = forcedGlossaryFilename;
      return this;
    }

    /**
     * Set the parallel_corpus_serialized_name.
     *
     * @param parallelCorpus the parallelCorpus
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder parallelCorpus(IBMWatsonFile parallelCorpus) {
      this.parallel_corpus_serialized_name = parallelCorpus;
      return this;
    }

    /**
     * Set the parallel_corpus_filename_serialized_name.
     *
     * @param parallelCorpusFilename the parallelCorpusFilename
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder parallelCorpusFilename(String parallelCorpusFilename) {
      this.parallel_corpus_filename_serialized_name = parallelCorpusFilename;
      return this;
    }

    /**
     * Set the monolingual_corpus_serialized_name.
     *
     * @param monolingualCorpus the monolingualCorpus
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder monolingualCorpus(IBMWatsonFile monolingualCorpus) {
      this.monolingual_corpus_serialized_name = monolingualCorpus;
      return this;
    }

    /**
     * Set the monolingual_corpus_filename_serialized_name.
     *
     * @param monolingualCorpusFilename the monolingualCorpusFilename
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder monolingualCorpusFilename(String monolingualCorpusFilename) {
      this.monolingual_corpus_filename_serialized_name = monolingualCorpusFilename;
      return this;
    }
  }

  /**
   * The deleteModel options.
   */
  public class DeleteModelOptions {
    private String model_id_serialized_name;
    /**
     * Gets the model_id_serialized_name.
     *
     * Model ID of the model to delete.
     *
     * @return the model_id_serialized_name
     */
    public String modelId() {
      return model_id_serialized_name;
    }
    private DeleteModelOptions(DeleteModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.model_id_serialized_name, 'model_id_serialized_name cannot be empty');
      model_id_serialized_name = builder.model_id_serialized_name;
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
  public class DeleteModelOptionsBuilder {
    private String model_id_serialized_name;

    private DeleteModelOptionsBuilder(DeleteModelOptions deleteModelOptions) {
      model_id_serialized_name = deleteModelOptions.model_id_serialized_name;
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
      this.model_id_serialized_name = modelId;
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
     * Set the model_id_serialized_name.
     *
     * @param modelId the modelId
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder modelId(String modelId) {
      this.model_id_serialized_name = modelId;
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
     * Model ID of the model to get.
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
   * IdentifiableLanguage.
   */
  public class IdentifiableLanguage extends IBMWatsonGenericModel {
    private String language_serialized_name;
    private String name_serialized_name;
    /**
     * Gets the language_serialized_name.
     *
     * The language code for an identifiable language.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the identifiable language.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
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
     * Sets the name_serialized_name.
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
  public class IdentifiableLanguages extends IBMWatsonGenericModel {
    private List<IdentifiableLanguage> languages_serialized_name;
    /**
     * Gets the languages_serialized_name.
     *
     * A list of all languages that the service can identify.
     *
     * @return the languages_serialized_name
     */
    @AuraEnabled
    public List<IdentifiableLanguage> getLanguages() {
      return languages_serialized_name;
    }

    /**
     * Sets the languages_serialized_name.
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

      // calling custom deserializer for languages_serialized_name
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
     * Gets the language_serialized_name.
     *
     * The language code for an identified language.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the confidence_serialized_name.
     *
     * The confidence score for the identified language.
     *
     * @return the confidence_serialized_name
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
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

      IdentifiedLanguage ret = (IdentifiedLanguage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * IdentifiedLanguages.
   */
  public class IdentifiedLanguages extends IBMWatsonGenericModel {
    private List<IdentifiedLanguage> languages_serialized_name;
    /**
     * Gets the languages_serialized_name.
     *
     * A ranking of identified languages with confidence scores.
     *
     * @return the languages_serialized_name
     */
    @AuraEnabled
    public List<IdentifiedLanguage> getLanguages() {
      return languages_serialized_name;
    }

    /**
     * Sets the languages_serialized_name.
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

      // calling custom deserializer for languages_serialized_name
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
  public class IdentifyOptions {
    private String text_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * Input text in UTF-8 format.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private IdentifyOptions(IdentifyOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
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
  public class IdentifyOptionsBuilder {
    private String text_serialized_name;

    private IdentifyOptionsBuilder(IdentifyOptions identifyOptions) {
      text_serialized_name = identifyOptions.text_serialized_name;
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
      this.text_serialized_name = text;
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
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the IdentifyOptions builder
     */
    public IdentifyOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }
  }

  /**
   * The listIdentifiableLanguages options.
   */
  public class ListIdentifiableLanguagesOptions {
    private ListIdentifiableLanguagesOptions(ListIdentifiableLanguagesOptionsBuilder builder) {
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
  public class ListIdentifiableLanguagesOptionsBuilder {

    private ListIdentifiableLanguagesOptionsBuilder(ListIdentifiableLanguagesOptions listIdentifiableLanguagesOptions) {
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
  }

  /**
   * The listModels options.
   */
  public class ListModelsOptions {
    private String source_serialized_name;
    private String target_serialized_name;
    private Boolean default_serialized_name;
    /**
     * Gets the source_serialized_name.
     *
     * Specify a language code to filter results by source language.
     *
     * @return the source_serialized_name
     */
    public String source() {
      return source_serialized_name;
    }
    /**
     * Gets the target_serialized_name.
     *
     * Specify a language code to filter results by target language.
     *
     * @return the target_serialized_name
     */
    public String target() {
      return target_serialized_name;
    }
    /**
     * Gets the default_serialized_name.
     *
     * If the default parameter isn't specified, the service will return all models (default and non-default) for each language pair. To return only default models, set this to `true`. To return only non-default models, set this to `false`.
     *
     * @return the default_serialized_name
     */
    public Boolean defaultField() {
      return default_serialized_name;
    }
    private ListModelsOptions(ListModelsOptionsBuilder builder) {
      source_serialized_name = builder.source_serialized_name;
      target_serialized_name = builder.target_serialized_name;
      default_serialized_name = builder.default_serialized_name;
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
    private String source_serialized_name;
    private String target_serialized_name;
    private Boolean default_serialized_name;

    private ListModelsOptionsBuilder(ListModelsOptions listModelsOptions) {
      source_serialized_name = listModelsOptions.source_serialized_name;
      target_serialized_name = listModelsOptions.target_serialized_name;
      default_serialized_name = listModelsOptions.default_serialized_name;
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
     * Set the source_serialized_name.
     *
     * @param source the source
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder source(String source) {
      this.source_serialized_name = source;
      return this;
    }

    /**
     * Set the target_serialized_name.
     *
     * @param target the target
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder target(String target) {
      this.target_serialized_name = target;
      return this;
    }

    /**
     * Set the default_serialized_name.
     *
     * @param defaultVar the defaultVar
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder defaultField(Boolean defaultVar) {
      this.default_serialized_name = defaultVar;
      return this;
    }
  }

  /**
   * The translate options.
   */
  public class TranslateOptions {
    private List<String> text_serialized_name;
    private String model_id_serialized_name;
    private String source_serialized_name;
    private String target_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * Input text in UTF-8 encoding. Multiple entries will result in multiple translations in the response.
     *
     * @return the text_serialized_name
     */
    public List<String> text() {
      return text_serialized_name;
    }
    /**
     * Gets the model_id_serialized_name.
     *
     * Model ID of the translation model to use. If this is specified, the `source` and `target` parameters will be ignored. The method requires either a model ID or both the `source` and `target` parameters.
     *
     * @return the model_id_serialized_name
     */
    public String modelId() {
      return model_id_serialized_name;
    }
    /**
     * Gets the source_serialized_name.
     *
     * Language code of the source text language. Use with `target` as an alternative way to select a translation model. When `source` and `target` are set, and a model ID is not set, the system chooses a default model for the language pair (usually the model based on the news domain).
     *
     * @return the source_serialized_name
     */
    public String source() {
      return source_serialized_name;
    }
    /**
     * Gets the target_serialized_name.
     *
     * Language code of the translation target language. Use with source as an alternative way to select a translation model.
     *
     * @return the target_serialized_name
     */
    public String target() {
      return target_serialized_name;
    }
    private TranslateOptions(TranslateOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
      model_id_serialized_name = builder.model_id_serialized_name;
      source_serialized_name = builder.source_serialized_name;
      target_serialized_name = builder.target_serialized_name;
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
  public class TranslateOptionsBuilder {
    private List<String> text_serialized_name;
    private String model_id_serialized_name;
    private String source_serialized_name;
    private String target_serialized_name;

    private TranslateOptionsBuilder(TranslateOptions translateOptions) {
      text_serialized_name = translateOptions.text_serialized_name;
      model_id_serialized_name = translateOptions.model_id_serialized_name;
      source_serialized_name = translateOptions.source_serialized_name;
      target_serialized_name = translateOptions.target_serialized_name;
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
      this.text_serialized_name = text;
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
     * Adds an text to text_serialized_name.
     *
     * @param text the new text
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder addText(String text) {
      IBMWatsonValidator.notNull(text, 'text cannot be null');
      if (this.text_serialized_name == null) {
        this.text_serialized_name = new List<String>();
      }
      this.text_serialized_name.add(text);
      return this;
    }

    /**
     * Set the text_serialized_name.
     * Existing text_serialized_name will be replaced.
     *
     * @param text the text
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder text(List<String> text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the model_id_serialized_name.
     *
     * @param modelId the modelId
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder modelId(String modelId) {
      this.model_id_serialized_name = modelId;
      return this;
    }

    /**
     * Set the source_serialized_name.
     *
     * @param source the source
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder source(String source) {
      this.source_serialized_name = source;
      return this;
    }

    /**
     * Set the target_serialized_name.
     *
     * @param target the target
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder target(String target) {
      this.target_serialized_name = target;
      return this;
    }
  }

  /**
   * Translation.
   */
  public class Translation extends IBMWatsonGenericModel {
    private String translation_serialized_name;
    /**
     * Gets the translation_serialized_name.
     *
     * Translation output in UTF-8.
     *
     * @return the translation_serialized_name
     */
    @AuraEnabled
    public String getTranslation() {
      return translation_serialized_name;
    }

    /**
     * Sets the translation_serialized_name.
     *
     * @param translation the new translation
     */
    public void setTranslation(final String translation) {
      this.translation_serialized_name = translation;
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
  public class TranslationModel extends IBMWatsonGenericModel {
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
     * Gets the model_id_serialized_name.
     *
     * A globally unique string that identifies the underlying model that is used for translation.
     *
     * @return the model_id_serialized_name
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * Optional name that can be specified when the model is created.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the source_serialized_name.
     *
     * Translation source language code.
     *
     * @return the source_serialized_name
     */
    @AuraEnabled
    public String getSource() {
      return source_serialized_name;
    }
    /**
     * Gets the target_serialized_name.
     *
     * Translation target language code.
     *
     * @return the target_serialized_name
     */
    @AuraEnabled
    public String getTarget() {
      return target_serialized_name;
    }
    /**
     * Gets the base_model_id_serialized_name.
     *
     * Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be an empty string.
     *
     * @return the base_model_id_serialized_name
     */
    @AuraEnabled
    public String getBaseModelId() {
      return base_model_id_serialized_name;
    }
    /**
     * Gets the domain_serialized_name.
     *
     * The domain of the translation model.
     *
     * @return the domain_serialized_name
     */
    @AuraEnabled
    public String getDomain() {
      return domain_serialized_name;
    }
    /**
     * Gets the customizable_serialized_name.
     *
     * Whether this model can be used as a base for customization. Customized models are not further customizable, and some base models are not customizable.
     *
     * @return the customizable_serialized_name
     */
    @AuraEnabled
    public Boolean getCustomizable() {
      return customizable_serialized_name;
    }
    /**
     * Gets the default_model_serialized_name.
     *
     * Whether or not the model is a default model. A default model is the model for a given language pair that will be used when that language pair is specified in the source and target parameters.
     *
     * @return the default_model_serialized_name
     */
    @AuraEnabled
    public Boolean getDefaultModel() {
      return default_model_serialized_name;
    }
    /**
     * Gets the owner_serialized_name.
     *
     * Either an empty string, indicating the model is not a custom model, or the ID of the service instance that created the model.
     *
     * @return the owner_serialized_name
     */
    @AuraEnabled
    public String getOwner() {
      return owner_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * Availability of a model.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }

    /**
     * Sets the model_id_serialized_name.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
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
     * Sets the source_serialized_name.
     *
     * @param source the new source
     */
    public void setSource(final String source) {
      this.source_serialized_name = source;
    }

    /**
     * Sets the target_serialized_name.
     *
     * @param target the new target
     */
    public void setTarget(final String target) {
      this.target_serialized_name = target;
    }

    /**
     * Sets the base_model_id_serialized_name.
     *
     * @param baseModelId the new baseModelId
     */
    public void setBaseModelId(final String baseModelId) {
      this.base_model_id_serialized_name = baseModelId;
    }

    /**
     * Sets the domain_serialized_name.
     *
     * @param domain the new domain
     */
    public void setDomain(final String domain) {
      this.domain_serialized_name = domain;
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
     * Sets the default_model_serialized_name.
     *
     * @param defaultModel the new defaultModel
     */
    public void setDefaultModel(final Boolean defaultModel) {
      this.default_model_serialized_name = defaultModel;
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

      TranslationModel ret = (TranslationModel) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The response type for listing existing translation models.
   */
  public class TranslationModels extends IBMWatsonGenericModel {
    private List<TranslationModel> models_serialized_name;
    /**
     * Gets the models_serialized_name.
     *
     * An array of available models.
     *
     * @return the models_serialized_name
     */
    @AuraEnabled
    public List<TranslationModel> getModels() {
      return models_serialized_name;
    }

    /**
     * Sets the models_serialized_name.
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

      // calling custom deserializer for models_serialized_name
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
  public class TranslationResult extends IBMWatsonGenericModel {
    private Long word_count_serialized_name;
    private Long character_count_serialized_name;
    private List<Translation> translations_serialized_name;
    /**
     * Gets the word_count_serialized_name.
     *
     * Number of words in the input text.
     *
     * @return the word_count_serialized_name
     */
    @AuraEnabled
    public Long getWordCount() {
      return word_count_serialized_name;
    }
    /**
     * Gets the character_count_serialized_name.
     *
     * Number of characters in the input text.
     *
     * @return the character_count_serialized_name
     */
    @AuraEnabled
    public Long getCharacterCount() {
      return character_count_serialized_name;
    }
    /**
     * Gets the translations_serialized_name.
     *
     * List of translation output in UTF-8, corresponding to the input text entries.
     *
     * @return the translations_serialized_name
     */
    @AuraEnabled
    public List<Translation> getTranslations() {
      return translations_serialized_name;
    }

    /**
     * Sets the word_count_serialized_name.
     *
     * @param wordCount the new wordCount
     */
    public void setWordCount(final long wordCount) {
      this.word_count_serialized_name = wordCount;
    }

    /**
     * Sets the character_count_serialized_name.
     *
     * @param characterCount the new characterCount
     */
    public void setCharacterCount(final long characterCount) {
      this.character_count_serialized_name = characterCount;
    }

    /**
     * Sets the translations_serialized_name.
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

      // calling custom deserializer for translations_serialized_name
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
