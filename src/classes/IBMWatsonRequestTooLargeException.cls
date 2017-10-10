/**
 * 413 Request Entity Too Large (HTTP/1.1).
 */
public with sharing class IBMWatsonRequestTooLargeException Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Request Too Large Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonRequestTooLargeException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.REQUEST_TOO_LONG, message, response);
	}
    
}