/**
 * Class used to represent model properties of type Map<String, Object>, since the base deserializer can't handle
 * deserializing that type.
 */
public class IBMWatsonMapModel extends IBMWatsonDynamicModel {

  public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
    if (jsonMap == null) {
      return null;
    }

    IBMWatsonMapModel ret = (IBMWatsonMapModel) super.deserialize(jsonString, jsonMap, classType);

    Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

    for (String key : jsonMap.keySet()) {
      if (!baseProps.contains(key)) {
        ret.put(key, jsonMap.get(key));
      }
    }

    return ret;
  }
}