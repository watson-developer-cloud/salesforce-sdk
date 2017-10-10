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
 
public class IBMWatsonDiscovery extends IBMWatsonService {

  public class IBMWatsonDiscoveryException extends Exception {}
  
  private static final String URL = 'https://gateway.watsonplatform.net/discovery/api';
  private String versionDate;
  private RequestType ServiceCall;

  /** The Constant VERSION_DATE_2017_09_01. */
  public static final String VERSION_DATE_2017_09_01 = '2017-09-01';
  /** The Constant VERSION_DATE_2017_08_01. */
  public static final String VERSION_DATE_2017_08_01 = '2017-08-01';
  /** The Constant VERSION_DATE_2017_07_19. */
  public static final String VERSION_DATE_2017_07_19 = '2017-07-19';
  /** The Constant VERSION_DATE_2017_06_25. */
  public static final String VERSION_DATE_2017_06_25 = '2017-06-25';
  /** The Constant VERSION_DATE_2016_12_01. */
  public static final String VERSION_DATE_2016_12_01 = '2016-12-01';

  public enum RequestType { CREATE_ENVIRONMENT, LIST_ENVIRONMENT, DELETE_ENVIRONMENT }
  
  public IBMWatsonDiscovery(String versionDate){
    this.ServiceName = 'Discovery';
    if ((getEndPoint() == null) || String.isBlank(getEndPoint())) {
      setEndPoint(URL); 
    }
    if( String.isBlank(versionDate) ){
      throw new IBMWatsonDiscoveryException( 'version cannot be null. Use ' + VERSION_DATE_2017_09_01 );
    }
    this.versionDate = versionDate;
  }
  
  public IBMWatsonDiscovery(String versionDate, String username, String password) {
    this(versionDate);
    setUsernameAndPassword(username, password);
  }
    
  /**
   * Create environment.
   *
   */
  public IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse CreateEnvironmentRequest(String environmentName, String environmentDesc){
    if( String.isBlank(environmentName) || String.isBlank(environmentDesc) ){
      throw new IBMWatsonDiscoveryException( 'Environment name and description cannot be empty.' );
    }
    ServiceCall = RequestType.CREATE_ENVIRONMENT;
    IBMWatsonDiscoveryV1Models.CreateEnvironmentRequest envReq = new IBMWatsonDiscoveryV1Models.CreateEnvironmentRequest(environmentName, environmentDesc);
    ServiceMessage = JSON.serialize(envReq);
    builder = IBMWatsonRequestBuilder.http_post( getEndPoint() + '/v1/environments' );
    builder.queryParams( new Map<String,String>{'version' => versionDate } );
    builder.bodyJson( ServiceMessage );
    return (IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse) createServiceCall( builder.build(), IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse.class );
  }
  
  /**
   * List environment.
   *
   */
  public IBMWatsonDiscoveryV1Models.ListEnvironmentResponse ListEnvironmentRequest(String environmentName){
    ServiceCall = RequestType.LIST_ENVIRONMENT;
    ServiceMessage = '';
    builder = IBMWatsonRequestBuilder.http_get( String.format('{0}/v1/environments', new List<String>{getEndPoint()}) );
    builder.queryParams( new Map<String,String>{'name' => environmentName,'version' => versionDate } );
    return (IBMWatsonDiscoveryV1Models.ListEnvironmentResponse) createServiceCall( builder.build(), IBMWatsonDiscoveryV1Models.ListEnvironmentResponse.class );
  }
  
  /**
   * Delete environment.
   *
   */
  public IBMWatsonDiscoveryV1Models.DeleteEnvironmentResponse deleteEnvironment(String environmentId) {
    if( String.isBlank(environmentId) || String.isBlank(environmentId) ){
      throw new IBMWatsonDiscoveryException( 'Environment Id cannot be empty.' );
    }
    ServiceCall = RequestType.DELETE_ENVIRONMENT;
    ServiceMessage = '';
    builder = IBMWatsonRequestBuilder.http_delete(  String.format('{0}/v1/environments/{1}', new List<String>{getEndPoint(), environmentId}) );
    builder.queryParams( new Map<String,String>{'version' => versionDate} );
    return (IBMWatsonDiscoveryV1Models.DeleteEnvironmentResponse) createServiceCall( builder.build(), IBMWatsonDiscoveryV1Models.DeleteEnvironmentResponse.class );
  }
  
}