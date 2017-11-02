public class IBMNaturalLanguageClassifierV1Models {
  /**
   * Response from the classifier for a phrase.
   */
  public class Classification extends IBMWatsonGenericModel {
    private String classifier_id_serialized_name;
    private String url_serialized_name;
    private String text_serialized_name;
    private String top_class_serialized_name;
    private List<ClassifiedClass> classes_serialized_name;
    /**
     * Gets the classifier_id_serialized_name.
     *
     * Unique identifier for this classifier.
     *
     * @return the classifier_id_serialized_name
     */
    @AuraEnabled
    public String getClassifierId() {
      return classifier_id_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * Link to the classifier.
     *
     * @return the url_serialized_name
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The submitted phrase.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the top_class_serialized_name.
     *
     * The class with the highest confidence.
     *
     * @return the top_class_serialized_name
     */
    @AuraEnabled
    public String getTopClass() {
      return top_class_serialized_name;
    }
    /**
     * Gets the classes_serialized_name.
     *
     * An array of up to ten class-confidence pairs sorted in descending order of confidence.
     *
     * @return the classes_serialized_name
     */
    @AuraEnabled
    public List<ClassifiedClass> getClasses() {
      return classes_serialized_name;
    }

    /**
     * Sets the classifier_id_serialized_name.
     *
     * @param classifier_id_serialized_name the new classifier_id_serialized_name
     */
    public void setClassifierId(final String classifier_id_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
    }

    /**
     * Sets the url_serialized_name.
     *
     * @param url_serialized_name the new url_serialized_name
     */
    public void setUrl(final String url_serialized_name) {
      this.url_serialized_name = url_serialized_name;
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
     * Sets the top_class_serialized_name.
     *
     * @param top_class_serialized_name the new top_class_serialized_name
     */
    public void setTopClass(final String top_class_serialized_name) {
      this.top_class_serialized_name = top_class_serialized_name;
    }

    /**
     * Sets the classes_serialized_name.
     *
     * @param classes_serialized_name the new classes_serialized_name
     */
    public void setClasses(final List<ClassifiedClass> classes_serialized_name) {
      this.classes_serialized_name = classes_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Classification ret = (Classification) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for classes_serialized_name
      List<ClassifiedClass> newClasses = new List<ClassifiedClass>();
      List<ClassifiedClass> deserializedClasses = ret.getClasses();
      if (deserializedClasses != null) {
        for (Integer i = 0; i < deserializedClasses.size(); i++) {
          ClassifiedClass currentItem = ret.getClasses().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('classes_serialized_name');
          ClassifiedClass newItem = (ClassifiedClass) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ClassifiedClass.class);
          newClasses.add(newItem);
        }
        ret.setClasses(newClasses);
      }

      return ret;
    }
  }

  /**
   * Class and confidence.
   */
  public class ClassifiedClass extends IBMWatsonGenericModel {
    private Double confidence_serialized_name;
    private String class_name_serialized_name;
    /**
     * Gets the confidence_serialized_name.
     *
     * A decimal percentage that represents the confidence that Watson has in this class. Higher values represent higher confidences.
     *
     * @return the confidence_serialized_name
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
    /**
     * Gets the class_name_serialized_name.
     *
     * Class label.
     *
     * @return the class_name_serialized_name
     */
    @AuraEnabled
    public String getClassName() {
      return class_name_serialized_name;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence_serialized_name the new confidence_serialized_name
     */
    public void setConfidence(final Double confidence_serialized_name) {
      this.confidence_serialized_name = confidence_serialized_name;
    }

    /**
     * Sets the class_name_serialized_name.
     *
     * @param class_name_serialized_name the new class_name_serialized_name
     */
    public void setClassName(final String class_name_serialized_name) {
      this.class_name_serialized_name = class_name_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassifiedClass ret = (ClassifiedClass) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A classifier for natural language phrases.
   */
  public class Classifier extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private String url_serialized_name;
    private String status_serialized_name;
    private String classifier_id_serialized_name;
    private Datetime created_serialized_name;
    private String status_description_serialized_name;
    private String language_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * User-supplied name for the classifier.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * Link to the classifier.
     *
     * @return the url_serialized_name
     */
    @AuraEnabled
    public String getUrl() {
      return url_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The state of the classifier.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the classifier_id_serialized_name.
     *
     * Unique identifier for this classifier.
     *
     * @return the classifier_id_serialized_name
     */
    @AuraEnabled
    public String getClassifierId() {
      return classifier_id_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * Date and time (UTC) the classifier was created.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the status_description_serialized_name.
     *
     * Additional detail about the status.
     *
     * @return the status_description_serialized_name
     */
    @AuraEnabled
    public String getStatusDescription() {
      return status_description_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language used for the classifier.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
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
     * Sets the url_serialized_name.
     *
     * @param url_serialized_name the new url_serialized_name
     */
    public void setUrl(final String url_serialized_name) {
      this.url_serialized_name = url_serialized_name;
    }

    /**
     * Sets the classifier_id_serialized_name.
     *
     * @param classifier_id_serialized_name the new classifier_id_serialized_name
     */
    public void setClassifierId(final String classifier_id_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Classifier ret = (Classifier) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * List of available classifiers.
   */
  public class ClassifierList extends IBMWatsonGenericModel {
    private List<Classifier> classifiers_serialized_name;
    /**
     * Gets the classifiers_serialized_name.
     *
     * The classifiers available to the user. Returns an empty array if no classifiers are available.
     *
     * @return the classifiers_serialized_name
     */
    @AuraEnabled
    public List<Classifier> getClassifiers() {
      return classifiers_serialized_name;
    }

    /**
     * Sets the classifiers_serialized_name.
     *
     * @param classifiers_serialized_name the new classifiers_serialized_name
     */
    public void setClassifiers(final List<Classifier> classifiers_serialized_name) {
      this.classifiers_serialized_name = classifiers_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassifierList ret = (ClassifierList) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for classifiers_serialized_name
      List<Classifier> newClassifiers = new List<Classifier>();
      List<Classifier> deserializedClassifiers = ret.getClassifiers();
      if (deserializedClassifiers != null) {
        for (Integer i = 0; i < deserializedClassifiers.size(); i++) {
          Classifier currentItem = ret.getClassifiers().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('classifiers_serialized_name');
          Classifier newItem = (Classifier) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Classifier.class);
          newClassifiers.add(newItem);
        }
        ret.setClassifiers(newClassifiers);
      }

      return ret;
    }
  }

  /**
   * The classify options.
   */
  public class ClassifyOptions {
    private String classifier_id_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the classifier_id_serialized_name.
     *
     * Classifier ID to use.
     *
     * @return the classifier_id_serialized_name
     */
    public String classifierId() {
      return classifier_id_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The submitted phrase.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private ClassifyOptions(ClassifyOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifier_id_serialized_name, 'classifier_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      classifier_id_serialized_name = builder.classifier_id_serialized_name;
      text_serialized_name = builder.text_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a ClassifyOptions builder
     */
    public ClassifyOptionsBuilder newBuilder() {
      return new ClassifyOptionsBuilder(this);
    }

  }

  /**
   * ClassifyOptions Builder.
   */
  public class ClassifyOptionsBuilder {
    private String classifier_id_serialized_name;
    private String text_serialized_name;

    private ClassifyOptionsBuilder(ClassifyOptions classify_options) {
      classifier_id_serialized_name = classify_options.classifier_id_serialized_name;
      text_serialized_name = classify_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ClassifyOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifier_id_serialized_name the classifier_id_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public ClassifyOptionsBuilder(String classifier_id_serialized_name, String text_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a ClassifyOptions.
     *
     * @return the classify_options
     */
    public ClassifyOptions build() {
      return new ClassifyOptions(this);
    }

    /**
     * Set the classifier_id_serialized_name.
     *
     * @param classifier_id_serialized_name the classifier_id_serialized_name
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder classifierId(String classifier_id_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The createClassifier options.
   */
  public class CreateClassifierOptions {
    private IBMWatsonFile training_metadata_serialized_name;
    private String training_metadata_filename_serialized_name;
    private IBMWatsonFile training_data_serialized_name;
    private String training_data_filename_serialized_name;
    /**
     * Gets the training_metadata_serialized_name.
     *
     * Metadata in JSON format. The metadata identifies the language of the data, and an optional name to identify the classifier. For details, see the [API reference](https://www.ibm.com/watson/developercloud/natural-language-classifier/api/v1/#create_classifier).
     *
     * @return the training_metadata_serialized_name
     */
    public IBMWatsonFile trainingMetadata() {
      return training_metadata_serialized_name;
    }
    /**
     * Gets the training_metadata_filename_serialized_name.
     *
     * The filename for training_metadata.
     *
     * @return the training_metadata_filename_serialized_name
     */
    public String trainingMetadataFilename() {
      return training_metadata_filename_serialized_name;
    }
    /**
     * Gets the training_data_serialized_name.
     *
     * Training data in CSV format. Each text value must have at least one class. The data can include up to 15,000 records. For details, see [Using your own data](https://www.ibm.com/watson/developercloud/doc/natural-language-classifier/using-your-data.html).
     *
     * @return the training_data_serialized_name
     */
    public IBMWatsonFile trainingData() {
      return training_data_serialized_name;
    }
    /**
     * Gets the training_data_filename_serialized_name.
     *
     * The filename for training_data.
     *
     * @return the training_data_filename_serialized_name
     */
    public String trainingDataFilename() {
      return training_data_filename_serialized_name;
    }
    private CreateClassifierOptions(CreateClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.training_metadata_serialized_name, 'training_metadata_serialized_name cannot be null');
      IBMWatsonValidator.notNull(builder.training_data_serialized_name, 'training_data_serialized_name cannot be null');
      training_metadata_serialized_name = builder.training_metadata_serialized_name;
      training_metadata_filename_serialized_name = builder.training_metadata_filename_serialized_name;
      training_data_serialized_name = builder.training_data_serialized_name;
      training_data_filename_serialized_name = builder.training_data_filename_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder newBuilder() {
      return new CreateClassifierOptionsBuilder(this);
    }

  }

  /**
   * CreateClassifierOptions Builder.
   */
  public class CreateClassifierOptionsBuilder {
    private IBMWatsonFile training_metadata_serialized_name;
    private String training_metadata_filename_serialized_name;
    private IBMWatsonFile training_data_serialized_name;
    private String training_data_filename_serialized_name;

    private CreateClassifierOptionsBuilder(CreateClassifierOptions create_classifier_options) {
      training_metadata_serialized_name = create_classifier_options.training_metadata_serialized_name;
      training_metadata_filename_serialized_name = create_classifier_options.training_metadata_filename_serialized_name;
      training_data_serialized_name = create_classifier_options.training_data_serialized_name;
      training_data_filename_serialized_name = create_classifier_options.training_data_filename_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateClassifierOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param training_metadata_serialized_name the training_metadata_serialized_name
     * @param training_data_serialized_name the training_data_serialized_name
     */
    public CreateClassifierOptionsBuilder(IBMWatsonFile training_metadata_serialized_name, IBMWatsonFile training_data_serialized_name) {
      this.training_metadata_serialized_name = training_metadata_serialized_name;
      this.training_data_serialized_name = training_data_serialized_name;
    }

    /**
     * Builds a CreateClassifierOptions.
     *
     * @return the create_classifier_options
     */
    public CreateClassifierOptions build() {
      return new CreateClassifierOptions(this);
    }

    /**
     * Set the training_metadata_serialized_name.
     *
     * @param training_metadata_serialized_name the training_metadata_serialized_name
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingMetadata(IBMWatsonFile training_metadata_serialized_name) {
      this.training_metadata_serialized_name = training_metadata_serialized_name;
      return this;
    }

    /**
     * Set the training_metadata_filename_serialized_name.
     *
     * @param training_metadata_filename_serialized_name the training_metadata_filename_serialized_name
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingMetadataFilename(String training_metadata_filename_serialized_name) {
      this.training_metadata_filename_serialized_name = training_metadata_filename_serialized_name;
      return this;
    }

    /**
     * Set the training_data_serialized_name.
     *
     * @param training_data_serialized_name the training_data_serialized_name
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingData(IBMWatsonFile training_data_serialized_name) {
      this.training_data_serialized_name = training_data_serialized_name;
      return this;
    }

    /**
     * Set the training_data_filename_serialized_name.
     *
     * @param training_data_filename_serialized_name the training_data_filename_serialized_name
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingDataFilename(String training_data_filename_serialized_name) {
      this.training_data_filename_serialized_name = training_data_filename_serialized_name;
      return this;
    }
  }

  /**
   * The deleteClassifier options.
   */
  public class DeleteClassifierOptions {
    private String classifier_id_serialized_name;
    /**
     * Gets the classifier_id_serialized_name.
     *
     * Classifier ID to delete.
     *
     * @return the classifier_id_serialized_name
     */
    public String classifierId() {
      return classifier_id_serialized_name;
    }
    private DeleteClassifierOptions(DeleteClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifier_id_serialized_name, 'classifier_id_serialized_name cannot be empty');
      classifier_id_serialized_name = builder.classifier_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a DeleteClassifierOptions builder
     */
    public DeleteClassifierOptionsBuilder newBuilder() {
      return new DeleteClassifierOptionsBuilder(this);
    }

  }

  /**
   * DeleteClassifierOptions Builder.
   */
  public class DeleteClassifierOptionsBuilder {
    private String classifier_id_serialized_name;

    private DeleteClassifierOptionsBuilder(DeleteClassifierOptions delete_classifier_options) {
      classifier_id_serialized_name = delete_classifier_options.classifier_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteClassifierOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifier_id_serialized_name the classifier_id_serialized_name
     */
    public DeleteClassifierOptionsBuilder(String classifier_id_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
    }

    /**
     * Builds a DeleteClassifierOptions.
     *
     * @return the delete_classifier_options
     */
    public DeleteClassifierOptions build() {
      return new DeleteClassifierOptions(this);
    }

    /**
     * Set the classifier_id_serialized_name.
     *
     * @param classifier_id_serialized_name the classifier_id_serialized_name
     * @return the DeleteClassifierOptions builder
     */
    public DeleteClassifierOptionsBuilder classifierId(String classifier_id_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
      return this;
    }
  }

  /**
   * The getClassifier options.
   */
  public class GetClassifierOptions {
    private String classifier_id_serialized_name;
    /**
     * Gets the classifier_id_serialized_name.
     *
     * Classifier ID to query.
     *
     * @return the classifier_id_serialized_name
     */
    public String classifierId() {
      return classifier_id_serialized_name;
    }
    private GetClassifierOptions(GetClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifier_id_serialized_name, 'classifier_id_serialized_name cannot be empty');
      classifier_id_serialized_name = builder.classifier_id_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a GetClassifierOptions builder
     */
    public GetClassifierOptionsBuilder newBuilder() {
      return new GetClassifierOptionsBuilder(this);
    }

  }

  /**
   * GetClassifierOptions Builder.
   */
  public class GetClassifierOptionsBuilder {
    private String classifier_id_serialized_name;

    private GetClassifierOptionsBuilder(GetClassifierOptions get_classifier_options) {
      classifier_id_serialized_name = get_classifier_options.classifier_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetClassifierOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifier_id_serialized_name the classifier_id_serialized_name
     */
    public GetClassifierOptionsBuilder(String classifier_id_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
    }

    /**
     * Builds a GetClassifierOptions.
     *
     * @return the get_classifier_options
     */
    public GetClassifierOptions build() {
      return new GetClassifierOptions(this);
    }

    /**
     * Set the classifier_id_serialized_name.
     *
     * @param classifier_id_serialized_name the classifier_id_serialized_name
     * @return the GetClassifierOptions builder
     */
    public GetClassifierOptionsBuilder classifierId(String classifier_id_serialized_name) {
      this.classifier_id_serialized_name = classifier_id_serialized_name;
      return this;
    }
  }

  /**
   * The listClassifiers options.
   */
  public class ListClassifiersOptions {
    private ListClassifiersOptions(ListClassifiersOptionsBuilder builder) {
    }

    /**
     * New builder.
     *
     * @return a ListClassifiersOptions builder
     */
    public ListClassifiersOptionsBuilder newBuilder() {
      return new ListClassifiersOptionsBuilder(this);
    }

  }

  /**
   * ListClassifiersOptions Builder.
   */
  public class ListClassifiersOptionsBuilder {

    private ListClassifiersOptionsBuilder(ListClassifiersOptions list_classifiers_options) {
    }

    /**
     * Instantiates a new builder.
     */
    public ListClassifiersOptionsBuilder() {
    }

    /**
     * Builds a ListClassifiersOptions.
     *
     * @return the list_classifiers_options
     */
    public ListClassifiersOptions build() {
      return new ListClassifiersOptions(this);
    }
  }

}
