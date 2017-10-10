/**
 * 403 Forbidden (HTTP/1.0).
 */
public class IBMWatsonForbiddenException Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Forbidden Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonForbiddenException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.FORBIDDEN, message, response);
	}    
    
}