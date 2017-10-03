/**
 * 404 Not Found (HTTP/1.0).
 */
public class IBMWatsonNotFoundException Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Not Found Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonNotFoundException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.NOT_FOUND, message, response);
	}    
    
}