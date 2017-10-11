/**
 * This class assists in validating arguments.<br>
 * If an argument value is deemed invalid, an IllegalArgumentException is thrown.
 */
public class IBMWatsonValidator {

  private IBMWatsonValidator() {
    // This is a utility class - no instantiation allowed.
  }

  /**
   * Validates that the argument condition is <code>true</code>; otherwise throwing an exception with the specified
   * message. This method is useful when validating according to an arbitrary boolean expression, such as validating a
   * primitive number or using your own custom validation expression.
   *
   *
   * @param expression the boolean expression to check
   * @param message the exception message if invalid
   * @throws IllegalArgumentException if expression is <code>false</code>
   */
  public static void isTrue(boolean expression, String message) {
    if (!expression) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(message);
    }
  }

  /**
   * Validates that the specified argument array is neither <code>null</code> nor a length of zero (no elements);
   * otherwise throwing an exception with the specified message.
   *
   * @param array the array to check
   * @param message the exception message if invalid
   * @throws IllegalArgumentException if the array is empty
   */
  public static void notEmpty(List<Object> a, String message) {
    if (a == null || a.isEmpty() ) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(message);
    }
  }

  /**
   * Validator that the specified argument string is neither <code>null</code> nor a length of zero (no characters);
   * otherwise throwing an exception with the specified message.
   *
   * @param string the string to check
   * @param message the exception message if invalid
   * @throws IllegalArgumentException if the string is empty
   */
  public static void notEmpty(String str, String message) {
    if ((str == null) || (str.length() == 0)) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(message);
    }
  }

  /**
   * Validates that the specified argument is not <code>null</code>; otherwise throwing an exception with the specified
   * message.
   *
   * @param object the object to check
   * @param message the exception message if invalid
   */
  public static void notNull(Object obj, String message) {
    if (obj == null) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(message);
    }
  }

  /**
   * Validates that the specified argument is <code>null</code>; otherwise throwing an exception with the specified
   * message.
   *
   * @param object the object to check
   * @param message the exception message if invalid
   */
  public static void isNull(Object obj, String message) {
    if (obj != null) {
      throw new IBMWatsonServiceExceptions.IllegalArgumentException(message);
    }
  }

}