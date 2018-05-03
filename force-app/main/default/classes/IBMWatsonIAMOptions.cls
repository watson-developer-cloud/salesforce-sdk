/**
 * Options for authenticating using IAM.
 */
public class IBMWatsonIAMOptions {
  private String apiKey;
  private String accessToken;
  private String url;

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
      return new IBMWatsonIAMOptions(this);
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
