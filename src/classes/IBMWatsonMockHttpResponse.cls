public class IBMWatsonMockHttpResponse implements HttpCalloutMock  {
    protected Integer code;
    protected String status;
    protected String bodyAsString;
    protected Blob bodyAsBlob;
    protected Map<String, String> responseHeaders;

    public IBMWatsonMockHttpResponse(Integer code, String status, String body,
                                         Map<String, String> responseHeaders) {
        this.code = code;
        this.status = status;
        this.bodyAsString = body;
        this.bodyAsBlob = null;
        this.responseHeaders = responseHeaders;
    }

    public IBMWatsonMockHttpResponse(Integer code, String status, Blob body,
                                         Map<String, String> responseHeaders) {
        this.code = code;
        this.status = status;
        this.bodyAsBlob = body;
        this.bodyAsString = null;
        this.responseHeaders = responseHeaders;
    }

    public HTTPResponse respond(HTTPRequest req) {
        HttpResponse resp = new HttpResponse();
    resp.setStatusCode(code);
    resp.setStatus(status);
    if (bodyAsBlob != null) {
        resp.setBodyAsBlob(bodyAsBlob);
    } else {
        resp.setBody(bodyAsString);
    }

    if (responseHeaders != null) {
        for (String key : responseHeaders.keySet()) {
        resp.setHeader(key, responseHeaders.get(key));
        }
    }
    return resp;
    }
    
    /*public Static HTTPResponse mockResponse()//(Integer statusCode, String body)
    {
        // Create a fake response
        String body='{"environment_id": "f822208e-e4c2-45f8-a0d6-c2be950fbcc8","name": "test_environment",'+
                            '"description": "Test environment", "created": "2016-06-16T10:56:54.957Z",'+
                                '"updated": "2017-05-16T13:56:54.957Z", "status": "active", "read_only": false,'+
                                '"index_capacity": {"documents": {"indexed": 0, "maximum_allowed": 1000000},'+
                                '"disk_usage": {"used_bytes": 0, "maximum_allowed_bytes": 85899345920}}}';
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(body);
        res.setStatusCode(200);
        return res; 
    }*/
}