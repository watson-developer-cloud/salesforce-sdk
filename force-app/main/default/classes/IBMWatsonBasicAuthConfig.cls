public class IBMWatsonBasicAuthConfig implements IBMWatsonAuthenticatorConfig {
  private String username;
  private String password;

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_BASIC;
  }

  public void validate() {
    if (IBMWatsonCredentialUtils.hasBadStartOrEndChar(username) || IBMWatsonCredentialUtils.hasBadStartOrEndChar(password)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('The username and password shouldn\'t start or end with curly brackets or '
          + 'quotes. Please remove any surrounding {, }, or " characters.');
    }
  }

  public String getUsername() {
    return username;
  }

  public String getPassword() {
    return password;
  }

  public class Builder {
    private String username;
    private String password;

    public IBMWatsonBasicAuthConfig build() {
      IBMWatsonBasicAuthConfig config = new IBMWatsonBasicAuthConfig(this);
      config.validate();
      return config;
    }

    public Builder username(String username) {
      this.username = username;
      return this;
    }

    public Builder password(String password) {
      this.password = password;
      return this;
    }
  }

  private IBMWatsonBasicAuthConfig(Builder builder) {
    this.username = builder.username;
    this.password = builder.password;
  }
}
