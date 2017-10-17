public class IBMWatsonMediaType {

  private static final String TOKEN = '([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)';
  private static final String QUOTED = '"([^"]*)"';
  private static final System.Pattern TYPE_SUBTYPE = System.Pattern.compile(TOKEN + '/' + TOKEN);
  private static final System.Pattern PARAMETER = System.Pattern.compile(';\\s*(?:" + TOKEN + "=(?:" + TOKEN + "|" + QUOTED + "))?');

  private final String mediaType;
  public final String type_m {public get; private set;}
  public final String subtype {public get; private set;}
  public final String charset {public get; private set;}

  private IBMWatsonMediaType(String mediaType, String t, String subtype, String charset) {
    this.mediaType = mediaType;
    this.type_m = t;
    this.subtype = subtype;
    this.charset = charset;
  }

  /**
   * Returns a media type for {@code string}, or null if {@code string} is not a well-formed media
   * type.
   */
  public static IBMWatsonMediaType parse(String str) {
    Matcher typeSubtype = TYPE_SUBTYPE.matcher(str);
    if (!typeSubtype.lookingAt()) return null;
    String t = typeSubtype.group(1).toLowerCase('en');
    String subtype = typeSubtype.group(2).toLowerCase('en');
    String charset = null;
    Matcher parameter_matcher = PARAMETER.matcher(str);
    if( parameter_matcher.matches() ){
    for (integer s = typeSubtype.end(); s < str.length(); s = parameter_matcher.end()) {
        parameter_matcher.region(s, str.length());
        if (!parameter_matcher.lookingAt()) return null; // This is not a well-formed media type.
        String name = parameter_matcher.group(1);
        if (name == null || !name.equalsIgnoreCase('charset')) continue;
        String charsetParameter;
        String token = parameter_matcher.group(2);
        if (token != null) {
          // If the token is 'single-quoted' it's invalid! But we're lenient and strip the quotes.
          charsetParameter = (token.startsWith('\'') && token.endsWith('\'') && token.length() > 2)
            ? token.substring(1, token.length() - 1)
            : token;
        } else {
          // Value is "double-quoted". That's valid and our regex group already strips the quotes.
          charsetParameter = parameter_matcher.group(3);
        }
        if (charset != null && !charsetParameter.equalsIgnoreCase(charset)) {
          return null; // Multiple different charsets!
        }
        charset = charsetParameter;
    } 
    }
    return new IBMWatsonMediaType(str, t, subtype, charset);
  }

  /**
   * Returns the encoded media type, like "text/plain; charset=utf-8", appropriate for use in a
   * Content-Type header.
   */
  public override String toString() {
    return mediaType;
  }

  public boolean equals( Object other) {
    return other instanceof IBMWatsonMediaType && ((IBMWatsonMediaType) other).mediaType.equals(mediaType);
  }
    
  public integer hashCode() {
    return mediaType.hashCode();
  }
    
}