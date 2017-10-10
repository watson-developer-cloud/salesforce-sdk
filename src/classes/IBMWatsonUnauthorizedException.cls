/**
 * 401 Unauthorized  (HTTP/1.0).
 */
public class IBMWatsonUnauthorizedException Extends IBMWatsonServiceResponseException{
  /**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Unauthorized Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonUnauthorizedException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.UNAUTHORIZED, message, response);
	}
}