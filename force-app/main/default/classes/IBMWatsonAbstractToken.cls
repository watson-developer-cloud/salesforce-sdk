/**
 * This class defines a common base class for tokens returned by a token server.
 */
public abstract class IBMWatsonAbstractToken extends IBMWatsonResponseModel {
  public abstract boolean isTokenValid();
  public abstract String getAccessToken();
}
