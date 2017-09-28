/*
 * Copyright 2017 IBM Corp. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

public class IBMWatsonRequestBuilder {

	private enum HTTPMethod {
	    HTTP_DELETE, HTTP_GET, HTTP_POST, HTTP_PUT
	}
	private static final Map<HTTPMethod, String> HTTPMethodValue = new  Map<HTTPMethod, String> {
		HTTPMethod.HTTP_DELETE => 'DELETE',
		HTTPMethod.HTTP_GET => 'GET',
		HTTPMethod.HTTP_POST => 'POST',
		HTTPMethod.HTTP_PUT => 'PUT'
	};
	
	public class NameValue {
		private String name;
		private String value;
		public NameValue(String n, String v){
			this.name = n;
			this.value = v;
		}
		public String getName(){
			return this.name;
		}
		public String getValue(){
			return this.value;
		}
	}
	
   /**
    * The DELETE method requests that the origin server delete the resource identified by the Request-URI.
    *
    * @param url the URL
    *
    * @return this
    */
  	public static IBMWatsonRequestBuilder http_delete(String url) {
    	return new IBMWatsonRequestBuilder(HTTPMethod.HTTP_DELETE, url);
  	}
	
   /**
    * The GET method means retrieve whatever information (in the form of an entity) is identified by the Request-URI.
    *
    * @param url the URL
    *
    * @return this
    */
  	public static IBMWatsonRequestBuilder http_get(String url) {
    	return new IBMWatsonRequestBuilder(HTTPMethod.HTTP_GET, url);
  	}

   /**
    * The POST request method is designed to request that a web server accept the data enclosed in the request message's
    * body for storage. It is often used when uploading a file or submitting a completed web form.
    *
    * @param url the URL
    *
    * @return this
    */
  	public static IBMWatsonRequestBuilder http_post(String url) {
    	return new IBMWatsonRequestBuilder(HTTPMethod.HTTP_POST, url);
  	}
    
   /**
    * The PUT method requests that the enclosed entity be stored under the supplied Request-URI.
    *
    * @param url the URL
    *
    * @return this
    */
  	public static IBMWatsonRequestBuilder http_put(String url) {
    	return new IBMWatsonRequestBuilder(HTTPMethod.HTTP_PUT, url);
  	}

  	private IBMWatsonRequestBody body;
  	private String httpUrl;
  	private final List<NameValue> formParams = new List<NameValue>();
  	private final List<NameValue> headers = new List<NameValue>();
  	private final List<NameValue> queryParams = new List<NameValue>();
  	private final HTTPMethod method;
  	private HTTPRequest request;
      
	public IBMWatsonRequestBuilder(HTTPMethod m, String url){
	    this.method = m;
	    if ( String.isBlank(url) ) {
	      throw new IllegalArgumentException('url cannot be null');
	    }
	  	System.PageReference pageReference = new System.PageReference( url ); 
      	httpUrl = pageReference.getUrl();
    }
	
   /**
    * Adds a key/value pair.
    *
    * <pre>
    * <code>
    * Request r = new Request.get("https://foo.bar").add("singleParam", "value")
    *   .add("multiParam", new String[] { "1", "2", "3" })
    *   .add("singleParamWithOutValue", null);
    * </code>
    * </pre>
    *
    * @param params the parameters
    * @param name the parameter name
    * @param value the value to set, will be obtained via {@link String#valueOf(boolean)}. If null, only the parameter is
    *        set. It can also be a collection or array, in which case all elements are added as query parameters
    *
    * @return this
    */
  	private IBMWatsonRequestBuilder add(List<NameValue> params, String name, Object value) {
  		// supports only List<Object>
  		if (value instanceof Iterable<Object> || value instanceof Object[]) {
  			for(Object o: (List<Object>) value){
  				addParam(params, name, o);
  			}
  		}
  		else{
  			addParam(params, name, value);
  		}
  		return this;
  	}

   /**
    * Adds the name, value par to the parameter list as <b>BasicNameValue</b>.
    *
    * @param params the parameter list
    * @param name the parameter name
    * @param value the parameter value
    */
  	private void addParam(List<NameValue> params, String name, Object value) {
    	params.add(new NameValue(name, ((value == null) ? null : String.valueOf(value)) ));
  	}
  	
  	private String getURLWithParams(String uri){
  		if( String.isBlank(uri) ) return null;
  		if( uri.contains('?') ) uri = uri.split('?')[0];
  		if( queryParams != null && !queryParams.isEmpty() ){
  			Map<String, String> p = new Map<String, String>();
  			for( NameValue n: queryParams ){
  				p.put( n.name, n.value );
  			}
		  	System.PageReference pageReference = new System.PageReference( uri ); 
		  	pageReference.getParameters().putAll(p);
	      	uri = pageReference.getUrl();
  		}
  		return uri;
  	}
  	
   /**
    * Builds the request for this instance.
    *
    */
  	public IBMWatsonRequest build() {
	    IBMWatsonRequest.Builder builder = new IBMWatsonRequest.Builder();
	    // URL
	    system.debug(' ==> [IBMWatsonRequestBuilder]:: -- build() -- queryParams='+queryParams);
	    builder.url( getURLWithParams(httpUrl) );

	    if ( method == HTTPMethod.HTTP_GET && body != null) {
	      throw new  IllegalArgumentException('cannot send a RequestBody in a GET request');
	    } else if (formParams != null && !formParams.isEmpty()) {

	    }
	    else if (body == null) {
      		body = IBMWatsonRequestBody.create(null, null);
	    }
	    
    	builder.method(HTTPMethodValue.get(method), body);
	    // accept application/json by default
	    builder.addHeader(IBMWatsonHttpHeaders.ACCEPT, IBMWatsonHttpMediaType.APPLICATION_JSON);
	    system.debug('### *** headers.....'+headers);
	    if( headers != null && !headers.isEmpty() ){
		    for (NameValue header : headers) {
		      builder.addHeader(header.getName(), header.getValue());
		    }
	    }
	    
  		return builder.build();
  	}
  	
   /**
    * Sets the string content to the request (used with POST/PUT). This will encapsulate the string into a
    * { equestBody} encoded with UTF-8
    *
    * @param content the content to POST/PUT
    * @param contentType the HTTP contentType to use.
    *
    * @return this
    */
  	public IBMWatsonRequestBuilder bodyContent(String content, String contentType) {
    	body = IBMWatsonRequestBody.create(IBMWatsonMediaType.parse(contentType), content);
    	headers.add(new NameValue(IBMWatsonHttpHeaders.CONTENT_TYPE, contentType));
    	headers.add(new NameValue(IBMWatsonHttpHeaders.CONTENT_LENGTH, String.valueOf(body.ContentSize)));
    	return this;
  	}

   /**
    * Adds a JSON content to the request (used with POST/PUT). This will encapsulate the json into a {RequestBody}
    * encoded with UTF-8 and use {"application/json"} as Content-Type
    *
    * @param json the serialized json
    *
    * @return this
    */
  	public IBMWatsonRequestBuilder bodyJson(String json) {
    	return bodyContent(json, IBMWatsonHttpMediaType.APPLICATION_JSON);
  	}

  	public IBMWatsonRequestBuilder setParams(List<NameValue> params, Map<String, String> args){
    	if( args != null && !args.isEmpty() ){
    		for(String name: args.keySet()){
    			String value = args.get(name);
    			addParam(params, name, value);
    		}
    	}
    	return this;
  	}
  	
   /**
    * Adds query parameters.
    *
    * @param args a collection of key-value pairs of query parameters
    *
    * @return this
    */
    public IBMWatsonRequestBuilder queryParams(Map<String, String> args){
    	return setParams(queryParams, args);
    }

   /**
    * Adds header parameters.
    *
    * @param args a list of name-value headers
    *
    * @return this
    */
  	public IBMWatsonRequestBuilder addHeader(String headerName, String headerValue) {
  		headers.add( new NameValue(headerName, headerValue) );
    	return this;
  	}
    
    public String queryString(){
    	if( formParams != null && !formParams.isEmpty() ){
			System.PageReference pageReference = new System.PageReference(''); 
    		for(NameValue param: formParams){
				pageReference.getParameters().put(param.name, param.value);
    		}
			return pageReference.getUrl();
    	}
    	return null;
    }
    
}