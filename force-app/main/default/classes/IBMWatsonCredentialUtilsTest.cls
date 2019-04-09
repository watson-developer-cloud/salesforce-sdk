@isTest
private class IBMWatsonCredentialUtilsTest {
  private static String testCredentialFileContents = 'DISCOVERY_USERNAME=disco_username\r\n'
    + 'DISCOVERY_PASSWORD=disco_password\r\n'
    + 'DISCOVERY_URL=https://gateway.watsonplatform.net/discovery/api\r\n'
    + 'NATURAL_LANGUAGE_CLASSIFIER_URL=https://gateway-s.watsonplatform.net/natural-language-classifier/api\r\n'
    + 'NATURAL_LANGUAGE_CLASSIFIER_IAM_APIKEY=nlc_apikey';

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
      = IBMWatsonCredentialUtils.parseCredentialFile('assistant', testCredentialFileContents);
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
}
