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
	
	public String Status {get;set;}
	public Integer StatusCode {get;set;}
	public String ServiceMessageResponse {get;set;}
	
	
	private String apiKey;
	private String endPoint;
	
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
		system.debug('[IBMWatsonService]::[process] base class call to processResponse()...');
		processResponse();
	}
	
	/**
	 *	This method is overriden by child services and implement request specific information related to each service
	 *
	 */
	public abstract String createRequest();
	
	/**
	 *	This method is overriden by child services and executes messages to API endpoints
	 *
	 */
	public abstract void processResponse();
	
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
	
	
}