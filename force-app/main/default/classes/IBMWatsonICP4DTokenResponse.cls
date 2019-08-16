/**
 * This class models a response received from the ICP4D "get token" API.
 */
public class IBMWatsonICP4DTokenResponse extends IBMWatsonGenericModel {
  private String username;
  private String role;
  private String[] permissions;
  private String sub;
  private String iss;
  private String aud;
  private String uid;
  private String accessToken;
  private String message;

  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public String getRole() {
    return role;
  }
  public void setRole(String role) {
    this.role = role;
  }
  public String[] getPermissions() {
    return permissions;
  }
  public void setPermissions(String[] permissions) {
    this.permissions = permissions;
  }
  public String getSub() {
    return sub;
  }
  public void setSub(String sub) {
    this.sub = sub;
  }
  public String getIss() {
    return iss;
  }
  public void setIss(String iss) {
    this.iss = iss;
  }
  public String getAud() {
    return aud;
  }
  public void setAud(String aud) {
    this.aud = aud;
  }
  public String getUid() {
    return uid;
  }
  public void setUid(String uid) {
    this.uid = uid;
  }
  public String getAccessToken() {
    return accessToken;
  }
  public void setAccessToken(String accessToken) {
    this.accessToken = accessToken;
  }
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }

  public override Map<String, String> addToSdkToApiMapping(String parentLabel, Map<String, String> mapping) {
    mapping.put('accessToken', 'access_token');
    return mapping;
  }

  public override Map<String, String> addToApiToSdkMapping(String parentLabel, Map<String, String> mapping) {
    mapping.put('access_token', 'accessToken');
    return mapping;
  }
}
