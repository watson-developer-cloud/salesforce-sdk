public abstract class IBMWatsonService {

  protected String serviceName {get;set;}

  private String apiKey;
  private String endPoint;
  private String userAgent;
  private String name;
  private boolean skipAuthentication = false;
  private Map<String, String> defaultHeaders = null;

  private static final String URL = 'url';
  private static final String PATH_AUTHORIZATION_V1_TOKEN = '/v1/token';
  private static final String AUTHORIZATION = 'authorization';
  private static final String CALLOUT = 'callout:';
  private static final String BASIC = 'Basic ';
  private static final String VERSION = 'version';
  private static final String USER_AGENT_FORMAT = 'watson-apis-salesforce-sdk/{0}/({1})';
  private static final String SDK_VERSION = '1.1.0';

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

  private static String buildUserAgent() {
    ApexClass ac = [Select ApiVersion From ApexClass Where Name = 'IBMWatsonService'];
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
          if (targetObject instanceof IBMWatsonDynamicModel) {
            return ((IBMWatsonDynamicModel) targetObject).deserialize(jsonString, safeJsonMap, targetType);
          } else {
            return ((IBMWatsonGenericModel) targetObject).deserialize(jsonString, safeJsonMap, targetType);
          }
        }
      }
    }

    return null;
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
    if (getApiKey() == null) {
      if (skipAuthentication) {
        return; // chosen to skip authentication with the service
      }
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('apiKey or username and password were not specified');
    }
    builder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, apiKey.startsWith(BASIC) ? apiKey : BASIC + apiKey);
  }

  /**
   * Sets the username and password.
   *
   * @param username the username
   * @param password the password
   */
  public void setUsernameAndPassword(final String username, final String password) {
    apiKey = IBMWatsonCredentialUtils.toBasicAuth(username, password);
  }

  /**
   * Sets the end point.
   *
   * @param endPoint the new end point. Will be ignored if empty or null
   */
  public void setEndPoint(String endPointParam) {
    if (String.isNotBlank(endPointParam)) {
      this.endPoint = endPointParam.endsWith('/') ? endPointParam.removeEnd('/') : endPointParam;
    } else {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('endPointParam cannot be null or empty');
    }
  }

  /**
   * Sets the api key.
   *
   * @param endPointParam the new api key. Will be ignored if empty or null
   */
  public void setApiKey(String apiKey) {
    if (String.isNotBlank(apiKey)) {
      this.apiKey = apiKey;
    }
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
   * Gets the apiKey or base64 username:password
   *
   *
   * @return the apiKey
   */
  protected String getApiKey() {
    return apiKey;
  }
}
