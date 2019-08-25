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

  public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
    if (jsonMap == null) {
      return null;
    }

    // replace any names that are different between the API and SDK
    Map<String, String> propertyNameMapping = new Map<String, String> {
      'user_defined' => 'userDefined',
      'access_token' => 'accessToken',
      'refresh_token' => 'refreshToken',
      'token_type' => 'tokenType',
      'expires_in' => 'expiresIn'
    };
    jsonString = IBMWatsonJSONUtil.replaceKeyNamesInString(jsonString, propertyNameMapping);
    jsonMap = IBMWatsonJSONUtil.replaceKeyNamesInMap(jsonMap, propertyNameMapping);

    IBMWatsonIAMToken ret = (IBMWatsonIAMToken) super.deserialize(jsonString, jsonMap, classType);

    return ret;    
  }

  public String serialize() {
    // get map representation of current model
    Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this));

    // replace any names that are different between the SDK and API
    Map<String, String> propertyNameMapping = new Map<String, String> {
      'userDefined' => 'user_defined',
      'accessToken' => 'access_token',
      'refreshToken' => 'refresh_token',
      'tokenType' => 'token_type',
      'expiresIn' => 'expires_in'
    };
    jsonMap = IBMWatsonJSONUtil.replaceKeyNamesInMap(jsonMap, propertyNameMapping);

    return JSON.serialize(jsonMap);
  }
}
