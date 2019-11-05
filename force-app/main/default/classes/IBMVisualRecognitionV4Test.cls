@isTest
private class IBMVisualRecognitionV4Test {
  private static IBMVisualRecognitionV4 service;

  static {
    service = new IBMVisualRecognitionV4('2019-02-11', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testAddImageTrainingDataOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String imageId = 'image_id';
    IBMVisualRecognitionV4Models.TrainingDataObject objectsItem = new IBMVisualRecognitionV4Models.TrainingDataObjectBuilder()
      .build();
    List<IBMVisualRecognitionV4Models.TrainingDataObject> objects = new List<IBMVisualRecognitionV4Models.TrainingDataObject> { objectsItem } ;

    IBMVisualRecognitionV4Models.AddImageTrainingDataOptions testRequestModel = new IBMVisualRecognitionV4Models.AddImageTrainingDataOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .objects(objects)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(imageId, testRequestModel.imageId());
    System.assertEquals(objects, testRequestModel.objects());
    Test.stopTest();
  }
  static testMethod void testAddImagesOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    IBMWatsonFile imagesFileItem = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    List<IBMWatsonFile> imagesFile = new List<IBMWatsonFile> { imagesFileItem } ;
    List<String> imageUrl = new List<String> { 'image_url' } ;
    String trainingData = 'training_data';

    IBMVisualRecognitionV4Models.AddImagesOptions testRequestModel = new IBMVisualRecognitionV4Models.AddImagesOptionsBuilder()
      .collectionId(collectionId)
      .imagesFile(imagesFile)
      .imageUrl(imageUrl)
      .trainingData(trainingData)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(imagesFile, testRequestModel.imagesFile());
    System.assertEquals(imageUrl, testRequestModel.imageUrl());
    System.assertEquals(trainingData, testRequestModel.trainingData());
    Test.stopTest();
  }
  static testMethod void testAnalyzeOptionsModel() {
    Test.startTest();
    List<String> collectionIds = new List<String> { 'collection_ids' } ;
    List<String> features = new List<String> { 'features' } ;
    IBMWatsonFile imagesFileItem = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    List<IBMWatsonFile> imagesFile = new List<IBMWatsonFile> { imagesFileItem } ;
    List<String> imageUrl = new List<String> { 'image_url' } ;
    Double threshold = 0.5;

    IBMVisualRecognitionV4Models.AnalyzeOptions testRequestModel = new IBMVisualRecognitionV4Models.AnalyzeOptionsBuilder()
      .collectionIds(collectionIds)
      .features(features)
      .imagesFile(imagesFile)
      .imageUrl(imageUrl)
      .threshold(threshold)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionIds, testRequestModel.collectionIds());
    System.assertEquals(features, testRequestModel.features());
    System.assertEquals(imagesFile, testRequestModel.imagesFile());
    System.assertEquals(imageUrl, testRequestModel.imageUrl());
    System.assertEquals(threshold, testRequestModel.threshold());
    Test.stopTest();
  }
  static testMethod void testAnalyzeResponseModel() {
    Test.startTest();
    String xType = 'x_type';
    IBMVisualRecognitionV4Models.ImageSource source = new IBMVisualRecognitionV4Models.ImageSource();
    source.setXType(xType);
    Long height = 10L;
    Long width = 10L;
    IBMVisualRecognitionV4Models.ImageDimensions dimensions = new IBMVisualRecognitionV4Models.ImageDimensions();
    dimensions.setHeight(height);
    dimensions.setWidth(width);
    IBMVisualRecognitionV4Models.DetectedObjects objects = new IBMVisualRecognitionV4Models.DetectedObjects();
    IBMVisualRecognitionV4Models.Image imagesItem = new IBMVisualRecognitionV4Models.Image();
    imagesItem.setSource(source);
    imagesItem.setDimensions(dimensions);
    imagesItem.setObjects(objects);
    List<IBMVisualRecognitionV4Models.Image> images = new List<IBMVisualRecognitionV4Models.Image> { imagesItem } ;
    String code = 'code';
    String message = 'message';
    IBMVisualRecognitionV4Models.Warning warningsItem = new IBMVisualRecognitionV4Models.Warning();
    warningsItem.setCode(code);
    warningsItem.setMessage(message);
    List<IBMVisualRecognitionV4Models.Warning> warnings = new List<IBMVisualRecognitionV4Models.Warning> { warningsItem } ;
    String trace = 'trace';

    IBMVisualRecognitionV4Models.AnalyzeResponse testRequestModel = new IBMVisualRecognitionV4Models.AnalyzeResponse();
    testRequestModel.setImages(images);
    testRequestModel.setWarnings(warnings);
    testRequestModel.setTrace(trace);

    System.assertEquals(images, testRequestModel.getImages());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    System.assertEquals(trace, testRequestModel.getTrace());
    Test.stopTest();
  }
  static testMethod void testCollectionModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';

    IBMVisualRecognitionV4Models.Collection testRequestModel = new IBMVisualRecognitionV4Models.Collection();
    testRequestModel.setName(name);
    testRequestModel.setDescription(description);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(description, testRequestModel.getDescription());
    Test.stopTest();
  }
  static testMethod void testCollectionObjectsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String xObject = 'x_object';
    Long top = 10L;
    Long left = 10L;
    Long width = 10L;
    Long height = 10L;
    IBMVisualRecognitionV4Models.Location location = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(top)
      .left(left)
      .width(width)
      .height(height)
      .build();
    Double score = 0.5;
    IBMVisualRecognitionV4Models.ObjectDetail objectsItem = new IBMVisualRecognitionV4Models.ObjectDetail();
    objectsItem.setXObject(xObject);
    objectsItem.setLocation(location);
    objectsItem.setScore(score);
    List<IBMVisualRecognitionV4Models.ObjectDetail> objects = new List<IBMVisualRecognitionV4Models.ObjectDetail> { objectsItem } ;

    IBMVisualRecognitionV4Models.CollectionObjects testRequestModel = new IBMVisualRecognitionV4Models.CollectionObjects();
    testRequestModel.setCollectionId(collectionId);
    testRequestModel.setObjects(objects);

    System.assertEquals(collectionId, testRequestModel.getCollectionId());
    System.assertEquals(objects, testRequestModel.getObjects());
    Test.stopTest();
  }
  static testMethod void testCollectionsListModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String name = 'name';
    String description = 'description';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime updated = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Long imageCount = 10L;
    Boolean ready = true;
    Boolean inProgress = true;
    Boolean dataChanged = true;
    Boolean latestFailed = true;
    IBMVisualRecognitionV4Models.ObjectTrainingStatus objects = new IBMVisualRecognitionV4Models.ObjectTrainingStatusBuilder()
      .ready(ready)
      .inProgress(inProgress)
      .dataChanged(dataChanged)
      .latestFailed(latestFailed)
      .description(description)
      .build();
    IBMVisualRecognitionV4Models.TrainingStatus trainingStatus = new IBMVisualRecognitionV4Models.TrainingStatusBuilder()
      .objects(objects)
      .build();
    IBMVisualRecognitionV4Models.Collection collectionsItem = new IBMVisualRecognitionV4Models.Collection();
    collectionsItem.setName(name);
    collectionsItem.setDescription(description);
    List<IBMVisualRecognitionV4Models.Collection> collections = new List<IBMVisualRecognitionV4Models.Collection> { collectionsItem } ;

    IBMVisualRecognitionV4Models.CollectionsList testRequestModel = new IBMVisualRecognitionV4Models.CollectionsList();
    testRequestModel.setCollections(collections);

    System.assertEquals(collections, testRequestModel.getCollections());
    Test.stopTest();
  }
  static testMethod void testCreateCollectionOptionsModel() {
    Test.startTest();
    String name = 'name';
    String description = 'description';

    IBMVisualRecognitionV4Models.CreateCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.CreateCollectionOptionsBuilder()
      .name(name)
      .description(description)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testDeleteCollectionOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.DeleteCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.DeleteCollectionOptionsBuilder()
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testDeleteImageOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String imageId = 'image_id';

    IBMVisualRecognitionV4Models.DeleteImageOptions testRequestModel = new IBMVisualRecognitionV4Models.DeleteImageOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(imageId, testRequestModel.imageId());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();
    String customerId = 'customer_id';

    IBMVisualRecognitionV4Models.DeleteUserDataOptions testRequestModel = new IBMVisualRecognitionV4Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customerId, testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDetectedObjectsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String xObject = 'x_object';
    Long top = 10L;
    Long left = 10L;
    Long width = 10L;
    Long height = 10L;
    IBMVisualRecognitionV4Models.Location location = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(top)
      .left(left)
      .width(width)
      .height(height)
      .build();
    Double score = 0.5;
    IBMVisualRecognitionV4Models.ObjectDetail objectsItem = new IBMVisualRecognitionV4Models.ObjectDetail();
    objectsItem.setXObject(xObject);
    objectsItem.setLocation(location);
    objectsItem.setScore(score);
    List<IBMVisualRecognitionV4Models.ObjectDetail> objects = new List<IBMVisualRecognitionV4Models.ObjectDetail> { objectsItem } ;
    IBMVisualRecognitionV4Models.CollectionObjects collectionsItem = new IBMVisualRecognitionV4Models.CollectionObjects();
    collectionsItem.setCollectionId(collectionId);
    collectionsItem.setObjects(objects);
    List<IBMVisualRecognitionV4Models.CollectionObjects> collections = new List<IBMVisualRecognitionV4Models.CollectionObjects> { collectionsItem } ;

    IBMVisualRecognitionV4Models.DetectedObjects testRequestModel = new IBMVisualRecognitionV4Models.DetectedObjects();
    testRequestModel.setCollections(collections);

    System.assertEquals(collections, testRequestModel.getCollections());
    Test.stopTest();
  }
  static testMethod void testErrorModel() {
    Test.startTest();
    String code = 'code';
    String message = 'message';
    String moreInfo = 'more_info';
    String xType = 'x_type';
    String name = 'name';
    IBMVisualRecognitionV4Models.ErrorTarget target = new IBMVisualRecognitionV4Models.ErrorTarget();
    target.setXType(xType);
    target.setName(name);

    IBMVisualRecognitionV4Models.Error testRequestModel = new IBMVisualRecognitionV4Models.Error();
    testRequestModel.setCode(code);
    testRequestModel.setMessage(message);
    testRequestModel.setMoreInfo(moreInfo);
    testRequestModel.setTarget(target);

    System.assertEquals(code, testRequestModel.getCode());
    System.assertEquals(message, testRequestModel.getMessage());
    System.assertEquals(moreInfo, testRequestModel.getMoreInfo());
    System.assertEquals(target, testRequestModel.getTarget());
    Test.stopTest();
  }
  static testMethod void testErrorTargetModel() {
    Test.startTest();
    String xType = 'x_type';
    String name = 'name';

    IBMVisualRecognitionV4Models.ErrorTarget testRequestModel = new IBMVisualRecognitionV4Models.ErrorTarget();
    testRequestModel.setXType(xType);
    testRequestModel.setName(name);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(name, testRequestModel.getName());
    Test.stopTest();
  }
  static testMethod void testGetCollectionOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.GetCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.GetCollectionOptionsBuilder()
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testGetImageDetailsOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String imageId = 'image_id';

    IBMVisualRecognitionV4Models.GetImageDetailsOptions testRequestModel = new IBMVisualRecognitionV4Models.GetImageDetailsOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(imageId, testRequestModel.imageId());
    Test.stopTest();
  }
  static testMethod void testGetJpegImageOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String imageId = 'image_id';
    String size = 'size';

    IBMVisualRecognitionV4Models.GetJpegImageOptions testRequestModel = new IBMVisualRecognitionV4Models.GetJpegImageOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .size(size)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(imageId, testRequestModel.imageId());
    System.assertEquals(size, testRequestModel.size());
    Test.stopTest();
  }
  static testMethod void testImageModel() {
    Test.startTest();
    String xType = 'x_type';
    IBMVisualRecognitionV4Models.ImageSource source = new IBMVisualRecognitionV4Models.ImageSource();
    source.setXType(xType);
    Long height = 10L;
    Long width = 10L;
    IBMVisualRecognitionV4Models.ImageDimensions dimensions = new IBMVisualRecognitionV4Models.ImageDimensions();
    dimensions.setHeight(height);
    dimensions.setWidth(width);
    IBMVisualRecognitionV4Models.DetectedObjects objects = new IBMVisualRecognitionV4Models.DetectedObjects();
    String code = 'code';
    String message = 'message';
    IBMVisualRecognitionV4Models.Error errors = new IBMVisualRecognitionV4Models.Error();
    errors.setCode(code);
    errors.setMessage(message);

    IBMVisualRecognitionV4Models.Image testRequestModel = new IBMVisualRecognitionV4Models.Image();
    testRequestModel.setSource(source);
    testRequestModel.setDimensions(dimensions);
    testRequestModel.setObjects(objects);
    testRequestModel.setErrors(errors);

    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(dimensions, testRequestModel.getDimensions());
    System.assertEquals(objects, testRequestModel.getObjects());
    System.assertEquals(errors, testRequestModel.getErrors());
    Test.stopTest();
  }
  static testMethod void testImageDetailsModel() {
    Test.startTest();
    String imageId = 'image_id';
    Datetime updated = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String xType = 'x_type';
    IBMVisualRecognitionV4Models.ImageSource source = new IBMVisualRecognitionV4Models.ImageSource();
    source.setXType(xType);
    Long height = 10L;
    Long width = 10L;
    IBMVisualRecognitionV4Models.ImageDimensions dimensions = new IBMVisualRecognitionV4Models.ImageDimensions();
    dimensions.setHeight(height);
    dimensions.setWidth(width);
    String code = 'code';
    String message = 'message';
    IBMVisualRecognitionV4Models.Error errors = new IBMVisualRecognitionV4Models.Error();
    errors.setCode(code);
    errors.setMessage(message);
    IBMVisualRecognitionV4Models.TrainingDataObjects trainingData = new IBMVisualRecognitionV4Models.TrainingDataObjects();

    IBMVisualRecognitionV4Models.ImageDetails testRequestModel = new IBMVisualRecognitionV4Models.ImageDetails();
    testRequestModel.setImageId(imageId);
    testRequestModel.setUpdated(updated);
    testRequestModel.setCreated(created);
    testRequestModel.setSource(source);
    testRequestModel.setDimensions(dimensions);
    testRequestModel.setErrors(errors);
    testRequestModel.setTrainingData(trainingData);

    System.assertEquals(imageId, testRequestModel.getImageId());
    System.assertEquals(updated, testRequestModel.getUpdated());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(dimensions, testRequestModel.getDimensions());
    System.assertEquals(errors, testRequestModel.getErrors());
    System.assertEquals(trainingData, testRequestModel.getTrainingData());
    Test.stopTest();
  }
  static testMethod void testImageDetailsListModel() {
    Test.startTest();
    String imageId = 'image_id';
    Datetime updated = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String xType = 'x_type';
    IBMVisualRecognitionV4Models.ImageSource source = new IBMVisualRecognitionV4Models.ImageSource();
    source.setXType(xType);
    Long height = 10L;
    Long width = 10L;
    IBMVisualRecognitionV4Models.ImageDimensions dimensions = new IBMVisualRecognitionV4Models.ImageDimensions();
    dimensions.setHeight(height);
    dimensions.setWidth(width);
    IBMVisualRecognitionV4Models.TrainingDataObjects trainingData = new IBMVisualRecognitionV4Models.TrainingDataObjects();
    IBMVisualRecognitionV4Models.ImageDetails imagesItem = new IBMVisualRecognitionV4Models.ImageDetails();
    imagesItem.setImageId(imageId);
    imagesItem.setUpdated(updated);
    imagesItem.setCreated(created);
    imagesItem.setSource(source);
    imagesItem.setDimensions(dimensions);
    imagesItem.setTrainingData(trainingData);
    List<IBMVisualRecognitionV4Models.ImageDetails> images = new List<IBMVisualRecognitionV4Models.ImageDetails> { imagesItem } ;
    String code = 'code';
    String message = 'message';
    IBMVisualRecognitionV4Models.Warning warningsItem = new IBMVisualRecognitionV4Models.Warning();
    warningsItem.setCode(code);
    warningsItem.setMessage(message);
    List<IBMVisualRecognitionV4Models.Warning> warnings = new List<IBMVisualRecognitionV4Models.Warning> { warningsItem } ;
    String trace = 'trace';

    IBMVisualRecognitionV4Models.ImageDetailsList testRequestModel = new IBMVisualRecognitionV4Models.ImageDetailsList();
    testRequestModel.setImages(images);
    testRequestModel.setWarnings(warnings);
    testRequestModel.setTrace(trace);

    System.assertEquals(images, testRequestModel.getImages());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    System.assertEquals(trace, testRequestModel.getTrace());
    Test.stopTest();
  }
  static testMethod void testImageDimensionsModel() {
    Test.startTest();
    Long height = 10L;
    Long width = 10L;

    IBMVisualRecognitionV4Models.ImageDimensions testRequestModel = new IBMVisualRecognitionV4Models.ImageDimensions();
    testRequestModel.setHeight(height);
    testRequestModel.setWidth(width);

    System.assertEquals(height, testRequestModel.getHeight());
    System.assertEquals(width, testRequestModel.getWidth());
    Test.stopTest();
  }
  static testMethod void testImageSourceModel() {
    Test.startTest();
    String xType = 'x_type';
    String filename = 'filename';
    String archiveFilename = 'archive_filename';
    String sourceUrl = 'source_url';
    String resolvedUrl = 'resolved_url';

    IBMVisualRecognitionV4Models.ImageSource testRequestModel = new IBMVisualRecognitionV4Models.ImageSource();
    testRequestModel.setXType(xType);
    testRequestModel.setFilename(filename);
    testRequestModel.setArchiveFilename(archiveFilename);
    testRequestModel.setSourceUrl(sourceUrl);
    testRequestModel.setResolvedUrl(resolvedUrl);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(filename, testRequestModel.getFilename());
    System.assertEquals(archiveFilename, testRequestModel.getArchiveFilename());
    System.assertEquals(sourceUrl, testRequestModel.getSourceUrl());
    System.assertEquals(resolvedUrl, testRequestModel.getResolvedUrl());
    Test.stopTest();
  }
  static testMethod void testImageSummaryModel() {
    Test.startTest();
    String imageId = 'image_id';
    Datetime updated = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);

    IBMVisualRecognitionV4Models.ImageSummary testRequestModel = new IBMVisualRecognitionV4Models.ImageSummary();
    testRequestModel.setImageId(imageId);
    testRequestModel.setUpdated(updated);

    System.assertEquals(imageId, testRequestModel.getImageId());
    System.assertEquals(updated, testRequestModel.getUpdated());
    Test.stopTest();
  }
  static testMethod void testImageSummaryListModel() {
    Test.startTest();
    IBMVisualRecognitionV4Models.ImageSummary imagesItem = new IBMVisualRecognitionV4Models.ImageSummary();
    List<IBMVisualRecognitionV4Models.ImageSummary> images = new List<IBMVisualRecognitionV4Models.ImageSummary> { imagesItem } ;

    IBMVisualRecognitionV4Models.ImageSummaryList testRequestModel = new IBMVisualRecognitionV4Models.ImageSummaryList();
    testRequestModel.setImages(images);

    System.assertEquals(images, testRequestModel.getImages());
    Test.stopTest();
  }
  static testMethod void testListCollectionsOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.ListCollectionsOptions testRequestModel = new IBMVisualRecognitionV4Models.ListCollectionsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListImagesOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.ListImagesOptions testRequestModel = new IBMVisualRecognitionV4Models.ListImagesOptionsBuilder()
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testLocationModel() {
    Test.startTest();
    Long top = 10L;
    Long left = 10L;
    Long width = 10L;
    Long height = 10L;

    IBMVisualRecognitionV4Models.Location testRequestModel = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(top)
      .left(left)
      .width(width)
      .height(height)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(top, testRequestModel.getTop());
    System.assertEquals(left, testRequestModel.getLeft());
    System.assertEquals(width, testRequestModel.getWidth());
    System.assertEquals(height, testRequestModel.getHeight());
    Test.stopTest();
  }
  static testMethod void testObjectDetailModel() {
    Test.startTest();
    String xObject = 'x_object';
    Long top = 10L;
    Long left = 10L;
    Long width = 10L;
    Long height = 10L;
    IBMVisualRecognitionV4Models.Location location = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(top)
      .left(left)
      .width(width)
      .height(height)
      .build();
    Double score = 0.5;

    IBMVisualRecognitionV4Models.ObjectDetail testRequestModel = new IBMVisualRecognitionV4Models.ObjectDetail();
    testRequestModel.setXObject(xObject);
    testRequestModel.setLocation(location);
    testRequestModel.setScore(score);

    System.assertEquals(xObject, testRequestModel.getXObject());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(score, testRequestModel.getScore());
    Test.stopTest();
  }
  static testMethod void testObjectTrainingStatusModel() {
    Test.startTest();
    Boolean ready = true;
    Boolean inProgress = true;
    Boolean dataChanged = true;
    Boolean latestFailed = true;
    String description = 'description';

    IBMVisualRecognitionV4Models.ObjectTrainingStatus testRequestModel = new IBMVisualRecognitionV4Models.ObjectTrainingStatusBuilder()
      .ready(ready)
      .inProgress(inProgress)
      .dataChanged(dataChanged)
      .latestFailed(latestFailed)
      .description(description)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(ready, testRequestModel.getReady());
    System.assertEquals(inProgress, testRequestModel.getInProgress());
    System.assertEquals(dataChanged, testRequestModel.getDataChanged());
    System.assertEquals(latestFailed, testRequestModel.getLatestFailed());
    System.assertEquals(description, testRequestModel.getDescription());
    Test.stopTest();
  }
  static testMethod void testTrainOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.TrainOptions testRequestModel = new IBMVisualRecognitionV4Models.TrainOptionsBuilder()
      .collectionId(collectionId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testTrainingDataObjectModel() {
    Test.startTest();
    String xObject = 'x_object';
    Long top = 10L;
    Long left = 10L;
    Long width = 10L;
    Long height = 10L;
    IBMVisualRecognitionV4Models.Location location = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(top)
      .left(left)
      .width(width)
      .height(height)
      .build();

    IBMVisualRecognitionV4Models.TrainingDataObject testRequestModel = new IBMVisualRecognitionV4Models.TrainingDataObjectBuilder()
      .xObject(xObject)
      .location(location)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xObject, testRequestModel.getXObject());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testTrainingDataObjectsModel() {
    Test.startTest();
    IBMVisualRecognitionV4Models.TrainingDataObject objectsItem = new IBMVisualRecognitionV4Models.TrainingDataObjectBuilder()
      .build();
    List<IBMVisualRecognitionV4Models.TrainingDataObject> objects = new List<IBMVisualRecognitionV4Models.TrainingDataObject> { objectsItem } ;

    IBMVisualRecognitionV4Models.TrainingDataObjects testRequestModel = new IBMVisualRecognitionV4Models.TrainingDataObjects();
    testRequestModel.setObjects(objects);

    System.assertEquals(objects, testRequestModel.getObjects());
    Test.stopTest();
  }
  static testMethod void testTrainingStatusModel() {
    Test.startTest();
    Boolean ready = true;
    Boolean inProgress = true;
    Boolean dataChanged = true;
    Boolean latestFailed = true;
    String description = 'description';
    IBMVisualRecognitionV4Models.ObjectTrainingStatus objects = new IBMVisualRecognitionV4Models.ObjectTrainingStatusBuilder()
      .ready(ready)
      .inProgress(inProgress)
      .dataChanged(dataChanged)
      .latestFailed(latestFailed)
      .description(description)
      .build();

    IBMVisualRecognitionV4Models.TrainingStatus testRequestModel = new IBMVisualRecognitionV4Models.TrainingStatusBuilder()
      .objects(objects)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(objects, testRequestModel.getObjects());
    Test.stopTest();
  }
  static testMethod void testUpdateCollectionOptionsModel() {
    Test.startTest();
    String collectionId = 'collection_id';
    String name = 'name';
    String description = 'description';

    IBMVisualRecognitionV4Models.UpdateCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.UpdateCollectionOptionsBuilder()
      .collectionId(collectionId)
      .name(name)
      .description(description)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(collectionId, testRequestModel.collectionId());
    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(description, testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testWarningModel() {
    Test.startTest();
    String code = 'code';
    String message = 'message';
    String moreInfo = 'more_info';

    IBMVisualRecognitionV4Models.Warning testRequestModel = new IBMVisualRecognitionV4Models.Warning();
    testRequestModel.setCode(code);
    testRequestModel.setMessage(message);
    testRequestModel.setMoreInfo(moreInfo);

    System.assertEquals(code, testRequestModel.getCode());
    System.assertEquals(message, testRequestModel.getMessage());
    System.assertEquals(moreInfo, testRequestModel.getMoreInfo());
    Test.stopTest();
  }


  static testMethod void testAnalyze() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4AnalyzeResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    List<String> collectionIds = new List<String> { 'collection_ids' } ;
    List<String> features = new List<String> { 'features' } ;
    IBMWatsonFile imagesFileItem = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    List<IBMWatsonFile> imagesFile = new List<IBMWatsonFile> { imagesFileItem } ;
    List<String> imageUrl = new List<String> { 'image_url' } ;
    Double threshold = 0.5;

    IBMVisualRecognitionV4Models.AnalyzeOptions options = new IBMVisualRecognitionV4Models.AnalyzeOptionsBuilder()
      .collectionIds(collectionIds)
      .features(features)
      .imagesFile(imagesFile)
      .imageUrl(imageUrl)
      .threshold(threshold)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.AnalyzeResponse response = service.analyze(options);

    System.assertEquals(
      'type',
      response.getImages().get(0).getSource().getXType()
    );
    System.assertEquals(
      'filename',
      response.getImages().get(0).getSource().getFilename()
    );
    System.assertEquals(
      'archive_filename',
      response.getImages().get(0).getSource().getArchiveFilename()
    );
    System.assertEquals(
      'source_url',
      response.getImages().get(0).getSource().getSourceUrl()
    );
    System.assertEquals(
      'resolved_url',
      response.getImages().get(0).getSource().getResolvedUrl()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getDimensions().getHeight()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getDimensions().getWidth()
    );
    System.assertEquals(
      'collection_id',
      response.getImages().get(0).getObjects().getCollections().get(0).getCollectionId()
    );
    System.assertEquals(
      'object',
      response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getXObject()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getTop()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getLeft()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getWidth()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getHeight()
    );
    System.assertEquals(
      0.5,
      response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getScore()
    );
    System.assertEquals(
      'code',
      response.getImages().get(0).getErrors().getCode()
    );
    System.assertEquals(
      'message',
      response.getImages().get(0).getErrors().getMessage()
    );
    System.assertEquals(
      'more_info',
      response.getImages().get(0).getErrors().getMoreInfo()
    );
    System.assertEquals(
      'type',
      response.getImages().get(0).getErrors().getTarget().getXType()
    );
    System.assertEquals(
      'name',
      response.getImages().get(0).getErrors().getTarget().getName()
    );
    System.assertEquals(
      'code',
      response.getWarnings().get(0).getCode()
    );
    System.assertEquals(
      'message',
      response.getWarnings().get(0).getMessage()
    );
    System.assertEquals(
      'more_info',
      response.getWarnings().get(0).getMoreInfo()
    );
    System.assertEquals(
      'trace',
      response.getTrace()
    );

    Test.stopTest();
  }
  static testMethod void testCreateCollection() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4Collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String name = 'name';
    String description = 'description';

    IBMVisualRecognitionV4Models.CreateCollectionOptions options = new IBMVisualRecognitionV4Models.CreateCollectionOptionsBuilder()
      .name(name)
      .description(description)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.createCollection(options);

    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      10L,
      response.getImageCount()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getReady()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getInProgress()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getDataChanged()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getLatestFailed()
    );
    System.assertEquals(
      'description',
      response.getTrainingStatus().getObjects().getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testListCollections() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4CollectionsList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMVisualRecognitionV4Models.ListCollectionsOptions options = new IBMVisualRecognitionV4Models.ListCollectionsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.CollectionsList response = service.listCollections(options);

    System.assertEquals(
      'collection_id',
      response.getCollections().get(0).getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getCollections().get(0).getName()
    );
    System.assertEquals(
      'description',
      response.getCollections().get(0).getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCollections().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCollections().get(0).getUpdated()
    );
    System.assertEquals(
      10L,
      response.getCollections().get(0).getImageCount()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getObjects().getReady()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getObjects().getInProgress()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getObjects().getDataChanged()
    );
    System.assertEquals(
      true,
      response.getCollections().get(0).getTrainingStatus().getObjects().getLatestFailed()
    );
    System.assertEquals(
      'description',
      response.getCollections().get(0).getTrainingStatus().getObjects().getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testGetCollection() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4Collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.GetCollectionOptions options = new IBMVisualRecognitionV4Models.GetCollectionOptionsBuilder()
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.getCollection(options);

    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      10L,
      response.getImageCount()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getReady()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getInProgress()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getDataChanged()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getLatestFailed()
    );
    System.assertEquals(
      'description',
      response.getTrainingStatus().getObjects().getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateCollection() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4Collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';
    String name = 'name';
    String description = 'description';

    IBMVisualRecognitionV4Models.UpdateCollectionOptions options = new IBMVisualRecognitionV4Models.UpdateCollectionOptionsBuilder()
      .collectionId(collectionId)
      .name(name)
      .description(description)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.updateCollection(options);

    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      10L,
      response.getImageCount()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getReady()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getInProgress()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getDataChanged()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getLatestFailed()
    );
    System.assertEquals(
      'description',
      response.getTrainingStatus().getObjects().getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteCollection() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.DeleteCollectionOptions options = new IBMVisualRecognitionV4Models.DeleteCollectionOptionsBuilder()
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCollection(options);

    Test.stopTest();
  }
  static testMethod void testAddImages() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4ImageDetailsList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';
    IBMWatsonFile imagesFileItem = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/octet-stream')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    List<IBMWatsonFile> imagesFile = new List<IBMWatsonFile> { imagesFileItem } ;
    List<String> imageUrl = new List<String> { 'image_url' } ;
    String trainingData = 'training_data';

    IBMVisualRecognitionV4Models.AddImagesOptions options = new IBMVisualRecognitionV4Models.AddImagesOptionsBuilder()
      .collectionId(collectionId)
      .imagesFile(imagesFile)
      .imageUrl(imageUrl)
      .trainingData(trainingData)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.ImageDetailsList response = service.addImages(options);

    System.assertEquals(
      'image_id',
      response.getImages().get(0).getImageId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getImages().get(0).getUpdated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getImages().get(0).getCreated()
    );
    System.assertEquals(
      'type',
      response.getImages().get(0).getSource().getXType()
    );
    System.assertEquals(
      'filename',
      response.getImages().get(0).getSource().getFilename()
    );
    System.assertEquals(
      'archive_filename',
      response.getImages().get(0).getSource().getArchiveFilename()
    );
    System.assertEquals(
      'source_url',
      response.getImages().get(0).getSource().getSourceUrl()
    );
    System.assertEquals(
      'resolved_url',
      response.getImages().get(0).getSource().getResolvedUrl()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getDimensions().getHeight()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getDimensions().getWidth()
    );
    System.assertEquals(
      'code',
      response.getImages().get(0).getErrors().getCode()
    );
    System.assertEquals(
      'message',
      response.getImages().get(0).getErrors().getMessage()
    );
    System.assertEquals(
      'more_info',
      response.getImages().get(0).getErrors().getMoreInfo()
    );
    System.assertEquals(
      'type',
      response.getImages().get(0).getErrors().getTarget().getXType()
    );
    System.assertEquals(
      'name',
      response.getImages().get(0).getErrors().getTarget().getName()
    );
    System.assertEquals(
      'object',
      response.getImages().get(0).getTrainingData().getObjects().get(0).getXObject()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getTop()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getLeft()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getWidth()
    );
    System.assertEquals(
      10L,
      response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getHeight()
    );
    System.assertEquals(
      'code',
      response.getWarnings().get(0).getCode()
    );
    System.assertEquals(
      'message',
      response.getWarnings().get(0).getMessage()
    );
    System.assertEquals(
      'more_info',
      response.getWarnings().get(0).getMoreInfo()
    );
    System.assertEquals(
      'trace',
      response.getTrace()
    );

    Test.stopTest();
  }
  static testMethod void testListImages() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4ImageSummaryList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.ListImagesOptions options = new IBMVisualRecognitionV4Models.ListImagesOptionsBuilder()
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.ImageSummaryList response = service.listImages(options);

    System.assertEquals(
      'image_id',
      response.getImages().get(0).getImageId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getImages().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetImageDetails() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4ImageDetails();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';
    String imageId = 'image_id';

    IBMVisualRecognitionV4Models.GetImageDetailsOptions options = new IBMVisualRecognitionV4Models.GetImageDetailsOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.ImageDetails response = service.getImageDetails(options);

    System.assertEquals(
      'image_id',
      response.getImageId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'type',
      response.getSource().getXType()
    );
    System.assertEquals(
      'filename',
      response.getSource().getFilename()
    );
    System.assertEquals(
      'archive_filename',
      response.getSource().getArchiveFilename()
    );
    System.assertEquals(
      'source_url',
      response.getSource().getSourceUrl()
    );
    System.assertEquals(
      'resolved_url',
      response.getSource().getResolvedUrl()
    );
    System.assertEquals(
      10L,
      response.getDimensions().getHeight()
    );
    System.assertEquals(
      10L,
      response.getDimensions().getWidth()
    );
    System.assertEquals(
      'code',
      response.getErrors().getCode()
    );
    System.assertEquals(
      'message',
      response.getErrors().getMessage()
    );
    System.assertEquals(
      'more_info',
      response.getErrors().getMoreInfo()
    );
    System.assertEquals(
      'type',
      response.getErrors().getTarget().getXType()
    );
    System.assertEquals(
      'name',
      response.getErrors().getTarget().getName()
    );
    System.assertEquals(
      'object',
      response.getTrainingData().getObjects().get(0).getXObject()
    );
    System.assertEquals(
      10L,
      response.getTrainingData().getObjects().get(0).getLocation().getTop()
    );
    System.assertEquals(
      10L,
      response.getTrainingData().getObjects().get(0).getLocation().getLeft()
    );
    System.assertEquals(
      10L,
      response.getTrainingData().getObjects().get(0).getLocation().getWidth()
    );
    System.assertEquals(
      10L,
      response.getTrainingData().getObjects().get(0).getLocation().getHeight()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteImage() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';
    String imageId = 'image_id';

    IBMVisualRecognitionV4Models.DeleteImageOptions options = new IBMVisualRecognitionV4Models.DeleteImageOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteImage(options);

    Test.stopTest();
  }
  static testMethod void testGetJpegImage() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';
    String imageId = 'image_id';
    String size = 'size';

    IBMVisualRecognitionV4Models.GetJpegImageOptions options = new IBMVisualRecognitionV4Models.GetJpegImageOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .size(size)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.getJpegImage(options);

    Test.stopTest();
  }
  static testMethod void testTrain() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4Collection();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';

    IBMVisualRecognitionV4Models.TrainOptions options = new IBMVisualRecognitionV4Models.TrainOptionsBuilder()
      .collectionId(collectionId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.train(options);

    System.assertEquals(
      'collection_id',
      response.getCollectionId()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );
    System.assertEquals(
      10L,
      response.getImageCount()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getReady()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getInProgress()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getDataChanged()
    );
    System.assertEquals(
      true,
      response.getTrainingStatus().getObjects().getLatestFailed()
    );
    System.assertEquals(
      'description',
      response.getTrainingStatus().getObjects().getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testAddImageTrainingData() {
    String mockResponseBody = IBMWatsonMockResponses.visualRecognitionV4TrainingDataObjects();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String collectionId = 'collection_id';
    String imageId = 'image_id';
    IBMVisualRecognitionV4Models.TrainingDataObject objectsItem = new IBMVisualRecognitionV4Models.TrainingDataObjectBuilder()
      .build();
    List<IBMVisualRecognitionV4Models.TrainingDataObject> objects = new List<IBMVisualRecognitionV4Models.TrainingDataObject> { objectsItem } ;

    IBMVisualRecognitionV4Models.AddImageTrainingDataOptions options = new IBMVisualRecognitionV4Models.AddImageTrainingDataOptionsBuilder()
      .collectionId(collectionId)
      .imageId(imageId)
      .objects(objects)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.TrainingDataObjects response = service.addImageTrainingData(options);

    System.assertEquals(
      'object',
      response.getObjects().get(0).getXObject()
    );
    System.assertEquals(
      10L,
      response.getObjects().get(0).getLocation().getTop()
    );
    System.assertEquals(
      10L,
      response.getObjects().get(0).getLocation().getLeft()
    );
    System.assertEquals(
      10L,
      response.getObjects().get(0).getLocation().getWidth()
    );
    System.assertEquals(
      10L,
      response.getObjects().get(0).getLocation().getHeight()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteUserData() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customerId = 'customer_id';

    IBMVisualRecognitionV4Models.DeleteUserDataOptions options = new IBMVisualRecognitionV4Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(options);

    Test.stopTest();
  }
}
