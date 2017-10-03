/**
 * 415 Unsupported Media Type  (HTTP/1.1).
 */
public class IBMWatsonUnsupportedException Extends IBMWatsonServiceResponseException{
  /**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new unsupported Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonUnsupportedException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.UNSUPPORTED_MEDIA_TYPE, message, response);
	}
}