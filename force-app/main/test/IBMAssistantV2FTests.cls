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

public with sharing class IBMAssistantV2FTests {
  private static String URL = 'https://gateway.watsonplatform.net/assistant/api';
  private static String VERSION = '2019-02-28';

  public static void runAllTests(String apiKey, String assistantId) {
    IBMWatsonAuthenticator authenticator = new IBMWatsonIAMAuthenticator(apiKey);
    IBMAssistantV2 service = new IBMAssistantV2(VERSION, authenticator);
    service.setServiceURL(URL);

    IBMAssistantV2Models.SessionResponse sessionResponse = testCreateSession(service, assistantId);
    String sessionId = sessionResponse.getSessionId();
    testMesssage(service, assistantId, sessionId);
    testDeleteSession(service, assistantId, sessionId);
  }

  public static IBMAssistantV2Models.SessionResponse testCreateSession(IBMAssistantV2 service, String assistantId) {
    IBMAssistantV2Models.CreateSessionOptions createSessionOptions = new IBMAssistantV2Models.CreateSessionOptionsBuilder()
      .assistantId(assistantId)
      .build();
    IBMAssistantV2Models.SessionResponse response = service.createSession(createSessionOptions);

    System.debug('IBMAssistantV2FTests.testCreateSession(): ' + response);
    return response;
  }

  public static void testMesssage(IBMAssistantV2 service, String assistantId, String sessionId) {
    List<String> messages = new List<String> {
        'I want some pizza.',
        'I\'d like 3 pizzas.',
        'Large'
    };
    IBMAssistantV2Models.MessageContext context = new IBMAssistantV2Models.MessageContext();

    for (String message : messages) {
      IBMAssistantV2Models.MessageInputOptions inputOptions = new IBMAssistantV2Models.MessageInputOptionsBuilder()
        .debug(true)
        .build();
      IBMAssistantV2Models.MessageInput input = new IBMAssistantV2Models.MessageInputBuilder()
          .text(message)
          .options(inputOptions)
          .messageType('text')
          .build();
      IBMAssistantV2Models.MessageOptions messageOptions = new IBMAssistantV2Models.MessageOptionsBuilder()
          .assistantId(assistantId)
          .sessionId(sessionId)
          .input(input)
          .context(context)
          .build();
      IBMAssistantV2Models.MessageResponse response = service.message(messageOptions);

      System.debug('IBMAssistantV2FTests.testMessage() single response: ' + response);
      context = response.getContext();
    }
  }

  public static void testDeleteSession(IBMAssistantV2 service, String assistantId, String sessionId) {
    IBMAssistantV2Models.DeleteSessionOptions deleteSessionOptions = new IBMAssistantV2Models.DeleteSessionOptionsBuilder()
        .assistantId(assistantId)
        .sessionId(sessionId)
        .build();
    service.deleteSession(deleteSessionOptions);

    System.debug('IBMAssistantV2FTests.testDeleteSession() completed successfully');
  }
}
