/**
 * 503 Service Unavailable  (HTTP/1.1).
 */
public class IBMWatsonServiceUnavailableException Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Service Unavailable Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonServiceUnavailableException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.SERVICE_UNAVAILABLE, message, response);
	}
    
}