/**
 * Retrieves, stores, and refreshes IAM tokens.
 */
public class IBMWatsonIAMTokenManager {
  private String userManagedAccessToken;
  private String apiKey;
  private String url;
  private IBMWatsonIAMToken tokenData;

  private static final String DEFAULT_IAM_URL = 'https://iam.bluemix.net/identity/token';
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

  /**
   * This function returns an access token. The source of the token is determined by the following logic:
   * 1. If user provides their own managed access token, assume it is valid and send it
   * 2. If this class is managing tokens and does not yet have one, or the refresh token is expired, make a request
   * for one
   * 3. If this class is managing tokens and the token has expired, refresh it
   * 4. If this class is managing tokens and has a valid token stored, send it
   *
   * @return the valid access token
   */
  public String getToken() {
    String token;

    if (userManagedAccessToken != null) {
      // use user-managed access token
      token = userManagedAccessToken;
    } else if (tokenData.getAccessToken() == null || isRefreshTokenExpired()) {
      // request new token
      token = requestToken();
    } else if (isAccessTokenExpired()) {
      // refresh current token
      token = refreshToken();
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
   * Refresh an IAM token using a refresh token. Also updates internal managed IAM token information.
   *
   * @return the new access token
   */
  private String refreshToken() {
    IBMWatsonRequestBuilder builder = IBMWatsonRequestBuilder.httpPost(url);

    builder.addHeader(IBMWatsonHttpHeaders.CONTENT_TYPE, IBMWatsonHttpMediaType.APPLICATION_FORM_URLENCODED);

    IBMWatsonFormBody formBody = new IBMWatsonFormBody.Builder()
      .add(GRANT_TYPE, REFRESH_GRANT_TYPE)
      .add(REFRESH_TOKEN, tokenData.getRefreshToken())
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
   * Used as a fail-safe to prevent the condition of a refresh token expiring,
   * which could happen after around 30 days. This function will return true
   * if it has been at least 7 days and 1 hour since the last token was
   * retrieved.
   *
   * @returns whether the current managed refresh token is expired or not
   */
  private boolean isRefreshTokenExpired() {
    if (tokenData.getExpiration() == null) {
      return true;
    }

    Integer sevenDays = 7 * 24 * 3600;
    Double currentTime = Math.floor(System.now().getTime() / 1000);
    Long newTokenTime = tokenData.getExpiration() + sevenDays;
    return newTokenTime < currentTime;
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
      String errorMessage = responseMap.get('errorMessage');
      if (errorMessage == null) {
        errorMessage = DEFAULT_ERROR_MESSAGE;
      }
      Integer statusCode = response.getStatusCode();
      throw new IBMWatsonServiceExceptions.ResponseException(statusCode, errorMessage, response);
    }
  }
}
