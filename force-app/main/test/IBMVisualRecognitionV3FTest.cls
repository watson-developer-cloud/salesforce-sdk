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

public with sharing class IBMVisualRecognitionV3FTest {
  private static String URL = 'https://gateway.watsonplatform.net/visual-recognition/api';
  private static String VERSION = '2018-03-19';

  public static void runAllTests(String iamApiKey) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(iamApiKey);
    IBMVisualRecognitionV3 service = new IBMVisualRecognitionV3(VERSION, authenticator);
    service.setServiceURL(URL);

    testClassify(service);
  }

  /**
   *  Test Analyze text, HTML, or a public webpage.
   *
   */
  public static IBMVisualRecognitionV3Models.ClassifiedImages testClassify(IBMVisualRecognitionV3 service) {
    IBMVisualRecognitionV3Models.ClassifyOptions options = new IBMVisualRecognitionV3Models.ClassifyOptionsBuilder()
      .url('https://watson-test-resources.mybluemix.net/resources/car.png')
      .build();
    IBMVisualRecognitionV3Models.ClassifiedImages resp = service.classify(options);
    System.debug('IBMVisualRecognitionV3FTest.testClassify(): ' + resp);
    return resp;
  }
}
