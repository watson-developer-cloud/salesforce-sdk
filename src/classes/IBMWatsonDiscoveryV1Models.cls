public class IBMWatsonDiscoveryV1Models {

  public class EnvironmentResponseDiskUsage {
    public Integer used_bytes;
    public decimal maximum_allowed_bytes;
  }
  
  public class EnvironmentResponseDocument {
    public Integer indexed;
    public decimal maximum_allowed_bytes;
  }

  public class EnvironmentResponseIndexCapacity {
    public EnvironmentResponseDocument documents;
    public EnvironmentResponseDiskUsage disk_usage;
  }

  public class CreateEnvironmentResponse {
    public String environment_id;
    public String name;
    public String description;
    public String created;
    public String updated;
    public String status;
    public String read_only;
    public EnvironmentResponseIndexCapacity index_capacity;
  }

  public class CreateEnvironmentRequest {
    public String name;
    public String description;
    public CreateEnvironmentRequest(String environmentName, String environmentDesc){
      name = environmentName;
      description = environmentDesc;
    }
  }
  
  public class EnvironmentResponse {
    public String environment_id;
    public String name;
    public String description;
    public String created;
    public String updated;
    public String status;
    public String read_only;
    public EnvironmentResponseIndexCapacity index_capacity;
  }
  
  public class ListEnvironmentResponse {
  	public List<EnvironmentResponse> environments;
  }
  
}