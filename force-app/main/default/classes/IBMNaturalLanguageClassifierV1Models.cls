public class IBMNaturalLanguageClassifierV1Models {
  /**
   * Response from the classifier for a phrase.
   */
  public class Classification extends IBMWatsonResponseModel {
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
     * @param classifierId the new classifierId
     */
    public void setClassifierId(final String classifierId) {
      this.classifier_id_serialized_name = classifierId;
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
     * Sets the text_serialized_name.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the top_class_serialized_name.
     *
     * @param topClass the new topClass
     */
    public void setTopClass(final String topClass) {
      this.top_class_serialized_name = topClass;
    }

    /**
     * Sets the classes_serialized_name.
     *
     * @param classes the new classes
     */
    public void setClasses(final List<ClassifiedClass> classes) {
      this.classes_serialized_name = classes;
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
   * Response from the classifier for multiple phrases.
   */
  public class ClassificationCollection extends IBMWatsonResponseModel {
    private String classifier_id_serialized_name;
    private String url_serialized_name;
    private List<CollectionItem> collection_serialized_name;
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
     * Gets the collection_serialized_name.
     *
     * An array of classifier responses for each submitted phrase.
     *
     * @return the collection_serialized_name
     */
    @AuraEnabled
    public List<CollectionItem> getCollection() {
      return collection_serialized_name;
    }

    /**
     * Sets the classifier_id_serialized_name.
     *
     * @param classifierId the new classifierId
     */
    public void setClassifierId(final String classifierId) {
      this.classifier_id_serialized_name = classifierId;
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
     * Sets the collection_serialized_name.
     *
     * @param collection the new collection
     */
    public void setCollection(final List<CollectionItem> collection) {
      this.collection_serialized_name = collection;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassificationCollection ret = (ClassificationCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for collection_serialized_name
      List<CollectionItem> newCollection = new List<CollectionItem>();
      List<CollectionItem> deserializedCollection = ret.getCollection();
      if (deserializedCollection != null) {
        for (Integer i = 0; i < deserializedCollection.size(); i++) {
          CollectionItem currentItem = ret.getCollection().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('collection_serialized_name');
          CollectionItem newItem = (CollectionItem) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), CollectionItem.class);
          newCollection.add(newItem);
        }
        ret.setCollection(newCollection);
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
     * A decimal percentage that represents the confidence that Watson has in this class. Higher values represent higher
     * confidences.
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
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the class_name_serialized_name.
     *
     * @param className the new className
     */
    public void setClassName(final String className) {
      this.class_name_serialized_name = className;
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
  public class Classifier extends IBMWatsonResponseModel {
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
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
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
     * Sets the classifier_id_serialized_name.
     *
     * @param classifierId the new classifierId
     */
    public void setClassifierId(final String classifierId) {
      this.classifier_id_serialized_name = classifierId;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
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
  public class ClassifierList extends IBMWatsonResponseModel {
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
     * @param classifiers the new classifiers
     */
    public void setClassifiers(final List<Classifier> classifiers) {
      this.classifiers_serialized_name = classifiers;
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
   * The classifyCollection options.
   */
  public class ClassifyCollectionOptions extends IBMWatsonOptionsModel {
    private String classifier_id_serialized_name;
    private List<ClassifyInput> collection_serialized_name;
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
     * Gets the collection_serialized_name.
     *
     * The submitted phrases.
     *
     * @return the collection_serialized_name
     */
    public List<ClassifyInput> collection() {
      return collection_serialized_name;
    }
    private ClassifyCollectionOptions(ClassifyCollectionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifier_id_serialized_name, 'classifier_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.collection_serialized_name, 'collection_serialized_name cannot be null');
      classifier_id_serialized_name = builder.classifier_id_serialized_name;
      collection_serialized_name = builder.collection_serialized_name;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ClassifyCollectionOptions builder
     */
    public ClassifyCollectionOptionsBuilder newBuilder() {
      return new ClassifyCollectionOptionsBuilder(this);
    }

  }

  /**
   * ClassifyCollectionOptions Builder.
   */
  public class ClassifyCollectionOptionsBuilder extends IBMWatsonOptionsModel {
    private String classifier_id_serialized_name;
    private List<ClassifyInput> collection_serialized_name;

    private ClassifyCollectionOptionsBuilder(ClassifyCollectionOptions classifyCollectionOptions) {
      classifier_id_serialized_name = classifyCollectionOptions.classifier_id_serialized_name;
      collection_serialized_name = classifyCollectionOptions.collection_serialized_name;
      this.requestHeaders.putAll(classifyCollectionOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ClassifyCollectionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifierId the classifierId
     * @param collection the collection
     */
    public ClassifyCollectionOptionsBuilder(String classifierId, List<ClassifyInput> collection) {
      this.classifier_id_serialized_name = classifierId;
      this.collection_serialized_name = collection;
    }

    /**
     * Builds a ClassifyCollectionOptions.
     *
     * @return the classifyCollectionOptions
     */
    public ClassifyCollectionOptions build() {
      return new ClassifyCollectionOptions(this);
    }

    /**
     * Adds an collection to collection_serialized_name.
     *
     * @param collection the new collection
     * @return the ClassifyCollectionOptions builder
     */
    public ClassifyCollectionOptionsBuilder addCollection(ClassifyInput collection) {
      IBMWatsonValidator.notNull(collection, 'collection cannot be null');
      if (this.collection_serialized_name == null) {
        this.collection_serialized_name = new List<ClassifyInput>();
      }
      this.collection_serialized_name.add(collection);
      return this;
    }

    /**
     * Set the classifier_id_serialized_name.
     *
     * @param classifierId the classifierId
     * @return the ClassifyCollectionOptions builder
     */
    public ClassifyCollectionOptionsBuilder classifierId(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
      return this;
    }

    /**
     * Set the collection_serialized_name.
     * Existing collection_serialized_name will be replaced.
     *
     * @param collection the collection
     * @return the ClassifyCollectionOptions builder
     */
    public ClassifyCollectionOptionsBuilder collection(List<ClassifyInput> collection) {
      this.collection_serialized_name = collection;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ClassifyCollectionOptions builder
     */
    public ClassifyCollectionOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Request payload to classify.
   */
  public class ClassifyInput {
    private String text_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The submitted phrase.
     *
     * @return the text_serialized_name
     */
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

  }

  /**
   * The classify options.
   */
  public class ClassifyOptions extends IBMWatsonOptionsModel {
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
      this.requestHeaders = builder.requestHeaders;
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
  public class ClassifyOptionsBuilder extends IBMWatsonOptionsModel {
    private String classifier_id_serialized_name;
    private String text_serialized_name;

    private ClassifyOptionsBuilder(ClassifyOptions classifyOptions) {
      classifier_id_serialized_name = classifyOptions.classifier_id_serialized_name;
      text_serialized_name = classifyOptions.text_serialized_name;
      this.requestHeaders.putAll(classifyOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ClassifyOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifierId the classifierId
     * @param text the text
     */
    public ClassifyOptionsBuilder(String classifierId, String text) {
      this.classifier_id_serialized_name = classifierId;
      this.text_serialized_name = text;
    }

    /**
     * Builds a ClassifyOptions.
     *
     * @return the classifyOptions
     */
    public ClassifyOptions build() {
      return new ClassifyOptions(this);
    }

    /**
     * Set the classifier_id_serialized_name.
     *
     * @param classifierId the classifierId
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder classifierId(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Response from the classifier for a phrase in a collection.
   */
  public class CollectionItem extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String top_class_serialized_name;
    private List<ClassifiedClass> classes_serialized_name;
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
     * Sets the text_serialized_name.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the top_class_serialized_name.
     *
     * @param topClass the new topClass
     */
    public void setTopClass(final String topClass) {
      this.top_class_serialized_name = topClass;
    }

    /**
     * Sets the classes_serialized_name.
     *
     * @param classes the new classes
     */
    public void setClasses(final List<ClassifiedClass> classes) {
      this.classes_serialized_name = classes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CollectionItem ret = (CollectionItem) super.deserialize(jsonString, jsonMap, classType);

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
   * The createClassifier options.
   */
  public class CreateClassifierOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile training_metadata_serialized_name;
    private String training_metadata_filename_serialized_name;
    private IBMWatsonFile training_data_serialized_name;
    private String training_data_filename_serialized_name;
    /**
     * Gets the training_metadata_serialized_name.
     *
     * Metadata in JSON format. The metadata identifies the language of the data, and an optional name to identify the
     * classifier. Specify the language with the 2-letter primary language code as assigned in ISO standard 639.
     *
     * Supported languages are English (`en`), Arabic (`ar`), French (`fr`), German, (`de`), Italian (`it`), Japanese
     * (`ja`), Korean (`ko`), Brazilian Portuguese (`pt`), and Spanish (`es`).
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
     * Training data in CSV format. Each text value must have at least one class. The data can include up to 20,000
     * records. For details, see [Data
     * preparation](https://console.bluemix.net/docs/services/natural-language-classifier/using-your-data.html).
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
      this.requestHeaders = builder.requestHeaders;
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
  public class CreateClassifierOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile training_metadata_serialized_name;
    private String training_metadata_filename_serialized_name;
    private IBMWatsonFile training_data_serialized_name;
    private String training_data_filename_serialized_name;

    private CreateClassifierOptionsBuilder(CreateClassifierOptions createClassifierOptions) {
      training_metadata_serialized_name = createClassifierOptions.training_metadata_serialized_name;
      training_metadata_filename_serialized_name = createClassifierOptions.training_metadata_filename_serialized_name;
      training_data_serialized_name = createClassifierOptions.training_data_serialized_name;
      training_data_filename_serialized_name = createClassifierOptions.training_data_filename_serialized_name;
      this.requestHeaders.putAll(createClassifierOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateClassifierOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param trainingMetadata the trainingMetadata
     * @param trainingData the trainingData
     */
    public CreateClassifierOptionsBuilder(IBMWatsonFile trainingMetadata, IBMWatsonFile trainingData) {
      this.training_metadata_serialized_name = trainingMetadata;
      this.training_data_serialized_name = trainingData;
    }

    /**
     * Builds a CreateClassifierOptions.
     *
     * @return the createClassifierOptions
     */
    public CreateClassifierOptions build() {
      return new CreateClassifierOptions(this);
    }

    /**
     * Set the training_metadata_serialized_name.
     *
     * @param trainingMetadata the trainingMetadata
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingMetadata(IBMWatsonFile trainingMetadata) {
      this.training_metadata_serialized_name = trainingMetadata;
      return this;
    }

    /**
     * Set the training_metadata_filename_serialized_name.
     *
     * @param trainingMetadataFilename the trainingMetadataFilename
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingMetadataFilename(String trainingMetadataFilename) {
      this.training_metadata_filename_serialized_name = trainingMetadataFilename;
      return this;
    }

    /**
     * Set the training_data_serialized_name.
     *
     * @param trainingData the trainingData
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingData(IBMWatsonFile trainingData) {
      this.training_data_serialized_name = trainingData;
      return this;
    }

    /**
     * Set the training_data_filename_serialized_name.
     *
     * @param trainingDataFilename the trainingDataFilename
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder trainingDataFilename(String trainingDataFilename) {
      this.training_data_filename_serialized_name = trainingDataFilename;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteClassifier options.
   */
  public class DeleteClassifierOptions extends IBMWatsonOptionsModel {
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
      this.requestHeaders = builder.requestHeaders;
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
  public class DeleteClassifierOptionsBuilder extends IBMWatsonOptionsModel {
    private String classifier_id_serialized_name;

    private DeleteClassifierOptionsBuilder(DeleteClassifierOptions deleteClassifierOptions) {
      classifier_id_serialized_name = deleteClassifierOptions.classifier_id_serialized_name;
      this.requestHeaders.putAll(deleteClassifierOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteClassifierOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifierId the classifierId
     */
    public DeleteClassifierOptionsBuilder(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
    }

    /**
     * Builds a DeleteClassifierOptions.
     *
     * @return the deleteClassifierOptions
     */
    public DeleteClassifierOptions build() {
      return new DeleteClassifierOptions(this);
    }

    /**
     * Set the classifier_id_serialized_name.
     *
     * @param classifierId the classifierId
     * @return the DeleteClassifierOptions builder
     */
    public DeleteClassifierOptionsBuilder classifierId(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteClassifierOptions builder
     */
    public DeleteClassifierOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getClassifier options.
   */
  public class GetClassifierOptions extends IBMWatsonOptionsModel {
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
      this.requestHeaders = builder.requestHeaders;
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
  public class GetClassifierOptionsBuilder extends IBMWatsonOptionsModel {
    private String classifier_id_serialized_name;

    private GetClassifierOptionsBuilder(GetClassifierOptions getClassifierOptions) {
      classifier_id_serialized_name = getClassifierOptions.classifier_id_serialized_name;
      this.requestHeaders.putAll(getClassifierOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetClassifierOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifierId the classifierId
     */
    public GetClassifierOptionsBuilder(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
    }

    /**
     * Builds a GetClassifierOptions.
     *
     * @return the getClassifierOptions
     */
    public GetClassifierOptions build() {
      return new GetClassifierOptions(this);
    }

    /**
     * Set the classifier_id_serialized_name.
     *
     * @param classifierId the classifierId
     * @return the GetClassifierOptions builder
     */
    public GetClassifierOptionsBuilder classifierId(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetClassifierOptions builder
     */
    public GetClassifierOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listClassifiers options.
   */
  public class ListClassifiersOptions extends IBMWatsonOptionsModel {
    private ListClassifiersOptions(ListClassifiersOptionsBuilder builder) {
      this.requestHeaders = builder.requestHeaders;
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
  public class ListClassifiersOptionsBuilder extends IBMWatsonOptionsModel {

    private ListClassifiersOptionsBuilder(ListClassifiersOptions listClassifiersOptions) {
      this.requestHeaders.putAll(listClassifiersOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListClassifiersOptionsBuilder() {
    }

    /**
     * Builds a ListClassifiersOptions.
     *
     * @return the listClassifiersOptions
     */
    public ListClassifiersOptions build() {
      return new ListClassifiersOptions(this);
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListClassifiersOptions builder
     */
    public ListClassifiersOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

}
