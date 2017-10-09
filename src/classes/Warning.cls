/**
 * Warning.
 */
public class Warning extends IBMWatsonGenericModel {
  private String warningId;
  private String message;
  /**
   * Gets the warningId.
   *
   * The identifier of the warning message, one of `WORD_COUNT_MESSAGE`, `JSON_AS_TEXT`, `CONTENT_TRUNCATED`, or `PARTIAL_TEXT_USED`.
   *
   * @return the warningId
   */
  public String getWarningId() {
    return warningId;
  }
  /**
   * Gets the message.
   *
   * The message associated with the `warning_id`. For `WORD_COUNT_MESSAGE`, "There were {number} words in the input. We need a minimum of 600, preferably 1,200 or more, to compute statistically significant estimates."; for `JSON_AS_TEXT`, "Request input was processed as text/plain as indicated, however detected a JSON input. Did you mean application/json?"; for `CONTENT_TRUNCATED`, "For maximum accuracy while also optimizing processing time, only the first 250KB of input text (excluding markup) was analyzed. Accuracy levels off at approximately 3,000 words so this did not affect the accuracy of the profile."; and for `PARTIAL_TEXT_USED`, "The text provided to compute the profile was trimmed for performance reasons. This action does not affect the accuracy of the output, as not all of the input text was required." The `PARTIAL_TEXT_USED` warning applies only when Arabic input text exceeds a threshold at which additional words do not contribute to the accuracy of the profile.
   *
   * @return the message
   */
  public String getMessage() {
    return message;
  }

  /**
   * Sets the warningId.
   *
   * @param warningId the new warningId
   */
  public void setWarningId(final String warningId) {
    this.warningId = warningId;
  }

  /**
   * Sets the message.
   *
   * @param message the new message
   */
  public void setMessage(final String message) {
    this.message = message;
  }
}
