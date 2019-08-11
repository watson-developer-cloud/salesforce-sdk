/**
 * Represents response from IAM API.
 */
public class IBMWatsonIAMToken extends IBMWatsonGenericModel {
  private String access_token;
  private String refresh_token;
  private String token_type;
  private Long expires_in;
  private Long expiration;

  public String getAccessToken() {
    return access_token;
  }

  public String getRefreshToken() {
    return refresh_token;
  }

  public String getTokenType() {
    return token_type;
  }

  public Long getExpiresIn() {
    return expires_in;
  }

  public Long getExpiration() {
    return expiration;
  }
}
