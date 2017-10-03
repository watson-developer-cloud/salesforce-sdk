/**
 * 500 Server Error (HTTP/1.0).
 */
public class IBMWatsonInternalServerErrorException Extends IBMWatsonServiceResponseException{
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
	public IBMWatsonInternalServerErrorException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.INTERNAL_SERVER_ERROR, message, response);
	}    
}