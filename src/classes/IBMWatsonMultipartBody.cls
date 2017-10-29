public class IBMWatsonMultipartBody extends IBMWatsonRequestBody {

  /**
   * The "mixed" subtype of "multipart" is intended for use when the body parts are independent and
   * need to be bundled in a particular order. Any "multipart" subtypes that an implementation does
   * not recognize must be treated as being of subtype "mixed".
   */
  public static final IBMWatsonMediaType MIXED = IBMWatsonMediaType.parse('multipart/mixed');

  /**
   * The "multipart/alternative" type is syntactically identical to "multipart/mixed", but the
   * semantics are different. In particular, each of the body parts is an "alternative" version of
   * the same information.
   */
  public static final IBMWatsonMediaType ALTERNATIVE = IBMWatsonMediaType.parse('multipart/alternative'); 
  
  /**
   * This type is syntactically identical to "multipart/mixed", but the semantics are different. In
   * particular, in a digest, the default {@code Content-Type} value for a body part is changed from
   * "text/plain" to "message/rfc822".
   */
  public static final IBMWatsonMediaType DIGEST = IBMWatsonMediaType.parse('multipart/digest');   

  /**
   * This type is syntactically identical to "multipart/mixed", but the semantics are different. In
   * particular, in a parallel entity, the order of body parts is not significant.
   */
  public static final IBMWatsonMediaType PARALLEL_TYPE = IBMWatsonMediaType.parse('multipart/parallel');

  /**
   * The media-type multipart/form-data follows the rules of all multipart MIME data streams as
   * outlined in RFC 2046. In forms, there are a series of fields to be supplied by the user who
   * fills out the form. Each field has a name. Within a given form, the names are unique.
   */
  public static final IBMWatsonMediaType FORM = IBMWatsonMediaType.parse('multipart/form-data');

  private String boundary; //'659e67a0-44ec-2ca9-db0e-8ab2ae4e47ef';
  private IBMWatsonMediaType originalType;
  private IBMWatsonMediaType contentType;
  private List<Part> parts;
  private String form64;
  private Blob formBlob;
  private Map<String, String> headers;
  private long contentLength = -1L;

  IBMWatsonMultipartBody(String boundary, IBMWatsonMediaType mediaType, List<Part> parts) {
    this.boundary = boundary;
    this.originalType = mediaType;
    this.contentType = IBMWatsonMediaType.parse(mediaType + '; boundary=' + EncodingUtil.urlEncode(boundary, 'UTF-8'));
    this.parts = parts;
    this.headers = new Map<String, String>();
    this.contentLength = 0;
    writeForm64(parts);
  }

  /** A combination of {@link #type()} and {@link #boundary()}. */
  public IBMWatsonMediaType contentType() {
    return contentType;
  }
  
  public Blob formBlob(){
    return formBlob;
  }
  
  public String form64(){
    return form64;
  }
  
  public long contentLength(){
    return contentLength;
  }
  
  private long writeForm64(List<Part> parts){
    headers.put('Content-Type', 'multipart/form-data; boundary="' + Boundary + '"');
    
    form64 = '';
    
    for(Part p: parts){
      if(p.body().hasBase64Data()){
      	
        String fileName = p.body().name;
        String contentType = p.body.bodyContentType().toString();
        String file64Body = EncodingUtil.base64Encode(p.body().blobContent);
        
    	form64 += WriteBoundary();
        form64 += WriteBase64BodyParameter('file', file64Body, fileName, contentType);
      }
      else{
        form64 += WriteBoundary();
        form64 += WriteBodyParameter(p.body().name, p.body().content);
      }
    }
    
    form64 += WriteFooter();
    
    return form64.length();
  }

    /**
     *  Write a key-value pair to the form's body.
     */
    public static string writeBodyParameter(string key, string value) {
        string contentDisposition = 'Content-Disposition: form-data; name="' + key + '"\r\n\r\n';
        string valueCrLf = value + '\r\n';
        return contentDisposition+valueCrLf;
    }

    /**
     *  Write a key-value pair to the form's body for a blob.
     */
    public string writeBase64BodyParameter(string key, string file64, string filename, string mimeType) {
    	String content = '';
    	
        string contentDisposition = 'Content-Disposition: form-data; name="' + key + '"; filename="'+filename+'"';
        string contentDispositionCrLf = contentDisposition + '\r\n';
        content += contentDispositionCrLf;
        
        string contentTypeHeader = 'Content-Type: ' + mimeType;
        string contentTypeCrLf = contentTypeHeader + '\r\n';
        content += contentTypeCrLf;

        string contentTransfer = 'Content-Transfer-Encoding: base64';
        string contentTransferCrLf = contentTransfer + '\r\n\r\n';
        content += contentTransferCrLf;
        
        content += file64 + '\r\n';
        
        return content;
    }
    
  /**
   *  Write a boundary between parameters to the form's body.
   */
  public string WriteBoundary() {
    return '--' + this.boundary + '\r\n';
  }
        
  /**
   *  Write a boundary between parameters to the form's body.
   */
  public string WriteFooter() {
    return '--' + this.boundary + '--';
  }
  
  public Map<String, String> getAllHeaders(){
    return headers;
  }
  
  public Part part(integer index) {
    return parts.get(index);
  }

  public List<Part> parts() {
    return parts;
  }

  /** The number of parts in this multipart body. */
  public integer size() {
    return parts.size();
  }
            
  public class Part {

    Map<String, String> headers;
    IBMWatsonRequestBody body;
    
    public Part(){
      this.headers = new Map<String, String>();
      this.body = null;
    }
        
    private Part(IBMWatsonRequestBody body) {
      this.headers = null;
      this.body = body;
    }
    
    private Part(Map<String, String> headers, IBMWatsonRequestBody body) { //Headers headers, RequestBody body
      this.headers = headers;
      this.body = body;
    }
    
    public Map<String, String> headers(){
        return headers;
    }
    
    public IBMWatsonRequestBody body(){
      return this.body;
    }
    
    public Part create(Map<String, String> headers, IBMWatsonRequestBody body) {
      if (body == null) {
        throw new IllegalArgumentException('body == null');
      }
      if (headers != null && headers.get('Content-Type') != null) {
        throw new IllegalArgumentException('Unexpected header: Content-Type');
      }
      if (headers != null && headers.get('Content-Length') != null) {
        throw new IllegalArgumentException('Unexpected header: Content-Length');
      }
      return new Part(headers, body);
    }

    public Part createFormData(String name, String value) {
      return createFormData(name, null, IBMWatsonRequestBody.create(null, value));
    }
     
    public Part createFormData(String name, String filename, IBMWatsonRequestBody body) {
      if (name == null) {
        throw new IllegalArgumentException('name == null');
      }
      String disposition = 'form-data; name="'+name+'"';
      if (!String.isBlank(filename) != null) {
        disposition+='; filename="'+filename+'"';
      }
      this.headers.put('Content-Disposition', disposition);
      return create(this.headers, body);
    }
            
    public Part create(IBMWatsonRequestBody body) {
      return create(null, body);
    }    
  }
  
  private static String UUID(){
      Blob b = Crypto.GenerateAESKey(128);
      String h = EncodingUtil.ConvertTohex(b);
      String UUID = h.SubString(0,8) + '-' 
          + h.SubString(8,12) + '-' 
          + h.SubString(12,16) + '-' 
          + h.SubString(16,20) + '-' 
          + h.substring(20);
      return UUID.toUpperCase();
  }
   
  public class Builder {
    private String boundary;
    private IBMWatsonMediaType mediaType = MIXED;
    private List<Part> parts = new List<Part>();
     
    public Builder() {
      this( IBMWatsonMultipartBody.UUID() );
    }
    
    public Builder(String boundary) {
      this.boundary = EncodingUtil.urlEncode(boundary, 'UTF-8');
    }
    
    /**
     * Set the MIME type. Expected values for {@code type} are {@link #MIXED} (the default), {@link
     * #ALTERNATIVE}, {@link #DIGEST}, {@link #PARALLEL} and {@link #FORM}.
     */
    public Builder setType(IBMWatsonMediaType mediaType) {
      if (mediaType == null) {
        throw new IllegalArgumentException('mediaType == null');
      }
      if (!mediaType.toString().contains('multipart')) {
        throw new IllegalArgumentException('multipart != ' + mediaType);
      }
      this.mediaType = mediaType;
      return this;
    }
    
    /** Add a part to the body. */
    public Builder addPart(IBMWatsonRequestBody body) {
      Part newPart = new Part()
      .create(body);
      return addPart(newPart);
    }
    
    /** Add a part to the body. */
    public Builder addPart(Map<String, String> headers, IBMWatsonRequestBody body) {
      Part newPart = new Part()
      .create(headers, body);
      return addPart(newPart);
    }
    
    /** Add a form data part to the body. */
    public Builder addFormDataPart(String name, String value) {
      Part newPart = new Part()
      .createFormData(name, value);
      return addPart(newPart);
    }
    
    /** Add a form data part to the body. */
    public Builder addFormDataPart(String name, String filename, IBMWatsonRequestBody body) {
      Part newPart = new Part()
      .createFormData(name, filename, body);
      return addPart(newPart);
    }
    
    /** Add a part to the body. */
    public Builder addPart(Part part) {
      if (part == null) 
        throw new IllegalArgumentException('part == null');
      parts.add(part);
      return this;
    }
    
    /** Assemble the specified parts into a request body. */
    public IBMWatsonMultipartBody build() {
      return new IBMWatsonMultipartBody(boundary, mediaType, parts); //(boundary, type, parts);
    }    
  }
  
}