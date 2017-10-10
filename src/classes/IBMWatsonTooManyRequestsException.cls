/**
 * 429 Too Many Requests  (HTTP/1.1).
 */
public class IBMWatsonTooManyRequestsException Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/** The Constant TOO_MANY_REQUESTS. */
 	private static final Integer TOO_MANY_REQUESTS = 429;
	
	/**
	 * Instantiates a new Too Many Requests Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonTooManyRequestsException(String message, IBMWatsonResponse response) {
		super(TOO_MANY_REQUESTS, message, response);
	}
    
}