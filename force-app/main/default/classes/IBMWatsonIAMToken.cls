/**
 * Represents response from IAM API.
 */
public class IBMWatsonIAMToken extends IBMWatsonGenericModel {
  private String access_token_serialized_name;
  private String refresh_token_serialized_name;
  private String token_type_serialized_name;
  private Long expires_in_serialized_name;
  private Long expiration_serialized_name;

  public String getAccessToken() {
    return access_token_serialized_name;
  }

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
}
