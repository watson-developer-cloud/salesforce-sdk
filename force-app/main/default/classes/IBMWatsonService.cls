public abstract class IBMWatsonService {

  protected String serviceName {get;set;}

  private String apiKey;
  private String defaultEndPoint;
  private String endPoint;
  private String userAgent;
  private String name;
  private IBMWatsonIAMTokenManager tokenManager;
  private boolean skipAuthentication = false;
  private Map<String, String> defaultHeaders = null;

  private static final String URL = 'url';
  private static final String PATH_AUTHORIZATION_V1_TOKEN = '/v1/token';
  private static final String CALLOUT = 'callout:';
  private static final String BASIC = 'Basic ';
  private static final String BEARER = 'Bearer ';
  private static final String VERSION = 'version';
  private static final String USER_AGENT_FORMAT = 'watson-apis-salesforce-sdk/{0}/({1})';
  private static final String SDK_VERSION = '3.2.0';
  private static final String APIKEY_AS_USERNAME = 'apikey';
  private static final String ICP_PREFIX = 'icp-';
  private static final String AUTH_HEADER_DEPRECATION_MESSAGE = 'Authenticating with the X-Watson-Authorization-Token'
    + 'header is deprecated. The token continues to work with Cloud Foundry services, but is not supported for '
    + 'services that use Identity and Access Management (IAM) authentication. For details see the IAM '
    + 'authentication section in the README.';


  // Regular expression for JSON-related mimetypes.
  private static final Pattern JSON_MIME_PATTERN =
    Pattern.compile('(?i)application\\/((json)|(merge\\-patch\\+json))(;.*)?');
  private static final Pattern JSON_PATCH_MIME_PATTERN =
    Pattern.compile('(?i)application\\/json\\-patch\\+json(;.*)?');

  /**
   * Instantiates a new Watson service.
   *
   * @param name the service name
   */
  protected IBMWatsonService(String name) {
    this.name = name;
    this.userAgent = buildUserAgent(); // initialize the `User-Agent` value

    setEndPoint(CALLOUT + name);
  }

  /**
   * Returns true iff the specified mimeType indicates a JSON-related content type.
   * (e.g. application/json, application/merge-patch+json, etc.).
   * @param mimeType the mimetype to consider
   * @return true if the mimeType indicates a JSON-related content type
   */
  public static boolean isJsonMimeType(String mimeType) {
    return mimeType != null && JSON_MIME_PATTERN.matcher(mimeType).matches();
  }

  /**
   * Returns true iff the specified mimeType indicates a JsonPatch-related content type.
   * (e.g. application/json-patch+json).
   * @param mimeType the mimetype to consider
   * @return true if the mimeType indicates a JSON-related content type
   */
  public static boolean isJsonPatchMimeType(String mimeType) {
    return mimeType != null && JSON_PATCH_MIME_PATTERN.matcher(mimeType).matches();
  }

  private static String buildUserAgent() {
    ApexClass ac = [Select ApiVersion From ApexClass Where Name = 'IBMWatsonService' LIMIT 1];
    Organization org = [Select OrganizationType, InstanceName From Organization];
    return String.format(USER_AGENT_FORMAT, new List<String>{SDK_VERSION, 'APEX_API_VERSION=' + ac.ApiVersion + ';ORG_TYPE=' + org.OrganizationType + ';INSTANCE=' + org.InstanceName });
  }

  /**
   * Parses the IBMWatsonResponse.
   */
  protected Object processResponse(IBMWatsonResponse response, Type targetType) {
    if (targetType != null) {
      // this service is expecting a file response
      if (targetType == IBMWatsonFile.class) {
        String contentDisposition = response.getHeader(IBMWatsonHttpHeaders.CONTENT_DISPOSITION);
        String filename = contentDisposition.substringAfter('filename=');
        filename = (String.isNotBlank(filename)) ? filename.replaceAll('"', '') : 'result';
        String contentType = response.getHeader(IBMWatsonHttpHeaders.CONTENT_TYPE);
        IBMWatsonFile resFile = new IBMWatsonFile.FileBuilder()
          .name(filename)
          .description('Synthesize audio file')
          .contentType(contentType)
          .body(response.getBodyAsBlob())
          .build();
        return resFile;
      }
      else if (targetType.equals(String.class)) {
        return response.getBody();
      }
      // all other response types
      else{
        String responseText = response.getBody();
        if (String.isNotBlank(responseText)) {
          Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(responseText);
          Map<String, Object> safeJsonMap = IBMWatsonJSONUtil.prepareResponse(jsonMap);
          Object targetObject = targetType.newInstance();
          String jsonString = JSON.serialize(safeJsonMap);
          if (targetObject instanceof IBMWatsonDynamicResponseModel) {
            return (IBMWatsonDynamicResponseModel) addResponseHeaders(response, ((IBMWatsonResponseModel) targetObject).deserialize(jsonString, safeJsonMap, targetType));
          } else {
            return (IBMWatsonResponseModel) addResponseHeaders(response, ((IBMWatsonResponseModel) targetObject).deserialize(jsonString, safeJsonMap, targetType));
          }
        }
      }
    }

    return null;
  }

  /**
   * Adds headers onto the model returned from the service.
   */
  private Object addResponseHeaders(IBMWatsonResponse response, Object responseObject) {
  	IBMWatsonResponseModel testModel = (IBMWatsonResponseModel) responseObject;
    String[] headerKeys = response.getHeaderKeys();
    for (String key : headerKeys) {
      testModel.addHeader(key, response.getHeader(key));
    }
    return testModel;
  }

  /**
   * Executes the request and parses the response if successful, otherwise throws an exception.
   */
  protected Object createServiceCall(IBMWatsonRequest request, Type targetType) {
    if (request == null) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('request cannot be null');
    }

    IBMWatsonRequest.Builder builder = request.newBuilder();
    setDefaultHeaders(builder);

    if (String.isNotBlank(endpoint) && !endPoint.startsWith(CALLOUT)) {
      setAuthentication(builder);
    }

    // Execute the request
    IBMWatsonResponse response = IBMWatsonClient.executeRequest(builder.build());

    // if success, return the parsed the response
    if (response.isSuccessful()) {
      return processResponse(response, targetType);
    }

    // There was a client(4xx) or a server(5xx) error.
    // Get the error message and create the exception
    String error = response.getBody();
    Integer statusCode = response.getStatusCode();

    System.debug('IBMWatsonService.createServiceCall():' + error);

    if (statusCode == IBMWatsonHttpStatus.BAD_REQUEST) // HTTP 400
      throw new IBMWatsonServiceExceptions.BadRequestException(error != null ? error : 'Bad Request', response);

    if (statusCode == IBMWatsonHttpStatus.UNAUTHORIZED) // HTTP 401
      throw new IBMWatsonServiceExceptions.UnauthorizedException('Unauthorized: Access is denied due to invalid credentials. Tip: Check the service endpoint.', response);

    if (statusCode == IBMWatsonHttpStatus.FORBIDDEN) // HTTP 403
      throw new IBMWatsonServiceExceptions.ForbiddenException(error != null ? error : 'Forbidden: Service refuse the request', response);

    if (statusCode == IBMWatsonHttpStatus.NOT_FOUND) // HTTP 404
      throw new IBMWatsonServiceExceptions.NotFoundException(error != null ? error : 'Not found', response);

    if (statusCode == IBMWatsonHttpStatus.NOT_ACCEPTABLE) // HTTP 406
      throw new IBMWatsonServiceExceptions.ForbiddenException(error != null ? error : 'Forbidden: Service refuse the request', response);

    if (statusCode == IBMWatsonHttpStatus.CONFLICT) // HTTP 409
      throw new IBMWatsonServiceExceptions.ConflictException(error != null ? error : 'Conflict', response);

    if (statusCode == IBMWatsonHttpStatus.REQUEST_TOO_LONG) // HTTP 413
      throw new IBMWatsonServiceExceptions.RequestTooLargeException(error != null ? error : 'Request too large: The request entity is larger than the server is able to process', response);

    if (statusCode == IBMWatsonHttpStatus.UNSUPPORTED_MEDIA_TYPE) // HTTP 415
      throw new IBMWatsonServiceExceptions.UnsupportedException(error != null ? error : 'Unsupported Media Type', response);

    if (statusCode == IBMWatsonHttpStatus.TOO_MANY_REQUESTS) // HTTP 429
      throw new IBMWatsonServiceExceptions.TooManyRequestsException(error != null ? error : 'Too many requests', response);

    if (statusCode == IBMWatsonHttpStatus.INTERNAL_SERVER_ERROR) // HTTP 500
      throw new IBMWatsonServiceExceptions.InternalServerErrorException(error != null ? error : 'Internal Server Error', response);

    if (statusCode == IBMWatsonHttpStatus.SERVICE_UNAVAILABLE) // HTTP 503
      throw new IBMWatsonServiceExceptions.ServiceUnavailableException(error != null ? error : 'Service Unavailable', response);

    // if everything else fails
    throw new IBMWatsonServiceExceptions.ResponseException(statusCode, error, response);
  }

  /**
   * Sets the default headers including User-Agent.
   *
   * @param builder the new default headers
   */
  protected void setDefaultHeaders(IBMWatsonRequest.Builder builder) {
    if (defaultHeaders != null && !defaultHeaders.isEmpty()) {
      for (String key : defaultHeaders.keySet()) {
        builder.addHeader(key, defaultHeaders.get(key));
      }
      if (defaultHeaders.containsKey(IBMWatsonHttpHeaders.USER_AGENT) && defaultHeaders.get(IBMWatsonHttpHeaders.USER_AGENT) != null) {
        userAgent += ' ' + defaultHeaders.get(IBMWatsonHttpHeaders.USER_AGENT);
      }
    }
    builder.addHeader(IBMWatsonHttpHeaders.USER_AGENT, userAgent);
  }

  /**
   * Set the default headers to be used on every HTTP request.
   *
   * @param headers name value pairs of headers
   */
  public void setDefaultHeaders(Map<String, String> headers) {
    defaultHeaders = headers;
  }

  /**
   * Sets the authentication.
   *
   * @param builder the new authentication
   */
  protected virtual void setAuthentication(IBMWatsonRequest.Builder builder) {
    if (tokenManager != null) {
      String accessToken = tokenManager.getToken();
      builder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, BEARER + accessToken);
    } else if (getApiKey() == null) {
      if (skipAuthentication) {
        Map<String, String> currentHeaders = builder.build().getAllHeaders();
        if (currentHeaders.containsKey(IBMWatsonHttpHeaders.X_WATSON_AUTHORIZATION_TOKEN)) {
          System.debug(System.LoggingLevel.WARN, AUTH_HEADER_DEPRECATION_MESSAGE);
        }
        return;
      }
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('apiKey or username and password were not specified');
    } else {
      builder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, apiKey.startsWith(BASIC) ? apiKey : BASIC + apiKey);
    }
  }

  /**
   * Sets the username and password.
   *
   * @param username the username
   * @param password the password
   */
  public void setUsernameAndPassword(final String username, final String password) {
    // we'll perform the token exchange for users UNLESS they're on ICP
    if (username.equals(APIKEY_AS_USERNAME) && !password.startsWith(ICP_PREFIX)) {
      IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
        .apiKey(password)
        .build();
      setIamCredentials(iamOptions);
    } else {
      apiKey = IBMWatsonCredentialUtils.toBasicAuth(username, password);
    }
  }

  /**
   * Sets the end point.
   *
   * @param endPoint the new end point. Will be ignored if empty or null
   */
  public void setEndPoint(String endPointParam) {
    if (String.isNotBlank(endPointParam)) {
      String newEndPoint = endPointParam.endsWith('/') ? endPointParam.removeEnd('/') : endPointParam;
      if (this.endPoint == null) {
        this.defaultEndPoint = newEndPoint;
      }
      this.endPoint = newEndPoint;
    } else {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('endPointParam cannot be null or empty');
    }
  }

  /**
   * Sets IAM information.
   *
   * Be aware that if you pass in an access token using this method, you accept responsibility for managing the access
   * token yourself. You must set a new access token before this one expires. Failing to do so will result in
   * authentication errors after this token expires.
   *
   * @param iamOptions object containing values to be used for authenticating with IAM
   */
  public void setIamCredentials(IBMWatsonIAMOptions iamOptions) {
    this.tokenManager = new IBMWatsonIAMTokenManager(iamOptions);
  }

  /**
   * Gets the API endpoint.
   *
   *
   * @return the API endpoint
   */
  public String getEndPoint() {
    return endPoint;
  }

  /**
   * Gets the base64 username:password
   *
   *
   * @return the apiKey
   */
  protected String getApiKey() {
    return apiKey;
  }

  /**
   * Checks the status of the tokenManager.
   *
   * @return true if the tokenManager has been set
   */
  public Boolean isTokenManagerSet() {
    return tokenManager != null;
  }
}
