public class IBMWatsonMultipartBody extends IBMWatsonRequestBody {

  /**
   * The media-type multipart/form-data follows the rules of all multipart MIME data streams as
   * outlined in RFC 2046. In forms, there are a series of fields to be supplied by the user who
   * fills out the form. Each field has a name. Within a given form, the names are unique.
   */
  public static final IBMWatsonMediaType FORM = IBMWatsonMediaType.parse('multipart/form-data');

  /**
   * The "mixed" subtype of "multipart" is intended for use when the body parts are independent and
   * need to be bundled in a particular order. Any "multipart" subtypes that an implementation does
   * not recognize must be treated as being of subtype "mixed".
   */
  public static final IBMWatsonMediaType MIXED = IBMWatsonMediaType.parse('multipart/mixed');

  private static final String CRLF = '\r\n';
  private String boundary;
  private IBMWatsonMediaType originalType;
  private IBMWatsonMediaType contentType;
  private List<Part> parts;
  private Blob multipartBody;
  private Blob formBlob;
  private Map<String, String> headers;
  private long contentLength = -1L;

  IBMWatsonMultipartBody(String boundary, IBMWatsonMediaType mediaType, List<Part> parts) {
    this.boundary = boundary;
    this.originalType = mediaType;
    this.contentType = IBMWatsonMediaType.parse(mediaType + '; boundary=' + boundary);
    this.parts = parts;
    this.headers = new Map<String, String>();
    this.contentLength = 0;
    writeMultipartBody(parts);
  }

  public IBMWatsonMediaType contentType() {
    return contentType;
  }

  public Blob formBlob() {
    return formBlob;
  }

  public Blob multipartBody() {
    return multipartBody;
  }

  public long contentLength() {
    return contentLength;
  }

  private long writeMultipartBody(List<Part> parts) {
    this.headers.put('Content-Type', 'multipart/form-data; boundary=' + this.boundary);

    Boolean hasFile = false;
    for (Integer i = 0; i < parts.size(); i++) {
      if (parts[i].body().hasBase64Data()) {
        hasFile = true;
        break;
      }
    }

    if (hasFile) {
      String multipartBodyString = '';
      String encodedMultipartBodyString = '';
      List<String> partsToDecode = new List<String>();
      String nonFileSection = '';

      // first put together non-file parts
      for (Integer i = 0; i < parts.size(); i++) {
        Part p = parts[i];
        if (!p.body().hasBase64Data()) {
          String partString = '';

          System.debug('part: ' + i);

          String header = '--' + this.boundary + '\n';
          header += 'Content-Disposition: ' + p.headers().get('Content-Disposition') + '\n\n';
          partString = header + p.body().content + '\n';

          System.debug('partString: ' + partString);

          // add everything from part into total string
          nonFileSection += partString;
        }
      }
      System.debug('non-file section');
      System.debug(nonFileSection);

      // now add in the files
      for (Integer i = 0; i < parts.size(); i++) {
        Part p = parts[i];
        if (p.body().hasBase64Data()) {
          String header = '--' + this.boundary + '\nContent-Disposition: form-data; name="images_file"; filename="' + p.body().name + '";\nContent-Type: application/octet-stream"';
          if (!String.isEmpty(nonFileSection)) {
            header = nonFileSection + header;
          }
          String headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header + CRLF + CRLF));
          while (headerEncoded.endsWith('=')) {
            header += ' ';
            headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header + CRLF + CRLF));
          }
          System.debug('part before file section: ' + header);

          String footer = '--' + this.boundary + '--';  
          String bodyEncoded = EncodingUtil.base64Encode(p.body().blobContent);

          Blob bodyBlob = null;
          String last4Bytes = bodyEncoded.substring(bodyEncoded.length() - 4, bodyEncoded.length());
  
          if (last4Bytes.endsWith('==')) {
            System.debug('uploadFile adding OK');
            last4Bytes = last4Bytes.substring(0, 2) + '0K';
            bodyEncoded = bodyEncoded.substring(0, bodyEncoded.length() - 4) + last4Bytes;
            // We have appended the \r\n to the Blob, so leave footer as it is.
            String footerEncoded = EncodingUtil.base64Encode(Blob.valueOf(footer));
            this.multipartBody = EncodingUtil.base64Decode(headerEncoded + bodyEncoded + footerEncoded);
            System.debug('file section footer: ' + footer);
          } else if (last4Bytes.endsWith('=')) {
            System.debug('uploadFile adding N');
            last4Bytes = last4Bytes.substring(0, 3) + 'N';
            bodyEncoded = bodyEncoded.substring(0, bodyEncoded.length() - 4) + last4Bytes;
            // We have appended the CR e.g. \r, still need to prepend the line feed to the footer
            footer = '\n' + footer;
            String footerEncoded = EncodingUtil.base64Encode(Blob.valueOf(footer));
            this.multipartBody = EncodingUtil.base64Decode(headerEncoded + bodyEncoded + footerEncoded);
            System.debug('file section footer: ' + footer);
          } else {
            // Prepend the CR LF to the footer
            System.debug('uploadFile just adding CR LF');
            footer = '\r\n' + footer;
            String footerEncoded = EncodingUtil.base64Encode(Blob.valueOf(footer));
            this.multipartBody = EncodingUtil.base64Decode(headerEncoded + bodyEncoded + footerEncoded);
            System.debug('file section footer: ' + footer);
          }
        }
      }

      return this.contentLength;

    } else {
      String multipartBodyString = '';

      for (Integer i = 0; i < parts.size(); i++) {
        Part p = parts[i];
        String partString = '';

        System.debug('part: ' + i);

        String header = '--' + this.boundary + '\n';
        header += 'Content-Disposition: ' + p.headers().get('Content-Disposition') + '\n\n';

        partString = header + p.body().content + '\n';
        System.debug('partString: ' + partString);

        // add everything from part into total string
        multipartBodyString += partString;
      }

      System.debug('multipartBodyString:');
      System.debug(multipartBodyString);

      // set footer accordingly
      String footer = '--' + this.boundary + '--';
      System.debug('footer: ' + footer);

      // set multipart body blob
      this.multipartBody = Blob.valueOf(multipartBodyString + footer);

      this.contentLength = multipartBodyString.length() + footer.length();
      return this.contentLength;
    }
  }

  /**
   *  Write a key-value pair to the form's body.
   */
  public String writeBodyParameter(String key, String value, Boolean isEndingPart) {
    String contentDisposition = 'Content-Disposition: ' + key;
    String contentDispositionCrLf = contentDisposition + CRLF + CRLF;
    String content = contentDispositionCrLf;

    String valueCrLf = value + CRLF;
    content += valueCrLf;

    if (isEndingPart == true) {
      String footer = '--' + this.boundary + '--';
      content = content + footer;
    }
    return content;
  }

  /**
   *  Write a Blob type to the form's body.
   */
  public String writeBlobBody(String contentDispositionValue, String fileName, Blob fileBlob, String mimeType, Boolean isEndingPart) {
    String header = '--' + this.boundary + '\nContent-Disposition: form-data; name="request_file"; filename="' + fileName + '";\nContent-Type: application/octet-stream';
    String headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header + CRLF + CRLF));
    while(headerEncoded.endsWith('='))
    {
      header += ' ';
      headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header + CRLF + CRLF));
    }
    String bodyEncoded = EncodingUtil.base64Encode(fileBlob);

    String footer = '--' + this.boundary + '--';

    String fullEncodedBody = '';

    return fullEncodedBody;
  }

  public Map<String, String> getAllHeaders() {
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

    public Part() {
      this.headers = new Map<String, String>();
      this.body = null;
    }

    private Part(IBMWatsonRequestBody body) {
      this.headers = new Map<String, String>();
      this.body = body;
    }

    private Part(Map<String, String> headers, IBMWatsonRequestBody body) {
      this.headers = headers;
      this.body = body;
    }

    public Map<String, String> headers() {
      return headers;
    }

    public IBMWatsonRequestBody body() {
      return this.body;
    }

    public Part create(Map<String, String> headers, IBMWatsonRequestBody body) {
      if (body == null) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('body cannot be null');
      }
      if (headers != null && headers.get('Content-Type') != null) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('Unexpected header: Content-Type');
      }
      if (headers != null && headers.get('Content-Length') != null) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('Unexpected header: Content-Length');
      }
      return new Part(headers, body);
    }

    public Part createFormData(String name, String value) {
      return createFormData(name, null, IBMWatsonRequestBody.create(value, null));
    }

    public Part createFormData(String name, String filename, IBMWatsonRequestBody body) {
      if (name == null) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('name == null');
      }
      String disposition = 'form-data; name="' + name + '"';
      if (String.isNotBlank(filename)) {
        disposition += '; filename="' + filename + '"';
      }
      this.headers.put('Content-Disposition', disposition);
      return create(this.headers, body);
    }

    public Part create(IBMWatsonRequestBody body) {
      return create(null, body);
    }
  }

  private static String generateRandomBoundaryString() {
    Blob b = Crypto.GenerateAESKey(128);
    String h = EncodingUtil.ConvertTohex(b);
    String boundaryString = h.substring(0, 16);
    return boundaryString;
  }

  public class Builder {
    private String boundary;
    private IBMWatsonMediaType mediaType = MIXED;
    private List<Part> parts = new List<Part>();

    public Builder() {
      //this(IBMWatsonMultipartBody.generateRandomBoundaryString());
      this('----------------------------741e90d31eff');
    }

    public Builder(String boundary) {
      //this.boundary = EncodingUtil.urlEncode(boundary, 'UTF-8');
      this.boundary = boundary;
    }

    /**
     * Set the MIME type. Expected values for {@code type} are {@link #MIXED} (the default), {@link
     * #ALTERNATIVE}, {@link #DIGEST}, {@link #PARALLEL} and {@link #FORM}.
     */
    public Builder setType(IBMWatsonMediaType mediaType) {
      if (mediaType == null) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('mediaType cannot be null');
      }
      if (!mediaType.toString().contains('multipart')) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('mediaType should contain multipart: ' + mediaType);
      }
      this.mediaType = mediaType;
      return this;
    }

    /** Add a part to the body. */
    public Builder addPart(IBMWatsonRequestBody body) {
      Part newPart = new Part().create(body);
      return addPart(newPart);
    }

    /** Add a part to the body. */
    public Builder addPart(Map<String, String> headers, IBMWatsonRequestBody body) {
      Part newPart = new Part().create(headers, body);
      return addPart(newPart);
    }

    /** Add a form data part to the body. */
    public Builder addFormDataPart(String name, String value) {
      Part newPart = new Part().createFormData(name, value);
      return addPart(newPart);
    }

    /** Add a form data part to the body. */
    public Builder addFormDataPart(String name, String filename, IBMWatsonRequestBody body) {
      // use default filename if we're expecting one but nothing is supplied
      if (filename == null) {
        filename = 'filename';
      }
      Part newPart = new Part().createFormData(name, filename, body);
      return addPart(newPart);
    }

    /** Add a part to the body. */
    public Builder addPart(Part part) {
      if (part == null) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('part == null');
      }
      parts.add(part);
      return this;
    }

    /** Assemble the specified parts into a request body. */
    public IBMWatsonMultipartBody build() {
      return new IBMWatsonMultipartBody(boundary, mediaType, parts);
    }
  }
}