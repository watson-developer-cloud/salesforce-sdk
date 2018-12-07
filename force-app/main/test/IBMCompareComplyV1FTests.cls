public with sharing class IBMCompareComplyV1FTests {
  private static String VERSION;

  static {
    VERSION = '2018-10-15';
  }

  public static void runAllTests(String apiKey) {
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey(apikey)
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    testFeedbackOperations(service);
  }

  public static void testFeedbackOperations(IBMCompareComplyV1 service) {
    String userId = 'lp_apex';
    String comment = 'could be better';
    String text = 'This is some text from a contract about something.';
    IBMCompareComplyV1Models.ShortDoc shortDoc = new IBMCompareComplyV1Models.ShortDoc();
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.Location();
    location.setXbegin(0L);
    location.setXend(1L);
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabelsIn = new IBMCompareComplyV1Models.OriginalLabelsIn();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabelsIn = new IBMCompareComplyV1Models.UpdatedLabelsIn();
    IBMCompareComplyV1Models.FeedbackDataInput feedbackDataInput = new IBMCompareComplyV1Models.FeedbackDataInput();
    feedbackDataInput.setDocument(shortDoc);
    feedbackDataInput.setLocation(location);
    feedbackDataInput.setText(text);
    feedbackDataInput.setOriginalLabels(originalLabelsIn);
    feedbackDataInput.setUpdatedLabels(updatedLabelsIn);

    IBMCompareComplyV1Models.AddFeedbackOptions addFeedbackOptions = new IBMCompareComplyV1Models.AddFeedbackOptionsBuilder()
        .userId(userId)
        .comment(comment)
        .feedbackData(feedbackDataInput)
        .build();
    IBMCompareComplyV1Models.FeedbackReturn feedbackReturn = service.addFeedback(addFeedbackOptions);
    System.assert(feedbackReturn != null);
    String feedbackId = feedbackReturn.getFeedbackId();

    IBMCompareComplyV1Models.GetFeedbackOptions getFeedbackOptions = new IBMCompareComplyV1Models.GetFeedbackOptionsBuilder()
        .feedbackId(feedbackId)
        .build();
    IBMCompareComplyV1Models.GetFeedback getFeedback = service.getFeedback(getFeedbackOptions);
    System.assert(getFeedback != null);

    IBMCompareComplyV1Models.DeleteFeedbackOptions deleteFeedbackOptions = new IBMCompareComplyV1Models.DeleteFeedbackOptionsBuilder()
        .feedbackId(feedbackId)
        .build();
    service.deleteFeedback(deleteFeedbackOptions);

    IBMCompareComplyV1Models.FeedbackList feedbackList = service.listFeedback(new IBMCompareComplyV1Models.ListFeedbackOptionsBuilder().build());
    List<IBMCompareComplyV1Models.GetFeedback> allFeedback = feedbackList.getFeedback();
    boolean successfullyDeleted = true;
    for (IBMCompareComplyV1Models.GetFeedback feedback : allFeedback) {
      if (feedback.getFeedbackId().equals(feedbackId)) {
        successfullyDeleted = false;
        break;
      }
    }
    System.assert(successfullyDeleted);
  }
}
