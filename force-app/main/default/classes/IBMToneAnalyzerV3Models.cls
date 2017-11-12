public class IBMToneAnalyzerV3Models {
  /**
   * DocumentAnalysis.
   */
  public class DocumentAnalysis extends IBMWatsonGenericModel {
    private List<ToneScore> tones_serialized_name;
    private List<ToneCategory> tone_categories_serialized_name;
    private String warning_serialized_name;
    /**
     * Gets the tones_serialized_name.
     *
     * **`2017-09-21`:** An array of `ToneScore` objects that provides the results of the analysis for each qualifying tone of the document. The array includes results for any tone whose score is at least 0.5. The array is empty if no tone has a score that meets this threshold. **`2016-05-19`:** Not returned.
     *
     * @return the tones_serialized_name
     */
    @AuraEnabled
    public List<ToneScore> getTones() {
      return tones_serialized_name;
    }
    /**
     * Gets the tone_categories_serialized_name.
     *
     * **`2017-09-21`:** Not returned. **`2016-05-19`:** An array of `ToneCategory` objects that provides the results of the tone analysis for the full document of the input content. The service returns results only for the tones specified with the `tones` parameter of the request.
     *
     * @return the tone_categories_serialized_name
     */
    @AuraEnabled
    public List<ToneCategory> getToneCategories() {
      return tone_categories_serialized_name;
    }
    /**
     * Gets the warning_serialized_name.
     *
     * **`2017-09-21`:** A warning message if the overall content exceeds 128 KB or contains more than 1000 sentences. The service analyzes only the first 1000 sentences for document-level analysis and the first 100 sentences for sentence-level analysis. **`2016-05-19`:** Not returned.
     *
     * @return the warning_serialized_name
     */
    @AuraEnabled
    public String getWarning() {
      return warning_serialized_name;
    }

    /**
     * Sets the tones_serialized_name.
     *
     * @param tones_serialized_name the new tones_serialized_name
     */
    public void setTones(final List<ToneScore> tones_serialized_name) {
      this.tones_serialized_name = tones_serialized_name;
    }

    /**
     * Sets the tone_categories_serialized_name.
     *
     * @param tone_categories_serialized_name the new tone_categories_serialized_name
     */
    public void setToneCategories(final List<ToneCategory> tone_categories_serialized_name) {
      this.tone_categories_serialized_name = tone_categories_serialized_name;
    }

    /**
     * Sets the warning_serialized_name.
     *
     * @param warning_serialized_name the new warning_serialized_name
     */
    public void setWarning(final String warning_serialized_name) {
      this.warning_serialized_name = warning_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocumentAnalysis ret = (DocumentAnalysis) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for tones_serialized_name
      List<ToneScore> newTones = new List<ToneScore>();
      List<ToneScore> deserializedTones = ret.getTones();
      if (deserializedTones != null) {
        for (Integer i = 0; i < deserializedTones.size(); i++) {
          ToneScore currentItem = ret.getTones().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tones_serialized_name');
          ToneScore newItem = (ToneScore) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ToneScore.class);
          newTones.add(newItem);
        }
        ret.setTones(newTones);
      }

      // calling custom deserializer for tone_categories_serialized_name
      List<ToneCategory> newToneCategories = new List<ToneCategory>();
      List<ToneCategory> deserializedToneCategories = ret.getToneCategories();
      if (deserializedToneCategories != null) {
        for (Integer i = 0; i < deserializedToneCategories.size(); i++) {
          ToneCategory currentItem = ret.getToneCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tone_categories_serialized_name');
          ToneCategory newItem = (ToneCategory) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ToneCategory.class);
          newToneCategories.add(newItem);
        }
        ret.setToneCategories(newToneCategories);
      }

      return ret;
    }
  }

  /**
   * SentenceAnalysis.
   */
  public class SentenceAnalysis extends IBMWatsonGenericModel {
    private Long sentence_id_serialized_name;
    private String text_serialized_name;
    private List<ToneScore> tones_serialized_name;
    private List<ToneCategory> tone_categories_serialized_name;
    private Long input_from_serialized_name;
    private Long input_to_serialized_name;
    /**
     * Gets the sentence_id_serialized_name.
     *
     * The unique identifier of a sentence of the input content. The first sentence has ID 0, and the ID of each subsequent sentence is incremented by one.
     *
     * @return the sentence_id_serialized_name
     */
    @AuraEnabled
    public Long getSentenceId() {
      return sentence_id_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of the input sentence.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the tones_serialized_name.
     *
     * **`2017-09-21`:** An array of `ToneScore` objects that provides the results of the analysis for each qualifying tone of the sentence. The array includes results for any tone whose score is at least 0.5. The array is empty if no tone has a score that meets this threshold. **`2016-05-19`:** Not returned.
     *
     * @return the tones_serialized_name
     */
    @AuraEnabled
    public List<ToneScore> getTones() {
      return tones_serialized_name;
    }
    /**
     * Gets the tone_categories_serialized_name.
     *
     * **`2017-09-21`:** Not returned. **`2016-05-19`:** An array of `ToneCategory` objects that provides the results of the tone analysis for the sentence. The service returns results only for the tones specified with the `tones` parameter of the request.
     *
     * @return the tone_categories_serialized_name
     */
    @AuraEnabled
    public List<ToneCategory> getToneCategories() {
      return tone_categories_serialized_name;
    }
    /**
     * Gets the input_from_serialized_name.
     *
     * **`2017-09-21`:** Not returned. **`2016-05-19`:** The offset of the first character of the sentence in the overall input content.
     *
     * @return the input_from_serialized_name
     */
    @AuraEnabled
    public Long getInputFrom() {
      return input_from_serialized_name;
    }
    /**
     * Gets the input_to_serialized_name.
     *
     * **`2017-09-21`:** Not returned. **`2016-05-19`:** The offset of the last character of the sentence in the overall input content.
     *
     * @return the input_to_serialized_name
     */
    @AuraEnabled
    public Long getInputTo() {
      return input_to_serialized_name;
    }

    /**
     * Sets the sentence_id_serialized_name.
     *
     * @param sentence_id_serialized_name the new sentence_id_serialized_name
     */
    public void setSentenceId(final long sentence_id_serialized_name) {
      this.sentence_id_serialized_name = sentence_id_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the tones_serialized_name.
     *
     * @param tones_serialized_name the new tones_serialized_name
     */
    public void setTones(final List<ToneScore> tones_serialized_name) {
      this.tones_serialized_name = tones_serialized_name;
    }

    /**
     * Sets the tone_categories_serialized_name.
     *
     * @param tone_categories_serialized_name the new tone_categories_serialized_name
     */
    public void setToneCategories(final List<ToneCategory> tone_categories_serialized_name) {
      this.tone_categories_serialized_name = tone_categories_serialized_name;
    }

    /**
     * Sets the input_from_serialized_name.
     *
     * @param input_from_serialized_name the new input_from_serialized_name
     */
    public void setInputFrom(final long input_from_serialized_name) {
      this.input_from_serialized_name = input_from_serialized_name;
    }

    /**
     * Sets the input_to_serialized_name.
     *
     * @param input_to_serialized_name the new input_to_serialized_name
     */
    public void setInputTo(final long input_to_serialized_name) {
      this.input_to_serialized_name = input_to_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SentenceAnalysis ret = (SentenceAnalysis) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for tones_serialized_name
      List<ToneScore> newTones = new List<ToneScore>();
      List<ToneScore> deserializedTones = ret.getTones();
      if (deserializedTones != null) {
        for (Integer i = 0; i < deserializedTones.size(); i++) {
          ToneScore currentItem = ret.getTones().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tones_serialized_name');
          ToneScore newItem = (ToneScore) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ToneScore.class);
          newTones.add(newItem);
        }
        ret.setTones(newTones);
      }

      // calling custom deserializer for tone_categories_serialized_name
      List<ToneCategory> newToneCategories = new List<ToneCategory>();
      List<ToneCategory> deserializedToneCategories = ret.getToneCategories();
      if (deserializedToneCategories != null) {
        for (Integer i = 0; i < deserializedToneCategories.size(); i++) {
          ToneCategory currentItem = ret.getToneCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tone_categories_serialized_name');
          ToneCategory newItem = (ToneCategory) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ToneCategory.class);
          newToneCategories.add(newItem);
        }
        ret.setToneCategories(newToneCategories);
      }

      return ret;
    }
  }

  /**
   * ToneAnalysis.
   */
  public class ToneAnalysis extends IBMWatsonGenericModel {
    private DocumentAnalysis document_tone_serialized_name;
    private List<SentenceAnalysis> sentences_tone_serialized_name;
    /**
     * Gets the document_tone_serialized_name.
     *
     * An object of type `DocumentAnalysis` that provides the results of the analysis for the full input document.
     *
     * @return the document_tone_serialized_name
     */
    @AuraEnabled
    public DocumentAnalysis getDocumentTone() {
      return document_tone_serialized_name;
    }
    /**
     * Gets the sentences_tone_serialized_name.
     *
     * An array of `SentenceAnalysis` objects that provides the results of the analysis for the individual sentences of the input content. The service returns results only for the first 100 sentences of the input. The field is omitted if the `sentences` parameter of the request is set to `false`.
     *
     * @return the sentences_tone_serialized_name
     */
    @AuraEnabled
    public List<SentenceAnalysis> getSentencesTone() {
      return sentences_tone_serialized_name;
    }

    /**
     * Sets the document_tone_serialized_name.
     *
     * @param document_tone_serialized_name the new document_tone_serialized_name
     */
    public void setDocumentTone(final DocumentAnalysis document_tone_serialized_name) {
      this.document_tone_serialized_name = document_tone_serialized_name;
    }

    /**
     * Sets the sentences_tone_serialized_name.
     *
     * @param sentences_tone_serialized_name the new sentences_tone_serialized_name
     */
    public void setSentencesTone(final List<SentenceAnalysis> sentences_tone_serialized_name) {
      this.sentences_tone_serialized_name = sentences_tone_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ToneAnalysis ret = (ToneAnalysis) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for document_tone_serialized_name
      DocumentAnalysis newDocumentTone = (DocumentAnalysis) new DocumentAnalysis().deserialize(JSON.serialize(ret.getDocumentTone()), (Map<String, Object>) jsonMap.get('document_tone_serialized_name'), DocumentAnalysis.class);
      ret.setDocumentTone(newDocumentTone);

      // calling custom deserializer for sentences_tone_serialized_name
      List<SentenceAnalysis> newSentencesTone = new List<SentenceAnalysis>();
      List<SentenceAnalysis> deserializedSentencesTone = ret.getSentencesTone();
      if (deserializedSentencesTone != null) {
        for (Integer i = 0; i < deserializedSentencesTone.size(); i++) {
          SentenceAnalysis currentItem = ret.getSentencesTone().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('sentences_tone_serialized_name');
          SentenceAnalysis newItem = (SentenceAnalysis) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SentenceAnalysis.class);
          newSentencesTone.add(newItem);
        }
        ret.setSentencesTone(newSentencesTone);
      }

      return ret;
    }
  }

  /**
   * ToneCategory.
   */
  public class ToneCategory extends IBMWatsonGenericModel {
    private List<ToneScore> tones_serialized_name;
    private String category_id_serialized_name;
    private String category_name_serialized_name;
    /**
     * Gets the tones_serialized_name.
     *
     * An array of `ToneScore` objects that provides the results for the tones of the category.
     *
     * @return the tones_serialized_name
     */
    @AuraEnabled
    public List<ToneScore> getTones() {
      return tones_serialized_name;
    }
    /**
     * Gets the category_id_serialized_name.
     *
     * The unique, non-localized identifier of the category for the results. The service can return results for the following category IDs: `emotion_tone`, `language_tone`, and `social_tone`.
     *
     * @return the category_id_serialized_name
     */
    @AuraEnabled
    public String getCategoryId() {
      return category_id_serialized_name;
    }
    /**
     * Gets the category_name_serialized_name.
     *
     * The user-visible, localized name of the category.
     *
     * @return the category_name_serialized_name
     */
    @AuraEnabled
    public String getCategoryName() {
      return category_name_serialized_name;
    }

    /**
     * Sets the tones_serialized_name.
     *
     * @param tones_serialized_name the new tones_serialized_name
     */
    public void setTones(final List<ToneScore> tones_serialized_name) {
      this.tones_serialized_name = tones_serialized_name;
    }

    /**
     * Sets the category_id_serialized_name.
     *
     * @param category_id_serialized_name the new category_id_serialized_name
     */
    public void setCategoryId(final String category_id_serialized_name) {
      this.category_id_serialized_name = category_id_serialized_name;
    }

    /**
     * Sets the category_name_serialized_name.
     *
     * @param category_name_serialized_name the new category_name_serialized_name
     */
    public void setCategoryName(final String category_name_serialized_name) {
      this.category_name_serialized_name = category_name_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ToneCategory ret = (ToneCategory) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for tones_serialized_name
      List<ToneScore> newTones = new List<ToneScore>();
      List<ToneScore> deserializedTones = ret.getTones();
      if (deserializedTones != null) {
        for (Integer i = 0; i < deserializedTones.size(); i++) {
          ToneScore currentItem = ret.getTones().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tones_serialized_name');
          ToneScore newItem = (ToneScore) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ToneScore.class);
          newTones.add(newItem);
        }
        ret.setTones(newTones);
      }

      return ret;
    }
  }

  /**
   * The toneChat options.
   */
  public class ToneChatOptions {
    private List<Utterance> utterances_serialized_name;
    private String accept_language_serialized_name;
    /**
     * Gets the utterances_serialized_name.
     *
     * An array of `Utterance` objects that provides the input content that the service is to analyze.
     *
     * @return the utterances_serialized_name
     */
    public List<Utterance> utterances() {
      return utterances_serialized_name;
    }
    /**
     * Gets the accept_language_serialized_name.
     *
     * The desired language of the response. For two-character arguments, regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`.
     *
     * @return the accept_language_serialized_name
     */
    public String acceptLanguage() {
      return accept_language_serialized_name;
    }
    private ToneChatOptions(ToneChatOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.utterances_serialized_name, 'utterances_serialized_name cannot be null');
      utterances_serialized_name = builder.utterances_serialized_name;
      accept_language_serialized_name = builder.accept_language_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ToneChatOptions builder
     */
    public ToneChatOptionsBuilder newBuilder() {
      return new ToneChatOptionsBuilder(this);
    }

  }

  /**
   * ToneChatOptions Builder.
   */
  public class ToneChatOptionsBuilder {
    private List<Utterance> utterances_serialized_name;
    private String accept_language_serialized_name;

    private ToneChatOptionsBuilder(ToneChatOptions tone_chat_options) {
      utterances_serialized_name = tone_chat_options.utterances_serialized_name;
      accept_language_serialized_name = tone_chat_options.accept_language_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ToneChatOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param utterances_serialized_name the utterances_serialized_name
     */
    public ToneChatOptionsBuilder(List<Utterance> utterances_serialized_name) {
      this.utterances_serialized_name = utterances_serialized_name;
    }

    /**
     * Builds a ToneChatOptions.
     *
     * @return the tone_chat_options
     */
    public ToneChatOptions build() {
      return new ToneChatOptions(this);
    }

    /**
     * Adds an utterances_serialized_name to utterances_serialized_name.
     *
     * @param utterances_serialized_name the new utterances_serialized_name
     * @return the ToneChatOptions builder
     */
    public ToneChatOptionsBuilder addUtterances(Utterance utterances_serialized_name) {
      IBMWatsonValidator.notNull(utterances_serialized_name, 'utterances_serialized_name cannot be null');
      if (this.utterances_serialized_name == null) {
        this.utterances_serialized_name = new List<Utterance>();
      }
      this.utterances_serialized_name.add(utterances_serialized_name);
      return this;
    }

    /**
     * Set the utterances_serialized_name.
     * Existing utterances_serialized_name will be replaced.
     *
     * @param utterances_serialized_name the utterances_serialized_name
     * @return the ToneChatOptions builder
     */
    public ToneChatOptionsBuilder utterances(List<Utterance> utterances_serialized_name) {
      this.utterances_serialized_name = utterances_serialized_name;
      return this;
    }

    /**
     * Set the accept_language_serialized_name.
     *
     * @param accept_language_serialized_name the accept_language_serialized_name
     * @return the ToneChatOptions builder
     */
    public ToneChatOptionsBuilder acceptLanguage(String accept_language_serialized_name) {
      this.accept_language_serialized_name = accept_language_serialized_name;
      return this;
    }
  }

  /**
   * ToneChatScore.
   */
  public class ToneChatScore extends IBMWatsonGenericModel {
    private Double score_serialized_name;
    private String tone_id_serialized_name;
    private String tone_name_serialized_name;
    /**
     * Gets the score_serialized_name.
     *
     * The score for the tone in the range of 0.5 to 1. A score greater than 0.75 indicates a high likelihood that the tone is perceived in the utterance.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
    /**
     * Gets the tone_id_serialized_name.
     *
     * The unique, non-localized identifier of the tone for the results. The service can return results for the following tone IDs: `sad`, `frustrated`, `satisfied`, `excited`, `polite`, `impolite`, and `sympathetic`. The service returns results only for tones whose scores meet a minimum threshold of 0.5.
     *
     * @return the tone_id_serialized_name
     */
    @AuraEnabled
    public String getToneId() {
      return tone_id_serialized_name;
    }
    /**
     * Gets the tone_name_serialized_name.
     *
     * The user-visible, localized name of the tone.
     *
     * @return the tone_name_serialized_name
     */
    @AuraEnabled
    public String getToneName() {
      return tone_name_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
    }

    /**
     * Sets the tone_id_serialized_name.
     *
     * @param tone_id_serialized_name the new tone_id_serialized_name
     */
    public void setToneId(final String tone_id_serialized_name) {
      this.tone_id_serialized_name = tone_id_serialized_name;
    }

    /**
     * Sets the tone_name_serialized_name.
     *
     * @param tone_name_serialized_name the new tone_name_serialized_name
     */
    public void setToneName(final String tone_name_serialized_name) {
      this.tone_name_serialized_name = tone_name_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ToneChatScore ret = (ToneChatScore) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * ToneInput.
   */
  public class ToneInput {
    private String text_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The input content that the service is to analyze.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private ToneInput(ToneInputBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ToneInput builder
     */
    public ToneInputBuilder newBuilder() {
      return new ToneInputBuilder(this);
    }

  }

  /**
   * ToneInput Builder.
   */
  public class ToneInputBuilder {
    private String text_serialized_name;

    private ToneInputBuilder(ToneInput tone_input) {
      text_serialized_name = tone_input.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ToneInputBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text_serialized_name the text_serialized_name
     */
    public ToneInputBuilder(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a ToneInput.
     *
     * @return the tone_input
     */
    public ToneInput build() {
      return new ToneInput(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the ToneInput builder
     */
    public ToneInputBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The tone options.
   */
  public class ToneOptions {
    private ToneInput tone_input_serialized_name;
    private String body_serialized_name;
    private String content_type_serialized_name;
    private Boolean sentences_serialized_name;
    private List<String> tones_serialized_name;
    private String content_language_serialized_name;
    private String accept_language_serialized_name;
    /**
     * Gets the tone_input_serialized_name.
     *
     * JSON, plain text, or HTML input that contains the content to be analyzed. For JSON input, provide an object of type `ToneInput`.
     *
     * @return the tone_input_serialized_name
     */
    public ToneInput toneInput() {
      return tone_input_serialized_name;
    }
    /**
     * Gets the body_serialized_name.
     *
     * JSON, plain text, or HTML input that contains the content to be analyzed. For JSON input, provide an object of type `ToneInput`.
     *
     * @return the body_serialized_name
     */
    public String body() {
      return body_serialized_name;
    }
    /**
     * Gets the content_type_serialized_name.
     *
     * The type of the input: application/json, text/plain, or text/html. A character encoding can be specified by including a `charset` parameter. For example, 'text/plain;charset=utf-8'.
     *
     * @return the content_type_serialized_name
     */
    public String contentType() {
      return content_type_serialized_name;
    }
    /**
     * Gets the sentences_serialized_name.
     *
     * Indicates whether the service is to return an analysis of each individual sentence in addition to its analysis of the full document. If `true` (the default), the service returns results for each sentence.
     *
     * @return the sentences_serialized_name
     */
    public Boolean sentences() {
      return sentences_serialized_name;
    }
    /**
     * Gets the tones_serialized_name.
     *
     * **`2017-09-21`:** Deprecated. The service continues to accept the parameter for backward-compatibility, but the parameter no longer affects the response.   **`2016-05-19`:** A comma-separated list of tones for which the service is to return its analysis of the input; the indicated tones apply both to the full document and to individual sentences of the document. You can specify one or more of the valid values. Omit the parameter to request results for all three tones.
     *
     * @return the tones_serialized_name
     */
    public List<String> tones() {
      return tones_serialized_name;
    }
    /**
     * Gets the content_language_serialized_name.
     *
     * The language of the input text for the request: English or French. Regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. The input content must match the specified language. Do not submit content that contains both languages. You can specify any combination of languages for `Content-Language` and `Accept-Language`. * **`2017-09-21`:** Accepts `en` or `fr`. * **`2016-05-19`:** Accepts only `en`.
     *
     * @return the content_language_serialized_name
     */
    public String contentLanguage() {
      return content_language_serialized_name;
    }
    /**
     * Gets the accept_language_serialized_name.
     *
     * The desired language of the response. For two-character arguments, regional variants are treated as their parent language; for example, `en-US` is interpreted as `en`. You can specify any combination of languages for `Content-Language` and `Accept-Language`.
     *
     * @return the accept_language_serialized_name
     */
    public String acceptLanguage() {
      return accept_language_serialized_name;
    }
    private ToneOptions(ToneOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.content_type_serialized_name != null, 'content_type_serialized_name cannot be null');
      tone_input_serialized_name = builder.tone_input_serialized_name;
      body_serialized_name = builder.body_serialized_name;
      content_type_serialized_name = builder.content_type_serialized_name;
      sentences_serialized_name = builder.sentences_serialized_name;
      tones_serialized_name = builder.tones_serialized_name;
      content_language_serialized_name = builder.content_language_serialized_name;
      accept_language_serialized_name = builder.accept_language_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ToneOptions builder
     */
    public ToneOptionsBuilder newBuilder() {
      return new ToneOptionsBuilder(this);
    }

  }

  /**
   * ToneOptions Builder.
   */
  public class ToneOptionsBuilder {
    private ToneInput tone_input_serialized_name;
    private String body_serialized_name;
    private String content_type_serialized_name;
    private Boolean sentences_serialized_name;
    private List<String> tones_serialized_name;
    private String content_language_serialized_name;
    private String accept_language_serialized_name;

    private ToneOptionsBuilder(ToneOptions tone_options) {
      tone_input_serialized_name = tone_options.tone_input_serialized_name;
      body_serialized_name = tone_options.body_serialized_name;
      content_type_serialized_name = tone_options.content_type_serialized_name;
      sentences_serialized_name = tone_options.sentences_serialized_name;
      tones_serialized_name = tone_options.tones_serialized_name;
      content_language_serialized_name = tone_options.content_language_serialized_name;
      accept_language_serialized_name = tone_options.accept_language_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ToneOptionsBuilder() {
    }

    /**
     * Builds a ToneOptions.
     *
     * @return the tone_options
     */
    public ToneOptions build() {
      return new ToneOptions(this);
    }

    /**
     * Adds an tones_serialized_name to tones_serialized_name.
     *
     * @param tones_serialized_name the new tones_serialized_name
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder addTones(String tones_serialized_name) {
      IBMWatsonValidator.notNull(tones_serialized_name, 'tones_serialized_name cannot be null');
      if (this.tones_serialized_name == null) {
        this.tones_serialized_name = new List<String>();
      }
      this.tones_serialized_name.add(tones_serialized_name);
      return this;
    }

    /**
     * Set the sentences_serialized_name.
     *
     * @param sentences_serialized_name the sentences_serialized_name
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder sentences(Boolean sentences_serialized_name) {
      this.sentences_serialized_name = sentences_serialized_name;
      return this;
    }

    /**
     * Set the tones_serialized_name.
     * Existing tones_serialized_name will be replaced.
     *
     * @param tones_serialized_name the tones_serialized_name
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder tones(List<String> tones_serialized_name) {
      this.tones_serialized_name = tones_serialized_name;
      return this;
    }

    /**
     * Set the content_language_serialized_name.
     *
     * @param content_language_serialized_name the content_language_serialized_name
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder contentLanguage(String content_language_serialized_name) {
      this.content_language_serialized_name = content_language_serialized_name;
      return this;
    }

    /**
     * Set the accept_language_serialized_name.
     *
     * @param accept_language_serialized_name the accept_language_serialized_name
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder acceptLanguage(String accept_language_serialized_name) {
      this.accept_language_serialized_name = accept_language_serialized_name;
      return this;
    }

    /**
     * Set the tone_input_serialized_name.
     *
     * @param tone_input_serialized_name the tone_input_serialized_name
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder tone_input_serialized_name(ToneInput tone_input_serialized_name) {
      this.tone_input_serialized_name = tone_input_serialized_name;
      this.content_type_serialized_name = IBMWatsonHttpMediaType.APPLICATION_JSON;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder text(String text) {
      this.body_serialized_name = text;
      this.content_type_serialized_name = IBMWatsonHttpMediaType.TEXT_PLAIN;
      return this;
    }

    /**
     * Set the html.
     *
     * @param html the html
     * @return the ToneOptions builder
     */
    public ToneOptionsBuilder html(String html) {
      this.body_serialized_name = html;
      this.content_type_serialized_name = IBMWatsonHttpMediaType.TEXT_HTML;
      return this;
    }
  }

  /**
   * ToneScore.
   */
  public class ToneScore extends IBMWatsonGenericModel {
    private Double score_serialized_name;
    private String tone_id_serialized_name;
    private String tone_name_serialized_name;
    /**
     * Gets the score_serialized_name.
     *
     * The score for the tone. * **`2017-09-21`:** The score that is returned lies in the range of 0.5 to 1. A score greater than 0.75 indicates a high likelihood that the tone is perceived in the content. * **`2016-05-19`:** The score that is returned lies in the range of 0 to 1. A score less than 0.5 indicates that the tone is unlikely to be perceived in the content; a score greater than 0.75 indicates a high likelihood that the tone is perceived.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
    /**
     * Gets the tone_id_serialized_name.
     *
     * The unique, non-localized identifier of the tone. * **`2017-09-21`:** The service can return results for the following tone IDs: `anger`, `fear`, `joy`, and `sadness` (emotional tones); `analytical`, `confident`, and `tentative` (language tones). The service returns results only for tones whose scores meet a minimum threshold of 0.5. * **`2016-05-19`:** The service can return results for the following tone IDs of the different categories: for the `emotion` category: `anger`, `disgust`, `fear`, `joy`, and `sadness`; for the `language` category: `analytical`, `confident`, and `tentative`; for the `social` category: `openness_big5`, `conscientiousness_big5`, `extraversion_big5`, `agreeableness_big5`, and `emotional_range_big5`. The service returns scores for all tones of a category, regardless of their values.
     *
     * @return the tone_id_serialized_name
     */
    @AuraEnabled
    public String getToneId() {
      return tone_id_serialized_name;
    }
    /**
     * Gets the tone_name_serialized_name.
     *
     * The user-visible, localized name of the tone.
     *
     * @return the tone_name_serialized_name
     */
    @AuraEnabled
    public String getToneName() {
      return tone_name_serialized_name;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score_serialized_name the new score_serialized_name
     */
    public void setScore(final Double score_serialized_name) {
      this.score_serialized_name = score_serialized_name;
    }

    /**
     * Sets the tone_id_serialized_name.
     *
     * @param tone_id_serialized_name the new tone_id_serialized_name
     */
    public void setToneId(final String tone_id_serialized_name) {
      this.tone_id_serialized_name = tone_id_serialized_name;
    }

    /**
     * Sets the tone_name_serialized_name.
     *
     * @param tone_name_serialized_name the new tone_name_serialized_name
     */
    public void setToneName(final String tone_name_serialized_name) {
      this.tone_name_serialized_name = tone_name_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ToneScore ret = (ToneScore) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Utterance.
   */
  public class Utterance {
    private String text_serialized_name;
    private String user_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * An utterance contributed by a user in the conversation that is to be analyzed. The utterance can contain multiple sentences.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the user_serialized_name.
     *
     * A string that identifies the user who contributed the utterance specified by the `text` parameter.
     *
     * @return the user_serialized_name
     */
    public String user() {
      return user_serialized_name;
    }
    private Utterance(UtteranceBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
      user_serialized_name = builder.user_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a Utterance builder
     */
    public UtteranceBuilder newBuilder() {
      return new UtteranceBuilder(this);
    }

  }

  /**
   * Utterance Builder.
   */
  public class UtteranceBuilder {
    private String text_serialized_name;
    private String user_serialized_name;

    private UtteranceBuilder(Utterance utterance) {
      text_serialized_name = utterance.text_serialized_name;
      user_serialized_name = utterance.user_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UtteranceBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text_serialized_name the text_serialized_name
     */
    public UtteranceBuilder(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a Utterance.
     *
     * @return the utterance
     */
    public Utterance build() {
      return new Utterance(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the Utterance builder
     */
    public UtteranceBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }

    /**
     * Set the user_serialized_name.
     *
     * @param user_serialized_name the user_serialized_name
     * @return the Utterance builder
     */
    public UtteranceBuilder user(String user_serialized_name) {
      this.user_serialized_name = user_serialized_name;
      return this;
    }
  }

  /**
   * UtteranceAnalyses.
   */
  public class UtteranceAnalyses extends IBMWatsonGenericModel {
    private List<UtteranceAnalysis> utterances_tone_serialized_name;
    private String warning_serialized_name;
    /**
     * Gets the utterances_tone_serialized_name.
     *
     * An array of `UtteranceAnalysis` objects that provides the results for each utterance of the input.
     *
     * @return the utterances_tone_serialized_name
     */
    @AuraEnabled
    public List<UtteranceAnalysis> getUtterancesTone() {
      return utterances_tone_serialized_name;
    }
    /**
     * Gets the warning_serialized_name.
     *
     * **`2017-09-21`:** A warning message if the content contains more than 50 utterances. The service analyzes only the first 50 utterances. **`2016-05-19`:** Not returned.
     *
     * @return the warning_serialized_name
     */
    @AuraEnabled
    public String getWarning() {
      return warning_serialized_name;
    }

    /**
     * Sets the utterances_tone_serialized_name.
     *
     * @param utterances_tone_serialized_name the new utterances_tone_serialized_name
     */
    public void setUtterancesTone(final List<UtteranceAnalysis> utterances_tone_serialized_name) {
      this.utterances_tone_serialized_name = utterances_tone_serialized_name;
    }

    /**
     * Sets the warning_serialized_name.
     *
     * @param warning_serialized_name the new warning_serialized_name
     */
    public void setWarning(final String warning_serialized_name) {
      this.warning_serialized_name = warning_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      UtteranceAnalyses ret = (UtteranceAnalyses) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for utterances_tone_serialized_name
      List<UtteranceAnalysis> newUtterancesTone = new List<UtteranceAnalysis>();
      List<UtteranceAnalysis> deserializedUtterancesTone = ret.getUtterancesTone();
      if (deserializedUtterancesTone != null) {
        for (Integer i = 0; i < deserializedUtterancesTone.size(); i++) {
          UtteranceAnalysis currentItem = ret.getUtterancesTone().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('utterances_tone_serialized_name');
          UtteranceAnalysis newItem = (UtteranceAnalysis) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), UtteranceAnalysis.class);
          newUtterancesTone.add(newItem);
        }
        ret.setUtterancesTone(newUtterancesTone);
      }

      return ret;
    }
  }

  /**
   * UtteranceAnalysis.
   */
  public class UtteranceAnalysis extends IBMWatsonGenericModel {
    private String utterance_id_serialized_name;
    private String utterance_text_serialized_name;
    private List<ToneChatScore> tones_serialized_name;
    private String error_serialized_name;
    /**
     * Gets the utterance_id_serialized_name.
     *
     * The unique identifier of the utterance. The first utterance has ID 0, and the ID of each subsequent utterance is incremented by one.
     *
     * @return the utterance_id_serialized_name
     */
    @AuraEnabled
    public String getUtteranceId() {
      return utterance_id_serialized_name;
    }
    /**
     * Gets the utterance_text_serialized_name.
     *
     * The text of the utterance.
     *
     * @return the utterance_text_serialized_name
     */
    @AuraEnabled
    public String getUtteranceText() {
      return utterance_text_serialized_name;
    }
    /**
     * Gets the tones_serialized_name.
     *
     * An array of `ToneChatScore` objects that provides results for the most prevalent tones of the utterance. The array includes results for any tone whose score is at least 0.5. The array is empty if no tone has a score that meets this threshold.
     *
     * @return the tones_serialized_name
     */
    @AuraEnabled
    public List<ToneChatScore> getTones() {
      return tones_serialized_name;
    }
    /**
     * Gets the error_serialized_name.
     *
     * **`2017-09-21`:** An error message if the utterance contains more than 500 characters. The service does not analyze the utterance. **`2016-05-19`:** Not returned.
     *
     * @return the error_serialized_name
     */
    @AuraEnabled
    public String getError() {
      return error_serialized_name;
    }

    /**
     * Sets the utterance_id_serialized_name.
     *
     * @param utterance_id_serialized_name the new utterance_id_serialized_name
     */
    public void setUtteranceId(final String utterance_id_serialized_name) {
      this.utterance_id_serialized_name = utterance_id_serialized_name;
    }

    /**
     * Sets the utterance_text_serialized_name.
     *
     * @param utterance_text_serialized_name the new utterance_text_serialized_name
     */
    public void setUtteranceText(final String utterance_text_serialized_name) {
      this.utterance_text_serialized_name = utterance_text_serialized_name;
    }

    /**
     * Sets the tones_serialized_name.
     *
     * @param tones_serialized_name the new tones_serialized_name
     */
    public void setTones(final List<ToneChatScore> tones_serialized_name) {
      this.tones_serialized_name = tones_serialized_name;
    }

    /**
     * Sets the error_serialized_name.
     *
     * @param error_serialized_name the new error_serialized_name
     */
    public void setError(final String error_serialized_name) {
      this.error_serialized_name = error_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      UtteranceAnalysis ret = (UtteranceAnalysis) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for tones_serialized_name
      List<ToneChatScore> newTones = new List<ToneChatScore>();
      List<ToneChatScore> deserializedTones = ret.getTones();
      if (deserializedTones != null) {
        for (Integer i = 0; i < deserializedTones.size(); i++) {
          ToneChatScore currentItem = ret.getTones().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tones_serialized_name');
          ToneChatScore newItem = (ToneChatScore) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ToneChatScore.class);
          newTones.add(newItem);
        }
        ret.setTones(newTones);
      }

      return ret;
    }
  }

}
