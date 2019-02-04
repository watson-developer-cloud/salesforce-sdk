public class IBMAssistantV1Models {
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
   * State information for the conversation. To maintain state, include the context from the previous response.
   */
  public class Context extends IBMWatsonDynamicModel {
    private String conversation_id_serialized_name;
    private SystemResponse system_serialized_name;
    private MessageContextMetadata metadata_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the conversationId.
     *
     * @return the conversationId
     */
    @AuraEnabled
    public String getConversationId() {
      return conversation_id_serialized_name;
    }

    /**
     * Gets the xsystem.
     *
     * @return the xsystem
     */
    @AuraEnabled
    public SystemResponse getXsystem() {
      return system_serialized_name;
    }

    /**
     * Gets the metadata.
     *
     * @return the metadata
     */
    @AuraEnabled
    public MessageContextMetadata getMetadata() {
      return metadata_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to Context.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    /**
     * Sets the conversationId.
     *
     * @param conversationId the new conversationId
     */
    public void setConversationId(final String conversationId) {
      this.conversation_id_serialized_name = conversationId;
    }

    /**
     * Sets the xsystem.
     *
     * @param xsystem the new xsystem
     */
    public void setXsystem(final SystemResponse xsystem) {
      this.system_serialized_name = xsystem;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final MessageContextMetadata metadata) {
      this.metadata_serialized_name = metadata;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Context ret = (Context) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for xsystem
      SystemResponse newXsystem = (SystemResponse) new SystemResponse().deserialize(JSON.serialize(ret.getXsystem()), (Map<String, Object>) jsonMap.get('system_serialized_name'), SystemResponse.class);
      ret.setXsystem(newXsystem);

      // calling custom deserializer for metadata
      MessageContextMetadata newMetadata = (MessageContextMetadata) new MessageContextMetadata().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), MessageContextMetadata.class);
      ret.setMetadata(newMetadata);

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
   * Counterexample.
   */
  public class Counterexample extends IBMWatsonResponseModel {
    private String text_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
 
    /**
     * Gets the text.
     *
     * The text of the counterexample.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the counterexample.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the counterexample.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Counterexample ret = (Counterexample) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * CounterexampleCollection.
   */
  public class CounterexampleCollection extends IBMWatsonResponseModel {
    private List<Counterexample> counterexamples_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the counterexamples.
     *
     * An array of objects describing the examples marked as irrelevant input.
     *
     * @return the counterexamples
     */
    @AuraEnabled
    public List<Counterexample> getCounterexamples() {
      return counterexamples_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the counterexamples.
     *
     * @param counterexamples the new counterexamples
     */
    public void setCounterexamples(final List<Counterexample> counterexamples) {
      this.counterexamples_serialized_name = counterexamples;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CounterexampleCollection ret = (CounterexampleCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for counterexamples
      List<Counterexample> newCounterexamples = new List<Counterexample>();
      List<Counterexample> deserializedCounterexamples = ret.getCounterexamples();
      if (deserializedCounterexamples != null) {
        for (Integer i = 0; i < deserializedCounterexamples.size(); i++) {
          Counterexample currentItem = ret.getCounterexamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('counterexamples_serialized_name');
          Counterexample newItem = (Counterexample) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Counterexample.class);
          newCounterexamples.add(newItem);
        }
        ret.setCounterexamples(newCounterexamples);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * CreateCounterexample.
   */
  public class CreateCounterexample {
    private String text_serialized_name;
 
    /**
     * Gets the text.
     *
     * The text of a user input marked as irrelevant input. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters
     * - It cannot consist of only whitespace characters
     * - It must be no longer than 1024 characters.
     *
     * @return the text
     */
    public String text() {
      return text_serialized_name;
    }
  
    private CreateCounterexample(CreateCounterexampleBuilder builder) {
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      text_serialized_name = builder.text;
    }

    /**
     * New builder.
     *
     * @return a CreateCounterexample builder
     */
    public CreateCounterexampleBuilder newBuilder() {
      return new CreateCounterexampleBuilder(this);
    }

  }

  /**
   * CreateCounterexample Builder.
   */
  public class CreateCounterexampleBuilder {
    private String text;

    private CreateCounterexampleBuilder(CreateCounterexample createCounterexample) {
      text = createCounterexample.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCounterexampleBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text the text
     */
    public CreateCounterexampleBuilder(String text) {
      this.text = text;
    }

    /**
     * Builds a CreateCounterexample.
     *
     * @return the createCounterexample
     */
    public CreateCounterexample build() {
      return new CreateCounterexample(this);
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the CreateCounterexample builder
     */
    public CreateCounterexampleBuilder text(String text) {
      this.text = text;
      return this;
    }
  }

  /**
   * The createCounterexample options.
   */
  public class CreateCounterexampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the text.
     *
     * The text of a user input marked as irrelevant input. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters
     * - It cannot consist of only whitespace characters
     * - It must be no longer than 1024 characters.
     *
     * @return the text
     */
    public String text() {
      return text;
    }

    private CreateCounterexampleOptions(CreateCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      workspaceId = builder.workspaceId;
      text = builder.text;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder newBuilder() {
      return new CreateCounterexampleOptionsBuilder(this);
    }

  }

  /**
   * CreateCounterexampleOptions Builder.
   */
  public class CreateCounterexampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;

    private CreateCounterexampleOptionsBuilder(CreateCounterexampleOptions createCounterexampleOptions) {
      workspaceId = createCounterexampleOptions.workspaceId;
      text = createCounterexampleOptions.text;
      this.requestHeaders.putAll(createCounterexampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param text the text
     */
    public CreateCounterexampleOptionsBuilder(String workspaceId, String text) {
      this.workspaceId = workspaceId;
      this.text = text;
    }

    /**
     * Builds a CreateCounterexampleOptions.
     *
     * @return the createCounterexampleOptions
     */
    public CreateCounterexampleOptions build() {
      return new CreateCounterexampleOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * CreateDialogNode.
   */
  public class CreateDialogNode {
    private String dialog_node_serialized_name;
    private String description_serialized_name;
    private String conditions_serialized_name;
    private String parent_serialized_name;
    private String previous_sibling_serialized_name;
    private DialogNodeOutput output_serialized_name;
    private IBMWatsonMapModel context_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private DialogNodeNextStep next_step_serialized_name;
    private List<DialogNodeAction> actions_serialized_name;
    private String title_serialized_name;
    private String type_serialized_name;
    private String event_name_serialized_name;
    private String variable_serialized_name;
    private String digress_in_serialized_name;
    private String digress_out_serialized_name;
    private String digress_out_slots_serialized_name;
    private String user_label_serialized_name;
 
    /**
     * Gets the dialogNode.
     *
     * The dialog node ID. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the dialogNode
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the dialog node. This string cannot contain carriage return, newline, or tab characters, and
     * it must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description_serialized_name;
    }
 
    /**
     * Gets the conditions.
     *
     * The condition that will trigger the dialog node. This string cannot contain carriage return, newline, or tab
     * characters, and it must be no longer than 2048 characters.
     *
     * @return the conditions
     */
    public String conditions() {
      return conditions_serialized_name;
    }
 
    /**
     * Gets the parent.
     *
     * The ID of the parent dialog node.
     *
     * @return the parent
     */
    public String parent() {
      return parent_serialized_name;
    }
 
    /**
     * Gets the previousSibling.
     *
     * The ID of the previous dialog node.
     *
     * @return the previousSibling
     */
    public String previousSibling() {
      return previous_sibling_serialized_name;
    }
 
    /**
     * Gets the output.
     *
     * The output of the dialog node. For more information about how to specify dialog node output, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/dialog-overview.html#complex).
     *
     * @return the output
     */
    public DialogNodeOutput output() {
      return output_serialized_name;
    }
 
    /**
     * Gets the context.
     *
     * The context for the dialog node.
     *
     * @return the context
     */
    public IBMWatsonMapModel context() {
      return context_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the nextStep.
     *
     * The next step to execute following this dialog node.
     *
     * @return the nextStep
     */
    public DialogNodeNextStep nextStep() {
      return next_step_serialized_name;
    }
 
    /**
     * Gets the actions.
     *
     * An array of objects describing any actions to be invoked by the dialog node.
     *
     * @return the actions
     */
    public List<DialogNodeAction> actions() {
      return actions_serialized_name;
    }
 
    /**
     * Gets the title.
     *
     * The alias used to identify the dialog node. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 64 characters.
     *
     * @return the title
     */
    public String title() {
      return title_serialized_name;
    }
 
    /**
     * Gets the nodeType.
     *
     * How the dialog node is processed.
     *
     * @return the nodeType
     */
    public String nodeType() {
      return type_serialized_name;
    }
 
    /**
     * Gets the eventName.
     *
     * How an `event_handler` node is processed.
     *
     * @return the eventName
     */
    public String eventName() {
      return event_name_serialized_name;
    }
 
    /**
     * Gets the variable.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the variable
     */
    public String variable() {
      return variable_serialized_name;
    }
 
    /**
     * Gets the digressIn.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the digressIn
     */
    public String digressIn() {
      return digress_in_serialized_name;
    }
 
    /**
     * Gets the digressOut.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the digressOut
     */
    public String digressOut() {
      return digress_out_serialized_name;
    }
 
    /**
     * Gets the digressOutSlots.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the digressOutSlots
     */
    public String digressOutSlots() {
      return digress_out_slots_serialized_name;
    }
 
    /**
     * Gets the userLabel.
     *
     * A label that can be displayed externally to describe the purpose of the node to users. This string must be no
     * longer than 512 characters.
     *
     * @return the userLabel
     */
    public String userLabel() {
      return user_label_serialized_name;
    }
  
    private CreateDialogNode(CreateDialogNodeBuilder builder) {
      IBMWatsonValidator.notNull(builder.dialogNode, 'dialogNode cannot be null');
      dialog_node_serialized_name = builder.dialogNode;
      description_serialized_name = builder.description;
      conditions_serialized_name = builder.conditions;
      parent_serialized_name = builder.parent;
      previous_sibling_serialized_name = builder.previousSibling;
      output_serialized_name = builder.output;
      context_serialized_name = builder.context;
      metadata_serialized_name = builder.metadata;
      next_step_serialized_name = builder.nextStep;
      actions_serialized_name = builder.actions;
      title_serialized_name = builder.title;
      type_serialized_name = builder.nodeType;
      event_name_serialized_name = builder.eventName;
      variable_serialized_name = builder.variable;
      digress_in_serialized_name = builder.digressIn;
      digress_out_serialized_name = builder.digressOut;
      digress_out_slots_serialized_name = builder.digressOutSlots;
      user_label_serialized_name = builder.userLabel;
    }

    /**
     * New builder.
     *
     * @return a CreateDialogNode builder
     */
    public CreateDialogNodeBuilder newBuilder() {
      return new CreateDialogNodeBuilder(this);
    }

  }

  /**
   * CreateDialogNode Builder.
   */
  public class CreateDialogNodeBuilder {
    private String dialogNode;
    private String description;
    private String conditions;
    private String parent;
    private String previousSibling;
    private DialogNodeOutput output;
    private IBMWatsonMapModel context;
    private IBMWatsonMapModel metadata;
    private DialogNodeNextStep nextStep;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;
    private String digressIn;
    private String digressOut;
    private String digressOutSlots;
    private String userLabel;

    private CreateDialogNodeBuilder(CreateDialogNode createDialogNode) {
      dialogNode = createDialogNode.dialog_node_serialized_name;
      description = createDialogNode.description_serialized_name;
      conditions = createDialogNode.conditions_serialized_name;
      parent = createDialogNode.parent_serialized_name;
      previousSibling = createDialogNode.previous_sibling_serialized_name;
      output = createDialogNode.output_serialized_name;
      context = createDialogNode.context_serialized_name;
      metadata = createDialogNode.metadata_serialized_name;
      nextStep = createDialogNode.next_step_serialized_name;
      actions = createDialogNode.actions_serialized_name;
      title = createDialogNode.title_serialized_name;
      nodeType = createDialogNode.type_serialized_name;
      eventName = createDialogNode.event_name_serialized_name;
      variable = createDialogNode.variable_serialized_name;
      digressIn = createDialogNode.digress_in_serialized_name;
      digressOut = createDialogNode.digress_out_serialized_name;
      digressOutSlots = createDialogNode.digress_out_slots_serialized_name;
      userLabel = createDialogNode.user_label_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateDialogNodeBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param dialogNode the dialogNode
     */
    public CreateDialogNodeBuilder(String dialogNode) {
      this.dialogNode = dialogNode;
    }

    /**
     * Builds a CreateDialogNode.
     *
     * @return the createDialogNode
     */
    public CreateDialogNode build() {
      return new CreateDialogNode(this);
    }

    /**
     * Adds an actions to actions.
     *
     * @param actions the new actions
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder addActions(DialogNodeAction actions) {
      IBMWatsonValidator.notNull(actions, 'actions cannot be null');
      if (this.actions == null) {
        this.actions = new List<DialogNodeAction>();
      }
      this.actions.add(actions);
      return this;
    }

    /**
     * Set the dialogNode.
     *
     * @param dialogNode the dialogNode
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder dialogNode(String dialogNode) {
      this.dialogNode = dialogNode;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the conditions.
     *
     * @param conditions the conditions
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder conditions(String conditions) {
      this.conditions = conditions;
      return this;
    }

    /**
     * Set the parent.
     *
     * @param parent the parent
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder parent(String parent) {
      this.parent = parent;
      return this;
    }

    /**
     * Set the previousSibling.
     *
     * @param previousSibling the previousSibling
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder previousSibling(String previousSibling) {
      this.previousSibling = previousSibling;
      return this;
    }

    /**
     * Set the output.
     *
     * @param output the output
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder output(DialogNodeOutput output) {
      this.output = output;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder context(IBMWatsonMapModel context) {
      this.context = context;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the nextStep.
     *
     * @param nextStep the nextStep
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder nextStep(DialogNodeNextStep nextStep) {
      this.nextStep = nextStep;
      return this;
    }

    /**
     * Set the actions.
     * Existing actions will be replaced.
     *
     * @param actions the actions
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder actions(List<DialogNodeAction> actions) {
      this.actions = actions;
      return this;
    }

    /**
     * Set the title.
     *
     * @param title the title
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder title(String title) {
      this.title = title;
      return this;
    }

    /**
     * Set the nodeType.
     *
     * @param nodeType the nodeType
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder nodeType(String nodeType) {
      this.nodeType = nodeType;
      return this;
    }

    /**
     * Set the eventName.
     *
     * @param eventName the eventName
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder eventName(String eventName) {
      this.eventName = eventName;
      return this;
    }

    /**
     * Set the variable.
     *
     * @param variable the variable
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder variable(String variable) {
      this.variable = variable;
      return this;
    }

    /**
     * Set the digressIn.
     *
     * @param digressIn the digressIn
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder digressIn(String digressIn) {
      this.digressIn = digressIn;
      return this;
    }

    /**
     * Set the digressOut.
     *
     * @param digressOut the digressOut
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder digressOut(String digressOut) {
      this.digressOut = digressOut;
      return this;
    }

    /**
     * Set the digressOutSlots.
     *
     * @param digressOutSlots the digressOutSlots
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder digressOutSlots(String digressOutSlots) {
      this.digressOutSlots = digressOutSlots;
      return this;
    }

    /**
     * Set the userLabel.
     *
     * @param userLabel the userLabel
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder userLabel(String userLabel) {
      this.userLabel = userLabel;
      return this;
    }
  }

  /**
   * The createDialogNode options.
   */
  public class CreateDialogNodeOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;
    private String description;
    private String conditions;
    private String parent;
    private String previousSibling;
    private DialogNodeOutput output;
    private IBMWatsonMapModel context;
    private IBMWatsonMapModel metadata;
    private DialogNodeNextStep nextStep;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;
    private String digressIn;
    private String digressOut;
    private String digressOutSlots;
    private String userLabel;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the dialogNode.
     *
     * The dialog node ID. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the dialogNode
     */
    public String dialogNode() {
      return dialogNode;
    }
 
    /**
     * Gets the description.
     *
     * The description of the dialog node. This string cannot contain carriage return, newline, or tab characters, and
     * it must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the conditions.
     *
     * The condition that will trigger the dialog node. This string cannot contain carriage return, newline, or tab
     * characters, and it must be no longer than 2048 characters.
     *
     * @return the conditions
     */
    public String conditions() {
      return conditions;
    }
 
    /**
     * Gets the parent.
     *
     * The ID of the parent dialog node.
     *
     * @return the parent
     */
    public String parent() {
      return parent;
    }
 
    /**
     * Gets the previousSibling.
     *
     * The ID of the previous dialog node.
     *
     * @return the previousSibling
     */
    public String previousSibling() {
      return previousSibling;
    }
 
    /**
     * Gets the output.
     *
     * The output of the dialog node. For more information about how to specify dialog node output, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/dialog-overview.html#complex).
     *
     * @return the output
     */
    public DialogNodeOutput output() {
      return output;
    }
 
    /**
     * Gets the context.
     *
     * The context for the dialog node.
     *
     * @return the context
     */
    public IBMWatsonMapModel context() {
      return context;
    }
 
    /**
     * Gets the metadata.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata;
    }
 
    /**
     * Gets the nextStep.
     *
     * The next step to execute following this dialog node.
     *
     * @return the nextStep
     */
    public DialogNodeNextStep nextStep() {
      return nextStep;
    }
 
    /**
     * Gets the actions.
     *
     * An array of objects describing any actions to be invoked by the dialog node.
     *
     * @return the actions
     */
    public List<DialogNodeAction> actions() {
      return actions;
    }
 
    /**
     * Gets the title.
     *
     * The alias used to identify the dialog node. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 64 characters.
     *
     * @return the title
     */
    public String title() {
      return title;
    }
 
    /**
     * Gets the nodeType.
     *
     * How the dialog node is processed.
     *
     * @return the nodeType
     */
    public String nodeType() {
      return nodeType;
    }
 
    /**
     * Gets the eventName.
     *
     * How an `event_handler` node is processed.
     *
     * @return the eventName
     */
    public String eventName() {
      return eventName;
    }
 
    /**
     * Gets the variable.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the variable
     */
    public String variable() {
      return variable;
    }
 
    /**
     * Gets the digressIn.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the digressIn
     */
    public String digressIn() {
      return digressIn;
    }
 
    /**
     * Gets the digressOut.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the digressOut
     */
    public String digressOut() {
      return digressOut;
    }
 
    /**
     * Gets the digressOutSlots.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the digressOutSlots
     */
    public String digressOutSlots() {
      return digressOutSlots;
    }
 
    /**
     * Gets the userLabel.
     *
     * A label that can be displayed externally to describe the purpose of the node to users. This string must be no
     * longer than 512 characters.
     *
     * @return the userLabel
     */
    public String userLabel() {
      return userLabel;
    }

    private CreateDialogNodeOptions(CreateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notNull(builder.dialogNode, 'dialogNode cannot be null');
      workspaceId = builder.workspaceId;
      dialogNode = builder.dialogNode;
      description = builder.description;
      conditions = builder.conditions;
      parent = builder.parent;
      previousSibling = builder.previousSibling;
      output = builder.output;
      context = builder.context;
      metadata = builder.metadata;
      nextStep = builder.nextStep;
      actions = builder.actions;
      title = builder.title;
      nodeType = builder.nodeType;
      eventName = builder.eventName;
      variable = builder.variable;
      digressIn = builder.digressIn;
      digressOut = builder.digressOut;
      digressOutSlots = builder.digressOutSlots;
      userLabel = builder.userLabel;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder newBuilder() {
      return new CreateDialogNodeOptionsBuilder(this);
    }

  }

  /**
   * CreateDialogNodeOptions Builder.
   */
  public class CreateDialogNodeOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;
    private String description;
    private String conditions;
    private String parent;
    private String previousSibling;
    private DialogNodeOutput output;
    private IBMWatsonMapModel context;
    private IBMWatsonMapModel metadata;
    private DialogNodeNextStep nextStep;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;
    private String digressIn;
    private String digressOut;
    private String digressOutSlots;
    private String userLabel;

    private CreateDialogNodeOptionsBuilder(CreateDialogNodeOptions createDialogNodeOptions) {
      workspaceId = createDialogNodeOptions.workspaceId;
      dialogNode = createDialogNodeOptions.dialogNode;
      description = createDialogNodeOptions.description;
      conditions = createDialogNodeOptions.conditions;
      parent = createDialogNodeOptions.parent;
      previousSibling = createDialogNodeOptions.previousSibling;
      output = createDialogNodeOptions.output;
      context = createDialogNodeOptions.context;
      metadata = createDialogNodeOptions.metadata;
      nextStep = createDialogNodeOptions.nextStep;
      actions = createDialogNodeOptions.actions;
      title = createDialogNodeOptions.title;
      nodeType = createDialogNodeOptions.nodeType;
      eventName = createDialogNodeOptions.eventName;
      variable = createDialogNodeOptions.variable;
      digressIn = createDialogNodeOptions.digressIn;
      digressOut = createDialogNodeOptions.digressOut;
      digressOutSlots = createDialogNodeOptions.digressOutSlots;
      userLabel = createDialogNodeOptions.userLabel;
      this.requestHeaders.putAll(createDialogNodeOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param dialogNode the dialogNode
     */
    public CreateDialogNodeOptionsBuilder(String workspaceId, String dialogNode) {
      this.workspaceId = workspaceId;
      this.dialogNode = dialogNode;
    }

    /**
     * Builds a CreateDialogNodeOptions.
     *
     * @return the createDialogNodeOptions
     */
    public CreateDialogNodeOptions build() {
      return new CreateDialogNodeOptions(this);
    }

    /**
     * Adds an actions to actions.
     *
     * @param actions the new actions
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder addActions(DialogNodeAction actions) {
      IBMWatsonValidator.notNull(actions, 'actions cannot be null');
      if (this.actions == null) {
        this.actions = new List<DialogNodeAction>();
      }
      this.actions.add(actions);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the dialogNode.
     *
     * @param dialogNode the dialogNode
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialogNode = dialogNode;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the conditions.
     *
     * @param conditions the conditions
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder conditions(String conditions) {
      this.conditions = conditions;
      return this;
    }

    /**
     * Set the parent.
     *
     * @param parent the parent
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder parent(String parent) {
      this.parent = parent;
      return this;
    }

    /**
     * Set the previousSibling.
     *
     * @param previousSibling the previousSibling
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder previousSibling(String previousSibling) {
      this.previousSibling = previousSibling;
      return this;
    }

    /**
     * Set the output.
     *
     * @param output the output
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder output(DialogNodeOutput output) {
      this.output = output;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder context(IBMWatsonMapModel context) {
      this.context = context;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the nextStep.
     *
     * @param nextStep the nextStep
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder nextStep(DialogNodeNextStep nextStep) {
      this.nextStep = nextStep;
      return this;
    }

    /**
     * Set the actions.
     * Existing actions will be replaced.
     *
     * @param actions the actions
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder actions(List<DialogNodeAction> actions) {
      this.actions = actions;
      return this;
    }

    /**
     * Set the title.
     *
     * @param title the title
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder title(String title) {
      this.title = title;
      return this;
    }

    /**
     * Set the nodeType.
     *
     * @param nodeType the nodeType
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder nodeType(String nodeType) {
      this.nodeType = nodeType;
      return this;
    }

    /**
     * Set the eventName.
     *
     * @param eventName the eventName
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder eventName(String eventName) {
      this.eventName = eventName;
      return this;
    }

    /**
     * Set the variable.
     *
     * @param variable the variable
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder variable(String variable) {
      this.variable = variable;
      return this;
    }

    /**
     * Set the digressIn.
     *
     * @param digressIn the digressIn
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder digressIn(String digressIn) {
      this.digressIn = digressIn;
      return this;
    }

    /**
     * Set the digressOut.
     *
     * @param digressOut the digressOut
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder digressOut(String digressOut) {
      this.digressOut = digressOut;
      return this;
    }

    /**
     * Set the digressOutSlots.
     *
     * @param digressOutSlots the digressOutSlots
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder digressOutSlots(String digressOutSlots) {
      this.digressOutSlots = digressOutSlots;
      return this;
    }

    /**
     * Set the userLabel.
     *
     * @param userLabel the userLabel
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder userLabel(String userLabel) {
      this.userLabel = userLabel;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * CreateEntity.
   */
  public class CreateEntity {
    private String entity_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CreateValue> values_serialized_name;
    private Boolean fuzzy_match_serialized_name;
 
    /**
     * Gets the entity.
     *
     * The name of the entity. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, and hyphen characters.
     * - It must be no longer than 64 characters.
     *
     * If you specify an entity name beginning with the reserved prefix `sys-`, it must be the name of a system entity
     * that you want to enable. (Any entity content specified with the request is ignored.).
     *
     * @return the entity
     */
    public String entity() {
      return entity_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the entity. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the value.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the values.
     *
     * An array of objects describing the entity values.
     *
     * @return the values
     */
    public List<CreateValue> values() {
      return values_serialized_name;
    }
 
    /**
     * Gets the fuzzyMatch.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the fuzzyMatch
     */
    public Boolean fuzzyMatch() {
      return fuzzy_match_serialized_name;
    }
  
    private CreateEntity(CreateEntityBuilder builder) {
      IBMWatsonValidator.notNull(builder.entity, 'entity cannot be null');
      entity_serialized_name = builder.entity;
      description_serialized_name = builder.description;
      metadata_serialized_name = builder.metadata;
      values_serialized_name = builder.values;
      fuzzy_match_serialized_name = builder.fuzzyMatch;
    }

    /**
     * New builder.
     *
     * @return a CreateEntity builder
     */
    public CreateEntityBuilder newBuilder() {
      return new CreateEntityBuilder(this);
    }

  }

  /**
   * CreateEntity Builder.
   */
  public class CreateEntityBuilder {
    private String entity;
    private String description;
    private IBMWatsonMapModel metadata;
    private List<CreateValue> values;
    private Boolean fuzzyMatch;

    private CreateEntityBuilder(CreateEntity createEntity) {
      entity = createEntity.entity_serialized_name;
      description = createEntity.description_serialized_name;
      metadata = createEntity.metadata_serialized_name;
      values = createEntity.values_serialized_name;
      fuzzyMatch = createEntity.fuzzy_match_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEntityBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param entity the entity
     */
    public CreateEntityBuilder(String entity) {
      this.entity = entity;
    }

    /**
     * Builds a CreateEntity.
     *
     * @return the createEntity
     */
    public CreateEntity build() {
      return new CreateEntity(this);
    }

    /**
     * Adds an values to values.
     *
     * @param values the new values
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder addValues(CreateValue values) {
      IBMWatsonValidator.notNull(values, 'values cannot be null');
      if (this.values == null) {
        this.values = new List<CreateValue>();
      }
      this.values.add(values);
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the values.
     * Existing values will be replaced.
     *
     * @param values the values
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder values(List<CreateValue> values) {
      this.values = values;
      return this;
    }

    /**
     * Set the fuzzyMatch.
     *
     * @param fuzzyMatch the fuzzyMatch
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder fuzzyMatch(Boolean fuzzyMatch) {
      this.fuzzyMatch = fuzzyMatch;
      return this;
    }
  }

  /**
   * The createEntity options.
   */
  public class CreateEntityOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String description;
    private IBMWatsonMapModel metadata;
    private List<CreateValue> values;
    private Boolean fuzzyMatch;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, and hyphen characters.
     * - It must be no longer than 64 characters.
     *
     * If you specify an entity name beginning with the reserved prefix `sys-`, it must be the name of a system entity
     * that you want to enable. (Any entity content specified with the request is ignored.).
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the description.
     *
     * The description of the entity. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the value.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata;
    }
 
    /**
     * Gets the values.
     *
     * An array of objects describing the entity values.
     *
     * @return the values
     */
    public List<CreateValue> values() {
      return values;
    }
 
    /**
     * Gets the fuzzyMatch.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the fuzzyMatch
     */
    public Boolean fuzzyMatch() {
      return fuzzyMatch;
    }

    private CreateEntityOptions(CreateEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notNull(builder.entity, 'entity cannot be null');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      description = builder.description;
      metadata = builder.metadata;
      values = builder.values;
      fuzzyMatch = builder.fuzzyMatch;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder newBuilder() {
      return new CreateEntityOptionsBuilder(this);
    }

  }

  /**
   * CreateEntityOptions Builder.
   */
  public class CreateEntityOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String description;
    private IBMWatsonMapModel metadata;
    private List<CreateValue> values;
    private Boolean fuzzyMatch;

    private CreateEntityOptionsBuilder(CreateEntityOptions createEntityOptions) {
      workspaceId = createEntityOptions.workspaceId;
      entity = createEntityOptions.entity;
      description = createEntityOptions.description;
      metadata = createEntityOptions.metadata;
      values = createEntityOptions.values;
      fuzzyMatch = createEntityOptions.fuzzyMatch;
      this.requestHeaders.putAll(createEntityOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     */
    public CreateEntityOptionsBuilder(String workspaceId, String entity) {
      this.workspaceId = workspaceId;
      this.entity = entity;
    }

    /**
     * Builds a CreateEntityOptions.
     *
     * @return the createEntityOptions
     */
    public CreateEntityOptions build() {
      return new CreateEntityOptions(this);
    }

    /**
     * Adds an values to values.
     *
     * @param values the new values
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder addValues(CreateValue values) {
      IBMWatsonValidator.notNull(values, 'values cannot be null');
      if (this.values == null) {
        this.values = new List<CreateValue>();
      }
      this.values.add(values);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the values.
     * Existing values will be replaced.
     *
     * @param values the values
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder values(List<CreateValue> values) {
      this.values = values;
      return this;
    }

    /**
     * Set the fuzzyMatch.
     *
     * @param fuzzyMatch the fuzzyMatch
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder fuzzyMatch(Boolean fuzzyMatch) {
      this.fuzzyMatch = fuzzyMatch;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * CreateExample.
   */
  public class CreateExample {
    private String text_serialized_name;
    private List<Mentions> mentions_serialized_name;
 
    /**
     * Gets the text.
     *
     * The text of a user input example. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the text
     */
    public String text() {
      return text_serialized_name;
    }
 
    /**
     * Gets the mentions.
     *
     * An array of contextual entity mentions.
     *
     * @return the mentions
     */
    public List<Mentions> mentions() {
      return mentions_serialized_name;
    }
  
    private CreateExample(CreateExampleBuilder builder) {
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      text_serialized_name = builder.text;
      mentions_serialized_name = builder.mentions;
    }

    /**
     * New builder.
     *
     * @return a CreateExample builder
     */
    public CreateExampleBuilder newBuilder() {
      return new CreateExampleBuilder(this);
    }

  }

  /**
   * CreateExample Builder.
   */
  public class CreateExampleBuilder {
    private String text;
    private List<Mentions> mentions;

    private CreateExampleBuilder(CreateExample createExample) {
      text = createExample.text_serialized_name;
      mentions = createExample.mentions_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateExampleBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text the text
     */
    public CreateExampleBuilder(String text) {
      this.text = text;
    }

    /**
     * Builds a CreateExample.
     *
     * @return the createExample
     */
    public CreateExample build() {
      return new CreateExample(this);
    }

    /**
     * Adds an mentions to mentions.
     *
     * @param mentions the new mentions
     * @return the CreateExample builder
     */
    public CreateExampleBuilder addMentions(Mentions mentions) {
      IBMWatsonValidator.notNull(mentions, 'mentions cannot be null');
      if (this.mentions == null) {
        this.mentions = new List<Mentions>();
      }
      this.mentions.add(mentions);
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the CreateExample builder
     */
    public CreateExampleBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the mentions.
     * Existing mentions will be replaced.
     *
     * @param mentions the mentions
     * @return the CreateExample builder
     */
    public CreateExampleBuilder mentions(List<Mentions> mentions) {
      this.mentions = mentions;
      return this;
    }
  }

  /**
   * The createExample options.
   */
  public class CreateExampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;
    private List<Mentions> mentions;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the text.
     *
     * The text of a user input example. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
 
    /**
     * Gets the mentions.
     *
     * An array of contextual entity mentions.
     *
     * @return the mentions
     */
    public List<Mentions> mentions() {
      return mentions;
    }

    private CreateExampleOptions(CreateExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      text = builder.text;
      mentions = builder.mentions;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder newBuilder() {
      return new CreateExampleOptionsBuilder(this);
    }

  }

  /**
   * CreateExampleOptions Builder.
   */
  public class CreateExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;
    private List<Mentions> mentions;

    private CreateExampleOptionsBuilder(CreateExampleOptions createExampleOptions) {
      workspaceId = createExampleOptions.workspaceId;
      intent = createExampleOptions.intent;
      text = createExampleOptions.text;
      mentions = createExampleOptions.mentions;
      this.requestHeaders.putAll(createExampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     * @param text the text
     */
    public CreateExampleOptionsBuilder(String workspaceId, String intent, String text) {
      this.workspaceId = workspaceId;
      this.intent = intent;
      this.text = text;
    }

    /**
     * Builds a CreateExampleOptions.
     *
     * @return the createExampleOptions
     */
    public CreateExampleOptions build() {
      return new CreateExampleOptions(this);
    }

    /**
     * Adds an mentions to mentions.
     *
     * @param mentions the new mentions
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder addMentions(Mentions mentions) {
      IBMWatsonValidator.notNull(mentions, 'mentions cannot be null');
      if (this.mentions == null) {
        this.mentions = new List<Mentions>();
      }
      this.mentions.add(mentions);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the mentions.
     * Existing mentions will be replaced.
     *
     * @param mentions the mentions
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder mentions(List<Mentions> mentions) {
      this.mentions = mentions;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * CreateIntent.
   */
  public class CreateIntent {
    private String intent_serialized_name;
    private String description_serialized_name;
    private List<CreateExample> examples_serialized_name;
 
    /**
     * Gets the intent.
     *
     * The name of the intent. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, hyphen, and dot characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 128 characters.
     *
     * @return the intent
     */
    public String intent() {
      return intent_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the intent. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description_serialized_name;
    }
 
    /**
     * Gets the examples.
     *
     * An array of user input examples for the intent.
     *
     * @return the examples
     */
    public List<CreateExample> examples() {
      return examples_serialized_name;
    }
  
    private CreateIntent(CreateIntentBuilder builder) {
      IBMWatsonValidator.notNull(builder.intent, 'intent cannot be null');
      intent_serialized_name = builder.intent;
      description_serialized_name = builder.description;
      examples_serialized_name = builder.examples;
    }

    /**
     * New builder.
     *
     * @return a CreateIntent builder
     */
    public CreateIntentBuilder newBuilder() {
      return new CreateIntentBuilder(this);
    }

  }

  /**
   * CreateIntent Builder.
   */
  public class CreateIntentBuilder {
    private String intent;
    private String description;
    private List<CreateExample> examples;

    private CreateIntentBuilder(CreateIntent createIntent) {
      intent = createIntent.intent_serialized_name;
      description = createIntent.description_serialized_name;
      examples = createIntent.examples_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateIntentBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param intent the intent
     */
    public CreateIntentBuilder(String intent) {
      this.intent = intent;
    }

    /**
     * Builds a CreateIntent.
     *
     * @return the createIntent
     */
    public CreateIntent build() {
      return new CreateIntent(this);
    }

    /**
     * Adds an examples to examples.
     *
     * @param examples the new examples
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder addExamples(CreateExample examples) {
      IBMWatsonValidator.notNull(examples, 'examples cannot be null');
      if (this.examples == null) {
        this.examples = new List<CreateExample>();
      }
      this.examples.add(examples);
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the examples.
     * Existing examples will be replaced.
     *
     * @param examples the examples
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder examples(List<CreateExample> examples) {
      this.examples = examples;
      return this;
    }
  }

  /**
   * The createIntent options.
   */
  public class CreateIntentOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String description;
    private List<CreateExample> examples;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The name of the intent. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, hyphen, and dot characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 128 characters.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the description.
     *
     * The description of the intent. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the examples.
     *
     * An array of user input examples for the intent.
     *
     * @return the examples
     */
    public List<CreateExample> examples() {
      return examples;
    }

    private CreateIntentOptions(CreateIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notNull(builder.intent, 'intent cannot be null');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      description = builder.description;
      examples = builder.examples;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder newBuilder() {
      return new CreateIntentOptionsBuilder(this);
    }

  }

  /**
   * CreateIntentOptions Builder.
   */
  public class CreateIntentOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String description;
    private List<CreateExample> examples;

    private CreateIntentOptionsBuilder(CreateIntentOptions createIntentOptions) {
      workspaceId = createIntentOptions.workspaceId;
      intent = createIntentOptions.intent;
      description = createIntentOptions.description;
      examples = createIntentOptions.examples;
      this.requestHeaders.putAll(createIntentOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     */
    public CreateIntentOptionsBuilder(String workspaceId, String intent) {
      this.workspaceId = workspaceId;
      this.intent = intent;
    }

    /**
     * Builds a CreateIntentOptions.
     *
     * @return the createIntentOptions
     */
    public CreateIntentOptions build() {
      return new CreateIntentOptions(this);
    }

    /**
     * Adds an examples to examples.
     *
     * @param examples the new examples
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder addExamples(CreateExample examples) {
      IBMWatsonValidator.notNull(examples, 'examples cannot be null');
      if (this.examples == null) {
        this.examples = new List<CreateExample>();
      }
      this.examples.add(examples);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the examples.
     * Existing examples will be replaced.
     *
     * @param examples the examples
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder examples(List<CreateExample> examples) {
      this.examples = examples;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createSynonym options.
   */
  public class CreateSynonymOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the synonym.
     *
     * The text of the synonym. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the synonym
     */
    public String synonym() {
      return synonym;
    }

    private CreateSynonymOptions(CreateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notNull(builder.synonym, 'synonym cannot be null');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder newBuilder() {
      return new CreateSynonymOptionsBuilder(this);
    }

  }

  /**
   * CreateSynonymOptions Builder.
   */
  public class CreateSynonymOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;

    private CreateSynonymOptionsBuilder(CreateSynonymOptions createSynonymOptions) {
      workspaceId = createSynonymOptions.workspaceId;
      entity = createSynonymOptions.entity;
      value = createSynonymOptions.value;
      synonym = createSynonymOptions.synonym;
      this.requestHeaders.putAll(createSynonymOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public CreateSynonymOptionsBuilder(String workspaceId, String entity, String value, String synonym) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
    }

    /**
     * Builds a CreateSynonymOptions.
     *
     * @return the createSynonymOptions
     */
    public CreateSynonymOptions build() {
      return new CreateSynonymOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the synonym.
     *
     * @param synonym the synonym
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder synonym(String synonym) {
      this.synonym = synonym;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * CreateValue.
   */
  public class CreateValue {
    private String value_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<String> synonyms_serialized_name;
    private List<String> patterns_serialized_name;
    private String type_serialized_name;
 
    /**
     * Gets the value.
     *
     * The text of the entity value. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the value
     */
    public String value() {
      return value_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the synonyms.
     *
     * An array containing any synonyms for the entity value. You can provide either synonyms or patterns (as indicated
     * by **type**), but not both. A synonym must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the synonyms
     */
    public List<String> synonyms() {
      return synonyms_serialized_name;
    }
 
    /**
     * Gets the patterns.
     *
     * An array of patterns for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A pattern is a regular expression no longer than 512 characters. For more information
     * about how to specify a pattern, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/entities.html#creating-entities).
     *
     * @return the patterns
     */
    public List<String> patterns() {
      return patterns_serialized_name;
    }
 
    /**
     * Gets the valueType.
     *
     * Specifies the type of value.
     *
     * @return the valueType
     */
    public String valueType() {
      return type_serialized_name;
    }
  
    private CreateValue(CreateValueBuilder builder) {
      IBMWatsonValidator.notNull(builder.value, 'value cannot be null');
      value_serialized_name = builder.value;
      metadata_serialized_name = builder.metadata;
      synonyms_serialized_name = builder.synonyms;
      patterns_serialized_name = builder.patterns;
      type_serialized_name = builder.valueType;
    }

    /**
     * New builder.
     *
     * @return a CreateValue builder
     */
    public CreateValueBuilder newBuilder() {
      return new CreateValueBuilder(this);
    }

  }

  /**
   * CreateValue Builder.
   */
  public class CreateValueBuilder {
    private String value;
    private IBMWatsonMapModel metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;

    private CreateValueBuilder(CreateValue createValue) {
      value = createValue.value_serialized_name;
      metadata = createValue.metadata_serialized_name;
      synonyms = createValue.synonyms_serialized_name;
      patterns = createValue.patterns_serialized_name;
      valueType = createValue.type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateValueBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param value the value
     */
    public CreateValueBuilder(String value) {
      this.value = value;
    }

    /**
     * Builds a CreateValue.
     *
     * @return the createValue
     */
    public CreateValue build() {
      return new CreateValue(this);
    }

    /**
     * Adds an synonyms to synonyms.
     *
     * @param synonyms the new synonyms
     * @return the CreateValue builder
     */
    public CreateValueBuilder addSynonyms(String synonyms) {
      IBMWatsonValidator.notNull(synonyms, 'synonyms cannot be null');
      if (this.synonyms == null) {
        this.synonyms = new List<String>();
      }
      this.synonyms.add(synonyms);
      return this;
    }

    /**
     * Adds an patterns to patterns.
     *
     * @param patterns the new patterns
     * @return the CreateValue builder
     */
    public CreateValueBuilder addPatterns(String patterns) {
      IBMWatsonValidator.notNull(patterns, 'patterns cannot be null');
      if (this.patterns == null) {
        this.patterns = new List<String>();
      }
      this.patterns.add(patterns);
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the CreateValue builder
     */
    public CreateValueBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateValue builder
     */
    public CreateValueBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the synonyms.
     * Existing synonyms will be replaced.
     *
     * @param synonyms the synonyms
     * @return the CreateValue builder
     */
    public CreateValueBuilder synonyms(List<String> synonyms) {
      this.synonyms = synonyms;
      return this;
    }

    /**
     * Set the patterns.
     * Existing patterns will be replaced.
     *
     * @param patterns the patterns
     * @return the CreateValue builder
     */
    public CreateValueBuilder patterns(List<String> patterns) {
      this.patterns = patterns;
      return this;
    }

    /**
     * Set the valueType.
     *
     * @param valueType the valueType
     * @return the CreateValue builder
     */
    public CreateValueBuilder valueType(String valueType) {
      this.valueType = valueType;
      return this;
    }
  }

  /**
   * The createValue options.
   */
  public class CreateValueOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private IBMWatsonMapModel metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata;
    }
 
    /**
     * Gets the synonyms.
     *
     * An array containing any synonyms for the entity value. You can provide either synonyms or patterns (as indicated
     * by **type**), but not both. A synonym must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the synonyms
     */
    public List<String> synonyms() {
      return synonyms;
    }
 
    /**
     * Gets the patterns.
     *
     * An array of patterns for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A pattern is a regular expression no longer than 512 characters. For more information
     * about how to specify a pattern, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/entities.html#creating-entities).
     *
     * @return the patterns
     */
    public List<String> patterns() {
      return patterns;
    }
 
    /**
     * Gets the valueType.
     *
     * Specifies the type of value.
     *
     * @return the valueType
     */
    public String valueType() {
      return valueType;
    }

    private CreateValueOptions(CreateValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notNull(builder.value, 'value cannot be null');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      metadata = builder.metadata;
      synonyms = builder.synonyms;
      patterns = builder.patterns;
      valueType = builder.valueType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateValueOptions builder
     */
    public CreateValueOptionsBuilder newBuilder() {
      return new CreateValueOptionsBuilder(this);
    }

  }

  /**
   * CreateValueOptions Builder.
   */
  public class CreateValueOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private IBMWatsonMapModel metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;

    private CreateValueOptionsBuilder(CreateValueOptions createValueOptions) {
      workspaceId = createValueOptions.workspaceId;
      entity = createValueOptions.entity;
      value = createValueOptions.value;
      metadata = createValueOptions.metadata;
      synonyms = createValueOptions.synonyms;
      patterns = createValueOptions.patterns;
      valueType = createValueOptions.valueType;
      this.requestHeaders.putAll(createValueOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     */
    public CreateValueOptionsBuilder(String workspaceId, String entity, String value) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
    }

    /**
     * Builds a CreateValueOptions.
     *
     * @return the createValueOptions
     */
    public CreateValueOptions build() {
      return new CreateValueOptions(this);
    }

    /**
     * Adds an synonyms to synonyms.
     *
     * @param synonyms the new synonyms
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addSynonyms(String synonyms) {
      IBMWatsonValidator.notNull(synonyms, 'synonyms cannot be null');
      if (this.synonyms == null) {
        this.synonyms = new List<String>();
      }
      this.synonyms.add(synonyms);
      return this;
    }

    /**
     * Adds an patterns to patterns.
     *
     * @param patterns the new patterns
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addPatterns(String patterns) {
      IBMWatsonValidator.notNull(patterns, 'patterns cannot be null');
      if (this.patterns == null) {
        this.patterns = new List<String>();
      }
      this.patterns.add(patterns);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the synonyms.
     * Existing synonyms will be replaced.
     *
     * @param synonyms the synonyms
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder synonyms(List<String> synonyms) {
      this.synonyms = synonyms;
      return this;
    }

    /**
     * Set the patterns.
     * Existing patterns will be replaced.
     *
     * @param patterns the patterns
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder patterns(List<String> patterns) {
      this.patterns = patterns;
      return this;
    }

    /**
     * Set the valueType.
     *
     * @param valueType the valueType
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder valueType(String valueType) {
      this.valueType = valueType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createWorkspace options.
   */
  public class CreateWorkspaceOptions extends IBMWatsonOptionsModel {
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private IBMWatsonMapModel metadata;
    private Boolean learningOptOut;
    private WorkspaceSystemSettings systemSettings;
 
    /**
     * Gets the name.
     *
     * The name of the workspace. This string cannot contain carriage return, newline, or tab characters, and it must be
     * no longer than 64 characters.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the workspace. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the language.
     *
     * The language of the workspace.
     *
     * @return the language
     */
    public String language() {
      return language;
    }
 
    /**
     * Gets the intents.
     *
     * An array of objects defining the intents for the workspace.
     *
     * @return the intents
     */
    public List<CreateIntent> intents() {
      return intents;
    }
 
    /**
     * Gets the entities.
     *
     * An array of objects defining the entities for the workspace.
     *
     * @return the entities
     */
    public List<CreateEntity> entities() {
      return entities;
    }
 
    /**
     * Gets the dialogNodes.
     *
     * An array of objects defining the nodes in the dialog.
     *
     * @return the dialogNodes
     */
    public List<CreateDialogNode> dialogNodes() {
      return dialogNodes;
    }
 
    /**
     * Gets the counterexamples.
     *
     * An array of objects defining input examples that have been marked as irrelevant input.
     *
     * @return the counterexamples
     */
    public List<CreateCounterexample> counterexamples() {
      return counterexamples;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the workspace.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata;
    }
 
    /**
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates
     * that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    public Boolean learningOptOut() {
      return learningOptOut;
    }
 
    /**
     * Gets the systemSettings.
     *
     * Global settings for the workspace.
     *
     * @return the systemSettings
     */
    public WorkspaceSystemSettings systemSettings() {
      return systemSettings;
    }

    private CreateWorkspaceOptions(CreateWorkspaceOptionsBuilder builder) {
      name = builder.name;
      description = builder.description;
      language = builder.language;
      intents = builder.intents;
      entities = builder.entities;
      dialogNodes = builder.dialogNodes;
      counterexamples = builder.counterexamples;
      metadata = builder.metadata;
      learningOptOut = builder.learningOptOut;
      systemSettings = builder.systemSettings;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder newBuilder() {
      return new CreateWorkspaceOptionsBuilder(this);
    }

  }

  /**
   * CreateWorkspaceOptions Builder.
   */
  public class CreateWorkspaceOptionsBuilder extends IBMWatsonOptionsModel {
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private IBMWatsonMapModel metadata;
    private Boolean learningOptOut;
    private WorkspaceSystemSettings systemSettings;

    private CreateWorkspaceOptionsBuilder(CreateWorkspaceOptions createWorkspaceOptions) {
      name = createWorkspaceOptions.name;
      description = createWorkspaceOptions.description;
      language = createWorkspaceOptions.language;
      intents = createWorkspaceOptions.intents;
      entities = createWorkspaceOptions.entities;
      dialogNodes = createWorkspaceOptions.dialogNodes;
      counterexamples = createWorkspaceOptions.counterexamples;
      metadata = createWorkspaceOptions.metadata;
      learningOptOut = createWorkspaceOptions.learningOptOut;
      systemSettings = createWorkspaceOptions.systemSettings;
      this.requestHeaders.putAll(createWorkspaceOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateWorkspaceOptionsBuilder() {
    }

    /**
     * Builds a CreateWorkspaceOptions.
     *
     * @return the createWorkspaceOptions
     */
    public CreateWorkspaceOptions build() {
      return new CreateWorkspaceOptions(this);
    }

    /**
     * Adds an intents to intents.
     *
     * @param intents the new intents
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addIntents(CreateIntent intents) {
      IBMWatsonValidator.notNull(intents, 'intents cannot be null');
      if (this.intents == null) {
        this.intents = new List<CreateIntent>();
      }
      this.intents.add(intents);
      return this;
    }

    /**
     * Adds an entities to entities.
     *
     * @param entities the new entities
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addEntities(CreateEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities == null) {
        this.entities = new List<CreateEntity>();
      }
      this.entities.add(entities);
      return this;
    }

    /**
     * Adds an dialogNodes to dialogNodes.
     *
     * @param dialogNodes the new dialogNodes
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialogNodes) {
      IBMWatsonValidator.notNull(dialogNodes, 'dialogNodes cannot be null');
      if (this.dialogNodes == null) {
        this.dialogNodes = new List<CreateDialogNode>();
      }
      this.dialogNodes.add(dialogNodes);
      return this;
    }

    /**
     * Adds an counterexamples to counterexamples.
     *
     * @param counterexamples the new counterexamples
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addCounterexamples(CreateCounterexample counterexamples) {
      IBMWatsonValidator.notNull(counterexamples, 'counterexamples cannot be null');
      if (this.counterexamples == null) {
        this.counterexamples = new List<CreateCounterexample>();
      }
      this.counterexamples.add(counterexamples);
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the language.
     *
     * @param language the language
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Set the intents.
     * Existing intents will be replaced.
     *
     * @param intents the intents
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder intents(List<CreateIntent> intents) {
      this.intents = intents;
      return this;
    }

    /**
     * Set the entities.
     * Existing entities will be replaced.
     *
     * @param entities the entities
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder entities(List<CreateEntity> entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the dialogNodes.
     * Existing dialogNodes will be replaced.
     *
     * @param dialogNodes the dialogNodes
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialogNodes) {
      this.dialogNodes = dialogNodes;
      return this;
    }

    /**
     * Set the counterexamples.
     * Existing counterexamples will be replaced.
     *
     * @param counterexamples the counterexamples
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder counterexamples(List<CreateCounterexample> counterexamples) {
      this.counterexamples = counterexamples;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the learningOptOut.
     *
     * @param learningOptOut the learningOptOut
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder learningOptOut(Boolean learningOptOut) {
      this.learningOptOut = learningOptOut;
      return this;
    }

    /**
     * Set the systemSettings.
     *
     * @param systemSettings the systemSettings
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder systemSettings(WorkspaceSystemSettings systemSettings) {
      this.systemSettings = systemSettings;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteCounterexample options.
   */
  public class DeleteCounterexampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the text.
     *
     * The text of a user input counterexample (for example, `What are you wearing?`).
     *
     * @return the text
     */
    public String text() {
      return text;
    }

    private DeleteCounterexampleOptions(DeleteCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
      text = builder.text;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder newBuilder() {
      return new DeleteCounterexampleOptionsBuilder(this);
    }

  }

  /**
   * DeleteCounterexampleOptions Builder.
   */
  public class DeleteCounterexampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;

    private DeleteCounterexampleOptionsBuilder(DeleteCounterexampleOptions deleteCounterexampleOptions) {
      workspaceId = deleteCounterexampleOptions.workspaceId;
      text = deleteCounterexampleOptions.text;
      this.requestHeaders.putAll(deleteCounterexampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param text the text
     */
    public DeleteCounterexampleOptionsBuilder(String workspaceId, String text) {
      this.workspaceId = workspaceId;
      this.text = text;
    }

    /**
     * Builds a DeleteCounterexampleOptions.
     *
     * @return the deleteCounterexampleOptions
     */
    public DeleteCounterexampleOptions build() {
      return new DeleteCounterexampleOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteDialogNode options.
   */
  public class DeleteDialogNodeOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the dialogNode.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialogNode
     */
    public String dialogNode() {
      return dialogNode;
    }

    private DeleteDialogNodeOptions(DeleteDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialogNode, 'dialogNode cannot be empty');
      workspaceId = builder.workspaceId;
      dialogNode = builder.dialogNode;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder newBuilder() {
      return new DeleteDialogNodeOptionsBuilder(this);
    }

  }

  /**
   * DeleteDialogNodeOptions Builder.
   */
  public class DeleteDialogNodeOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;

    private DeleteDialogNodeOptionsBuilder(DeleteDialogNodeOptions deleteDialogNodeOptions) {
      workspaceId = deleteDialogNodeOptions.workspaceId;
      dialogNode = deleteDialogNodeOptions.dialogNode;
      this.requestHeaders.putAll(deleteDialogNodeOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param dialogNode the dialogNode
     */
    public DeleteDialogNodeOptionsBuilder(String workspaceId, String dialogNode) {
      this.workspaceId = workspaceId;
      this.dialogNode = dialogNode;
    }

    /**
     * Builds a DeleteDialogNodeOptions.
     *
     * @return the deleteDialogNodeOptions
     */
    public DeleteDialogNodeOptions build() {
      return new DeleteDialogNodeOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the dialogNode.
     *
     * @param dialogNode the dialogNode
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialogNode = dialogNode;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteEntity options.
   */
  public class DeleteEntityOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }

    private DeleteEntityOptions(DeleteEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder newBuilder() {
      return new DeleteEntityOptionsBuilder(this);
    }

  }

  /**
   * DeleteEntityOptions Builder.
   */
  public class DeleteEntityOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;

    private DeleteEntityOptionsBuilder(DeleteEntityOptions deleteEntityOptions) {
      workspaceId = deleteEntityOptions.workspaceId;
      entity = deleteEntityOptions.entity;
      this.requestHeaders.putAll(deleteEntityOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     */
    public DeleteEntityOptionsBuilder(String workspaceId, String entity) {
      this.workspaceId = workspaceId;
      this.entity = entity;
    }

    /**
     * Builds a DeleteEntityOptions.
     *
     * @return the deleteEntityOptions
     */
    public DeleteEntityOptions build() {
      return new DeleteEntityOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteExample options.
   */
  public class DeleteExampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the text.
     *
     * The text of the user input example.
     *
     * @return the text
     */
    public String text() {
      return text;
    }

    private DeleteExampleOptions(DeleteExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      text = builder.text;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder newBuilder() {
      return new DeleteExampleOptionsBuilder(this);
    }

  }

  /**
   * DeleteExampleOptions Builder.
   */
  public class DeleteExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;

    private DeleteExampleOptionsBuilder(DeleteExampleOptions deleteExampleOptions) {
      workspaceId = deleteExampleOptions.workspaceId;
      intent = deleteExampleOptions.intent;
      text = deleteExampleOptions.text;
      this.requestHeaders.putAll(deleteExampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     * @param text the text
     */
    public DeleteExampleOptionsBuilder(String workspaceId, String intent, String text) {
      this.workspaceId = workspaceId;
      this.intent = intent;
      this.text = text;
    }

    /**
     * Builds a DeleteExampleOptions.
     *
     * @return the deleteExampleOptions
     */
    public DeleteExampleOptions build() {
      return new DeleteExampleOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteIntent options.
   */
  public class DeleteIntentOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }

    private DeleteIntentOptions(DeleteIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder newBuilder() {
      return new DeleteIntentOptionsBuilder(this);
    }

  }

  /**
   * DeleteIntentOptions Builder.
   */
  public class DeleteIntentOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;

    private DeleteIntentOptionsBuilder(DeleteIntentOptions deleteIntentOptions) {
      workspaceId = deleteIntentOptions.workspaceId;
      intent = deleteIntentOptions.intent;
      this.requestHeaders.putAll(deleteIntentOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     */
    public DeleteIntentOptionsBuilder(String workspaceId, String intent) {
      this.workspaceId = workspaceId;
      this.intent = intent;
    }

    /**
     * Builds a DeleteIntentOptions.
     *
     * @return the deleteIntentOptions
     */
    public DeleteIntentOptions build() {
      return new DeleteIntentOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteSynonym options.
   */
  public class DeleteSynonymOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the synonym.
     *
     * The text of the synonym.
     *
     * @return the synonym
     */
    public String synonym() {
      return synonym;
    }

    private DeleteSynonymOptions(DeleteSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym, 'synonym cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder newBuilder() {
      return new DeleteSynonymOptionsBuilder(this);
    }

  }

  /**
   * DeleteSynonymOptions Builder.
   */
  public class DeleteSynonymOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;

    private DeleteSynonymOptionsBuilder(DeleteSynonymOptions deleteSynonymOptions) {
      workspaceId = deleteSynonymOptions.workspaceId;
      entity = deleteSynonymOptions.entity;
      value = deleteSynonymOptions.value;
      synonym = deleteSynonymOptions.synonym;
      this.requestHeaders.putAll(deleteSynonymOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public DeleteSynonymOptionsBuilder(String workspaceId, String entity, String value, String synonym) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
    }

    /**
     * Builds a DeleteSynonymOptions.
     *
     * @return the deleteSynonymOptions
     */
    public DeleteSynonymOptions build() {
      return new DeleteSynonymOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the synonym.
     *
     * @param synonym the synonym
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder synonym(String synonym) {
      this.synonym = synonym;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteUserData options.
   */
  public class DeleteUserDataOptions extends IBMWatsonOptionsModel {
    private String customerId;
 
    /**
     * Gets the customerId.
     *
     * The customer ID for which all data is to be deleted.
     *
     * @return the customerId
     */
    public String customerId() {
      return customerId;
    }

    private DeleteUserDataOptions(DeleteUserDataOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.customerId, 'customerId cannot be null');
      customerId = builder.customerId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder newBuilder() {
      return new DeleteUserDataOptionsBuilder(this);
    }

  }

  /**
   * DeleteUserDataOptions Builder.
   */
  public class DeleteUserDataOptionsBuilder extends IBMWatsonOptionsModel {
    private String customerId;

    private DeleteUserDataOptionsBuilder(DeleteUserDataOptions deleteUserDataOptions) {
      customerId = deleteUserDataOptions.customerId;
      this.requestHeaders.putAll(deleteUserDataOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteUserDataOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param customerId the customerId
     */
    public DeleteUserDataOptionsBuilder(String customerId) {
      this.customerId = customerId;
    }

    /**
     * Builds a DeleteUserDataOptions.
     *
     * @return the deleteUserDataOptions
     */
    public DeleteUserDataOptions build() {
      return new DeleteUserDataOptions(this);
    }

    /**
     * Set the customerId.
     *
     * @param customerId the customerId
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder customerId(String customerId) {
      this.customerId = customerId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteValue options.
   */
  public class DeleteValueOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }

    private DeleteValueOptions(DeleteValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder newBuilder() {
      return new DeleteValueOptionsBuilder(this);
    }

  }

  /**
   * DeleteValueOptions Builder.
   */
  public class DeleteValueOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;

    private DeleteValueOptionsBuilder(DeleteValueOptions deleteValueOptions) {
      workspaceId = deleteValueOptions.workspaceId;
      entity = deleteValueOptions.entity;
      value = deleteValueOptions.value;
      this.requestHeaders.putAll(deleteValueOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     */
    public DeleteValueOptionsBuilder(String workspaceId, String entity, String value) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
    }

    /**
     * Builds a DeleteValueOptions.
     *
     * @return the deleteValueOptions
     */
    public DeleteValueOptions build() {
      return new DeleteValueOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteWorkspace options.
   */
  public class DeleteWorkspaceOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }

    private DeleteWorkspaceOptions(DeleteWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteWorkspaceOptions builder
     */
    public DeleteWorkspaceOptionsBuilder newBuilder() {
      return new DeleteWorkspaceOptionsBuilder(this);
    }

  }

  /**
   * DeleteWorkspaceOptions Builder.
   */
  public class DeleteWorkspaceOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;

    private DeleteWorkspaceOptionsBuilder(DeleteWorkspaceOptions deleteWorkspaceOptions) {
      workspaceId = deleteWorkspaceOptions.workspaceId;
      this.requestHeaders.putAll(deleteWorkspaceOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public DeleteWorkspaceOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a DeleteWorkspaceOptions.
     *
     * @return the deleteWorkspaceOptions
     */
    public DeleteWorkspaceOptions build() {
      return new DeleteWorkspaceOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteWorkspaceOptions builder
     */
    public DeleteWorkspaceOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteWorkspaceOptions builder
     */
    public DeleteWorkspaceOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * DialogNode.
   */
  public class DialogNode extends IBMWatsonResponseModel {
    private String dialog_node_serialized_name;
    private String description_serialized_name;
    private String conditions_serialized_name;
    private String parent_serialized_name;
    private String previous_sibling_serialized_name;
    private DialogNodeOutput output_serialized_name;
    private IBMWatsonMapModel context_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private DialogNodeNextStep next_step_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private List<DialogNodeAction> actions_serialized_name;
    private String title_serialized_name;
    private Boolean disabled_serialized_name;
    private String type_serialized_name;
    private String event_name_serialized_name;
    private String variable_serialized_name;
    private String digress_in_serialized_name;
    private String digress_out_serialized_name;
    private String digress_out_slots_serialized_name;
    private String user_label_serialized_name;
 
    /**
     * Gets the dialogNodeId.
     *
     * The dialog node ID.
     *
     * @return the dialogNodeId
     */
    @AuraEnabled
    public String getDialogNodeId() {
      return dialog_node_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the dialog node.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the conditions.
     *
     * The condition that triggers the dialog node.
     *
     * @return the conditions
     */
    @AuraEnabled
    public String getConditions() {
      return conditions_serialized_name;
    }
 
    /**
     * Gets the parent.
     *
     * The ID of the parent dialog node. This property is not returned if the dialog node has no parent.
     *
     * @return the parent
     */
    @AuraEnabled
    public String getParent() {
      return parent_serialized_name;
    }
 
    /**
     * Gets the previousSibling.
     *
     * The ID of the previous sibling dialog node. This property is not returned if the dialog node has no previous
     * sibling.
     *
     * @return the previousSibling
     */
    @AuraEnabled
    public String getPreviousSibling() {
      return previous_sibling_serialized_name;
    }
 
    /**
     * Gets the output.
     *
     * The output of the dialog node. For more information about how to specify dialog node output, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/dialog-overview.html#complex).
     *
     * @return the output
     */
    @AuraEnabled
    public DialogNodeOutput getOutput() {
      return output_serialized_name;
    }
 
    /**
     * Gets the context.
     *
     * The context (if defined) for the dialog node.
     *
     * @return the context
     */
    @AuraEnabled
    public IBMWatsonMapModel getContext() {
      return context_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata for the dialog node.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the nextStep.
     *
     * The next step to execute following this dialog node.
     *
     * @return the nextStep
     */
    @AuraEnabled
    public DialogNodeNextStep getNextStep() {
      return next_step_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the dialog node.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the most recent update to the dialog node.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the actions.
     *
     * The actions for the dialog node.
     *
     * @return the actions
     */
    @AuraEnabled
    public List<DialogNodeAction> getActions() {
      return actions_serialized_name;
    }
 
    /**
     * Gets the title.
     *
     * The alias used to identify the dialog node.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the disabled.
     *
     * For internal use only.
     *
     * @return the disabled
     */
    @AuraEnabled
    public Boolean getDisabled() {
      return disabled_serialized_name;
    }
 
    /**
     * Gets the nodeType.
     *
     * How the dialog node is processed.
     *
     * @return the nodeType
     */
    @AuraEnabled
    public String getNodeType() {
      return type_serialized_name;
    }
 
    /**
     * Gets the eventName.
     *
     * How an `event_handler` node is processed.
     *
     * @return the eventName
     */
    @AuraEnabled
    public String getEventName() {
      return event_name_serialized_name;
    }
 
    /**
     * Gets the variable.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the variable
     */
    @AuraEnabled
    public String getVariable() {
      return variable_serialized_name;
    }
 
    /**
     * Gets the digressIn.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the digressIn
     */
    @AuraEnabled
    public String getDigressIn() {
      return digress_in_serialized_name;
    }
 
    /**
     * Gets the digressOut.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the digressOut
     */
    @AuraEnabled
    public String getDigressOut() {
      return digress_out_serialized_name;
    }
 
    /**
     * Gets the digressOutSlots.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the digressOutSlots
     */
    @AuraEnabled
    public String getDigressOutSlots() {
      return digress_out_slots_serialized_name;
    }
 
    /**
     * Gets the userLabel.
     *
     * A label that can be displayed externally to describe the purpose of the node to users. This string must be no
     * longer than 512 characters.
     *
     * @return the userLabel
     */
    @AuraEnabled
    public String getUserLabel() {
      return user_label_serialized_name;
    }

    /**
     * Sets the dialogNodeId.
     *
     * @param dialogNodeId the new dialogNodeId
     */
    public void setDialogNodeId(final String dialogNodeId) {
      this.dialog_node_serialized_name = dialogNodeId;
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
     * Sets the conditions.
     *
     * @param conditions the new conditions
     */
    public void setConditions(final String conditions) {
      this.conditions_serialized_name = conditions;
    }

    /**
     * Sets the parent.
     *
     * @param parent the new parent
     */
    public void setParent(final String parent) {
      this.parent_serialized_name = parent;
    }

    /**
     * Sets the previousSibling.
     *
     * @param previousSibling the new previousSibling
     */
    public void setPreviousSibling(final String previousSibling) {
      this.previous_sibling_serialized_name = previousSibling;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final DialogNodeOutput output) {
      this.output_serialized_name = output;
    }

    /**
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final IBMWatsonMapModel context) {
      this.context_serialized_name = context;
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
     * Sets the nextStep.
     *
     * @param nextStep the new nextStep
     */
    public void setNextStep(final DialogNodeNextStep nextStep) {
      this.next_step_serialized_name = nextStep;
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
     * Sets the title.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title_serialized_name = title;
    }

    /**
     * Sets the disabled.
     *
     * @param disabled the new disabled
     */
    public void setDisabled(final Boolean disabled) {
      this.disabled_serialized_name = disabled;
    }

    /**
     * Sets the nodeType.
     *
     * @param nodeType the new nodeType
     */
    public void setNodeType(final String nodeType) {
      this.type_serialized_name = nodeType;
    }

    /**
     * Sets the eventName.
     *
     * @param eventName the new eventName
     */
    public void setEventName(final String eventName) {
      this.event_name_serialized_name = eventName;
    }

    /**
     * Sets the variable.
     *
     * @param variable the new variable
     */
    public void setVariable(final String variable) {
      this.variable_serialized_name = variable;
    }

    /**
     * Sets the digressIn.
     *
     * @param digressIn the new digressIn
     */
    public void setDigressIn(final String digressIn) {
      this.digress_in_serialized_name = digressIn;
    }

    /**
     * Sets the digressOut.
     *
     * @param digressOut the new digressOut
     */
    public void setDigressOut(final String digressOut) {
      this.digress_out_serialized_name = digressOut;
    }

    /**
     * Sets the digressOutSlots.
     *
     * @param digressOutSlots the new digressOutSlots
     */
    public void setDigressOutSlots(final String digressOutSlots) {
      this.digress_out_slots_serialized_name = digressOutSlots;
    }

    /**
     * Sets the userLabel.
     *
     * @param userLabel the new userLabel
     */
    public void setUserLabel(final String userLabel) {
      this.user_label_serialized_name = userLabel;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNode ret = (DialogNode) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for output
      DialogNodeOutput newOutput = (DialogNodeOutput) new DialogNodeOutput().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), DialogNodeOutput.class);
      ret.setOutput(newOutput);

      // calling custom deserializer for context
      IBMWatsonMapModel newContext = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getContext()), (Map<String, Object>) jsonMap.get('context_serialized_name'), IBMWatsonMapModel.class);
      ret.setContext(newContext);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for nextStep
      DialogNodeNextStep newNextStep = (DialogNodeNextStep) new DialogNodeNextStep().deserialize(JSON.serialize(ret.getNextStep()), (Map<String, Object>) jsonMap.get('next_step_serialized_name'), DialogNodeNextStep.class);
      ret.setNextStep(newNextStep);

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
        ret.setActions(newActions);
      }

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
   * An array of dialog nodes.
   */
  public class DialogNodeCollection extends IBMWatsonResponseModel {
    private List<DialogNode> dialog_nodes_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the dialogNodes.
     *
     * An array of objects describing the dialog nodes defined for the workspace.
     *
     * @return the dialogNodes
     */
    @AuraEnabled
    public List<DialogNode> getDialogNodes() {
      return dialog_nodes_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the dialogNodes.
     *
     * @param dialogNodes the new dialogNodes
     */
    public void setDialogNodes(final List<DialogNode> dialogNodes) {
      this.dialog_nodes_serialized_name = dialogNodes;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeCollection ret = (DialogNodeCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for dialogNodes
      List<DialogNode> newDialogNodes = new List<DialogNode>();
      List<DialogNode> deserializedDialogNodes = ret.getDialogNodes();
      if (deserializedDialogNodes != null) {
        for (Integer i = 0; i < deserializedDialogNodes.size(); i++) {
          DialogNode currentItem = ret.getDialogNodes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('dialog_nodes_serialized_name');
          DialogNode newItem = (DialogNode) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNode.class);
          newDialogNodes.add(newItem);
        }
        ret.setDialogNodes(newDialogNodes);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * The next step to execute following this dialog node.
   */
  public class DialogNodeNextStep extends IBMWatsonGenericModel {
    private String behavior_serialized_name;
    private String dialog_node_serialized_name;
    private String selector_serialized_name;
 
    /**
     * Gets the behavior.
     *
     * What happens after the dialog node completes. The valid values depend on the node type:
     * - The following values are valid for any node:
     *   - `get_user_input`
     *   - `skip_user_input`
     *   - `jump_to`
     * - If the node is of type `event_handler` and its parent node is of type `slot` or `frame`, additional values are
     * also valid:
     *   - if **event_name**=`filled` and the type of the parent node is `slot`:
     *     - `reprompt`
     *     - `skip_all_slots`
     * - if **event_name**=`nomatch` and the type of the parent node is `slot`:
     *     - `reprompt`
     *     - `skip_slot`
     *     - `skip_all_slots`
     * - if **event_name**=`generic` and the type of the parent node is `frame`:
     *     - `reprompt`
     *     - `skip_slot`
     *     - `skip_all_slots`
     *
     * If you specify `jump_to`, then you must also specify a value for the `dialog_node` property.
     *
     * @return the behavior
     */
    @AuraEnabled
    public String getBehavior() {
      return behavior_serialized_name;
    }
 
    /**
     * Gets the dialogNode.
     *
     * The ID of the dialog node to process next. This parameter is required if **behavior**=`jump_to`.
     *
     * @return the dialogNode
     */
    @AuraEnabled
    public String getDialogNode() {
      return dialog_node_serialized_name;
    }
 
    /**
     * Gets the selector.
     *
     * Which part of the dialog node to process next.
     *
     * @return the selector
     */
    @AuraEnabled
    public String getSelector() {
      return selector_serialized_name;
    }

    /**
     * Sets the behavior.
     *
     * @param behavior the new behavior
     */
    public void setBehavior(final String behavior) {
      this.behavior_serialized_name = behavior;
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
     * Sets the selector.
     *
     * @param selector the new selector
     */
    public void setSelector(final String selector) {
      this.selector_serialized_name = selector;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeNextStep ret = (DialogNodeNextStep) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The output of the dialog node. For more information about how to specify dialog node output, see the [documentation](https://cloud.ibm.com/docs/services/assistant/dialog-overview.html#complex).
   */
  public class DialogNodeOutput extends IBMWatsonDynamicModel {
    private List<DialogNodeOutputGeneric> generic_serialized_name;
    private DialogNodeOutputModifiers modifiers_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the generic.
     *
     * @return the generic
     */
    @AuraEnabled
    public List<DialogNodeOutputGeneric> getGeneric() {
      return generic_serialized_name;
    }

    /**
     * Gets the modifiers.
     *
     * @return the modifiers
     */
    @AuraEnabled
    public DialogNodeOutputModifiers getModifiers() {
      return modifiers_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to DialogNodeOutput.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    /**
     * Sets the generic.
     *
     * @param generic the new generic
     */
    public void setGeneric(final List<DialogNodeOutputGeneric> generic) {
      this.generic_serialized_name = generic;
    }

    /**
     * Sets the modifiers.
     *
     * @param modifiers the new modifiers
     */
    public void setModifiers(final DialogNodeOutputModifiers modifiers) {
      this.modifiers_serialized_name = modifiers;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeOutput ret = (DialogNodeOutput) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for generic
      List<DialogNodeOutputGeneric> newGeneric = new List<DialogNodeOutputGeneric>();
      List<DialogNodeOutputGeneric> deserializedGeneric = ret.getGeneric();
      if (deserializedGeneric != null) {
        for (Integer i = 0; i < deserializedGeneric.size(); i++) {
          DialogNodeOutputGeneric currentItem = ret.getGeneric().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('generic_serialized_name');
          DialogNodeOutputGeneric newItem = (DialogNodeOutputGeneric) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNodeOutputGeneric.class);
          newGeneric.add(newItem);
        }
        ret.setGeneric(newGeneric);
      }

      // calling custom deserializer for modifiers
      DialogNodeOutputModifiers newModifiers = (DialogNodeOutputModifiers) new DialogNodeOutputModifiers().deserialize(JSON.serialize(ret.getModifiers()), (Map<String, Object>) jsonMap.get('modifiers_serialized_name'), DialogNodeOutputModifiers.class);
      ret.setModifiers(newModifiers);

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
   * DialogNodeOutputGeneric.
   */
  public class DialogNodeOutputGeneric extends IBMWatsonGenericModel {
    private String response_type_serialized_name;
    private List<DialogNodeOutputTextValuesElement> values_serialized_name;
    private String selection_policy_serialized_name;
    private String delimiter_serialized_name;
    private Long time_serialized_name;
    private Boolean typing_serialized_name;
    private String source_serialized_name;
    private String title_serialized_name;
    private String description_serialized_name;
    private String preference_serialized_name;
    private List<DialogNodeOutputOptionsElement> options_serialized_name;
    private String message_to_human_agent_serialized_name;
 
    /**
     * Gets the responseType.
     *
     * The type of response returned by the dialog node. The specified response type must be supported by the client
     * application or channel.
     *
     * @return the responseType
     */
    @AuraEnabled
    public String getResponseType() {
      return response_type_serialized_name;
    }
 
    /**
     * Gets the values.
     *
     * A list of one or more objects defining text responses. Required when **response_type**=`text`.
     *
     * @return the values
     */
    @AuraEnabled
    public List<DialogNodeOutputTextValuesElement> getValues() {
      return values_serialized_name;
    }
 
    /**
     * Gets the selectionPolicy.
     *
     * How a response is selected from the list, if more than one response is specified. Valid only when
     * **response_type**=`text`.
     *
     * @return the selectionPolicy
     */
    @AuraEnabled
    public String getSelectionPolicy() {
      return selection_policy_serialized_name;
    }
 
    /**
     * Gets the delimiter.
     *
     * The delimiter to use as a separator between responses when `selection_policy`=`multiline`.
     *
     * @return the delimiter
     */
    @AuraEnabled
    public String getDelimiter() {
      return delimiter_serialized_name;
    }
 
    /**
     * Gets the xtime.
     *
     * How long to pause, in milliseconds. The valid values are from 0 to 10000. Valid only when
     * **response_type**=`pause`.
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
     * Whether to send a "user is typing" event during the pause. Ignored if the channel does not support this event.
     * Valid only when **response_type**=`pause`.
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
     * The URL of the image. Required when **response_type**=`image`.
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
     * An optional title to show before the response. Valid only when **response_type**=`image` or `option`. This string
     * must be no longer than 512 characters.
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
     * An optional description to show with the response. Valid only when **response_type**=`image` or `option`. This
     * string must be no longer than 256 characters.
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
     * The preferred type of control to display, if supported by the channel. Valid only when
     * **response_type**=`option`.
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
     * An array of objects describing the options from which the user can choose. You can include up to 20 options.
     * Required when **response_type**=`option`.
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
     * An optional message to be sent to the human agent who will be taking over the conversation. Valid only when
     * **reponse_type**=`connect_to_agent`. This string must be no longer than 256 characters.
     *
     * @return the messageToHumanAgent
     */
    @AuraEnabled
    public String getMessageToHumanAgent() {
      return message_to_human_agent_serialized_name;
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
     * Sets the values.
     *
     * @param values the new values
     */
    public void setValues(final List<DialogNodeOutputTextValuesElement> values) {
      this.values_serialized_name = values;
    }

    /**
     * Sets the selectionPolicy.
     *
     * @param selectionPolicy the new selectionPolicy
     */
    public void setSelectionPolicy(final String selectionPolicy) {
      this.selection_policy_serialized_name = selectionPolicy;
    }

    /**
     * Sets the delimiter.
     *
     * @param delimiter the new delimiter
     */
    public void setDelimiter(final String delimiter) {
      this.delimiter_serialized_name = delimiter;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeOutputGeneric ret = (DialogNodeOutputGeneric) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for values
      List<DialogNodeOutputTextValuesElement> newValues = new List<DialogNodeOutputTextValuesElement>();
      List<DialogNodeOutputTextValuesElement> deserializedValues = ret.getValues();
      if (deserializedValues != null) {
        for (Integer i = 0; i < deserializedValues.size(); i++) {
          DialogNodeOutputTextValuesElement currentItem = ret.getValues().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('values_serialized_name');
          DialogNodeOutputTextValuesElement newItem = (DialogNodeOutputTextValuesElement) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNodeOutputTextValuesElement.class);
          newValues.add(newItem);
        }
        ret.setValues(newValues);
      }

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
        ret.setOptions(newOptions);
      }

      return ret;
    }
  }

  /**
   * Options that modify how specified output is handled.
   */
  public class DialogNodeOutputModifiers extends IBMWatsonGenericModel {
    private Boolean overwrite_serialized_name;
 
    /**
     * Gets the overwrite.
     *
     * Whether values in the output will overwrite output values in an array specified by previously executed dialog
     * nodes. If this option is set to **false**, new values will be appended to previously specified values.
     *
     * @return the overwrite
     */
    @AuraEnabled
    public Boolean getOverwrite() {
      return overwrite_serialized_name;
    }

    /**
     * Sets the overwrite.
     *
     * @param overwrite the new overwrite
     */
    public void setOverwrite(final Boolean overwrite) {
      this.overwrite_serialized_name = overwrite;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeOutputModifiers ret = (DialogNodeOutputModifiers) super.deserialize(jsonString, jsonMap, classType);

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
     * An object defining the message input to be sent to the Watson Assistant service if the user selects the
     * corresponding option.
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
   * An object defining the message input to be sent to the Watson Assistant service if the user selects the
   * corresponding option.
   */
  public class DialogNodeOutputOptionsElementValue extends IBMWatsonGenericModel {
    private InputData input_serialized_name;
 
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    @AuraEnabled
    public InputData getInput() {
      return input_serialized_name;
    }

    /**
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final InputData input) {
      this.input_serialized_name = input;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeOutputOptionsElementValue ret = (DialogNodeOutputOptionsElementValue) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for input
      InputData newInput = (InputData) new InputData().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), InputData.class);
      ret.setInput(newInput);

      return ret;
    }
  }

  /**
   * DialogNodeOutputTextValuesElement.
   */
  public class DialogNodeOutputTextValuesElement extends IBMWatsonGenericModel {
    private String text_serialized_name;
 
    /**
     * Gets the text.
     *
     * The text of a response. This string can include newline characters (`
     * `), Markdown tagging, or other special characters, if supported by the channel. It must be no longer than 4096
     * characters.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNodeOutputTextValuesElement ret = (DialogNodeOutputTextValuesElement) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * DialogNodeVisitedDetails.
   */
  public class DialogNodeVisitedDetails extends IBMWatsonGenericModel {
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

      DialogNodeVisitedDetails ret = (DialogNodeVisitedDetails) super.deserialize(jsonString, jsonMap, classType);

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
        ret.setOptions(newOptions);
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
        ret.setSuggestions(newSuggestions);
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
     * An object defining the message input, intents, and entities to be sent to the Watson Assistant service if the
     * user selects the corresponding disambiguation option.
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
   * An object defining the message input, intents, and entities to be sent to the Watson Assistant service if the user
   * selects the corresponding disambiguation option.
   */
  public class DialogSuggestionValue extends IBMWatsonGenericModel {
    private InputData input_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
 
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    @AuraEnabled
    public InputData getInput() {
      return input_serialized_name;
    }
 
    /**
     * Gets the intents.
     *
     * An array of intents to be sent along with the user input.
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
     * An array of entities to be sent along with the user input.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<RuntimeEntity> getEntities() {
      return entities_serialized_name;
    }

    /**
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final InputData input) {
      this.input_serialized_name = input;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogSuggestionValue ret = (DialogSuggestionValue) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for input
      InputData newInput = (InputData) new InputData().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), InputData.class);
      ret.setInput(newInput);

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
        ret.setIntents(newIntents);
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
        ret.setEntities(newEntities);
      }

      return ret;
    }
  }

  /**
   * Entity.
   */
  public class Entity extends IBMWatsonResponseModel {
    private String entity_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean fuzzy_match_serialized_name;
 
    /**
     * Gets the entityName.
     *
     * The name of the entity.
     *
     * @return the entityName
     */
    @AuraEnabled
    public String getEntityName() {
      return entity_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the entity.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the fuzzyMatch.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzyMatch
     */
    @AuraEnabled
    public Boolean getFuzzyMatch() {
      return fuzzy_match_serialized_name;
    }

    /**
     * Sets the entityName.
     *
     * @param entityName the new entityName
     */
    public void setEntityName(final String entityName) {
      this.entity_serialized_name = entityName;
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
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the fuzzyMatch.
     *
     * @param fuzzyMatch the new fuzzyMatch
     */
    public void setFuzzyMatch(final Boolean fuzzyMatch) {
      this.fuzzy_match_serialized_name = fuzzyMatch;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Entity ret = (Entity) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      return ret;
    }
  }

  /**
   * An array of entities.
   */
  public class EntityCollection extends IBMWatsonResponseModel {
    private List<EntityExport> entities_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the entities.
     *
     * An array of objects describing the entities defined for the workspace.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<EntityExport> getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntityExport> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EntityCollection ret = (EntityCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for entities
      List<EntityExport> newEntities = new List<EntityExport>();
      List<EntityExport> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          EntityExport currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          EntityExport newItem = (EntityExport) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), EntityExport.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * EntityExport.
   */
  public class EntityExport extends IBMWatsonResponseModel {
    private String entity_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean fuzzy_match_serialized_name;
    private List<ValueExport> values_serialized_name;
 
    /**
     * Gets the entityName.
     *
     * The name of the entity.
     *
     * @return the entityName
     */
    @AuraEnabled
    public String getEntityName() {
      return entity_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the entity.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the fuzzyMatch.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzyMatch
     */
    @AuraEnabled
    public Boolean getFuzzyMatch() {
      return fuzzy_match_serialized_name;
    }
 
    /**
     * Gets the values.
     *
     * An array objects describing the entity values.
     *
     * @return the values
     */
    @AuraEnabled
    public List<ValueExport> getValues() {
      return values_serialized_name;
    }

    /**
     * Sets the entityName.
     *
     * @param entityName the new entityName
     */
    public void setEntityName(final String entityName) {
      this.entity_serialized_name = entityName;
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
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the fuzzyMatch.
     *
     * @param fuzzyMatch the new fuzzyMatch
     */
    public void setFuzzyMatch(final Boolean fuzzyMatch) {
      this.fuzzy_match_serialized_name = fuzzyMatch;
    }

    /**
     * Sets the values.
     *
     * @param values the new values
     */
    public void setValues(final List<ValueExport> values) {
      this.values_serialized_name = values;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EntityExport ret = (EntityExport) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for values
      List<ValueExport> newValues = new List<ValueExport>();
      List<ValueExport> deserializedValues = ret.getValues();
      if (deserializedValues != null) {
        for (Integer i = 0; i < deserializedValues.size(); i++) {
          ValueExport currentItem = ret.getValues().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('values_serialized_name');
          ValueExport newItem = (ValueExport) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ValueExport.class);
          newValues.add(newItem);
        }
        ret.setValues(newValues);
      }

      return ret;
    }
  }

  /**
   * An object describing a contextual entity mention.
   */
  public class EntityMention extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String intent_serialized_name;
    private List<Long> location_serialized_name;
 
    /**
     * Gets the exampleText.
     *
     * The text of the user input example.
     *
     * @return the exampleText
     */
    @AuraEnabled
    public String getExampleText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the intentName.
     *
     * The name of the intent.
     *
     * @return the intentName
     */
    @AuraEnabled
    public String getIntentName() {
      return intent_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * An array of zero-based character offsets that indicate where the entity mentions begin and end in the input text.
     *
     * @return the location
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
    }

    /**
     * Sets the exampleText.
     *
     * @param exampleText the new exampleText
     */
    public void setExampleText(final String exampleText) {
      this.text_serialized_name = exampleText;
    }

    /**
     * Sets the intentName.
     *
     * @param intentName the new intentName
     */
    public void setIntentName(final String intentName) {
      this.intent_serialized_name = intentName;
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

      EntityMention ret = (EntityMention) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * EntityMentionCollection.
   */
  public class EntityMentionCollection extends IBMWatsonResponseModel {
    private List<EntityMention> examples_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the examples.
     *
     * An array of objects describing the entity mentions defined for an entity.
     *
     * @return the examples
     */
    @AuraEnabled
    public List<EntityMention> getExamples() {
      return examples_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the examples.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<EntityMention> examples) {
      this.examples_serialized_name = examples;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EntityMentionCollection ret = (EntityMentionCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for examples
      List<EntityMention> newExamples = new List<EntityMention>();
      List<EntityMention> deserializedExamples = ret.getExamples();
      if (deserializedExamples != null) {
        for (Integer i = 0; i < deserializedExamples.size(); i++) {
          EntityMention currentItem = ret.getExamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('examples_serialized_name');
          EntityMention newItem = (EntityMention) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), EntityMention.class);
          newExamples.add(newItem);
        }
        ret.setExamples(newExamples);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * Example.
   */
  public class Example extends IBMWatsonResponseModel {
    private String text_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private List<Mentions> mentions_serialized_name;
 
    /**
     * Gets the exampleText.
     *
     * The text of the user input example.
     *
     * @return the exampleText
     */
    @AuraEnabled
    public String getExampleText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the example.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the example.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the mentions.
     *
     * An array of contextual entity mentions.
     *
     * @return the mentions
     */
    @AuraEnabled
    public List<Mentions> getMentions() {
      return mentions_serialized_name;
    }

    /**
     * Sets the exampleText.
     *
     * @param exampleText the new exampleText
     */
    public void setExampleText(final String exampleText) {
      this.text_serialized_name = exampleText;
    }

    /**
     * Sets the mentions.
     *
     * @param mentions the new mentions
     */
    public void setMentions(final List<Mentions> mentions) {
      this.mentions_serialized_name = mentions;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Example ret = (Example) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for mentions
      List<Mentions> newMentions = new List<Mentions>();
      List<Mentions> deserializedMentions = ret.getMentions();
      if (deserializedMentions != null) {
        for (Integer i = 0; i < deserializedMentions.size(); i++) {
          Mentions currentItem = ret.getMentions().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('mentions_serialized_name');
          Mentions newItem = (Mentions) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Mentions.class);
          newMentions.add(newItem);
        }
        ret.setMentions(newMentions);
      }

      return ret;
    }
  }

  /**
   * ExampleCollection.
   */
  public class ExampleCollection extends IBMWatsonResponseModel {
    private List<Example> examples_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the examples.
     *
     * An array of objects describing the examples defined for the intent.
     *
     * @return the examples
     */
    @AuraEnabled
    public List<Example> getExamples() {
      return examples_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the examples.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<Example> examples) {
      this.examples_serialized_name = examples;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ExampleCollection ret = (ExampleCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for examples
      List<Example> newExamples = new List<Example>();
      List<Example> deserializedExamples = ret.getExamples();
      if (deserializedExamples != null) {
        for (Integer i = 0; i < deserializedExamples.size(); i++) {
          Example currentItem = ret.getExamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('examples_serialized_name');
          Example newItem = (Example) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Example.class);
          newExamples.add(newItem);
        }
        ret.setExamples(newExamples);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * The getCounterexample options.
   */
  public class GetCounterexampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the text.
     *
     * The text of a user input counterexample (for example, `What are you wearing?`).
     *
     * @return the text
     */
    public String text() {
      return text;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private GetCounterexampleOptions(GetCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
      text = builder.text;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder newBuilder() {
      return new GetCounterexampleOptionsBuilder(this);
    }

  }

  /**
   * GetCounterexampleOptions Builder.
   */
  public class GetCounterexampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;
    private Boolean includeAudit;

    private GetCounterexampleOptionsBuilder(GetCounterexampleOptions getCounterexampleOptions) {
      workspaceId = getCounterexampleOptions.workspaceId;
      text = getCounterexampleOptions.text;
      includeAudit = getCounterexampleOptions.includeAudit;
      this.requestHeaders.putAll(getCounterexampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param text the text
     */
    public GetCounterexampleOptionsBuilder(String workspaceId, String text) {
      this.workspaceId = workspaceId;
      this.text = text;
    }

    /**
     * Builds a GetCounterexampleOptions.
     *
     * @return the getCounterexampleOptions
     */
    public GetCounterexampleOptions build() {
      return new GetCounterexampleOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getDialogNode options.
   */
  public class GetDialogNodeOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the dialogNode.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialogNode
     */
    public String dialogNode() {
      return dialogNode;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private GetDialogNodeOptions(GetDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialogNode, 'dialogNode cannot be empty');
      workspaceId = builder.workspaceId;
      dialogNode = builder.dialogNode;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder newBuilder() {
      return new GetDialogNodeOptionsBuilder(this);
    }

  }

  /**
   * GetDialogNodeOptions Builder.
   */
  public class GetDialogNodeOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;
    private Boolean includeAudit;

    private GetDialogNodeOptionsBuilder(GetDialogNodeOptions getDialogNodeOptions) {
      workspaceId = getDialogNodeOptions.workspaceId;
      dialogNode = getDialogNodeOptions.dialogNode;
      includeAudit = getDialogNodeOptions.includeAudit;
      this.requestHeaders.putAll(getDialogNodeOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param dialogNode the dialogNode
     */
    public GetDialogNodeOptionsBuilder(String workspaceId, String dialogNode) {
      this.workspaceId = workspaceId;
      this.dialogNode = dialogNode;
    }

    /**
     * Builds a GetDialogNodeOptions.
     *
     * @return the getDialogNodeOptions
     */
    public GetDialogNodeOptions build() {
      return new GetDialogNodeOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the dialogNode.
     *
     * @param dialogNode the dialogNode
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialogNode = dialogNode;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getEntity options.
   */
  public class GetEntityOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private GetEntityOptions(GetEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      xexport = builder.xexport;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetEntityOptions builder
     */
    public GetEntityOptionsBuilder newBuilder() {
      return new GetEntityOptionsBuilder(this);
    }

  }

  /**
   * GetEntityOptions Builder.
   */
  public class GetEntityOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Boolean includeAudit;

    private GetEntityOptionsBuilder(GetEntityOptions getEntityOptions) {
      workspaceId = getEntityOptions.workspaceId;
      entity = getEntityOptions.entity;
      xexport = getEntityOptions.xexport;
      includeAudit = getEntityOptions.includeAudit;
      this.requestHeaders.putAll(getEntityOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     */
    public GetEntityOptionsBuilder(String workspaceId, String entity) {
      this.workspaceId = workspaceId;
      this.entity = entity;
    }

    /**
     * Builds a GetEntityOptions.
     *
     * @return the getEntityOptions
     */
    public GetEntityOptions build() {
      return new GetEntityOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getExample options.
   */
  public class GetExampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the text.
     *
     * The text of the user input example.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private GetExampleOptions(GetExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      text = builder.text;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetExampleOptions builder
     */
    public GetExampleOptionsBuilder newBuilder() {
      return new GetExampleOptionsBuilder(this);
    }

  }

  /**
   * GetExampleOptions Builder.
   */
  public class GetExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;
    private Boolean includeAudit;

    private GetExampleOptionsBuilder(GetExampleOptions getExampleOptions) {
      workspaceId = getExampleOptions.workspaceId;
      intent = getExampleOptions.intent;
      text = getExampleOptions.text;
      includeAudit = getExampleOptions.includeAudit;
      this.requestHeaders.putAll(getExampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     * @param text the text
     */
    public GetExampleOptionsBuilder(String workspaceId, String intent, String text) {
      this.workspaceId = workspaceId;
      this.intent = intent;
      this.text = text;
    }

    /**
     * Builds a GetExampleOptions.
     *
     * @return the getExampleOptions
     */
    public GetExampleOptions build() {
      return new GetExampleOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getIntent options.
   */
  public class GetIntentOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private Boolean xexport;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private GetIntentOptions(GetIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      xexport = builder.xexport;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetIntentOptions builder
     */
    public GetIntentOptionsBuilder newBuilder() {
      return new GetIntentOptionsBuilder(this);
    }

  }

  /**
   * GetIntentOptions Builder.
   */
  public class GetIntentOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private Boolean xexport;
    private Boolean includeAudit;

    private GetIntentOptionsBuilder(GetIntentOptions getIntentOptions) {
      workspaceId = getIntentOptions.workspaceId;
      intent = getIntentOptions.intent;
      xexport = getIntentOptions.xexport;
      includeAudit = getIntentOptions.includeAudit;
      this.requestHeaders.putAll(getIntentOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     */
    public GetIntentOptionsBuilder(String workspaceId, String intent) {
      this.workspaceId = workspaceId;
      this.intent = intent;
    }

    /**
     * Builds a GetIntentOptions.
     *
     * @return the getIntentOptions
     */
    public GetIntentOptions build() {
      return new GetIntentOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getSynonym options.
   */
  public class GetSynonymOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the synonym.
     *
     * The text of the synonym.
     *
     * @return the synonym
     */
    public String synonym() {
      return synonym;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private GetSynonymOptions(GetSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym, 'synonym cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder newBuilder() {
      return new GetSynonymOptionsBuilder(this);
    }

  }

  /**
   * GetSynonymOptions Builder.
   */
  public class GetSynonymOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    private Boolean includeAudit;

    private GetSynonymOptionsBuilder(GetSynonymOptions getSynonymOptions) {
      workspaceId = getSynonymOptions.workspaceId;
      entity = getSynonymOptions.entity;
      value = getSynonymOptions.value;
      synonym = getSynonymOptions.synonym;
      includeAudit = getSynonymOptions.includeAudit;
      this.requestHeaders.putAll(getSynonymOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public GetSynonymOptionsBuilder(String workspaceId, String entity, String value, String synonym) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
    }

    /**
     * Builds a GetSynonymOptions.
     *
     * @return the getSynonymOptions
     */
    public GetSynonymOptions build() {
      return new GetSynonymOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the synonym.
     *
     * @param synonym the synonym
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder synonym(String synonym) {
      this.synonym = synonym;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getValue options.
   */
  public class GetValueOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private Boolean xexport;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private GetValueOptions(GetValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      xexport = builder.xexport;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetValueOptions builder
     */
    public GetValueOptionsBuilder newBuilder() {
      return new GetValueOptionsBuilder(this);
    }

  }

  /**
   * GetValueOptions Builder.
   */
  public class GetValueOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private Boolean xexport;
    private Boolean includeAudit;

    private GetValueOptionsBuilder(GetValueOptions getValueOptions) {
      workspaceId = getValueOptions.workspaceId;
      entity = getValueOptions.entity;
      value = getValueOptions.value;
      xexport = getValueOptions.xexport;
      includeAudit = getValueOptions.includeAudit;
      this.requestHeaders.putAll(getValueOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     */
    public GetValueOptionsBuilder(String workspaceId, String entity, String value) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
    }

    /**
     * Builds a GetValueOptions.
     *
     * @return the getValueOptions
     */
    public GetValueOptions build() {
      return new GetValueOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The getWorkspace options.
   */
  public class GetWorkspaceOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Boolean xexport;
    private Boolean includeAudit;
    private String xsort;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }
 
    /**
     * Gets the xsort.
     *
     * Indicates how the returned workspace data will be sorted. This parameter is valid only if **export**=`true`.
     * Specify `sort=stable` to sort all workspace objects by unique identifier, in ascending alphabetical order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }

    private GetWorkspaceOptions(GetWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xexport = builder.xexport;
      includeAudit = builder.includeAudit;
      xsort = builder.xsort;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder newBuilder() {
      return new GetWorkspaceOptionsBuilder(this);
    }

  }

  /**
   * GetWorkspaceOptions Builder.
   */
  public class GetWorkspaceOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Boolean xexport;
    private Boolean includeAudit;
    private String xsort;

    private GetWorkspaceOptionsBuilder(GetWorkspaceOptions getWorkspaceOptions) {
      workspaceId = getWorkspaceOptions.workspaceId;
      xexport = getWorkspaceOptions.xexport;
      includeAudit = getWorkspaceOptions.includeAudit;
      xsort = getWorkspaceOptions.xsort;
      this.requestHeaders.putAll(getWorkspaceOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public GetWorkspaceOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a GetWorkspaceOptions.
     *
     * @return the getWorkspaceOptions
     */
    public GetWorkspaceOptions build() {
      return new GetWorkspaceOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * An input object that includes the input text.
   */
  public class InputData extends IBMWatsonDynamicModel {
    private String text_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the text.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to InputData.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void text(final String text) {
      this.text_serialized_name = text;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      InputData ret = (InputData) super.deserialize(jsonString, jsonMap, classType);
      InputDataBuilder retBuilder = ret.newBuilder();

      InputData builderResult = retBuilder.build();
      Set<String> baseProps = ((Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(this))).keySet();

      for (String key : jsonMap.keySet()) {
        if (!baseProps.contains(key)) {
          builderResult.put(key, jsonMap.get(key));
        }
      }

      return builderResult;
    }
  }

  /**
   * Intent.
   */
  public class Intent extends IBMWatsonResponseModel {
    private String intent_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String description_serialized_name;
 
    /**
     * Gets the intentName.
     *
     * The name of the intent.
     *
     * @return the intentName
     */
    @AuraEnabled
    public String getIntentName() {
      return intent_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the intent.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the intent.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the intent.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }

    /**
     * Sets the intentName.
     *
     * @param intentName the new intentName
     */
    public void setIntentName(final String intentName) {
      this.intent_serialized_name = intentName;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Intent ret = (Intent) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * IntentCollection.
   */
  public class IntentCollection extends IBMWatsonResponseModel {
    private List<IntentExport> intents_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the intents.
     *
     * An array of objects describing the intents defined for the workspace.
     *
     * @return the intents
     */
    @AuraEnabled
    public List<IntentExport> getIntents() {
      return intents_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<IntentExport> intents) {
      this.intents_serialized_name = intents;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      IntentCollection ret = (IntentCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for intents
      List<IntentExport> newIntents = new List<IntentExport>();
      List<IntentExport> deserializedIntents = ret.getIntents();
      if (deserializedIntents != null) {
        for (Integer i = 0; i < deserializedIntents.size(); i++) {
          IntentExport currentItem = ret.getIntents().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('intents_serialized_name');
          IntentExport newItem = (IntentExport) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), IntentExport.class);
          newIntents.add(newItem);
        }
        ret.setIntents(newIntents);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * IntentExport.
   */
  public class IntentExport extends IBMWatsonResponseModel {
    private String intent_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String description_serialized_name;
    private List<Example> examples_serialized_name;
 
    /**
     * Gets the intentName.
     *
     * The name of the intent.
     *
     * @return the intentName
     */
    @AuraEnabled
    public String getIntentName() {
      return intent_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the intent.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the intent.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the intent.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the examples.
     *
     * An array of objects describing the user input examples for the intent.
     *
     * @return the examples
     */
    @AuraEnabled
    public List<Example> getExamples() {
      return examples_serialized_name;
    }

    /**
     * Sets the intentName.
     *
     * @param intentName the new intentName
     */
    public void setIntentName(final String intentName) {
      this.intent_serialized_name = intentName;
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
     * Sets the examples.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<Example> examples) {
      this.examples_serialized_name = examples;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      IntentExport ret = (IntentExport) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for examples
      List<Example> newExamples = new List<Example>();
      List<Example> deserializedExamples = ret.getExamples();
      if (deserializedExamples != null) {
        for (Integer i = 0; i < deserializedExamples.size(); i++) {
          Example currentItem = ret.getExamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('examples_serialized_name');
          Example newItem = (Example) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Example.class);
          newExamples.add(newItem);
        }
        ret.setExamples(newExamples);
      }

      return ret;
    }
  }

  /**
   * The listAllLogs options.
   */
  public class ListAllLogsOptions extends IBMWatsonOptionsModel {
    private String filter;
    private String xsort;
    private Long pageLimit;
    private String cursor;
 
    /**
     * Gets the filter.
     *
     * A cacheable parameter that limits the results to those matching the specified filter. You must specify a filter
     * query that includes a value for `language`, as well as a value for `workspace_id` or
     * `request.context.metadata.deployment`. For more information, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/filter-reference.html#filter-query-syntax).
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the xsort.
     *
     * How to sort the returned log events. You can sort by **request_timestamp**. To reverse the sort order, prefix the
     * parameter value with a minus sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }

    private ListAllLogsOptions(ListAllLogsOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.filter, 'filter cannot be null');
      filter = builder.filter;
      xsort = builder.xsort;
      pageLimit = builder.pageLimit;
      cursor = builder.cursor;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder newBuilder() {
      return new ListAllLogsOptionsBuilder(this);
    }

  }

  /**
   * ListAllLogsOptions Builder.
   */
  public class ListAllLogsOptionsBuilder extends IBMWatsonOptionsModel {
    private String filter;
    private String xsort;
    private Long pageLimit;
    private String cursor;

    private ListAllLogsOptionsBuilder(ListAllLogsOptions listAllLogsOptions) {
      filter = listAllLogsOptions.filter;
      xsort = listAllLogsOptions.xsort;
      pageLimit = listAllLogsOptions.pageLimit;
      cursor = listAllLogsOptions.cursor;
      this.requestHeaders.putAll(listAllLogsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListAllLogsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param filter the filter
     */
    public ListAllLogsOptionsBuilder(String filter) {
      this.filter = filter;
    }

    /**
     * Builds a ListAllLogsOptions.
     *
     * @return the listAllLogsOptions
     */
    public ListAllLogsOptions build() {
      return new ListAllLogsOptions(this);
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listCounterexamples options.
   */
  public class ListCounterexamplesOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned counterexamples will be sorted. To reverse the sort order, prefix the value with
     * a minus sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListCounterexamplesOptions(ListCounterexamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder newBuilder() {
      return new ListCounterexamplesOptionsBuilder(this);
    }

  }

  /**
   * ListCounterexamplesOptions Builder.
   */
  public class ListCounterexamplesOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListCounterexamplesOptionsBuilder(ListCounterexamplesOptions listCounterexamplesOptions) {
      workspaceId = listCounterexamplesOptions.workspaceId;
      pageLimit = listCounterexamplesOptions.pageLimit;
      includeCount = listCounterexamplesOptions.includeCount;
      xsort = listCounterexamplesOptions.xsort;
      cursor = listCounterexamplesOptions.cursor;
      includeAudit = listCounterexamplesOptions.includeAudit;
      this.requestHeaders.putAll(listCounterexamplesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListCounterexamplesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public ListCounterexamplesOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a ListCounterexamplesOptions.
     *
     * @return the listCounterexamplesOptions
     */
    public ListCounterexamplesOptions build() {
      return new ListCounterexamplesOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listDialogNodes options.
   */
  public class ListDialogNodesOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned dialog nodes will be sorted. To reverse the sort order, prefix the value with a
     * minus sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListDialogNodesOptions(ListDialogNodesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder newBuilder() {
      return new ListDialogNodesOptionsBuilder(this);
    }

  }

  /**
   * ListDialogNodesOptions Builder.
   */
  public class ListDialogNodesOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListDialogNodesOptionsBuilder(ListDialogNodesOptions listDialogNodesOptions) {
      workspaceId = listDialogNodesOptions.workspaceId;
      pageLimit = listDialogNodesOptions.pageLimit;
      includeCount = listDialogNodesOptions.includeCount;
      xsort = listDialogNodesOptions.xsort;
      cursor = listDialogNodesOptions.cursor;
      includeAudit = listDialogNodesOptions.includeAudit;
      this.requestHeaders.putAll(listDialogNodesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListDialogNodesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public ListDialogNodesOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a ListDialogNodesOptions.
     *
     * @return the listDialogNodesOptions
     */
    public ListDialogNodesOptions build() {
      return new ListDialogNodesOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listEntities options.
   */
  public class ListEntitiesOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned entities will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListEntitiesOptions(ListEntitiesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xexport = builder.xexport;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder newBuilder() {
      return new ListEntitiesOptionsBuilder(this);
    }

  }

  /**
   * ListEntitiesOptions Builder.
   */
  public class ListEntitiesOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListEntitiesOptionsBuilder(ListEntitiesOptions listEntitiesOptions) {
      workspaceId = listEntitiesOptions.workspaceId;
      xexport = listEntitiesOptions.xexport;
      pageLimit = listEntitiesOptions.pageLimit;
      includeCount = listEntitiesOptions.includeCount;
      xsort = listEntitiesOptions.xsort;
      cursor = listEntitiesOptions.cursor;
      includeAudit = listEntitiesOptions.includeAudit;
      this.requestHeaders.putAll(listEntitiesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListEntitiesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public ListEntitiesOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a ListEntitiesOptions.
     *
     * @return the listEntitiesOptions
     */
    public ListEntitiesOptions build() {
      return new ListEntitiesOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listExamples options.
   */
  public class ListExamplesOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned examples will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListExamplesOptions(ListExamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder newBuilder() {
      return new ListExamplesOptionsBuilder(this);
    }

  }

  /**
   * ListExamplesOptions Builder.
   */
  public class ListExamplesOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListExamplesOptionsBuilder(ListExamplesOptions listExamplesOptions) {
      workspaceId = listExamplesOptions.workspaceId;
      intent = listExamplesOptions.intent;
      pageLimit = listExamplesOptions.pageLimit;
      includeCount = listExamplesOptions.includeCount;
      xsort = listExamplesOptions.xsort;
      cursor = listExamplesOptions.cursor;
      includeAudit = listExamplesOptions.includeAudit;
      this.requestHeaders.putAll(listExamplesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListExamplesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     */
    public ListExamplesOptionsBuilder(String workspaceId, String intent) {
      this.workspaceId = workspaceId;
      this.intent = intent;
    }

    /**
     * Builds a ListExamplesOptions.
     *
     * @return the listExamplesOptions
     */
    public ListExamplesOptions build() {
      return new ListExamplesOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listIntents options.
   */
  public class ListIntentsOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned intents will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListIntentsOptions(ListIntentsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xexport = builder.xexport;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder newBuilder() {
      return new ListIntentsOptionsBuilder(this);
    }

  }

  /**
   * ListIntentsOptions Builder.
   */
  public class ListIntentsOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListIntentsOptionsBuilder(ListIntentsOptions listIntentsOptions) {
      workspaceId = listIntentsOptions.workspaceId;
      xexport = listIntentsOptions.xexport;
      pageLimit = listIntentsOptions.pageLimit;
      includeCount = listIntentsOptions.includeCount;
      xsort = listIntentsOptions.xsort;
      cursor = listIntentsOptions.cursor;
      includeAudit = listIntentsOptions.includeAudit;
      this.requestHeaders.putAll(listIntentsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListIntentsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public ListIntentsOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a ListIntentsOptions.
     *
     * @return the listIntentsOptions
     */
    public ListIntentsOptions build() {
      return new ListIntentsOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listLogs options.
   */
  public class ListLogsOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String xsort;
    private String filter;
    private Long pageLimit;
    private String cursor;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the xsort.
     *
     * How to sort the returned log events. You can sort by **request_timestamp**. To reverse the sort order, prefix the
     * parameter value with a minus sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the filter.
     *
     * A cacheable parameter that limits the results to those matching the specified filter. For more information, see
     * the [documentation](https://cloud.ibm.com/docs/services/assistant/filter-reference.html#filter-query-syntax).
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }

    private ListLogsOptions(ListLogsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xsort = builder.xsort;
      filter = builder.filter;
      pageLimit = builder.pageLimit;
      cursor = builder.cursor;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListLogsOptions builder
     */
    public ListLogsOptionsBuilder newBuilder() {
      return new ListLogsOptionsBuilder(this);
    }

  }

  /**
   * ListLogsOptions Builder.
   */
  public class ListLogsOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String xsort;
    private String filter;
    private Long pageLimit;
    private String cursor;

    private ListLogsOptionsBuilder(ListLogsOptions listLogsOptions) {
      workspaceId = listLogsOptions.workspaceId;
      xsort = listLogsOptions.xsort;
      filter = listLogsOptions.filter;
      pageLimit = listLogsOptions.pageLimit;
      cursor = listLogsOptions.cursor;
      this.requestHeaders.putAll(listLogsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListLogsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public ListLogsOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a ListLogsOptions.
     *
     * @return the listLogsOptions
     */
    public ListLogsOptions build() {
      return new ListLogsOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the filter.
     *
     * @param filter the filter
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder filter(String filter) {
      this.filter = filter;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listMentions options.
   */
  public class ListMentionsOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListMentionsOptions(ListMentionsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      xexport = builder.xexport;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListMentionsOptions builder
     */
    public ListMentionsOptionsBuilder newBuilder() {
      return new ListMentionsOptionsBuilder(this);
    }

  }

  /**
   * ListMentionsOptions Builder.
   */
  public class ListMentionsOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Boolean includeAudit;

    private ListMentionsOptionsBuilder(ListMentionsOptions listMentionsOptions) {
      workspaceId = listMentionsOptions.workspaceId;
      entity = listMentionsOptions.entity;
      xexport = listMentionsOptions.xexport;
      includeAudit = listMentionsOptions.includeAudit;
      this.requestHeaders.putAll(listMentionsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListMentionsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     */
    public ListMentionsOptionsBuilder(String workspaceId, String entity) {
      this.workspaceId = workspaceId;
      this.entity = entity;
    }

    /**
     * Builds a ListMentionsOptions.
     *
     * @return the listMentionsOptions
     */
    public ListMentionsOptions build() {
      return new ListMentionsOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListMentionsOptions builder
     */
    public ListMentionsOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the ListMentionsOptions builder
     */
    public ListMentionsOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the ListMentionsOptions builder
     */
    public ListMentionsOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListMentionsOptions builder
     */
    public ListMentionsOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListMentionsOptions builder
     */
    public ListMentionsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listSynonyms options.
   */
  public class ListSynonymsOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned entity value synonyms will be sorted. To reverse the sort order, prefix the value
     * with a minus sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListSynonymsOptions(ListSynonymsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder newBuilder() {
      return new ListSynonymsOptionsBuilder(this);
    }

  }

  /**
   * ListSynonymsOptions Builder.
   */
  public class ListSynonymsOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListSynonymsOptionsBuilder(ListSynonymsOptions listSynonymsOptions) {
      workspaceId = listSynonymsOptions.workspaceId;
      entity = listSynonymsOptions.entity;
      value = listSynonymsOptions.value;
      pageLimit = listSynonymsOptions.pageLimit;
      includeCount = listSynonymsOptions.includeCount;
      xsort = listSynonymsOptions.xsort;
      cursor = listSynonymsOptions.cursor;
      includeAudit = listSynonymsOptions.includeAudit;
      this.requestHeaders.putAll(listSynonymsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListSynonymsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     */
    public ListSynonymsOptionsBuilder(String workspaceId, String entity, String value) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
    }

    /**
     * Builds a ListSynonymsOptions.
     *
     * @return the listSynonymsOptions
     */
    public ListSynonymsOptions build() {
      return new ListSynonymsOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listValues options.
   */
  public class ListValuesOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned entity values will be sorted. To reverse the sort order, prefix the value with a
     * minus sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListValuesOptions(ListValuesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      xexport = builder.xexport;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListValuesOptions builder
     */
    public ListValuesOptionsBuilder newBuilder() {
      return new ListValuesOptionsBuilder(this);
    }

  }

  /**
   * ListValuesOptions Builder.
   */
  public class ListValuesOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListValuesOptionsBuilder(ListValuesOptions listValuesOptions) {
      workspaceId = listValuesOptions.workspaceId;
      entity = listValuesOptions.entity;
      xexport = listValuesOptions.xexport;
      pageLimit = listValuesOptions.pageLimit;
      includeCount = listValuesOptions.includeCount;
      xsort = listValuesOptions.xsort;
      cursor = listValuesOptions.cursor;
      includeAudit = listValuesOptions.includeAudit;
      this.requestHeaders.putAll(listValuesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListValuesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     */
    public ListValuesOptionsBuilder(String workspaceId, String entity) {
      this.workspaceId = workspaceId;
      this.entity = entity;
    }

    /**
     * Builds a ListValuesOptions.
     *
     * @return the listValuesOptions
     */
    public ListValuesOptions build() {
      return new ListValuesOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the xexport.
     *
     * @param xexport the xexport
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder xexport(Boolean xexport) {
      this.xexport = xexport;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listWorkspaces options.
   */
  public class ListWorkspacesOptions extends IBMWatsonOptionsModel {
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;
 
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the includeCount.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the includeCount
     */
    public Boolean includeCount() {
      return includeCount;
    }
 
    /**
     * Gets the xsort.
     *
     * The attribute by which returned workspaces will be sorted. To reverse the sort order, prefix the value with a
     * minus sign (`-`).
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the cursor.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the includeAudit.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the includeAudit
     */
    public Boolean includeAudit() {
      return includeAudit;
    }

    private ListWorkspacesOptions(ListWorkspacesOptionsBuilder builder) {
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
      cursor = builder.cursor;
      includeAudit = builder.includeAudit;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder newBuilder() {
      return new ListWorkspacesOptionsBuilder(this);
    }

  }

  /**
   * ListWorkspacesOptions Builder.
   */
  public class ListWorkspacesOptionsBuilder extends IBMWatsonOptionsModel {
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    private Boolean includeAudit;

    private ListWorkspacesOptionsBuilder(ListWorkspacesOptions listWorkspacesOptions) {
      pageLimit = listWorkspacesOptions.pageLimit;
      includeCount = listWorkspacesOptions.includeCount;
      xsort = listWorkspacesOptions.xsort;
      cursor = listWorkspacesOptions.cursor;
      includeAudit = listWorkspacesOptions.includeAudit;
      this.requestHeaders.putAll(listWorkspacesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListWorkspacesOptionsBuilder() {
    }

    /**
     * Builds a ListWorkspacesOptions.
     *
     * @return the listWorkspacesOptions
     */
    public ListWorkspacesOptions build() {
      return new ListWorkspacesOptions(this);
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the includeCount.
     *
     * @param includeCount the includeCount
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder includeCount(Boolean includeCount) {
      this.includeCount = includeCount;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the includeAudit.
     *
     * @param includeAudit the includeAudit
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.includeAudit = includeAudit;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * LogCollection.
   */
  public class LogCollection extends IBMWatsonResponseModel {
    private List<LogExport> logs_serialized_name;
    private LogPagination pagination_serialized_name;
 
    /**
     * Gets the logs.
     *
     * An array of objects describing log events.
     *
     * @return the logs
     */
    @AuraEnabled
    public List<LogExport> getLogs() {
      return logs_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public LogPagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the logs.
     *
     * @param logs the new logs
     */
    public void setLogs(final List<LogExport> logs) {
      this.logs_serialized_name = logs;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final LogPagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogCollection ret = (LogCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for logs
      List<LogExport> newLogs = new List<LogExport>();
      List<LogExport> deserializedLogs = ret.getLogs();
      if (deserializedLogs != null) {
        for (Integer i = 0; i < deserializedLogs.size(); i++) {
          LogExport currentItem = ret.getLogs().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('logs_serialized_name');
          LogExport newItem = (LogExport) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), LogExport.class);
          newLogs.add(newItem);
        }
        ret.setLogs(newLogs);
      }

      // calling custom deserializer for pagination
      LogPagination newPagination = (LogPagination) new LogPagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), LogPagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * LogExport.
   */
  public class LogExport extends IBMWatsonGenericModel {
    private MessageRequest request_serialized_name;
    private MessageResponse response_serialized_name;
    private String log_id_serialized_name;
    private String request_timestamp_serialized_name;
    private String response_timestamp_serialized_name;
    private String workspace_id_serialized_name;
    private String language_serialized_name;
 
    /**
     * Gets the request.
     *
     * A request sent to the workspace, including the user input and context.
     *
     * @return the request
     */
    @AuraEnabled
    public MessageRequest getRequest() {
      return request_serialized_name;
    }
 
    /**
     * Gets the response.
     *
     * The response sent by the workspace, including the output text, detected intents and entities, and context.
     *
     * @return the response
     */
    @AuraEnabled
    public MessageResponse getResponse() {
      return response_serialized_name;
    }
 
    /**
     * Gets the logId.
     *
     * A unique identifier for the logged event.
     *
     * @return the logId
     */
    @AuraEnabled
    public String getLogId() {
      return log_id_serialized_name;
    }
 
    /**
     * Gets the requestTimestamp.
     *
     * The timestamp for receipt of the message.
     *
     * @return the requestTimestamp
     */
    @AuraEnabled
    public String getRequestTimestamp() {
      return request_timestamp_serialized_name;
    }
 
    /**
     * Gets the responseTimestamp.
     *
     * The timestamp for the system response to the message.
     *
     * @return the responseTimestamp
     */
    @AuraEnabled
    public String getResponseTimestamp() {
      return response_timestamp_serialized_name;
    }
 
    /**
     * Gets the workspaceId.
     *
     * The unique identifier of the workspace where the request was made.
     *
     * @return the workspaceId
     */
    @AuraEnabled
    public String getWorkspaceId() {
      return workspace_id_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * The language of the workspace where the message request was made.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }

    /**
     * Sets the request.
     *
     * @param request the new request
     */
    public void setRequest(final MessageRequest request) {
      this.request_serialized_name = request;
    }

    /**
     * Sets the response.
     *
     * @param response the new response
     */
    public void setResponse(final MessageResponse response) {
      this.response_serialized_name = response;
    }

    /**
     * Sets the logId.
     *
     * @param logId the new logId
     */
    public void setLogId(final String logId) {
      this.log_id_serialized_name = logId;
    }

    /**
     * Sets the requestTimestamp.
     *
     * @param requestTimestamp the new requestTimestamp
     */
    public void setRequestTimestamp(final String requestTimestamp) {
      this.request_timestamp_serialized_name = requestTimestamp;
    }

    /**
     * Sets the responseTimestamp.
     *
     * @param responseTimestamp the new responseTimestamp
     */
    public void setResponseTimestamp(final String responseTimestamp) {
      this.response_timestamp_serialized_name = responseTimestamp;
    }

    /**
     * Sets the workspaceId.
     *
     * @param workspaceId the new workspaceId
     */
    public void setWorkspaceId(final String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogExport ret = (LogExport) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for request
      MessageRequest newRequest = (MessageRequest) new MessageRequest().deserialize(JSON.serialize(ret.getRequest()), (Map<String, Object>) jsonMap.get('request_serialized_name'), MessageRequest.class);
      ret.setRequest(newRequest);

      // calling custom deserializer for response
      MessageResponse newResponse = (MessageResponse) new MessageResponse().deserialize(JSON.serialize(ret.getResponse()), (Map<String, Object>) jsonMap.get('response_serialized_name'), MessageResponse.class);
      ret.setResponse(newResponse);

      return ret;
    }
  }

  /**
   * Log message details.
   */
  public class LogMessage extends IBMWatsonDynamicModel {
    private String level_serialized_name;
    private String msg_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the level.
     *
     * @return the level
     */
    @AuraEnabled
    public String getLevel() {
      return level_serialized_name;
    }

    /**
     * Gets the msg.
     *
     * @return the msg
     */
    @AuraEnabled
    public String getMsg() {
      return msg_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to LogMessage.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
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
     * Sets the msg.
     *
     * @param msg the new msg
     */
    public void setMsg(final String msg) {
      this.msg_serialized_name = msg;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogMessage ret = (LogMessage) super.deserialize(jsonString, jsonMap, classType);

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
   * The pagination data for the returned objects.
   */
  public class LogPagination extends IBMWatsonGenericModel {
    private String next_url_serialized_name;
    private Long matched_serialized_name;
    private String next_cursor_serialized_name;
 
    /**
     * Gets the nextUrl.
     *
     * The URL that will return the next page of results, if any.
     *
     * @return the nextUrl
     */
    @AuraEnabled
    public String getNextUrl() {
      return next_url_serialized_name;
    }
 
    /**
     * Gets the matched.
     *
     * Reserved for future use.
     *
     * @return the matched
     */
    @AuraEnabled
    public Long getMatched() {
      return matched_serialized_name;
    }
 
    /**
     * Gets the nextCursor.
     *
     * A token identifying the next page of results.
     *
     * @return the nextCursor
     */
    @AuraEnabled
    public String getNextCursor() {
      return next_cursor_serialized_name;
    }

    /**
     * Sets the nextUrl.
     *
     * @param nextUrl the new nextUrl
     */
    public void setNextUrl(final String nextUrl) {
      this.next_url_serialized_name = nextUrl;
    }

    /**
     * Sets the matched.
     *
     * @param matched the new matched
     */
    public void setMatched(final long matched) {
      this.matched_serialized_name = matched;
    }

    /**
     * Sets the nextCursor.
     *
     * @param nextCursor the new nextCursor
     */
    public void setNextCursor(final String nextCursor) {
      this.next_cursor_serialized_name = nextCursor;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LogPagination ret = (LogPagination) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A mention of a contextual entity.
   */
  public class Mentions extends IBMWatsonGenericModel {
    private String entity_serialized_name;
    private List<Long> location_serialized_name;
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
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
     * An array of zero-based character offsets that indicate where the entity mentions begin and end in the input text.
     *
     * @return the location
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Mentions ret = (Mentions) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Metadata related to the message.
   */
  public class MessageContextMetadata extends IBMWatsonGenericModel {
    private String deployment_serialized_name;
    private String user_id_serialized_name;
 
    /**
     * Gets the deployment.
     *
     * A label identifying the deployment environment, used for filtering log data. This string cannot contain carriage
     * return, newline, or tab characters.
     *
     * @return the deployment
     */
    @AuraEnabled
    public String getDeployment() {
      return deployment_serialized_name;
    }
 
    /**
     * Gets the userId.
     *
     * A string value that identifies the user who is interacting with the workspace. The client must provide a unique
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
     * Sets the deployment.
     *
     * @param deployment the new deployment
     */
    public void setDeployment(final String deployment) {
      this.deployment_serialized_name = deployment;
    }

    /**
     * Sets the userId.
     *
     * @param userId the new userId
     */
    public void setUserId(final String userId) {
      this.user_id_serialized_name = userId;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageContextMetadata ret = (MessageContextMetadata) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The text of the user input.
   */
  public class MessageInput extends IBMWatsonGenericModel {
    private String text_serialized_name;
 
    /**
     * Gets the text.
     *
     * The user's input.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text_serialized_name = text;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageInput ret = (MessageInput) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The message options.
   */
  public class MessageOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private InputData input;
    private Boolean alternateIntents;
    private Context context;
    private List<RuntimeEntity> entities;
    private List<RuntimeIntent> intents;
    private OutputData output;
    private Boolean nodesVisitedDetails;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    public InputData input() {
      return input;
    }
 
    /**
     * Gets the alternateIntents.
     *
     * Whether to return more than one intent. Set to `true` to return all matching intents.
     *
     * @return the alternateIntents
     */
    public Boolean alternateIntents() {
      return alternateIntents;
    }
 
    /**
     * Gets the context.
     *
     * State information for the conversation. To maintain state, include the context from the previous response.
     *
     * @return the context
     */
    public Context context() {
      return context;
    }
 
    /**
     * Gets the entities.
     *
     * Entities to use when evaluating the message. Include entities from the previous response to continue using those
     * entities rather than detecting entities in the new input.
     *
     * @return the entities
     */
    public List<RuntimeEntity> entities() {
      return entities;
    }
 
    /**
     * Gets the intents.
     *
     * Intents to use when evaluating the user input. Include intents from the previous response to continue using those
     * intents rather than trying to recognize intents in the new input.
     *
     * @return the intents
     */
    public List<RuntimeIntent> intents() {
      return intents;
    }
 
    /**
     * Gets the output.
     *
     * An output object that includes the response to the user, the dialog nodes that were triggered, and messages from
     * the log.
     *
     * @return the output
     */
    public OutputData output() {
      return output;
    }
 
    /**
     * Gets the nodesVisitedDetails.
     *
     * Whether to include additional diagnostic information about the dialog nodes that were visited during processing
     * of the message.
     *
     * @return the nodesVisitedDetails
     */
    public Boolean nodesVisitedDetails() {
      return nodesVisitedDetails;
    }

    private MessageOptions(MessageOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      input = builder.input;
      alternateIntents = builder.alternateIntents;
      context = builder.context;
      entities = builder.entities;
      intents = builder.intents;
      output = builder.output;
      nodesVisitedDetails = builder.nodesVisitedDetails;
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
    private String workspaceId;
    private InputData input;
    private Boolean alternateIntents;
    private Context context;
    private List<RuntimeEntity> entities;
    private List<RuntimeIntent> intents;
    private OutputData output;
    private Boolean nodesVisitedDetails;

    private MessageOptionsBuilder(MessageOptions messageOptions) {
      workspaceId = messageOptions.workspaceId;
      input = messageOptions.input;
      alternateIntents = messageOptions.alternateIntents;
      context = messageOptions.context;
      entities = messageOptions.entities;
      intents = messageOptions.intents;
      output = messageOptions.output;
      nodesVisitedDetails = messageOptions.nodesVisitedDetails;
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
     * @param workspaceId the workspaceId
     */
    public MessageOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
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
     * Adds an entities to entities.
     *
     * @param entities the new entities
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addEntities(RuntimeEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities == null) {
        this.entities = new List<RuntimeEntity>();
      }
      this.entities.add(entities);
      return this;
    }

    /**
     * Adds an intents to intents.
     *
     * @param intents the new intents
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addIntents(RuntimeIntent intents) {
      IBMWatsonValidator.notNull(intents, 'intents cannot be null');
      if (this.intents == null) {
        this.intents = new List<RuntimeIntent>();
      }
      this.intents.add(intents);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the input.
     *
     * @param input the input
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder input(InputData input) {
      this.input = input;
      return this;
    }

    /**
     * Set the alternateIntents.
     *
     * @param alternateIntents the alternateIntents
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder alternateIntents(Boolean alternateIntents) {
      this.alternateIntents = alternateIntents;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder context(Context context) {
      this.context = context;
      return this;
    }

    /**
     * Set the entities.
     * Existing entities will be replaced.
     *
     * @param entities the entities
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder entities(List<RuntimeEntity> entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the intents.
     * Existing intents will be replaced.
     *
     * @param intents the intents
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder intents(List<RuntimeIntent> intents) {
      this.intents = intents;
      return this;
    }

    /**
     * Set the output.
     *
     * @param output the output
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder output(OutputData output) {
      this.output = output;
      return this;
    }

    /**
     * Set the nodesVisitedDetails.
     *
     * @param nodesVisitedDetails the nodesVisitedDetails
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder nodesVisitedDetails(Boolean nodesVisitedDetails) {
      this.nodesVisitedDetails = nodesVisitedDetails;
      return this;
    }

    /**
     * Set the messageRequest.
     *
     * @param messageRequest the messageRequest
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder messageRequest(MessageRequest messageRequest) {
      this.input = messageRequest.getInput();
      this.alternateIntents = messageRequest.getAlternateIntents();
      this.context = messageRequest.getContext();
      this.entities = messageRequest.getEntities();
      this.intents = messageRequest.getIntents();
      this.output = messageRequest.getOutput();
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
   * A request sent to the workspace, including the user input and context.
   */
  public class MessageRequest extends IBMWatsonGenericModel {
    private InputData input_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private OutputData output_serialized_name;
 
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    @AuraEnabled
    public InputData getInput() {
      return input_serialized_name;
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
     * Gets the context.
     *
     * State information for the conversation. To maintain state, include the context from the previous response.
     *
     * @return the context
     */
    @AuraEnabled
    public Context getContext() {
      return context_serialized_name;
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
     * Gets the output.
     *
     * An output object that includes the response to the user, the dialog nodes that were triggered, and messages from
     * the log.
     *
     * @return the output
     */
    @AuraEnabled
    public OutputData getOutput() {
      return output_serialized_name;
    }

    /**
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final InputData input) {
      this.input_serialized_name = input;
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
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final Context context) {
      this.context_serialized_name = context;
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
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<RuntimeIntent> intents) {
      this.intents_serialized_name = intents;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final OutputData output) {
      this.output_serialized_name = output;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageRequest ret = (MessageRequest) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for input
      InputData newInput = (InputData) new InputData().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), InputData.class);
      ret.setInput(newInput);

      // calling custom deserializer for context
      Context newContext = (Context) new Context().deserialize(JSON.serialize(ret.getContext()), (Map<String, Object>) jsonMap.get('context_serialized_name'), Context.class);
      ret.setContext(newContext);

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
        ret.setEntities(newEntities);
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
        ret.setIntents(newIntents);
      }

      // calling custom deserializer for output
      OutputData newOutput = (OutputData) new OutputData().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), OutputData.class);
      ret.setOutput(newOutput);

      return ret;
    }
  }

  /**
   * The response sent by the workspace, including the output text, detected intents and entities, and context.
   */
  public class MessageResponse extends IBMWatsonResponseModel {
    private MessageInput input_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private OutputData output_serialized_name;
    private List<DialogNodeAction> actions_serialized_name;
 
    /**
     * Gets the input.
     *
     * The text of the user input.
     *
     * @return the input
     */
    @AuraEnabled
    public MessageInput getInput() {
      return input_serialized_name;
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
     * Gets the alternateIntents.
     *
     * Whether to return more than one intent. A value of `true` indicates that all matching intents are returned.
     *
     * @return the alternateIntents
     */
    @AuraEnabled
    public Boolean getAlternateIntents() {
      return alternate_intents_serialized_name;
    }
 
    /**
     * Gets the context.
     *
     * State information for the conversation. To maintain state, include the context from the previous response.
     *
     * @return the context
     */
    @AuraEnabled
    public Context getContext() {
      return context_serialized_name;
    }
 
    /**
     * Gets the output.
     *
     * An output object that includes the response to the user, the dialog nodes that were triggered, and messages from
     * the log.
     *
     * @return the output
     */
    @AuraEnabled
    public OutputData getOutput() {
      return output_serialized_name;
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
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final MessageInput input) {
      this.input_serialized_name = input;
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
     * Sets the alternateIntents.
     *
     * @param alternateIntents the new alternateIntents
     */
    public void setAlternateIntents(final Boolean alternateIntents) {
      this.alternate_intents_serialized_name = alternateIntents;
    }

    /**
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final Context context) {
      this.context_serialized_name = context;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final OutputData output) {
      this.output_serialized_name = output;
    }

    /**
     * Sets the actions.
     *
     * @param actions the new actions
     */
    public void setActions(final List<DialogNodeAction> actions) {
      this.actions_serialized_name = actions;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageResponse ret = (MessageResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for input
      MessageInput newInput = (MessageInput) new MessageInput().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), MessageInput.class);
      ret.setInput(newInput);

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
        ret.setIntents(newIntents);
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
        ret.setEntities(newEntities);
      }

      // calling custom deserializer for context
      Context newContext = (Context) new Context().deserialize(JSON.serialize(ret.getContext()), (Map<String, Object>) jsonMap.get('context_serialized_name'), Context.class);
      ret.setContext(newContext);

      // calling custom deserializer for output
      OutputData newOutput = (OutputData) new OutputData().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), OutputData.class);
      ret.setOutput(newOutput);

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
        ret.setActions(newActions);
      }

      return ret;
    }
  }

  /**
   * An output object that includes the response to the user, the dialog nodes that were triggered, and messages from the log.
   */
  public class OutputData extends IBMWatsonDynamicModel {
    private List<LogMessage> log_messages_serialized_name;
    private List<String> text_serialized_name;
    private List<DialogRuntimeResponseGeneric> generic_serialized_name;
    private List<String> nodes_visited_serialized_name;
    private List<DialogNodeVisitedDetails> nodes_visited_details_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the logMessages.
     *
     * @return the logMessages
     */
    @AuraEnabled
    public List<LogMessage> getLogMessages() {
      return log_messages_serialized_name;
    }

    /**
     * Gets the text.
     *
     * @return the text
     */
    @AuraEnabled
    public List<String> getText() {
      return text_serialized_name;
    }

    /**
     * Gets the generic.
     *
     * @return the generic
     */
    @AuraEnabled
    public List<DialogRuntimeResponseGeneric> getGeneric() {
      return generic_serialized_name;
    }

    /**
     * Gets the nodesVisited.
     *
     * @return the nodesVisited
     */
    @AuraEnabled
    public List<String> getNodesVisited() {
      return nodes_visited_serialized_name;
    }

    /**
     * Gets the nodesVisitedDetails.
     *
     * @return the nodesVisitedDetails
     */
    @AuraEnabled
    public List<DialogNodeVisitedDetails> getNodesVisitedDetails() {
      return nodes_visited_details_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to OutputData.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    /**
     * Sets the logMessages.
     *
     * @param logMessages the new logMessages
     */
    public void setLogMessages(final List<LogMessage> logMessages) {
      this.log_messages_serialized_name = logMessages;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final List<String> text) {
      this.text_serialized_name = text;
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
     * Sets the nodesVisited.
     *
     * @param nodesVisited the new nodesVisited
     */
    public void setNodesVisited(final List<String> nodesVisited) {
      this.nodes_visited_serialized_name = nodesVisited;
    }

    /**
     * Sets the nodesVisitedDetails.
     *
     * @param nodesVisitedDetails the new nodesVisitedDetails
     */
    public void setNodesVisitedDetails(final List<DialogNodeVisitedDetails> nodesVisitedDetails) {
      this.nodes_visited_details_serialized_name = nodesVisitedDetails;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      OutputData ret = (OutputData) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for logMessages
      List<LogMessage> newLogMessages = new List<LogMessage>();
      List<LogMessage> deserializedLogMessages = ret.getLogMessages();
      if (deserializedLogMessages != null) {
        for (Integer i = 0; i < deserializedLogMessages.size(); i++) {
          LogMessage currentItem = ret.getLogMessages().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('log_messages_serialized_name');
          LogMessage newItem = (LogMessage) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), LogMessage.class);
          newLogMessages.add(newItem);
        }
        ret.setLogMessages(newLogMessages);
      }

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
        ret.setGeneric(newGeneric);
      }

      // calling custom deserializer for nodesVisitedDetails
      List<DialogNodeVisitedDetails> newNodesVisitedDetails = new List<DialogNodeVisitedDetails>();
      List<DialogNodeVisitedDetails> deserializedNodesVisitedDetails = ret.getNodesVisitedDetails();
      if (deserializedNodesVisitedDetails != null) {
        for (Integer i = 0; i < deserializedNodesVisitedDetails.size(); i++) {
          DialogNodeVisitedDetails currentItem = ret.getNodesVisitedDetails().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('nodes_visited_details_serialized_name');
          DialogNodeVisitedDetails newItem = (DialogNodeVisitedDetails) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNodeVisitedDetails.class);
          newNodesVisitedDetails.add(newItem);
        }
        ret.setNodesVisitedDetails(newNodesVisitedDetails);
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

  /**
   * The pagination data for the returned objects.
   */
  public class Pagination extends IBMWatsonGenericModel {
    private String refresh_url_serialized_name;
    private String next_url_serialized_name;
    private Long total_serialized_name;
    private Long matched_serialized_name;
    private String refresh_cursor_serialized_name;
    private String next_cursor_serialized_name;
 
    /**
     * Gets the refreshUrl.
     *
     * The URL that will return the same page of results.
     *
     * @return the refreshUrl
     */
    @AuraEnabled
    public String getRefreshUrl() {
      return refresh_url_serialized_name;
    }
 
    /**
     * Gets the nextUrl.
     *
     * The URL that will return the next page of results.
     *
     * @return the nextUrl
     */
    @AuraEnabled
    public String getNextUrl() {
      return next_url_serialized_name;
    }
 
    /**
     * Gets the total.
     *
     * Reserved for future use.
     *
     * @return the total
     */
    @AuraEnabled
    public Long getTotal() {
      return total_serialized_name;
    }
 
    /**
     * Gets the matched.
     *
     * Reserved for future use.
     *
     * @return the matched
     */
    @AuraEnabled
    public Long getMatched() {
      return matched_serialized_name;
    }
 
    /**
     * Gets the refreshCursor.
     *
     * A token identifying the current page of results.
     *
     * @return the refreshCursor
     */
    @AuraEnabled
    public String getRefreshCursor() {
      return refresh_cursor_serialized_name;
    }
 
    /**
     * Gets the nextCursor.
     *
     * A token identifying the next page of results.
     *
     * @return the nextCursor
     */
    @AuraEnabled
    public String getNextCursor() {
      return next_cursor_serialized_name;
    }

    /**
     * Sets the refreshUrl.
     *
     * @param refreshUrl the new refreshUrl
     */
    public void setRefreshUrl(final String refreshUrl) {
      this.refresh_url_serialized_name = refreshUrl;
    }

    /**
     * Sets the nextUrl.
     *
     * @param nextUrl the new nextUrl
     */
    public void setNextUrl(final String nextUrl) {
      this.next_url_serialized_name = nextUrl;
    }

    /**
     * Sets the total.
     *
     * @param total the new total
     */
    public void setTotal(final long total) {
      this.total_serialized_name = total;
    }

    /**
     * Sets the matched.
     *
     * @param matched the new matched
     */
    public void setMatched(final long matched) {
      this.matched_serialized_name = matched;
    }

    /**
     * Sets the refreshCursor.
     *
     * @param refreshCursor the new refreshCursor
     */
    public void setRefreshCursor(final String refreshCursor) {
      this.refresh_cursor_serialized_name = refreshCursor;
    }

    /**
     * Sets the nextCursor.
     *
     * @param nextCursor the new nextCursor
     */
    public void setNextCursor(final String nextCursor) {
      this.next_cursor_serialized_name = nextCursor;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Pagination ret = (Pagination) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A term from the request that was identified as an entity.
   */
  public class RuntimeEntity extends IBMWatsonDynamicModel {
    private String entity_serialized_name;
    private List<Long> location_serialized_name;
    private String value_serialized_name;
    private Double confidence_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CaptureGroup> groups_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the entity.
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
     * @return the location
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
    }

    /**
     * Gets the value.
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
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    /**
     * Gets the metadata.
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
     * @return the groups
     */
    @AuraEnabled
    public List<CaptureGroup> getGroups() {
      return groups_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to RuntimeEntity.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
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
        ret.setGroups(newGroups);
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

  /**
   * An intent identified in the user input.
   */
  public class RuntimeIntent extends IBMWatsonDynamicModel {
    private String intent_serialized_name;
    private Double confidence_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the intent.
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
     * @return the confidence
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to RuntimeIntent.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
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
   * Synonym.
   */
  public class Synonym extends IBMWatsonResponseModel {
    private String synonym_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
 
    /**
     * Gets the synonymText.
     *
     * The text of the synonym.
     *
     * @return the synonymText
     */
    @AuraEnabled
    public String getSynonymText() {
      return synonym_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the synonym.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the most recent update to the synonym.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }

    /**
     * Sets the synonymText.
     *
     * @param synonymText the new synonymText
     */
    public void setSynonymText(final String synonymText) {
      this.synonym_serialized_name = synonymText;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Synonym ret = (Synonym) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * SynonymCollection.
   */
  public class SynonymCollection extends IBMWatsonResponseModel {
    private List<Synonym> synonyms_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the synonyms.
     *
     * An array of synonyms.
     *
     * @return the synonyms
     */
    @AuraEnabled
    public List<Synonym> getSynonyms() {
      return synonyms_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the synonyms.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<Synonym> synonyms) {
      this.synonyms_serialized_name = synonyms;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SynonymCollection ret = (SynonymCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for synonyms
      List<Synonym> newSynonyms = new List<Synonym>();
      List<Synonym> deserializedSynonyms = ret.getSynonyms();
      if (deserializedSynonyms != null) {
        for (Integer i = 0; i < deserializedSynonyms.size(); i++) {
          Synonym currentItem = ret.getSynonyms().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('synonyms_serialized_name');
          Synonym newItem = (Synonym) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Synonym.class);
          newSynonyms.add(newItem);
        }
        ret.setSynonyms(newSynonyms);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * For internal use only.
   */
  public class SystemResponse extends IBMWatsonDynamicModel {
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the dynamic properties attached to SystemResponse.
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

      SystemResponse ret = (SystemResponse) super.deserialize(jsonString, jsonMap, classType);

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
   * The updateCounterexample options.
   */
  public class UpdateCounterexampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;
    private String newText;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the text.
     *
     * The text of a user input counterexample (for example, `What are you wearing?`).
     *
     * @return the text
     */
    public String text() {
      return text;
    }
 
    /**
     * Gets the newText.
     *
     * The text of a user input counterexample.
     *
     * @return the newText
     */
    public String newText() {
      return newText;
    }

    private UpdateCounterexampleOptions(UpdateCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
      text = builder.text;
      newText = builder.newText;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder newBuilder() {
      return new UpdateCounterexampleOptionsBuilder(this);
    }

  }

  /**
   * UpdateCounterexampleOptions Builder.
   */
  public class UpdateCounterexampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String text;
    private String newText;

    private UpdateCounterexampleOptionsBuilder(UpdateCounterexampleOptions updateCounterexampleOptions) {
      workspaceId = updateCounterexampleOptions.workspaceId;
      text = updateCounterexampleOptions.text;
      newText = updateCounterexampleOptions.newText;
      this.requestHeaders.putAll(updateCounterexampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param text the text
     */
    public UpdateCounterexampleOptionsBuilder(String workspaceId, String text) {
      this.workspaceId = workspaceId;
      this.text = text;
    }

    /**
     * Builds a UpdateCounterexampleOptions.
     *
     * @return the updateCounterexampleOptions
     */
    public UpdateCounterexampleOptions build() {
      return new UpdateCounterexampleOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the newText.
     *
     * @param newText the newText
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder newText(String newText) {
      this.newText = newText;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateDialogNode options.
   */
  public class UpdateDialogNodeOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;
    private String nodeType;
    private List<DialogNodeAction> newActions;
    private String newConditions;
    private IBMWatsonMapModel newContext;
    private String newPreviousSibling;
    private String newVariable;
    private String newUserLabel;
    private IBMWatsonMapModel newMetadata;
    private String newTitle;
    private String newDescription;
    private String newDigressOut;
    private String newEventName;
    private String newDigressOutSlots;
    private DialogNodeNextStep newNextStep;
    private String newDigressIn;
    private DialogNodeOutput newOutput;
    private String newParent;
    private String newDialogNode;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the dialogNode.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialogNode
     */
    public String dialogNode() {
      return dialogNode;
    }
 
    /**
     * Gets the nodeType.
     *
     * How the dialog node is processed.
     *
     * @return the nodeType
     */
    public String nodeType() {
      return nodeType;
    }
 
    /**
     * Gets the newActions.
     *
     * An array of objects describing any actions to be invoked by the dialog node.
     *
     * @return the newActions
     */
    public List<DialogNodeAction> newActions() {
      return newActions;
    }
 
    /**
     * Gets the newConditions.
     *
     * The condition that will trigger the dialog node. This string cannot contain carriage return, newline, or tab
     * characters, and it must be no longer than 2048 characters.
     *
     * @return the newConditions
     */
    public String newConditions() {
      return newConditions;
    }
 
    /**
     * Gets the newContext.
     *
     * The context for the dialog node.
     *
     * @return the newContext
     */
    public IBMWatsonMapModel newContext() {
      return newContext;
    }
 
    /**
     * Gets the newPreviousSibling.
     *
     * The ID of the previous sibling dialog node.
     *
     * @return the newPreviousSibling
     */
    public String newPreviousSibling() {
      return newPreviousSibling;
    }
 
    /**
     * Gets the newVariable.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the newVariable
     */
    public String newVariable() {
      return newVariable;
    }
 
    /**
     * Gets the newUserLabel.
     *
     * A label that can be displayed externally to describe the purpose of the node to users. This string must be no
     * longer than 512 characters.
     *
     * @return the newUserLabel
     */
    public String newUserLabel() {
      return newUserLabel;
    }
 
    /**
     * Gets the newMetadata.
     *
     * The metadata for the dialog node.
     *
     * @return the newMetadata
     */
    public IBMWatsonMapModel newMetadata() {
      return newMetadata;
    }
 
    /**
     * Gets the newTitle.
     *
     * The alias used to identify the dialog node. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 64 characters.
     *
     * @return the newTitle
     */
    public String newTitle() {
      return newTitle;
    }
 
    /**
     * Gets the newDescription.
     *
     * The description of the dialog node. This string cannot contain carriage return, newline, or tab characters, and
     * it must be no longer than 128 characters.
     *
     * @return the newDescription
     */
    public String newDescription() {
      return newDescription;
    }
 
    /**
     * Gets the newDigressOut.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the newDigressOut
     */
    public String newDigressOut() {
      return newDigressOut;
    }
 
    /**
     * Gets the newEventName.
     *
     * How an `event_handler` node is processed.
     *
     * @return the newEventName
     */
    public String newEventName() {
      return newEventName;
    }
 
    /**
     * Gets the newDigressOutSlots.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the newDigressOutSlots
     */
    public String newDigressOutSlots() {
      return newDigressOutSlots;
    }
 
    /**
     * Gets the newNextStep.
     *
     * The next step to execute following this dialog node.
     *
     * @return the newNextStep
     */
    public DialogNodeNextStep newNextStep() {
      return newNextStep;
    }
 
    /**
     * Gets the newDigressIn.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the newDigressIn
     */
    public String newDigressIn() {
      return newDigressIn;
    }
 
    /**
     * Gets the newOutput.
     *
     * The output of the dialog node. For more information about how to specify dialog node output, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/dialog-overview.html#complex).
     *
     * @return the newOutput
     */
    public DialogNodeOutput newOutput() {
      return newOutput;
    }
 
    /**
     * Gets the newParent.
     *
     * The ID of the parent dialog node.
     *
     * @return the newParent
     */
    public String newParent() {
      return newParent;
    }
 
    /**
     * Gets the newDialogNode.
     *
     * The dialog node ID. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the newDialogNode
     */
    public String newDialogNode() {
      return newDialogNode;
    }

    private UpdateDialogNodeOptions(UpdateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialogNode, 'dialogNode cannot be empty');
      workspaceId = builder.workspaceId;
      dialogNode = builder.dialogNode;
      nodeType = builder.nodeType;
      newActions = builder.newActions;
      newConditions = builder.newConditions;
      newContext = builder.newContext;
      newPreviousSibling = builder.newPreviousSibling;
      newVariable = builder.newVariable;
      newUserLabel = builder.newUserLabel;
      newMetadata = builder.newMetadata;
      newTitle = builder.newTitle;
      newDescription = builder.newDescription;
      newDigressOut = builder.newDigressOut;
      newEventName = builder.newEventName;
      newDigressOutSlots = builder.newDigressOutSlots;
      newNextStep = builder.newNextStep;
      newDigressIn = builder.newDigressIn;
      newOutput = builder.newOutput;
      newParent = builder.newParent;
      newDialogNode = builder.newDialogNode;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newBuilder() {
      return new UpdateDialogNodeOptionsBuilder(this);
    }

  }

  /**
   * UpdateDialogNodeOptions Builder.
   */
  public class UpdateDialogNodeOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String dialogNode;
    private String nodeType;
    private List<DialogNodeAction> newActions;
    private String newConditions;
    private IBMWatsonMapModel newContext;
    private String newPreviousSibling;
    private String newVariable;
    private String newUserLabel;
    private IBMWatsonMapModel newMetadata;
    private String newTitle;
    private String newDescription;
    private String newDigressOut;
    private String newEventName;
    private String newDigressOutSlots;
    private DialogNodeNextStep newNextStep;
    private String newDigressIn;
    private DialogNodeOutput newOutput;
    private String newParent;
    private String newDialogNode;

    private UpdateDialogNodeOptionsBuilder(UpdateDialogNodeOptions updateDialogNodeOptions) {
      workspaceId = updateDialogNodeOptions.workspaceId;
      dialogNode = updateDialogNodeOptions.dialogNode;
      nodeType = updateDialogNodeOptions.nodeType;
      newActions = updateDialogNodeOptions.newActions;
      newConditions = updateDialogNodeOptions.newConditions;
      newContext = updateDialogNodeOptions.newContext;
      newPreviousSibling = updateDialogNodeOptions.newPreviousSibling;
      newVariable = updateDialogNodeOptions.newVariable;
      newUserLabel = updateDialogNodeOptions.newUserLabel;
      newMetadata = updateDialogNodeOptions.newMetadata;
      newTitle = updateDialogNodeOptions.newTitle;
      newDescription = updateDialogNodeOptions.newDescription;
      newDigressOut = updateDialogNodeOptions.newDigressOut;
      newEventName = updateDialogNodeOptions.newEventName;
      newDigressOutSlots = updateDialogNodeOptions.newDigressOutSlots;
      newNextStep = updateDialogNodeOptions.newNextStep;
      newDigressIn = updateDialogNodeOptions.newDigressIn;
      newOutput = updateDialogNodeOptions.newOutput;
      newParent = updateDialogNodeOptions.newParent;
      newDialogNode = updateDialogNodeOptions.newDialogNode;
      this.requestHeaders.putAll(updateDialogNodeOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param dialogNode the dialogNode
     */
    public UpdateDialogNodeOptionsBuilder(String workspaceId, String dialogNode) {
      this.workspaceId = workspaceId;
      this.dialogNode = dialogNode;
    }

    /**
     * Builds a UpdateDialogNodeOptions.
     *
     * @return the updateDialogNodeOptions
     */
    public UpdateDialogNodeOptions build() {
      return new UpdateDialogNodeOptions(this);
    }

    /**
     * Adds an newActions to newActions.
     *
     * @param newActions the new newActions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder addNewActions(DialogNodeAction newActions) {
      IBMWatsonValidator.notNull(newActions, 'newActions cannot be null');
      if (this.newActions == null) {
        this.newActions = new List<DialogNodeAction>();
      }
      this.newActions.add(newActions);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the dialogNode.
     *
     * @param dialogNode the dialogNode
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialogNode = dialogNode;
      return this;
    }

    /**
     * Set the nodeType.
     *
     * @param nodeType the nodeType
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder nodeType(String nodeType) {
      this.nodeType = nodeType;
      return this;
    }

    /**
     * Set the newActions.
     * Existing newActions will be replaced.
     *
     * @param newActions the newActions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newActions(List<DialogNodeAction> newActions) {
      this.newActions = newActions;
      return this;
    }

    /**
     * Set the newConditions.
     *
     * @param newConditions the newConditions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newConditions(String newConditions) {
      this.newConditions = newConditions;
      return this;
    }

    /**
     * Set the newContext.
     *
     * @param newContext the newContext
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newContext(IBMWatsonMapModel newContext) {
      this.newContext = newContext;
      return this;
    }

    /**
     * Set the newPreviousSibling.
     *
     * @param newPreviousSibling the newPreviousSibling
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newPreviousSibling(String newPreviousSibling) {
      this.newPreviousSibling = newPreviousSibling;
      return this;
    }

    /**
     * Set the newVariable.
     *
     * @param newVariable the newVariable
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newVariable(String newVariable) {
      this.newVariable = newVariable;
      return this;
    }

    /**
     * Set the newUserLabel.
     *
     * @param newUserLabel the newUserLabel
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newUserLabel(String newUserLabel) {
      this.newUserLabel = newUserLabel;
      return this;
    }

    /**
     * Set the newMetadata.
     *
     * @param newMetadata the newMetadata
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newMetadata(IBMWatsonMapModel newMetadata) {
      this.newMetadata = newMetadata;
      return this;
    }

    /**
     * Set the newTitle.
     *
     * @param newTitle the newTitle
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newTitle(String newTitle) {
      this.newTitle = newTitle;
      return this;
    }

    /**
     * Set the newDescription.
     *
     * @param newDescription the newDescription
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDescription(String newDescription) {
      this.newDescription = newDescription;
      return this;
    }

    /**
     * Set the newDigressOut.
     *
     * @param newDigressOut the newDigressOut
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDigressOut(String newDigressOut) {
      this.newDigressOut = newDigressOut;
      return this;
    }

    /**
     * Set the newEventName.
     *
     * @param newEventName the newEventName
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newEventName(String newEventName) {
      this.newEventName = newEventName;
      return this;
    }

    /**
     * Set the newDigressOutSlots.
     *
     * @param newDigressOutSlots the newDigressOutSlots
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDigressOutSlots(String newDigressOutSlots) {
      this.newDigressOutSlots = newDigressOutSlots;
      return this;
    }

    /**
     * Set the newNextStep.
     *
     * @param newNextStep the newNextStep
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newNextStep(DialogNodeNextStep newNextStep) {
      this.newNextStep = newNextStep;
      return this;
    }

    /**
     * Set the newDigressIn.
     *
     * @param newDigressIn the newDigressIn
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDigressIn(String newDigressIn) {
      this.newDigressIn = newDigressIn;
      return this;
    }

    /**
     * Set the newOutput.
     *
     * @param newOutput the newOutput
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newOutput(DialogNodeOutput newOutput) {
      this.newOutput = newOutput;
      return this;
    }

    /**
     * Set the newParent.
     *
     * @param newParent the newParent
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newParent(String newParent) {
      this.newParent = newParent;
      return this;
    }

    /**
     * Set the newDialogNode.
     *
     * @param newDialogNode the newDialogNode
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDialogNode(String newDialogNode) {
      this.newDialogNode = newDialogNode;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateEntity options.
   */
  public class UpdateEntityOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean newFuzzyMatch;
    private String newEntity;
    private IBMWatsonMapModel newMetadata;
    private List<CreateValue> newValues;
    private String newDescription;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the newFuzzyMatch.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the newFuzzyMatch
     */
    public Boolean newFuzzyMatch() {
      return newFuzzyMatch;
    }
 
    /**
     * Gets the newEntity.
     *
     * The name of the entity. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, and hyphen characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 64 characters.
     *
     * @return the newEntity
     */
    public String newEntity() {
      return newEntity;
    }
 
    /**
     * Gets the newMetadata.
     *
     * Any metadata related to the entity.
     *
     * @return the newMetadata
     */
    public IBMWatsonMapModel newMetadata() {
      return newMetadata;
    }
 
    /**
     * Gets the newValues.
     *
     * An array of entity values.
     *
     * @return the newValues
     */
    public List<CreateValue> newValues() {
      return newValues;
    }
 
    /**
     * Gets the newDescription.
     *
     * The description of the entity. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the newDescription
     */
    public String newDescription() {
      return newDescription;
    }

    private UpdateEntityOptions(UpdateEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      newFuzzyMatch = builder.newFuzzyMatch;
      newEntity = builder.newEntity;
      newMetadata = builder.newMetadata;
      newValues = builder.newValues;
      newDescription = builder.newDescription;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newBuilder() {
      return new UpdateEntityOptionsBuilder(this);
    }

  }

  /**
   * UpdateEntityOptions Builder.
   */
  public class UpdateEntityOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private Boolean newFuzzyMatch;
    private String newEntity;
    private IBMWatsonMapModel newMetadata;
    private List<CreateValue> newValues;
    private String newDescription;

    private UpdateEntityOptionsBuilder(UpdateEntityOptions updateEntityOptions) {
      workspaceId = updateEntityOptions.workspaceId;
      entity = updateEntityOptions.entity;
      newFuzzyMatch = updateEntityOptions.newFuzzyMatch;
      newEntity = updateEntityOptions.newEntity;
      newMetadata = updateEntityOptions.newMetadata;
      newValues = updateEntityOptions.newValues;
      newDescription = updateEntityOptions.newDescription;
      this.requestHeaders.putAll(updateEntityOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     */
    public UpdateEntityOptionsBuilder(String workspaceId, String entity) {
      this.workspaceId = workspaceId;
      this.entity = entity;
    }

    /**
     * Builds a UpdateEntityOptions.
     *
     * @return the updateEntityOptions
     */
    public UpdateEntityOptions build() {
      return new UpdateEntityOptions(this);
    }

    /**
     * Adds an newValues to newValues.
     *
     * @param newValues the new newValues
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder addNewValues(CreateValue newValues) {
      IBMWatsonValidator.notNull(newValues, 'newValues cannot be null');
      if (this.newValues == null) {
        this.newValues = new List<CreateValue>();
      }
      this.newValues.add(newValues);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the newFuzzyMatch.
     *
     * @param newFuzzyMatch the newFuzzyMatch
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newFuzzyMatch(Boolean newFuzzyMatch) {
      this.newFuzzyMatch = newFuzzyMatch;
      return this;
    }

    /**
     * Set the newEntity.
     *
     * @param newEntity the newEntity
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newEntity(String newEntity) {
      this.newEntity = newEntity;
      return this;
    }

    /**
     * Set the newMetadata.
     *
     * @param newMetadata the newMetadata
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newMetadata(IBMWatsonMapModel newMetadata) {
      this.newMetadata = newMetadata;
      return this;
    }

    /**
     * Set the newValues.
     * Existing newValues will be replaced.
     *
     * @param newValues the newValues
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newValues(List<CreateValue> newValues) {
      this.newValues = newValues;
      return this;
    }

    /**
     * Set the newDescription.
     *
     * @param newDescription the newDescription
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newDescription(String newDescription) {
      this.newDescription = newDescription;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateExample options.
   */
  public class UpdateExampleOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;
    private String newText;
    private List<Mentions> newMentions;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the text.
     *
     * The text of the user input example.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
 
    /**
     * Gets the newText.
     *
     * The text of the user input example. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the newText
     */
    public String newText() {
      return newText;
    }
 
    /**
     * Gets the newMentions.
     *
     * An array of contextual entity mentions.
     *
     * @return the newMentions
     */
    public List<Mentions> newMentions() {
      return newMentions;
    }

    private UpdateExampleOptions(UpdateExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      text = builder.text;
      newText = builder.newText;
      newMentions = builder.newMentions;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder newBuilder() {
      return new UpdateExampleOptionsBuilder(this);
    }

  }

  /**
   * UpdateExampleOptions Builder.
   */
  public class UpdateExampleOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String text;
    private String newText;
    private List<Mentions> newMentions;

    private UpdateExampleOptionsBuilder(UpdateExampleOptions updateExampleOptions) {
      workspaceId = updateExampleOptions.workspaceId;
      intent = updateExampleOptions.intent;
      text = updateExampleOptions.text;
      newText = updateExampleOptions.newText;
      newMentions = updateExampleOptions.newMentions;
      this.requestHeaders.putAll(updateExampleOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     * @param text the text
     */
    public UpdateExampleOptionsBuilder(String workspaceId, String intent, String text) {
      this.workspaceId = workspaceId;
      this.intent = intent;
      this.text = text;
    }

    /**
     * Builds a UpdateExampleOptions.
     *
     * @return the updateExampleOptions
     */
    public UpdateExampleOptions build() {
      return new UpdateExampleOptions(this);
    }

    /**
     * Adds an newMentions to newMentions.
     *
     * @param newMentions the new newMentions
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder addNewMentions(Mentions newMentions) {
      IBMWatsonValidator.notNull(newMentions, 'newMentions cannot be null');
      if (this.newMentions == null) {
        this.newMentions = new List<Mentions>();
      }
      this.newMentions.add(newMentions);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the text.
     *
     * @param text the text
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder text(String text) {
      this.text = text;
      return this;
    }

    /**
     * Set the newText.
     *
     * @param newText the newText
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder newText(String newText) {
      this.newText = newText;
      return this;
    }

    /**
     * Set the newMentions.
     * Existing newMentions will be replaced.
     *
     * @param newMentions the newMentions
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder newMentions(List<Mentions> newMentions) {
      this.newMentions = newMentions;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateIntent options.
   */
  public class UpdateIntentOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String newIntent;
    private List<CreateExample> newExamples;
    private String newDescription;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the intent.
     *
     * The intent name.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
 
    /**
     * Gets the newIntent.
     *
     * The name of the intent. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, hyphen, and dot characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 128 characters.
     *
     * @return the newIntent
     */
    public String newIntent() {
      return newIntent;
    }
 
    /**
     * Gets the newExamples.
     *
     * An array of user input examples for the intent.
     *
     * @return the newExamples
     */
    public List<CreateExample> newExamples() {
      return newExamples;
    }
 
    /**
     * Gets the newDescription.
     *
     * The description of the intent.
     *
     * @return the newDescription
     */
    public String newDescription() {
      return newDescription;
    }

    private UpdateIntentOptions(UpdateIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      newIntent = builder.newIntent;
      newExamples = builder.newExamples;
      newDescription = builder.newDescription;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newBuilder() {
      return new UpdateIntentOptionsBuilder(this);
    }

  }

  /**
   * UpdateIntentOptions Builder.
   */
  public class UpdateIntentOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String intent;
    private String newIntent;
    private List<CreateExample> newExamples;
    private String newDescription;

    private UpdateIntentOptionsBuilder(UpdateIntentOptions updateIntentOptions) {
      workspaceId = updateIntentOptions.workspaceId;
      intent = updateIntentOptions.intent;
      newIntent = updateIntentOptions.newIntent;
      newExamples = updateIntentOptions.newExamples;
      newDescription = updateIntentOptions.newDescription;
      this.requestHeaders.putAll(updateIntentOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param intent the intent
     */
    public UpdateIntentOptionsBuilder(String workspaceId, String intent) {
      this.workspaceId = workspaceId;
      this.intent = intent;
    }

    /**
     * Builds a UpdateIntentOptions.
     *
     * @return the updateIntentOptions
     */
    public UpdateIntentOptions build() {
      return new UpdateIntentOptions(this);
    }

    /**
     * Adds an newExamples to newExamples.
     *
     * @param newExamples the new newExamples
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder addNewExamples(CreateExample newExamples) {
      IBMWatsonValidator.notNull(newExamples, 'newExamples cannot be null');
      if (this.newExamples == null) {
        this.newExamples = new List<CreateExample>();
      }
      this.newExamples.add(newExamples);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the intent.
     *
     * @param intent the intent
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder intent(String intent) {
      this.intent = intent;
      return this;
    }

    /**
     * Set the newIntent.
     *
     * @param newIntent the newIntent
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newIntent(String newIntent) {
      this.newIntent = newIntent;
      return this;
    }

    /**
     * Set the newExamples.
     * Existing newExamples will be replaced.
     *
     * @param newExamples the newExamples
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newExamples(List<CreateExample> newExamples) {
      this.newExamples = newExamples;
      return this;
    }

    /**
     * Set the newDescription.
     *
     * @param newDescription the newDescription
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newDescription(String newDescription) {
      this.newDescription = newDescription;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateSynonym options.
   */
  public class UpdateSynonymOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    private String newSynonym;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the synonym.
     *
     * The text of the synonym.
     *
     * @return the synonym
     */
    public String synonym() {
      return synonym;
    }
 
    /**
     * Gets the newSynonym.
     *
     * The text of the synonym. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the newSynonym
     */
    public String newSynonym() {
      return newSynonym;
    }

    private UpdateSynonymOptions(UpdateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym, 'synonym cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
      newSynonym = builder.newSynonym;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder newBuilder() {
      return new UpdateSynonymOptionsBuilder(this);
    }

  }

  /**
   * UpdateSynonymOptions Builder.
   */
  public class UpdateSynonymOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    private String newSynonym;

    private UpdateSynonymOptionsBuilder(UpdateSynonymOptions updateSynonymOptions) {
      workspaceId = updateSynonymOptions.workspaceId;
      entity = updateSynonymOptions.entity;
      value = updateSynonymOptions.value;
      synonym = updateSynonymOptions.synonym;
      newSynonym = updateSynonymOptions.newSynonym;
      this.requestHeaders.putAll(updateSynonymOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public UpdateSynonymOptionsBuilder(String workspaceId, String entity, String value, String synonym) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
    }

    /**
     * Builds a UpdateSynonymOptions.
     *
     * @return the updateSynonymOptions
     */
    public UpdateSynonymOptions build() {
      return new UpdateSynonymOptions(this);
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the synonym.
     *
     * @param synonym the synonym
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder synonym(String synonym) {
      this.synonym = synonym;
      return this;
    }

    /**
     * Set the newSynonym.
     *
     * @param newSynonym the newSynonym
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder newSynonym(String newSynonym) {
      this.newSynonym = newSynonym;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateValue options.
   */
  public class UpdateValueOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private List<String> newSynonyms;
    private String valueType;
    private IBMWatsonMapModel newMetadata;
    private List<String> newPatterns;
    private String newValue;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String entity() {
      return entity;
    }
 
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String value() {
      return value;
    }
 
    /**
     * Gets the newSynonyms.
     *
     * An array of synonyms for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A synonym must conform to the following resrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the newSynonyms
     */
    public List<String> newSynonyms() {
      return newSynonyms;
    }
 
    /**
     * Gets the valueType.
     *
     * Specifies the type of value.
     *
     * @return the valueType
     */
    public String valueType() {
      return valueType;
    }
 
    /**
     * Gets the newMetadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the newMetadata
     */
    public IBMWatsonMapModel newMetadata() {
      return newMetadata;
    }
 
    /**
     * Gets the newPatterns.
     *
     * An array of patterns for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A pattern is a regular expression no longer than 512 characters. For more information
     * about how to specify a pattern, see the
     * [documentation](https://cloud.ibm.com/docs/services/assistant/entities.html#creating-entities).
     *
     * @return the newPatterns
     */
    public List<String> newPatterns() {
      return newPatterns;
    }
 
    /**
     * Gets the newValue.
     *
     * The text of the entity value. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the newValue
     */
    public String newValue() {
      return newValue;
    }

    private UpdateValueOptions(UpdateValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      newSynonyms = builder.newSynonyms;
      valueType = builder.valueType;
      newMetadata = builder.newMetadata;
      newPatterns = builder.newPatterns;
      newValue = builder.newValue;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newBuilder() {
      return new UpdateValueOptionsBuilder(this);
    }

  }

  /**
   * UpdateValueOptions Builder.
   */
  public class UpdateValueOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String entity;
    private String value;
    private List<String> newSynonyms;
    private String valueType;
    private IBMWatsonMapModel newMetadata;
    private List<String> newPatterns;
    private String newValue;

    private UpdateValueOptionsBuilder(UpdateValueOptions updateValueOptions) {
      workspaceId = updateValueOptions.workspaceId;
      entity = updateValueOptions.entity;
      value = updateValueOptions.value;
      newSynonyms = updateValueOptions.newSynonyms;
      valueType = updateValueOptions.valueType;
      newMetadata = updateValueOptions.newMetadata;
      newPatterns = updateValueOptions.newPatterns;
      newValue = updateValueOptions.newValue;
      this.requestHeaders.putAll(updateValueOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     * @param entity the entity
     * @param value the value
     */
    public UpdateValueOptionsBuilder(String workspaceId, String entity, String value) {
      this.workspaceId = workspaceId;
      this.entity = entity;
      this.value = value;
    }

    /**
     * Builds a UpdateValueOptions.
     *
     * @return the updateValueOptions
     */
    public UpdateValueOptions build() {
      return new UpdateValueOptions(this);
    }

    /**
     * Adds an newSynonyms to newSynonyms.
     *
     * @param newSynonyms the new newSynonyms
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewSynonyms(String newSynonyms) {
      IBMWatsonValidator.notNull(newSynonyms, 'newSynonyms cannot be null');
      if (this.newSynonyms == null) {
        this.newSynonyms = new List<String>();
      }
      this.newSynonyms.add(newSynonyms);
      return this;
    }

    /**
     * Adds an newPatterns to newPatterns.
     *
     * @param newPatterns the new newPatterns
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewPatterns(String newPatterns) {
      IBMWatsonValidator.notNull(newPatterns, 'newPatterns cannot be null');
      if (this.newPatterns == null) {
        this.newPatterns = new List<String>();
      }
      this.newPatterns.add(newPatterns);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the entity.
     *
     * @param entity the entity
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder entity(String entity) {
      this.entity = entity;
      return this;
    }

    /**
     * Set the value.
     *
     * @param value the value
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder value(String value) {
      this.value = value;
      return this;
    }

    /**
     * Set the newSynonyms.
     * Existing newSynonyms will be replaced.
     *
     * @param newSynonyms the newSynonyms
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newSynonyms(List<String> newSynonyms) {
      this.newSynonyms = newSynonyms;
      return this;
    }

    /**
     * Set the valueType.
     *
     * @param valueType the valueType
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder valueType(String valueType) {
      this.valueType = valueType;
      return this;
    }

    /**
     * Set the newMetadata.
     *
     * @param newMetadata the newMetadata
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newMetadata(IBMWatsonMapModel newMetadata) {
      this.newMetadata = newMetadata;
      return this;
    }

    /**
     * Set the newPatterns.
     * Existing newPatterns will be replaced.
     *
     * @param newPatterns the newPatterns
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newPatterns(List<String> newPatterns) {
      this.newPatterns = newPatterns;
      return this;
    }

    /**
     * Set the newValue.
     *
     * @param newValue the newValue
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newValue(String newValue) {
      this.newValue = newValue;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updateWorkspace options.
   */
  public class UpdateWorkspaceOptions extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private IBMWatsonMapModel metadata;
    private Boolean learningOptOut;
    private WorkspaceSystemSettings systemSettings;
    private Boolean append;
 
    /**
     * Gets the workspaceId.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
 
    /**
     * Gets the name.
     *
     * The name of the workspace. This string cannot contain carriage return, newline, or tab characters, and it must be
     * no longer than 64 characters.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the workspace. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
 
    /**
     * Gets the language.
     *
     * The language of the workspace.
     *
     * @return the language
     */
    public String language() {
      return language;
    }
 
    /**
     * Gets the intents.
     *
     * An array of objects defining the intents for the workspace.
     *
     * @return the intents
     */
    public List<CreateIntent> intents() {
      return intents;
    }
 
    /**
     * Gets the entities.
     *
     * An array of objects defining the entities for the workspace.
     *
     * @return the entities
     */
    public List<CreateEntity> entities() {
      return entities;
    }
 
    /**
     * Gets the dialogNodes.
     *
     * An array of objects defining the nodes in the dialog.
     *
     * @return the dialogNodes
     */
    public List<CreateDialogNode> dialogNodes() {
      return dialogNodes;
    }
 
    /**
     * Gets the counterexamples.
     *
     * An array of objects defining input examples that have been marked as irrelevant input.
     *
     * @return the counterexamples
     */
    public List<CreateCounterexample> counterexamples() {
      return counterexamples;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the workspace.
     *
     * @return the metadata
     */
    public IBMWatsonMapModel metadata() {
      return metadata;
    }
 
    /**
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates
     * that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    public Boolean learningOptOut() {
      return learningOptOut;
    }
 
    /**
     * Gets the systemSettings.
     *
     * Global settings for the workspace.
     *
     * @return the systemSettings
     */
    public WorkspaceSystemSettings systemSettings() {
      return systemSettings;
    }
 
    /**
     * Gets the append.
     *
     * Whether the new data is to be appended to the existing data in the workspace. If **append**=`false`, elements
     * included in the new data completely replace the corresponding existing elements, including all subelements. For
     * example, if the new data includes **entities** and **append**=`false`, all existing entities in the workspace are
     * discarded and replaced with the new entities.
     *
     * If **append**=`true`, existing elements are preserved, and the new elements are added. If any elements in the new
     * data collide with existing elements, the update request fails.
     *
     * @return the append
     */
    public Boolean append() {
      return append;
    }

    private UpdateWorkspaceOptions(UpdateWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      name = builder.name;
      description = builder.description;
      language = builder.language;
      intents = builder.intents;
      entities = builder.entities;
      dialogNodes = builder.dialogNodes;
      counterexamples = builder.counterexamples;
      metadata = builder.metadata;
      learningOptOut = builder.learningOptOut;
      systemSettings = builder.systemSettings;
      append = builder.append;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder newBuilder() {
      return new UpdateWorkspaceOptionsBuilder(this);
    }

  }

  /**
   * UpdateWorkspaceOptions Builder.
   */
  public class UpdateWorkspaceOptionsBuilder extends IBMWatsonOptionsModel {
    private String workspaceId;
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private IBMWatsonMapModel metadata;
    private Boolean learningOptOut;
    private WorkspaceSystemSettings systemSettings;
    private Boolean append;

    private UpdateWorkspaceOptionsBuilder(UpdateWorkspaceOptions updateWorkspaceOptions) {
      workspaceId = updateWorkspaceOptions.workspaceId;
      name = updateWorkspaceOptions.name;
      description = updateWorkspaceOptions.description;
      language = updateWorkspaceOptions.language;
      intents = updateWorkspaceOptions.intents;
      entities = updateWorkspaceOptions.entities;
      dialogNodes = updateWorkspaceOptions.dialogNodes;
      counterexamples = updateWorkspaceOptions.counterexamples;
      metadata = updateWorkspaceOptions.metadata;
      learningOptOut = updateWorkspaceOptions.learningOptOut;
      systemSettings = updateWorkspaceOptions.systemSettings;
      append = updateWorkspaceOptions.append;
      this.requestHeaders.putAll(updateWorkspaceOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspaceId the workspaceId
     */
    public UpdateWorkspaceOptionsBuilder(String workspaceId) {
      this.workspaceId = workspaceId;
    }

    /**
     * Builds a UpdateWorkspaceOptions.
     *
     * @return the updateWorkspaceOptions
     */
    public UpdateWorkspaceOptions build() {
      return new UpdateWorkspaceOptions(this);
    }

    /**
     * Adds an intents to intents.
     *
     * @param intents the new intents
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addIntents(CreateIntent intents) {
      IBMWatsonValidator.notNull(intents, 'intents cannot be null');
      if (this.intents == null) {
        this.intents = new List<CreateIntent>();
      }
      this.intents.add(intents);
      return this;
    }

    /**
     * Adds an entities to entities.
     *
     * @param entities the new entities
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addEntities(CreateEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities == null) {
        this.entities = new List<CreateEntity>();
      }
      this.entities.add(entities);
      return this;
    }

    /**
     * Adds an dialogNodes to dialogNodes.
     *
     * @param dialogNodes the new dialogNodes
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialogNodes) {
      IBMWatsonValidator.notNull(dialogNodes, 'dialogNodes cannot be null');
      if (this.dialogNodes == null) {
        this.dialogNodes = new List<CreateDialogNode>();
      }
      this.dialogNodes.add(dialogNodes);
      return this;
    }

    /**
     * Adds an counterexamples to counterexamples.
     *
     * @param counterexamples the new counterexamples
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addCounterexamples(CreateCounterexample counterexamples) {
      IBMWatsonValidator.notNull(counterexamples, 'counterexamples cannot be null');
      if (this.counterexamples == null) {
        this.counterexamples = new List<CreateCounterexample>();
      }
      this.counterexamples.add(counterexamples);
      return this;
    }

    /**
     * Set the workspaceId.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder workspaceId(String workspaceId) {
      this.workspaceId = workspaceId;
      return this;
    }

    /**
     * Set the name.
     *
     * @param name the name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder name(String name) {
      this.name = name;
      return this;
    }

    /**
     * Set the description.
     *
     * @param description the description
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder description(String description) {
      this.description = description;
      return this;
    }

    /**
     * Set the language.
     *
     * @param language the language
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder language(String language) {
      this.language = language;
      return this;
    }

    /**
     * Set the intents.
     * Existing intents will be replaced.
     *
     * @param intents the intents
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder intents(List<CreateIntent> intents) {
      this.intents = intents;
      return this;
    }

    /**
     * Set the entities.
     * Existing entities will be replaced.
     *
     * @param entities the entities
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder entities(List<CreateEntity> entities) {
      this.entities = entities;
      return this;
    }

    /**
     * Set the dialogNodes.
     * Existing dialogNodes will be replaced.
     *
     * @param dialogNodes the dialogNodes
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialogNodes) {
      this.dialogNodes = dialogNodes;
      return this;
    }

    /**
     * Set the counterexamples.
     * Existing counterexamples will be replaced.
     *
     * @param counterexamples the counterexamples
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder counterexamples(List<CreateCounterexample> counterexamples) {
      this.counterexamples = counterexamples;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the learningOptOut.
     *
     * @param learningOptOut the learningOptOut
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder learningOptOut(Boolean learningOptOut) {
      this.learningOptOut = learningOptOut;
      return this;
    }

    /**
     * Set the systemSettings.
     *
     * @param systemSettings the systemSettings
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder systemSettings(WorkspaceSystemSettings systemSettings) {
      this.systemSettings = systemSettings;
      return this;
    }

    /**
     * Set the append.
     *
     * @param append the append
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder append(Boolean append) {
      this.append = append;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Value.
   */
  public class Value extends IBMWatsonResponseModel {
    private String value_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private List<String> synonyms_serialized_name;
    private List<String> patterns_serialized_name;
    private String type_serialized_name;
 
    /**
     * Gets the valueText.
     *
     * The text of the entity value.
     *
     * @return the valueText
     */
    @AuraEnabled
    public String getValueText() {
      return value_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity value.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity value.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the synonyms.
     *
     * An array containing any synonyms for the entity value.
     *
     * @return the synonyms
     */
    @AuraEnabled
    public List<String> getSynonyms() {
      return synonyms_serialized_name;
    }
 
    /**
     * Gets the patterns.
     *
     * An array containing any patterns for the entity value.
     *
     * @return the patterns
     */
    @AuraEnabled
    public List<String> getPatterns() {
      return patterns_serialized_name;
    }
 
    /**
     * Gets the valueType.
     *
     * Specifies the type of value.
     *
     * @return the valueType
     */
    @AuraEnabled
    public String getValueType() {
      return type_serialized_name;
    }

    /**
     * Sets the valueText.
     *
     * @param valueText the new valueText
     */
    public void setValueText(final String valueText) {
      this.value_serialized_name = valueText;
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
     * Sets the synonyms.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<String> synonyms) {
      this.synonyms_serialized_name = synonyms;
    }

    /**
     * Sets the patterns.
     *
     * @param patterns the new patterns
     */
    public void setPatterns(final List<String> patterns) {
      this.patterns_serialized_name = patterns;
    }

    /**
     * Sets the valueType.
     *
     * @param valueType the new valueType
     */
    public void setValueType(final String valueType) {
      this.type_serialized_name = valueType;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Value ret = (Value) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      return ret;
    }
  }

  /**
   * ValueCollection.
   */
  public class ValueCollection extends IBMWatsonResponseModel {
    private List<ValueExport> values_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the values.
     *
     * An array of entity values.
     *
     * @return the values
     */
    @AuraEnabled
    public List<ValueExport> getValues() {
      return values_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the values.
     *
     * @param values the new values
     */
    public void setValues(final List<ValueExport> values) {
      this.values_serialized_name = values;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ValueCollection ret = (ValueCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for values
      List<ValueExport> newValues = new List<ValueExport>();
      List<ValueExport> deserializedValues = ret.getValues();
      if (deserializedValues != null) {
        for (Integer i = 0; i < deserializedValues.size(); i++) {
          ValueExport currentItem = ret.getValues().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('values_serialized_name');
          ValueExport newItem = (ValueExport) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ValueExport.class);
          newValues.add(newItem);
        }
        ret.setValues(newValues);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * ValueExport.
   */
  public class ValueExport extends IBMWatsonResponseModel {
    private String value_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private List<String> synonyms_serialized_name;
    private List<String> patterns_serialized_name;
    private String type_serialized_name;
 
    /**
     * Gets the valueText.
     *
     * The text of the entity value.
     *
     * @return the valueText
     */
    @AuraEnabled
    public String getValueText() {
      return value_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity value.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity value.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the synonyms.
     *
     * An array containing any synonyms for the entity value.
     *
     * @return the synonyms
     */
    @AuraEnabled
    public List<String> getSynonyms() {
      return synonyms_serialized_name;
    }
 
    /**
     * Gets the patterns.
     *
     * An array containing any patterns for the entity value.
     *
     * @return the patterns
     */
    @AuraEnabled
    public List<String> getPatterns() {
      return patterns_serialized_name;
    }
 
    /**
     * Gets the valueType.
     *
     * Specifies the type of value.
     *
     * @return the valueType
     */
    @AuraEnabled
    public String getValueType() {
      return type_serialized_name;
    }

    /**
     * Sets the valueText.
     *
     * @param valueText the new valueText
     */
    public void setValueText(final String valueText) {
      this.value_serialized_name = valueText;
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
     * Sets the synonyms.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<String> synonyms) {
      this.synonyms_serialized_name = synonyms;
    }

    /**
     * Sets the patterns.
     *
     * @param patterns the new patterns
     */
    public void setPatterns(final List<String> patterns) {
      this.patterns_serialized_name = patterns;
    }

    /**
     * Sets the valueType.
     *
     * @param valueType the new valueType
     */
    public void setValueType(final String valueType) {
      this.type_serialized_name = valueType;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ValueExport ret = (ValueExport) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      return ret;
    }
  }

  /**
   * Workspace.
   */
  public class Workspace extends IBMWatsonResponseModel {
    private String name_serialized_name;
    private String language_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String workspace_id_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean learning_opt_out_serialized_name;
    private WorkspaceSystemSettings system_settings_serialized_name;
 
    /**
     * Gets the name.
     *
     * The name of the workspace.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * The language of the workspace.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the workspace.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the workspace.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the workspaceId.
     *
     * The workspace ID of the workspace.
     *
     * @return the workspaceId
     */
    @AuraEnabled
    public String getWorkspaceId() {
      return workspace_id_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the workspace.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata related to the workspace.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace (including artifacts such as intents and entities) can be used by IBM
     * for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    @AuraEnabled
    public Boolean getLearningOptOut() {
      return learning_opt_out_serialized_name;
    }
 
    /**
     * Gets the systemSettings.
     *
     * Global settings for the workspace.
     *
     * @return the systemSettings
     */
    @AuraEnabled
    public WorkspaceSystemSettings getSystemSettings() {
      return system_settings_serialized_name;
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
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
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
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the learningOptOut.
     *
     * @param learningOptOut the new learningOptOut
     */
    public void setLearningOptOut(final Boolean learningOptOut) {
      this.learning_opt_out_serialized_name = learningOptOut;
    }

    /**
     * Sets the systemSettings.
     *
     * @param systemSettings the new systemSettings
     */
    public void setSystemSettings(final WorkspaceSystemSettings systemSettings) {
      this.system_settings_serialized_name = systemSettings;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Workspace ret = (Workspace) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for systemSettings
      WorkspaceSystemSettings newSystemSettings = (WorkspaceSystemSettings) new WorkspaceSystemSettings().deserialize(JSON.serialize(ret.getSystemSettings()), (Map<String, Object>) jsonMap.get('system_settings_serialized_name'), WorkspaceSystemSettings.class);
      ret.setSystemSettings(newSystemSettings);

      return ret;
    }
  }

  /**
   * WorkspaceCollection.
   */
  public class WorkspaceCollection extends IBMWatsonResponseModel {
    private List<Workspace> workspaces_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the workspaces.
     *
     * An array of objects describing the workspaces associated with the service instance.
     *
     * @return the workspaces
     */
    @AuraEnabled
    public List<Workspace> getWorkspaces() {
      return workspaces_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the workspaces.
     *
     * @param workspaces the new workspaces
     */
    public void setWorkspaces(final List<Workspace> workspaces) {
      this.workspaces_serialized_name = workspaces;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination_serialized_name = pagination;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WorkspaceCollection ret = (WorkspaceCollection) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for workspaces
      List<Workspace> newWorkspaces = new List<Workspace>();
      List<Workspace> deserializedWorkspaces = ret.getWorkspaces();
      if (deserializedWorkspaces != null) {
        for (Integer i = 0; i < deserializedWorkspaces.size(); i++) {
          Workspace currentItem = ret.getWorkspaces().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('workspaces_serialized_name');
          Workspace newItem = (Workspace) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Workspace.class);
          newWorkspaces.add(newItem);
        }
        ret.setWorkspaces(newWorkspaces);
      }

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * WorkspaceExport.
   */
  public class WorkspaceExport extends IBMWatsonResponseModel {
    private String name_serialized_name;
    private String description_serialized_name;
    private String language_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private String workspace_id_serialized_name;
    private String status_serialized_name;
    private Boolean learning_opt_out_serialized_name;
    private WorkspaceSystemSettings system_settings_serialized_name;
    private List<IntentExport> intents_serialized_name;
    private List<EntityExport> entities_serialized_name;
    private List<Counterexample> counterexamples_serialized_name;
    private List<DialogNode> dialog_nodes_serialized_name;
 
    /**
     * Gets the name.
     *
     * The name of the workspace.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the description.
     *
     * The description of the workspace.
     *
     * @return the description
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
 
    /**
     * Gets the language.
     *
     * The language of the workspace.
     *
     * @return the language
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
 
    /**
     * Gets the metadata.
     *
     * Any metadata that is required by the workspace.
     *
     * @return the metadata
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The timestamp for creation of the workspace.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the workspace.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
 
    /**
     * Gets the workspaceId.
     *
     * The workspace ID of the workspace.
     *
     * @return the workspaceId
     */
    @AuraEnabled
    public String getWorkspaceId() {
      return workspace_id_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The current status of the workspace.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates
     * that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    @AuraEnabled
    public Boolean getLearningOptOut() {
      return learning_opt_out_serialized_name;
    }
 
    /**
     * Gets the systemSettings.
     *
     * Global settings for the workspace.
     *
     * @return the systemSettings
     */
    @AuraEnabled
    public WorkspaceSystemSettings getSystemSettings() {
      return system_settings_serialized_name;
    }
 
    /**
     * Gets the intents.
     *
     * An array of intents.
     *
     * @return the intents
     */
    @AuraEnabled
    public List<IntentExport> getIntents() {
      return intents_serialized_name;
    }
 
    /**
     * Gets the entities.
     *
     * An array of entities.
     *
     * @return the entities
     */
    @AuraEnabled
    public List<EntityExport> getEntities() {
      return entities_serialized_name;
    }
 
    /**
     * Gets the counterexamples.
     *
     * An array of counterexamples.
     *
     * @return the counterexamples
     */
    @AuraEnabled
    public List<Counterexample> getCounterexamples() {
      return counterexamples_serialized_name;
    }
 
    /**
     * Gets the dialogNodes.
     *
     * An array of objects describing the dialog nodes in the workspace.
     *
     * @return the dialogNodes
     */
    @AuraEnabled
    public List<DialogNode> getDialogNodes() {
      return dialog_nodes_serialized_name;
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
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
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
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the learningOptOut.
     *
     * @param learningOptOut the new learningOptOut
     */
    public void setLearningOptOut(final Boolean learningOptOut) {
      this.learning_opt_out_serialized_name = learningOptOut;
    }

    /**
     * Sets the systemSettings.
     *
     * @param systemSettings the new systemSettings
     */
    public void setSystemSettings(final WorkspaceSystemSettings systemSettings) {
      this.system_settings_serialized_name = systemSettings;
    }

    /**
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<IntentExport> intents) {
      this.intents_serialized_name = intents;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntityExport> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the counterexamples.
     *
     * @param counterexamples the new counterexamples
     */
    public void setCounterexamples(final List<Counterexample> counterexamples) {
      this.counterexamples_serialized_name = counterexamples;
    }

    /**
     * Sets the dialogNodes.
     *
     * @param dialogNodes the new dialogNodes
     */
    public void setDialogNodes(final List<DialogNode> dialogNodes) {
      this.dialog_nodes_serialized_name = dialogNodes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WorkspaceExport ret = (WorkspaceExport) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for systemSettings
      WorkspaceSystemSettings newSystemSettings = (WorkspaceSystemSettings) new WorkspaceSystemSettings().deserialize(JSON.serialize(ret.getSystemSettings()), (Map<String, Object>) jsonMap.get('system_settings_serialized_name'), WorkspaceSystemSettings.class);
      ret.setSystemSettings(newSystemSettings);

      // calling custom deserializer for intents
      List<IntentExport> newIntents = new List<IntentExport>();
      List<IntentExport> deserializedIntents = ret.getIntents();
      if (deserializedIntents != null) {
        for (Integer i = 0; i < deserializedIntents.size(); i++) {
          IntentExport currentItem = ret.getIntents().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('intents_serialized_name');
          IntentExport newItem = (IntentExport) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), IntentExport.class);
          newIntents.add(newItem);
        }
        ret.setIntents(newIntents);
      }

      // calling custom deserializer for entities
      List<EntityExport> newEntities = new List<EntityExport>();
      List<EntityExport> deserializedEntities = ret.getEntities();
      if (deserializedEntities != null) {
        for (Integer i = 0; i < deserializedEntities.size(); i++) {
          EntityExport currentItem = ret.getEntities().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('entities_serialized_name');
          EntityExport newItem = (EntityExport) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), EntityExport.class);
          newEntities.add(newItem);
        }
        ret.setEntities(newEntities);
      }

      // calling custom deserializer for counterexamples
      List<Counterexample> newCounterexamples = new List<Counterexample>();
      List<Counterexample> deserializedCounterexamples = ret.getCounterexamples();
      if (deserializedCounterexamples != null) {
        for (Integer i = 0; i < deserializedCounterexamples.size(); i++) {
          Counterexample currentItem = ret.getCounterexamples().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('counterexamples_serialized_name');
          Counterexample newItem = (Counterexample) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Counterexample.class);
          newCounterexamples.add(newItem);
        }
        ret.setCounterexamples(newCounterexamples);
      }

      // calling custom deserializer for dialogNodes
      List<DialogNode> newDialogNodes = new List<DialogNode>();
      List<DialogNode> deserializedDialogNodes = ret.getDialogNodes();
      if (deserializedDialogNodes != null) {
        for (Integer i = 0; i < deserializedDialogNodes.size(); i++) {
          DialogNode currentItem = ret.getDialogNodes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('dialog_nodes_serialized_name');
          DialogNode newItem = (DialogNode) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), DialogNode.class);
          newDialogNodes.add(newItem);
        }
        ret.setDialogNodes(newDialogNodes);
      }

      return ret;
    }
  }

  /**
   * Global settings for the workspace.
   */
  public class WorkspaceSystemSettings extends IBMWatsonGenericModel {
    private WorkspaceSystemSettingsTooling tooling_serialized_name;
    private WorkspaceSystemSettingsDisambiguation disambiguation_serialized_name;
    private IBMWatsonMapModel human_agent_assist_serialized_name;
 
    /**
     * Gets the tooling.
     *
     * Workspace settings related to the Watson Assistant tool.
     *
     * @return the tooling
     */
    @AuraEnabled
    public WorkspaceSystemSettingsTooling getTooling() {
      return tooling_serialized_name;
    }
 
    /**
     * Gets the disambiguation.
     *
     * Workspace settings related to the disambiguation feature.
     *
     * **Note:** This feature is available only to Premium users.
     *
     * @return the disambiguation
     */
    @AuraEnabled
    public WorkspaceSystemSettingsDisambiguation getDisambiguation() {
      return disambiguation_serialized_name;
    }
 
    /**
     * Gets the humanAgentAssist.
     *
     * For internal use only.
     *
     * @return the humanAgentAssist
     */
    @AuraEnabled
    public IBMWatsonMapModel getHumanAgentAssist() {
      return human_agent_assist_serialized_name;
    }

    /**
     * Sets the tooling.
     *
     * @param tooling the new tooling
     */
    public void setTooling(final WorkspaceSystemSettingsTooling tooling) {
      this.tooling_serialized_name = tooling;
    }

    /**
     * Sets the disambiguation.
     *
     * @param disambiguation the new disambiguation
     */
    public void setDisambiguation(final WorkspaceSystemSettingsDisambiguation disambiguation) {
      this.disambiguation_serialized_name = disambiguation;
    }

    /**
     * Sets the humanAgentAssist.
     *
     * @param humanAgentAssist the new humanAgentAssist
     */
    public void setHumanAgentAssist(final IBMWatsonMapModel humanAgentAssist) {
      this.human_agent_assist_serialized_name = humanAgentAssist;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WorkspaceSystemSettings ret = (WorkspaceSystemSettings) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for tooling
      WorkspaceSystemSettingsTooling newTooling = (WorkspaceSystemSettingsTooling) new WorkspaceSystemSettingsTooling().deserialize(JSON.serialize(ret.getTooling()), (Map<String, Object>) jsonMap.get('tooling_serialized_name'), WorkspaceSystemSettingsTooling.class);
      ret.setTooling(newTooling);

      // calling custom deserializer for disambiguation
      WorkspaceSystemSettingsDisambiguation newDisambiguation = (WorkspaceSystemSettingsDisambiguation) new WorkspaceSystemSettingsDisambiguation().deserialize(JSON.serialize(ret.getDisambiguation()), (Map<String, Object>) jsonMap.get('disambiguation_serialized_name'), WorkspaceSystemSettingsDisambiguation.class);
      ret.setDisambiguation(newDisambiguation);

      // calling custom deserializer for humanAgentAssist
      IBMWatsonMapModel newHumanAgentAssist = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getHumanAgentAssist()), (Map<String, Object>) jsonMap.get('human_agent_assist_serialized_name'), IBMWatsonMapModel.class);
      ret.setHumanAgentAssist(newHumanAgentAssist);

      return ret;
    }
  }

  /**
   * Workspace settings related to the disambiguation feature.
   *
   * **Note:** This feature is available only to Premium users.
   */
  public class WorkspaceSystemSettingsDisambiguation extends IBMWatsonGenericModel {
    private String prompt_serialized_name;
    private String none_of_the_above_prompt_serialized_name;
    private Boolean enabled_serialized_name;
    private String sensitivity_serialized_name;
 
    /**
     * Gets the prompt.
     *
     * The text of the introductory prompt that accompanies disambiguation options presented to the user.
     *
     * @return the prompt
     */
    @AuraEnabled
    public String getPrompt() {
      return prompt_serialized_name;
    }
 
    /**
     * Gets the noneOfTheAbovePrompt.
     *
     * The user-facing label for the option users can select if none of the suggested options is correct. If no value is
     * specified for this property, this option does not appear.
     *
     * @return the noneOfTheAbovePrompt
     */
    @AuraEnabled
    public String getNoneOfTheAbovePrompt() {
      return none_of_the_above_prompt_serialized_name;
    }
 
    /**
     * Gets the enabled.
     *
     * Whether the disambiguation feature is enabled for the workspace.
     *
     * @return the enabled
     */
    @AuraEnabled
    public Boolean getEnabled() {
      return enabled_serialized_name;
    }
 
    /**
     * Gets the sensitivity.
     *
     * The sensitivity of the disambiguation feature to intent detection conflicts. Set to **high** if you want the
     * disambiguation feature to be triggered more often. This can be useful for testing or demonstration purposes.
     *
     * @return the sensitivity
     */
    @AuraEnabled
    public String getSensitivity() {
      return sensitivity_serialized_name;
    }

    /**
     * Sets the prompt.
     *
     * @param prompt the new prompt
     */
    public void setPrompt(final String prompt) {
      this.prompt_serialized_name = prompt;
    }

    /**
     * Sets the noneOfTheAbovePrompt.
     *
     * @param noneOfTheAbovePrompt the new noneOfTheAbovePrompt
     */
    public void setNoneOfTheAbovePrompt(final String noneOfTheAbovePrompt) {
      this.none_of_the_above_prompt_serialized_name = noneOfTheAbovePrompt;
    }

    /**
     * Sets the enabled.
     *
     * @param enabled the new enabled
     */
    public void setEnabled(final Boolean enabled) {
      this.enabled_serialized_name = enabled;
    }

    /**
     * Sets the sensitivity.
     *
     * @param sensitivity the new sensitivity
     */
    public void setSensitivity(final String sensitivity) {
      this.sensitivity_serialized_name = sensitivity;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WorkspaceSystemSettingsDisambiguation ret = (WorkspaceSystemSettingsDisambiguation) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Workspace settings related to the Watson Assistant tool.
   */
  public class WorkspaceSystemSettingsTooling extends IBMWatsonGenericModel {
    private Boolean store_generic_responses_serialized_name;
 
    /**
     * Gets the storeGenericResponses.
     *
     * Whether the dialog JSON editor displays text responses within the `output.generic` object.
     *
     * @return the storeGenericResponses
     */
    @AuraEnabled
    public Boolean getStoreGenericResponses() {
      return store_generic_responses_serialized_name;
    }

    /**
     * Sets the storeGenericResponses.
     *
     * @param storeGenericResponses the new storeGenericResponses
     */
    public void setStoreGenericResponses(final Boolean storeGenericResponses) {
      this.store_generic_responses_serialized_name = storeGenericResponses;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      WorkspaceSystemSettingsTooling ret = (WorkspaceSystemSettingsTooling) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

}
