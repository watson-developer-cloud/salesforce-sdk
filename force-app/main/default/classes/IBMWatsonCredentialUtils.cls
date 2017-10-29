public class IBMWatsonCredentialUtils {
  private static final String BASIC = 'Basic ';

  private IBMWatsonCredentialUtils() {
    // This is a utility class - no instantiation allowed.
  }

  public static String toBasicAuth(String username, String password) {
    Blob blobValue = Blob.valueOf(username + ':' + password);
    return BASIC + EncodingUtil.base64Encode(blobValue);
  }

  public static String getAPIKey(String serviceName) {
    // TODO: Retrieve api_key or toBasicAuth(username, password) from configuration file or environment variable.
    return null;
  }

  public static String getAPIUrl(String serviceName) {
    // TODO: Retrieve service url from configuration file or environment variable.
    return null;
  }
}