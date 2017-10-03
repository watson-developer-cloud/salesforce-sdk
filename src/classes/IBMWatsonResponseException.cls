/**
 * Default Response Exception  (HTTP/1.1).
 */
public class IBMWatsonResponseException  Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Response Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonResponseException(Integer statusCode,String message, IBMWatsonResponse response) {
		super(statusCode, message, response);
	}
    
    
}