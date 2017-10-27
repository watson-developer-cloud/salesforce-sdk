public class IBMWatsonRequestUtils {

  private static String userAgent = 'watson-salesforce-sdk/{0}/({1})';

  private IBMWatsonRequestUtils() {
    // This is a utility class - no instantiation allowed.
  }
  
  public static String getUserAgent(){
  	ApexClass ac = [Select Name, ApiVersion From ApexClass Where Name = 'IBMWatsonService'];
  	Organization org = [Select OrganizationType, InstanceName From Organization];
    return String.format(userAgent, new List<String>{IBMWatsonService.SDK_VERSION, 'SERVICE_API_VERSION='+ac.ApiVersion+';ORG_TYPE='+org.OrganizationType+';INSTANCE='+org.InstanceName});
  }
  
  public static IBMWatsonRequestBody inputFileBody(IBMWatsonFile file, String contentType){
  	IBMWatsonMediaType mediaType = (contentType != null) ? IBMWatsonMediaType.parse(contentType) : IBMWatsonHttpMediaType.BINARY_FILE;
  	return IBMWatsonRequestBody.create(mediaType, file);
  }
  
}