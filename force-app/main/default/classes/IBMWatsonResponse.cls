public with sharing class IBMWatsonResponse {
  private static final String ERRORS_KEY = 'errors';
  private static final String MESSAGE_STRING = 'message';
  private static final String ERROR_STRING = 'error';

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
    // we'll try the lowercase key too as a fallback
    String lowerCaseKey = key.toLowerCase();

    String headerVal = this.httpResponse.getHeader(key);
    if (headerVal == null) {
      headerVal = this.httpResponse.getHeader(lowerCaseKey);
    }

    return headerVal;
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
      if (responseMap.containsKey(ERRORS_KEY)) {
        List<Map<String, String>> errorList = (List<Map<String, String>>) responseMap.get(ERRORS_KEY);
        error = errorList[0].get(MESSAGE_STRING);
      } else if (responseMap.containsKey(ERROR_STRING)) {
        error = (String) responseMap.get(ERROR_STRING);
      } else if (responseMap.containsKey(MESSAGE_STRING)) {
        error = (String) responseMap.get(MESSAGE_STRING);
      }
    } catch (Exception e) {
      // Ignore any kind of exception parsing the json and use fallback String version of response
    }

    return error;
  }
}