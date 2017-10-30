public class IBMWatsonCredentialUtils {
  private static final String BASIC = 'Basic ';

  private IBMWatsonCredentialUtils() {
    // This is a utility class - no instantiation allowed.
  }

  public static String toBasicAuth(String username, String password) {
    Blob blobValue = Blob.valueOf(username + ':' + password);
    return BASIC + EncodingUtil.base64Encode(blobValue);
  }
}