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

  public String getAccessToken() {
    return accessToken_serialized_name;
  }
}
