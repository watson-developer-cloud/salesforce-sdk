@isTest
private class IBMVisualRecognitionV4Test {
  private static IBMVisualRecognitionV4 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMVisualRecognitionV4('2019-02-11', new IBMWatsonNoAuthAuthenticator());
    mockFile = new IBMWatsonFile.FileBuilder()
      .name('mock-file.txt')
      .description('Test file')
      .contentType('text/plain')
      .body(blob.valueOf('Test string'))
      .build();
  }

  static IBMWatsonMapModel createMockMap() {
    IBMWatsonMapModel mockMap = new IBMWatsonMapModel();
    mockMap.put('testKey', 'testVal');
    return mockMap;
  }

  static testMethod void testAddImageTrainingDataOptionsModel() {
    Test.startTest();
    IBMVisualRecognitionV4Models.Location locationModel = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(38)
      .left(38)
      .width(38)
      .height(38)
      .build();
    IBMVisualRecognitionV4Models.TrainingDataObject trainingDataObjectModel = new IBMVisualRecognitionV4Models.TrainingDataObjectBuilder()
      .xObject('testString')
      .location(locationModel)
      .build();

    IBMVisualRecognitionV4Models.AddImageTrainingDataOptions testRequestModel = new IBMVisualRecognitionV4Models.AddImageTrainingDataOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .objects(new List<IBMVisualRecognitionV4Models.TrainingDataObject> { trainingDataObjectModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    System.assertEquals('testString', testRequestModel.imageId());
    System.assertEquals(new List<IBMVisualRecognitionV4Models.TrainingDataObject> { trainingDataObjectModel }, testRequestModel.objects());
    Test.stopTest();
  }
  static testMethod void testAddImagesOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.AddImagesOptions testRequestModel = new IBMVisualRecognitionV4Models.AddImagesOptionsBuilder()
      .collectionId('testString')
      .imagesFile(new List<IBMWatsonFile> { mockFile })
      .imageUrl(new List<String> { 'testString' })
      .trainingData('{"objects":[{"object":"2018-Fit","location":{"left":33,"top":8,"width":760,"height":419}}]}')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    System.assertEquals(new List<IBMWatsonFile> { mockFile }, testRequestModel.imagesFile());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.imageUrl());
    System.assertEquals('{"objects":[{"object":"2018-Fit","location":{"left":33,"top":8,"width":760,"height":419}}]}', testRequestModel.trainingData());
    Test.stopTest();
  }
  static testMethod void testAnalyzeOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.AnalyzeOptions testRequestModel = new IBMVisualRecognitionV4Models.AnalyzeOptionsBuilder()
      .collectionIds(new List<String> { 'testString' })
      .features(new List<String> { 'objects' })
      .imagesFile(new List<IBMWatsonFile> { mockFile })
      .imageUrl(new List<String> { 'testString' })
      .threshold((Double) 72.5)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<String> { 'testString' }, testRequestModel.collectionIds());
    System.assertEquals(new List<String> { 'objects' }, testRequestModel.features());
    System.assertEquals(new List<IBMWatsonFile> { mockFile }, testRequestModel.imagesFile());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.imageUrl());
    System.assertEquals((Double) 72.5, testRequestModel.threshold());
    Test.stopTest();
  }
  static testMethod void testCreateCollectionOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.CreateCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.CreateCollectionOptionsBuilder()
      .name('testString')
      .description('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('testString', testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testDeleteCollectionOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.DeleteCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.DeleteCollectionOptionsBuilder()
      .collectionId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testDeleteImageOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.DeleteImageOptions testRequestModel = new IBMVisualRecognitionV4Models.DeleteImageOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    System.assertEquals('testString', testRequestModel.imageId());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.DeleteUserDataOptions testRequestModel = new IBMVisualRecognitionV4Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testGetCollectionOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.GetCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.GetCollectionOptionsBuilder()
      .collectionId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testGetImageDetailsOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.GetImageDetailsOptions testRequestModel = new IBMVisualRecognitionV4Models.GetImageDetailsOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    System.assertEquals('testString', testRequestModel.imageId());
    Test.stopTest();
  }
  static testMethod void testGetJpegImageOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.GetJpegImageOptions testRequestModel = new IBMVisualRecognitionV4Models.GetJpegImageOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .size('full')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    System.assertEquals('testString', testRequestModel.imageId());
    System.assertEquals('full', testRequestModel.size());
    Test.stopTest();
  }
  static testMethod void testGetTrainingUsageOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.GetTrainingUsageOptions testRequestModel = new IBMVisualRecognitionV4Models.GetTrainingUsageOptionsBuilder()
      .startTime('testString')
      .endTime('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.startTime());
    System.assertEquals('testString', testRequestModel.endTime());
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

    IBMVisualRecognitionV4Models.ListImagesOptions testRequestModel = new IBMVisualRecognitionV4Models.ListImagesOptionsBuilder()
      .collectionId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testLocationModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.Location testRequestModel = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(38)
      .left(38)
      .width(38)
      .height(38)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(38, testRequestModel.getTop());
    System.assertEquals(38, testRequestModel.getLeft());
    System.assertEquals(38, testRequestModel.getWidth());
    System.assertEquals(38, testRequestModel.getHeight());
    Test.stopTest();
  }
  static testMethod void testObjectTrainingStatusModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.ObjectTrainingStatus testRequestModel = new IBMVisualRecognitionV4Models.ObjectTrainingStatusBuilder()
      .ready(true)
      .inProgress(true)
      .dataChanged(true)
      .latestFailed(true)
      .description('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(true, testRequestModel.getReady());
    System.assertEquals(true, testRequestModel.getInProgress());
    System.assertEquals(true, testRequestModel.getDataChanged());
    System.assertEquals(true, testRequestModel.getLatestFailed());
    System.assertEquals('testString', testRequestModel.getDescription());
    Test.stopTest();
  }
  static testMethod void testTrainOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.TrainOptions testRequestModel = new IBMVisualRecognitionV4Models.TrainOptionsBuilder()
      .collectionId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    Test.stopTest();
  }
  static testMethod void testTrainingDataObjectModel() {
    Test.startTest();
    IBMVisualRecognitionV4Models.Location locationModel = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(38)
      .left(38)
      .width(38)
      .height(38)
      .build();

    IBMVisualRecognitionV4Models.TrainingDataObject testRequestModel = new IBMVisualRecognitionV4Models.TrainingDataObjectBuilder()
      .xObject('testString')
      .location(locationModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getXObject());
    System.assertEquals(locationModel, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testTrainingStatusModel() {
    Test.startTest();
    IBMVisualRecognitionV4Models.ObjectTrainingStatus objectTrainingStatusModel = new IBMVisualRecognitionV4Models.ObjectTrainingStatusBuilder()
      .ready(true)
      .inProgress(true)
      .dataChanged(true)
      .latestFailed(true)
      .description('testString')
      .build();

    IBMVisualRecognitionV4Models.TrainingStatus testRequestModel = new IBMVisualRecognitionV4Models.TrainingStatusBuilder()
      .objects(objectTrainingStatusModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(objectTrainingStatusModel, testRequestModel.getObjects());
    Test.stopTest();
  }
  static testMethod void testUpdateCollectionOptionsModel() {
    Test.startTest();

    IBMVisualRecognitionV4Models.UpdateCollectionOptions testRequestModel = new IBMVisualRecognitionV4Models.UpdateCollectionOptionsBuilder()
      .collectionId('testString')
      .name('testString')
      .description('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.collectionId());
    System.assertEquals('testString', testRequestModel.name());
    System.assertEquals('testString', testRequestModel.description());
    Test.stopTest();
  }

  static testMethod void testAnalyze() {
    String mockResponseBody = '{"images": [{"source": {"type": "xType", "filename": "filename", "archive_filename": "archiveFilename", "source_url": "sourceUrl", "resolved_url": "resolvedUrl"}, "dimensions": {"height": "6", "width": "5"}, "objects": {"collections": [{"collection_id": "collectionId", "objects": [{"object": "xObject", "location": {"top": "3", "left": "4", "width": "5", "height": "6"}, "score": "5"}]}]}, "errors": [{"code": "code", "message": "message", "more_info": "moreInfo", "target": {"type": "xType", "name": "name"}}]}], "warnings": [{"code": "code", "message": "message", "more_info": "moreInfo"}], "trace": "trace"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.AnalyzeOptions analyzeOptionsModel = new IBMVisualRecognitionV4Models.AnalyzeOptionsBuilder()
      .collectionIds(new List<String> { 'testString' })
      .features(new List<String> { 'objects' })
      .imagesFile(new List<IBMWatsonFile> { mockFile })
      .imageUrl(new List<String> { 'testString' })
      .threshold((Double) 72.5)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.AnalyzeResponse response = service.analyze(analyzeOptionsModel);
    System.assert(response.getImages().get(0).getSource().getXType() != null);
    System.assert(response.getImages().get(0).getSource().getFilename() != null);
    System.assert(response.getImages().get(0).getSource().getArchiveFilename() != null);
    System.assert(response.getImages().get(0).getSource().getSourceUrl() != null);
    System.assert(response.getImages().get(0).getSource().getResolvedUrl() != null);
    System.assert(response.getImages().get(0).getDimensions().getHeight() != null);
    System.assert(response.getImages().get(0).getDimensions().getWidth() != null);
    System.assert(response.getImages().get(0).getObjects().getCollections().get(0).getCollectionId() != null);
    System.assert(response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getXObject() != null);
    System.assert(response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getTop() != null);
    System.assert(response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getLeft() != null);
    System.assert(response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getWidth() != null);
    System.assert(response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getLocation().getHeight() != null);
    System.assert(response.getImages().get(0).getObjects().getCollections().get(0).getObjects().get(0).getScore() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getCode() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getMessage() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getMoreInfo() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getTarget().getXType() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getTarget().getName() != null);
    System.assert(response.getWarnings().get(0).getCode() != null);
    System.assert(response.getWarnings().get(0).getMessage() != null);
    System.assert(response.getWarnings().get(0).getMoreInfo() != null);
    System.assert(response.getTrace() != null);

    Test.stopTest();
  }
  static testMethod void testCreateCollection() {
    String mockResponseBody = '{"collection_id": "collectionId", "name": "name", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "image_count": "10", "training_status": {"objects": {"ready": false, "in_progress": true, "data_changed": false, "latest_failed": true, "description": "description"}}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.CreateCollectionOptions createCollectionOptionsModel = new IBMVisualRecognitionV4Models.CreateCollectionOptionsBuilder()
      .name('testString')
      .description('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.createCollection(createCollectionOptionsModel);
    System.assert(response.getCollectionId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getImageCount() != null);
    System.assert(response.getTrainingStatus().getObjects().getReady() != null);
    System.assert(response.getTrainingStatus().getObjects().getInProgress() != null);
    System.assert(response.getTrainingStatus().getObjects().getDataChanged() != null);
    System.assert(response.getTrainingStatus().getObjects().getLatestFailed() != null);
    System.assert(response.getTrainingStatus().getObjects().getDescription() != null);

    Test.stopTest();
  }
  static testMethod void testListCollections() {
    String mockResponseBody = '{"collections": [{"collection_id": "collectionId", "name": "name", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "image_count": "10", "training_status": {"objects": {"ready": false, "in_progress": true, "data_changed": false, "latest_failed": true, "description": "description"}}}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.ListCollectionsOptions listCollectionsOptionsModel = new IBMVisualRecognitionV4Models.ListCollectionsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.CollectionsList response = service.listCollections(listCollectionsOptionsModel);
    System.assert(response.getCollections().get(0).getCollectionId() != null);
    System.assert(response.getCollections().get(0).getName() != null);
    System.assert(response.getCollections().get(0).getDescription() != null);
    System.assert(response.getCollections().get(0).getCreated() != null);
    System.assert(response.getCollections().get(0).getUpdated() != null);
    System.assert(response.getCollections().get(0).getImageCount() != null);
    System.assert(response.getCollections().get(0).getTrainingStatus().getObjects().getReady() != null);
    System.assert(response.getCollections().get(0).getTrainingStatus().getObjects().getInProgress() != null);
    System.assert(response.getCollections().get(0).getTrainingStatus().getObjects().getDataChanged() != null);
    System.assert(response.getCollections().get(0).getTrainingStatus().getObjects().getLatestFailed() != null);
    System.assert(response.getCollections().get(0).getTrainingStatus().getObjects().getDescription() != null);

    Test.stopTest();
  }
  static testMethod void testGetCollection() {
    String mockResponseBody = '{"collection_id": "collectionId", "name": "name", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "image_count": "10", "training_status": {"objects": {"ready": false, "in_progress": true, "data_changed": false, "latest_failed": true, "description": "description"}}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.GetCollectionOptions getCollectionOptionsModel = new IBMVisualRecognitionV4Models.GetCollectionOptionsBuilder()
      .collectionId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.getCollection(getCollectionOptionsModel);
    System.assert(response.getCollectionId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getImageCount() != null);
    System.assert(response.getTrainingStatus().getObjects().getReady() != null);
    System.assert(response.getTrainingStatus().getObjects().getInProgress() != null);
    System.assert(response.getTrainingStatus().getObjects().getDataChanged() != null);
    System.assert(response.getTrainingStatus().getObjects().getLatestFailed() != null);
    System.assert(response.getTrainingStatus().getObjects().getDescription() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateCollection() {
    String mockResponseBody = '{"collection_id": "collectionId", "name": "name", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "image_count": "10", "training_status": {"objects": {"ready": false, "in_progress": true, "data_changed": false, "latest_failed": true, "description": "description"}}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.UpdateCollectionOptions updateCollectionOptionsModel = new IBMVisualRecognitionV4Models.UpdateCollectionOptionsBuilder()
      .collectionId('testString')
      .name('testString')
      .description('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.updateCollection(updateCollectionOptionsModel);
    System.assert(response.getCollectionId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getImageCount() != null);
    System.assert(response.getTrainingStatus().getObjects().getReady() != null);
    System.assert(response.getTrainingStatus().getObjects().getInProgress() != null);
    System.assert(response.getTrainingStatus().getObjects().getDataChanged() != null);
    System.assert(response.getTrainingStatus().getObjects().getLatestFailed() != null);
    System.assert(response.getTrainingStatus().getObjects().getDescription() != null);

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

    IBMVisualRecognitionV4Models.DeleteCollectionOptions deleteCollectionOptionsModel = new IBMVisualRecognitionV4Models.DeleteCollectionOptionsBuilder()
      .collectionId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCollection(deleteCollectionOptionsModel);

    Test.stopTest();
  }
  static testMethod void testAddImages() {
    String mockResponseBody = '{"images": [{"image_id": "imageId", "updated": "2017-05-16T13:56:54.957Z", "created": "2017-05-16T13:56:54.957Z", "source": {"type": "xType", "filename": "filename", "archive_filename": "archiveFilename", "source_url": "sourceUrl", "resolved_url": "resolvedUrl"}, "dimensions": {"height": "6", "width": "5"}, "errors": [{"code": "code", "message": "message", "more_info": "moreInfo", "target": {"type": "xType", "name": "name"}}], "training_data": {"objects": [{"object": "xObject", "location": {"top": "3", "left": "4", "width": "5", "height": "6"}}]}}], "warnings": [{"code": "code", "message": "message", "more_info": "moreInfo"}], "trace": "trace"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.AddImagesOptions addImagesOptionsModel = new IBMVisualRecognitionV4Models.AddImagesOptionsBuilder()
      .collectionId('testString')
      .imagesFile(new List<IBMWatsonFile> { mockFile })
      .imageUrl(new List<String> { 'testString' })
      .trainingData('{"objects":[{"object":"2018-Fit","location":{"left":33,"top":8,"width":760,"height":419}}]}')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.ImageDetailsList response = service.addImages(addImagesOptionsModel);
    System.assert(response.getImages().get(0).getImageId() != null);
    System.assert(response.getImages().get(0).getUpdated() != null);
    System.assert(response.getImages().get(0).getCreated() != null);
    System.assert(response.getImages().get(0).getSource().getXType() != null);
    System.assert(response.getImages().get(0).getSource().getFilename() != null);
    System.assert(response.getImages().get(0).getSource().getArchiveFilename() != null);
    System.assert(response.getImages().get(0).getSource().getSourceUrl() != null);
    System.assert(response.getImages().get(0).getSource().getResolvedUrl() != null);
    System.assert(response.getImages().get(0).getDimensions().getHeight() != null);
    System.assert(response.getImages().get(0).getDimensions().getWidth() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getCode() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getMessage() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getMoreInfo() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getTarget().getXType() != null);
    System.assert(response.getImages().get(0).getErrors().get(0).getTarget().getName() != null);
    System.assert(response.getImages().get(0).getTrainingData().getObjects().get(0).getXObject() != null);
    System.assert(response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getTop() != null);
    System.assert(response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getLeft() != null);
    System.assert(response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getWidth() != null);
    System.assert(response.getImages().get(0).getTrainingData().getObjects().get(0).getLocation().getHeight() != null);
    System.assert(response.getWarnings().get(0).getCode() != null);
    System.assert(response.getWarnings().get(0).getMessage() != null);
    System.assert(response.getWarnings().get(0).getMoreInfo() != null);
    System.assert(response.getTrace() != null);

    Test.stopTest();
  }
  static testMethod void testListImages() {
    String mockResponseBody = '{"images": [{"image_id": "imageId", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.ListImagesOptions listImagesOptionsModel = new IBMVisualRecognitionV4Models.ListImagesOptionsBuilder()
      .collectionId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.ImageSummaryList response = service.listImages(listImagesOptionsModel);
    System.assert(response.getImages().get(0).getImageId() != null);
    System.assert(response.getImages().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetImageDetails() {
    String mockResponseBody = '{"image_id": "imageId", "updated": "2017-05-16T13:56:54.957Z", "created": "2017-05-16T13:56:54.957Z", "source": {"type": "xType", "filename": "filename", "archive_filename": "archiveFilename", "source_url": "sourceUrl", "resolved_url": "resolvedUrl"}, "dimensions": {"height": "6", "width": "5"}, "errors": [{"code": "code", "message": "message", "more_info": "moreInfo", "target": {"type": "xType", "name": "name"}}], "training_data": {"objects": [{"object": "xObject", "location": {"top": "3", "left": "4", "width": "5", "height": "6"}}]}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.GetImageDetailsOptions getImageDetailsOptionsModel = new IBMVisualRecognitionV4Models.GetImageDetailsOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.ImageDetails response = service.getImageDetails(getImageDetailsOptionsModel);
    System.assert(response.getImageId() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getSource().getXType() != null);
    System.assert(response.getSource().getFilename() != null);
    System.assert(response.getSource().getArchiveFilename() != null);
    System.assert(response.getSource().getSourceUrl() != null);
    System.assert(response.getSource().getResolvedUrl() != null);
    System.assert(response.getDimensions().getHeight() != null);
    System.assert(response.getDimensions().getWidth() != null);
    System.assert(response.getErrors().get(0).getCode() != null);
    System.assert(response.getErrors().get(0).getMessage() != null);
    System.assert(response.getErrors().get(0).getMoreInfo() != null);
    System.assert(response.getErrors().get(0).getTarget().getXType() != null);
    System.assert(response.getErrors().get(0).getTarget().getName() != null);
    System.assert(response.getTrainingData().getObjects().get(0).getXObject() != null);
    System.assert(response.getTrainingData().getObjects().get(0).getLocation().getTop() != null);
    System.assert(response.getTrainingData().getObjects().get(0).getLocation().getLeft() != null);
    System.assert(response.getTrainingData().getObjects().get(0).getLocation().getWidth() != null);
    System.assert(response.getTrainingData().getObjects().get(0).getLocation().getHeight() != null);

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

    IBMVisualRecognitionV4Models.DeleteImageOptions deleteImageOptionsModel = new IBMVisualRecognitionV4Models.DeleteImageOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteImage(deleteImageOptionsModel);

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

    IBMVisualRecognitionV4Models.GetJpegImageOptions getJpegImageOptionsModel = new IBMVisualRecognitionV4Models.GetJpegImageOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .size('full')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.getJpegImage(getJpegImageOptionsModel);

    Test.stopTest();
  }
  static testMethod void testTrain() {
    String mockResponseBody = '{"collection_id": "collectionId", "name": "name", "description": "description", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z", "image_count": "10", "training_status": {"objects": {"ready": false, "in_progress": true, "data_changed": false, "latest_failed": true, "description": "description"}}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.TrainOptions trainOptionsModel = new IBMVisualRecognitionV4Models.TrainOptionsBuilder()
      .collectionId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.Collection response = service.train(trainOptionsModel);
    System.assert(response.getCollectionId() != null);
    System.assert(response.getName() != null);
    System.assert(response.getDescription() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);
    System.assert(response.getImageCount() != null);
    System.assert(response.getTrainingStatus().getObjects().getReady() != null);
    System.assert(response.getTrainingStatus().getObjects().getInProgress() != null);
    System.assert(response.getTrainingStatus().getObjects().getDataChanged() != null);
    System.assert(response.getTrainingStatus().getObjects().getLatestFailed() != null);
    System.assert(response.getTrainingStatus().getObjects().getDescription() != null);

    Test.stopTest();
  }
  static testMethod void testAddImageTrainingData() {
    String mockResponseBody = '{"objects": [{"object": "xObject", "location": {"top": "3", "left": "4", "width": "5", "height": "6"}}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.Location locationModel = new IBMVisualRecognitionV4Models.LocationBuilder()
      .top(38)
      .left(38)
      .width(38)
      .height(38)
      .build();
    IBMVisualRecognitionV4Models.TrainingDataObject trainingDataObjectModel = new IBMVisualRecognitionV4Models.TrainingDataObjectBuilder()
      .xObject('testString')
      .location(locationModel)
      .build();
    IBMVisualRecognitionV4Models.AddImageTrainingDataOptions addImageTrainingDataOptionsModel = new IBMVisualRecognitionV4Models.AddImageTrainingDataOptionsBuilder()
      .collectionId('testString')
      .imageId('testString')
      .objects(new List<IBMVisualRecognitionV4Models.TrainingDataObject> { trainingDataObjectModel })
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.TrainingDataObjects response = service.addImageTrainingData(addImageTrainingDataOptionsModel);
    System.assert(response.getObjects().get(0).getXObject() != null);
    System.assert(response.getObjects().get(0).getLocation().getTop() != null);
    System.assert(response.getObjects().get(0).getLocation().getLeft() != null);
    System.assert(response.getObjects().get(0).getLocation().getWidth() != null);
    System.assert(response.getObjects().get(0).getLocation().getHeight() != null);

    Test.stopTest();
  }
  static testMethod void testGetTrainingUsage() {
    String mockResponseBody = '{"start_time": "2017-05-16T13:56:54.957Z", "end_time": "2017-05-16T13:56:54.957Z", "completed_events": "15", "trained_images": "13", "events": [{"type": "xType", "collection_id": "collectionId", "completion_time": "2017-05-16T13:56:54.957Z", "status": "status", "image_count": "10"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMVisualRecognitionV4Models.GetTrainingUsageOptions getTrainingUsageOptionsModel = new IBMVisualRecognitionV4Models.GetTrainingUsageOptionsBuilder()
      .startTime('testString')
      .endTime('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMVisualRecognitionV4Models.TrainingEvents response = service.getTrainingUsage(getTrainingUsageOptionsModel);
    System.assert(response.getStartTime() != null);
    System.assert(response.getEndTime() != null);
    System.assert(response.getCompletedEvents() != null);
    System.assert(response.getTrainedImages() != null);
    System.assert(response.getEvents().get(0).getXType() != null);
    System.assert(response.getEvents().get(0).getCollectionId() != null);
    System.assert(response.getEvents().get(0).getCompletionTime() != null);
    System.assert(response.getEvents().get(0).getStatus() != null);
    System.assert(response.getEvents().get(0).getImageCount() != null);

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

    IBMVisualRecognitionV4Models.DeleteUserDataOptions deleteUserDataOptionsModel = new IBMVisualRecognitionV4Models.DeleteUserDataOptionsBuilder()
      .customerId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(deleteUserDataOptionsModel);

    Test.stopTest();
  }
}
