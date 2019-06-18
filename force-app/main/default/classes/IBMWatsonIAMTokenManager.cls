/**
 * Retrieves, stores, and refreshes IAM tokens.
 */
public class IBMWatsonIAMTokenManager implements IBMWatsonAuthenticator {
  private String userManagedAccessToken;
  private String apiKey;
  private String url;
  private IBMWatsonIAMToken tokenData;

  private static final String DEFAULT_IAM_URL = 'https://iam.cloud.ibm.com/identity/token';
  private static final String GRANT_TYPE = 'grant_type';
  private static final String REQUEST_GRANT_TYPE = 'urn:ibm:params:oauth:grant-type:apikey';
  private static final String REFRESH_GRANT_TYPE = 'refresh_token';
  private static final String API_KEY = 'apikey';
  private static final String RESPONSE_TYPE = 'response_type';
  private static final String CLOUD_IAM = 'cloud_iam';
  private static final String REFRESH_TOKEN = 'refresh_token';
  private static final String DEFAULT_ERROR_MESSAGE = 'There was a problem calling the IAM API.';

  public IBMWatsonIAMTokenManager(IBMWatsonIAMOptions options) {
    if (options.getApiKey() != null) {
      if (IBMWatsonCredentialUtils.hasBadStartOrEndChar(options.getApiKey())) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('The IAM API key shouldn\'t start or end with curly brackets or '
            + 'quotes. Please remove any surrounding {, }, or " characters.');
      }
      this.apiKey = options.getApiKey();
    }
    if (options.getUrl() != null) {
      this.url = options.getUrl();
    } else {
      this.url = DEFAULT_IAM_URL;
    }
    this.userManagedAccessToken = options.getAccessToken();
    tokenData = new IBMWatsonIAMToken();
  }

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_IAM;
  }

  public void authenticate(IBMWatsonRequest.Builder requestBuilder) {
    requestBuilder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, 'Bearer ' + getToken());
  }

  /**
   * This function returns an access token. The source of the token is determined by the following logic:
   * 1. If user provides their own managed access token, assume it is valid and send it
   * 2. If this class is managing tokens and does not yet have one, or the token is expired, make a request
   * for one
   * 4. If this class is managing tokens and has a valid token stored, send it
   *
   * @return the valid access token
   */
  public String getToken() {
    String token;

    if (userManagedAccessToken != null) {
      // use user-managed access token
      token = userManagedAccessToken;
    } else if (tokenData.getAccessToken() == null || isAccessTokenExpired()) {
      // request new token
      token = requestToken();
    } else {
      // use valid managed token
      token = tokenData.getAccessToken();
    }

    return token;
  }

  /**
   * Request an IAM token using an API key. Also updates internal managed IAM token information.
   *
   * @return the new access token
   */
  private String requestToken() {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(url);

    builder.addHeader(IBMWatsonHttpHeaders.CONTENT_TYPE, IBMWatsonHttpMediaType.APPLICATION_FORM_URLENCODED);

    IBMWatsonFormBody formBody = new IBMWatsonFormBody.Builder()
      .add(GRANT_TYPE, REQUEST_GRANT_TYPE)
      .add(API_KEY, apiKey)
      .add(RESPONSE_TYPE, CLOUD_IAM)
      .build();
    builder.body(formBody);

    tokenData = callIamApi(builder.build());
    return tokenData.getAccessToken();
  }

  /**
   * Check if currently stored access token is expired.
   *
   * Using a buffer to prevent the edge case of the
   * token expiring before the request could be made.
   *
   * The buffer will be a fraction of the total TTL. Using 80%.
   *
   * @return whether the current managed access token is expired or not
   */
  private boolean isAccessTokenExpired() {
    if (tokenData.getExpiresIn() == null || tokenData.getExpiration() == null) {
      return true;
    }

    Double fractionOfTimeToLive = 0.8;
    Long timeToLive = tokenData.getExpiresIn();
    Long expirationTime = tokenData.getExpiration();
    Double refreshTime = expirationTime - (timeToLive * (1.0 - fractionOfTimeToLive));
    Double currentTime = Math.floor(System.now().getTime() / 1000);

    return refreshTime < currentTime;
  }

  /**
   * Executes call to IAM API and returns IBMWatsonIAMToken object representing the response.
   *
   * @param request the request for the IAM API
   * @return object containing requested IAM token information
   */
  private IBMWatsonIAMToken callIamApi(IBMWatsonRequest request) {
    IBMWatsonResponse response = IBMWatsonClient.executeRequest(request);

    if (response.isSuccessful() && String.isNotBlank(response.getBody())) {
      Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
      Map<String, Object> safeJsonMap = IBMWatsonJSONUtil.prepareResponse(jsonMap);
      String jsonString = JSON.serialize(safeJsonMap);
      return (IBMWatsonIAMToken) ((IBMWatsonGenericModel) IBMWatsonIAMToken.class.newInstance()).deserialize(jsonString, safeJsonMap, IBMWatsonIAMToken.class);
    } else {
      Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
      String errorMessage = responseMap.get('errorMessage').toString();
      if (errorMessage == null) {
        errorMessage = DEFAULT_ERROR_MESSAGE;
      }
      Integer statusCode = response.getStatusCode();
      throw new IBMWatsonServiceExceptions.ResponseException(statusCode, errorMessage, response);
    }
  }
}
