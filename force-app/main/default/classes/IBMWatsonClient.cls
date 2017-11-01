public class IBMWatsonClient {
  private static final Integer REQUEST_TIMEOUT = 120000;

  private IBMWatsonClient() {
    // This is a utility class - no instantiation allowed.
  }

  /**
   * Executes the IBMWatsonRequest and returns an IBMWatsonResponse.
   */
  public static IBMWatsonResponse executeRequest(IBMWatsonRequest wreq) {
    // build the httpRequest
    HttpRequest request = toHttpRequest(wreq);

    // Execute the httpRequest
    Http http = new Http();
    HTTPResponse httpResponse = http.send(request);

    // Creates an IBMWatsonResponse based on the endpoint url and HttpResponse
    return new IBMWatsonResponse(request.getEndpoint(), httpResponse);
  }

  private static HttpRequest toHttpRequest(IBMWatsonRequest request) {
    HttpRequest httpRequest = new HttpRequest();

    // Set request headers
    for (String name : request.getAllHeaders().keySet()) {
      httpRequest.setHeader(name, request.getAllHeaders().get(name));
    }

    // Set request body
    if (request.getMethod().equals('POST') || request.getMethod().equals('PUT')) {
      if (request.getBody() instanceOf IBMWatsonMultipartBody) {
        // form-multipart request will be send as Base64 request
      	String form64 = ((IBMWatsonMultipartBody)request.getBody()).form64();
      	httpRequest.setBodyAsBlob(EncodingUtil.base64Decode(form64));
        httpRequest.setHeader('Content-Length', String.valueof(form64.length()));
      } else {
        httpRequest.setBody(IBMWatsonJSONUtil.serialize(request.getBody().content));
      }
    }

    httpRequest.setMethod(request.getMethod());
    httpRequest.setEndpoint(request.getUrl().toExternalForm());
    httpRequest.setTimeout(REQUEST_TIMEOUT);
    return httpRequest;
  }
}