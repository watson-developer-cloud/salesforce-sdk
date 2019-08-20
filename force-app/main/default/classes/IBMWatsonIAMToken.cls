/**
 * Represents response from IAM API.
 */
public class IBMWatsonIAMToken extends IBMWatsonAbstractToken implements IBMWatsonTokenServerResponse {
  private String access_token_serialized_name;
  private String refresh_token_serialized_name;
  private String token_type_serialized_name;
  private Long expires_in_serialized_name;
  private Long expiration_serialized_name;

  public String getRefreshToken() {
    return refresh_token_serialized_name;
  }

  public String getTokenType() {
    return token_type_serialized_name;
  }

  public Long getExpiresIn() {
    return expires_in_serialized_name;
  }

  public Long getExpiration() {
    return expiration_serialized_name;
  }

  /**
   * Returns true iff this object holds a valid non-expired access token.
   * @return true if token is valid and not expired, false otherwise
   */
  public override boolean isTokenValid() {
    if (getAccessToken() == null || getExpiresIn() == null || getExpiration() == null) {
      return false;
    }

    Double fractionOfTimeToLive = 0.8;
    Long timeToLive = getExpiresIn();
    Long expirationTime = getExpiration();
    Double refreshTime = expirationTime - (timeToLive * (1.0 - fractionOfTimeToLive));
    Double currentTime = Math.floor(System.now().getTime() / 1000);

    return currentTime < refreshTime;
  }

  public override String getAccessToken() {
    return this.access_token_serialized_name;
  }
}
