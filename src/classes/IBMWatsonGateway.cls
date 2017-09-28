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

public class IBMWatsonGateway {
    
    // credentials for testing purposes
    private static String username;
    private static String password;
    
    static {
    	username = '4cfaf42d-7db7-4bea-9852-2d3b7e2a1a90';
    	password = '7MDGN8wZCRNF';
    }
    
    /**
     *  Creates a new environment.
     *  You can create only one environment per service instance. An attempt to create another environment results in an error.
     *  
     *  @param  environmentName
     *  
     *  @param environmentDesc
     */
    public static String DiscoveryCreateEnvironment(String environmentName, String environmentDesc){
        // this is the response from the service once it gets parsed from the JSON response
        IBMWatsonFacade.CreateEnvironmentResponse deserializedCreateEnvironmentResponse;
        
        IBMWatsonDiscovery discovery = new IBMWatsonDiscovery('2017-09-01');
        discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
        discovery.setUsernameAndPassword(username, password);
        discovery.CreateEnvironmentRequest(environmentName, environmentDesc);
        
        
        try {
			//base class to execute call and delegate results to processResponse() for API specific handling;
        	discovery.process();
        }
        catch(Exception err) {
			system.debug('[IBMWatsonGateway]::[DiscoveryCreateEnvironment] '+err.getMessage() + ' ' + err.getStackTraceString());
        	// handle exceptions while executing service
        }
        
        String ServiceMessageResponseText = discovery.getServiceMessageResponseText();
        if( !String.isBlank(ServiceMessageResponseText) ){
            deserializedCreateEnvironmentResponse = (IBMWatsonFacade.CreateEnvironmentResponse) JSON.deserialize(ServiceMessageResponseText,
             IBMWatsonFacade.CreateEnvironmentResponse.class);
	             
            // handle status and additional response logic on the client...
            return deserializedCreateEnvironmentResponse.environment_id;
        }
        
        return null;        
    }
    
}