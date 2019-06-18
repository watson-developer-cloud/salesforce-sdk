/**
 * Options for authenticating using IAM.
 */
public class IBMWatsonIAMOptions implements IBMWatsonAuthenticatorConfig {
  private String apiKey;
  private String accessToken;
  private String url;

  public String authenticationType() {
    return IBMWatsonCredentialUtils.AUTHTYPE_IAM;
  }

  public void validate() {
    if (String.isBlank(this.apiKey) && String.isBlank(this.accessToken)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('You must provide either the apiKey or accessToken properties.');
    }

    if (IBMWatsonCredentialUtils.hasBadStartOrEndChar(this.apiKey)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException('The API key shouldn\'t start or end with curly brackets or '
          + 'quotes. Please remove any surrounding {, }, or " characters.');
    }
  }

  public String getApiKey() {
    return apiKey;
  }

  public String getAccessToken() {
    return accessToken;
  }

  public String getUrl() {
    return url;
  }

  public class Builder {
    private String apiKey;
    private String accessToken;
    private String url;

    public IBMWatsonIAMOptions build() {
      IBMWatsonIAMOptions config = new IBMWatsonIAMOptions(this);
      config.validate();
      return config;
    }

    public Builder apiKey(String apiKey) {
      this.apiKey = apiKey;
      return this;
    }

    public Builder accessToken(String accessToken) {
      this.accessToken = accessToken;
      return this;
    }

    public Builder url(String url) {
      this.url = url;
      return this;
    }
  }

  private IBMWatsonIAMOptions(Builder builder) {
    this.apiKey = builder.apiKey;
    this.accessToken = builder.accessToken;
    this.url = builder.url;
  }
}
