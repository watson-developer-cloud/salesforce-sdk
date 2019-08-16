/**
 * Represents response from IAM API.
 */
public class IBMWatsonIAMToken extends IBMWatsonGenericModel {
  private String accessToken;
  private String refreshToken;
  private String tokenType;
  private Long expiresIn;
  private Long expiration;

  public String getAccessToken() {
    return accessToken;
  }

  public String getRefreshToken() {
    return refreshToken;
  }

  public String getTokenType() {
    return tokenType;
  }

  public Long getExpiresIn() {
    return expiresIn;
  }

  public Long getExpiration() {
    return expiration;
  }

  public override Map<String, String> addToSdkToApiMapping(String parentLabel, Map<String, String> mapping) {
    mapping.put('accessToken', 'access_token');
    mapping.put('refreshToken', 'refresh_token');
    mapping.put('tokenType', 'token_type');
    mapping.put('expiresIn', 'expires_in');
    return mapping;
  }

  public override Map<String, String> addToApiToSdkMapping(String parentLabel, Map<String, String> mapping) {
    mapping.put('access_token', 'accessToken');
    mapping.put('refresh_token', 'refreshToken');
    mapping.put('token_type', 'tokenType');
    mapping.put('expires_in', 'expiresIn');
    return mapping;
  }
}
