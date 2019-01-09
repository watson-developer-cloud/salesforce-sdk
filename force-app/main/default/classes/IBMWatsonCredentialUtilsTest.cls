@isTest
private class IBMWatsonCredentialUtilsTest {
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
}
