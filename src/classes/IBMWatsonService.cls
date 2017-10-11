public abstract class IBMWatsonService {

  public String ServiceMessage {get;set;}
  public String ServiceName {get;set;}
  public String HTTPMethod {get;set;}
  public IBMWatsonRequestBuilder builder {get;set;}
  public IBMWatsonResponse response {get;set;}
  public IBMWatsonRequest request {get;set;}

  private String apiKey;
  private String endPoint;

  private static final String URL = 'url';
  private static final String PATH_AUTHORIZATION_V1_TOKEN = '/v1/token';
  private static final String AUTHORIZATION = 'authorization';
  private static final String MESSAGE_ERROR_3 = 'message';
  private static final String MESSAGE_ERROR_2 = 'error_message';
  private static final String BASIC = 'Basic ';

  /** The default headers. */
  protected Map<String, String> defaultHeaders = null;

  /** The skip authentication. */
  protected boolean skipAuthentication = false;

  /** The Constant MESSAGE_CODE. */
  protected String MESSAGE_CODE = 'code';

  /** The Constant MESSAGE_ERROR. */
  protected String MESSAGE_ERROR = 'error';

  /** The Constant VERSION. */
  protected String VERSION = 'version';

  /**
   *  Base class constructor
   *
   */
  public IBMWatsonService() {}
  
  private String getErrorMessage(IBMWatsonResponse response) {
  	String error = response.getResponseText();
    try {
	  Map<String, Object> responseMap = (Map<String, Object>)JSON.deserializeUntyped(error);
      if (responseMap.containsKey(MESSAGE_ERROR)) {
        error = (String)responseMap.get(MESSAGE_ERROR);
      } else if (responseMap.containsKey(MESSAGE_ERROR_2)) {
        error = (String)responseMap.get(MESSAGE_ERROR_2);
      } else if (responseMap.containsKey(MESSAGE_ERROR_3)) {
        error = (String)responseMap.get(MESSAGE_ERROR_3);
      }
    } catch (Exception e) {
      // Ignore any kind of exception parsing the json and use fallback String version of response
    }

    return error;
  }
	
  /**
   * Calls to the processResponse() method overriden by the child services using this base class
   *	
   */
  public Object process(Type targetType) {
    IBMWatsonClient.RestClient client = IBMWatsonClient.getRestClient( request );
    response = client.sendMessage();
    
     
    // - treat error codes in response with custom exception classes
    // - Are exceptions treated at the response level for each service? If so relocate processResponse() accordingly
    //
    //change to case statement once this is there https://success.salesforce.com/ideaView?id=08730000000BrSIAA0
    String error = getErrorMessage(response);  
		if (!(response.StatusCode == 200 || response.StatusCode == 201 || response.StatusCode == 202)) {
      System.debug('[IBMWatsonFacade]::[sendMessage] Error Response Status:'+ response.Status + ' Code:' + response.StatusCode + ' ServiceMessage: '+response.getResponseText());
      if(response.StatusCode == IBMWatsonHttpStatus.BAD_REQUEST) // HTTP 400
        throw new IBMWatsonServiceExceptions.BadRequestException(error != null ? error : 'Bad Request', response);
      if(response.StatusCode == IBMWatsonHttpStatus.UNAUTHORIZED) // HTTP 401
        throw new IBMWatsonServiceExceptions.UnauthorizedException('Unauthorized: Access is denied due to invalid credentials. '
                                        + 'Tip: Did you set the Endpoint?', response);
      if(response.StatusCode == IBMWatsonHttpStatus.FORBIDDEN) // HTTP 403
        throw new IBMWatsonServiceExceptions.ForbiddenException(error != null ? error : 'Forbidden: Service refuse the request', response);
      if(response.StatusCode == IBMWatsonHttpStatus.NOT_FOUND) // HTTP 404
        throw new IBMWatsonServiceExceptions.NotFoundException(error != null ? error : 'Not found', response);
      if(response.StatusCode == IBMWatsonHttpStatus.NOT_ACCEPTABLE) // HTTP 406
        throw new IBMWatsonServiceExceptions.ForbiddenException(error != null ? error : 'Forbidden: Service refuse the request', response);
      if(response.StatusCode == IBMWatsonHttpStatus.CONFLICT) // HTTP 409
        throw new IBMWatsonServiceExceptions.ConflictException(error != null ? error : '', response);
      if(response.StatusCode == IBMWatsonHttpStatus.REQUEST_TOO_LONG) // HTTP 413
        throw new IBMWatsonServiceExceptions.RequestTooLargeException(error != null ? error
            : 'Request too large: ' + 'The request entity is larger than the server is able to process', response);
      if(response.StatusCode == IBMWatsonHttpStatus.UNSUPPORTED_MEDIA_TYPE) // HTTP 415
        throw new IBMWatsonServiceExceptions.UnsupportedException(error != null ? error : 'Unsupported Media Type', response);
      if(response.StatusCode == IBMWatsonHttpStatus.TOO_MANY_REQUESTS) // HTTP 429
        throw new IBMWatsonServiceExceptions.TooManyRequestsException(error != null ? error : 'Too many requests', response);
      if(response.StatusCode == IBMWatsonHttpStatus.INTERNAL_SERVER_ERROR) // HTTP 500
        throw new IBMWatsonServiceExceptions.InternalServerErrorException(error != null ? error : 'Internal Server Error', response);
      if(response.StatusCode == IBMWatsonHttpStatus.SERVICE_UNAVAILABLE) // HTTP 503
        throw new IBMWatsonServiceExceptions.ServiceUnavailableException(error != null ? error : 'Service Unavailable', response);
        throw new IBMWatsonServiceExceptions.ResponseException(response.StatusCode, error, response);
    } else {
      //
      // the call to processResponse() is intentionally overriden by every service so additional processing can take place
      // without affecting the other classes
      //
      //processResponse();
      String ServiceMessageResponseText = getServiceMessageResponseText();
      if( !String.isBlank(ServiceMessageResponseText) ){
        return JSON.deserialize(ServiceMessageResponseText, targetType);
      }
    }
    return null;
  }

  /**
   * TO-DO: document this method
   *
   */
  protected Object createServiceCall(IBMWatsonRequest request, Type targetType){
    IBMWatsonRequest.Builder builder = request.newBuilder();
    setDefaultHeaders(builder);
    setAuthentication(builder);
    this.request = builder.build();
    return process(targetType);
  }

  /**
   * Sets the default headers including User-Agent.
   *
   * @param builder the new default headers
   */
  protected void setDefaultHeaders(IBMWatsonRequest.Builder builder) {
    //String userAgent = IBMWatsonRequestUtils.getUserAgent();
    if (defaultHeaders != null && !defaultHeaders.isEmpty()) {
      for (String key : defaultHeaders.keySet()) {
        builder.addHeader(key, defaultHeaders.get(key));
      }
      //if (defaultHeaders.containsKey(IBMWatsonHttpHeaders.USER_AGENT) && defaultHeaders.get(IBMWatsonHttpHeaders.USER_AGENT) != null) {
      //  userAgent += ' ' + defaultHeaders.get(IBMWatsonHttpHeaders.USER_AGENT);
      //}
    }
    //builder.addHeader(IBMWatsonHttpHeaders.USER_AGENT, userAgent);
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
  protected void setAuthentication(IBMWatsonRequest.Builder builder) {
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
    IBMWatsonCredentialUtils.ServiceCredentials Credentials = new IBMWatsonCredentialUtils.ServiceCredentials(username, password);
    apiKey = Credentials.basic();
  }

  /**
   * Sets the end point.
   *
   * @param endPoint the new end point. Will be ignored if empty or null
   */
  public void setEndPoint(String endPointParam) {
    if ( !String.isBlank(endPointParam)) {
      this.endPoint = endPointParam.endsWith('/') ? endPointParam.removeEnd('/') : endPointParam;
    }
  }
	
  /**
   * Gets the API end point.
   *
   *
   * @return the API end point
   */
  public String getEndPoint() {
    return endPoint;
  }

  /**
   * Gets the apiKey.
   *
   *
   * @return the apiKey
   */
  public String getApiKey() {
    return apiKey;
  }
  
  public String getServiceMessageResponseText(){
    if( response != null ){
      return response.getResponseText();
    }
    return null;
  }
  
}