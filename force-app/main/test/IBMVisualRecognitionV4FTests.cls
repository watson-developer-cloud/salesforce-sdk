public with sharing class IBMVisualRecognitionV4FTests {
  private static String VERSION = '2017-09-21';
  private static String URL = 'https://gateway.watsonplatform.net/visual-recognition/api';
  private static String PRE_MADE_COLLECTION_ID = 'd31d6534-3458-40c4-b6de-2185a5f3cbe4';
  private static String DOG_IMAGE_URL = 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/American_Eskimo_Dog.jpg/1280px-American_Eskimo_Dog.jpg';
  private static String CAT_IMAGE_URL = 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Felis_silvestris_catus_lying_on_rice_straw.jpg/1280px-Felis_silvestris_catus_lying_on_rice_straw.jpg';

   public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMVisualRecognitionV4 service = new IBMVisualRecognitionV4(VERSION, authenticator);
    service.setServiceURL(URL);

    testAnalyze(service);
    testCollectionOperations(service);
    testImageOperations(service);
    testDeleteUserData(service);
  }

  public static void testAnalyze(IBMVisualRecognitionV4 service) {
    IBMVisualRecognitionV4Models.AnalyzeOptions options = new IBMVisualRecognitionV4Models.AnalyzeOptionsBuilder()
      .addFeature('objects')
      .addImageUrl(DOG_IMAGE_URL)
      .build();
    IBMVisualRecognitionV4Models.AnalyzeResponse response = service.analyze(options);

    System.assert(response != null);
    System.assertEquals(2, response.getImages().size());
  }

  public static void testCollectionOperations(IBMVisualRecognitionV4 service) {
    // test create
    String newCollectionName = 'salesforce-sdk-test-collection';
    String newCollectionDescription = 'Collection for integration testing of the Visual Recognition v4 service in the Salesforce SDK';
    IBMVisualRecognitionV4Models.CreateCollectionOptions createCollectionOptions = new IBMVisualRecognitionV4Models.CreateCollectionOptionsBuilder()
      .name(newCollectionName)
      .description(newCollectionDescription)
      .build();
    IBMVisualRecognitionV4Models.Collection newCollection = service.createCollection(createCollectionOptions);

    // save ID for later
    String testCollectionId = newCollection.getCollectionId();

    System.assert(newCollection != null);
    System.assertEquals(newCollectionName, newCollection.getName());
    System.assertEquals(newCollectionDescription, newCollection.getDescription());

    try {
      // test get
      IBMVisualRecognitionV4Models.GetCollectionOptions getCollectionOptions = new IBMVisualRecognitionV4Models.GetCollectionOptionsBuilder()
        .collectionId(testCollectionId)
        .build();
      IBMVisualRecognitionV4Models.Collection retrievedCollection = service.getCollection(getCollectionOptions);

      System.assert(retrievedCollection != null);
      System.assertEquals(newCollection.getCollectionId(), retrievedCollection.getCollectionId());

      // test update
      String updatedDescription = 'Collection with an updated description, still for testing in the Salesforce SDK.';
      IBMVisualRecognitionV4Models.UpdateCollectionOptions updateCollectionOptions = new IBMVisualRecognitionV4Models.UpdateCollectionOptionsBuilder()
        .collectionId(testCollectionId)
        .description(updatedDescription)
        .build();
      IBMVisualRecognitionV4Models.Collection updatedCollection = service.updateCollection(updateCollectionOptions);

      System.assert(updatedCollection != null);
      System.assertEquals(updatedDescription, updatedCollection.getDescription());
    } finally {
      // test delete
      IBMVisualRecognitionV4Models.DeleteCollectionOptions deleteCollectionOptions = new IBMVisualRecognitionV4Models.DeleteCollectionOptionsBuilder()
        .collectionId(testCollectionId)
        .build();
      service.deleteCollection(deleteCollectionOptions);

      // test list
      IBMVisualRecognitionV4Models.ListCollectionsOptions listCollectionsOptions = new IBMVisualRecognitionV4Models.ListCollectionsOptionsBuilder().build();
      IBMVisualRecognitionV4Models.CollectionsList collectionsList = service.listCollections(listCollectionsOptions);

      System.assert(collectionsList != null);
      for (IBMVisualRecognitionV4Models.BaseCollection collection : collectionsList.getCollections()) {
        System.assert(!collection.getCollectionId().equals(testCollectionId));
      }
    }
  }

  private static String createTestCollection(IBMVisualRecognitionV4 service) {
    String testCollectionName = 'salesforce-sdk-test-collection';
    String testCollectionDescription = 'Collection for integration testing of the Visual Recognition v4 service in the Salesforce SDK';
    IBMVisualRecognitionV4Models.CreateCollectionOptions createCollectionOptions = new IBMVisualRecognitionV4Models.CreateCollectionOptionsBuilder()
      .name(testCollectionName)
      .description(testCollectionDescription)
      .build();
    IBMVisualRecognitionV4Models.Collection newCollection = service.createCollection(createCollectionOptions);
    String testCollectionId = newCollection.getCollectionId();

    return testCollectionId;
  }

  private static void deleteTestCollection(IBMVisualRecognitionV4 service, String collectionId) {
    IBMVisualRecognitionV4Models.DeleteCollectionOptions deleteCollectionOptions = new IBMVisualRecognitionV4Models.DeleteCollectionOptionsBuilder()
      .collectionId(collectionId)
      .build();
    service.deleteCollection(deleteCollectionOptions);
  }

  public static void testImageOperations(IBMVisualRecognitionV4 service) {
    // create new collection so we don't run into duplicate image issues
    String testCollectionId = createTestCollection(service);

    List<String> imageUrlList = new List<String> { CAT_IMAGE_URL, DOG_IMAGE_URL };

    IBMVisualRecognitionV4Models.AddImagesOptions addImagesOptions = new IBMVisualRecognitionV4Models.AddImagesOptionsBuilder()
      .imageUrl(imageUrlList)
      .collectionId(testCollectionId)
      .build();
    IBMVisualRecognitionV4Models.ImageDetailsList imageDetailsList = service.addImages(addImagesOptions);

    System.assert(imageDetailsList != null);
    String singleImageId = null;
    Set<String> addedImageIds = new Set<String>();
    for (IBMVisualRecognitionV4Models.ImageDetails imageDetails : imageDetailsList.getImages()) {
      addedImageIds.add(imageDetails.getImageId());
      if (singleImageId == null) {
        singleImageId = imageDetails.getImageId();
      }
    }

    try {
      // test get
      IBMVisualRecognitionV4Models.GetImageDetailsOptions getImageDetailsOptions = new IBMVisualRecognitionV4Models.GetImageDetailsOptionsBuilder()
        .collectionId(testCollectionId)
        .imageId(singleImageId)
        .build();
      IBMVisualRecognitionV4Models.ImageDetails imageDetails = service.getImageDetails(getImageDetailsOptions);

      System.assert(imageDetails != null);
      System.assertEquals(singleImageId, imageDetails.getImageId());

      // test get JPEG
      IBMVisualRecognitionV4Models.GetJpegImageOptions getJpegImageOptions = new IBMVisualRecognitionV4Models.GetJpegImageOptionsBuilder()
        .collectionId(testCollectionId)
        .imageId(singleImageId)
        .size('full')
        .build();
      IBMWatsonFile imageResponse = service.getJpegImage(getJpegImageOptions);

      System.assert(imageResponse != null);
    } finally {
      // delete images
      for (String imageId : addedImageIds) {
        IBMVisualRecognitionV4Models.DeleteImageOptions deleteImageOptions = new IBMVisualRecognitionV4Models.DeleteImageOptionsBuilder()
          .imageId(imageId)
          .collectionId(testCollectionId)
          .build();
        service.deleteImage(deleteImageOptions);
      }

      // test list and delete
      IBMVisualRecognitionV4Models.ListImagesOptions listImagesOptions = new IBMVisualRecognitionV4Models.ListImagesOptionsBuilder()
        .collectionId(testCollectionId)
        .build();
      IBMVisualRecognitionV4Models.ImageSummaryList imageSummaryList = service.listImages(listImagesOptions);

      System.assert(imageSummaryList != null);
      for (IBMVisualRecognitionV4Models.ImageSummary imageSummary : imageSummaryList.getImages()) {
        System.assert(!addedImageIds.contains(imageSummary.getImageId()));
      }

      // remove test collection
      deleteTestCollection(service, testCollectionId);
    }
  }

  public static void testDeleteUserData(IBMVisualRecognitionV4 service) {
    IBMVisualRecognitionV4Models.DeleteUserDataOptions deleteUserDataOptions = new IBMVisualRecognitionV4Models.DeleteUserDataOptionsBuilder()
      .customerId('test_customer_id')
      .build();
    service.deleteUserData(deleteUserDataOptions);
  }
}
