public class IBMWatsonRequestUtils {

  private static String userAgent;

  private IBMWatsonRequestUtils() {
    // This is a utility class - no instantiation allowed.
  }
  
  public static String getUserAgent(){
    return userAgent;
  }
  
  public static IBMWatsonRequestBody inputFileBody(IBMWatsonFile file, String contentType){
  	IBMWatsonMediaType mediaType = (contentType != null) ? IBMWatsonMediaType.parse(contentType) : IBMWatsonHttpMediaType.BINARY_FILE;
  	return IBMWatsonRequestBody.create(mediaType, file);
  }
  
}