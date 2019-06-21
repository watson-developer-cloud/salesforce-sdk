public class IBMWatsonICP4DConfig implements IBMWatsonAuthenticatorConfig {
  private String url;
  private String username;
  private String password;
  private String userManagedAccessToken;

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_ICP4D;
  }

  public void validate() {
    // If the user specifies their own access token, then username/password are not required.
    if (!String.isBlank(userManagedAccessToken)) {
      return;
    }

    if (String.isBlank(url)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('You must provide a URL.');
    }

    if (String.isBlank(username) || String.isBlank(password)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(
        'You must provide both username and password values.');

      if (IBMWatsonCredentialUtils.hasBadStartOrEndChar(username) || IBMWatsonCredentialUtils.hasBadStartOrEndChar(password)) {
        throw new IBMWatsonServiceExceptions.IllegalArgumentException('The username and password shouldn\'t start or end with curly brackets or '
            + 'quotes. Please remove any surrounding {, }, or " characters.');
      }
    }
  }

  public String getUrl() {
    return url;
  }

  public String getUsername() {
    return username;
  }

  public String getPassword() {
    return password;
  }

  public String getUserManagedAccessToken() {
    return userManagedAccessToken;
  }

  public class Builder {
    private String url;
    private String username;
    private String password;
    private String userManagedAccessToken;

    public IBMWatsonICP4DConfig build() {
      IBMWatsonICP4DConfig config = new IBMWatsonICP4DConfig(this);
      config.validate();
      return config;
    }

    public Builder url(String url) {
      this.url = url;
      return this;
    }

    public Builder username(String username) {
      this.username = username;
      return this;
    }

    public Builder password(String password) {
      this.password = password;
      return this;
    }

    public Builder userManagedAccessToken(String userManagedAccessToken) {
      this.userManagedAccessToken = userManagedAccessToken;
      return this;
    }
  }

  private IBMWatsonICP4DConfig(Builder builder) {
    this.url = builder.url;
    this.username = builder.username;
    this.password = builder.password;
    this.userManagedAccessToken = builder.userManagedAccessToken;
  }
}
