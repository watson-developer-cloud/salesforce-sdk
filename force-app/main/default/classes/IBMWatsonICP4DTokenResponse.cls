/**
 * This class models a response received from the ICP4D "get token" API.
 */
public class IBMWatsonICP4DTokenResponse extends IBMWatsonGenericModel {
  private String username_serialized_name;
  private String role_serialized_name;
  private String[] permissions_serialized_name;
  private String sub_serialized_name;
  private String iss_serialized_name;
  private String aud_serialized_name;
  private String uid_serialized_name;
  private String accessToken_serialized_name;
  private String message_serialized_name;

  public String getUsername() {
    return username_serialized_name;
  }
  public void setUsername(String username) {
    this.username_serialized_name = username;
  }
  public String getRole() {
    return role_serialized_name;
  }
  public void setRole(String role) {
    this.role_serialized_name = role;
  }
  public String[] getPermissions() {
    return permissions_serialized_name;
  }
  public void setPermissions(String[] permissions) {
    this.permissions_serialized_name = permissions;
  }
  public String getSub() {
    return sub_serialized_name;
  }
  public void setSub(String sub) {
    this.sub_serialized_name = sub;
  }
  public String getIss() {
    return iss_serialized_name;
  }
  public void setIss(String iss) {
    this.iss_serialized_name = iss;
  }
  public String getAud() {
    return aud_serialized_name;
  }
  public void setAud(String aud) {
    this.aud_serialized_name = aud;
  }
  public String getUid() {
    return uid_serialized_name;
  }
  public void setUid(String uid) {
    this.uid_serialized_name = uid;
  }
  public String getAccessToken() {
    return accessToken_serialized_name;
  }
  public void setAccessToken(String accessToken) {
    this.accessToken_serialized_name = accessToken;
  }
  public String getMessage() {
    return message_serialized_name;
  }
  public void setMessage(String message) {
    this.message_serialized_name = message;
  }
}
