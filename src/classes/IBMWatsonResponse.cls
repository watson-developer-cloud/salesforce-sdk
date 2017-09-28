public with sharing class IBMWatsonResponse {
	 
	/** The response text. */
	private String responseText;

	/** The http status. */
	public String Status { public get; private set;}
	
	/** The http status. */
	public Integer StatusCode { public get; private set;}
	
	/** The url. */
	private String url;

	/** The error. */
	public Boolean error { public get; private set; }

	/** The content type. */
	private String contentType;
		 
     public IBMWatsonResponse (String url, String text, String httpStatus, Integer statusCode) {
		this.url = url;
		this.responseText = text;
		this.Status = httpStatus;
		this.StatusCode = statusCode;
		this.error = (statusCode >= 400);
     }

	public String getResponseText() {
		return responseText;
	}

	public void setResponseText(String responseText) {
		this.responseText = responseText;
	}
		     
	public String getHttpStatus() {
		return Status;
	}	

	public void setHttpStatus(Integer httpStatus) {
		this.Status = Status;
	}
	
	public String getUrl() {
		return url;
	}	
	
	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getcontentType() {
		return this.contentType;
	}	
	
	public void setcontentType(String contentType) {
		this.contentType = contentType;
	}	
}