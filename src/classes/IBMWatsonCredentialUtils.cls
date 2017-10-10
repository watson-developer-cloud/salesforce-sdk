public class IBMWatsonCredentialUtils {

  /** Service configuration by name. */
  private static Map<String, ServiceConfiguration> Services;
  
  /**
   * A util class to easily store service credentials.
   *
   */
  public class ServiceCredentials {
  	
    public String pwd {get;set;}
    public String usrname {get;set;}
    
    public ServiceCredentials(String username, String password) {
      this.pwd = password;
      this.usrname = username;
    }
    
    public String basic(){
        Blob blobValue = Blob.valueOf(usrname +':' +pwd);
        return 'Basic ' + EncodingUtil.base64Encode(blobValue);
    }
    
  }
  
  public class ServicePlan {
  	
  	public String PlanName {get;set;}
  	public ServiceCredentials Credentials {get;set;}
  	
  	public ServicePlan(){
  		this.Credentials = null;
  	}
  	
  }
  
  public class ServiceConfiguration {
  	public String ServiceName {get;set;}
  	public Map<String, ServicePlan> instancePlans {get;set;}
  	public ServiceConfiguration(){
  		Map<String, ServicePlan> instancePlans = new Map<String, ServicePlan>();
  	}
  	public void addPlan(String instancePlan, ServicePlan plan){
  		instancePlans.put(instancePlan, plan);
  	}
  	public ServicePlan getPlan(String plan){
  		if( instancePlans != null && instancePlans.containsKey(plan) ){
  			return instancePlans.get(plan);
  		}
  		return null;
  	}
  }
  
  /**
   *	This block gets executed the first time any static method is called and only once per execution context
   *	- Initialize service configuration by name and plan, each plan with its own set of credentials 
   */
  static {
  	Services = new Map<String, ServiceConfiguration>();
  	
  	// TO-DO: load service configuration here...
  	//		  each service would contain multiple instances which are 1-1 with the type of plan
  	//		  and each plan would have its own set of credentials
  	
  }
  
  /**
   * Returns the apiKey from the VCAP_SERVICES or null if doesn't exists.
   *
   * @param serviceName the service name
   * @return the API key or null if the service cannot be found.
   */
  public static String getAPIKey(String serviceName) {
    return getAPIKey(serviceName, null);
  }

  /**
   * Returns the apiKey from the VCAP_SERVICES or null if doesn't exists. If plan is specified, then only credentials
   * for the given plan will be returned.
   *
   * @param serviceName the service name
   * @param plan the service plan: standard, free or experimental
   * @return the API key
   */
  public static String getAPIKey(String serviceName, String plan) {
    if ((serviceName == null) || String.isEmpty(serviceName)) {
      return null;
    }

    ServiceCredentials credentials = getUserNameAndPassword(serviceName, plan);
    if (credentials != null) {
    	return credentials.basic();
    }
    
    return null;
  }
  
  /**
   *
   * @param serviceName the name of the service whose credentials are sought
   * @return an object representing the service's credentials
   */
  public static ServiceCredentials getUserNameAndPassword(String serviceName) {
    return getUserNameAndPassword(serviceName, null);
  }

  /**
   *
   * @param serviceName the name of the service whose credentials are sought
   * @param plan the plan name
   * @return an object representing the service's credentials
   */
  public static ServiceCredentials getUserNameAndPassword(String serviceName, String plan) {
    if ((serviceName == null) || String.isEmpty(serviceName)) {
      return null;
    }

    return getServiceCredentials(serviceName, plan);
    
  }

  private static ServiceCredentials getServiceCredentials(String serviceName, String plan) {
  	//	Check if we have configuration available for this service
  	if( Services != null && !Services.isEmpty() && Services.containsKey(serviceName) ){
  		ServiceConfiguration srv = Services.get(serviceName);
  		ServicePlan srvPlan = srv.getPlan(plan);
  		if( srvPlan != null && srvPlan.Credentials != null ){
  			return srvPlan.Credentials;
  		}
  	}
    return null;
  }
  
    
}