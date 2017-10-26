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

  public enum EndingType {
    Cr,
    CrLf,
    None
  }
    
  //private static final byte[] COLONSPACE = {':', ' '};
  //private static final byte[] CRLF = {'\r', '\n'};
  //private static final byte[] DASHDASH = {'-', '-'};  

  private String boundary; //'659e67a0-44ec-2ca9-db0e-8ab2ae4e47ef';
  private IBMWatsonMediaType originalType;
  private IBMWatsonMediaType contentType;
  private List<Part> parts;
  private String form64;
  private Blob formBlob;
  private Map<String, String> headers;
  private long contentLength = -1L;

  IBMWatsonMultipartBody(String boundary, IBMWatsonMediaType media_type, List<Part> parts) {
    this.boundary = boundary;
    this.originalType = media_type;
    this.contentType = IBMWatsonMediaType.parse(media_type + '; boundary=' + EncodingUtil.urlEncode(boundary, 'UTF-8'));
    this.parts = parts;
    this.headers = new Map<String, String>();
  	if( parts != null && !parts.isEmpty() ){
  	  contentLength = 0;
  	  for(Part p: parts){
  	    contentLength += p.body().ContentSize; 
  	  }
  	}
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
    
    String footer = '--'+boundary+'--';
    form64 = '';             
    for(Part p: parts){
      if(p.body().hasBase64Data()){
      	
	    String file_name = p.body().name;
	    String content_type = p.body.bodyContentType().toString();
	    Blob file_body = p.body().blobContent;
	    
        String header = '--'+boundary+'\nContent-Disposition: form-data; name="file"; filename="'+file_name+'";\nContent-Type: '+content_type;
        
        String headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header+'\r\n\r\n'));
        
        while(headerEncoded.endsWith('=')){
         header+=' ';
         headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header+'\r\n\r\n'));
        }
        
        String bodyEncoded = EncodingUtil.base64Encode(file_body);
        String last4Bytes = bodyEncoded.substring(bodyEncoded.length()-4,bodyEncoded.length());
        String footerEncodedfinal = '';
	    if(last4Bytes.endsWith('==')) {
	        // The '==' sequence indicates that the last group contained only one 8 bit byte
	        // 8 digit binary representation of CR is 00001101
	        // 8 digit binary representation of LF is 00001010
	        // Stitch them together and then from the right split them into 6 bit chunks
	        // 0000110100001010 becomes 0000 110100 001010
	        // Note the first 4 bits 0000 are identical to the padding used to encode the
	        // second original 6 bit chunk, this is handy it means we can hard code the response in
	        // The decimal values of 110100 001010 are 52 10
	        // The base64 mapping values of 52 10 are 0 K
	        // See http://en.wikipedia.org/wiki/Base64 for base64 mapping table
	        // Therefore, we replace == with 0K
	        // Note: if using \n\n instead of \r\n replace == with 'oK'
	        last4Bytes = last4Bytes.substring(0,2) + '0K';
	        bodyEncoded = bodyEncoded.substring(0,bodyEncoded.length()-4) + last4Bytes;
	        // We have appended the \r\n to the Blob, so leave footer as it is.
	        footerEncodedfinal = EncodingUtil.base64Encode(Blob.valueOf('\r\n'+footer));
	    } else if(last4Bytes.endsWith('=')) {
	        // '=' indicates that encoded data already contained two out of 3x 8 bit bytes
	        // We replace final 8 bit byte with a CR e.g. \r
	        // 8 digit binary representation of CR is 00001101
	        // Ignore the first 2 bits of 00 001101 they have already been used up as padding
	        // for the existing data.
	        // The Decimal value of 001101 is 13
	        // The base64 value of 13 is N
	        // Therefore, we replace = with N
	        // Note: if using \n instead of \r replace = with 'K'
	        last4Bytes = last4Bytes.substring(0,3) + 'N';
	        bodyEncoded = bodyEncoded.substring(0,bodyEncoded.length()-4) + last4Bytes;
	        // We have appended the CR e.g. \r, still need to prepend the line feed to the footer
	        footer = '\n' + footer;
	        footerEncodedfinal = EncodingUtil.base64Encode(Blob.valueOf(footer));
	    } else {
	        // Prepend the CR LF to the footer
	        footer = '\r\n' + footer;
	        footerEncodedfinal = EncodingUtil.base64Encode(Blob.valueOf(footer));
	    }
        form64 += headerEncoded+bodyEncoded+footerEncodedfinal;
        
      }
    }
     
    formBlob = EncodingUtil.base64Decode(form64);
    
    return formBlob.size();
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
	  String UUID = h.SubString(0,8)+ '-' + h.SubString(8,12) + '-' + h.SubString(12,16) + '-' + h.SubString(16,20) + '-' + h.substring(20);
	  //return UUID.toUpperCase();
	  return 'FDF5C27C-1A9D-9A86-1137-FCEF906B9589';
  }
   
  public class Builder {
  	private String boundary;
  	private IBMWatsonMediaType media_type = MIXED;
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
    public Builder setType(IBMWatsonMediaType media_type) {
      if (media_type == null) {
        throw new IllegalArgumentException('media_type == null');
      }
      if (!media_type.toString().contains('multipart')) {
        throw new IllegalArgumentException('multipart != ' + media_type);
      }
      this.media_type = media_type;
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
      if (part == null) throw new IllegalArgumentException('part == null');
      parts.add(part);
      return this;
    }
    
    /** Assemble the specified parts into a request body. */
    public IBMWatsonMultipartBody build() {
      return new IBMWatsonMultipartBody(boundary, media_type, parts); //(boundary, type, parts);
    }    
  }
  
}