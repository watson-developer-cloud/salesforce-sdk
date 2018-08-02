public class IBMVisualRecognitionV3Models {
  /**
   * A category within a classifier.
   */
  public class ModelClass extends IBMWatsonGenericModel {
    private String class_serialized_name;
    /**
     * Gets the class_serialized_name.
     *
     * The name of the class.
     *
     * @return the class_serialized_name
     */
    @AuraEnabled
    public String getClass() {
      return class_serialized_name;
    }

    /**
     * Sets the class_serialized_name.
     *
     * @param classVar the new classVar
     */
    public void setClass(final String classVar) {
      this.class_serialized_name = classVar;
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
     * Gets the class_serialized_name.
     *
     * Name of the class.
     *
     * @return the class_serialized_name
     */
    @AuraEnabled
    public String getClass() {
      return class_serialized_name;
    }
    /**
     * Gets the score_serialized_name.
     *
     * Confidence score for the property in the range of 0 to 1. A higher score indicates greater likelihood that the
     * class is depicted in the image. The default threshold for returning scores from a classifier is 0.5.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }
    /**
     * Gets the type_hierarchy_serialized_name.
     *
     * Knowledge graph of the property. For example, `/fruit/pome/apple/eating apple/Granny Smith`. Included only if
     * identified.
     *
     * @return the type_hierarchy_serialized_name
     */
    @AuraEnabled
    public String getTypeHierarchy() {
      return type_hierarchy_serialized_name;
    }

    /**
     * Sets the class_serialized_name.
     *
     * @param classVar the new classVar
     */
    public void setClass(final String classVar) {
      this.class_serialized_name = classVar;
    }

    /**
     * Sets the score_serialized_name.
     *
     * @param score the new score
     */
    public void setScore(final Double score) {
      this.score_serialized_name = score;
    }

    /**
     * Sets the type_hierarchy_serialized_name.
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
     * Gets the source_url_serialized_name.
     *
     * Source of the image before any redirects. Not returned when the image is uploaded.
     *
     * @return the source_url_serialized_name
     */
    @AuraEnabled
    public String getSourceUrl() {
      return source_url_serialized_name;
    }
    /**
     * Gets the resolved_url_serialized_name.
     *
     * Fully resolved URL of the image after redirects are followed. Not returned when the image is uploaded.
     *
     * @return the resolved_url_serialized_name
     */
    @AuraEnabled
    public String getResolvedUrl() {
      return resolved_url_serialized_name;
    }
    /**
     * Gets the image_serialized_name.
     *
     * Relative path of the image file if uploaded directly. Not returned when the image is passed by URL.
     *
     * @return the image_serialized_name
     */
    @AuraEnabled
    public String getImage() {
      return image_serialized_name;
    }
    /**
     * Gets the error_serialized_name.
     *
     * @return the error_serialized_name
     */
    @AuraEnabled
    public ErrorInfo getError() {
      return error_serialized_name;
    }
    /**
     * Gets the classifiers_serialized_name.
     *
     * The classifiers.
     *
     * @return the classifiers_serialized_name
     */
    @AuraEnabled
    public List<ClassifierResult> getClassifiers() {
      return classifiers_serialized_name;
    }

    /**
     * Sets the source_url_serialized_name.
     *
     * @param sourceUrl the new sourceUrl
     */
    public void setSourceUrl(final String sourceUrl) {
      this.source_url_serialized_name = sourceUrl;
    }

    /**
     * Sets the resolved_url_serialized_name.
     *
     * @param resolvedUrl the new resolvedUrl
     */
    public void setResolvedUrl(final String resolvedUrl) {
      this.resolved_url_serialized_name = resolvedUrl;
    }

    /**
     * Sets the image_serialized_name.
     *
     * @param image the new image
     */
    public void setImage(final String image) {
      this.image_serialized_name = image;
    }

    /**
     * Sets the error_serialized_name.
     *
     * @param error the new error
     */
    public void setError(final ErrorInfo error) {
      this.error_serialized_name = error;
    }

    /**
     * Sets the classifiers_serialized_name.
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

      // calling custom deserializer for error_serialized_name
      ErrorInfo newError = (ErrorInfo) new ErrorInfo().deserialize(JSON.serialize(ret.getError()), (Map<String, Object>) jsonMap.get('error_serialized_name'), ErrorInfo.class);
      ret.setError(newError);

      // calling custom deserializer for classifiers_serialized_name
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
     * Gets the custom_classes_serialized_name.
     *
     * Number of custom classes identified in the images.
     *
     * @return the custom_classes_serialized_name
     */
    @AuraEnabled
    public Long getCustomClasses() {
      return custom_classes_serialized_name;
    }
    /**
     * Gets the images_processed_serialized_name.
     *
     * Number of images processed for the API call.
     *
     * @return the images_processed_serialized_name
     */
    @AuraEnabled
    public Long getImagesProcessed() {
      return images_processed_serialized_name;
    }
    /**
     * Gets the images_serialized_name.
     *
     * Classified images.
     *
     * @return the images_serialized_name
     */
    @AuraEnabled
    public List<ClassifiedImage> getImages() {
      return images_serialized_name;
    }
    /**
     * Gets the warnings_serialized_name.
     *
     * Information about what might cause less than optimal output. For example, a request sent with a corrupt .zip file
     * and a list of image URLs will still complete, but does not return the expected output. Not returned when there is
     * no warning.
     *
     * @return the warnings_serialized_name
     */
    @AuraEnabled
    public List<WarningInfo> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the custom_classes_serialized_name.
     *
     * @param customClasses the new customClasses
     */
    public void setCustomClasses(final long customClasses) {
      this.custom_classes_serialized_name = customClasses;
    }

    /**
     * Sets the images_processed_serialized_name.
     *
     * @param imagesProcessed the new imagesProcessed
     */
    public void setImagesProcessed(final long imagesProcessed) {
      this.images_processed_serialized_name = imagesProcessed;
    }

    /**
     * Sets the images_serialized_name.
     *
     * @param images the new images
     */
    public void setImages(final List<ClassifiedImage> images) {
      this.images_serialized_name = images;
    }

    /**
     * Sets the warnings_serialized_name.
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

      // calling custom deserializer for images_serialized_name
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

      // calling custom deserializer for warnings_serialized_name
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
     * Gets the classifier_id_serialized_name.
     *
     * ID of a classifier identified in the image.
     *
     * @return the classifier_id_serialized_name
     */
    @AuraEnabled
    public String getClassifierId() {
      return classifier_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * Name of the classifier.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the owner_serialized_name.
     *
     * Unique ID of the account who owns the classifier. Returned when verbose=`true`. Might not be returned by some
     * requests.
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
     * Training status of classifier.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the core_ml_enabled_serialized_name.
     *
     * Whether the classifier can be downloaded as a Core ML model after the training status is `ready`.
     *
     * @return the core_ml_enabled_serialized_name
     */
    @AuraEnabled
    public Boolean getCoreMlEnabled() {
      return core_ml_enabled_serialized_name;
    }
    /**
     * Gets the explanation_serialized_name.
     *
     * If classifier training has failed, this field may explain why.
     *
     * @return the explanation_serialized_name
     */
    @AuraEnabled
    public String getExplanation() {
      return explanation_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * Date and time in Coordinated Universal Time (UTC) that the classifier was created.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the classes_serialized_name.
     *
     * Classes that define a classifier.
     *
     * @return the classes_serialized_name
     */
    @AuraEnabled
    public List<ModelClass> getClasses() {
      return classes_serialized_name;
    }
    /**
     * Gets the retrained_serialized_name.
     *
     * Date and time in Coordinated Universal Time (UTC) that the classifier was updated. Returned when verbose=`true`.
     * Might not be returned by some requests. Identical to `updated` and retained for backward compatibility.
     *
     * @return the retrained_serialized_name
     */
    @AuraEnabled
    public Datetime getRetrained() {
      return retrained_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * Date and time in Coordinated Universal Time (UTC) that the classifier was most recently updated. The field
     * matches either `retrained` or `created`.  Returned when verbose=`true`. Might not be returned by some requests.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
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
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
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

    /**
     * Sets the core_ml_enabled_serialized_name.
     *
     * @param coreMlEnabled the new coreMlEnabled
     */
    public void setCoreMlEnabled(final Boolean coreMlEnabled) {
      this.core_ml_enabled_serialized_name = coreMlEnabled;
    }

    /**
     * Sets the explanation_serialized_name.
     *
     * @param explanation the new explanation
     */
    public void setExplanation(final String explanation) {
      this.explanation_serialized_name = explanation;
    }

    /**
     * Sets the created_serialized_name.
     *
     * @param created the new created
     */
    public void setCreated(final Datetime created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the classes_serialized_name.
     *
     * @param classes the new classes
     */
    public void setClasses(final List<ModelClass> classes) {
      this.classes_serialized_name = classes;
    }

    /**
     * Sets the retrained_serialized_name.
     *
     * @param retrained the new retrained
     */
    public void setRetrained(final Datetime retrained) {
      this.retrained_serialized_name = retrained;
    }

    /**
     * Sets the updated_serialized_name.
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

      // calling custom deserializer for classes_serialized_name
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
     * Gets the name_serialized_name.
     *
     * Name of the classifier.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the classifier_id_serialized_name.
     *
     * ID of a classifier identified in the image.
     *
     * @return the classifier_id_serialized_name
     */
    @AuraEnabled
    public String getClassifierId() {
      return classifier_id_serialized_name;
    }
    /**
     * Gets the classes_serialized_name.
     *
     * Classes within the classifier.
     *
     * @return the classes_serialized_name
     */
    @AuraEnabled
    public List<ClassResult> getClasses() {
      return classes_serialized_name;
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
     * Sets the classifier_id_serialized_name.
     *
     * @param classifierId the new classifierId
     */
    public void setClassifierId(final String classifierId) {
      this.classifier_id_serialized_name = classifierId;
    }

    /**
     * Sets the classes_serialized_name.
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

      // calling custom deserializer for classes_serialized_name
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
     * Gets the classifiers_serialized_name.
     *
     * List of classifiers.
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

      Classifiers ret = (Classifiers) super.deserialize(jsonString, jsonMap, classType);

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
  public class ClassifyOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile images_file_serialized_name;
    private String images_filename_serialized_name;
    private String accept_language_serialized_name;
    private String url_serialized_name;
    private Double threshold_serialized_name;
    private List<String> owners_serialized_name;
    private List<String> classifier_ids_serialized_name;
    private String images_file_content_type_serialized_name;
    /**
     * Gets the images_file_serialized_name.
     *
     * An image file (.jpg, .png) or .zip file with images. Maximum image size is 10 MB. Include no more than 20 images
     * and limit the .zip file to 100 MB. Encode the image and .zip file names in UTF-8 if they contain non-ASCII
     * characters. The service assumes UTF-8 encoding if it encounters non-ASCII characters.
     *
     * You can also include an image with the **url** parameter.
     *
     * @return the images_file_serialized_name
     */
    public IBMWatsonFile imagesFile() {
      return images_file_serialized_name;
    }
    /**
     * Gets the images_filename_serialized_name.
     *
     * The filename for images_file.
     *
     * @return the images_filename_serialized_name
     */
    public String imagesFilename() {
      return images_filename_serialized_name;
    }
    /**
     * Gets the accept_language_serialized_name.
     *
     * The language of the output class names. The full set of languages is supported for the built-in classifier IDs:
     * `default`, `food`, and `explicit`. The class names of custom classifiers are not translated.
     *
     * The response might not be in the specified language when the requested language is not supported or when there is
     * no translation for the class name.
     *
     * @return the accept_language_serialized_name
     */
    public String acceptLanguage() {
      return accept_language_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * The URL of an image to analyze. Must be in .jpg, or .png format. The minimum recommended pixel density is 32X32
     * pixels per inch, and the maximum image size is 10 MB.
     *
     * You can also include images with the **images_file** parameter.
     *
     * @return the url_serialized_name
     */
    public String url() {
      return url_serialized_name;
    }
    /**
     * Gets the threshold_serialized_name.
     *
     * The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to ignore the
     * classification score and return all values.
     *
     * @return the threshold_serialized_name
     */
    public Double threshold() {
      return threshold_serialized_name;
    }
    /**
     * Gets the owners_serialized_name.
     *
     * The categories of classifiers to apply. Use `IBM` to classify against the `default` general classifier, and use
     * `me` to classify against your custom classifiers. To analyze the image against both classifier categories, set
     * the value to both `IBM` and `me`.
     *
     * The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.
     *
     * The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.
     *
     * @return the owners_serialized_name
     */
    public List<String> owners() {
      return owners_serialized_name;
    }
    /**
     * Gets the classifier_ids_serialized_name.
     *
     * Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in
     * classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters
     * are empty.
     *
     * The following built-in classifier IDs require no training:
     * - `default`: Returns classes from thousands of general tags.
     * - `food`: (Beta) Enhances specificity and accuracy for images of food items.
     * - `explicit`: (Beta) Evaluates whether the image might be pornographic.
     *
     * @return the classifier_ids_serialized_name
     */
    public List<String> classifierIds() {
      return classifier_ids_serialized_name;
    }
    /**
     * Gets the images_file_content_type_serialized_name.
     *
     * The content type of images_file.
     *
     * @return the images_file_content_type_serialized_name
     */
    public String imagesFileContentType() {
      return images_file_content_type_serialized_name;
    }
    private ClassifyOptions(ClassifyOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.images_file_serialized_name == null || builder.images_file_content_type_serialized_name != null, 'content type cannot be null if file is not null');
      images_file_serialized_name = builder.images_file_serialized_name;
      images_filename_serialized_name = builder.images_filename_serialized_name;
      accept_language_serialized_name = builder.accept_language_serialized_name;
      url_serialized_name = builder.url_serialized_name;
      threshold_serialized_name = builder.threshold_serialized_name;
      owners_serialized_name = builder.owners_serialized_name;
      classifier_ids_serialized_name = builder.classifier_ids_serialized_name;
      images_file_content_type_serialized_name = builder.images_file_content_type_serialized_name;
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
    private IBMWatsonFile images_file_serialized_name;
    private String images_filename_serialized_name;
    private String accept_language_serialized_name;
    private String url_serialized_name;
    private Double threshold_serialized_name;
    private List<String> owners_serialized_name;
    private List<String> classifier_ids_serialized_name;
    private String images_file_content_type_serialized_name;

    private ClassifyOptionsBuilder(ClassifyOptions classifyOptions) {
      images_file_serialized_name = classifyOptions.images_file_serialized_name;
      images_filename_serialized_name = classifyOptions.images_filename_serialized_name;
      accept_language_serialized_name = classifyOptions.accept_language_serialized_name;
      url_serialized_name = classifyOptions.url_serialized_name;
      threshold_serialized_name = classifyOptions.threshold_serialized_name;
      owners_serialized_name = classifyOptions.owners_serialized_name;
      classifier_ids_serialized_name = classifyOptions.classifier_ids_serialized_name;
      images_file_content_type_serialized_name = classifyOptions.images_file_content_type_serialized_name;
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
     * Adds an owners to owners_serialized_name.
     *
     * @param owners the new owners
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder addOwners(String owners) {
      IBMWatsonValidator.notNull(owners, 'owners cannot be null');
      if (this.owners_serialized_name == null) {
        this.owners_serialized_name = new List<String>();
      }
      this.owners_serialized_name.add(owners);
      return this;
    }

    /**
     * Adds an classifierIds to classifier_ids_serialized_name.
     *
     * @param classifierIds the new classifierIds
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder addClassifierIds(String classifierIds) {
      IBMWatsonValidator.notNull(classifierIds, 'classifierIds cannot be null');
      if (this.classifier_ids_serialized_name == null) {
        this.classifier_ids_serialized_name = new List<String>();
      }
      this.classifier_ids_serialized_name.add(classifierIds);
      return this;
    }

    /**
     * Set the images_file_serialized_name.
     *
     * @param imagesFile the imagesFile
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder imagesFile(IBMWatsonFile imagesFile) {
      this.images_file_serialized_name = imagesFile;
      return this;
    }

    /**
     * Set the images_filename_serialized_name.
     *
     * @param imagesFilename the imagesFilename
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder imagesFilename(String imagesFilename) {
      this.images_filename_serialized_name = imagesFilename;
      return this;
    }

    /**
     * Set the accept_language_serialized_name.
     *
     * @param acceptLanguage the acceptLanguage
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder acceptLanguage(String acceptLanguage) {
      this.accept_language_serialized_name = acceptLanguage;
      return this;
    }

    /**
     * Set the url_serialized_name.
     *
     * @param url the url
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder url(String url) {
      this.url_serialized_name = url;
      return this;
    }

    /**
     * Set the threshold_serialized_name.
     *
     * @param threshold the threshold
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder threshold(Double threshold) {
      this.threshold_serialized_name = threshold;
      return this;
    }

    /**
     * Set the owners_serialized_name.
     * Existing owners_serialized_name will be replaced.
     *
     * @param owners the owners
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder owners(List<String> owners) {
      this.owners_serialized_name = owners;
      return this;
    }

    /**
     * Set the classifier_ids_serialized_name.
     * Existing classifier_ids_serialized_name will be replaced.
     *
     * @param classifierIds the classifierIds
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder classifierIds(List<String> classifierIds) {
      this.classifier_ids_serialized_name = classifierIds;
      return this;
    }

    /**
     * Set the images_file_content_type_serialized_name.
     *
     * @param imagesFileContentType the imagesFileContentType
     * @return the ClassifyOptions builder
     */
    public ClassifyOptionsBuilder imagesFileContentType(String imagesFileContentType) {
      this.images_file_content_type_serialized_name = imagesFileContentType;
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
    private String name_serialized_name;
    private IBMWatsonFile classname_positive_examples_serialized_name;
    private String classname_positive_examples_filename_serialized_name;
    private IBMWatsonFile negative_examples_serialized_name;
    private String negative_examples_filename_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * The name of the new classifier. Encode special characters in UTF-8.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the classname_positive_examples_serialized_name.
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
     * @return the classname_positive_examples_serialized_name
     */
    public IBMWatsonFile classnamePositiveExamples() {
      return classname_positive_examples_serialized_name;
    }
    /**
     * Gets the classname_positive_examples_filename_serialized_name.
     *
     * The filename for classname_positive_examples.
     *
     * @return the classname_positive_examples_filename_serialized_name
     */
    public String classnamePositiveExamplesFilename() {
      return classname_positive_examples_filename_serialized_name;
    }
    /**
     * Gets the negative_examples_serialized_name.
     *
     * A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must
     * contain a minimum of 10 images.
     *
     * Encode special characters in the file name in UTF-8.
     *
     * @return the negative_examples_serialized_name
     */
    public IBMWatsonFile negativeExamples() {
      return negative_examples_serialized_name;
    }
    /**
     * Gets the negative_examples_filename_serialized_name.
     *
     * The filename for negative_examples.
     *
     * @return the negative_examples_filename_serialized_name
     */
    public String negativeExamplesFilename() {
      return negative_examples_filename_serialized_name;
    }
    private CreateClassifierOptions(CreateClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.name_serialized_name, 'name_serialized_name cannot be null');
      IBMWatsonValidator.notNull(builder.classname_positive_examples_serialized_name, 'classname_positive_examples_serialized_name cannot be null');
      IBMWatsonValidator.isTrue(builder.negative_examples_serialized_name == null || builder.negative_examples_filename_serialized_name != null, 'filename cannot be null if file is not null');
      name_serialized_name = builder.name_serialized_name;
      classname_positive_examples_serialized_name = builder.classname_positive_examples_serialized_name;
      classname_positive_examples_filename_serialized_name = builder.classname_positive_examples_filename_serialized_name;
      negative_examples_serialized_name = builder.negative_examples_serialized_name;
      negative_examples_filename_serialized_name = builder.negative_examples_filename_serialized_name;
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
    private String name_serialized_name;
    private IBMWatsonFile classname_positive_examples_serialized_name;
    private String classname_positive_examples_filename_serialized_name;
    private IBMWatsonFile negative_examples_serialized_name;
    private String negative_examples_filename_serialized_name;

    private CreateClassifierOptionsBuilder(CreateClassifierOptions createClassifierOptions) {
      name_serialized_name = createClassifierOptions.name_serialized_name;
      classname_positive_examples_serialized_name = createClassifierOptions.classname_positive_examples_serialized_name;
      classname_positive_examples_filename_serialized_name = createClassifierOptions.classname_positive_examples_filename_serialized_name;
      negative_examples_serialized_name = createClassifierOptions.negative_examples_serialized_name;
      negative_examples_filename_serialized_name = createClassifierOptions.negative_examples_filename_serialized_name;
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
     * @param classnamePositiveExamples the classnamePositiveExamples
     */
    public CreateClassifierOptionsBuilder(String name, IBMWatsonFile classnamePositiveExamples) {
      this.name_serialized_name = name;
      this.classname_positive_examples_serialized_name = classnamePositiveExamples;
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
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the classname_positive_examples_serialized_name.
     *
     * @param classnamePositiveExamples the classnamePositiveExamples
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder classnamePositiveExamples(IBMWatsonFile classnamePositiveExamples) {
      this.classname_positive_examples_serialized_name = classnamePositiveExamples;
      return this;
    }

    /**
     * Set the classname_positive_examples_filename_serialized_name.
     *
     * @param classnamePositiveExamplesFilename the classnamePositiveExamplesFilename
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder classnamePositiveExamplesFilename(String classnamePositiveExamplesFilename) {
      this.classname_positive_examples_filename_serialized_name = classnamePositiveExamplesFilename;
      return this;
    }

    /**
     * Set the negative_examples_serialized_name.
     *
     * @param negativeExamples the negativeExamples
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder negativeExamples(IBMWatsonFile negativeExamples) {
      this.negative_examples_serialized_name = negativeExamples;
      return this;
    }

    /**
     * Set the negative_examples_filename_serialized_name.
     *
     * @param negativeExamplesFilename the negativeExamplesFilename
     * @return the CreateClassifierOptions builder
     */
    public CreateClassifierOptionsBuilder negativeExamplesFilename(String negativeExamplesFilename) {
      this.negative_examples_filename_serialized_name = negativeExamplesFilename;
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
     * The ID of the classifier.
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
   * The detectFaces options.
   */
  public class DetectFacesOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile images_file_serialized_name;
    private String images_filename_serialized_name;
    private String url_serialized_name;
    private String images_file_content_type_serialized_name;
    /**
     * Gets the images_file_serialized_name.
     *
     * An image file (gif, .jpg, .png, .tif.) or .zip file with images. Limit the .zip file to 100 MB. You can include a
     * maximum of 15 images in a request.
     *
     * Encode the image and .zip file names in UTF-8 if they contain non-ASCII characters. The service assumes UTF-8
     * encoding if it encounters non-ASCII characters.
     *
     * You can also include an image with the **url** parameter.
     *
     * @return the images_file_serialized_name
     */
    public IBMWatsonFile imagesFile() {
      return images_file_serialized_name;
    }
    /**
     * Gets the images_filename_serialized_name.
     *
     * The filename for images_file.
     *
     * @return the images_filename_serialized_name
     */
    public String imagesFilename() {
      return images_filename_serialized_name;
    }
    /**
     * Gets the url_serialized_name.
     *
     * The URL of an image to analyze. Must be in .gif, .jpg, .png, or .tif format. The minimum recommended pixel
     * density is 32X32 pixels per inch, and the maximum image size is 10 MB. Redirects are followed, so you can use a
     * shortened URL.
     *
     * You can also include images with the **images_file** parameter.
     *
     * @return the url_serialized_name
     */
    public String url() {
      return url_serialized_name;
    }
    /**
     * Gets the images_file_content_type_serialized_name.
     *
     * The content type of images_file.
     *
     * @return the images_file_content_type_serialized_name
     */
    public String imagesFileContentType() {
      return images_file_content_type_serialized_name;
    }
    private DetectFacesOptions(DetectFacesOptionsBuilder builder) {
      IBMWatsonValidator.isTrue(builder.images_file_serialized_name == null || builder.images_file_content_type_serialized_name != null, 'content type cannot be null if file is not null');
      images_file_serialized_name = builder.images_file_serialized_name;
      images_filename_serialized_name = builder.images_filename_serialized_name;
      url_serialized_name = builder.url_serialized_name;
      images_file_content_type_serialized_name = builder.images_file_content_type_serialized_name;
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
    private IBMWatsonFile images_file_serialized_name;
    private String images_filename_serialized_name;
    private String url_serialized_name;
    private String images_file_content_type_serialized_name;

    private DetectFacesOptionsBuilder(DetectFacesOptions detectFacesOptions) {
      images_file_serialized_name = detectFacesOptions.images_file_serialized_name;
      images_filename_serialized_name = detectFacesOptions.images_filename_serialized_name;
      url_serialized_name = detectFacesOptions.url_serialized_name;
      images_file_content_type_serialized_name = detectFacesOptions.images_file_content_type_serialized_name;
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
     * Set the images_file_serialized_name.
     *
     * @param imagesFile the imagesFile
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder imagesFile(IBMWatsonFile imagesFile) {
      this.images_file_serialized_name = imagesFile;
      return this;
    }

    /**
     * Set the images_filename_serialized_name.
     *
     * @param imagesFilename the imagesFilename
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder imagesFilename(String imagesFilename) {
      this.images_filename_serialized_name = imagesFilename;
      return this;
    }

    /**
     * Set the url_serialized_name.
     *
     * @param url the url
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder url(String url) {
      this.url_serialized_name = url;
      return this;
    }

    /**
     * Set the images_file_content_type_serialized_name.
     *
     * @param imagesFileContentType the imagesFileContentType
     * @return the DetectFacesOptions builder
     */
    public DetectFacesOptionsBuilder imagesFileContentType(String imagesFileContentType) {
      this.images_file_content_type_serialized_name = imagesFileContentType;
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
     * Gets the images_processed_serialized_name.
     *
     * Number of images processed for the API call.
     *
     * @return the images_processed_serialized_name
     */
    @AuraEnabled
    public Long getImagesProcessed() {
      return images_processed_serialized_name;
    }
    /**
     * Gets the images_serialized_name.
     *
     * The images.
     *
     * @return the images_serialized_name
     */
    @AuraEnabled
    public List<ImageWithFaces> getImages() {
      return images_serialized_name;
    }
    /**
     * Gets the warnings_serialized_name.
     *
     * Information about what might cause less than optimal output. For example, a request sent with a corrupt .zip file
     * and a list of image URLs will still complete, but does not return the expected output. Not returned when there is
     * no warning.
     *
     * @return the warnings_serialized_name
     */
    @AuraEnabled
    public List<WarningInfo> getWarnings() {
      return warnings_serialized_name;
    }

    /**
     * Sets the images_processed_serialized_name.
     *
     * @param imagesProcessed the new imagesProcessed
     */
    public void setImagesProcessed(final long imagesProcessed) {
      this.images_processed_serialized_name = imagesProcessed;
    }

    /**
     * Sets the images_serialized_name.
     *
     * @param images the new images
     */
    public void setImages(final List<ImageWithFaces> images) {
      this.images_serialized_name = images;
    }

    /**
     * Sets the warnings_serialized_name.
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

      // calling custom deserializer for images_serialized_name
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

      // calling custom deserializer for warnings_serialized_name
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
     * Gets the code_serialized_name.
     *
     * HTTP status code.
     *
     * @return the code_serialized_name
     */
    @AuraEnabled
    public Long getCode() {
      return code_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * Human-readable error description. For example, `File size limit exceeded`.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the error_id_serialized_name.
     *
     * Codified error string. For example, `limit_exceeded`.
     *
     * @return the error_id_serialized_name
     */
    @AuraEnabled
    public String getErrorId() {
      return error_id_serialized_name;
    }

    /**
     * Sets the code_serialized_name.
     *
     * @param code the new code
     */
    public void setCode(final long code) {
      this.code_serialized_name = code;
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
     * Sets the error_id_serialized_name.
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
     * Gets the age_serialized_name.
     *
     * @return the age_serialized_name
     */
    @AuraEnabled
    public FaceAge getAge() {
      return age_serialized_name;
    }
    /**
     * Gets the gender_serialized_name.
     *
     * @return the gender_serialized_name
     */
    @AuraEnabled
    public FaceGender getGender() {
      return gender_serialized_name;
    }
    /**
     * Gets the face_location_serialized_name.
     *
     * @return the face_location_serialized_name
     */
    @AuraEnabled
    public FaceLocation getFaceLocation() {
      return face_location_serialized_name;
    }

    /**
     * Sets the age_serialized_name.
     *
     * @param age the new age
     */
    public void setAge(final FaceAge age) {
      this.age_serialized_name = age;
    }

    /**
     * Sets the gender_serialized_name.
     *
     * @param gender the new gender
     */
    public void setGender(final FaceGender gender) {
      this.gender_serialized_name = gender;
    }

    /**
     * Sets the face_location_serialized_name.
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

      // calling custom deserializer for age_serialized_name
      FaceAge newAge = (FaceAge) new FaceAge().deserialize(JSON.serialize(ret.getAge()), (Map<String, Object>) jsonMap.get('age_serialized_name'), FaceAge.class);
      ret.setAge(newAge);

      // calling custom deserializer for gender_serialized_name
      FaceGender newGender = (FaceGender) new FaceGender().deserialize(JSON.serialize(ret.getGender()), (Map<String, Object>) jsonMap.get('gender_serialized_name'), FaceGender.class);
      ret.setGender(newGender);

      // calling custom deserializer for face_location_serialized_name
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
     * Gets the min_serialized_name.
     *
     * Estimated minimum age.
     *
     * @return the min_serialized_name
     */
    @AuraEnabled
    public Long getMin() {
      return min_serialized_name;
    }
    /**
     * Gets the max_serialized_name.
     *
     * Estimated maximum age.
     *
     * @return the max_serialized_name
     */
    @AuraEnabled
    public Long getMax() {
      return max_serialized_name;
    }
    /**
     * Gets the score_serialized_name.
     *
     * Confidence score in the range of 0 to 1. A higher score indicates greater confidence in the estimated value for
     * the property.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
    }

    /**
     * Sets the min_serialized_name.
     *
     * @param min the new min
     */
    public void setMin(final long min) {
      this.min_serialized_name = min;
    }

    /**
     * Sets the max_serialized_name.
     *
     * @param max the new max
     */
    public void setMax(final long max) {
      this.max_serialized_name = max;
    }

    /**
     * Sets the score_serialized_name.
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
     * Gets the gender_serialized_name.
     *
     * Gender identified by the face. For example, `MALE` or `FEMALE`.
     *
     * @return the gender_serialized_name
     */
    @AuraEnabled
    public String getGender() {
      return gender_serialized_name;
    }
    /**
     * Gets the score_serialized_name.
     *
     * Confidence score in the range of 0 to 1. A higher score indicates greater confidence in the estimated value for
     * the property.
     *
     * @return the score_serialized_name
     */
    @AuraEnabled
    public Double getScore() {
      return score_serialized_name;
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
     * Sets the score_serialized_name.
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
     * Gets the width_serialized_name.
     *
     * Width in pixels of face region.
     *
     * @return the width_serialized_name
     */
    @AuraEnabled
    public Double getWidth() {
      return width_serialized_name;
    }
    /**
     * Gets the height_serialized_name.
     *
     * Height in pixels of face region.
     *
     * @return the height_serialized_name
     */
    @AuraEnabled
    public Double getHeight() {
      return height_serialized_name;
    }
    /**
     * Gets the left_serialized_name.
     *
     * X-position of top-left pixel of face region.
     *
     * @return the left_serialized_name
     */
    @AuraEnabled
    public Double getLeft() {
      return left_serialized_name;
    }
    /**
     * Gets the top_serialized_name.
     *
     * Y-position of top-left pixel of face region.
     *
     * @return the top_serialized_name
     */
    @AuraEnabled
    public Double getTop() {
      return top_serialized_name;
    }

    /**
     * Sets the width_serialized_name.
     *
     * @param width the new width
     */
    public void setWidth(final Double width) {
      this.width_serialized_name = width;
    }

    /**
     * Sets the height_serialized_name.
     *
     * @param height the new height
     */
    public void setHeight(final Double height) {
      this.height_serialized_name = height;
    }

    /**
     * Sets the left_serialized_name.
     *
     * @param left the new left
     */
    public void setLeft(final Double left) {
      this.left_serialized_name = left;
    }

    /**
     * Sets the top_serialized_name.
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
    private String classifier_id_serialized_name;
    /**
     * Gets the classifier_id_serialized_name.
     *
     * The ID of the classifier.
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
   * The getCoreMlModel options.
   */
  public class GetCoreMlModelOptions extends IBMWatsonOptionsModel {
    private String classifier_id_serialized_name;
    /**
     * Gets the classifier_id_serialized_name.
     *
     * The ID of the classifier.
     *
     * @return the classifier_id_serialized_name
     */
    public String classifierId() {
      return classifier_id_serialized_name;
    }
    private GetCoreMlModelOptions(GetCoreMlModelOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifier_id_serialized_name, 'classifier_id_serialized_name cannot be empty');
      classifier_id_serialized_name = builder.classifier_id_serialized_name;
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
    private String classifier_id_serialized_name;

    private GetCoreMlModelOptionsBuilder(GetCoreMlModelOptions getCoreMlModelOptions) {
      classifier_id_serialized_name = getCoreMlModelOptions.classifier_id_serialized_name;
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
      this.classifier_id_serialized_name = classifierId;
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
     * Set the classifier_id_serialized_name.
     *
     * @param classifierId the classifierId
     * @return the GetCoreMlModelOptions builder
     */
    public GetCoreMlModelOptionsBuilder classifierId(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
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
     * Gets the faces_serialized_name.
     *
     * Faces detected in the images.
     *
     * @return the faces_serialized_name
     */
    @AuraEnabled
    public List<Face> getFaces() {
      return faces_serialized_name;
    }
    /**
     * Gets the image_serialized_name.
     *
     * Relative path of the image file if uploaded directly. Not returned when the image is passed by URL.
     *
     * @return the image_serialized_name
     */
    @AuraEnabled
    public String getImage() {
      return image_serialized_name;
    }
    /**
     * Gets the source_url_serialized_name.
     *
     * Source of the image before any redirects. Not returned when the image is uploaded.
     *
     * @return the source_url_serialized_name
     */
    @AuraEnabled
    public String getSourceUrl() {
      return source_url_serialized_name;
    }
    /**
     * Gets the resolved_url_serialized_name.
     *
     * Fully resolved URL of the image after redirects are followed. Not returned when the image is uploaded.
     *
     * @return the resolved_url_serialized_name
     */
    @AuraEnabled
    public String getResolvedUrl() {
      return resolved_url_serialized_name;
    }
    /**
     * Gets the error_serialized_name.
     *
     * @return the error_serialized_name
     */
    @AuraEnabled
    public ErrorInfo getError() {
      return error_serialized_name;
    }

    /**
     * Sets the faces_serialized_name.
     *
     * @param faces the new faces
     */
    public void setFaces(final List<Face> faces) {
      this.faces_serialized_name = faces;
    }

    /**
     * Sets the image_serialized_name.
     *
     * @param image the new image
     */
    public void setImage(final String image) {
      this.image_serialized_name = image;
    }

    /**
     * Sets the source_url_serialized_name.
     *
     * @param sourceUrl the new sourceUrl
     */
    public void setSourceUrl(final String sourceUrl) {
      this.source_url_serialized_name = sourceUrl;
    }

    /**
     * Sets the resolved_url_serialized_name.
     *
     * @param resolvedUrl the new resolvedUrl
     */
    public void setResolvedUrl(final String resolvedUrl) {
      this.resolved_url_serialized_name = resolvedUrl;
    }

    /**
     * Sets the error_serialized_name.
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

      // calling custom deserializer for faces_serialized_name
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

      // calling custom deserializer for error_serialized_name
      ErrorInfo newError = (ErrorInfo) new ErrorInfo().deserialize(JSON.serialize(ret.getError()), (Map<String, Object>) jsonMap.get('error_serialized_name'), ErrorInfo.class);
      ret.setError(newError);

      return ret;
    }
  }

  /**
   * The listClassifiers options.
   */
  public class ListClassifiersOptions extends IBMWatsonOptionsModel {
    private Boolean verbose_serialized_name;
    /**
     * Gets the verbose_serialized_name.
     *
     * Specify `true` to return details about the classifiers. Omit this parameter to return a brief list of
     * classifiers.
     *
     * @return the verbose_serialized_name
     */
    public Boolean verbose() {
      return verbose_serialized_name;
    }
    private ListClassifiersOptions(ListClassifiersOptionsBuilder builder) {
      verbose_serialized_name = builder.verbose_serialized_name;
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
    private Boolean verbose_serialized_name;

    private ListClassifiersOptionsBuilder(ListClassifiersOptions listClassifiersOptions) {
      verbose_serialized_name = listClassifiersOptions.verbose_serialized_name;
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
     * Set the verbose_serialized_name.
     *
     * @param verbose the verbose
     * @return the ListClassifiersOptions builder
     */
    public ListClassifiersOptionsBuilder verbose(Boolean verbose) {
      this.verbose_serialized_name = verbose;
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
    private String classifier_id_serialized_name;
    private IBMWatsonFile classname_positive_examples_serialized_name;
    private String classname_positive_examples_filename_serialized_name;
    private IBMWatsonFile negative_examples_serialized_name;
    private String negative_examples_filename_serialized_name;
    /**
     * Gets the classifier_id_serialized_name.
     *
     * The ID of the classifier.
     *
     * @return the classifier_id_serialized_name
     */
    public String classifierId() {
      return classifier_id_serialized_name;
    }
    /**
     * Gets the classname_positive_examples_serialized_name.
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
     * @return the classname_positive_examples_serialized_name
     */
    public IBMWatsonFile classnamePositiveExamples() {
      return classname_positive_examples_serialized_name;
    }
    /**
     * Gets the classname_positive_examples_filename_serialized_name.
     *
     * The filename for classname_positive_examples.
     *
     * @return the classname_positive_examples_filename_serialized_name
     */
    public String classnamePositiveExamplesFilename() {
      return classname_positive_examples_filename_serialized_name;
    }
    /**
     * Gets the negative_examples_serialized_name.
     *
     * A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must
     * contain a minimum of 10 images.
     *
     * Encode special characters in the file name in UTF-8.
     *
     * @return the negative_examples_serialized_name
     */
    public IBMWatsonFile negativeExamples() {
      return negative_examples_serialized_name;
    }
    /**
     * Gets the negative_examples_filename_serialized_name.
     *
     * The filename for negative_examples.
     *
     * @return the negative_examples_filename_serialized_name
     */
    public String negativeExamplesFilename() {
      return negative_examples_filename_serialized_name;
    }
    private UpdateClassifierOptions(UpdateClassifierOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.classifier_id_serialized_name, 'classifier_id_serialized_name cannot be empty');
      IBMWatsonValidator.isTrue(builder.negative_examples_serialized_name == null || builder.negative_examples_filename_serialized_name != null, 'filename cannot be null if file is not null');
      classifier_id_serialized_name = builder.classifier_id_serialized_name;
      classname_positive_examples_serialized_name = builder.classname_positive_examples_serialized_name;
      classname_positive_examples_filename_serialized_name = builder.classname_positive_examples_filename_serialized_name;
      negative_examples_serialized_name = builder.negative_examples_serialized_name;
      negative_examples_filename_serialized_name = builder.negative_examples_filename_serialized_name;
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
    private String classifier_id_serialized_name;
    private IBMWatsonFile classname_positive_examples_serialized_name;
    private String classname_positive_examples_filename_serialized_name;
    private IBMWatsonFile negative_examples_serialized_name;
    private String negative_examples_filename_serialized_name;

    private UpdateClassifierOptionsBuilder(UpdateClassifierOptions updateClassifierOptions) {
      classifier_id_serialized_name = updateClassifierOptions.classifier_id_serialized_name;
      classname_positive_examples_serialized_name = updateClassifierOptions.classname_positive_examples_serialized_name;
      classname_positive_examples_filename_serialized_name = updateClassifierOptions.classname_positive_examples_filename_serialized_name;
      negative_examples_serialized_name = updateClassifierOptions.negative_examples_serialized_name;
      negative_examples_filename_serialized_name = updateClassifierOptions.negative_examples_filename_serialized_name;
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
      this.classifier_id_serialized_name = classifierId;
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
     * Set the classifier_id_serialized_name.
     *
     * @param classifierId the classifierId
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder classifierId(String classifierId) {
      this.classifier_id_serialized_name = classifierId;
      return this;
    }

    /**
     * Set the classname_positive_examples_serialized_name.
     *
     * @param classnamePositiveExamples the classnamePositiveExamples
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder classnamePositiveExamples(IBMWatsonFile classnamePositiveExamples) {
      this.classname_positive_examples_serialized_name = classnamePositiveExamples;
      return this;
    }

    /**
     * Set the classname_positive_examples_filename_serialized_name.
     *
     * @param classnamePositiveExamplesFilename the classnamePositiveExamplesFilename
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder classnamePositiveExamplesFilename(String classnamePositiveExamplesFilename) {
      this.classname_positive_examples_filename_serialized_name = classnamePositiveExamplesFilename;
      return this;
    }

    /**
     * Set the negative_examples_serialized_name.
     *
     * @param negativeExamples the negativeExamples
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder negativeExamples(IBMWatsonFile negativeExamples) {
      this.negative_examples_serialized_name = negativeExamples;
      return this;
    }

    /**
     * Set the negative_examples_filename_serialized_name.
     *
     * @param negativeExamplesFilename the negativeExamplesFilename
     * @return the UpdateClassifierOptions builder
     */
    public UpdateClassifierOptionsBuilder negativeExamplesFilename(String negativeExamplesFilename) {
      this.negative_examples_filename_serialized_name = negativeExamplesFilename;
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
     * Gets the warning_id_serialized_name.
     *
     * Codified warning string, such as `limit_reached`.
     *
     * @return the warning_id_serialized_name
     */
    @AuraEnabled
    public String getWarningId() {
      return warning_id_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * Information about the error.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }

    /**
     * Sets the warning_id_serialized_name.
     *
     * @param warningId the new warningId
     */
    public void setWarningId(final String warningId) {
      this.warning_id_serialized_name = warningId;
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

      WarningInfo ret = (WarningInfo) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

}
