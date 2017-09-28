/*
 * Copyright 2017 IBM Corp. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

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
	 *	Base class constructor
	 *
	 */
	public IBMWatsonService() {}
	
	/**
	 *	Calls to the processResponse() method overriden by the child services using this base class
	 *	
	 */
	public void process() {
    	IBMWatsonClient.RestClient client = IBMWatsonClient.getRestClient( request );
    	response = client.sendMessage();
		
		// TO-DO:
		// =====
		// 
		//	- Sumet to treat error codes in response with custom exception classes
		//  - Are exceptions treated at the response level for each service? If so relocate processResponse() accordingly
		//
        if (!(  response.StatusCode == 200 || response.StatusCode == 201 || response.StatusCode == 202 )) {
            System.debug('[IBMWatsonFacade]::[sendMessage] Error Response Status:'+ response.Status + ' Code:' + response.StatusCode + ' ServiceMessage: '+response.getResponseText());
            //throw new IBMWatsonDiscoveryException(' CUSTOM --> StatusCode='+StatusCode+' Status='+Status+ ' ServiceMessage: '+ServiceMessageResponse);        
        }
        else{
        	//
        	//	the call to processResponse() is intentionally overriden by every service so additional processing can take place
        	//	without affecting the other classes
        	//
			processResponse();
        }
	}

	/**
	 *	This method is overriden by child services and executes messages to API endpoints
	 *
	 */
	public abstract void processResponse();
	
	/**
	 *	...
	 *
	 */
	protected void createServiceCall(IBMWatsonRequest request){
	    IBMWatsonRequest.Builder builder = request.newBuilder();
	    setDefaultHeaders(builder);
	    setAuthentication(builder);
	    this.request = builder.build();
	}

   /**
    * Sets the default headers including User-Agent.
    *
    * @param builder the new default headers
    */
  	protected void setDefaultHeaders(IBMWatsonRequest.Builder builder) {
	    /*String userAgent = IBMWatsonRequestUtils.getUserAgent();
	    if (defaultHeaders != null) {
	      for (String key : defaultHeaders.keySet()) {
	        builder.header(key, defaultHeaders.get(key));
	      }
	      if (defaultHeaders.containsKey(IBMWatsonHttpHeaders.USER_AGENT) && defaultHeaders.get(IBMWatsonHttpHeaders.USER_AGENT) != null) {
	        userAgent += ' ' + defaultHeaders.get(IBMWatsonHttpHeaders.USER_AGENT);
	      }
	    }
	    builder.header(IBMWatsonHttpHeaders.USER_AGENT, userAgent);*/
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
	      throw new IllegalArgumentException('apiKey or username and password were not specified');
	    }
	    builder.addHeader(IBMWatsonHttpHeaders.AUTHORIZATION, apiKey.startsWith(BASIC) ? apiKey : BASIC + apiKey);
	    system.debug('@@ ==> [IBMWatsonService]::[setAuthentication] ' + builder.getHeaders());
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