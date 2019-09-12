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
  private static final String DEFAULT_BOUNDARY = '----------------------------741e90d31eff';

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

    // determine if we're going to be sending a file, which will dictate how we send the body
    Boolean hasFile = false;
    for (Integer i = 0; i < parts.size(); i++) {
      if (parts[i].body().hasBase64Data()) {
        hasFile = true;
        break;
      }
    }

    // bodies with one or more files will be encoded, while we won't bother otherwise
    if (hasFile) {
      String multipartBodyString = '';
      String encodedMultipartBodyString = '';
      String nonFileSection = '';
      List<String> partsToDecode = new List<String>();

      // first put together non-file parts
      for (Integer i = 0; i < parts.size(); i++) {
        Part p = parts[i];
        if (!p.body().hasBase64Data()) {
          String partString = writeNonFileEncapsulation(p.headers().get('Content-Disposition'), p.body().content);

          // add everything from part into total string
          nonFileSection += partString;
        }
      }

      // now add in the files
      List<String> encodedSections = new List<String>();
      String charsToPrependToNextBoundary = '';
      String startingHeaderAddition = '--' + this.boundary;
      if (!String.isEmpty(nonFileSection)) {
        startingHeaderAddition = nonFileSection + startingHeaderAddition;
      }
      for (Integer i = 0; i < parts.size(); i++) {
        Part p = parts[i];
        if (p.body().hasBase64Data()) {
          String header = '--' + this.boundary + '\nContent-Disposition: form-data; name="images_file"; filename="' + p.body().name + '";\nContent-Type: application/octet-stream"';

          // add in non-file stuff if necessary
          if (i == 0 && !String.isEmpty(nonFileSection)) {
            header = nonFileSection + header;
          }

          // add any characters we might've needed if we added a file previously
          header = charsToPrependToNextBoundary + header;

          String headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header + CRLF + CRLF));
          while (headerEncoded.endsWith('=')) {
            header += ' ';
            headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header + CRLF + CRLF));
          }
          encodedSections.add(headerEncoded);

          String bodyEncoded = EncodingUtil.base64Encode(p.body().blobContent);
          Blob bodyBlob = null;
          String last4Bytes = bodyEncoded.substring(bodyEncoded.length() - 4, bodyEncoded.length());
  
          // logic from this section and use of charsToPrependToNextBoundary variable borrowed from
          // http://enreeco.blogspot.com/2013/01/salesforce-apex-post-mutipartform-data.html
          if (last4Bytes.endsWith('==')) {
            last4Bytes = last4Bytes.substring(0, 2) + '0K';
            bodyEncoded = bodyEncoded.substring(0, bodyEncoded.length() - 4) + last4Bytes;

            encodedSections.add(bodyEncoded);
            charsToPrependToNextBoundary = '';
          } else if (last4Bytes.endsWith('=')) {
            last4Bytes = last4Bytes.substring(0, 3) + 'N';
            bodyEncoded = bodyEncoded.substring(0, bodyEncoded.length() - 4) + last4Bytes;

            encodedSections.add(bodyEncoded);
            charsToPrependToNextBoundary = '\n';
          } else {
            encodedSections.add(bodyEncoded);
            charsToPrependToNextBoundary = CRLF;
          }
        }
      }

      // add footer after files
      String footer = charsToPrependToNextBoundary + '--' + this.boundary + '--';
      String footerEncoded = EncodingUtil.base64Encode(Blob.valueOf(footer));
      encodedSections.add(footerEncoded);

      // put everything together in the blob
      String totalEncodedString = '';
      for (String encodedSection : encodedSections) {
        totalEncodedString += encodedSection;
      }
      this.multipartBody = EncodingUtil.base64Decode(totalEncodedString);
      this.contentLength = totalEncodedString.length();

      return this.contentLength;

    } else {
      String multipartBodyString = '';

      for (Integer i = 0; i < parts.size(); i++) {
        Part p = parts[i];
        String partString = writeNonFileEncapsulation(p.headers().get('Content-Disposition'), p.body().content);

        // add everything from part into total string
        multipartBodyString += partString;
      }

      // set multipart body blob
      String footer = '--' + this.boundary + '--';
      this.multipartBody = Blob.valueOf(multipartBodyString + footer);

      this.contentLength = multipartBodyString.length() + footer.length();
      return this.contentLength;
    }
  }

  /**
   * Create the string for an encapsulation not sending a file parameter. The encapsulation covers the
   * boundary, Content-Disposition header, and parameter value.
   */
  private String writeNonFileEncapsulation(String contentDispositionKey, String value) {
    return '--' + this.boundary + '\nContent-Disposition: ' + contentDispositionKey + '\n\n' + value + '\n';
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

  public class Builder {
    private String boundary;
    private IBMWatsonMediaType mediaType = MIXED;
    private List<Part> parts = new List<Part>();

    public Builder() {
      this(DEFAULT_BOUNDARY);
    }

    public Builder(String boundary) {
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