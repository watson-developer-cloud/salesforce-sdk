 /**
 * 409 Conflict (HTTP/1.1).
 */
public with sharing class IBMWatsonConflictException  Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Conflict Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonConflictException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.CONFLICT, message, response);
	}    
}