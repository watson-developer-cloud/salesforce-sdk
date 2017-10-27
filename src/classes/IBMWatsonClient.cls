public class IBMWatsonClient {
  
  public static  RestClient getRestClient(IBMWatsonRequest r){
   return new RestClient(r);
  }
  
  public class RestClient {
  	
    HttpRequest request;
  
    public RestClient (IBMWatsonRequest wreq) {
      request = buildHttpRequest(wreq);
    }
	
    public IBMWatsonResponse sendMessage(){
      if( request == null){
	    // throw empty request exception
      }
      Http http = new Http();
      HTTPResponse http_res = http.send(request);
      IBMWatsonResponse watson_developercloud_response = new IBMWatsonResponse(request.getEndpoint(), http_res.getBody(), http_res.getStatus(), http_res.getStatusCode());
      watson_developercloud_response.setcontentType (http_res.getHeader('Content-Type'));
      return watson_developercloud_response;
    }
	
    public HttpRequest buildHttpRequest(  IBMWatsonRequest wreq  ){
      HttpRequest req = new HttpRequest();
      for(String name: wreq.getAllHeaders().keySet() ){
        req.setHeader(name, wreq.getAllHeaders().get(name));
      }

      if( !String.isBlank(wreq.getMethod()) && wreq.getMethod().equalsIgnoreCase('POST')) {
      	if( wreq.getBody() instanceOf IBMWatsonMultipartBody ){
      	  //form-multipart post as base64 request
      	  String form64 = ((IBMWatsonMultipartBody)wreq.getBody()).form64();
      	  system.debug( form64 );
      	  req.setBody(form64);
      	  req.setHeader('Content-Length', String.valueof(form64.length()));
      	}else{
          // regular post
      	  req.setBody( wreq.getBody().content);
      	}
      }
      req.setMethod(wreq.getMethod());
      system.debug('URL-> '+wreq.getUrl().toExternalForm());
      req.setEndpoint(wreq.getUrl().toExternalForm());
      req.setTimeout(120000);
      return req;
    }
    
  }
    
    
}