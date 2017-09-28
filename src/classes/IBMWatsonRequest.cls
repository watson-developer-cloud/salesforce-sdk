public class IBMWatsonRequest {

  final URL url;
  final String method;
  final Map<String, String> headers;
  final IBMWatsonRequestBody body;
  final Object tag;

  IBMWatsonRequest(Builder builder) {
    this.url = builder.url;
    this.method = builder.method;
    this.headers = new Map<String, String>();
    this.headers.putAll(builder.headers);
    this.body = builder.body;
    this.tag = builder.tag != null ? builder.tag : this;
  }

  public URL getUrl() {
    return this.url;
  }

  public String getMethod() {
    return this.method;
  }

  public Map<string, string> getAllHeaders() {
    return this.headers;
  }

  public String header(String name) {
    return headers.get(name);
  }

  public List<String> getHeadersByName(String name) {
  	List<String> headerValues = new List<String>();
  	if( headers != null && !headers.isEmpty() ){
  		for( String headerName: headers.keySet() ){
  			if( !String.isBlank(headerName) && headerName.equalsIgnoreCase(name) ){
  				headerValues.add( headers.get(headerName) );
  			}
  		}
  	}
    return headerValues;
  }
  
  public IBMWatsonRequestBody getBody() {
    return this.body;
  }

  public Object tag() {
    return tag;
  }

  public Builder newBuilder() {
  	system.debug('==> [IBMWatsonRequest]:: -- newBuilder() --'+this);
    return new Builder(this);
  }
  
  /**
   * Returns the cache control directives for this response. This is never null, even if this
   * response contains no {@code Cache-Control} header.
   */
  //public CacheControl cacheControl() {
  //  CacheControl result = cacheControl;
  //  return result != null ? result : (cacheControl = CacheControl.parse(headers));
  //}

  public boolean isHttps() {
  	if( url != null && url.toExternalForm().startsWith('https://') ) {
  		return true;
  	}
    return false;
  }

  public override String toString() {
    return 'Request{method='
        + method
        + ', url='
        + url
        + ', tag='
        + (tag != this ? tag : null)
        + '}';
  }

  public class Builder {
    URL url;
    String method;
    map<String, String> headers;
    IBMWatsonRequestBody body;
    Object tag;

    public Builder() {
      this.method = 'GET';
      this.headers = new map<String, String>();
    }

    Builder(IBMWatsonRequest request) {
      this.url = request.url;
      this.method = request.method;
      this.body = request.body;
      this.tag = request.tag;
      this.headers = new Map<String, String>();
      this.headers.putAll(request.headers);
    }

    public Builder url(URL url) {
      if (url == null) throw new IllegalArgumentException('url == null');
      this.url = url;
      return this;
    }

    /**
     * Sets the URL target of this request.
     *
     * @throws IllegalArgumentException if {@code url} is not a valid HTTP or HTTPS URL. Avoid this
     * exception by calling {@link HttpUrl#parse}; it returns null for invalid URLs.
     */
    public Builder url(String url) {
      if (url == null) throw new IllegalArgumentException('url == null');
      URL parsed = new URL(url);
      if (parsed == null) throw new IllegalArgumentException('unexpected url: ' + url);
      return url(parsed);
    }

    /**
     * Sets the URL target of this request.
     *
     * @throws IllegalArgumentException if the scheme of {@code url} is not {@code http} or {@code
     * https}.
     */
    //public Builder url(URL url) {
    //  if (url == null) throw new IllegalArgumentException('url == null');
    //  HttpUrl parsed = HttpUrl.get(url);
    //  if (parsed == null) throw new IllegalArgumentException('unexpected url: ' + url);
    //  return url(parsed);
    //}

    /**
     * Adds a header with {@code name} and {@code value}. Prefer this method for multiply-valued
     * headers like "Cookie".
     *
     * <p>Note that for some headers including {@code Content-Length} and {@code Content-Encoding},
     * OkHttp may replace {@code value} with a header derived from the request body.
     */
    public Builder addHeader(String name, String value) {
      headers.put(name, value);
      return this;
    }

    public Builder removeHeader(String name) {
      headers.remove(name);
      return this;
    }

    /** Removes all headers on this builder and adds {@code headers}. */
    public Builder refresh_headers(map<String, String> headers) {
      this.headers = new  map<String, String>();
      this.headers.putAll( headers );
      return this;
    }
	
	public Map<String, String> getHeaders(){
		return this.headers;
	}
	
    /**
     * Sets this request's {@code Cache-Control} header, replacing any cache control headers already
     * present. If {@code cacheControl} doesn't define any directives, this clears this request's
     * cache-control headers.
     */
    //public Builder cacheControl(CacheControl cacheControl) {
    //  String value = cacheControl.toString();
    //  if (value.isEmpty()) return removeHeader('Cache-Control');
    //  return header('Cache-Control', value);
    //}

    public Builder http_get() {
      return method('GET', null);
    }

    public Builder http_head() {
      return method('HEAD', null);
    }

    public Builder http_post(IBMWatsonRequestBody body) {
      return method('POST', body);
    }

    public Builder http_delete(IBMWatsonRequestBody body) {
      return method('DELETE', body);
    }

    public Builder http_delete() {
      return http_delete( IBMWatsonRequestBody.create(null, null) );
    }

    public Builder http_put(IBMWatsonRequestBody body) {
      return method('PUT', body);
    }

    public Builder http_patch(IBMWatsonRequestBody body) {
      return method('PATCH', body);
    }

    public Builder method(String method, IBMWatsonRequestBody body) {
      if (String.isBlank(method)) throw new IllegalArgumentException('method == empty');
      this.method = method;
      this.body = body;
      return this;
    }

    /**
     * Attaches {@code tag} to the request. It can be used later to cancel the request. If the tag
     * is unspecified or null, the request is canceled by using the request itself as the tag.
     */
    public Builder tag(Object tag) {
      this.tag = tag;
      return this;
    }

    public IBMWatsonRequest build() {
      if (url == null) throw new IllegalArgumentException('url == null');
      system.debug('@@ ==> [IBMWatsonRequest]:: -- build() -- building request....'+this);
      return new IBMWatsonRequest(this);
    }
  }    
}