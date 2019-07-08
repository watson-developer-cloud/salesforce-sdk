@isTest
private class IBMWatsonCredentialUtilsTest {
  private static String testCredentialFileContents = 'DISCOVERY_USERNAME=disco_username\r\n'
    + 'DISCOVERY_PASSWORD=disco_password\r\n'
    + 'DISCOVERY_URL=https://gateway.watsonplatform.net/discovery/api\r\n'
    + 'NATURAL_LANGUAGE_CLASSIFIER_URL=https://gateway-s.watsonplatform.net/natural-language-classifier/api\r\n'
    + 'NATURAL_LANGUAGE_CLASSIFIER_IAM_APIKEY=nlc_apikey\r\n'
    + 'ASSISTANT_ACCESS_TOKEN=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicm9sZSI6IkFkbWluIiwicGVybWlzc2lvbnMiOlsiYWRtaW5pc3RyYXRvciIsIm1hbmFnZV9jYXRhbG9nIiwiYWNjZXNzX2NhdGFsb2ciLCJtYW5hZ2VfcG9saWNpZXMiLCJhY2Nlc3NfcG9saWNpZXMiLCJ2aXJ0dWFsaXplX3RyYW5zZm9ybSIsImNhbl9wcm92aXNpb24iLCJkZXBsb3ltZW50X2FkbWluIl0sInN1YiI6ImFkbWluIiwiaXNzIjoiS05PWFNTTyIsImF1ZCI6IkRTWCIsInVpZCI6Ijk5OSIsImlhdCI6MTU1OTMyODk1NSwiZXhwIjo5OTk5OTk5OTk5OTk5OTk5OTl9.GE-ML3JWmI3oB0z5mjMG3jFtYVVA5bQCsOTOOj9ab7PcgJc1mA5hn1sONkO0JAFADhUoAgpG4KgQef5tjnCSrtl1tbnDuhaP1DH4QKMCZOkWrKyfQ2X8P1jhyJmV-KpE4wuTrGdMoMVj4wVRZwnxMRSK6LhV6pIzyOLLYR21zcW_2KcKWxCYfIC7tiM1d2PSM5nWa_5Vb068F8PtdiFUElEYHYKrvmwpV57_k2jpXoY6zw8PDcIiWQe3g20w6vCB6zWhxbcFWyjMg1tPOZHgTNNskPShHQBbtZFsSrc7rkNPzttKF70m7_JqrRYUZDNN8TmuR9uyitwxEFkr2L0WDQ\r\n'
    + 'ASSISTANT_CLOUD_TYPE=icp\r\n'
    + 'ASSISTANT_URL=https://icp.cluster:31843/assistant/test/instances/1560453115/api';

  static testMethod void testHasBadStartOrEndChar() {
    // valid
    System.assert(!IBMWatsonCredentialUtils.hasBadStartOrEndChar('this_is_fine'));

    // starting bracket
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('{bad_username'));
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('{{still_bad'));

    // ending bracket
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('invalid}'));
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('also_invalid}}'));

    // starting quote
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('"not_allowed_either'));
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('""still_not'));

    // ending quote
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('nope"'));
    System.assert(IBMWatsonCredentialUtils.hasBadStartOrEndChar('sorry""'));
  }

  static testMethod void testParsingCredentialFileNoService() {
    IBMWatsonCredentialUtils.ServiceCredentials serviceCredentials
      = IBMWatsonCredentialUtils.parseCredentialFile('language_translator', testCredentialFileContents);
    System.assert(serviceCredentials.isEmpty());
  }

  static testMethod void testParsingCredentialFileUsernameAndPassword() {
    String expectedUsername = 'disco_username';
    String expectedPassword = 'disco_password';
    String expectedUrl = 'https://gateway.watsonplatform.net/discovery/api';

    IBMWatsonCredentialUtils.ServiceCredentials serviceCredentials
      = IBMWatsonCredentialUtils.parseCredentialFile('discovery', testCredentialFileContents);
    System.assertEquals(expectedUsername, serviceCredentials.getUsername());
    System.assertEquals(expectedPassword, serviceCredentials.getPassword());
    System.assertEquals(expectedUrl, serviceCredentials.getUrl());
  }

  static testMethod void testParsingCredentialFileApikey() {
    String expectedApikey = 'nlc_apikey';
    String expectedUrl = 'https://gateway-s.watsonplatform.net/natural-language-classifier/api';

    IBMWatsonCredentialUtils.ServiceCredentials serviceCredentials
      = IBMWatsonCredentialUtils.parseCredentialFile('natural_language_classifier', testCredentialFileContents);
    System.assertEquals(expectedApikey, serviceCredentials.getIamApiKey());
    System.assertEquals(expectedUrl, serviceCredentials.getUrl());
  }

  static testMethod void testParsingCredentialFileIcp4d() {
    String expectedAccessToken = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicm9sZSI6IkFkbWluIiwicGVybWlzc2lvbnMiOlsiYWRtaW5pc3RyYXRvciIsIm1hbmFnZV9jYXRhbG9nIiwiYWNjZXNzX2NhdGFsb2ciLCJtYW5hZ2VfcG9saWNpZXMiLCJhY2Nlc3NfcG9saWNpZXMiLCJ2aXJ0dWFsaXplX3RyYW5zZm9ybSIsImNhbl9wcm92aXNpb24iLCJkZXBsb3ltZW50X2FkbWluIl0sInN1YiI6ImFkbWluIiwiaXNzIjoiS05PWFNTTyIsImF1ZCI6IkRTWCIsInVpZCI6Ijk5OSIsImlhdCI6MTU1OTMyODk1NSwiZXhwIjo5OTk5OTk5OTk5OTk5OTk5OTl9.GE-ML3JWmI3oB0z5mjMG3jFtYVVA5bQCsOTOOj9ab7PcgJc1mA5hn1sONkO0JAFADhUoAgpG4KgQef5tjnCSrtl1tbnDuhaP1DH4QKMCZOkWrKyfQ2X8P1jhyJmV-KpE4wuTrGdMoMVj4wVRZwnxMRSK6LhV6pIzyOLLYR21zcW_2KcKWxCYfIC7tiM1d2PSM5nWa_5Vb068F8PtdiFUElEYHYKrvmwpV57_k2jpXoY6zw8PDcIiWQe3g20w6vCB6zWhxbcFWyjMg1tPOZHgTNNskPShHQBbtZFsSrc7rkNPzttKF70m7_JqrRYUZDNN8TmuR9uyitwxEFkr2L0WDQ';
    String expectedUrl = 'https://icp.cluster:31843/assistant/test/instances/1560453115/api';

    IBMWatsonCredentialUtils.ServiceCredentials serviceCredentials
      = IBMWatsonCredentialUtils.parseCredentialFile('assistant', testCredentialFileContents);
    System.assertEquals(expectedAccessToken, serviceCredentials.getAccessToken());
    System.assertEquals(expectedUrl, serviceCredentials.getUrl());
  }
}
