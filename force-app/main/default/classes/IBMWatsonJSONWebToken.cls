public class IBMWatsonJSONWebToken {
  private Map<String, Object> header;
  private Payload payload;

  /**
   * Ctor which accepts the encoded JWT as a string.  This ctor will parse
   * the JWT into its header and payload parts
   * @param encodedToken a string representing the encoded JWT.
   */
  public IBMWatsonJSONWebToken(String encodedToken) {
    // Split the encoded jwt string into the header, payload, and signature
    String[] decodedParts = encodedToken.split('\\.');

    String tokenJson;

    // Decode and parse the header.
    tokenJson = EncodingUtil.base64Decode(decodedParts[0]).toString();
    header = (Map<String, Object>) JSON.deserializeUntyped(tokenJson);

    // Decode and parse the body.
    tokenJson = EncodingUtil.base64Decode(decodedParts[1]).toString();
    payload = (Payload) JSON.deserialize(tokenJson, Payload.class);
  }

  public Map<String, Object> getHeader() {
    return header;
  }

  public Payload getPayload() {
    return payload;
  }

  public class Payload {
    private Long iat;
    private Long exp;
    private String sub;
    private String iss;
    private String aud;
    private String uid;
    private String username;
    private String role;

    public Payload() {}

    /**
     * Returns the "Issued At" ("iat") value within this JsonWebToken.
     * @return the iat value
     */
    public Long getIssuedAt() {
      return iat;
    }

    /**
     * Returns the "Expires At" ("exp") value within this JsonWebToken.
     * @return the exp value
     */
    public Long getExpiresAt() {
      return exp;
    }

    /**
     * Returns the "Subject" ("sub") value with this JsonWebToken.
     * @return the sub value
     */
    public String getSubject() {
      return sub;
    }

    /**
     * Returns the "Issuer" ("iss") value with this JsonWebToken.
     * @return the iss value
     */
    public String getIssuer() {
      return iss;
    }

    /**
     * Returns the "Audience" ("aud") value with this JsonWebToken.
     * @return the aud value
     */
    public String getAudience() {
      return aud;
    }

    /**
     * Returns the "Userid" ("uid") value with this JsonWebToken.
     * @return the uid value
     */
    public String getUserId() {
      return uid;
    }

    /**
     * Returns the "Username" ("username") value with this JsonWebToken.
     * @return the username value
     */
    public String getUsername() {
      return username;
    }

    /**
     * Returns the "Role" ("role") value with this JsonWebToken.
     * @return the role value
     */
    public String getRole() {
      return role;
    }
  }
}
