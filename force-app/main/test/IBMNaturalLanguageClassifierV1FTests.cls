/*
 * (C) Copyright IBM Corp. 2017, 2020.
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

public without sharing class IBMNaturalLanguageClassifierV1FTests {
  // Make sure the named credentials below is defined
  private static String URL = 'https://gateway.watsonplatform.net/natural-language-classifier/api';
  private static String NAMED_CREDENTIALS = 'callout:watson_natural_language_classifier_v1';
  private static final String CLASSIFIER_TEXT_1 = 'How hot will it be today?';
  private static final String CLASSIFIER_TEXT_2 = 'Is it hot outside?';

  public static void runAllTests(String apiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMNaturalLanguageClassifierV1 service = new IBMNaturalLanguageClassifierV1(authenticator);
    service.setServiceURL(URL);

    String classifierId = testCreateClassifier(service).getClassifierId();
    testListClassifiers(service);
    String classifierStatus=testGetClassifier(service, classifierId).getStatus();

    if (classifierStatus.equalsIgnoreCase('ready')) {
      testClassify(service, classifierId);
      textClassifyCollection(service, classifierId);
    }
    testDeleteClassifier(service, classifierId);
  }
  private static String CSVFormat(List<String> strRows) {
    String CSVBody = '';
    for (String str: strRows) {
      CSVBody += str + '\n';
    }
    return CSVBody;
  }

  /**
   *  Test classify.
   */
  public static IBMNaturalLanguageClassifierV1Models.Classification testClassify(IBMNaturalLanguageClassifierV1 service, String classifierId) {
    IBMNaturalLanguageClassifierV1Models.ClassifyOptions classifyOptions =
      new IBMNaturalLanguageClassifierV1Models.ClassifyOptionsBuilder()
      .classifierId(classifierId)
      .text(CLASSIFIER_TEXT_1)
      .build();

    IBMNaturalLanguageClassifierV1Models.Classification classification = service.classify(classifyOptions);
    return classification;
  }

  /**
   * Test classifying multiple phrases at once.
   */
  public static IBMNaturalLanguageClassifierV1Models.ClassificationCollection textClassifyCollection(IBMNaturalLanguageClassifierV1 service, String classifierId) {
    IBMNaturalLanguageClassifierV1Models.ClassifyInput input1 = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text(CLASSIFIER_TEXT_1)
      .build();
    IBMNaturalLanguageClassifierV1Models.ClassifyInput input2 = new IBMNaturalLanguageClassifierV1Models.ClassifyInputBuilder()
      .text(CLASSIFIER_TEXT_2)
      .build();
    List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> inputCollection = new List<IBMNaturalLanguageClassifierV1Models.ClassifyInput> {
      input1,
      input2
    };
    IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptions classifyOptions = new IBMNaturalLanguageClassifierV1Models.ClassifyCollectionOptionsBuilder()
      .classifierId(classifierId)
      .collection(inputCollection)
      .build();
    IBMNaturalLanguageClassifierV1Models.ClassificationCollection classification = service.classifyCollection(classifyOptions);
    return classification;
  }

  /**
   *  Test create a classifier
   *
   */
  public static IBMNaturalLanguageClassifierV1Models.Classifier testCreateClassifier(IBMNaturalLanguageClassifierV1 service) {
    //
    //  Metadata
    //
    Attachment trainingMetadataAttachment = new Attachment(Body = Blob.valueOf('{"language":"en","name":"metadata.json"}'),
      Name='metadata.json',
      Description='metadata for the training file',
      ContentType='application/json');
    IBMWatsonFile trainingMetadata = new IBMWatsonFile.FileBuilder()
      .attachment(trainingMetadataAttachment)
      .build();

    //
    //  Training data
    //
    List<String> TrainingDataContentList = new List<String>{
      'How hot is it today?,temperature',
      'Is it hot outside?,temperature',
      'Will it be uncomfortably hot?,temperature',
      'Will it be sweltering?,temperature',
      'How cold is it today?,temperature',
      'Is it cold outside?,temperature',
      'Will it be uncomfortably cold?,temperature',
      'Will it be frigid?,temperature',
      'Is it windy?,conditions',
      'Will it rain today?,conditions',
      'What are the chances for rain?,conditions',
      'Will we get snow?,conditions',
      'Are we expecting sunny conditions?,conditions',
      'Is it overcast?,conditions',
      'Will it be cloudy?,conditions',
      'How much rain will fall today?,conditions'
    };

    String TrainingDataContentCSVStr = CSVFormat(TrainingDataContentList);
    blob TrainingDataContentCSVBlob = Blob.valueOf(TrainingDataContentCSVStr);

    Attachment trainingDataAttachment = new Attachment(Body = TrainingDataContentCSVBlob,
      Name='weather_data_train.csv',
      Description='Each record in this sample includes the text input and one class',
      ContentType='text/csv');
    IBMWatsonFile trainingData = new IBMWatsonFile.FileBuilder()
      .attachment(trainingDataAttachment)
      .build();

    //
    //  Construct options
    //
    IBMNaturalLanguageClassifierV1Models.CreateClassifierOptions createClassifierOptions =
      new IBMNaturalLanguageClassifierV1Models.CreateClassifierOptionsBuilder()
      .trainingMetadata(trainingMetadata)
      .trainingData(trainingData)
      .build();

    //
    //  Create classifier request
    //
    IBMNaturalLanguageClassifierV1Models.Classifier Classifier = service.createClassifier(createClassifierOptions);

    return Classifier;
  }

  /**
   *  Test delete a classifier
   *
   */
  public static void testDeleteClassifier(IBMNaturalLanguageClassifierV1 service, String classifierId) {
    IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptions deleteClassifierOptions =
      new IBMNaturalLanguageClassifierV1Models.DeleteClassifierOptionsBuilder(classifierId)
      .build();

    service.deleteClassifier(deleteClassifierOptions);
  }

  /**
   *  Test retrieve information about an existing classifier
   */
  public static IBMNaturalLanguageClassifierV1Models.Classifier testGetClassifier(IBMNaturalLanguageClassifierV1 service, String classifierId) {
    IBMNaturalLanguageClassifierV1Models.GetClassifierOptions getClassifierOptions =
      new IBMNaturalLanguageClassifierV1Models.GetClassifierOptionsBuilder(ClassifierId)
      .build();
    return service.getClassifier(getClassifierOptions);
  }

  /**
   *  Test retrieve information about all classifiers
   *
   */
  public static IBMNaturalLanguageClassifierV1Models.ClassifierList testListClassifiers(IBMNaturalLanguageClassifierV1 service) {
    IBMNaturalLanguageClassifierV1Models.ListClassifiersOptions listClassifiersOptions =
      new IBMNaturalLanguageClassifierV1Models.ListClassifiersOptionsBuilder()
      .build();
    return service.listClassifiers(listClassifiersOptions);
  }
}
