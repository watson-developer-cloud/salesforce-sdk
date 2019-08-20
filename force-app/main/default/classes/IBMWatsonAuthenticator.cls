public interface IBMWatsonAuthenticator {

  /**
   * Returns the authentication type associated with the IBMWatsonAuthenticator instance.
   *
   * @return a string representing the authentication type (e.g. "iam", "basic", "cp4d", etc.)
   */
  String authenticationType();

  /**
   * Perform the necessary authentication steps for the specified request.
   *
   * @param requestBuilder the IBMWatsonRequest.Builder instance to authenticate
   */
  void authenticate(IBMWatsonRequest.Builder requestBuilder);

  /**
   * Validates the current set of configuration information in the IBMWatsonAuthenticator.
   */
  void validate();
}
