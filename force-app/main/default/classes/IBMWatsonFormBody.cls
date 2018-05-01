public class IBMWatsonFormBody extends IBMWatsonRequestBody {

  private static final String ENCODING_SCHEME = 'UTF-8';
  private static final String CONTENT_TYPE = 'application/x-www-form-urlencoded';

  private List<String> names;
  private List<String> values;

  private IBMWatsonFormBody(Builder builder) {
    this.names = builder.names;
    this.values = builder.values;
    this.contentType = IBMWatsonMediaType.parse(CONTENT_TYPE);
    writeContent();
  }

  private void writeContent() {
    this.content = '';
    for (Integer i = 0; i < names.size(); i++) {
      if (i > 0) {
      	content += '&';
      }
      this.content += names.get(i) + '=' + values.get(i);
    }
  }

  public class Builder {
    private List<String> names = new List<String>();
    private List<String> values = new List<String>();

    public Builder add(String name, String value) {
      names.add(EncodingUtil.urlEncode(name, ENCODING_SCHEME));
      values.add(EncodingUtil.urlEncode(value, ENCODING_SCHEME));
      return this;
    }

    public IBMWatsonFormBody build() {
      return new IBMWatsonFormBody(this);
    }
  }

}
