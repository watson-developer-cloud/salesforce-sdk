/**
 * ConsumptionPreferencesCategory.
 */
public class ConsumptionPreferencesCategory extends IBMWatsonGenericModel {
  private String consumptionPreferenceCategoryId;
  private String name;
  private List<ConsumptionPreferences> consumptionPreferences;
  /**
   * Gets the consumptionPreferenceCategoryId.
   *
   * The unique identifier of the consumption preferences category to which the results pertain. IDs have the form `consumption_preferences_{category}`.
   *
   * @return the consumptionPreferenceCategoryId
   */
  public String getConsumptionPreferenceCategoryId() {
    return consumptionPreferenceCategoryId;
  }
  /**
   * Gets the name.
   *
   * The user-visible name of the consumption preferences category.
   *
   * @return the name
   */
  public String getName() {
    return name;
  }
  /**
   * Gets the consumptionPreferences.
   *
   * Detailed results inferred from the input text for the individual preferences of the category.
   *
   * @return the consumptionPreferences
   */
  public List<ConsumptionPreferences> getConsumptionPreferences() {
    return consumptionPreferences;
  }

  /**
   * Sets the consumptionPreferenceCategoryId.
   *
   * @param consumptionPreferenceCategoryId the new consumptionPreferenceCategoryId
   */
  public void setConsumptionPreferenceCategoryId(final String consumptionPreferenceCategoryId) {
    this.consumptionPreferenceCategoryId = consumptionPreferenceCategoryId;
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
   * Sets the consumptionPreferences.
   *
   * @param consumptionPreferences the new consumptionPreferences
   */
  public void setConsumptionPreferences(final List<ConsumptionPreferences> consumptionPreferences) {
    this.consumptionPreferences = consumptionPreferences;
  }
}
