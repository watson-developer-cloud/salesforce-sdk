public class IBMWatsonRequestUtils {

  private static String userAgent;

  private IBMWatsonRequestUtils() {
    // This is a utility class - no instantiation allowed.
  }
  
  public static String getUserAgent(){
    return userAgent;
  }
    
}