public class IBMWatsonCredentialUtils {
  private static final String BASIC = 'Basic ';
  private static final String USERNAME = 'username';
  private static final String PASSWORD = 'password';
  private static final String URL = 'url';
  private static final String IAM_API_KEY = 'apikey';
  private static final String IAM_URL = 'iam_url';
  private static final String CREDENTIAL_FILE_NAME = 'ibm_credentials';

  private IBMWatsonCredentialUtils() {
    // This is a utility class - no instantiation allowed.
  }

  public class ServiceCredentials {
    private String username;
    private String password;
    private String url;
    private String iamApiKey;
    private String iamUrl;

    private ServiceCredentials() { }

    public String getUsername() {
      return this.username;
    }

    public String getPassword() {
      return this.password;
    }

    public String getUrl() {
      return this.url;
    }

    public String getIamApiKey() {
      return this.iamApiKey;
    }

    public String getIamUrl() {
      return this.iamUrl;
    }

    public boolean isEmpty() {
      return (username == null
          && password == null
          && url == null
          && iamApiKey == null
          && iamUrl == null);
    }
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

  public static ServiceCredentials loadCredentialFileValues(String serviceName) {
    ServiceCredentials serviceCredentials = new ServiceCredentials();
    String body;

    try {
      StaticResource credentialFileResource = [SELECT Id, Body FROM StaticResource WHERE Name = :CREDENTIAL_FILE_NAME LIMIT 1];
      fileContents = credentialFileResource.Body.toString();
    } catch (QueryException e) {
      System.debug(System.LoggingLevel.INFO, 'Could not find credential file in Static Resources');
      return serviceCredentials;
    }

    String[] lineList = fileContents.split('\r\n');
    for (String line : lineList) {
      String[] keyAndVal = line.split('=');
      String lowercaseKey = keyAndVal[0].toLowerCase();
      Integer serviceNameLength = serviceName.length();

      if (lowercaseKey.contains(serviceName)) {
        String credentialType = lowercaseKey.substring(serviceNameLength + 1);
        String credentialValue = keyAndVal[1];

        if (credentialType.contains(USERNAME)) {
          serviceCredentials.username = credentialValue;
        } else if (credentialType.contains(PASSWORD)) {
          serviceCredentials.password = credentialValue;
        } else if (credentialType.contains(URL)) {
          serviceCredentials.url = credentialValue;
        } else if (credentialType.contains(IAM_API_KEY)) {
          serviceCredentials.iamApiKey = credentialValue;
        } else if (credentialType.contains(IAM_URL)) {
          serviceCredentials.iamUrl = credentialValue;
        } else {
          System.debug(System.LoggingLevel.WARN, 'Unknown credential key found in credential file: ' + credentialType);
        }
      }
    }

    return serviceCredentials;
  }
}