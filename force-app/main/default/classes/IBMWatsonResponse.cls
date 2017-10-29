public with sharing class IBMWatsonResponse {
  private static final String MESSAGE_ERROR = 'error';
  private static final String MESSAGE_ERROR_3 = 'message';
  private static final String MESSAGE_ERROR_2 = 'error_message';

  private final String errorMessage;
  private final String contentType;
  private final String globalTransactionId;
  private final String url;
  private final HttpResponse httpResponse;

  public IBMWatsonResponse(String url, HttpResponse httpResponse) {
    this.httpResponse = httpResponse;

    this.url = url;
    this.contentType = this.getHeader(IBMWatsonHttpHeaders.CONTENT_TYPE);
    this.globalTransactionId = this.getHeader(IBMWatsonHttpHeaders.X_GLOBAL_TRANSACTION_ID);

    if (!isSuccessful()) {
      this.errorMessage = getErrorMessage(httpResponse.getBody());
    }
  }

  public String getBody() {
    return this.httpResponse.getBody();
  }

  public Blob getBodyAsBlob() {
    return this.httpResponse.getBodyAsBlob();
  }

  public String getHeader(String key) {
    return this.httpResponse.getHeader(key);
  }

  public String[] getHeaderKeys() {
    return this.httpResponse.getHeaderKeys();
  }

  public Integer getStatusCode() {
    return this.httpResponse.getStatusCode();
  }

  public String getStatus() {
    return this.httpResponse.getStatus();
  }

  public Boolean isSuccessful() {
    return (this.getStatusCode() >= 200 && this.getStatusCode() < 300);
  }

  private String getErrorMessage(String errorResponse) {
    String error = errorResponse;
    try {
      Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(errorResponse);
      if (responseMap.containsKey(MESSAGE_ERROR)) {
        error = (String) responseMap.get(MESSAGE_ERROR);
      } else if (responseMap.containsKey(MESSAGE_ERROR_2)) {
        error = (String) responseMap.get(MESSAGE_ERROR_2);
      } else if (responseMap.containsKey(MESSAGE_ERROR_3)) {
        error = (String) responseMap.get(MESSAGE_ERROR_3);
      }
    } catch (Exception e) {
      // Ignore any kind of exception parsing the json and use fallback String version of response
    }

    return error;
  }
}