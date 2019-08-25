/**
 * This class holds relevant info re: a CP4D access token for use by the IBMWatsonCloudPakForDataAuthenticator class.
 */
public class IBMWatsonCP4DToken extends IBMWatsonAbstractToken {
  public String accessToken;
  public Long expirationTimeInMillis;

  /**
   * This ctor is used to store a user-managed access token which will never expire.
   * @param accessToken the user-managed access token
   */
  public IBMWatsonCP4DToken(String accessToken) {
    this.accessToken = accessToken;
    this.expirationTimeInMillis = -1;
  }

  /**
   * This ctor will extract the CP4D access token from the specified IBMWatsonCP4DTokenResponse instance,
   * and compute the expiration time as "80% of the timeToLive added to the issued-at time".
   * This means that we'll trigger the acquisition of a new token shortly before it is set to expire.
   * @param response the IBMWatsonCP4DTokenResponse instance
   */
  public IBMWatsonCP4DToken(IBMWatsonCP4DTokenResponse response) {
    this.accessToken = response.getAccessToken();

    // To compute the expiration time, we'll need to crack open the accessToken value
    // which is a JWToken (Json Web Token) instance.
    IBMWatsonJSONWebToken jwt = new IBMWatsonJSONWebToken(this.accessToken);

    Long iat = jwt.getPayload().getIssuedAt();
    Long exp = jwt.getPayload().getExpiresAt();
    if (iat != null && exp != null) {
      Long ttl = exp - iat;
      this.expirationTimeInMillis = (iat + (Long) (0.8 * ttl)) * 1000;
    } else {
      throw new IBMWatsonServiceExceptions.ResponseException('Properties "iat" and "exp" MUST be present within the encoded access token');
    }
  }

  /**
   * Returns true iff this object holds a valid non-expired access token.
   * @return true if token is valid and not expired, false otherwise
   */
  public override boolean isTokenValid() {
    return !String.isBlank(this.accessToken)
        && (this.expirationTimeInMillis < 0 || System.now().getTime() <= this.expirationTimeInMillis);
  }

  public override String getAccessToken() {
    return this.accessToken;
  }
}
