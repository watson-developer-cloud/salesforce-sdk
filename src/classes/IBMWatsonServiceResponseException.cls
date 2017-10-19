public abstract class IBMWatsonServiceResponseException Extends Exception{
    
  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The status code. */
  private final Integer statusCode;
  
  /** The HTTP response. */
  private final IBMWatsonResponse response;
  
  /**
   * Instantiates a new Service Response Exception.
   *
   * @param statusCode the status code
   * @param message the error message
   * @param response the HTTP response
   */
  public IBMWatsonServiceResponseException(Integer statusCode, String message, IBMWatsonResponse response) {
  //   this.message=message;
    this.statusCode = statusCode;
    this.response = response;
  }
  
  /**
   * Gets the HTTP status code.
   *
   * @return the http status code
   */
  public Integer getStatusCode() {
    return statusCode;
  }
  /**
   * Gets the HTTP response.
   *
   * @return the HTTP response
   */
  public IBMWatsonResponse getResponse() {
    return response;
  }
}