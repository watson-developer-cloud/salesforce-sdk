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
    private String forced_glossary_content_type_serialized_name;
    private String parallel_corpus_content_type_serialized_name;
    private String monolingual_corpus_content_type_serialized_name;
    /**
     * Gets the base_model_id_serialized_name.
     *
     * Specifies the domain model that is used as the base for the training. To see current supported domain models, use the GET /v2/models parameter.
     *
     * @return the base_model_id_serialized_name
     */
    public String baseModelId() {
      return base_model_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The model name. Valid characters are letters, numbers, -, and _. No spaces.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the forced_glossary_serialized_name.
     *
     * A TMX file with your customizations. The customizations in the file completely overwrite the domain data translation, including high frequency or high confidence phrase translations. You can upload only one glossary with a file size less than 10 MB per call.
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
    /**
     * Gets the forced_glossary_content_type_serialized_name.
     *
     * The content type of forced_glossary.
     *
     * @return the forced_glossary_content_type_serialized_name
     */
    public String forcedGlossaryContentType() {
      return forced_glossary_content_type_serialized_name;
    }
    /**
     * Gets the parallel_corpus_content_type_serialized_name.
     *
     * The content type of parallel_corpus.
     *
     * @return the parallel_corpus_content_type_serialized_name
     */
    public String parallelCorpusContentType() {
      return parallel_corpus_content_type_serialized_name;
    }
    /**
     * Gets the monolingual_corpus_content_type_serialized_name.
     *
     * The content type of monolingual_corpus.
     *
     * @return the monolingual_corpus_content_type_serialized_name
     */
    public String monolingualCorpusContentType() {
      return monolingual_corpus_content_type_serialized_name;
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
      forced_glossary_content_type_serialized_name = builder.forced_glossary_content_type_serialized_name;
      parallel_corpus_content_type_serialized_name = builder.parallel_corpus_content_type_serialized_name;
      monolingual_corpus_content_type_serialized_name = builder.monolingual_corpus_content_type_serialized_name;
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
    private String forced_glossary_content_type_serialized_name;
    private String parallel_corpus_content_type_serialized_name;
    private String monolingual_corpus_content_type_serialized_name;

    private CreateModelOptionsBuilder(CreateModelOptions create_model_options) {
      base_model_id_serialized_name = create_model_options.base_model_id_serialized_name;
      name_serialized_name = create_model_options.name_serialized_name;
      forced_glossary_serialized_name = create_model_options.forced_glossary_serialized_name;
      forced_glossary_filename_serialized_name = create_model_options.forced_glossary_filename_serialized_name;
      parallel_corpus_serialized_name = create_model_options.parallel_corpus_serialized_name;
      parallel_corpus_filename_serialized_name = create_model_options.parallel_corpus_filename_serialized_name;
      monolingual_corpus_serialized_name = create_model_options.monolingual_corpus_serialized_name;
      monolingual_corpus_filename_serialized_name = create_model_options.monolingual_corpus_filename_serialized_name;
      forced_glossary_content_type_serialized_name = create_model_options.forced_glossary_content_type_serialized_name;
      parallel_corpus_content_type_serialized_name = create_model_options.parallel_corpus_content_type_serialized_name;
      monolingual_corpus_content_type_serialized_name = create_model_options.monolingual_corpus_content_type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param base_model_id_serialized_name the base_model_id_serialized_name
     */
    public CreateModelOptionsBuilder(String base_model_id_serialized_name) {
      this.base_model_id_serialized_name = base_model_id_serialized_name;
    }

    /**
     * Builds a CreateModelOptions.
     *
     * @return the create_model_options
     */
    public CreateModelOptions build() {
      return new CreateModelOptions(this);
    }

    /**
     * Set the base_model_id_serialized_name.
     *
     * @param base_model_id_serialized_name the base_model_id_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder baseModelId(String base_model_id_serialized_name) {
      this.base_model_id_serialized_name = base_model_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the forced_glossary_serialized_name.
     *
     * @param forced_glossary_serialized_name the forced_glossary_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder forcedGlossary(IBMWatsonFile forced_glossary_serialized_name) {
      this.forced_glossary_serialized_name = forced_glossary_serialized_name;
      return this;
    }

    /**
     * Set the forced_glossary_filename_serialized_name.
     *
     * @param forced_glossary_filename_serialized_name the forced_glossary_filename_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder forcedGlossaryFilename(String forced_glossary_filename_serialized_name) {
      this.forced_glossary_filename_serialized_name = forced_glossary_filename_serialized_name;
      return this;
    }

    /**
     * Set the parallel_corpus_serialized_name.
     *
     * @param parallel_corpus_serialized_name the parallel_corpus_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder parallelCorpus(IBMWatsonFile parallel_corpus_serialized_name) {
      this.parallel_corpus_serialized_name = parallel_corpus_serialized_name;
      return this;
    }

    /**
     * Set the parallel_corpus_filename_serialized_name.
     *
     * @param parallel_corpus_filename_serialized_name the parallel_corpus_filename_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder parallelCorpusFilename(String parallel_corpus_filename_serialized_name) {
      this.parallel_corpus_filename_serialized_name = parallel_corpus_filename_serialized_name;
      return this;
    }

    /**
     * Set the monolingual_corpus_serialized_name.
     *
     * @param monolingual_corpus_serialized_name the monolingual_corpus_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder monolingualCorpus(IBMWatsonFile monolingual_corpus_serialized_name) {
      this.monolingual_corpus_serialized_name = monolingual_corpus_serialized_name;
      return this;
    }

    /**
     * Set the monolingual_corpus_filename_serialized_name.
     *
     * @param monolingual_corpus_filename_serialized_name the monolingual_corpus_filename_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder monolingualCorpusFilename(String monolingual_corpus_filename_serialized_name) {
      this.monolingual_corpus_filename_serialized_name = monolingual_corpus_filename_serialized_name;
      return this;
    }

    /**
     * Set the forced_glossary_content_type_serialized_name.
     *
     * @param forced_glossary_content_type_serialized_name the forced_glossary_content_type_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder forcedGlossaryContentType(String forced_glossary_content_type_serialized_name) {
      this.forced_glossary_content_type_serialized_name = forced_glossary_content_type_serialized_name;
      return this;
    }

    /**
     * Set the parallel_corpus_content_type_serialized_name.
     *
     * @param parallel_corpus_content_type_serialized_name the parallel_corpus_content_type_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder parallelCorpusContentType(String parallel_corpus_content_type_serialized_name) {
      this.parallel_corpus_content_type_serialized_name = parallel_corpus_content_type_serialized_name;
      return this;
    }

    /**
     * Set the monolingual_corpus_content_type_serialized_name.
     *
     * @param monolingual_corpus_content_type_serialized_name the monolingual_corpus_content_type_serialized_name
     * @return the CreateModelOptions builder
     */
    public CreateModelOptionsBuilder monolingualCorpusContentType(String monolingual_corpus_content_type_serialized_name) {
      this.monolingual_corpus_content_type_serialized_name = monolingual_corpus_content_type_serialized_name;
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
     * The model identifier.
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

    private DeleteModelOptionsBuilder(DeleteModelOptions delete_model_options) {
      model_id_serialized_name = delete_model_options.model_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param model_id_serialized_name the model_id_serialized_name
     */
    public DeleteModelOptionsBuilder(String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
    }

    /**
     * Builds a DeleteModelOptions.
     *
     * @return the delete_model_options
     */
    public DeleteModelOptions build() {
      return new DeleteModelOptions(this);
    }

    /**
     * Set the model_id_serialized_name.
     *
     * @param model_id_serialized_name the model_id_serialized_name
     * @return the DeleteModelOptions builder
     */
    public DeleteModelOptionsBuilder modelId(String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
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
     * Model ID to use.
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

    private GetModelOptionsBuilder(GetModelOptions get_model_options) {
      model_id_serialized_name = get_model_options.model_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param model_id_serialized_name the model_id_serialized_name
     */
    public GetModelOptionsBuilder(String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
    }

    /**
     * Builds a GetModelOptions.
     *
     * @return the get_model_options
     */
    public GetModelOptions build() {
      return new GetModelOptions(this);
    }

    /**
     * Set the model_id_serialized_name.
     *
     * @param model_id_serialized_name the model_id_serialized_name
     * @return the GetModelOptions builder
     */
    public GetModelOptionsBuilder modelId(String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
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
     * The code for an identifiable language.
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
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
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
     * @param languages_serialized_name the new languages_serialized_name
     */
    public void setLanguages(final List<IdentifiableLanguage> languages_serialized_name) {
      this.languages_serialized_name = languages_serialized_name;
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
     * The code for an identified language.
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
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence_serialized_name the new confidence_serialized_name
     */
    public void setConfidence(final Double confidence_serialized_name) {
      this.confidence_serialized_name = confidence_serialized_name;
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
     * @param languages_serialized_name the new languages_serialized_name
     */
    public void setLanguages(final List<IdentifiedLanguage> languages_serialized_name) {
      this.languages_serialized_name = languages_serialized_name;
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

    private IdentifyOptionsBuilder(IdentifyOptions identify_options) {
      text_serialized_name = identify_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public IdentifyOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text_serialized_name the text_serialized_name
     */
    public IdentifyOptionsBuilder(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a IdentifyOptions.
     *
     * @return the identify_options
     */
    public IdentifyOptions build() {
      return new IdentifyOptions(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the IdentifyOptions builder
     */
    public IdentifyOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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

    private ListIdentifiableLanguagesOptionsBuilder(ListIdentifiableLanguagesOptions list_identifiable_languages_options) {
    }

    /**
     * Instantiates a new builder.
     */
    public ListIdentifiableLanguagesOptionsBuilder() {
    }

    /**
     * Builds a ListIdentifiableLanguagesOptions.
     *
     * @return the list_identifiable_languages_options
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
     * Filter models by source language.
     *
     * @return the source_serialized_name
     */
    public String source() {
      return source_serialized_name;
    }
    /**
     * Gets the target_serialized_name.
     *
     * Filter models by target language.
     *
     * @return the target_serialized_name
     */
    public String target() {
      return target_serialized_name;
    }
    /**
     * Gets the default_serialized_name.
     *
     * Valid values are leaving it unset, `true`, and `false`. When `true`, it filters models to return the default model or models. When `false`, it returns the non-default model or models. If not set, it returns all models, default and non-default.
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

    private ListModelsOptionsBuilder(ListModelsOptions list_models_options) {
      source_serialized_name = list_models_options.source_serialized_name;
      target_serialized_name = list_models_options.target_serialized_name;
      default_serialized_name = list_models_options.default_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListModelsOptionsBuilder() {
    }

    /**
     * Builds a ListModelsOptions.
     *
     * @return the list_models_options
     */
    public ListModelsOptions build() {
      return new ListModelsOptions(this);
    }

    /**
     * Set the source_serialized_name.
     *
     * @param source_serialized_name the source_serialized_name
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder source(String source_serialized_name) {
      this.source_serialized_name = source_serialized_name;
      return this;
    }

    /**
     * Set the target_serialized_name.
     *
     * @param target_serialized_name the target_serialized_name
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder target(String target_serialized_name) {
      this.target_serialized_name = target_serialized_name;
      return this;
    }

    /**
     * Set the default_serialized_name.
     *
     * @param default_serialized_name the default_serialized_name
     * @return the ListModelsOptions builder
     */
    public ListModelsOptionsBuilder defaultField(Boolean default_serialized_name) {
      this.default_serialized_name = default_serialized_name;
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
     * Input text in UTF-8 encoding. It is a list so that multiple paragraphs can be submitted. Also accept a single string, instead of an array, as valid input.
     *
     * @return the text_serialized_name
     */
    public List<String> text() {
      return text_serialized_name;
    }
    /**
     * Gets the model_id_serialized_name.
     *
     * The unique model_id of the translation model being used to translate text. The model_id inherently specifies source language, target language, and domain. If the model_id is specified, there is no need for the source and target parameters and the values are ignored.
     *
     * @return the model_id_serialized_name
     */
    public String modelId() {
      return model_id_serialized_name;
    }
    /**
     * Gets the source_serialized_name.
     *
     * Used in combination with target as an alternative way to select the model for translation. When target and source are set, and model_id is not set, the system chooses a default model with the right language pair to translate (usually the model based on the news domain).
     *
     * @return the source_serialized_name
     */
    public String source() {
      return source_serialized_name;
    }
    /**
     * Gets the target_serialized_name.
     *
     * Used in combination with source as an alternative way to select the model for translation. When target and source are set, and model_id is not set, the system chooses a default model with the right language pair to translate (usually the model based on the news domain).
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

    private TranslateOptionsBuilder(TranslateOptions translate_options) {
      text_serialized_name = translate_options.text_serialized_name;
      model_id_serialized_name = translate_options.model_id_serialized_name;
      source_serialized_name = translate_options.source_serialized_name;
      target_serialized_name = translate_options.target_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public TranslateOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text_serialized_name the text_serialized_name
     */
    public TranslateOptionsBuilder(List<String> text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a TranslateOptions.
     *
     * @return the translate_options
     */
    public TranslateOptions build() {
      return new TranslateOptions(this);
    }

    /**
     * Adds an text_serialized_name to text_serialized_name.
     *
     * @param text_serialized_name the new text_serialized_name
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder addText(String text_serialized_name) {
      IBMWatsonValidator.notNull(text_serialized_name, 'text_serialized_name cannot be null');
      if (this.text_serialized_name == null) {
        this.text_serialized_name = new List<String>();
      }
      this.text_serialized_name.add(text_serialized_name);
      return this;
    }

    /**
     * Set the text_serialized_name.
     * Existing text_serialized_name will be replaced.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder text(List<String> text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }

    /**
     * Set the model_id_serialized_name.
     *
     * @param model_id_serialized_name the model_id_serialized_name
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder modelId(String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
      return this;
    }

    /**
     * Set the source_serialized_name.
     *
     * @param source_serialized_name the source_serialized_name
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder source(String source_serialized_name) {
      this.source_serialized_name = source_serialized_name;
      return this;
    }

    /**
     * Set the target_serialized_name.
     *
     * @param target_serialized_name the target_serialized_name
     * @return the TranslateOptions builder
     */
    public TranslateOptionsBuilder target(String target_serialized_name) {
      this.target_serialized_name = target_serialized_name;
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
     * @param translation_serialized_name the new translation_serialized_name
     */
    public void setTranslation(final String translation_serialized_name) {
      this.translation_serialized_name = translation_serialized_name;
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
     * A globally unique string that identifies the underlying model that is used for translation. This string contains all the information about source language, target language, domain, and various other related configurations.
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
     * If a model is trained by a user, there might be an optional “name” parameter attached during training to help the user identify the model.
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
     * Source language in two letter language code. Use the five letter code when clarifying between multiple supported languages. When model_id is used directly, it will override the source-target language combination. Also, when a two letter language code is used, but no suitable default is found, it returns an error.
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
     * Target language in two letter language code.
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
     * If this model is a custom model, this returns the base model that it is trained on. For a base model, this response value is empty.
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
     * Whether this model can be used as a base for customization. Customized models are not further customizable, and we don't allow the customization of certain base models.
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
     * Whether this model is considered a default model and is used when the source and target languages are specified without the model_id.
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
     * Returns the Bluemix ID of the instance that created the model, or an empty string if it is a model that is trained by IBM.
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
     * @param model_id_serialized_name the new model_id_serialized_name
     */
    public void setModelId(final String model_id_serialized_name) {
      this.model_id_serialized_name = model_id_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the source_serialized_name.
     *
     * @param source_serialized_name the new source_serialized_name
     */
    public void setSource(final String source_serialized_name) {
      this.source_serialized_name = source_serialized_name;
    }

    /**
     * Sets the target_serialized_name.
     *
     * @param target_serialized_name the new target_serialized_name
     */
    public void setTarget(final String target_serialized_name) {
      this.target_serialized_name = target_serialized_name;
    }

    /**
     * Sets the base_model_id_serialized_name.
     *
     * @param base_model_id_serialized_name the new base_model_id_serialized_name
     */
    public void setBaseModelId(final String base_model_id_serialized_name) {
      this.base_model_id_serialized_name = base_model_id_serialized_name;
    }

    /**
     * Sets the domain_serialized_name.
     *
     * @param domain_serialized_name the new domain_serialized_name
     */
    public void setDomain(final String domain_serialized_name) {
      this.domain_serialized_name = domain_serialized_name;
    }

    /**
     * Sets the customizable_serialized_name.
     *
     * @param customizable_serialized_name the new customizable_serialized_name
     */
    public void setCustomizable(final Boolean customizable_serialized_name) {
      this.customizable_serialized_name = customizable_serialized_name;
    }

    /**
     * Sets the default_model_serialized_name.
     *
     * @param default_model_serialized_name the new default_model_serialized_name
     */
    public void setDefaultModel(final Boolean default_model_serialized_name) {
      this.default_model_serialized_name = default_model_serialized_name;
    }

    /**
     * Sets the owner_serialized_name.
     *
     * @param owner_serialized_name the new owner_serialized_name
     */
    public void setOwner(final String owner_serialized_name) {
      this.owner_serialized_name = owner_serialized_name;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status_serialized_name the new status_serialized_name
     */
    public void setStatus(final String status_serialized_name) {
      this.status_serialized_name = status_serialized_name;
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
     * @param models_serialized_name the new models_serialized_name
     */
    public void setModels(final List<TranslationModel> models_serialized_name) {
      this.models_serialized_name = models_serialized_name;
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
     * Number of words of the complete input text.
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
     * Number of characters of the complete input text.
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
     * List of translation output in UTF-8, corresponding to the list of input text.
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
     * @param word_count_serialized_name the new word_count_serialized_name
     */
    public void setWordCount(final long word_count_serialized_name) {
      this.word_count_serialized_name = word_count_serialized_name;
    }

    /**
     * Sets the character_count_serialized_name.
     *
     * @param character_count_serialized_name the new character_count_serialized_name
     */
    public void setCharacterCount(final long character_count_serialized_name) {
      this.character_count_serialized_name = character_count_serialized_name;
    }

    /**
     * Sets the translations_serialized_name.
     *
     * @param translations_serialized_name the new translations_serialized_name
     */
    public void setTranslations(final List<Translation> translations_serialized_name) {
      this.translations_serialized_name = translations_serialized_name;
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
