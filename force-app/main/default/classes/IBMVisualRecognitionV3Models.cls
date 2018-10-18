public class IBMVisualRecognitionV3Models {
  /**
   * A category within a classifier.
   */
  public class ModelClass extends IBMWatsonGenericModel {
    private String class_serialized_name;
 
    /**
     * Gets the className.
     *
     * The name of the class.
     *
     * @return the className
     */
    @AuraEnabled
    public String getClassName() {
      return class_serialized_name;
    }

    /**
     * Sets the className.
     *
     * @param className the new className
     */
    public void setClassName(final String className) {
      this.class_serialized_name = className;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ModelClass ret = (ModelClass) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Result of a class within a classifier.
   */
  public class ClassResult extends IBMWatsonGenericModel {
    private String class_serialized_name;
    private Double score_serialized_name;
    private String type_hierarchy_serialized_name;
 
    /**
     * Gets the className.
     *
     * Name of the class.
     *
     * @return the className
     */
    @AuraEnabled
    public String getClassName() {
      return class_serialized_name;
    }
 
    /**
     * Gets the score.
     *
     * Confidence score for the property in the range of 0 to 1. A higher score indicates greater likelihood that the
     * class is depicted in the image. The default threshold for returning scores from a classifier is 0.5.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
 
    /**
     * Gets the typeHierarchy.
     *
     * Knowledge graph of the property. For example, `/fruit/pome/apple/eating apple/Granny Smith`. Included only if
     * identified.
     *
     * @return the typeHierarchy
     */
    @AuraEnabled
    public String getTypeHierarchy() {
      return type_hierarchy_serialized_name;
    }

    /**
     * Sets the className.
     *
     * @param className the new className
     */
    public void setClassName(final String className) {
      this.class_serialized_name = className;
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    /**
     * Sets the typeHierarchy.
     *
     * @param typeHierarchy the new typeHierarchy
     */
    public void setTypeHierarchy(final String typeHierarchy) {
      this.type_hierarchy_serialized_name = typeHierarchy;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassResult ret = (ClassResult) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Results for one image.
   */
  public class ClassifiedImage extends IBMWatsonGenericModel {
    private String source_url_serialized_name;
    private String resolved_url_serialized_name;
    private String image_serialized_name;
    private ErrorInfo error_serialized_name;
    private List<ClassifierResult> classifiers_serialized_name;
 
    /**
     * Gets the sourceUrl.
     *
     * Source of the image before any redirects. Not returned when the image is uploaded.
     *
     * @return the sourceUrl
     */
    @AuraEnabled
    public String getSourceUrl() {
      return source_url_serialized_name;
    }
 
    /**
     * Gets the resolvedUrl.
     *
     * Fully resolved URL of the image after redirects are followed. Not returned when the image is uploaded.
     *
     * @return the resolvedUrl
     */
    @AuraEnabled
    public String getResolvedUrl() {
      return resolved_url_serialized_name;
    }
 
    /**
     * Gets the image.
     *
     * Relative path of the image file if uploaded directly. Not returned when the image is passed by URL.
     *
     * @return the image
     */
    @AuraEnabled
    public String getImage() {
      return image_serialized_name;
    }
 
    /**
     * Gets the error.
     *
     * Information about what might have caused a failure, such as an image that is too large. Not returned when there
     * is no error.
     *
     * @return the error
     */
    @AuraEnabled
    public ErrorInfo getError() {
      return error_serialized_name;
    }
 
    /**
     * Gets the classifiers.
     *
     * The classifiers.
     *
     * @return the classifiers
     */
    @AuraEnabled
    public List<ClassifierResult> getClassifiers() {
      return classifiers_serialized_name;
    }

    /**
     * Sets the sourceUrl.
     *
     * @param sourceUrl the new sourceUrl
     */
    public void setSourceUrl(final String sourceUrl) {
      this.source_url_serialized_name = sourceUrl;
    }

    /**
     * Sets the resolvedUrl.
     *
     * @param resolvedUrl the new resolvedUrl
     */
    public void setResolvedUrl(final String resolvedUrl) {
      this.resolved_url_serialized_name = resolvedUrl;
    }

    /**
     * Sets the image.
     *
     * @param image the new image
     */
    public void setImage(final String image) {
      this.image_serialized_name = image;
    }

    /**
     * Sets the error.
     *
     * @param error the new error
     */
    public void setError(final ErrorInfo error) {
      this.error_serialized_name = error;
    }

    /**
     * Sets the classifiers.
     *
     * @param classifiers the new classifiers
     */
    public void setClassifiers(final List<ClassifierResult> classifiers) {
      this.classifiers_serialized_name = classifiers;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassifiedImage ret = (ClassifiedImage) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for error
      ErrorInfo newError = (ErrorInfo) new ErrorInfo().deserialize(JSON.serialize(ret.getError()), (Map<String, Object>) jsonMap.get('error_serialized_name'), ErrorInfo.class);
      ret.setError(newError);

      // calling custom deserializer for classifiers
      List<ClassifierResult> newClassifiers = new List<ClassifierResult>();
      List<ClassifierResult> deserializedClassifiers = ret.getClassifiers();
      if (deserializedClassifiers != null) {
        for (Integer i = 0; i < deserializedClassifiers.size(); i++) {
          ClassifierResult currentItem = ret.getClassifiers().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('classifiers_serialized_name');
          ClassifierResult newItem = (ClassifierResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ClassifierResult.class);
          newClassifiers.add(newItem);
        }
        ret.setClassifiers(newClassifiers);
      }

      return ret;
    }
  }

  /**
   * Results for all images.
   */
  public class ClassifiedImages extends IBMWatsonResponseModel {
    private Long custom_classes_serialized_name;
    private Long images_processed_serialized_name;
    private List<ClassifiedImage> images_serialized_name;
    private List<WarningInfo> warnings_serialized_name;
 
    /**
     * Gets the customClasses.
     *
     * Number of custom classes identified in the images.
     *
     * @return the customClasses
     */
    @AuraEnabled
    public Long getCustomClasses() {
      return custom_classes_serialized_name;
    }
 
    /**
     * Gets the imagesProcessed.
     *
     * Number of images processed for the API call.
     *
     * @return the imagesProcessed
     */
    @AuraEnabled
    public Long getImagesProcessed() {
      return images_processed_serialized_name;
    }
 
    /**
     * Gets the images.
     *
     * Classified images.
     *
     * @return the images
     */
    @AuraEnabled
    public List<ClassifiedImage> getImages() {
      return images_serialized_name;
    }
 
    /**
     * Gets the warnings.
     *
     * Information about what might cause less than optimal output. For example, a request sent with a corrupt .zip file
     * and a list of image URLs will still complete, but does not return the expected output. Not returned when there is
     * no warning.
     *
     * @return the warnings
     */
    @AuraEnabled
    public List<WarningInfo> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the customClasses.
     *
     * @param customClasses the new customClasses
     */
    public void setCustomClasses(final long customClasses) {
      this.custom_classes_serialized_name = customClasses;
    }

    /**
     * Sets the imagesProcessed.
     *
     * @param imagesProcessed the new imagesProcessed
     */
    public void setImagesProcessed(final long imagesProcessed) {
      this.images_processed_serialized_name = imagesProcessed;
    }

    /**
     * Sets the images.
     *
     * @param images the new images
     */
    public void setImages(final List<ClassifiedImage> images) {
      this.images_serialized_name = images;
    }

    /**
     * Sets the warnings.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final List<WarningInfo> warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassifiedImages ret = (ClassifiedImages) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for images
      List<ClassifiedImage> newImages = new List<ClassifiedImage>();
      List<ClassifiedImage> deserializedImages = ret.getImages();
      if (deserializedImages != null) {
        for (Integer i = 0; i < deserializedImages.size(); i++) {
          ClassifiedImage currentItem = ret.getImages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('images_serialized_name');
          ClassifiedImage newItem = (ClassifiedImage) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ClassifiedImage.class);
          newImages.add(newItem);
        }
        ret.setImages(newImages);
      }

      // calling custom deserializer for warnings
      List<WarningInfo> newWarnings = new List<WarningInfo>();
      List<WarningInfo> deserializedWarnings = ret.getWarnings();
      if (deserializedWarnings != null) {
        for (Integer i = 0; i < deserializedWarnings.size(); i++) {
          WarningInfo currentItem = ret.getWarnings().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('warnings_serialized_name');
          WarningInfo newItem = (WarningInfo) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WarningInfo.class);
          newWarnings.add(newItem);
        }
        ret.setWarnings(newWarnings);
      }

      return ret;
    }
  }

  /**
   * Information about a classifier.
   */
  public class Classifier extends IBMWatsonResponseModel {
    private String classifier_id_serialized_name;
    private String name_serialized_name;
    private String owner_serialized_name;
    private String status_serialized_name;
    private Boolean core_ml_enabled_serialized_name;
    private String explanation_serialized_name;
    private Datetime created_serialized_name;
    private List<ModelClass> classes_serialized_name;
    private Datetime retrained_serialized_name;
    private Datetime updated_serialized_name;
 
    /**
     * Gets the classifierId.
     *
     * ID of a classifier identified in the image.
     *
     * @return the classifierId
     */
    @AuraEnabled
    public String getClassifierId() {
      return classifier_id_serialized_name;
    }
 
    /**
     * Gets the name.
     *
     * Name of the classifier.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the owner.
     *
     * Unique ID of the account who owns the classifier. Returned when verbose=`true`. Might not be returned by some
     * requests.
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
     * Training status of classifier.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the coreMlEnabled.
     *
     * Whether the classifier can be downloaded as a Core ML model after the training status is `ready`.
     *
     * @return the coreMlEnabled
     */
    @AuraEnabled
    public Boolean getCoreMlEnabled() {
      return core_ml_enabled_serialized_name;
    }
 
    /**
     * Gets the explanation.
     *
     * If classifier training has failed, this field might explain why.
     *
     * @return the explanation
     */
    @AuraEnabled
    public String getExplanation() {
      return explanation_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * Date and time in Coordinated Universal Time (UTC) that the classifier was created.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the classes.
     *
     * Classes that define a classifier.
     *
     * @return the classes
     */
    @AuraEnabled
    public List<ModelClass> getClasses() {
      return classes_serialized_name;
    }
 
    /**
     * Gets the retrained.
     *
     * Date and time in Coordinated Universal Time (UTC) that the classifier was updated. Returned when verbose=`true`.
     * Might not be returned by some requests. Identical to `updated` and retained for backward compatibility.
     *
     * @return the retrained
     */
    @AuraEnabled
    public Datetime getRetrained() {
      return retrained_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * Date and time in Coordinated Universal Time (UTC) that the classifier was most recently updated. The field
     * matches either `retrained` or `created`.  Returned when verbose=`true`. Might not be returned by some requests.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }

    /**
     * Sets the classifierId.
     *
     * @param classifierId the new classifierId
     */
    public void setClassifierId(final String classifierId) {
      this.classifier_id_serialized_name = classifierId;
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

    /**
     * Sets the coreMlEnabled.
     *
     * @param coreMlEnabled the new coreMlEnabled
     */
    public void setCoreMlEnabled(final Boolean coreMlEnabled) {
      this.core_ml_enabled_serialized_name = coreMlEnabled;
    }

    /**
     * Sets the explanation.
     *
     * @param explanation the new explanation
     */
    public void setExplanation(final String explanation) {
      this.explanation_serialized_name = explanation;
    }

    /**
     * Sets the created.
     *
     * @param created the new created
     */
    public void setCreated(final Datetime created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the classes.
     *
     * @param classes the new classes
     */
    public void setClasses(final List<ModelClass> classes) {
      this.classes_serialized_name = classes;
    }

    /**
     * Sets the retrained.
     *
     * @param retrained the new retrained
     */
    public void setRetrained(final Datetime retrained) {
      this.retrained_serialized_name = retrained;
    }

    /**
     * Sets the updated.
     *
     * @param updated the new updated
     */
    public void setUpdated(final Datetime updated) {
      this.updated_serialized_name = updated;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Classifier ret = (Classifier) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for classes
      List<ModelClass> newClasses = new List<ModelClass>();
      List<ModelClass> deserializedClasses = ret.getClasses();
      if (deserializedClasses != null) {
        for (Integer i = 0; i < deserializedClasses.size(); i++) {
          ModelClass currentItem = ret.getClasses().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('classes_serialized_name');
          ModelClass newItem = (ModelClass) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ModelClass.class);
          newClasses.add(newItem);
        }
        ret.setClasses(newClasses);
      }

      return ret;
    }
  }

  /**
   * Classifier and score combination.
   */
  public class ClassifierResult extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private String classifier_id_serialized_name;
    private List<ClassResult> classes_serialized_name;
 
    /**
     * Gets the name.
     *
     * Name of the classifier.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the classifierId.
     *
     * ID of a classifier identified in the image.
     *
     * @return the classifierId
     */
    @AuraEnabled
    public String getClassifierId() {
      return classifier_id_serialized_name;
    }
 
    /**
     * Gets the classes.
     *
     * Classes within the classifier.
     *
     * @return the classes
     */
    @AuraEnabled
    public List<ClassResult> getClasses() {
      return classes_serialized_name;
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
     * Sets the classifierId.
     *
     * @param classifierId the new classifierId
     */
    public void setClassifierId(final String classifierId) {
      this.classifier_id_serialized_name = classifierId;
    }

    /**
     * Sets the classes.
     *
     * @param classes the new classes
     */
    public void setClasses(final List<ClassResult> classes) {
      this.classes_serialized_name = classes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassifierResult ret = (ClassifierResult) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for classes
      List<ClassResult> newClasses = new List<ClassResult>();
      List<ClassResult> deserializedClasses = ret.getClasses();
      if (deserializedClasses != null) {
        for (Integer i = 0; i < deserializedClasses.size(); i++) {
          ClassResult currentItem = ret.getClasses().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('classes_serialized_name');
          ClassResult newItem = (ClassResult) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ClassResult.class);
          newClasses.add(newItem);
        }
        ret.setClasses(newClasses);
      }

      return ret;
    }
  }

  /**
   * A container for the list of classifiers.
   */
  public class Classifiers extends IBMWatsonResponseModel {
    private List<Classifier> classifiers_serialized_name;
 
    /**
     * Gets the classifiers.
     *
     * List of classifiers.
     *
     * @return the classifiers
     */
    @AuraEnabled
    public List<Classifier> getClassifiers() {
      return classifiers_serialized_name;
    }

    /**
     * Sets the classifiers.
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

      Classifiers ret = (Classifiers) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for classifiers
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
  public class ClassifyOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile imagesFile;
    private String imagesFilename;
    private String acceptLanguage;
    private String url;
    private Double threshold;
    private List<String> owners;
    private List<String> classifierIds;
    private String imagesFileContentType;
 
    /**
     * Gets the imagesFile.
     *
     * An image file (.jpg, .png) or .zip file with images. Maximum image size is 10 MB. Include no more than 20 images
     * and limit the .zip file to 100 MB. Encode the image and .zip file names in UTF-8 if they contain non-ASCII
     * characters. The service assumes UTF-8 encoding if it encounters non-ASCII characters.
     *
     * You can also include an image with the **url** parameter.
     *
     * @return the imagesFile
     */
    public IBMWatsonFile imagesFile() {
      return imagesFile;
    }
 
    /**
     * Gets the imagesFilename.
     *
     * The filename for imagesFile.
     *
     * @return the imagesFilename
     */
    public String imagesFilename() {
      return imagesFilename;
    }
 
    /**
     * Gets the acceptLanguage.
     *
     * The language of the output class names. The full set of languages is supported for the built-in classifier IDs:
     * `default`, `food`, and `explicit`. The class names of custom classifiers are not translated.
     *
     * The response might not be in the specified language when the requested language is not supported or when there is
     * no translation for the class name.
     *
     * @return the acceptLanguage
     */
    public String acceptLanguage() {
      return acceptLanguage;
    }
 
    /**
     * Gets the url.
     *
     * The URL of an image to analyze. Must be in .jpg, or .png format. The minimum recommended pixel density is 32X32
     * pixels per inch, and the maximum image size is 10 MB.
     *
     * You can also include images with the **images_file** parameter.
     *
     * @return the url
     */
    public String url() {
      return url;
    }
 
    /**
     * Gets the threshold.
     *
     * The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to ignore the
     * classification score and return all values.
     *
     * @return the threshold
     */
    public Double threshold() {
      return threshold;
    }
 
    /**
     * Gets the owners.
     *
     * The categories of classifiers to apply. Use `IBM` to classify against the `default` general classifier, and use
     * `me` to classify against your custom classifiers. To analyze the image against both classifier categories, set
     * the value to both `IBM` and `me`.
     *
     * The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.
     *
     * The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.
     *
     * @return the owners
     */
    public List<String> owners() {
      return owners;
    }
 
    /**
     * Gets the classifierIds.
     *
     * Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in
     * classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters
     * are empty.
     *
     * The following built-in classifier IDs require no training:
     * - `default`: Returns classes from thousands of general tags.
     * - `food`: Enhances specificity and accuracy for images of food items.
     * - `explicit`: Evaluates whether the image might be pornographic.
     *
     * @return the classifierIds
     */
    public List<String> classifierIds() {
      return classifierIds;
    }
 
    /**
     * Gets the imagesFileContentType.
     *
     * The content type of imagesFile.
     *
     * @return the imagesFileContentType
     */
    public String imagesFileContentType() {
      return imagesFileContentType;
    }

    private ClassifyOptions(ClassifyOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.imagesFile == null || builder.imagesFileContentType != null, 'content type cannot be null if file is not null');
      imagesFile = builder.imagesFile;
      imagesFilename = builder.imagesFilename;
      acceptLanguage = builder.acceptLanguage;
      url = builder.url;
      threshold = builder.threshold;
      owners = builder.owners;
      classifierIds = builder.classifierIds;
      imagesFileContentType = builder.imagesFileContentType;
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
    private IBMWatsonFile imagesFile;
    private String imagesFilename;
    private String acceptLanguage;
    private String url;
    private Double threshold;
    private List<String> owners;
    private List<String> classifierIds;
    private String imagesFileContentType;

    private ClassifyOptionsBuilder(ClassifyOptions classifyOptions) {
      imagesFile = classifyOptions.imagesFile;
      imagesFilename = classifyOptions.imagesFilename;
      acceptLanguage = classifyOptions.acceptLanguage;
      url = classifyOptions.url;
      threshold = classifyOptions.threshold;
      owners = classifyOptions.owners;
      classifierIds = classifyOptions.classifierIds;
      imagesFileContentType = classifyOptions.imagesFileContentType;
      this.requestHeaders.putAll(classifyOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ClassifyOptionsBuilder() {
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
     * Adds an owners to owners.
     *
     * @param owners the new owners
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder addOwners(String owners) {
      IBMWatsonValidator.notNull(owners, 'owners cannot be null');
      if (this.owners == null) {
        this.owners = new List<String>();
      }
      this.owners.add(owners);
      return this;
    }

    /**
     * Adds an classifierIds to classifierIds.
     *
     * @param classifierIds the new classifierIds
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder addClassifierIds(String classifierIds) {
      IBMWatsonValidator.notNull(classifierIds, 'classifierIds cannot be null');
      if (this.classifierIds == null) {
        this.classifierIds = new List<String>();
      }
      this.classifierIds.add(classifierIds);
      return this;
    }

    /**
     * Set the imagesFile.
     *
     * @param imagesFile the imagesFile
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder imagesFile(IBMWatsonFile imagesFile) {
      this.imagesFile = imagesFile;
      return this;
    }

    /**
     * Set the imagesFilename.
     *
     * @param imagesFilename the imagesFilename
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder imagesFilename(String imagesFilename) {
      this.imagesFilename = imagesFilename;
      return this;
    }

    /**
     * Set the acceptLanguage.
     *
     * @param acceptLanguage the acceptLanguage
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder acceptLanguage(String acceptLanguage) {
      this.acceptLanguage = acceptLanguage;
      return this;
    }

    /**
     * Set the url.
     *
     * @param url the url
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder url(String url) {
      this.url = url;
      return this;
    }

    /**
     * Set the threshold.
     *
     * @param threshold the threshold
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder threshold(Double threshold) {
      this.threshold = threshold;
      return this;
    }

    /**
     * Set the owners.
     * Existing owners will be replaced.
     *
     * @param owners the owners
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder owners(List<String> owners) {
      this.owners = owners;
      return this;
    }

    /**
     * Set the classifierIds.
     * Existing classifierIds will be replaced.
     *
     * @param classifierIds the classifierIds
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder classifierIds(List<String> classifierIds) {
      this.classifierIds = classifierIds;
      return this;
    }

    /**
     * Set the imagesFileContentType.
     *
     * @param imagesFileContentType the imagesFileContentType
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder imagesFileContentType(String imagesFileContentType) {
      this.imagesFileContentType = imagesFileContentType;
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
   * The createClassifier options.
   */
  public class CreateClassifierOptions extends IBMWatsonOptionsModel {
    private String name;
    private Map<String, IBMWatsonFile> positiveExamples;
    private Map<String, String> positiveExamplesFilename;
    private IBMWatsonFile negativeExamples;
    private String negativeExamplesFilename;
 
    /**
     * Gets the name.
     *
     * The name of the new classifier. Encode special characters in UTF-8.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the positiveExamples.
     *
     * A .zip file of images that depict the visual subject of a class in the new classifier. You can include more than
     * one positive example file in a call.
     *
     * Specify the parameter name by appending `_positive_examples` to the class name. For example,
     * `goldenretriever_positive_examples` creates the class **goldenretriever**.
     *
     * Include at least 10 images in .jpg or .png format. The minimum recommended image resolution is 32X32 pixels. The
     * maximum number of images is 10,000 images or 100 MB per .zip file.
     *
     * Encode special characters in the file name in UTF-8.
     *
     * @return the positiveExamples
     */
    public Map<String, IBMWatsonFile> positiveExamples() {
      return positiveExamples;
    }
 
    /**
     * Gets the positiveExamplesFilename.
     *
     * The filename for positiveExamples.
     *
     * @return the positiveExamplesFilename
     */
    public Map<String, String> positiveExamplesFilename() {
      return positiveExamplesFilename;
    }
 
    /**
     * Gets the negativeExamples.
     *
     * A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must
     * contain a minimum of 10 images.
     *
     * Encode special characters in the file name in UTF-8.
     *
     * @return the negativeExamples
     */
    public IBMWatsonFile negativeExamples() {
      return negativeExamples;
    }
 
    /**
     * Gets the negativeExamplesFilename.
     *
     * The filename for negativeExamples.
     *
     * @return the negativeExamplesFilename
     */
    public String negativeExamplesFilename() {
      return negativeExamplesFilename;
    }

    private CreateClassifierOptions(CreateClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name, 'name cannot be null');
      IBMWatsonValidator.isTrue(builder.negativeExamples == null || builder.negativeExamplesFilename != null, 'filename cannot be null if file is not null');
      IBMWatsonValidator.isTrue(builder.positiveExamples != null && !builder.positiveExamples.isEmpty(), 'positiveExamples cannot be null or empty');
      name = builder.name;
      positiveExamples = builder.positiveExamples;
      positiveExamplesFilename = builder.positiveExamplesFilename;
      negativeExamples = builder.negativeExamples;
      negativeExamplesFilename = builder.negativeExamplesFilename;
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
    private String name;
    private Map<String, IBMWatsonFile> positiveExamples;
    private Map<String, String> positiveExamplesFilename;
    private IBMWatsonFile negativeExamples;
    private String negativeExamplesFilename;

    private CreateClassifierOptionsBuilder(CreateClassifierOptions createClassifierOptions) {
      name = createClassifierOptions.name;
      positiveExamples = createClassifierOptions.positiveExamples;
      positiveExamplesFilename = createClassifierOptions.positiveExamplesFilename;
      negativeExamples = createClassifierOptions.negativeExamples;
      negativeExamplesFilename = createClassifierOptions.negativeExamplesFilename;
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
     * @param name the name
     */
    public CreateClassifierOptionsBuilder(String name) {
      this.name = name;
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
     * Adds an entry to the positiveExamples map.
     *
     * @param classname the key associated with the map entry to be added
     * @param positiveExamples the value associated with the map entry to be added
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder addPositiveExamples(String classname, IBMWatsonFile positiveExamples) {
      IBMWatsonValidator.notNull(classname, 'classname cannot be null');
      IBMWatsonValidator.notNull(positiveExamples, 'positiveExamples cannot be null');
      if (this.positiveExamples == null) {
        this.positiveExamples = new Map<String, IBMWatsonFile>();
      }
      this.positiveExamples.put(classname, positiveExamples);
      return this;
    }

    /**
     * Adds an entry to the positiveExamplesFilename map.
     *
     * @param classname the key associated with the map entry to be added
     * @param positiveExamplesFilename the value associated with the map entry to be added
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder addPositiveExamplesFilename(String classname, String positiveExamplesFilename) {
      IBMWatsonValidator.notNull(classname, 'classname cannot be null');
      IBMWatsonValidator.notNull(positiveExamplesFilename, 'positiveExamplesFilename cannot be null');
      if (this.positiveExamplesFilename == null) {
        this.positiveExamplesFilename = new Map<String, String>();
      }
      this.positiveExamplesFilename.put(classname, positiveExamplesFilename);
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the positiveExamples.
     * Existing positiveExamples map will be replaced.
     *
     * @param positiveExamples the positiveExamples
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder positiveExamples(Map<String, IBMWatsonFile> positiveExamples) {
      this.positiveExamples = positiveExamples;
      return this;
    }

    /**
     * Set the positiveExamplesFilename.
     * Existing positiveExamplesFilename map will be replaced.
     *
     * @param positiveExamplesFilename the positiveExamplesFilename
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder positiveExamplesFilename(Map<String, String> positiveExamplesFilename) {
      this.positiveExamplesFilename = positiveExamplesFilename;
      return this;
    }

    /**
     * Set the negativeExamples.
     *
     * @param negativeExamples the negativeExamples
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder negativeExamples(IBMWatsonFile negativeExamples) {
      this.negativeExamples = negativeExamples;
      return this;
    }

    /**
     * Set the negativeExamplesFilename.
     *
     * @param negativeExamplesFilename the negativeExamplesFilename
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder negativeExamplesFilename(String negativeExamplesFilename) {
      this.negativeExamplesFilename = negativeExamplesFilename;
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
    private String classifierId;
 
    /**
     * Gets the classifierId.
     *
     * The ID of the classifier.
     *
     * @return the classifierId
     */
    public String classifierId() {
      return classifierId;
    }

    private DeleteClassifierOptions(DeleteClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifierId, 'classifierId cannot be empty');
      classifierId = builder.classifierId;
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
    private String classifierId;

    private DeleteClassifierOptionsBuilder(DeleteClassifierOptions deleteClassifierOptions) {
      classifierId = deleteClassifierOptions.classifierId;
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
      this.classifierId = classifierId;
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
     * Set the classifierId.
     *
     * @param classifierId the classifierId
     * @return the DeleteClassifierOptions builder
     */
    public DeleteClassifierOptionsBuilder classifierId(String classifierId) {
      this.classifierId = classifierId;
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
   * The detectFaces options.
   */
  public class DetectFacesOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile imagesFile;
    private String imagesFilename;
    private String url;
    private String imagesFileContentType;
 
    /**
     * Gets the imagesFile.
     *
     * An image file (gif, .jpg, .png, .tif.) or .zip file with images. Limit the .zip file to 100 MB. You can include a
     * maximum of 15 images in a request.
     *
     * Encode the image and .zip file names in UTF-8 if they contain non-ASCII characters. The service assumes UTF-8
     * encoding if it encounters non-ASCII characters.
     *
     * You can also include an image with the **url** parameter.
     *
     * @return the imagesFile
     */
    public IBMWatsonFile imagesFile() {
      return imagesFile;
    }
 
    /**
     * Gets the imagesFilename.
     *
     * The filename for imagesFile.
     *
     * @return the imagesFilename
     */
    public String imagesFilename() {
      return imagesFilename;
    }
 
    /**
     * Gets the url.
     *
     * The URL of an image to analyze. Must be in .gif, .jpg, .png, or .tif format. The minimum recommended pixel
     * density is 32X32 pixels per inch, and the maximum image size is 10 MB. Redirects are followed, so you can use a
     * shortened URL.
     *
     * You can also include images with the **images_file** parameter.
     *
     * @return the url
     */
    public String url() {
      return url;
    }
 
    /**
     * Gets the imagesFileContentType.
     *
     * The content type of imagesFile.
     *
     * @return the imagesFileContentType
     */
    public String imagesFileContentType() {
      return imagesFileContentType;
    }

    private DetectFacesOptions(DetectFacesOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.imagesFile == null || builder.imagesFileContentType != null, 'content type cannot be null if file is not null');
      imagesFile = builder.imagesFile;
      imagesFilename = builder.imagesFilename;
      url = builder.url;
      imagesFileContentType = builder.imagesFileContentType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder newBuilder() {
      return new DetectFacesOptionsBuilder(this);
    }

  }

  /**
   * DetectFacesOptions Builder.
   */
  public class DetectFacesOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile imagesFile;
    private String imagesFilename;
    private String url;
    private String imagesFileContentType;

    private DetectFacesOptionsBuilder(DetectFacesOptions detectFacesOptions) {
      imagesFile = detectFacesOptions.imagesFile;
      imagesFilename = detectFacesOptions.imagesFilename;
      url = detectFacesOptions.url;
      imagesFileContentType = detectFacesOptions.imagesFileContentType;
      this.requestHeaders.putAll(detectFacesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DetectFacesOptionsBuilder() {
    }

    /**
     * Builds a DetectFacesOptions.
     *
     * @return the detectFacesOptions
     */
    public DetectFacesOptions build() {
      return new DetectFacesOptions(this);
    }

    /**
     * Set the imagesFile.
     *
     * @param imagesFile the imagesFile
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder imagesFile(IBMWatsonFile imagesFile) {
      this.imagesFile = imagesFile;
      return this;
    }

    /**
     * Set the imagesFilename.
     *
     * @param imagesFilename the imagesFilename
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder imagesFilename(String imagesFilename) {
      this.imagesFilename = imagesFilename;
      return this;
    }

    /**
     * Set the url.
     *
     * @param url the url
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder url(String url) {
      this.url = url;
      return this;
    }

    /**
     * Set the imagesFileContentType.
     *
     * @param imagesFileContentType the imagesFileContentType
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder imagesFileContentType(String imagesFileContentType) {
      this.imagesFileContentType = imagesFileContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Results for all faces.
   */
  public class DetectedFaces extends IBMWatsonResponseModel {
    private Long images_processed_serialized_name;
    private List<ImageWithFaces> images_serialized_name;
    private List<WarningInfo> warnings_serialized_name;
 
    /**
     * Gets the imagesProcessed.
     *
     * Number of images processed for the API call.
     *
     * @return the imagesProcessed
     */
    @AuraEnabled
    public Long getImagesProcessed() {
      return images_processed_serialized_name;
    }
 
    /**
     * Gets the images.
     *
     * The images.
     *
     * @return the images
     */
    @AuraEnabled
    public List<ImageWithFaces> getImages() {
      return images_serialized_name;
    }
 
    /**
     * Gets the warnings.
     *
     * Information about what might cause less than optimal output. For example, a request sent with a corrupt .zip file
     * and a list of image URLs will still complete, but does not return the expected output. Not returned when there is
     * no warning.
     *
     * @return the warnings
     */
    @AuraEnabled
    public List<WarningInfo> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the imagesProcessed.
     *
     * @param imagesProcessed the new imagesProcessed
     */
    public void setImagesProcessed(final long imagesProcessed) {
      this.images_processed_serialized_name = imagesProcessed;
    }

    /**
     * Sets the images.
     *
     * @param images the new images
     */
    public void setImages(final List<ImageWithFaces> images) {
      this.images_serialized_name = images;
    }

    /**
     * Sets the warnings.
     *
     * @param warnings the new warnings
     */
    public void setWarnings(final List<WarningInfo> warnings) {
      this.warnings_serialized_name = warnings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DetectedFaces ret = (DetectedFaces) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for images
      List<ImageWithFaces> newImages = new List<ImageWithFaces>();
      List<ImageWithFaces> deserializedImages = ret.getImages();
      if (deserializedImages != null) {
        for (Integer i = 0; i < deserializedImages.size(); i++) {
          ImageWithFaces currentItem = ret.getImages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('images_serialized_name');
          ImageWithFaces newItem = (ImageWithFaces) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ImageWithFaces.class);
          newImages.add(newItem);
        }
        ret.setImages(newImages);
      }

      // calling custom deserializer for warnings
      List<WarningInfo> newWarnings = new List<WarningInfo>();
      List<WarningInfo> deserializedWarnings = ret.getWarnings();
      if (deserializedWarnings != null) {
        for (Integer i = 0; i < deserializedWarnings.size(); i++) {
          WarningInfo currentItem = ret.getWarnings().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('warnings_serialized_name');
          WarningInfo newItem = (WarningInfo) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), WarningInfo.class);
          newWarnings.add(newItem);
        }
        ret.setWarnings(newWarnings);
      }

      return ret;
    }
  }

  /**
   * Information about what might have caused a failure, such as an image that is too large. Not returned when there is
   * no error.
   */
  public class ErrorInfo extends IBMWatsonResponseModel {
    private Long code_serialized_name;
    private String description_serialized_name;
    private String error_id_serialized_name;
 
    /**
     * Gets the code.
     *
     * HTTP status code.
     *
     * @return the code
     */
    @AuraEnabled
    public Long getCode() {
      return code_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * Human-readable error description. For example, `File size limit exceeded`.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the errorId.
     *
     * Codified error string. For example, `limit_exceeded`.
     *
     * @return the errorId
     */
    @AuraEnabled
    public String getErrorId() {
      return error_id_serialized_name;
    }

    /**
     * Sets the code.
     *
     * @param code the new code
     */
    public void setCode(final long code) {
      this.code_serialized_name = code;
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
     * Sets the errorId.
     *
     * @param errorId the new errorId
     */
    public void setErrorId(final String errorId) {
      this.error_id_serialized_name = errorId;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ErrorInfo ret = (ErrorInfo) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Information about the face.
   */
  public class Face extends IBMWatsonGenericModel {
    private FaceAge age_serialized_name;
    private FaceGender gender_serialized_name;
    private FaceLocation face_location_serialized_name;
 
    /**
     * Gets the age.
     *
     * Age information about a face.
     *
     * @return the age
     */
    @AuraEnabled
    public FaceAge getAge() {
      return age_serialized_name;
    }
 
    /**
     * Gets the gender.
     *
     * Information about the gender of the face.
     *
     * @return the gender
     */
    @AuraEnabled
    public FaceGender getGender() {
      return gender_serialized_name;
    }
 
    /**
     * Gets the faceLocation.
     *
     * The location of the bounding box around the face.
     *
     * @return the faceLocation
     */
    @AuraEnabled
    public FaceLocation getFaceLocation() {
      return face_location_serialized_name;
    }

    /**
     * Sets the age.
     *
     * @param age the new age
     */
    public void setAge(final FaceAge age) {
      this.age_serialized_name = age;
    }

    /**
     * Sets the gender.
     *
     * @param gender the new gender
     */
    public void setGender(final FaceGender gender) {
      this.gender_serialized_name = gender;
    }

    /**
     * Sets the faceLocation.
     *
     * @param faceLocation the new faceLocation
     */
    public void setFaceLocation(final FaceLocation faceLocation) {
      this.face_location_serialized_name = faceLocation;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Face ret = (Face) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for age
      FaceAge newAge = (FaceAge) new FaceAge().deserialize(JSON.serialize(ret.getAge()), (Map<String, Object>) jsonMap.get('age_serialized_name'), FaceAge.class);
      ret.setAge(newAge);

      // calling custom deserializer for gender
      FaceGender newGender = (FaceGender) new FaceGender().deserialize(JSON.serialize(ret.getGender()), (Map<String, Object>) jsonMap.get('gender_serialized_name'), FaceGender.class);
      ret.setGender(newGender);

      // calling custom deserializer for faceLocation
      FaceLocation newFaceLocation = (FaceLocation) new FaceLocation().deserialize(JSON.serialize(ret.getFaceLocation()), (Map<String, Object>) jsonMap.get('face_location_serialized_name'), FaceLocation.class);
      ret.setFaceLocation(newFaceLocation);

      return ret;
    }
  }

  /**
   * Age information about a face.
   */
  public class FaceAge extends IBMWatsonGenericModel {
    private Long min_serialized_name;
    private Long max_serialized_name;
    private Double score_serialized_name;
 
    /**
     * Gets the min.
     *
     * Estimated minimum age.
     *
     * @return the min
     */
    @AuraEnabled
    public Long getMin() {
      return min_serialized_name;
    }
 
    /**
     * Gets the max.
     *
     * Estimated maximum age.
     *
     * @return the max
     */
    @AuraEnabled
    public Long getMax() {
      return max_serialized_name;
    }
 
    /**
     * Gets the score.
     *
     * Confidence score in the range of 0 to 1. A higher score indicates greater confidence in the estimated value for
     * the property.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the min.
     *
     * @param min the new min
     */
    public void setMin(final long min) {
      this.min_serialized_name = min;
    }

    /**
     * Sets the max.
     *
     * @param max the new max
     */
    public void setMax(final long max) {
      this.max_serialized_name = max;
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      FaceAge ret = (FaceAge) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Information about the gender of the face.
   */
  public class FaceGender extends IBMWatsonGenericModel {
    private String gender_serialized_name;
    private Double score_serialized_name;
 
    /**
     * Gets the gender.
     *
     * Gender identified by the face. For example, `MALE` or `FEMALE`.
     *
     * @return the gender
     */
    @AuraEnabled
    public String getGender() {
      return gender_serialized_name;
    }
 
    /**
     * Gets the score.
     *
     * Confidence score in the range of 0 to 1. A higher score indicates greater confidence in the estimated value for
     * the property.
     *
     * @return the score
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the gender.
     *
     * @param gender the new gender
     */
    public void setGender(final String gender) {
      this.gender_serialized_name = gender;
    }

    /**
     * Sets the score.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      FaceGender ret = (FaceGender) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The location of the bounding box around the face.
   */
  public class FaceLocation extends IBMWatsonGenericModel {
    private Double width_serialized_name;
    private Double height_serialized_name;
    private Double left_serialized_name;
    private Double top_serialized_name;
 
    /**
     * Gets the width.
     *
     * Width in pixels of face region.
     *
     * @return the width
     */
    @AuraEnabled
    public Double getWidth() {
      return width_serialized_name;
    }
 
    /**
     * Gets the height.
     *
     * Height in pixels of face region.
     *
     * @return the height
     */
    @AuraEnabled
    public Double getHeight() {
      return height_serialized_name;
    }
 
    /**
     * Gets the left.
     *
     * X-position of top-left pixel of face region.
     *
     * @return the left
     */
    @AuraEnabled
    public Double getLeft() {
      return left_serialized_name;
    }
 
    /**
     * Gets the top.
     *
     * Y-position of top-left pixel of face region.
     *
     * @return the top
     */
    @AuraEnabled
    public Double getTop() {
      return top_serialized_name;
    }

    /**
     * Sets the width.
     *
     * @param width the new width
     */
    public void setWidth(final Double width) {
      this.width_serialized_name = width;
    }

    /**
     * Sets the height.
     *
     * @param height the new height
     */
    public void setHeight(final Double height) {
      this.height_serialized_name = height;
    }

    /**
     * Sets the left.
     *
     * @param left the new left
     */
    public void setLeft(final Double left) {
      this.left_serialized_name = left;
    }

    /**
     * Sets the top.
     *
     * @param top the new top
     */
    public void setTop(final Double top) {
      this.top_serialized_name = top;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      FaceLocation ret = (FaceLocation) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The getClassifier options.
   */
  public class GetClassifierOptions extends IBMWatsonOptionsModel {
    private String classifierId;
 
    /**
     * Gets the classifierId.
     *
     * The ID of the classifier.
     *
     * @return the classifierId
     */
    public String classifierId() {
      return classifierId;
    }

    private GetClassifierOptions(GetClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifierId, 'classifierId cannot be empty');
      classifierId = builder.classifierId;
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
    private String classifierId;

    private GetClassifierOptionsBuilder(GetClassifierOptions getClassifierOptions) {
      classifierId = getClassifierOptions.classifierId;
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
      this.classifierId = classifierId;
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
     * Set the classifierId.
     *
     * @param classifierId the classifierId
     * @return the GetClassifierOptions builder
     */
    public GetClassifierOptionsBuilder classifierId(String classifierId) {
      this.classifierId = classifierId;
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
   * The getCoreMlModel options.
   */
  public class GetCoreMlModelOptions extends IBMWatsonOptionsModel {
    private String classifierId;
 
    /**
     * Gets the classifierId.
     *
     * The ID of the classifier.
     *
     * @return the classifierId
     */
    public String classifierId() {
      return classifierId;
    }

    private GetCoreMlModelOptions(GetCoreMlModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifierId, 'classifierId cannot be empty');
      classifierId = builder.classifierId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetCoreMlModelOptions builder
     */
    public GetCoreMlModelOptionsBuilder newBuilder() {
      return new GetCoreMlModelOptionsBuilder(this);
    }

  }

  /**
   * GetCoreMlModelOptions Builder.
   */
  public class GetCoreMlModelOptionsBuilder extends IBMWatsonOptionsModel {
    private String classifierId;

    private GetCoreMlModelOptionsBuilder(GetCoreMlModelOptions getCoreMlModelOptions) {
      classifierId = getCoreMlModelOptions.classifierId;
      this.requestHeaders.putAll(getCoreMlModelOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetCoreMlModelOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifierId the classifierId
     */
    public GetCoreMlModelOptionsBuilder(String classifierId) {
      this.classifierId = classifierId;
    }

    /**
     * Builds a GetCoreMlModelOptions.
     *
     * @return the getCoreMlModelOptions
     */
    public GetCoreMlModelOptions build() {
      return new GetCoreMlModelOptions(this);
    }

    /**
     * Set the classifierId.
     *
     * @param classifierId the classifierId
     * @return the GetCoreMlModelOptions builder
     */
    public GetCoreMlModelOptionsBuilder classifierId(String classifierId) {
      this.classifierId = classifierId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetCoreMlModelOptions builder
     */
    public GetCoreMlModelOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Information about faces in the image.
   */
  public class ImageWithFaces extends IBMWatsonGenericModel {
    private List<Face> faces_serialized_name;
    private String image_serialized_name;
    private String source_url_serialized_name;
    private String resolved_url_serialized_name;
    private ErrorInfo error_serialized_name;
 
    /**
     * Gets the faces.
     *
     * Faces detected in the images.
     *
     * @return the faces
     */
    @AuraEnabled
    public List<Face> getFaces() {
      return faces_serialized_name;
    }
 
    /**
     * Gets the image.
     *
     * Relative path of the image file if uploaded directly. Not returned when the image is passed by URL.
     *
     * @return the image
     */
    @AuraEnabled
    public String getImage() {
      return image_serialized_name;
    }
 
    /**
     * Gets the sourceUrl.
     *
     * Source of the image before any redirects. Not returned when the image is uploaded.
     *
     * @return the sourceUrl
     */
    @AuraEnabled
    public String getSourceUrl() {
      return source_url_serialized_name;
    }
 
    /**
     * Gets the resolvedUrl.
     *
     * Fully resolved URL of the image after redirects are followed. Not returned when the image is uploaded.
     *
     * @return the resolvedUrl
     */
    @AuraEnabled
    public String getResolvedUrl() {
      return resolved_url_serialized_name;
    }
 
    /**
     * Gets the error.
     *
     * Information about what might have caused a failure, such as an image that is too large. Not returned when there
     * is no error.
     *
     * @return the error
     */
    @AuraEnabled
    public ErrorInfo getError() {
      return error_serialized_name;
    }

    /**
     * Sets the faces.
     *
     * @param faces the new faces
     */
    public void setFaces(final List<Face> faces) {
      this.faces_serialized_name = faces;
    }

    /**
     * Sets the image.
     *
     * @param image the new image
     */
    public void setImage(final String image) {
      this.image_serialized_name = image;
    }

    /**
     * Sets the sourceUrl.
     *
     * @param sourceUrl the new sourceUrl
     */
    public void setSourceUrl(final String sourceUrl) {
      this.source_url_serialized_name = sourceUrl;
    }

    /**
     * Sets the resolvedUrl.
     *
     * @param resolvedUrl the new resolvedUrl
     */
    public void setResolvedUrl(final String resolvedUrl) {
      this.resolved_url_serialized_name = resolvedUrl;
    }

    /**
     * Sets the error.
     *
     * @param error the new error
     */
    public void setError(final ErrorInfo error) {
      this.error_serialized_name = error;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ImageWithFaces ret = (ImageWithFaces) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for faces
      List<Face> newFaces = new List<Face>();
      List<Face> deserializedFaces = ret.getFaces();
      if (deserializedFaces != null) {
        for (Integer i = 0; i < deserializedFaces.size(); i++) {
          Face currentItem = ret.getFaces().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('faces_serialized_name');
          Face newItem = (Face) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Face.class);
          newFaces.add(newItem);
        }
        ret.setFaces(newFaces);
      }

      // calling custom deserializer for error
      ErrorInfo newError = (ErrorInfo) new ErrorInfo().deserialize(JSON.serialize(ret.getError()), (Map<String, Object>) jsonMap.get('error_serialized_name'), ErrorInfo.class);
      ret.setError(newError);

      return ret;
    }
  }

  /**
   * The listClassifiers options.
   */
  public class ListClassifiersOptions extends IBMWatsonOptionsModel {
    private Boolean verbose;
 
    /**
     * Gets the verbose.
     *
     * Specify `true` to return details about the classifiers. Omit this parameter to return a brief list of
     * classifiers.
     *
     * @return the verbose
     */
    public Boolean verbose() {
      return verbose;
    }

    private ListClassifiersOptions(ListClassifiersOptionsBuilder builder) {
      verbose = builder.verbose;
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
    private Boolean verbose;

    private ListClassifiersOptionsBuilder(ListClassifiersOptions listClassifiersOptions) {
      verbose = listClassifiersOptions.verbose;
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
     * Set the verbose.
     *
     * @param verbose the verbose
     * @return the ListClassifiersOptions builder
     */
    public ListClassifiersOptionsBuilder verbose(Boolean verbose) {
      this.verbose = verbose;
      return this;
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

  /**
   * The updateClassifier options.
   */
  public class UpdateClassifierOptions extends IBMWatsonOptionsModel {
    private String classifierId;
    private Map<String, IBMWatsonFile> positiveExamples;
    private Map<String, String> positiveExamplesFilename;
    private IBMWatsonFile negativeExamples;
    private String negativeExamplesFilename;
 
    /**
     * Gets the classifierId.
     *
     * The ID of the classifier.
     *
     * @return the classifierId
     */
    public String classifierId() {
      return classifierId;
    }
 
    /**
     * Gets the positiveExamples.
     *
     * A .zip file of images that depict the visual subject of a class in the classifier. The positive examples create
     * or update classes in the classifier. You can include more than one positive example file in a call.
     *
     * Specify the parameter name by appending `_positive_examples` to the class name. For example,
     * `goldenretriever_positive_examples` creates the class `goldenretriever`.
     *
     * Include at least 10 images in .jpg or .png format. The minimum recommended image resolution is 32X32 pixels. The
     * maximum number of images is 10,000 images or 100 MB per .zip file.
     *
     * Encode special characters in the file name in UTF-8.
     *
     * @return the positiveExamples
     */
    public Map<String, IBMWatsonFile> positiveExamples() {
      return positiveExamples;
    }
 
    /**
     * Gets the positiveExamplesFilename.
     *
     * The filename for positiveExamples.
     *
     * @return the positiveExamplesFilename
     */
    public Map<String, String> positiveExamplesFilename() {
      return positiveExamplesFilename;
    }
 
    /**
     * Gets the negativeExamples.
     *
     * A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must
     * contain a minimum of 10 images.
     *
     * Encode special characters in the file name in UTF-8.
     *
     * @return the negativeExamples
     */
    public IBMWatsonFile negativeExamples() {
      return negativeExamples;
    }
 
    /**
     * Gets the negativeExamplesFilename.
     *
     * The filename for negativeExamples.
     *
     * @return the negativeExamplesFilename
     */
    public String negativeExamplesFilename() {
      return negativeExamplesFilename;
    }

    private UpdateClassifierOptions(UpdateClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifierId, 'classifierId cannot be empty');
      IBMWatsonValidator.isTrue(builder.negativeExamples == null || builder.negativeExamplesFilename != null, 'filename cannot be null if file is not null');
      classifierId = builder.classifierId;
      positiveExamples = builder.positiveExamples;
      positiveExamplesFilename = builder.positiveExamplesFilename;
      negativeExamples = builder.negativeExamples;
      negativeExamplesFilename = builder.negativeExamplesFilename;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder newBuilder() {
      return new UpdateClassifierOptionsBuilder(this);
    }

  }

  /**
   * UpdateClassifierOptions Builder.
   */
  public class UpdateClassifierOptionsBuilder extends IBMWatsonOptionsModel {
    private String classifierId;
    private Map<String, IBMWatsonFile> positiveExamples;
    private Map<String, String> positiveExamplesFilename;
    private IBMWatsonFile negativeExamples;
    private String negativeExamplesFilename;

    private UpdateClassifierOptionsBuilder(UpdateClassifierOptions updateClassifierOptions) {
      classifierId = updateClassifierOptions.classifierId;
      positiveExamples = updateClassifierOptions.positiveExamples;
      positiveExamplesFilename = updateClassifierOptions.positiveExamplesFilename;
      negativeExamples = updateClassifierOptions.negativeExamples;
      negativeExamplesFilename = updateClassifierOptions.negativeExamplesFilename;
      this.requestHeaders.putAll(updateClassifierOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateClassifierOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param classifierId the classifierId
     */
    public UpdateClassifierOptionsBuilder(String classifierId) {
      this.classifierId = classifierId;
    }

    /**
     * Builds a UpdateClassifierOptions.
     *
     * @return the updateClassifierOptions
     */
    public UpdateClassifierOptions build() {
      return new UpdateClassifierOptions(this);
    }

    /**
     * Adds an entry to the positiveExamples map.
     *
     * @param classname the key associated with the map entry to be added
     * @param positiveExamples the value associated with the map entry to be added
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder addPositiveExamples(String classname, IBMWatsonFile positiveExamples) {
      IBMWatsonValidator.notNull(classname, 'classname cannot be null');
      IBMWatsonValidator.notNull(positiveExamples, 'positiveExamples cannot be null');
      if (this.positiveExamples == null) {
        this.positiveExamples = new Map<String, IBMWatsonFile>();
      }
      this.positiveExamples.put(classname, positiveExamples);
      return this;
    }

    /**
     * Adds an entry to the positiveExamplesFilename map.
     *
     * @param classname the key associated with the map entry to be added
     * @param positiveExamplesFilename the value associated with the map entry to be added
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder addPositiveExamplesFilename(String classname, String positiveExamplesFilename) {
      IBMWatsonValidator.notNull(classname, 'classname cannot be null');
      IBMWatsonValidator.notNull(positiveExamplesFilename, 'positiveExamplesFilename cannot be null');
      if (this.positiveExamplesFilename == null) {
        this.positiveExamplesFilename = new Map<String, String>();
      }
      this.positiveExamplesFilename.put(classname, positiveExamplesFilename);
      return this;
    }

    /**
     * Set the classifierId.
     *
     * @param classifierId the classifierId
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder classifierId(String classifierId) {
      this.classifierId = classifierId;
      return this;
    }

    /**
     * Set the positiveExamples.
     * Existing positiveExamples map will be replaced.
     *
     * @param positiveExamples the positiveExamples
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder positiveExamples(Map<String, IBMWatsonFile> positiveExamples) {
      this.positiveExamples = positiveExamples;
      return this;
    }

    /**
     * Set the positiveExamplesFilename.
     * Existing positiveExamplesFilename map will be replaced.
     *
     * @param positiveExamplesFilename the positiveExamplesFilename
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder positiveExamplesFilename(Map<String, String> positiveExamplesFilename) {
      this.positiveExamplesFilename = positiveExamplesFilename;
      return this;
    }

    /**
     * Set the negativeExamples.
     *
     * @param negativeExamples the negativeExamples
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder negativeExamples(IBMWatsonFile negativeExamples) {
      this.negativeExamples = negativeExamples;
      return this;
    }

    /**
     * Set the negativeExamplesFilename.
     *
     * @param negativeExamplesFilename the negativeExamplesFilename
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder negativeExamplesFilename(String negativeExamplesFilename) {
      this.negativeExamplesFilename = negativeExamplesFilename;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Information about something that went wrong.
   */
  public class WarningInfo extends IBMWatsonGenericModel {
    private String warning_id_serialized_name;
    private String description_serialized_name;
 
    /**
     * Gets the warningId.
     *
     * Codified warning string, such as `limit_reached`.
     *
     * @return the warningId
     */
    @AuraEnabled
    public String getWarningId() {
      return warning_id_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * Information about the error.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }

    /**
     * Sets the warningId.
     *
     * @param warningId the new warningId
     */
    public void setWarningId(final String warningId) {
      this.warning_id_serialized_name = warningId;
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

      WarningInfo ret = (WarningInfo) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

}
