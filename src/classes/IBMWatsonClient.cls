public class IBMWatsonClient {

	/*
    		srv.ServiceMessageResponse =  res.getBody();
    		srv.Status = res.getStatus();
    		srv.StatusCode = res.getStatusCode();
	 
	 */
	
	public static  RestClient getRestClient(IBMWatsonRequest r){
		return new RestClient(r);
	}
	
    public class RestClient {
    	HttpRequest request;
    	public RestClient (  IBMWatsonRequest wreq  ){
    		 request = buildHttpRequest(  wreq  );
    	}
    	
    	public IBMWatsonResponse sendMessage(){
    		if( request == null){
    			// throw empty request exception
    		}
    		Http http = new Http();
    		system.debug('==> IBMWatsonClient...[RestClient]:: -- sendMessage() -- '+request);
    		HTTPResponse http_res = http.send(request);
    		IBMWatsonResponse watson_developercloud_response = new IBMWatsonResponse(request.getEndpoint(), http_res.getBody(), http_res.getStatus(), http_res.getStatusCode());
    		watson_developercloud_response.setcontentType (http_res.getHeader('Content-Type'));
    		return watson_developercloud_response;
    	}
    	
    	public HttpRequest buildHttpRequest(  IBMWatsonRequest wreq  ){
		   	HttpRequest req = new HttpRequest();
		  	system.debug('*************************************************************************************');
		  	system.debug('@@ ==> adding headers....'+wreq.getAllHeaders());
		  	for(String name: wreq.getAllHeaders().keySet() ){
		  		if( name == 'User-Agent' ) continue;
		  		req.setHeader(name, wreq.getAllHeaders().get(name));
		  	}
		  	system.debug('@@ ==> body....'+wreq.getBody().content);
		  	req.setBody(wreq.getBody().content);
		  	system.debug('@@ ==> method....'+wreq.getMethod());
		  	req.setMethod(wreq.getMethod());
		  	system.debug('@@ ==> Endpoint....'+wreq.getUrl().toExternalForm());
		  	req.setEndpoint(wreq.getUrl().toExternalForm());
		  	req.setTimeout(120000);
		  	
		  	system.debug(req);
		  	system.debug('*************************************************************************************');
    		return req;
    	}
    }
    
    
}