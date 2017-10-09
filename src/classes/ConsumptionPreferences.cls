/**
 * ConsumptionPreferences.
 */
public class ConsumptionPreferences extends IBMWatsonGenericModel {
  private String consumptionPreferenceId;
  private String name;
  private Double score;
  /**
   * Gets the consumptionPreferenceId.
   *
   * The unique identifier of the consumption preference to which the results pertain. IDs have the form `consumption_preferences_{preference}`.
   *
   * @return the consumptionPreferenceId
   */
  public String getConsumptionPreferenceId() {
    return consumptionPreferenceId;
  }
  /**
   * Gets the name.
   *
   * The user-visible name of the consumption preference.
   *
   * @return the name
   */
  public String getName() {
    return name;
  }
  /**
   * Gets the score.
   *
   * The score for the consumption preference: `0.0` indicates unlikely, `0.5` indicates neutrality, and `1.0` indicates likely. The scores for some preferences are binary and do not allow a neutral value. The score is an indication of preference based on the results inferred from the input text, not a normalized percentile.
   *
   * @return the score
   */
  public Double getScore() {
    return score;
  }

  /**
   * Sets the consumptionPreferenceId.
   *
   * @param consumptionPreferenceId the new consumptionPreferenceId
   */
  public void setConsumptionPreferenceId(final String consumptionPreferenceId) {
    this.consumptionPreferenceId = consumptionPreferenceId;
  }

  /**
   * Sets the name.
   *
   * @param name the new name
   */
  public void setName(final String name) {
    this.name = name;
  }

  /**
   * Sets the score.
   *
   * @param score the new score
   */
  public void setScore(final Double score) {
    this.score = score;
  }
}
