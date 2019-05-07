public class IBMAssistantV2Models {
  /**
   * CaptureGroup.
   */
  public class CaptureGroup extends IBMWatsonGenericModel {
    private String group_serialized_name;
    private List<Long> location_serialized_name;
 
    /**
     * Gets the xgroup.
     *
     * A recognized capture group for the entity.
     *
     * @return the xgroup
     */
    @AuraEnabled
    public String getXgroup() {
      return group_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * Zero-based character offsets that indicate where the entity value begins and ends in the input text.
     *
     * @return the location
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
    }

    /**
     * Sets the xgroup.
     *
     * @param xgroup the new xgroup
     */
    public void setXgroup(final String xgroup) {
      this.group_serialized_name = xgroup;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final List<Long> location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CaptureGroup ret = (CaptureGroup) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The createSession options.
   */
  public class CreateSessionOptions extends IBMWatsonOptionsModel {
    private String assistantId;
 
    /**
     * Gets the assistantId.
     *
     * Unique identifier of the assistant. You can find the assistant ID of an assistant on the **Assistants** tab of
     * the Watson Assistant tool. For information about creating assistants, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant?topic=assistant-assistant-add#assistant-add-task).
     *
     * **Note:** Currently, the v2 API does not support creating assistants.
     *
     * @return the assistantId
     */
    public String assistantId() {
      return assistantId;
    }

    private CreateSessionOptions(CreateSessionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.assistantId, 'assistantId cannot be empty');
      assistantId = builder.assistantId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateSessionOptions builder
     */
    public CreateSessionOptionsBuilder newBuilder() {
      return new CreateSessionOptionsBuilder(this);
    }

  }

  /**
   * CreateSessionOptions Builder.
   */
  public class CreateSessionOptionsBuilder extends IBMWatsonOptionsModel {
    private String assistantId;

    private CreateSessionOptionsBuilder(CreateSessionOptions createSessionOptions) {
      assistantId = createSessionOptions.assistantId;
      this.requestHeaders.putAll(createSessionOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateSessionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param assistantId the assistantId
     */
    public CreateSessionOptionsBuilder(String assistantId) {
      this.assistantId = assistantId;
    }

    /**
     * Builds a CreateSessionOptions.
     *
     * @return the createSessionOptions
     */
    public CreateSessionOptions build() {
      return new CreateSessionOptions(this);
    }

    /**
     * Set the assistantId.
     *
     * @param assistantId the assistantId
     * @return the CreateSessionOptions builder
     */
    public CreateSessionOptionsBuilder assistantId(String assistantId) {
      this.assistantId = assistantId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateSessionOptions builder
     */
    public CreateSessionOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteSession options.
   */
  public class DeleteSessionOptions extends IBMWatsonOptionsModel {
    private String assistantId;
    private String sessionId;
 
    /**
     * Gets the assistantId.
     *
     * Unique identifier of the assistant. You can find the assistant ID of an assistant on the **Assistants** tab of
     * the Watson Assistant tool. For information about creating assistants, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant?topic=assistant-assistant-add#assistant-add-task).
     *
     * **Note:** Currently, the v2 API does not support creating assistants.
     *
     * @return the assistantId
     */
    public String assistantId() {
      return assistantId;
    }
 
    /**
     * Gets the sessionId.
     *
     * Unique identifier of the session.
     *
     * @return the sessionId
     */
    public String sessionId() {
      return sessionId;
    }

    private DeleteSessionOptions(DeleteSessionOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.assistantId, 'assistantId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.sessionId, 'sessionId cannot be empty');
      assistantId = builder.assistantId;
      sessionId = builder.sessionId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteSessionOptions builder
     */
    public DeleteSessionOptionsBuilder newBuilder() {
      return new DeleteSessionOptionsBuilder(this);
    }

  }

  /**
   * DeleteSessionOptions Builder.
   */
  public class DeleteSessionOptionsBuilder extends IBMWatsonOptionsModel {
    private String assistantId;
    private String sessionId;

    private DeleteSessionOptionsBuilder(DeleteSessionOptions deleteSessionOptions) {
      assistantId = deleteSessionOptions.assistantId;
      sessionId = deleteSessionOptions.sessionId;
      this.requestHeaders.putAll(deleteSessionOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteSessionOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param assistantId the assistantId
     * @param sessionId the sessionId
     */
    public DeleteSessionOptionsBuilder(String assistantId, String sessionId) {
      this.assistantId = assistantId;
      this.sessionId = sessionId;
    }

    /**
     * Builds a DeleteSessionOptions.
     *
     * @return the deleteSessionOptions
     */
    public DeleteSessionOptions build() {
      return new DeleteSessionOptions(this);
    }

    /**
     * Set the assistantId.
     *
     * @param assistantId the assistantId
     * @return the DeleteSessionOptions builder
     */
    public DeleteSessionOptionsBuilder assistantId(String assistantId) {
      this.assistantId = assistantId;
      return this;
    }

    /**
     * Set the sessionId.
     *
     * @param sessionId the sessionId
     * @return the DeleteSessionOptions builder
     */
    public DeleteSessionOptionsBuilder sessionId(String sessionId) {
      this.sessionId = sessionId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteSessionOptions builder
     */
    public DeleteSessionOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Dialog log message details.
   */
  public class DialogLogMessage extends IBMWatsonGenericModel {
    private String level_serialized_name;
    private String message_serialized_name;
 
    /**
     * Gets the level.
     *
     * The severity of the log message.
     *
     * @return the level
     */
    @AuraEnabled
    public String getLevel() {
      return level_serialized_name;
    }
 
    /**
     * Gets the message.
     *
     * The text of the log message.
     *
     * @return the message
     */
    @AuraEnabled
    public String getMessage() {
      return message_serialized_name;
    }

    /**
     * Sets the level.
     *
     * @param level the new level
     */
    public void setLevel(final String level) {
      this.level_serialized_name = level;
    }

    /**
     * Sets the message.
     *
     * @param message the new message
     */
    public void setMessage(final String message) {
      this.message_serialized_name = message;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogLogMessage ret = (DialogLogMessage) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * DialogNodeAction.
   */
  public class DialogNodeAction extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private String type_serialized_name;
    private IBMWatsonMapModel parameters_serialized_name;
    private String result_variable_serialized_name;
    private String credentials_serialized_name;
 
    /**
     * Gets the name.
     *
     * The name of the action.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the actionType.
     *
     * The type of action to invoke.
     *
     * @return the actionType
     */
    @AuraEnabled
    public String getActionType() {
      return type_serialized_name;
    }
 
    /**
     * Gets the parameters.
     *
     * A map of key/value pairs to be provided to the action.
     *
     * @return the parameters
     */
    @AuraEnabled
    public IBMWatsonMapModel getParameters() {
      return parameters_serialized_name;
    }
 
    /**
     * Gets the resultVariable.
     *
     * The location in the dialog context where the result of the action is stored.
     *
     * @return the resultVariable
     */
    @AuraEnabled
    public String getResultVariable() {
      return result_variable_serialized_name;
    }
 
    /**
     * Gets the credentials.
     *
     * The name of the context variable that the client application will use to pass in credentials for the action.
     *
     * @return the credentials
     */
    @AuraEnabled
    public String getCredentials() {
      return credentials_serialized_name;
    }

    /**
     * Sets the name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the actionType.
     *
     * @param actionType the new actionType
     */
    public void setActionType(final String actionType) {
      this.type_serialized_name = actionType;
    }

    /**
     * Sets the parameters.
     *
     * @param parameters the new parameters
     */
    public void setParameters(final IBMWatsonMapModel parameters) {
      this.parameters_serialized_name = parameters;
    }

    /**
     * Sets the resultVariable.
     *
     * @param resultVariable the new resultVariable
     */
    public void setResultVariable(final String resultVariable) {
      this.result_variable_serialized_name = resultVariable;
    }

    /**
     * Sets the credentials.
     *
     * @param credentials the new credentials
     */
    public void setCredentials(final String credentials) {
      this.credentials_serialized_name = credentials;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeAction ret = (DialogNodeAction) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for parameters
      IBMWatsonMapModel newParameters = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getParameters()), (Map<String, Object>) jsonMap.get('parameters_serialized_name'), IBMWatsonMapModel.class);
      ret.setParameters(newParameters);

      return ret;
    }
  }

  /**
   * DialogNodeOutputOptionsElement.
   */
  public class DialogNodeOutputOptionsElement extends IBMWatsonGenericModel {
    private String label_serialized_name;
    private DialogNodeOutputOptionsElementValue value_serialized_name;
 
    /**
     * Gets the label.
     *
     * The user-facing label for the option.
     *
     * @return the label
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
    }
 
    /**
     * Gets the value.
     *
     * An object defining the message input to be sent to the assistant if the user selects the corresponding option.
     *
     * @return the value
     */
    @AuraEnabled
    public DialogNodeOutputOptionsElementValue getValue() {
      return value_serialized_name;
    }

    /**
     * Sets the label.
     *
     * @param label the new label
     */
    public void setLabel(final String label) {
      this.label_serialized_name = label;
    }

    /**
     * Sets the value.
     *
     * @param value the new value
     */
    public void setValue(final DialogNodeOutputOptionsElementValue value) {
      this.value_serialized_name = value;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeOutputOptionsElement ret = (DialogNodeOutputOptionsElement) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for value
      DialogNodeOutputOptionsElementValue newValue = (DialogNodeOutputOptionsElementValue) new DialogNodeOutputOptionsElementValue().deserialize(JSON.serialize(ret.getValue()), (Map<String, Object>) jsonMap.get('value_serialized_name'), DialogNodeOutputOptionsElementValue.class);
      ret.setValue(newValue);

      return ret;
    }
  }

  /**
   * An object defining the message input to be sent to the assistant if the user selects the corresponding option.
   */
  public class DialogNodeOutputOptionsElementValue extends IBMWatsonGenericModel {
    private MessageInput input_serialized_name;
 
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    @AuraEnabled
    public MessageInput getInput() {
      return input_serialized_name;
    }

    /**
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final MessageInput input) {
      this.input_serialized_name = input;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeOutputOptionsElementValue ret = (DialogNodeOutputOptionsElementValue) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for input
      MessageInput newInput = (MessageInput) new MessageInput().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), MessageInput.class);
      ret.setInput(newInput);

      return ret;
    }
  }

  /**
   * DialogNodesVisited.
   */
  public class DialogNodesVisited extends IBMWatsonGenericModel {
    private String dialog_node_serialized_name;
    private String title_serialized_name;
    private String conditions_serialized_name;
 
    /**
     * Gets the dialogNode.
     *
     * A dialog node that was triggered during processing of the input message.
     *
     * @return the dialogNode
     */
    @AuraEnabled
    public String getDialogNode() {
      return dialog_node_serialized_name;
    }
 
    /**
     * Gets the title.
     *
     * The title of the dialog node.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the conditions.
     *
     * The conditions that trigger the dialog node.
     *
     * @return the conditions
     */
    @AuraEnabled
    public String getConditions() {
      return conditions_serialized_name;
    }

    /**
     * Sets the dialogNode.
     *
     * @param dialogNode the new dialogNode
     */
    public void setDialogNode(final String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
    }

    /**
     * Sets the title.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title_serialized_name = title;
    }

    /**
     * Sets the conditions.
     *
     * @param conditions the new conditions
     */
    public void setConditions(final String conditions) {
      this.conditions_serialized_name = conditions;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodesVisited ret = (DialogNodesVisited) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * DialogRuntimeResponseGeneric.
   */
  public class DialogRuntimeResponseGeneric extends IBMWatsonGenericModel {
    private String response_type_serialized_name;
    private String text_serialized_name;
    private Long time_serialized_name;
    private Boolean typing_serialized_name;
    private String source_serialized_name;
    private String title_serialized_name;
    private String description_serialized_name;
    private String preference_serialized_name;
    private List<DialogNodeOutputOptionsElement> options_serialized_name;
    private String message_to_human_agent_serialized_name;
    private String topic_serialized_name;
    private List<DialogSuggestion> suggestions_serialized_name;
 
    /**
     * Gets the responseType.
     *
     * The type of response returned by the dialog node. The specified response type must be supported by the client
     * application or channel.
     *
     * **Note:** The **suggestion** response type is part of the disambiguation feature, which is only available for
     * Premium users.
     *
     * @return the responseType
     */
    @AuraEnabled
    public String getResponseType() {
      return response_type_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text of the response.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the xtime.
     *
     * How long to pause, in milliseconds.
     *
     * @return the xtime
     */
    @AuraEnabled
    public Long getXtime() {
      return time_serialized_name;
    }
 
    /**
     * Gets the typing.
     *
     * Whether to send a "user is typing" event during the pause.
     *
     * @return the typing
     */
    @AuraEnabled
    public Boolean getTyping() {
      return typing_serialized_name;
    }
 
    /**
     * Gets the source.
     *
     * The URL of the image.
     *
     * @return the source
     */
    @AuraEnabled
    public String getSource() {
      return source_serialized_name;
    }
 
    /**
     * Gets the title.
     *
     * The title or introductory text to show before the response.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description to show with the the response.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the preference.
     *
     * The preferred type of control to display.
     *
     * @return the preference
     */
    @AuraEnabled
    public String getPreference() {
      return preference_serialized_name;
    }
 
    /**
     * Gets the options.
     *
     * An array of objects describing the options from which the user can choose.
     *
     * @return the options
     */
    @AuraEnabled
    public List<DialogNodeOutputOptionsElement> getOptions() {
      return options_serialized_name;
    }
 
    /**
     * Gets the messageToHumanAgent.
     *
     * A message to be sent to the human agent who will be taking over the conversation.
     *
     * @return the messageToHumanAgent
     */
    @AuraEnabled
    public String getMessageToHumanAgent() {
      return message_to_human_agent_serialized_name;
    }
 
    /**
     * Gets the topic.
     *
     * A label identifying the topic of the conversation, derived from the **user_label** property of the relevant node.
     *
     * @return the topic
     */
    @AuraEnabled
    public String getTopic() {
      return topic_serialized_name;
    }
 
    /**
     * Gets the suggestions.
     *
     * An array of objects describing the possible matching dialog nodes from which the user can choose.
     *
     * **Note:** The **suggestions** property is part of the disambiguation feature, which is only available for Premium
     * users.
     *
     * @return the suggestions
     */
    @AuraEnabled
    public List<DialogSuggestion> getSuggestions() {
      return suggestions_serialized_name;
    }

    /**
     * Sets the responseType.
     *
     * @param responseType the new responseType
     */
    public void setResponseType(final String responseType) {
      this.response_type_serialized_name = responseType;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    /**
     * Sets the xtime.
     *
     * @param xtime the new xtime
     */
    public void setXtime(final long xtime) {
      this.time_serialized_name = xtime;
    }

    /**
     * Sets the typing.
     *
     * @param typing the new typing
     */
    public void setTyping(final Boolean typing) {
      this.typing_serialized_name = typing;
    }

    /**
     * Sets the source.
     *
     * @param source the new source
     */
    public void setSource(final String source) {
      this.source_serialized_name = source;
    }

    /**
     * Sets the title.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title_serialized_name = title;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the preference.
     *
     * @param preference the new preference
     */
    public void setPreference(final String preference) {
      this.preference_serialized_name = preference;
    }

    /**
     * Sets the options.
     *
     * @param options the new options
     */
    public void setOptions(final List<DialogNodeOutputOptionsElement> options) {
      this.options_serialized_name = options;
    }

    /**
     * Sets the messageToHumanAgent.
     *
     * @param messageToHumanAgent the new messageToHumanAgent
     */
    public void setMessageToHumanAgent(final String messageToHumanAgent) {
      this.message_to_human_agent_serialized_name = messageToHumanAgent;
    }

    /**
     * Sets the suggestions.
     *
     * @param suggestions the new suggestions
     */
    public void setSuggestions(final List<DialogSuggestion> suggestions) {
      this.suggestions_serialized_name = suggestions;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogRuntimeResponseGeneric ret = (DialogRuntimeResponseGeneric) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for options
      List<DialogNodeOutputOptionsElement> newOptions = new List<DialogNodeOutputOptionsElement>();
      List<DialogNodeOutputOptionsElement> deserializedOptions = ret.getOptions();
      if (deserializedOptions != null) {
        for (Integer i = 0; i < deserializedOptions.size(); i++) {
          DialogNodeOutputOptionsElement currentItem = ret.getOptions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('options_serialized_name');
          DialogNodeOutputOptionsElement newItem = (DialogNodeOutputOptionsElement) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNodeOutputOptionsElement.class);
          newOptions.add(newItem);
        }
        ret.options_serialized_name = newOptions;
      }

      // calling custom deserializer for suggestions
      List<DialogSuggestion> newSuggestions = new List<DialogSuggestion>();
      List<DialogSuggestion> deserializedSuggestions = ret.getSuggestions();
      if (deserializedSuggestions != null) {
        for (Integer i = 0; i < deserializedSuggestions.size(); i++) {
          DialogSuggestion currentItem = ret.getSuggestions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('suggestions_serialized_name');
          DialogSuggestion newItem = (DialogSuggestion) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogSuggestion.class);
          newSuggestions.add(newItem);
        }
        ret.suggestions_serialized_name = newSuggestions;
      }

      return ret;
    }
  }

  /**
   * DialogSuggestion.
   */
  public class DialogSuggestion extends IBMWatsonGenericModel {
    private String label_serialized_name;
    private DialogSuggestionValue value_serialized_name;
    private IBMWatsonMapModel output_serialized_name;
 
    /**
     * Gets the label.
     *
     * The user-facing label for the disambiguation option. This label is taken from the **user_label** property of the
     * corresponding dialog node.
     *
     * @return the label
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
    }
 
    /**
     * Gets the value.
     *
     * An object defining the message input to be sent to the assistant if the user selects the corresponding
     * disambiguation option.
     *
     * @return the value
     */
    @AuraEnabled
    public DialogSuggestionValue getValue() {
      return value_serialized_name;
    }
 
    /**
     * Gets the output.
     *
     * The dialog output that will be returned from the Watson Assistant service if the user selects the corresponding
     * option.
     *
     * @return the output
     */
    @AuraEnabled
    public IBMWatsonMapModel getOutput() {
      return output_serialized_name;
    }

    /**
     * Sets the label.
     *
     * @param label the new label
     */
    public void setLabel(final String label) {
      this.label_serialized_name = label;
    }

    /**
     * Sets the value.
     *
     * @param value the new value
     */
    public void setValue(final DialogSuggestionValue value) {
      this.value_serialized_name = value;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final IBMWatsonMapModel output) {
      this.output_serialized_name = output;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogSuggestion ret = (DialogSuggestion) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for value
      DialogSuggestionValue newValue = (DialogSuggestionValue) new DialogSuggestionValue().deserialize(JSON.serialize(ret.getValue()), (Map<String, Object>) jsonMap.get('value_serialized_name'), DialogSuggestionValue.class);
      ret.setValue(newValue);

      // calling custom deserializer for output
      IBMWatsonMapModel newOutput = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), IBMWatsonMapModel.class);
      ret.setOutput(newOutput);

      return ret;
    }
  }

  /**
   * An object defining the message input to be sent to the assistant if the user selects the corresponding
   * disambiguation option.
   */
  public class DialogSuggestionValue extends IBMWatsonGenericModel {
    private MessageInput input_serialized_name;
 
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    @AuraEnabled
    public MessageInput getInput() {
      return input_serialized_name;
    }

    /**
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final MessageInput input) {
      this.input_serialized_name = input;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogSuggestionValue ret = (DialogSuggestionValue) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for input
      MessageInput newInput = (MessageInput) new MessageInput().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), MessageInput.class);
      ret.setInput(newInput);

      return ret;
    }
  }

  /**
   * MessageContext.
   */
  public class MessageContext extends IBMWatsonGenericModel {
    private MessageContextGlobal global_serialized_name;
    private MessageContextSkills skills_serialized_name;
 
    /**
     * Gets the xglobal.
     *
     * Information that is shared by all skills used by the Assistant.
     *
     * @return the xglobal
     */
    @AuraEnabled
    public MessageContextGlobal getXglobal() {
      return global_serialized_name;
    }
 
    /**
     * Gets the skills.
     *
     * Information specific to particular skills used by the Assistant.
     *
     * **Note:** Currently, only a single property named `main skill` is supported. This object contains variables that
     * apply to the dialog skill used by the assistant.
     *
     * @return the skills
     */
    @AuraEnabled
    public MessageContextSkills getSkills() {
      return skills_serialized_name;
    }

    /**
     * Sets the xglobal.
     *
     * @param xglobal the new xglobal
     */
    public void setXglobal(final MessageContextGlobal xglobal) {
      this.global_serialized_name = xglobal;
    }

    /**
     * Sets the skills.
     *
     * @param skills the new skills
     */
    public void setSkills(final MessageContextSkills skills) {
      this.skills_serialized_name = skills;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageContext ret = (MessageContext) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for xglobal
      MessageContextGlobal newXglobal = (MessageContextGlobal) new MessageContextGlobal().deserialize(JSON.serialize(ret.getXglobal()), (Map<String, Object>) jsonMap.get('global_serialized_name'), MessageContextGlobal.class);
      ret.setXglobal(newXglobal);

      // calling custom deserializer for skills
      MessageContextSkills newSkills = (MessageContextSkills) new MessageContextSkills().deserialize(JSON.serialize(ret.getSkills()), (Map<String, Object>) jsonMap.get('skills_serialized_name'), MessageContextSkills.class);
      ret.setSkills(newSkills);

      return ret;
    }
  }

  /**
   * Information that is shared by all skills used by the Assistant.
   */
  public class MessageContextGlobal extends IBMWatsonGenericModel {
    private MessageContextGlobalSystem system_serialized_name;
 
    /**
     * Gets the xsystem.
     *
     * Built-in system properties that apply to all skills used by the assistant.
     *
     * @return the xsystem
     */
    @AuraEnabled
    public MessageContextGlobalSystem getXsystem() {
      return system_serialized_name;
    }

    /**
     * Sets the xsystem.
     *
     * @param xsystem the new xsystem
     */
    public void setXsystem(final MessageContextGlobalSystem xsystem) {
      this.system_serialized_name = xsystem;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageContextGlobal ret = (MessageContextGlobal) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for xsystem
      MessageContextGlobalSystem newXsystem = (MessageContextGlobalSystem) new MessageContextGlobalSystem().deserialize(JSON.serialize(ret.getXsystem()), (Map<String, Object>) jsonMap.get('system_serialized_name'), MessageContextGlobalSystem.class);
      ret.setXsystem(newXsystem);

      return ret;
    }
  }

  /**
   * Built-in system properties that apply to all skills used by the assistant.
   */
  public class MessageContextGlobalSystem extends IBMWatsonGenericModel {
    private String timezone_serialized_name;
    private String user_id_serialized_name;
    private Long turn_count_serialized_name;
 
    /**
     * Gets the timezone.
     *
     * The user time zone. The assistant uses the time zone to correctly resolve relative time references.
     *
     * @return the timezone
     */
    @AuraEnabled
    public String getTimezone() {
      return timezone_serialized_name;
    }
 
    /**
     * Gets the userId.
     *
     * A string value that identifies the user who is interacting with the assistant. The client must provide a unique
     * identifier for each individual end user who accesses the application. For Plus and Premium plans, this user ID is
     * used to identify unique users for billing purposes. This string cannot contain carriage return, newline, or tab
     * characters.
     *
     * @return the userId
     */
    @AuraEnabled
    public String getUserId() {
      return user_id_serialized_name;
    }
 
    /**
     * Gets the turnCount.
     *
     * A counter that is automatically incremented with each turn of the conversation. A value of 1 indicates that this
     * is the the first turn of a new conversation, which can affect the behavior of some skills (for example,
     * triggering the start node of a dialog).
     *
     * @return the turnCount
     */
    @AuraEnabled
    public Long getTurnCount() {
      return turn_count_serialized_name;
    }

    /**
     * Sets the timezone.
     *
     * @param timezone the new timezone
     */
    public void setTimezone(final String timezone) {
      this.timezone_serialized_name = timezone;
    }

    /**
     * Sets the userId.
     *
     * @param userId the new userId
     */
    public void setUserId(final String userId) {
      this.user_id_serialized_name = userId;
    }

    /**
     * Sets the turnCount.
     *
     * @param turnCount the new turnCount
     */
    public void setTurnCount(final long turnCount) {
      this.turn_count_serialized_name = turnCount;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageContextGlobalSystem ret = (MessageContextGlobalSystem) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Information specific to particular skills used by the Assistant.

**Note:** Currently, only a single property named `main skill` is supported. This object contains variables that apply to the dialog skill used by the assistant.
   */
  public class MessageContextSkills extends IBMWatsonDynamicModel {
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the dynamic properties attached to MessageContextSkills.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageContextSkills ret = (MessageContextSkills) super.deserialize(jsonString, jsonMap, classType);

      Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

      for (String key : jsonMap.keySet()) {
        if (!baseProps.contains(key)) {
          ret.put(key, jsonMap.get(key));
        }
      }

      return ret;
    }
  }

  /**
   * An input object that includes the input text.
   */
  public class MessageInput extends IBMWatsonGenericModel {
    private String message_type_serialized_name;
    private String text_serialized_name;
    private MessageInputOptions options_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private String suggestion_id_serialized_name;

    /**
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public MessageInput() { }
 
    /**
     * Gets the messageType.
     *
     * The type of user input. Currently, only text input is supported.
     *
     * @return the messageType
     */
    @AuraEnabled
    public String getMessageType() {
      return message_type_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text of the user input. This string cannot contain carriage return, newline, or tab characters, and it must
     * be no longer than 2048 characters.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the options.
     *
     * Optional properties that control how the assistant responds.
     *
     * @return the options
     */
    @AuraEnabled
    public MessageInputOptions getOptions() {
      return options_serialized_name;
    }
 
    /**
     * Gets the intents.
     *
     * Intents to use when evaluating the user input. Include intents from the previous response to continue using those
     * intents rather than trying to recognize intents in the new input.
     *
     * @return the intents
     */
    @AuraEnabled
    public List<RuntimeIntent> getIntents() {
      return intents_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * Entities to use when evaluating the message. Include entities from the previous response to continue using those
     * entities rather than detecting entities in the new input.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<RuntimeEntity> getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the suggestionId.
     *
     * For internal use only.
     *
     * @return the suggestionId
     */
    @AuraEnabled
    public String getSuggestionId() {
      return suggestion_id_serialized_name;
    }
  
    private MessageInput(MessageInputBuilder builder) {
      message_type_serialized_name = builder.messageType;
      text_serialized_name = builder.text;
      options_serialized_name = builder.options;
      intents_serialized_name = builder.intents;
      entities_serialized_name = builder.entities;
      suggestion_id_serialized_name = builder.suggestionId;
    }

    /**
     * New builder.
     *
     * @return a MessageInput builder
     */
    public MessageInputBuilder newBuilder() {
      return new MessageInputBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageInput ret = (MessageInput) super.deserialize(jsonString, jsonMap, classType);
      MessageInputBuilder retBuilder = ret.newBuilder();

      // calling custom deserializer for options
      MessageInputOptions newOptions = (MessageInputOptions) new MessageInputOptions().deserialize(JSON.serialize(ret.getOptions()), (Map<String, Object>) jsonMap.get('options_serialized_name'), MessageInputOptions.class);
      retBuilder.options(newOptions);

      // calling custom deserializer for intents
      List<RuntimeIntent> newIntents = new List<RuntimeIntent>();
      List<RuntimeIntent> deserializedIntents = ret.getIntents();
      if (deserializedIntents != null) {
        for (Integer i = 0; i < deserializedIntents.size(); i++) {
          RuntimeIntent currentItem = ret.getIntents().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('intents_serialized_name');
          RuntimeIntent newItem = (RuntimeIntent) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RuntimeIntent.class);
          newIntents.add(newItem);
        }
        retBuilder.intents(newIntents);
      }

      // calling custom deserializer for entities
      List<RuntimeEntity> newEntities = new List<RuntimeEntity>();
      List<RuntimeEntity> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          RuntimeEntity currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          RuntimeEntity newItem = (RuntimeEntity) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RuntimeEntity.class);
          newEntities.add(newItem);
        }
        retBuilder.entities(newEntities);
      }

      return retBuilder.build();
    }
  }

  /**
   * MessageInput Builder.
   */
  public class MessageInputBuilder {
    private String messageType;
    private String text;
    private MessageInputOptions options;
    private List<RuntimeIntent> intents;
    private List<RuntimeEntity> entities;
    private String suggestionId;

    private MessageInputBuilder(MessageInput messageInput) {
      this.messageType = messageInput.message_type_serialized_name;
      this.text = messageInput.text_serialized_name;
      this.options = messageInput.options_serialized_name;
      this.intents = messageInput.intents_serialized_name;
      this.entities = messageInput.entities_serialized_name;
      this.suggestionId = messageInput.suggestion_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public MessageInputBuilder() {
    }

    /**
     * Builds a MessageInput.
     *
     * @return the messageInput
     */
    public MessageInput build() {
      return new MessageInput(this);
    }

    /**
     * Adds an intents to intents.
     *
     * @param intents the new intents
     * @return the MessageInput builder
     */
    public MessageInputBuilder addIntents(RuntimeIntent intents) {
      IBMWatsonValidator.notNull(intents, 'intents cannot be null');
      if (this.intents == null) {
        this.intents = new List<RuntimeIntent>();
      }
      this.intents.add(intents);
      return this;
    }

    /**
     * Adds an entities to entities.
     *
     * @param entities the new entities
     * @return the MessageInput builder
     */
    public MessageInputBuilder addEntities(RuntimeEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities == null) {
        this.entities = new List<RuntimeEntity>();
      }
      this.entities.add(entities);
      return this;
    }

    /**
     * Set the messageType.
     *
     * @param messageType the messageType
     * @return the MessageInput builder
     */
    public MessageInputBuilder messageType(String messageType) {
      this.messageType = messageType;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the MessageInput builder
     */
    public MessageInputBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the options.
     *
     * @param options the options
     * @return the MessageInput builder
     */
    public MessageInputBuilder options(MessageInputOptions options) {
      this.options = options;
      return this;
    }

    /**
     * Set the intents.
     * Existing intents will be replaced.
     *
     * @param intents the intents
     * @return the MessageInput builder
     */
    public MessageInputBuilder intents(List<RuntimeIntent> intents) {
      this.intents = intents;
      return this;
    }

    /**
     * Set the entities.
     * Existing entities will be replaced.
     *
     * @param entities the entities
     * @return the MessageInput builder
     */
    public MessageInputBuilder entities(List<RuntimeEntity> entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the suggestionId.
     *
     * @param suggestionId the suggestionId
     * @return the MessageInput builder
     */
    public MessageInputBuilder suggestionId(String suggestionId) {
      this.suggestionId = suggestionId;
      return this;
    }
  }

  /**
   * Optional properties that control how the assistant responds.
   */
  public class MessageInputOptions extends IBMWatsonGenericModel {
    private Boolean debug_serialized_name;
    private Boolean restart_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Boolean return_context_serialized_name;
 
    /**
     * Gets the debug.
     *
     * Whether to return additional diagnostic information. Set to `true` to return additional information under the
     * `output.debug` key.
     *
     * @return the debug
     */
    @AuraEnabled
    public Boolean getDebug() {
      return debug_serialized_name;
    }
 
    /**
     * Gets the restart.
     *
     * Whether to restart dialog processing at the root of the dialog, regardless of any previously visited nodes.
     * **Note:** This does not affect `turn_count` or any other context variables.
     *
     * @return the restart
     */
    @AuraEnabled
    public Boolean getRestart() {
      return restart_serialized_name;
    }
 
    /**
     * Gets the alternateIntents.
     *
     * Whether to return more than one intent. Set to `true` to return all matching intents.
     *
     * @return the alternateIntents
     */
    @AuraEnabled
    public Boolean getAlternateIntents() {
      return alternate_intents_serialized_name;
    }
 
    /**
     * Gets the returnContext.
     *
     * Whether to return session context with the response. If you specify `true`, the response will include the
     * `context` property.
     *
     * @return the returnContext
     */
    @AuraEnabled
    public Boolean getReturnContext() {
      return return_context_serialized_name;
    }

    /**
     * Sets the debug.
     *
     * @param debug the new debug
     */
    public void setDebug(final Boolean debug) {
      this.debug_serialized_name = debug;
    }

    /**
     * Sets the restart.
     *
     * @param restart the new restart
     */
    public void setRestart(final Boolean restart) {
      this.restart_serialized_name = restart;
    }

    /**
     * Sets the alternateIntents.
     *
     * @param alternateIntents the new alternateIntents
     */
    public void setAlternateIntents(final Boolean alternateIntents) {
      this.alternate_intents_serialized_name = alternateIntents;
    }

    /**
     * Sets the returnContext.
     *
     * @param returnContext the new returnContext
     */
    public void setReturnContext(final Boolean returnContext) {
      this.return_context_serialized_name = returnContext;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageInputOptions ret = (MessageInputOptions) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The message options.
   */
  public class MessageOptions extends IBMWatsonOptionsModel {
    private String assistantId;
    private String sessionId;
    private MessageInput input;
    private MessageContext context;
 
    /**
     * Gets the assistantId.
     *
     * Unique identifier of the assistant. You can find the assistant ID of an assistant on the **Assistants** tab of
     * the Watson Assistant tool. For information about creating assistants, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant?topic=assistant-assistant-add#assistant-add-task).
     *
     * **Note:** Currently, the v2 API does not support creating assistants.
     *
     * @return the assistantId
     */
    public String assistantId() {
      return assistantId;
    }
 
    /**
     * Gets the sessionId.
     *
     * Unique identifier of the session.
     *
     * @return the sessionId
     */
    public String sessionId() {
      return sessionId;
    }
 
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    public MessageInput input() {
      return input;
    }
 
    /**
     * Gets the context.
     *
     * State information for the conversation. The context is stored by the assistant on a per-session basis. You can
     * use this property to set or modify context variables, which can also be accessed by dialog nodes.
     *
     * @return the context
     */
    public MessageContext context() {
      return context;
    }

    private MessageOptions(MessageOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.assistantId, 'assistantId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.sessionId, 'sessionId cannot be empty');
      assistantId = builder.assistantId;
      sessionId = builder.sessionId;
      input = builder.input;
      context = builder.context;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a MessageOptions builder
     */
    public MessageOptionsBuilder newBuilder() {
      return new MessageOptionsBuilder(this);
    }

  }

  /**
   * MessageOptions Builder.
   */
  public class MessageOptionsBuilder extends IBMWatsonOptionsModel {
    private String assistantId;
    private String sessionId;
    private MessageInput input;
    private MessageContext context;

    private MessageOptionsBuilder(MessageOptions messageOptions) {
      assistantId = messageOptions.assistantId;
      sessionId = messageOptions.sessionId;
      input = messageOptions.input;
      context = messageOptions.context;
      this.requestHeaders.putAll(messageOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public MessageOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param assistantId the assistantId
     * @param sessionId the sessionId
     */
    public MessageOptionsBuilder(String assistantId, String sessionId) {
      this.assistantId = assistantId;
      this.sessionId = sessionId;
    }

    /**
     * Builds a MessageOptions.
     *
     * @return the messageOptions
     */
    public MessageOptions build() {
      return new MessageOptions(this);
    }

    /**
     * Set the assistantId.
     *
     * @param assistantId the assistantId
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder assistantId(String assistantId) {
      this.assistantId = assistantId;
      return this;
    }

    /**
     * Set the sessionId.
     *
     * @param sessionId the sessionId
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder sessionId(String sessionId) {
      this.sessionId = sessionId;
      return this;
    }

    /**
     * Set the input.
     *
     * @param input the input
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder input(MessageInput input) {
      this.input = input;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder context(MessageContext context) {
      this.context = context;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Assistant output to be rendered or processed by the client.
   */
  public class MessageOutput extends IBMWatsonGenericModel {
    private List<DialogRuntimeResponseGeneric> generic_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private List<DialogNodeAction> actions_serialized_name;
    private MessageOutputDebug debug_serialized_name;
    private IBMWatsonMapModel user_defined_serialized_name;
 
    /**
     * Gets the generic.
     *
     * Output intended for any channel. It is the responsibility of the client application to implement the supported
     * response types.
     *
     * @return the generic
     */
    @AuraEnabled
    public List<DialogRuntimeResponseGeneric> getGeneric() {
      return generic_serialized_name;
    }
 
    /**
     * Gets the intents.
     *
     * An array of intents recognized in the user input, sorted in descending order of confidence.
     *
     * @return the intents
     */
    @AuraEnabled
    public List<RuntimeIntent> getIntents() {
      return intents_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * An array of entities identified in the user input.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<RuntimeEntity> getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the actions.
     *
     * An array of objects describing any actions requested by the dialog node.
     *
     * @return the actions
     */
    @AuraEnabled
    public List<DialogNodeAction> getActions() {
      return actions_serialized_name;
    }
 
    /**
     * Gets the debug.
     *
     * Additional detailed information about a message response and how it was generated.
     *
     * @return the debug
     */
    @AuraEnabled
    public MessageOutputDebug getDebug() {
      return debug_serialized_name;
    }
 
    /**
     * Gets the userDefined.
     *
     * An object containing any custom properties included in the response. This object includes any arbitrary
     * properties defined in the dialog JSON editor as part of the dialog node output.
     *
     * @return the userDefined
     */
    @AuraEnabled
    public IBMWatsonMapModel getUserDefined() {
      return user_defined_serialized_name;
    }

    /**
     * Sets the generic.
     *
     * @param generic the new generic
     */
    public void setGeneric(final List<DialogRuntimeResponseGeneric> generic) {
      this.generic_serialized_name = generic;
    }

    /**
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<RuntimeIntent> intents) {
      this.intents_serialized_name = intents;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<RuntimeEntity> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the actions.
     *
     * @param actions the new actions
     */
    public void setActions(final List<DialogNodeAction> actions) {
      this.actions_serialized_name = actions;
    }

    /**
     * Sets the debug.
     *
     * @param debug the new debug
     */
    public void setDebug(final MessageOutputDebug debug) {
      this.debug_serialized_name = debug;
    }

    /**
     * Sets the userDefined.
     *
     * @param userDefined the new userDefined
     */
    public void setUserDefined(final IBMWatsonMapModel userDefined) {
      this.user_defined_serialized_name = userDefined;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageOutput ret = (MessageOutput) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for generic
      List<DialogRuntimeResponseGeneric> newGeneric = new List<DialogRuntimeResponseGeneric>();
      List<DialogRuntimeResponseGeneric> deserializedGeneric = ret.getGeneric();
      if (deserializedGeneric != null) {
        for (Integer i = 0; i < deserializedGeneric.size(); i++) {
          DialogRuntimeResponseGeneric currentItem = ret.getGeneric().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('generic_serialized_name');
          DialogRuntimeResponseGeneric newItem = (DialogRuntimeResponseGeneric) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogRuntimeResponseGeneric.class);
          newGeneric.add(newItem);
        }
        ret.generic_serialized_name = newGeneric;
      }

      // calling custom deserializer for intents
      List<RuntimeIntent> newIntents = new List<RuntimeIntent>();
      List<RuntimeIntent> deserializedIntents = ret.getIntents();
      if (deserializedIntents != null) {
        for (Integer i = 0; i < deserializedIntents.size(); i++) {
          RuntimeIntent currentItem = ret.getIntents().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('intents_serialized_name');
          RuntimeIntent newItem = (RuntimeIntent) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RuntimeIntent.class);
          newIntents.add(newItem);
        }
        ret.intents_serialized_name = newIntents;
      }

      // calling custom deserializer for entities
      List<RuntimeEntity> newEntities = new List<RuntimeEntity>();
      List<RuntimeEntity> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          RuntimeEntity currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          RuntimeEntity newItem = (RuntimeEntity) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RuntimeEntity.class);
          newEntities.add(newItem);
        }
        ret.entities_serialized_name = newEntities;
      }

      // calling custom deserializer for actions
      List<DialogNodeAction> newActions = new List<DialogNodeAction>();
      List<DialogNodeAction> deserializedActions = ret.getActions();
      if (deserializedActions != null) {
        for (Integer i = 0; i < deserializedActions.size(); i++) {
          DialogNodeAction currentItem = ret.getActions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('actions_serialized_name');
          DialogNodeAction newItem = (DialogNodeAction) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNodeAction.class);
          newActions.add(newItem);
        }
        ret.actions_serialized_name = newActions;
      }

      // calling custom deserializer for debug
      MessageOutputDebug newDebug = (MessageOutputDebug) new MessageOutputDebug().deserialize(JSON.serialize(ret.getDebug()), (Map<String, Object>) jsonMap.get('debug_serialized_name'), MessageOutputDebug.class);
      ret.setDebug(newDebug);

      // calling custom deserializer for userDefined
      IBMWatsonMapModel newUserDefined = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getUserDefined()), (Map<String, Object>) jsonMap.get('user_defined_serialized_name'), IBMWatsonMapModel.class);
      ret.setUserDefined(newUserDefined);

      return ret;
    }
  }

  /**
   * Additional detailed information about a message response and how it was generated.
   */
  public class MessageOutputDebug extends IBMWatsonGenericModel {
    private List<DialogNodesVisited> nodes_visited_serialized_name;
    private List<DialogLogMessage> log_messages_serialized_name;
    private Boolean branch_exited_serialized_name;
    private String branch_exited_reason_serialized_name;
 
    /**
     * Gets the nodesVisited.
     *
     * An array of objects containing detailed diagnostic information about the nodes that were triggered during
     * processing of the input message.
     *
     * @return the nodesVisited
     */
    @AuraEnabled
    public List<DialogNodesVisited> getNodesVisited() {
      return nodes_visited_serialized_name;
    }
 
    /**
     * Gets the logMessages.
     *
     * An array of up to 50 messages logged with the request.
     *
     * @return the logMessages
     */
    @AuraEnabled
    public List<DialogLogMessage> getLogMessages() {
      return log_messages_serialized_name;
    }
 
    /**
     * Gets the branchExited.
     *
     * Assistant sets this to true when this message response concludes or interrupts a dialog.
     *
     * @return the branchExited
     */
    @AuraEnabled
    public Boolean getBranchExited() {
      return branch_exited_serialized_name;
    }
 
    /**
     * Gets the branchExitedReason.
     *
     * When `branch_exited` is set to `true` by the Assistant, the `branch_exited_reason` specifies whether the dialog
     * completed by itself or got interrupted.
     *
     * @return the branchExitedReason
     */
    @AuraEnabled
    public String getBranchExitedReason() {
      return branch_exited_reason_serialized_name;
    }

    /**
     * Sets the nodesVisited.
     *
     * @param nodesVisited the new nodesVisited
     */
    public void setNodesVisited(final List<DialogNodesVisited> nodesVisited) {
      this.nodes_visited_serialized_name = nodesVisited;
    }

    /**
     * Sets the logMessages.
     *
     * @param logMessages the new logMessages
     */
    public void setLogMessages(final List<DialogLogMessage> logMessages) {
      this.log_messages_serialized_name = logMessages;
    }

    /**
     * Sets the branchExited.
     *
     * @param branchExited the new branchExited
     */
    public void setBranchExited(final Boolean branchExited) {
      this.branch_exited_serialized_name = branchExited;
    }

    /**
     * Sets the branchExitedReason.
     *
     * @param branchExitedReason the new branchExitedReason
     */
    public void setBranchExitedReason(final String branchExitedReason) {
      this.branch_exited_reason_serialized_name = branchExitedReason;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageOutputDebug ret = (MessageOutputDebug) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for nodesVisited
      List<DialogNodesVisited> newNodesVisited = new List<DialogNodesVisited>();
      List<DialogNodesVisited> deserializedNodesVisited = ret.getNodesVisited();
      if (deserializedNodesVisited != null) {
        for (Integer i = 0; i < deserializedNodesVisited.size(); i++) {
          DialogNodesVisited currentItem = ret.getNodesVisited().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('nodes_visited_serialized_name');
          DialogNodesVisited newItem = (DialogNodesVisited) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNodesVisited.class);
          newNodesVisited.add(newItem);
        }
        ret.nodes_visited_serialized_name = newNodesVisited;
      }

      // calling custom deserializer for logMessages
      List<DialogLogMessage> newLogMessages = new List<DialogLogMessage>();
      List<DialogLogMessage> deserializedLogMessages = ret.getLogMessages();
      if (deserializedLogMessages != null) {
        for (Integer i = 0; i < deserializedLogMessages.size(); i++) {
          DialogLogMessage currentItem = ret.getLogMessages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('log_messages_serialized_name');
          DialogLogMessage newItem = (DialogLogMessage) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogLogMessage.class);
          newLogMessages.add(newItem);
        }
        ret.log_messages_serialized_name = newLogMessages;
      }

      return ret;
    }
  }

  /**
   * A response from the Watson Assistant service.
   */
  public class MessageResponse extends IBMWatsonResponseModel {
    private MessageOutput output_serialized_name;
    private MessageContext context_serialized_name;
 
    /**
     * Gets the output.
     *
     * Assistant output to be rendered or processed by the client.
     *
     * @return the output
     */
    @AuraEnabled
    public MessageOutput getOutput() {
      return output_serialized_name;
    }
 
    /**
     * Gets the context.
     *
     * State information for the conversation. The context is stored by the assistant on a per-session basis. You can
     * use this property to access context variables.
     *
     * **Note:** The context is included in message responses only if **return_context**=`true` in the message request.
     *
     * @return the context
     */
    @AuraEnabled
    public MessageContext getContext() {
      return context_serialized_name;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final MessageOutput output) {
      this.output_serialized_name = output;
    }

    /**
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final MessageContext context) {
      this.context_serialized_name = context;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageResponse ret = (MessageResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for output
      MessageOutput newOutput = (MessageOutput) new MessageOutput().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), MessageOutput.class);
      ret.setOutput(newOutput);

      // calling custom deserializer for context
      MessageContext newContext = (MessageContext) new MessageContext().deserialize(JSON.serialize(ret.getContext()), (Map<String, Object>) jsonMap.get('context_serialized_name'), MessageContext.class);
      ret.setContext(newContext);

      return ret;
    }
  }

  /**
   * A term from the request that was identified as an entity.
   */
  public class RuntimeEntity extends IBMWatsonGenericModel {
    private String entity_serialized_name;
    private List<Long> location_serialized_name;
    private String value_serialized_name;
    private Double confidence_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CaptureGroup> groups_serialized_name;
 
    /**
     * Gets the entity.
     *
     * An entity detected in the input.
     *
     * @return the entity
     */
    @AuraEnabled
    public String getEntity() {
      return entity_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * An array of zero-based character offsets that indicate where the detected entity values begin and end in the
     * input text.
     *
     * @return the location
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the value.
     *
     * The term in the input text that was recognized as an entity value.
     *
     * @return the value
     */
    @AuraEnabled
    public String getValue() {
      return value_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * A decimal percentage that represents Watson's confidence in the entity.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata for the entity.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the groups.
     *
     * The recognized capture groups for the entity, as defined by the entity pattern.
     *
     * @return the groups
     */
    @AuraEnabled
    public List<CaptureGroup> getGroups() {
      return groups_serialized_name;
    }

    /**
     * Sets the entity.
     *
     * @param entity the new entity
     */
    public void setEntity(final String entity) {
      this.entity_serialized_name = entity;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final List<Long> location) {
      this.location_serialized_name = location;
    }

    /**
     * Sets the value.
     *
     * @param value the new value
     */
    public void setValue(final String value) {
      this.value_serialized_name = value;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the groups.
     *
     * @param groups the new groups
     */
    public void setGroups(final List<CaptureGroup> groups) {
      this.groups_serialized_name = groups;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RuntimeEntity ret = (RuntimeEntity) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for groups
      List<CaptureGroup> newGroups = new List<CaptureGroup>();
      List<CaptureGroup> deserializedGroups = ret.getGroups();
      if (deserializedGroups != null) {
        for (Integer i = 0; i < deserializedGroups.size(); i++) {
          CaptureGroup currentItem = ret.getGroups().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('groups_serialized_name');
          CaptureGroup newItem = (CaptureGroup) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), CaptureGroup.class);
          newGroups.add(newItem);
        }
        ret.groups_serialized_name = newGroups;
      }

      return ret;
    }
  }

  /**
   * An intent identified in the user input.
   */
  public class RuntimeIntent extends IBMWatsonGenericModel {
    private String intent_serialized_name;
    private Double confidence_serialized_name;
 
    /**
     * Gets the intent.
     *
     * The name of the recognized intent.
     *
     * @return the intent
     */
    @AuraEnabled
    public String getIntent() {
      return intent_serialized_name;
    }
 
    /**
     * Gets the confidence.
     *
     * A decimal percentage that represents Watson's confidence in the intent.
     *
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    /**
     * Sets the intent.
     *
     * @param intent the new intent
     */
    public void setIntent(final String intent) {
      this.intent_serialized_name = intent;
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.confidence_serialized_name = confidence;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RuntimeIntent ret = (RuntimeIntent) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * SessionResponse.
   */
  public class SessionResponse extends IBMWatsonResponseModel {
    private String session_id_serialized_name;
 
    /**
     * Gets the sessionId.
     *
     * The session ID.
     *
     * @return the sessionId
     */
    @AuraEnabled
    public String getSessionId() {
      return session_id_serialized_name;
    }

    /**
     * Sets the sessionId.
     *
     * @param sessionId the new sessionId
     */
    public void setSessionId(final String sessionId) {
      this.session_id_serialized_name = sessionId;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SessionResponse ret = (SessionResponse) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

}
