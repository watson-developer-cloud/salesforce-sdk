public class IBMWatsonCredentialUtils {
  private static final String BASIC = 'Basic ';

  private IBMWatsonCredentialUtils() {
    // This is a utility class - no instantiation allowed.
  }

  public static String toBasicAuth(String username, String password) {
    Blob blobValue = Blob.valueOf(username + ':' + password);
    return BASIC + EncodingUtil.base64Encode(blobValue);
  }

  /**
   * Returns true if the supplied value begins or ends with curly brackets or quotation marks.
   *
   * @param credentialValue the credential value to check
   * @return true if the value starts or ends with these characters and is therefore invalid
   */
  public static Boolean hasBadStartOrEndChar(String credentialValue) {
    return credentialValue.startsWith('{')
      || credentialValue.startsWith('"')
      || credentialValue.endsWith('}')
      || credentialValue.endsWith('"');
  }
}