@isTest
private class IBMWatsonCredentialUtilsTest {
  private static String testCredentialFileContents = 'DISCOVERY_USERNAME=disco_username\r\n'
    + 'DISCOVERY_PASSWORD=disco_password\r\n'
    + 'NATURAL_LANGUAGE_CLASSIFIER_APIKEY=nlc_apikey';

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
    Map<String, String> serviceCredentials = IBMWatsonCredentialUtils.parseCredentialFile('assistant', testCredentialFileContents);
    System.assert(serviceCredentials.isEmpty());
  }

  static testMethod void testParsingCredentialFileUsernameAndPassword() {
    String expectedUsername = 'disco_username';
    String expectedPassword = 'disco_password';

    Map<String, String> serviceCredentials = IBMWatsonCredentialUtils.parseCredentialFile('discovery', testCredentialFileContents);
    System.assertEquals(expectedUsername, serviceCredentials.get(IBMWatsonCredentialUtils.PROPNAME_USERNAME));
    System.assertEquals(expectedPassword, serviceCredentials.get(IBMWatsonCredentialUtils.PROPNAME_PASSWORD));
  }

  static testMethod void testParsingCredentialFileApikey() {
    String expectedApikey = 'nlc_apikey';

    Map<String, String> serviceCredentials = IBMWatsonCredentialUtils.parseCredentialFile('natural_language_classifier', testCredentialFileContents);
    System.assertEquals(expectedApikey, serviceCredentials.get(IBMWatsonCredentialUtils.PROPNAME_APIKEY));
  }
}
