public interface IBMWatsonAuthenticator {
  String authenticationType();
  void authenticate(IBMWatsonRequest.Builder requestBuilder);
}
