/**
 * 400 Bad Request (HTTP/1.1).
 */
public class IBMWatsonBadRequestException Extends IBMWatsonServiceResponseException{

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /**
   * Instantiates a new BadRequest Exception. HTTP 400
   *
   * @param message the error message
   * @param response the HTTP response
   */
  public IBMWatsonBadRequestException(String message, IBMWatsonResponse response) {
    super(IBMWatsonHttpStatus.BAD_REQUEST, message, response);
  }
}