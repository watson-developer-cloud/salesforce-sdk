/*
 * (C) Copyright IBM Corp. 2018, 2020.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

public with sharing class IBMCompareComplyV1FTests {
  private static String VERSION;

  static {
    VERSION = '2018-10-15';
  }

  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, authenticator);

    testFeedbackOperations(service);
  }

  public static void testFeedbackOperations(IBMCompareComplyV1 service) {
    String userId = 'lp_apex';
    String comment = 'could be better';
    String text = '1. IBM will provide a Senior Managing Consultant / expert resource, for up to 80 hours, to assist '
        + 'Florida Power & Light (FPL) with the creation of an IT infrastructure unit cost model for existing '
        + 'infrastructure.';
    IBMCompareComplyV1Models.ShortDoc shortDoc = new IBMCompareComplyV1Models.ShortDocBuilder()
      .title('doc title')
      .hash('')
      .build();
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(241L)
      .xEnd(237L)
      .build();
    IBMCompareComplyV1Models.Label label1 = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('Obligation')
      .party('IBM')
      .build();
    List<String> ids1 = new List<String> { '85f5981a-ba91-44f5-9efa-0bd22e64b7bc', 'ce0480a1-5ef1-4c3e-9861-3743b5610795' };
    IBMCompareComplyV1Models.TypeLabel typeLabel1 = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(label1)
      .provenanceIds(ids1)
      .build();
    IBMCompareComplyV1Models.Label label2 = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('End User')
      .party('Exclusion')
      .build();
    List<String> ids2 = new List<String> { '85f5981a-ba91-44f5-9efa-0bd22e64b7bc', 'ce0480a1-5ef1-4c3e-9861-3743b5610795' };
    IBMCompareComplyV1Models.TypeLabel typeLabel2 = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(label2)
      .provenanceIds(ids2)
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typeLabel1, typeLabel2 };
    IBMCompareComplyV1Models.Category category1 = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Responsibilities')
      .provenanceIds(new List<String>())
      .build();
    IBMCompareComplyV1Models.Category category2 = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Amendments')
      .provenanceIds(new List<String>())
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { category1, category2 };
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabelsIn = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    IBMCompareComplyV1Models.Label label3 = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('Disclaimer')
      .party('buyer')
      .build();
    IBMCompareComplyV1Models.TypeLabel typeLabel3 = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(label3)
      .build();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabelsIn = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabel1, typeLabel3 })
      .categories(categories)
      .build();
    IBMCompareComplyV1Models.FeedbackDataInput feedbackDataInput = new IBMCompareComplyV1Models.FeedbackDataInputBuilder()
      .document(shortDoc)
      .location(location)
      .text(text)
      .originalLabels(originalLabelsIn)
      .updatedLabels(updatedLabelsIn)
      .feedbackType('element_classification')
      .modelId('contracts')
      .modelVersion('11.00')
      .build();

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
