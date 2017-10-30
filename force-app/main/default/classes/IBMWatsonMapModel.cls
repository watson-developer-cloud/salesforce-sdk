/**
 * Class used to represent model properties of type Map<String, Object>, since the base deserializer can't handle
 * deserializing that type.
 */
public class IBMWatsonMapModel extends IBMWatsonDynamicModel {

  public override Object deserialize(String jsonString, Map<String, Object> jsonMap) {
    if (jsonMap == null) {
      return null;
    }

    IBMWatsonMapModel ret;
    if (jsonString.equals('null')) {
      ret = new IBMWatsonMapModel();
    } else {
      ret = (IBMWatsonMapModel) JSON.deserialize(jsonString, IBMWatsonMapModel.class);
    }

    Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

    for (String key : jsonMap.keySet()) {
      if (!baseProps.contains(key)) {
        ret.put(key, jsonMap.get(key));
      }
    }

    return ret;
  }
}