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
     *  @param  environmentDesc
     *
     *  @return New environment created if successful, exception message raised with error code otherwise
     */
    public static IBMWatsonDiscoveryV1Models.CreateEnvironmentResponse DiscoveryCreateEnvironment(String environmentName, String environmentDesc){
        IBMWatsonDiscovery discovery = new IBMWatsonDiscovery('2017-09-01');
        discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
        discovery.setUsernameAndPassword(username, password);
        return discovery.CreateEnvironmentRequest(environmentName, environmentDesc);
    }
    
    /**
     *  Retrieves a list of environments.
     *  
     *  @param  environmentName
     *  
     *  @param List of environments if environmentName is passed empty, environment otherwise
     */
    public static IBMWatsonDiscoveryV1Models.ListEnvironmentResponse DiscoveryListEnvironment(String environmentName){
        IBMWatsonDiscovery discovery = new IBMWatsonDiscovery('2017-09-01');
        discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
        discovery.setUsernameAndPassword(username, password);
        return discovery.ListEnvironmentRequest(environmentName);
    }
    
    /**
     *  Deletes an environment.
     *  
     *  @param  environmentId
     *  
     *  @param Status of the environment 'Deleted' if successful
     */
    public static IBMWatsonDiscoveryV1Models.DeleteEnvironmentResponse DiscoveryDeleteEnvironment(String environmentId){
        IBMWatsonDiscovery discovery = new IBMWatsonDiscovery('2017-09-01');
        discovery.setEndPoint('https://gateway.watsonplatform.net/discovery/api');
        discovery.setUsernameAndPassword(username, password);
        return discovery.deleteEnvironment(environmentId);
    }
}