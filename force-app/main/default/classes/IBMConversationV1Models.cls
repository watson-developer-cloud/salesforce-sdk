public class IBMConversationV1Models {
  /**
   * CaptureGroup.
   */
  public class CaptureGroup extends IBMWatsonGenericModel {
    private String group_serialized_name;
    private List<Long> location_serialized_name;
    /**
     * Gets the group_serialized_name.
     *
     * A recognized capture group for the entity.
     *
     * @return the group_serialized_name
     */
    @AuraEnabled
    public String getGroup() {
      return group_serialized_name;
    }
    /**
     * Gets the location_serialized_name.
     *
     * Zero-based character offsets that indicate where the entity value begins and ends in the input text.
     *
     * @return the location_serialized_name
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
    }

    /**
     * Sets the group_serialized_name.
     *
     * @param groupVar the new groupVar
     */
    public void setGroup(final String groupVar) {
      this.group_serialized_name = groupVar;
    }

    /**
     * Sets the location_serialized_name.
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
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the conversation_id_serialized_name.
     *
     * @return the conversation_id_serialized_name
     */
    @AuraEnabled
    public String getConversationId() {
      return conversation_id_serialized_name;
    }

    /**
     * Gets the system_serialized_name.
     *
     * @return the system_serialized_name
     */
    @AuraEnabled
    public SystemResponse getSystem() {
      return system_serialized_name;
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
     * Sets the conversation_id_serialized_name.
     *
     * @param conversation_id_serialized_name the new conversation_id_serialized_name
     */
    public void setConversationId(final String conversation_id_serialized_name) {
      this.conversation_id_serialized_name = conversation_id_serialized_name;
    }

    /**
     * Sets the system_serialized_name.
     *
     * @param system_serialized_name the new system_serialized_name
     */
    public void setSystem(final SystemResponse system_serialized_name) {
      this.system_serialized_name = system_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Context ret = (Context) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for system_serialized_name
      SystemResponse newSystem = (SystemResponse) new SystemResponse().deserialize(JSON.serialize(ret.getSystem()), (Map<String, Object>) jsonMap.get('system_serialized_name'), SystemResponse.class);
      ret.setSystem(newSystem);

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
     * Gets the text_serialized_name.
     *
     * The text of the counterexample.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the counterexample.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the counterexample.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
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
     * Gets the counterexamples_serialized_name.
     *
     * An array of objects describing the examples marked as irrelevant input.
     *
     * @return the counterexamples_serialized_name
     */
    @AuraEnabled
    public List<Counterexample> getCounterexamples() {
      return counterexamples_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the counterexamples_serialized_name.
     *
     * @param counterexamples the new counterexamples
     */
    public void setCounterexamples(final List<Counterexample> counterexamples) {
      this.counterexamples_serialized_name = counterexamples;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for counterexamples_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
     * Gets the text_serialized_name.
     *
     * The text of a user input marked as irrelevant input. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters
     * - It cannot consist of only whitespace characters
     * - It must be no longer than 1024 characters.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private CreateCounterexample(CreateCounterexampleBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
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
    private String text_serialized_name;

    private CreateCounterexampleBuilder(CreateCounterexample createCounterexample) {
      text_serialized_name = createCounterexample.text_serialized_name;
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
      this.text_serialized_name = text;
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
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the CreateCounterexample builder
     */
    public CreateCounterexampleBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }
  }

  /**
   * The createCounterexample options.
   */
  public class CreateCounterexampleOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input marked as irrelevant input. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters
     * - It cannot consist of only whitespace characters
     * - It must be no longer than 1024 characters.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private CreateCounterexampleOptions(CreateCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      text_serialized_name = builder.text_serialized_name;
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
    private String workspace_id_serialized_name;
    private String text_serialized_name;

    private CreateCounterexampleOptionsBuilder(CreateCounterexampleOptions createCounterexampleOptions) {
      workspace_id_serialized_name = createCounterexampleOptions.workspace_id_serialized_name;
      text_serialized_name = createCounterexampleOptions.text_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
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
    private IBMWatsonMapModel output_serialized_name;
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
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the dialog_node_serialized_name
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the dialog node. This string cannot contain carriage return, newline, or tab characters, and
     * it must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the conditions_serialized_name.
     *
     * The condition that will trigger the dialog node. This string cannot contain carriage return, newline, or tab
     * characters, and it must be no longer than 2048 characters.
     *
     * @return the conditions_serialized_name
     */
    public String conditions() {
      return conditions_serialized_name;
    }
    /**
     * Gets the parent_serialized_name.
     *
     * The ID of the parent dialog node.
     *
     * @return the parent_serialized_name
     */
    public String parent() {
      return parent_serialized_name;
    }
    /**
     * Gets the previous_sibling_serialized_name.
     *
     * The ID of the previous dialog node.
     *
     * @return the previous_sibling_serialized_name
     */
    public String previousSibling() {
      return previous_sibling_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * The output of the dialog node. For more information about how to specify dialog node output, see the
     * [documentation](https://console.bluemix.net/docs/services/conversation/dialog-overview.html#complex).
     *
     * @return the output_serialized_name
     */
    public IBMWatsonMapModel output() {
      return output_serialized_name;
    }
    /**
     * Gets the context_serialized_name.
     *
     * The context for the dialog node.
     *
     * @return the context_serialized_name
     */
    public IBMWatsonMapModel context() {
      return context_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the next_step_serialized_name.
     *
     * The next step to be executed in dialog processing.
     *
     * @return the next_step_serialized_name
     */
    public DialogNodeNextStep nextStep() {
      return next_step_serialized_name;
    }
    /**
     * Gets the actions_serialized_name.
     *
     * An array of objects describing any actions to be invoked by the dialog node.
     *
     * @return the actions_serialized_name
     */
    public List<DialogNodeAction> actions() {
      return actions_serialized_name;
    }
    /**
     * Gets the title_serialized_name.
     *
     * The alias used to identify the dialog node. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 64 characters.
     *
     * @return the title_serialized_name
     */
    public String title() {
      return title_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * How the dialog node is processed.
     *
     * @return the type_serialized_name
     */
    public String typeField() {
      return type_serialized_name;
    }
    /**
     * Gets the event_name_serialized_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the event_name_serialized_name
     */
    public String eventName() {
      return event_name_serialized_name;
    }
    /**
     * Gets the variable_serialized_name.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the variable_serialized_name
     */
    public String variable() {
      return variable_serialized_name;
    }
    /**
     * Gets the digress_in_serialized_name.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the digress_in_serialized_name
     */
    public String digressIn() {
      return digress_in_serialized_name;
    }
    /**
     * Gets the digress_out_serialized_name.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the digress_out_serialized_name
     */
    public String digressOut() {
      return digress_out_serialized_name;
    }
    /**
     * Gets the digress_out_slots_serialized_name.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the digress_out_slots_serialized_name
     */
    public String digressOutSlots() {
      return digress_out_slots_serialized_name;
    }
    private CreateDialogNode(CreateDialogNodeBuilder builder) {
      IBMWatsonValidator.notNull(builder.dialog_node_serialized_name, 'dialog_node_serialized_name cannot be null');
      dialog_node_serialized_name = builder.dialog_node_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      conditions_serialized_name = builder.conditions_serialized_name;
      parent_serialized_name = builder.parent_serialized_name;
      previous_sibling_serialized_name = builder.previous_sibling_serialized_name;
      output_serialized_name = builder.output_serialized_name;
      context_serialized_name = builder.context_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      next_step_serialized_name = builder.next_step_serialized_name;
      actions_serialized_name = builder.actions_serialized_name;
      title_serialized_name = builder.title_serialized_name;
      type_serialized_name = builder.type_serialized_name;
      event_name_serialized_name = builder.event_name_serialized_name;
      variable_serialized_name = builder.variable_serialized_name;
      digress_in_serialized_name = builder.digress_in_serialized_name;
      digress_out_serialized_name = builder.digress_out_serialized_name;
      digress_out_slots_serialized_name = builder.digress_out_slots_serialized_name;
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
    private String dialog_node_serialized_name;
    private String description_serialized_name;
    private String conditions_serialized_name;
    private String parent_serialized_name;
    private String previous_sibling_serialized_name;
    private IBMWatsonMapModel output_serialized_name;
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

    private CreateDialogNodeBuilder(CreateDialogNode createDialogNode) {
      dialog_node_serialized_name = createDialogNode.dialog_node_serialized_name;
      description_serialized_name = createDialogNode.description_serialized_name;
      conditions_serialized_name = createDialogNode.conditions_serialized_name;
      parent_serialized_name = createDialogNode.parent_serialized_name;
      previous_sibling_serialized_name = createDialogNode.previous_sibling_serialized_name;
      output_serialized_name = createDialogNode.output_serialized_name;
      context_serialized_name = createDialogNode.context_serialized_name;
      metadata_serialized_name = createDialogNode.metadata_serialized_name;
      next_step_serialized_name = createDialogNode.next_step_serialized_name;
      actions_serialized_name = createDialogNode.actions_serialized_name;
      title_serialized_name = createDialogNode.title_serialized_name;
      type_serialized_name = createDialogNode.type_serialized_name;
      event_name_serialized_name = createDialogNode.event_name_serialized_name;
      variable_serialized_name = createDialogNode.variable_serialized_name;
      digress_in_serialized_name = createDialogNode.digress_in_serialized_name;
      digress_out_serialized_name = createDialogNode.digress_out_serialized_name;
      digress_out_slots_serialized_name = createDialogNode.digress_out_slots_serialized_name;
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
      this.dialog_node_serialized_name = dialogNode;
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
     * Adds an actions to actions_serialized_name.
     *
     * @param actions the new actions
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder addActions(DialogNodeAction actions) {
      IBMWatsonValidator.notNull(actions, 'actions cannot be null');
      if (this.actions_serialized_name == null) {
        this.actions_serialized_name = new List<DialogNodeAction>();
      }
      this.actions_serialized_name.add(actions);
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialogNode the dialogNode
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder dialogNode(String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the conditions_serialized_name.
     *
     * @param conditions the conditions
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder conditions(String conditions) {
      this.conditions_serialized_name = conditions;
      return this;
    }

    /**
     * Set the parent_serialized_name.
     *
     * @param parent the parent
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder parent(String parent) {
      this.parent_serialized_name = parent;
      return this;
    }

    /**
     * Set the previous_sibling_serialized_name.
     *
     * @param previousSibling the previousSibling
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder previousSibling(String previousSibling) {
      this.previous_sibling_serialized_name = previousSibling;
      return this;
    }

    /**
     * Set the output_serialized_name.
     *
     * @param output the output
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder output(IBMWatsonMapModel output) {
      this.output_serialized_name = output;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context the context
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder context(IBMWatsonMapModel context) {
      this.context_serialized_name = context;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the next_step_serialized_name.
     *
     * @param nextStep the nextStep
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder nextStep(DialogNodeNextStep nextStep) {
      this.next_step_serialized_name = nextStep;
      return this;
    }

    /**
     * Set the actions_serialized_name.
     * Existing actions_serialized_name will be replaced.
     *
     * @param actions the actions
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder actions(List<DialogNodeAction> actions) {
      this.actions_serialized_name = actions;
      return this;
    }

    /**
     * Set the title_serialized_name.
     *
     * @param title the title
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder title(String title) {
      this.title_serialized_name = title;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param typeVar the typeVar
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder typeField(String typeVar) {
      this.type_serialized_name = typeVar;
      return this;
    }

    /**
     * Set the event_name_serialized_name.
     *
     * @param eventName the eventName
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder eventName(String eventName) {
      this.event_name_serialized_name = eventName;
      return this;
    }

    /**
     * Set the variable_serialized_name.
     *
     * @param variable the variable
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder variable(String variable) {
      this.variable_serialized_name = variable;
      return this;
    }

    /**
     * Set the digress_in_serialized_name.
     *
     * @param digressIn the digressIn
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder digressIn(String digressIn) {
      this.digress_in_serialized_name = digressIn;
      return this;
    }

    /**
     * Set the digress_out_serialized_name.
     *
     * @param digressOut the digressOut
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder digressOut(String digressOut) {
      this.digress_out_serialized_name = digressOut;
      return this;
    }

    /**
     * Set the digress_out_slots_serialized_name.
     *
     * @param digressOutSlots the digressOutSlots
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder digressOutSlots(String digressOutSlots) {
      this.digress_out_slots_serialized_name = digressOutSlots;
      return this;
    }
  }

  /**
   * The createDialogNode options.
   */
  public class CreateDialogNodeOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    private String description_serialized_name;
    private String conditions_serialized_name;
    private String parent_serialized_name;
    private String previous_sibling_serialized_name;
    private IBMWatsonMapModel output_serialized_name;
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
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the dialog_node_serialized_name
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the dialog node. This string cannot contain carriage return, newline, or tab characters, and
     * it must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the conditions_serialized_name.
     *
     * The condition that will trigger the dialog node. This string cannot contain carriage return, newline, or tab
     * characters, and it must be no longer than 2048 characters.
     *
     * @return the conditions_serialized_name
     */
    public String conditions() {
      return conditions_serialized_name;
    }
    /**
     * Gets the parent_serialized_name.
     *
     * The ID of the parent dialog node.
     *
     * @return the parent_serialized_name
     */
    public String parent() {
      return parent_serialized_name;
    }
    /**
     * Gets the previous_sibling_serialized_name.
     *
     * The ID of the previous dialog node.
     *
     * @return the previous_sibling_serialized_name
     */
    public String previousSibling() {
      return previous_sibling_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * The output of the dialog node. For more information about how to specify dialog node output, see the
     * [documentation](https://console.bluemix.net/docs/services/conversation/dialog-overview.html#complex).
     *
     * @return the output_serialized_name
     */
    public IBMWatsonMapModel output() {
      return output_serialized_name;
    }
    /**
     * Gets the context_serialized_name.
     *
     * The context for the dialog node.
     *
     * @return the context_serialized_name
     */
    public IBMWatsonMapModel context() {
      return context_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the next_step_serialized_name.
     *
     * The next step to be executed in dialog processing.
     *
     * @return the next_step_serialized_name
     */
    public DialogNodeNextStep nextStep() {
      return next_step_serialized_name;
    }
    /**
     * Gets the actions_serialized_name.
     *
     * An array of objects describing any actions to be invoked by the dialog node.
     *
     * @return the actions_serialized_name
     */
    public List<DialogNodeAction> actions() {
      return actions_serialized_name;
    }
    /**
     * Gets the title_serialized_name.
     *
     * The alias used to identify the dialog node. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 64 characters.
     *
     * @return the title_serialized_name
     */
    public String title() {
      return title_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * How the dialog node is processed.
     *
     * @return the type_serialized_name
     */
    public String typeField() {
      return type_serialized_name;
    }
    /**
     * Gets the event_name_serialized_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the event_name_serialized_name
     */
    public String eventName() {
      return event_name_serialized_name;
    }
    /**
     * Gets the variable_serialized_name.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the variable_serialized_name
     */
    public String variable() {
      return variable_serialized_name;
    }
    /**
     * Gets the digress_in_serialized_name.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the digress_in_serialized_name
     */
    public String digressIn() {
      return digress_in_serialized_name;
    }
    /**
     * Gets the digress_out_serialized_name.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the digress_out_serialized_name
     */
    public String digressOut() {
      return digress_out_serialized_name;
    }
    /**
     * Gets the digress_out_slots_serialized_name.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the digress_out_slots_serialized_name
     */
    public String digressOutSlots() {
      return digress_out_slots_serialized_name;
    }
    private CreateDialogNodeOptions(CreateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.dialog_node_serialized_name, 'dialog_node_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      dialog_node_serialized_name = builder.dialog_node_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      conditions_serialized_name = builder.conditions_serialized_name;
      parent_serialized_name = builder.parent_serialized_name;
      previous_sibling_serialized_name = builder.previous_sibling_serialized_name;
      output_serialized_name = builder.output_serialized_name;
      context_serialized_name = builder.context_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      next_step_serialized_name = builder.next_step_serialized_name;
      actions_serialized_name = builder.actions_serialized_name;
      title_serialized_name = builder.title_serialized_name;
      type_serialized_name = builder.type_serialized_name;
      event_name_serialized_name = builder.event_name_serialized_name;
      variable_serialized_name = builder.variable_serialized_name;
      digress_in_serialized_name = builder.digress_in_serialized_name;
      digress_out_serialized_name = builder.digress_out_serialized_name;
      digress_out_slots_serialized_name = builder.digress_out_slots_serialized_name;
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
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    private String description_serialized_name;
    private String conditions_serialized_name;
    private String parent_serialized_name;
    private String previous_sibling_serialized_name;
    private IBMWatsonMapModel output_serialized_name;
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

    private CreateDialogNodeOptionsBuilder(CreateDialogNodeOptions createDialogNodeOptions) {
      workspace_id_serialized_name = createDialogNodeOptions.workspace_id_serialized_name;
      dialog_node_serialized_name = createDialogNodeOptions.dialog_node_serialized_name;
      description_serialized_name = createDialogNodeOptions.description_serialized_name;
      conditions_serialized_name = createDialogNodeOptions.conditions_serialized_name;
      parent_serialized_name = createDialogNodeOptions.parent_serialized_name;
      previous_sibling_serialized_name = createDialogNodeOptions.previous_sibling_serialized_name;
      output_serialized_name = createDialogNodeOptions.output_serialized_name;
      context_serialized_name = createDialogNodeOptions.context_serialized_name;
      metadata_serialized_name = createDialogNodeOptions.metadata_serialized_name;
      next_step_serialized_name = createDialogNodeOptions.next_step_serialized_name;
      actions_serialized_name = createDialogNodeOptions.actions_serialized_name;
      title_serialized_name = createDialogNodeOptions.title_serialized_name;
      type_serialized_name = createDialogNodeOptions.type_serialized_name;
      event_name_serialized_name = createDialogNodeOptions.event_name_serialized_name;
      variable_serialized_name = createDialogNodeOptions.variable_serialized_name;
      digress_in_serialized_name = createDialogNodeOptions.digress_in_serialized_name;
      digress_out_serialized_name = createDialogNodeOptions.digress_out_serialized_name;
      digress_out_slots_serialized_name = createDialogNodeOptions.digress_out_slots_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.dialog_node_serialized_name = dialogNode;
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
     * Adds an actions to actions_serialized_name.
     *
     * @param actions the new actions
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder addActions(DialogNodeAction actions) {
      IBMWatsonValidator.notNull(actions, 'actions cannot be null');
      if (this.actions_serialized_name == null) {
        this.actions_serialized_name = new List<DialogNodeAction>();
      }
      this.actions_serialized_name.add(actions);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialogNode the dialogNode
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the conditions_serialized_name.
     *
     * @param conditions the conditions
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder conditions(String conditions) {
      this.conditions_serialized_name = conditions;
      return this;
    }

    /**
     * Set the parent_serialized_name.
     *
     * @param parent the parent
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder parent(String parent) {
      this.parent_serialized_name = parent;
      return this;
    }

    /**
     * Set the previous_sibling_serialized_name.
     *
     * @param previousSibling the previousSibling
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder previousSibling(String previousSibling) {
      this.previous_sibling_serialized_name = previousSibling;
      return this;
    }

    /**
     * Set the output_serialized_name.
     *
     * @param output the output
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder output(IBMWatsonMapModel output) {
      this.output_serialized_name = output;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context the context
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder context(IBMWatsonMapModel context) {
      this.context_serialized_name = context;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the next_step_serialized_name.
     *
     * @param nextStep the nextStep
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder nextStep(DialogNodeNextStep nextStep) {
      this.next_step_serialized_name = nextStep;
      return this;
    }

    /**
     * Set the actions_serialized_name.
     * Existing actions_serialized_name will be replaced.
     *
     * @param actions the actions
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder actions(List<DialogNodeAction> actions) {
      this.actions_serialized_name = actions;
      return this;
    }

    /**
     * Set the title_serialized_name.
     *
     * @param title the title
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder title(String title) {
      this.title_serialized_name = title;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param typeVar the typeVar
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder typeField(String typeVar) {
      this.type_serialized_name = typeVar;
      return this;
    }

    /**
     * Set the event_name_serialized_name.
     *
     * @param eventName the eventName
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder eventName(String eventName) {
      this.event_name_serialized_name = eventName;
      return this;
    }

    /**
     * Set the variable_serialized_name.
     *
     * @param variable the variable
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder variable(String variable) {
      this.variable_serialized_name = variable;
      return this;
    }

    /**
     * Set the digress_in_serialized_name.
     *
     * @param digressIn the digressIn
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder digressIn(String digressIn) {
      this.digress_in_serialized_name = digressIn;
      return this;
    }

    /**
     * Set the digress_out_serialized_name.
     *
     * @param digressOut the digressOut
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder digressOut(String digressOut) {
      this.digress_out_serialized_name = digressOut;
      return this;
    }

    /**
     * Set the digress_out_slots_serialized_name.
     *
     * @param digressOutSlots the digressOutSlots
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder digressOutSlots(String digressOutSlots) {
      this.digress_out_slots_serialized_name = digressOutSlots;
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
     * Gets the entity_serialized_name.
     *
     * The name of the entity. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, and hyphen characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 64 characters.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the entity. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the value.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the values_serialized_name.
     *
     * An array of objects describing the entity values.
     *
     * @return the values_serialized_name
     */
    public List<CreateValue> values() {
      return values_serialized_name;
    }
    /**
     * Gets the fuzzy_match_serialized_name.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the fuzzy_match_serialized_name
     */
    public Boolean fuzzyMatch() {
      return fuzzy_match_serialized_name;
    }
    private CreateEntity(CreateEntityBuilder builder) {
      IBMWatsonValidator.notNull(builder.entity_serialized_name, 'entity_serialized_name cannot be null');
      entity_serialized_name = builder.entity_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      values_serialized_name = builder.values_serialized_name;
      fuzzy_match_serialized_name = builder.fuzzy_match_serialized_name;
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
    private String entity_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CreateValue> values_serialized_name;
    private Boolean fuzzy_match_serialized_name;

    private CreateEntityBuilder(CreateEntity createEntity) {
      entity_serialized_name = createEntity.entity_serialized_name;
      description_serialized_name = createEntity.description_serialized_name;
      metadata_serialized_name = createEntity.metadata_serialized_name;
      values_serialized_name = createEntity.values_serialized_name;
      fuzzy_match_serialized_name = createEntity.fuzzy_match_serialized_name;
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
      this.entity_serialized_name = entity;
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
     * Adds an values to values_serialized_name.
     *
     * @param values the new values
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder addValues(CreateValue values) {
      IBMWatsonValidator.notNull(values, 'values cannot be null');
      if (this.values_serialized_name == null) {
        this.values_serialized_name = new List<CreateValue>();
      }
      this.values_serialized_name.add(values);
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the values_serialized_name.
     * Existing values_serialized_name will be replaced.
     *
     * @param values the values
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder values(List<CreateValue> values) {
      this.values_serialized_name = values;
      return this;
    }

    /**
     * Set the fuzzy_match_serialized_name.
     *
     * @param fuzzyMatch the fuzzyMatch
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder fuzzyMatch(Boolean fuzzyMatch) {
      this.fuzzy_match_serialized_name = fuzzyMatch;
      return this;
    }
  }

  /**
   * The createEntity options.
   */
  public class CreateEntityOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CreateValue> values_serialized_name;
    private Boolean fuzzy_match_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, and hyphen characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 64 characters.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the entity. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the value.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the values_serialized_name.
     *
     * An array of objects describing the entity values.
     *
     * @return the values_serialized_name
     */
    public List<CreateValue> values() {
      return values_serialized_name;
    }
    /**
     * Gets the fuzzy_match_serialized_name.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the fuzzy_match_serialized_name
     */
    public Boolean fuzzyMatch() {
      return fuzzy_match_serialized_name;
    }
    private CreateEntityOptions(CreateEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.entity_serialized_name, 'entity_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      values_serialized_name = builder.values_serialized_name;
      fuzzy_match_serialized_name = builder.fuzzy_match_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CreateValue> values_serialized_name;
    private Boolean fuzzy_match_serialized_name;

    private CreateEntityOptionsBuilder(CreateEntityOptions createEntityOptions) {
      workspace_id_serialized_name = createEntityOptions.workspace_id_serialized_name;
      entity_serialized_name = createEntityOptions.entity_serialized_name;
      description_serialized_name = createEntityOptions.description_serialized_name;
      metadata_serialized_name = createEntityOptions.metadata_serialized_name;
      values_serialized_name = createEntityOptions.values_serialized_name;
      fuzzy_match_serialized_name = createEntityOptions.fuzzy_match_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
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
     * Adds an values to values_serialized_name.
     *
     * @param values the new values
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder addValues(CreateValue values) {
      IBMWatsonValidator.notNull(values, 'values cannot be null');
      if (this.values_serialized_name == null) {
        this.values_serialized_name = new List<CreateValue>();
      }
      this.values_serialized_name.add(values);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the values_serialized_name.
     * Existing values_serialized_name will be replaced.
     *
     * @param values the values
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder values(List<CreateValue> values) {
      this.values_serialized_name = values;
      return this;
    }

    /**
     * Set the fuzzy_match_serialized_name.
     *
     * @param fuzzyMatch the fuzzyMatch
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder fuzzyMatch(Boolean fuzzyMatch) {
      this.fuzzy_match_serialized_name = fuzzyMatch;
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
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input example. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private CreateExample(CreateExampleBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
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
    private String text_serialized_name;

    private CreateExampleBuilder(CreateExample createExample) {
      text_serialized_name = createExample.text_serialized_name;
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
      this.text_serialized_name = text;
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
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the CreateExample builder
     */
    public CreateExampleBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }
  }

  /**
   * The createExample options.
   */
  public class CreateExampleOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input example. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private CreateExampleOptions(CreateExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      text_serialized_name = builder.text_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;

    private CreateExampleOptionsBuilder(CreateExampleOptions createExampleOptions) {
      workspace_id_serialized_name = createExampleOptions.workspace_id_serialized_name;
      intent_serialized_name = createExampleOptions.intent_serialized_name;
      text_serialized_name = createExampleOptions.text_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
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
     * Gets the intent_serialized_name.
     *
     * The name of the intent. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, hyphen, and dot characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 128 characters.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the intent. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the examples_serialized_name.
     *
     * An array of user input examples for the intent.
     *
     * @return the examples_serialized_name
     */
    public List<CreateExample> examples() {
      return examples_serialized_name;
    }
    private CreateIntent(CreateIntentBuilder builder) {
      IBMWatsonValidator.notNull(builder.intent_serialized_name, 'intent_serialized_name cannot be null');
      intent_serialized_name = builder.intent_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      examples_serialized_name = builder.examples_serialized_name;
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
    private String intent_serialized_name;
    private String description_serialized_name;
    private List<CreateExample> examples_serialized_name;

    private CreateIntentBuilder(CreateIntent createIntent) {
      intent_serialized_name = createIntent.intent_serialized_name;
      description_serialized_name = createIntent.description_serialized_name;
      examples_serialized_name = createIntent.examples_serialized_name;
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
      this.intent_serialized_name = intent;
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
     * Adds an examples to examples_serialized_name.
     *
     * @param examples the new examples
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder addExamples(CreateExample examples) {
      IBMWatsonValidator.notNull(examples, 'examples cannot be null');
      if (this.examples_serialized_name == null) {
        this.examples_serialized_name = new List<CreateExample>();
      }
      this.examples_serialized_name.add(examples);
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the examples_serialized_name.
     * Existing examples_serialized_name will be replaced.
     *
     * @param examples the examples
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder examples(List<CreateExample> examples) {
      this.examples_serialized_name = examples;
      return this;
    }
  }

  /**
   * The createIntent options.
   */
  public class CreateIntentOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String description_serialized_name;
    private List<CreateExample> examples_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The name of the intent. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, hyphen, and dot characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 128 characters.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the intent. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the examples_serialized_name.
     *
     * An array of user input examples for the intent.
     *
     * @return the examples_serialized_name
     */
    public List<CreateExample> examples() {
      return examples_serialized_name;
    }
    private CreateIntentOptions(CreateIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.intent_serialized_name, 'intent_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      examples_serialized_name = builder.examples_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String description_serialized_name;
    private List<CreateExample> examples_serialized_name;

    private CreateIntentOptionsBuilder(CreateIntentOptions createIntentOptions) {
      workspace_id_serialized_name = createIntentOptions.workspace_id_serialized_name;
      intent_serialized_name = createIntentOptions.intent_serialized_name;
      description_serialized_name = createIntentOptions.description_serialized_name;
      examples_serialized_name = createIntentOptions.examples_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
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
     * Adds an examples to examples_serialized_name.
     *
     * @param examples the new examples
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder addExamples(CreateExample examples) {
      IBMWatsonValidator.notNull(examples, 'examples cannot be null');
      if (this.examples_serialized_name == null) {
        this.examples_serialized_name = new List<CreateExample>();
      }
      this.examples_serialized_name.add(examples);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the examples_serialized_name.
     * Existing examples_serialized_name will be replaced.
     *
     * @param examples the examples
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder examples(List<CreateExample> examples) {
      this.examples_serialized_name = examples;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the synonym_serialized_name.
     *
     * The text of the synonym. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the synonym_serialized_name
     */
    public String synonym() {
      return synonym_serialized_name;
    }
    private CreateSynonymOptions(CreateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.synonym_serialized_name, 'synonym_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      synonym_serialized_name = builder.synonym_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;

    private CreateSynonymOptionsBuilder(CreateSynonymOptions createSynonymOptions) {
      workspace_id_serialized_name = createSynonymOptions.workspace_id_serialized_name;
      entity_serialized_name = createSynonymOptions.entity_serialized_name;
      value_serialized_name = createSynonymOptions.value_serialized_name;
      synonym_serialized_name = createSynonymOptions.synonym_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
      this.synonym_serialized_name = synonym;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym the synonym
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder synonym(String synonym) {
      this.synonym_serialized_name = synonym;
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
     * Gets the value_serialized_name.
     *
     * The text of the entity value. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the synonyms_serialized_name.
     *
     * An array containing any synonyms for the entity value. You can provide either synonyms or patterns (as indicated
     * by **type**), but not both. A synonym must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the synonyms_serialized_name
     */
    public List<String> synonyms() {
      return synonyms_serialized_name;
    }
    /**
     * Gets the patterns_serialized_name.
     *
     * An array of patterns for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A pattern is a regular expression no longer than 512 characters. For more information
     * about how to specify a pattern, see the
     * [documentation](https://console.bluemix.net/docs/services/conversation/entities.html#creating-entities).
     *
     * @return the patterns_serialized_name
     */
    public List<String> patterns() {
      return patterns_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value.
     *
     * @return the type_serialized_name
     */
    public String typeField() {
      return type_serialized_name;
    }
    private CreateValue(CreateValueBuilder builder) {
      IBMWatsonValidator.notNull(builder.value_serialized_name, 'value_serialized_name cannot be null');
      value_serialized_name = builder.value_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      synonyms_serialized_name = builder.synonyms_serialized_name;
      patterns_serialized_name = builder.patterns_serialized_name;
      type_serialized_name = builder.type_serialized_name;
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
    private String value_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<String> synonyms_serialized_name;
    private List<String> patterns_serialized_name;
    private String type_serialized_name;

    private CreateValueBuilder(CreateValue createValue) {
      value_serialized_name = createValue.value_serialized_name;
      metadata_serialized_name = createValue.metadata_serialized_name;
      synonyms_serialized_name = createValue.synonyms_serialized_name;
      patterns_serialized_name = createValue.patterns_serialized_name;
      type_serialized_name = createValue.type_serialized_name;
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
      this.value_serialized_name = value;
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
     * Adds an synonyms to synonyms_serialized_name.
     *
     * @param synonyms the new synonyms
     * @return the CreateValue builder
     */
    public CreateValueBuilder addSynonyms(String synonyms) {
      IBMWatsonValidator.notNull(synonyms, 'synonyms cannot be null');
      if (this.synonyms_serialized_name == null) {
        this.synonyms_serialized_name = new List<String>();
      }
      this.synonyms_serialized_name.add(synonyms);
      return this;
    }

    /**
     * Adds an patterns to patterns_serialized_name.
     *
     * @param patterns the new patterns
     * @return the CreateValue builder
     */
    public CreateValueBuilder addPatterns(String patterns) {
      IBMWatsonValidator.notNull(patterns, 'patterns cannot be null');
      if (this.patterns_serialized_name == null) {
        this.patterns_serialized_name = new List<String>();
      }
      this.patterns_serialized_name.add(patterns);
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the CreateValue builder
     */
    public CreateValueBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the CreateValue builder
     */
    public CreateValueBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the synonyms_serialized_name.
     * Existing synonyms_serialized_name will be replaced.
     *
     * @param synonyms the synonyms
     * @return the CreateValue builder
     */
    public CreateValueBuilder synonyms(List<String> synonyms) {
      this.synonyms_serialized_name = synonyms;
      return this;
    }

    /**
     * Set the patterns_serialized_name.
     * Existing patterns_serialized_name will be replaced.
     *
     * @param patterns the patterns
     * @return the CreateValue builder
     */
    public CreateValueBuilder patterns(List<String> patterns) {
      this.patterns_serialized_name = patterns;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param typeVar the typeVar
     * @return the CreateValue builder
     */
    public CreateValueBuilder typeField(String typeVar) {
      this.type_serialized_name = typeVar;
      return this;
    }
  }

  /**
   * The createValue options.
   */
  public class CreateValueOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<String> synonyms_serialized_name;
    private List<String> patterns_serialized_name;
    private String type_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the synonyms_serialized_name.
     *
     * An array containing any synonyms for the entity value. You can provide either synonyms or patterns (as indicated
     * by **type**), but not both. A synonym must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the synonyms_serialized_name
     */
    public List<String> synonyms() {
      return synonyms_serialized_name;
    }
    /**
     * Gets the patterns_serialized_name.
     *
     * An array of patterns for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A pattern is a regular expression no longer than 512 characters. For more information
     * about how to specify a pattern, see the
     * [documentation](https://console.bluemix.net/docs/services/conversation/entities.html#creating-entities).
     *
     * @return the patterns_serialized_name
     */
    public List<String> patterns() {
      return patterns_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value.
     *
     * @return the type_serialized_name
     */
    public String typeField() {
      return type_serialized_name;
    }
    private CreateValueOptions(CreateValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.value_serialized_name, 'value_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      synonyms_serialized_name = builder.synonyms_serialized_name;
      patterns_serialized_name = builder.patterns_serialized_name;
      type_serialized_name = builder.type_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<String> synonyms_serialized_name;
    private List<String> patterns_serialized_name;
    private String type_serialized_name;

    private CreateValueOptionsBuilder(CreateValueOptions createValueOptions) {
      workspace_id_serialized_name = createValueOptions.workspace_id_serialized_name;
      entity_serialized_name = createValueOptions.entity_serialized_name;
      value_serialized_name = createValueOptions.value_serialized_name;
      metadata_serialized_name = createValueOptions.metadata_serialized_name;
      synonyms_serialized_name = createValueOptions.synonyms_serialized_name;
      patterns_serialized_name = createValueOptions.patterns_serialized_name;
      type_serialized_name = createValueOptions.type_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
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
     * Adds an synonyms to synonyms_serialized_name.
     *
     * @param synonyms the new synonyms
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addSynonyms(String synonyms) {
      IBMWatsonValidator.notNull(synonyms, 'synonyms cannot be null');
      if (this.synonyms_serialized_name == null) {
        this.synonyms_serialized_name = new List<String>();
      }
      this.synonyms_serialized_name.add(synonyms);
      return this;
    }

    /**
     * Adds an patterns to patterns_serialized_name.
     *
     * @param patterns the new patterns
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addPatterns(String patterns) {
      IBMWatsonValidator.notNull(patterns, 'patterns cannot be null');
      if (this.patterns_serialized_name == null) {
        this.patterns_serialized_name = new List<String>();
      }
      this.patterns_serialized_name.add(patterns);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the synonyms_serialized_name.
     * Existing synonyms_serialized_name will be replaced.
     *
     * @param synonyms the synonyms
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder synonyms(List<String> synonyms) {
      this.synonyms_serialized_name = synonyms;
      return this;
    }

    /**
     * Set the patterns_serialized_name.
     * Existing patterns_serialized_name will be replaced.
     *
     * @param patterns the patterns
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder patterns(List<String> patterns) {
      this.patterns_serialized_name = patterns;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param typeVar the typeVar
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder typeField(String typeVar) {
      this.type_serialized_name = typeVar;
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
    private String name_serialized_name;
    private String description_serialized_name;
    private String language_serialized_name;
    private List<CreateIntent> intents_serialized_name;
    private List<CreateEntity> entities_serialized_name;
    private List<CreateDialogNode> dialog_nodes_serialized_name;
    private List<CreateCounterexample> counterexamples_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean learning_opt_out_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * The name of the workspace. This string cannot contain carriage return, newline, or tab characters, and it must be
     * no longer than 64 characters.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the workspace. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the workspace.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    /**
     * Gets the intents_serialized_name.
     *
     * An array of objects defining the intents for the workspace.
     *
     * @return the intents_serialized_name
     */
    public List<CreateIntent> intents() {
      return intents_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * An array of objects defining the entities for the workspace.
     *
     * @return the entities_serialized_name
     */
    public List<CreateEntity> entities() {
      return entities_serialized_name;
    }
    /**
     * Gets the dialog_nodes_serialized_name.
     *
     * An array of objects defining the nodes in the workspace dialog.
     *
     * @return the dialog_nodes_serialized_name
     */
    public List<CreateDialogNode> dialogNodes() {
      return dialog_nodes_serialized_name;
    }
    /**
     * Gets the counterexamples_serialized_name.
     *
     * An array of objects defining input examples that have been marked as irrelevant input.
     *
     * @return the counterexamples_serialized_name
     */
    public List<CreateCounterexample> counterexamples() {
      return counterexamples_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the workspace.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the learning_opt_out_serialized_name.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates
     * that workspace training data is not to be used.
     *
     * @return the learning_opt_out_serialized_name
     */
    public Boolean learningOptOut() {
      return learning_opt_out_serialized_name;
    }
    private CreateWorkspaceOptions(CreateWorkspaceOptionsBuilder builder) {
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      language_serialized_name = builder.language_serialized_name;
      intents_serialized_name = builder.intents_serialized_name;
      entities_serialized_name = builder.entities_serialized_name;
      dialog_nodes_serialized_name = builder.dialog_nodes_serialized_name;
      counterexamples_serialized_name = builder.counterexamples_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      learning_opt_out_serialized_name = builder.learning_opt_out_serialized_name;
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
    private String name_serialized_name;
    private String description_serialized_name;
    private String language_serialized_name;
    private List<CreateIntent> intents_serialized_name;
    private List<CreateEntity> entities_serialized_name;
    private List<CreateDialogNode> dialog_nodes_serialized_name;
    private List<CreateCounterexample> counterexamples_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean learning_opt_out_serialized_name;

    private CreateWorkspaceOptionsBuilder(CreateWorkspaceOptions createWorkspaceOptions) {
      name_serialized_name = createWorkspaceOptions.name_serialized_name;
      description_serialized_name = createWorkspaceOptions.description_serialized_name;
      language_serialized_name = createWorkspaceOptions.language_serialized_name;
      intents_serialized_name = createWorkspaceOptions.intents_serialized_name;
      entities_serialized_name = createWorkspaceOptions.entities_serialized_name;
      dialog_nodes_serialized_name = createWorkspaceOptions.dialog_nodes_serialized_name;
      counterexamples_serialized_name = createWorkspaceOptions.counterexamples_serialized_name;
      metadata_serialized_name = createWorkspaceOptions.metadata_serialized_name;
      learning_opt_out_serialized_name = createWorkspaceOptions.learning_opt_out_serialized_name;
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
     * Adds an intents to intents_serialized_name.
     *
     * @param intents the new intents
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addIntents(CreateIntent intents) {
      IBMWatsonValidator.notNull(intents, 'intents cannot be null');
      if (this.intents_serialized_name == null) {
        this.intents_serialized_name = new List<CreateIntent>();
      }
      this.intents_serialized_name.add(intents);
      return this;
    }

    /**
     * Adds an entities to entities_serialized_name.
     *
     * @param entities the new entities
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addEntities(CreateEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities_serialized_name == null) {
        this.entities_serialized_name = new List<CreateEntity>();
      }
      this.entities_serialized_name.add(entities);
      return this;
    }

    /**
     * Adds an dialogNodes to dialog_nodes_serialized_name.
     *
     * @param dialogNodes the new dialogNodes
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialogNodes) {
      IBMWatsonValidator.notNull(dialogNodes, 'dialogNodes cannot be null');
      if (this.dialog_nodes_serialized_name == null) {
        this.dialog_nodes_serialized_name = new List<CreateDialogNode>();
      }
      this.dialog_nodes_serialized_name.add(dialogNodes);
      return this;
    }

    /**
     * Adds an counterexamples to counterexamples_serialized_name.
     *
     * @param counterexamples the new counterexamples
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addCounterexamples(CreateCounterexample counterexamples) {
      IBMWatsonValidator.notNull(counterexamples, 'counterexamples cannot be null');
      if (this.counterexamples_serialized_name == null) {
        this.counterexamples_serialized_name = new List<CreateCounterexample>();
      }
      this.counterexamples_serialized_name.add(counterexamples);
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }

    /**
     * Set the intents_serialized_name.
     * Existing intents_serialized_name will be replaced.
     *
     * @param intents the intents
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder intents(List<CreateIntent> intents) {
      this.intents_serialized_name = intents;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     * Existing entities_serialized_name will be replaced.
     *
     * @param entities the entities
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder entities(List<CreateEntity> entities) {
      this.entities_serialized_name = entities;
      return this;
    }

    /**
     * Set the dialog_nodes_serialized_name.
     * Existing dialog_nodes_serialized_name will be replaced.
     *
     * @param dialogNodes the dialogNodes
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialogNodes) {
      this.dialog_nodes_serialized_name = dialogNodes;
      return this;
    }

    /**
     * Set the counterexamples_serialized_name.
     * Existing counterexamples_serialized_name will be replaced.
     *
     * @param counterexamples the counterexamples
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder counterexamples(List<CreateCounterexample> counterexamples) {
      this.counterexamples_serialized_name = counterexamples;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the learning_opt_out_serialized_name.
     *
     * @param learningOptOut the learningOptOut
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder learningOptOut(Boolean learningOptOut) {
      this.learning_opt_out_serialized_name = learningOptOut;
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
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input counterexample (for example, `What are you wearing?`).
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private DeleteCounterexampleOptions(DeleteCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      text_serialized_name = builder.text_serialized_name;
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
    private String workspace_id_serialized_name;
    private String text_serialized_name;

    private DeleteCounterexampleOptionsBuilder(DeleteCounterexampleOptions deleteCounterexampleOptions) {
      workspace_id_serialized_name = deleteCounterexampleOptions.workspace_id_serialized_name;
      text_serialized_name = deleteCounterexampleOptions.text_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
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
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialog_node_serialized_name
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
    private DeleteDialogNodeOptions(DeleteDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node_serialized_name, 'dialog_node_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      dialog_node_serialized_name = builder.dialog_node_serialized_name;
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
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;

    private DeleteDialogNodeOptionsBuilder(DeleteDialogNodeOptions deleteDialogNodeOptions) {
      workspace_id_serialized_name = deleteDialogNodeOptions.workspace_id_serialized_name;
      dialog_node_serialized_name = deleteDialogNodeOptions.dialog_node_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.dialog_node_serialized_name = dialogNode;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialogNode the dialogNode
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    private DeleteEntityOptions(DeleteEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;

    private DeleteEntityOptionsBuilder(DeleteEntityOptions deleteEntityOptions) {
      workspace_id_serialized_name = deleteEntityOptions.workspace_id_serialized_name;
      entity_serialized_name = deleteEntityOptions.entity_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of the user input example.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    private DeleteExampleOptions(DeleteExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      text_serialized_name = builder.text_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;

    private DeleteExampleOptionsBuilder(DeleteExampleOptions deleteExampleOptions) {
      workspace_id_serialized_name = deleteExampleOptions.workspace_id_serialized_name;
      intent_serialized_name = deleteExampleOptions.intent_serialized_name;
      text_serialized_name = deleteExampleOptions.text_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    private DeleteIntentOptions(DeleteIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;

    private DeleteIntentOptionsBuilder(DeleteIntentOptions deleteIntentOptions) {
      workspace_id_serialized_name = deleteIntentOptions.workspace_id_serialized_name;
      intent_serialized_name = deleteIntentOptions.intent_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the synonym_serialized_name.
     *
     * The text of the synonym.
     *
     * @return the synonym_serialized_name
     */
    public String synonym() {
      return synonym_serialized_name;
    }
    private DeleteSynonymOptions(DeleteSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym_serialized_name, 'synonym_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      synonym_serialized_name = builder.synonym_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;

    private DeleteSynonymOptionsBuilder(DeleteSynonymOptions deleteSynonymOptions) {
      workspace_id_serialized_name = deleteSynonymOptions.workspace_id_serialized_name;
      entity_serialized_name = deleteSynonymOptions.entity_serialized_name;
      value_serialized_name = deleteSynonymOptions.value_serialized_name;
      synonym_serialized_name = deleteSynonymOptions.synonym_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
      this.synonym_serialized_name = synonym;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym the synonym
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder synonym(String synonym) {
      this.synonym_serialized_name = synonym;
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
    private String customer_id_serialized_name;
    /**
     * Gets the customer_id_serialized_name.
     *
     * The customer ID for which all data is to be deleted.
     *
     * @return the customer_id_serialized_name
     */
    public String customerId() {
      return customer_id_serialized_name;
    }
    private DeleteUserDataOptions(DeleteUserDataOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.customer_id_serialized_name, 'customer_id_serialized_name cannot be null');
      customer_id_serialized_name = builder.customer_id_serialized_name;
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
    private String customer_id_serialized_name;

    private DeleteUserDataOptionsBuilder(DeleteUserDataOptions deleteUserDataOptions) {
      customer_id_serialized_name = deleteUserDataOptions.customer_id_serialized_name;
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
      this.customer_id_serialized_name = customerId;
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
     * Set the customer_id_serialized_name.
     *
     * @param customerId the customerId
     * @return the DeleteUserDataOptions builder
     */
    public DeleteUserDataOptionsBuilder customerId(String customerId) {
      this.customer_id_serialized_name = customerId;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    private DeleteValueOptions(DeleteValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;

    private DeleteValueOptionsBuilder(DeleteValueOptions deleteValueOptions) {
      workspace_id_serialized_name = deleteValueOptions.workspace_id_serialized_name;
      entity_serialized_name = deleteValueOptions.entity_serialized_name;
      value_serialized_name = deleteValueOptions.value_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder value(String value) {
      this.value_serialized_name = value;
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
    private String workspace_id_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    private DeleteWorkspaceOptions(DeleteWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
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
    private String workspace_id_serialized_name;

    private DeleteWorkspaceOptionsBuilder(DeleteWorkspaceOptions deleteWorkspaceOptions) {
      workspace_id_serialized_name = deleteWorkspaceOptions.workspace_id_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the DeleteWorkspaceOptions builder
     */
    public DeleteWorkspaceOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
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
    private IBMWatsonMapModel output_serialized_name;
    private IBMWatsonMapModel context_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private DialogNodeNextStep next_step_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    private List<DialogNodeAction> actions_serialized_name;
    private String title_serialized_name;
    private String type_serialized_name;
    private String event_name_serialized_name;
    private String variable_serialized_name;
    private String digress_in_serialized_name;
    private String digress_out_serialized_name;
    private String digress_out_slots_serialized_name;
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID.
     *
     * @return the dialog_node_serialized_name
     */
    @AuraEnabled
    public String getDialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the dialog node.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the conditions_serialized_name.
     *
     * The condition that triggers the dialog node.
     *
     * @return the conditions_serialized_name
     */
    @AuraEnabled
    public String getConditions() {
      return conditions_serialized_name;
    }
    /**
     * Gets the parent_serialized_name.
     *
     * The ID of the parent dialog node. This property is not returned if the dialog node has no parent.
     *
     * @return the parent_serialized_name
     */
    @AuraEnabled
    public String getParent() {
      return parent_serialized_name;
    }
    /**
     * Gets the previous_sibling_serialized_name.
     *
     * The ID of the previous sibling dialog node. This property is not returned if the dialog node has no previous
     * sibling.
     *
     * @return the previous_sibling_serialized_name
     */
    @AuraEnabled
    public String getPreviousSibling() {
      return previous_sibling_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * The output of the dialog node.
     *
     * @return the output_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getOutput() {
      return output_serialized_name;
    }
    /**
     * Gets the context_serialized_name.
     *
     * The context (if defined) for the dialog node.
     *
     * @return the context_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getContext() {
      return context_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata for the dialog node.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the next_step_serialized_name.
     *
     * The next step to execute following this dialog node.
     *
     * @return the next_step_serialized_name
     */
    @AuraEnabled
    public DialogNodeNextStep getNextStep() {
      return next_step_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the dialog node.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the most recent update to the dialog node.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the actions_serialized_name.
     *
     * The actions for the dialog node.
     *
     * @return the actions_serialized_name
     */
    @AuraEnabled
    public List<DialogNodeAction> getActions() {
      return actions_serialized_name;
    }
    /**
     * Gets the title_serialized_name.
     *
     * The alias used to identify the dialog node.
     *
     * @return the title_serialized_name
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * How the dialog node is processed.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the event_name_serialized_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the event_name_serialized_name
     */
    @AuraEnabled
    public String getEventName() {
      return event_name_serialized_name;
    }
    /**
     * Gets the variable_serialized_name.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the variable_serialized_name
     */
    @AuraEnabled
    public String getVariable() {
      return variable_serialized_name;
    }
    /**
     * Gets the digress_in_serialized_name.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the digress_in_serialized_name
     */
    @AuraEnabled
    public String getDigressIn() {
      return digress_in_serialized_name;
    }
    /**
     * Gets the digress_out_serialized_name.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the digress_out_serialized_name
     */
    @AuraEnabled
    public String getDigressOut() {
      return digress_out_serialized_name;
    }
    /**
     * Gets the digress_out_slots_serialized_name.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the digress_out_slots_serialized_name
     */
    @AuraEnabled
    public String getDigressOutSlots() {
      return digress_out_slots_serialized_name;
    }

    /**
     * Sets the dialog_node_serialized_name.
     *
     * @param dialogNode the new dialogNode
     */
    public void setDialogNode(final String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the conditions_serialized_name.
     *
     * @param conditions the new conditions
     */
    public void setConditions(final String conditions) {
      this.conditions_serialized_name = conditions;
    }

    /**
     * Sets the parent_serialized_name.
     *
     * @param parent the new parent
     */
    public void setParent(final String parent) {
      this.parent_serialized_name = parent;
    }

    /**
     * Sets the previous_sibling_serialized_name.
     *
     * @param previousSibling the new previousSibling
     */
    public void setPreviousSibling(final String previousSibling) {
      this.previous_sibling_serialized_name = previousSibling;
    }

    /**
     * Sets the output_serialized_name.
     *
     * @param output the new output
     */
    public void setOutput(final IBMWatsonMapModel output) {
      this.output_serialized_name = output;
    }

    /**
     * Sets the context_serialized_name.
     *
     * @param context the new context
     */
    public void setContext(final IBMWatsonMapModel context) {
      this.context_serialized_name = context;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the next_step_serialized_name.
     *
     * @param nextStep the new nextStep
     */
    public void setNextStep(final DialogNodeNextStep nextStep) {
      this.next_step_serialized_name = nextStep;
    }

    /**
     * Sets the actions_serialized_name.
     *
     * @param actions the new actions
     */
    public void setActions(final List<DialogNodeAction> actions) {
      this.actions_serialized_name = actions;
    }

    /**
     * Sets the title_serialized_name.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title_serialized_name = title;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    /**
     * Sets the event_name_serialized_name.
     *
     * @param eventName the new eventName
     */
    public void setEventName(final String eventName) {
      this.event_name_serialized_name = eventName;
    }

    /**
     * Sets the variable_serialized_name.
     *
     * @param variable the new variable
     */
    public void setVariable(final String variable) {
      this.variable_serialized_name = variable;
    }

    /**
     * Sets the digress_in_serialized_name.
     *
     * @param digressIn the new digressIn
     */
    public void setDigressIn(final String digressIn) {
      this.digress_in_serialized_name = digressIn;
    }

    /**
     * Sets the digress_out_serialized_name.
     *
     * @param digressOut the new digressOut
     */
    public void setDigressOut(final String digressOut) {
      this.digress_out_serialized_name = digressOut;
    }

    /**
     * Sets the digress_out_slots_serialized_name.
     *
     * @param digressOutSlots the new digressOutSlots
     */
    public void setDigressOutSlots(final String digressOutSlots) {
      this.digress_out_slots_serialized_name = digressOutSlots;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DialogNode ret = (DialogNode) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for output_serialized_name
      IBMWatsonMapModel newOutput = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), IBMWatsonMapModel.class);
      ret.setOutput(newOutput);

      // calling custom deserializer for context_serialized_name
      IBMWatsonMapModel newContext = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getContext()), (Map<String, Object>) jsonMap.get('context_serialized_name'), IBMWatsonMapModel.class);
      ret.setContext(newContext);

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for next_step_serialized_name
      DialogNodeNextStep newNextStep = (DialogNodeNextStep) new DialogNodeNextStep().deserialize(JSON.serialize(ret.getNextStep()), (Map<String, Object>) jsonMap.get('next_step_serialized_name'), DialogNodeNextStep.class);
      ret.setNextStep(newNextStep);

      // calling custom deserializer for actions_serialized_name
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
     * Gets the name_serialized_name.
     *
     * The name of the action.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * The type of action to invoke.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the parameters_serialized_name.
     *
     * A map of key/value pairs to be provided to the action.
     *
     * @return the parameters_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getParameters() {
      return parameters_serialized_name;
    }
    /**
     * Gets the result_variable_serialized_name.
     *
     * The location in the dialog context where the result of the action is stored.
     *
     * @return the result_variable_serialized_name
     */
    @AuraEnabled
    public String getResultVariable() {
      return result_variable_serialized_name;
    }
    /**
     * Gets the credentials_serialized_name.
     *
     * The name of the context variable that the client application will use to pass in credentials for the action.
     *
     * @return the credentials_serialized_name
     */
    @AuraEnabled
    public String getCredentials() {
      return credentials_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    /**
     * Sets the parameters_serialized_name.
     *
     * @param parameters the new parameters
     */
    public void setParameters(final IBMWatsonMapModel parameters) {
      this.parameters_serialized_name = parameters;
    }

    /**
     * Sets the result_variable_serialized_name.
     *
     * @param resultVariable the new resultVariable
     */
    public void setResultVariable(final String resultVariable) {
      this.result_variable_serialized_name = resultVariable;
    }

    /**
     * Sets the credentials_serialized_name.
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

      // calling custom deserializer for parameters_serialized_name
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
     * Gets the dialog_nodes_serialized_name.
     *
     * An array of objects describing the dialog nodes defined for the workspace.
     *
     * @return the dialog_nodes_serialized_name
     */
    @AuraEnabled
    public List<DialogNode> getDialogNodes() {
      return dialog_nodes_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the dialog_nodes_serialized_name.
     *
     * @param dialogNodes the new dialogNodes
     */
    public void setDialogNodes(final List<DialogNode> dialogNodes) {
      this.dialog_nodes_serialized_name = dialogNodes;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for dialog_nodes_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
     * Gets the behavior_serialized_name.
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
     * @return the behavior_serialized_name
     */
    @AuraEnabled
    public String getBehavior() {
      return behavior_serialized_name;
    }
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The ID of the dialog node to process next. This parameter is required if **behavior**=`jump_to`.
     *
     * @return the dialog_node_serialized_name
     */
    @AuraEnabled
    public String getDialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the selector_serialized_name.
     *
     * Which part of the dialog node to process next.
     *
     * @return the selector_serialized_name
     */
    @AuraEnabled
    public String getSelector() {
      return selector_serialized_name;
    }

    /**
     * Sets the behavior_serialized_name.
     *
     * @param behavior the new behavior
     */
    public void setBehavior(final String behavior) {
      this.behavior_serialized_name = behavior;
    }

    /**
     * Sets the dialog_node_serialized_name.
     *
     * @param dialogNode the new dialogNode
     */
    public void setDialogNode(final String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
    }

    /**
     * Sets the selector_serialized_name.
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
   * DialogNodeVisitedDetails.
   */
  public class DialogNodeVisitedDetails extends IBMWatsonGenericModel {
    private String dialog_node_serialized_name;
    private String title_serialized_name;
    private String conditions_serialized_name;
    /**
     * Gets the dialog_node_serialized_name.
     *
     * A dialog node that was triggered during processing of the input message.
     *
     * @return the dialog_node_serialized_name
     */
    @AuraEnabled
    public String getDialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the title_serialized_name.
     *
     * The title of the dialog node.
     *
     * @return the title_serialized_name
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
    /**
     * Gets the conditions_serialized_name.
     *
     * The conditions that trigger the dialog node.
     *
     * @return the conditions_serialized_name
     */
    @AuraEnabled
    public String getConditions() {
      return conditions_serialized_name;
    }

    /**
     * Sets the dialog_node_serialized_name.
     *
     * @param dialogNode the new dialogNode
     */
    public void setDialogNode(final String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
    }

    /**
     * Sets the title_serialized_name.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title_serialized_name = title;
    }

    /**
     * Sets the conditions_serialized_name.
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
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    @AuraEnabled
    public String getEntity() {
      return entity_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the entity.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the entity.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the entity.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the entity.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the fuzzy_match_serialized_name.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzy_match_serialized_name
     */
    @AuraEnabled
    public Boolean getFuzzyMatch() {
      return fuzzy_match_serialized_name;
    }

    /**
     * Sets the entity_serialized_name.
     *
     * @param entity the new entity
     */
    public void setEntity(final String entity) {
      this.entity_serialized_name = entity;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the fuzzy_match_serialized_name.
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

      // calling custom deserializer for metadata_serialized_name
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
     * Gets the entities_serialized_name.
     *
     * An array of objects describing the entities defined for the workspace.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<EntityExport> getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntityExport> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for entities_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    @AuraEnabled
    public String getEntity() {
      return entity_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the entity.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the entity.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the entity.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the entity.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the fuzzy_match_serialized_name.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzy_match_serialized_name
     */
    @AuraEnabled
    public Boolean getFuzzyMatch() {
      return fuzzy_match_serialized_name;
    }
    /**
     * Gets the values_serialized_name.
     *
     * An array objects describing the entity values.
     *
     * @return the values_serialized_name
     */
    @AuraEnabled
    public List<ValueExport> getValues() {
      return values_serialized_name;
    }

    /**
     * Sets the entity_serialized_name.
     *
     * @param entity the new entity
     */
    public void setEntity(final String entity) {
      this.entity_serialized_name = entity;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the fuzzy_match_serialized_name.
     *
     * @param fuzzyMatch the new fuzzyMatch
     */
    public void setFuzzyMatch(final Boolean fuzzyMatch) {
      this.fuzzy_match_serialized_name = fuzzyMatch;
    }

    /**
     * Sets the values_serialized_name.
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

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for values_serialized_name
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
   * Example.
   */
  public class Example extends IBMWatsonResponseModel {
    private String text_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The text of the user input example.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the example.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the example.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
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

      Example ret = (Example) super.deserialize(jsonString, jsonMap, classType);

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
     * Gets the examples_serialized_name.
     *
     * An array of objects describing the examples defined for the intent.
     *
     * @return the examples_serialized_name
     */
    @AuraEnabled
    public List<Example> getExamples() {
      return examples_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the examples_serialized_name.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<Example> examples) {
      this.examples_serialized_name = examples;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for examples_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * The getCounterexample options.
   */
  public class GetCounterexampleOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input counterexample (for example, `What are you wearing?`).
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetCounterexampleOptions(GetCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      text_serialized_name = builder.text_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetCounterexampleOptionsBuilder(GetCounterexampleOptions getCounterexampleOptions) {
      workspace_id_serialized_name = getCounterexampleOptions.workspace_id_serialized_name;
      text_serialized_name = getCounterexampleOptions.text_serialized_name;
      include_audit_serialized_name = getCounterexampleOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialog_node_serialized_name
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetDialogNodeOptions(GetDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node_serialized_name, 'dialog_node_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      dialog_node_serialized_name = builder.dialog_node_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetDialogNodeOptionsBuilder(GetDialogNodeOptions getDialogNodeOptions) {
      workspace_id_serialized_name = getDialogNodeOptions.workspace_id_serialized_name;
      dialog_node_serialized_name = getDialogNodeOptions.dialog_node_serialized_name;
      include_audit_serialized_name = getDialogNodeOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.dialog_node_serialized_name = dialogNode;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialogNode the dialogNode
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetEntityOptions(GetEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetEntityOptionsBuilder(GetEntityOptions getEntityOptions) {
      workspace_id_serialized_name = getEntityOptions.workspace_id_serialized_name;
      entity_serialized_name = getEntityOptions.entity_serialized_name;
      export_serialized_name = getEntityOptions.export_serialized_name;
      include_audit_serialized_name = getEntityOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param exportVar the exportVar
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder exportField(Boolean exportVar) {
      this.export_serialized_name = exportVar;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of the user input example.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetExampleOptions(GetExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      text_serialized_name = builder.text_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetExampleOptionsBuilder(GetExampleOptions getExampleOptions) {
      workspace_id_serialized_name = getExampleOptions.workspace_id_serialized_name;
      intent_serialized_name = getExampleOptions.intent_serialized_name;
      text_serialized_name = getExampleOptions.text_serialized_name;
      include_audit_serialized_name = getExampleOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetIntentOptions(GetIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetIntentOptionsBuilder(GetIntentOptions getIntentOptions) {
      workspace_id_serialized_name = getIntentOptions.workspace_id_serialized_name;
      intent_serialized_name = getIntentOptions.intent_serialized_name;
      export_serialized_name = getIntentOptions.export_serialized_name;
      include_audit_serialized_name = getIntentOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param exportVar the exportVar
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder exportField(Boolean exportVar) {
      this.export_serialized_name = exportVar;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the synonym_serialized_name.
     *
     * The text of the synonym.
     *
     * @return the synonym_serialized_name
     */
    public String synonym() {
      return synonym_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetSynonymOptions(GetSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym_serialized_name, 'synonym_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      synonym_serialized_name = builder.synonym_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetSynonymOptionsBuilder(GetSynonymOptions getSynonymOptions) {
      workspace_id_serialized_name = getSynonymOptions.workspace_id_serialized_name;
      entity_serialized_name = getSynonymOptions.entity_serialized_name;
      value_serialized_name = getSynonymOptions.value_serialized_name;
      synonym_serialized_name = getSynonymOptions.synonym_serialized_name;
      include_audit_serialized_name = getSynonymOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
      this.synonym_serialized_name = synonym;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym the synonym
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder synonym(String synonym) {
      this.synonym_serialized_name = synonym;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetValueOptions(GetValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetValueOptionsBuilder(GetValueOptions getValueOptions) {
      workspace_id_serialized_name = getValueOptions.workspace_id_serialized_name;
      entity_serialized_name = getValueOptions.entity_serialized_name;
      value_serialized_name = getValueOptions.value_serialized_name;
      export_serialized_name = getValueOptions.export_serialized_name;
      include_audit_serialized_name = getValueOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param exportVar the exportVar
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder exportField(Boolean exportVar) {
      this.export_serialized_name = exportVar;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private GetWorkspaceOptions(GetWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Boolean include_audit_serialized_name;

    private GetWorkspaceOptionsBuilder(GetWorkspaceOptions getWorkspaceOptions) {
      workspace_id_serialized_name = getWorkspaceOptions.workspace_id_serialized_name;
      export_serialized_name = getWorkspaceOptions.export_serialized_name;
      include_audit_serialized_name = getWorkspaceOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param exportVar the exportVar
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder exportField(Boolean exportVar) {
      this.export_serialized_name = exportVar;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
   * The user input.
   */
  public class InputData extends IBMWatsonGenericModel {
    private String text_serialized_name;

    /**
     * This constructor is strictly for internal serialization/deserialization purposes
     * and should not be called by the client.
     */
    public InputData() { }

    /**
     * Gets the text_serialized_name.
     *
     * The text of the user input. This string cannot contain carriage return, newline, or tab characters, and it must
     * be no longer than 2048 characters.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
    private InputData(InputDataBuilder builder) {
      IBMWatsonValidator.notNull(builder.text_serialized_name, 'text_serialized_name cannot be null');
      text_serialized_name = builder.text_serialized_name;
    }

    /**
     * New builder.
     *
     * @return a InputData builder
     */
    public InputDataBuilder newBuilder() {
      return new InputDataBuilder(this);
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      InputData ret = (InputData) super.deserialize(jsonString, jsonMap, classType);
      InputDataBuilder retBuilder = ret.newBuilder();

      return retBuilder.build();
    }
  }

  /**
   * InputData Builder.
   */
  public class InputDataBuilder {
    private String text_serialized_name;

    private InputDataBuilder(InputData inputData) {
      text_serialized_name = inputData.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public InputDataBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text the text
     */
    public InputDataBuilder(String text) {
      this.text_serialized_name = text;
    }

    /**
     * Builds a InputData.
     *
     * @return the inputData
     */
    public InputData build() {
      return new InputData(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the InputData builder
     */
    public InputDataBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
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
     * Gets the intent_serialized_name.
     *
     * The name of the intent.
     *
     * @return the intent_serialized_name
     */
    @AuraEnabled
    public String getIntent() {
      return intent_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the intent.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the intent.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the intent.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }

    /**
     * Sets the intent_serialized_name.
     *
     * @param intent the new intent
     */
    public void setIntent(final String intent) {
      this.intent_serialized_name = intent;
    }

    /**
     * Sets the description_serialized_name.
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
     * Gets the intents_serialized_name.
     *
     * An array of objects describing the intents defined for the workspace.
     *
     * @return the intents_serialized_name
     */
    @AuraEnabled
    public List<IntentExport> getIntents() {
      return intents_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the intents_serialized_name.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<IntentExport> intents) {
      this.intents_serialized_name = intents;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for intents_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
     * Gets the intent_serialized_name.
     *
     * The name of the intent.
     *
     * @return the intent_serialized_name
     */
    @AuraEnabled
    public String getIntent() {
      return intent_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the intent.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the intent.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the intent.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the examples_serialized_name.
     *
     * An array of objects describing the user input examples for the intent.
     *
     * @return the examples_serialized_name
     */
    @AuraEnabled
    public List<Example> getExamples() {
      return examples_serialized_name;
    }

    /**
     * Sets the intent_serialized_name.
     *
     * @param intent the new intent
     */
    public void setIntent(final String intent) {
      this.intent_serialized_name = intent;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the examples_serialized_name.
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

      // calling custom deserializer for examples_serialized_name
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
    private String filter_serialized_name;
    private String sort_serialized_name;
    private Long page_limit_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the filter_serialized_name.
     *
     * A cacheable parameter that limits the results to those matching the specified filter. You must specify a filter
     * query that includes a value for `language`, as well as a value for `workspace_id` or
     * `request.context.metadata.deployment`. For more information, see the
     * [documentation](https://console.bluemix.net/docs/services/conversation/filter-reference.html#filter-query-syntax).
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    private ListAllLogsOptions(ListAllLogsOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.filter_serialized_name, 'filter_serialized_name cannot be null');
      filter_serialized_name = builder.filter_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
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
    private String filter_serialized_name;
    private String sort_serialized_name;
    private Long page_limit_serialized_name;
    private String cursor_serialized_name;

    private ListAllLogsOptionsBuilder(ListAllLogsOptions listAllLogsOptions) {
      filter_serialized_name = listAllLogsOptions.filter_serialized_name;
      sort_serialized_name = listAllLogsOptions.sort_serialized_name;
      page_limit_serialized_name = listAllLogsOptions.page_limit_serialized_name;
      cursor_serialized_name = listAllLogsOptions.cursor_serialized_name;
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
      this.filter_serialized_name = filter;
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
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder filter(String filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListAllLogsOptions builder
     */
    public ListAllLogsOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
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
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListCounterexamplesOptions(ListCounterexamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListCounterexamplesOptionsBuilder(ListCounterexamplesOptions listCounterexamplesOptions) {
      workspace_id_serialized_name = listCounterexamplesOptions.workspace_id_serialized_name;
      page_limit_serialized_name = listCounterexamplesOptions.page_limit_serialized_name;
      include_count_serialized_name = listCounterexamplesOptions.include_count_serialized_name;
      sort_serialized_name = listCounterexamplesOptions.sort_serialized_name;
      cursor_serialized_name = listCounterexamplesOptions.cursor_serialized_name;
      include_audit_serialized_name = listCounterexamplesOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListDialogNodesOptions(ListDialogNodesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListDialogNodesOptionsBuilder(ListDialogNodesOptions listDialogNodesOptions) {
      workspace_id_serialized_name = listDialogNodesOptions.workspace_id_serialized_name;
      page_limit_serialized_name = listDialogNodesOptions.page_limit_serialized_name;
      include_count_serialized_name = listDialogNodesOptions.include_count_serialized_name;
      sort_serialized_name = listDialogNodesOptions.sort_serialized_name;
      cursor_serialized_name = listDialogNodesOptions.cursor_serialized_name;
      include_audit_serialized_name = listDialogNodesOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListEntitiesOptions(ListEntitiesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListEntitiesOptionsBuilder(ListEntitiesOptions listEntitiesOptions) {
      workspace_id_serialized_name = listEntitiesOptions.workspace_id_serialized_name;
      export_serialized_name = listEntitiesOptions.export_serialized_name;
      page_limit_serialized_name = listEntitiesOptions.page_limit_serialized_name;
      include_count_serialized_name = listEntitiesOptions.include_count_serialized_name;
      sort_serialized_name = listEntitiesOptions.sort_serialized_name;
      cursor_serialized_name = listEntitiesOptions.cursor_serialized_name;
      include_audit_serialized_name = listEntitiesOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param exportVar the exportVar
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder exportField(Boolean exportVar) {
      this.export_serialized_name = exportVar;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListExamplesOptions(ListExamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListExamplesOptionsBuilder(ListExamplesOptions listExamplesOptions) {
      workspace_id_serialized_name = listExamplesOptions.workspace_id_serialized_name;
      intent_serialized_name = listExamplesOptions.intent_serialized_name;
      page_limit_serialized_name = listExamplesOptions.page_limit_serialized_name;
      include_count_serialized_name = listExamplesOptions.include_count_serialized_name;
      sort_serialized_name = listExamplesOptions.sort_serialized_name;
      cursor_serialized_name = listExamplesOptions.cursor_serialized_name;
      include_audit_serialized_name = listExamplesOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListIntentsOptions(ListIntentsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListIntentsOptionsBuilder(ListIntentsOptions listIntentsOptions) {
      workspace_id_serialized_name = listIntentsOptions.workspace_id_serialized_name;
      export_serialized_name = listIntentsOptions.export_serialized_name;
      page_limit_serialized_name = listIntentsOptions.page_limit_serialized_name;
      include_count_serialized_name = listIntentsOptions.include_count_serialized_name;
      sort_serialized_name = listIntentsOptions.sort_serialized_name;
      cursor_serialized_name = listIntentsOptions.cursor_serialized_name;
      include_audit_serialized_name = listIntentsOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param exportVar the exportVar
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder exportField(Boolean exportVar) {
      this.export_serialized_name = exportVar;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String sort_serialized_name;
    private String filter_serialized_name;
    private Long page_limit_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * A cacheable parameter that limits the results to those matching the specified filter. For more information, see
     * the
     * [documentation](https://console.bluemix.net/docs/services/conversation/filter-reference.html#filter-query-syntax).
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    private ListLogsOptions(ListLogsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      filter_serialized_name = builder.filter_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
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
    private String workspace_id_serialized_name;
    private String sort_serialized_name;
    private String filter_serialized_name;
    private Long page_limit_serialized_name;
    private String cursor_serialized_name;

    private ListLogsOptionsBuilder(ListLogsOptions listLogsOptions) {
      workspace_id_serialized_name = listLogsOptions.workspace_id_serialized_name;
      sort_serialized_name = listLogsOptions.sort_serialized_name;
      filter_serialized_name = listLogsOptions.filter_serialized_name;
      page_limit_serialized_name = listLogsOptions.page_limit_serialized_name;
      cursor_serialized_name = listLogsOptions.cursor_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter the filter
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder filter(String filter) {
      this.filter_serialized_name = filter;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
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
   * The listSynonyms options.
   */
  public class ListSynonymsOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListSynonymsOptions(ListSynonymsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListSynonymsOptionsBuilder(ListSynonymsOptions listSynonymsOptions) {
      workspace_id_serialized_name = listSynonymsOptions.workspace_id_serialized_name;
      entity_serialized_name = listSynonymsOptions.entity_serialized_name;
      value_serialized_name = listSynonymsOptions.value_serialized_name;
      page_limit_serialized_name = listSynonymsOptions.page_limit_serialized_name;
      include_count_serialized_name = listSynonymsOptions.include_count_serialized_name;
      sort_serialized_name = listSynonymsOptions.sort_serialized_name;
      cursor_serialized_name = listSynonymsOptions.cursor_serialized_name;
      include_audit_serialized_name = listSynonymsOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If **export**=`false`, the returned data includes
     * only information about the element itself. If **export**=`true`, all content, including subelements, is included.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListValuesOptions(ListValuesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListValuesOptionsBuilder(ListValuesOptions listValuesOptions) {
      workspace_id_serialized_name = listValuesOptions.workspace_id_serialized_name;
      entity_serialized_name = listValuesOptions.entity_serialized_name;
      export_serialized_name = listValuesOptions.export_serialized_name;
      page_limit_serialized_name = listValuesOptions.page_limit_serialized_name;
      include_count_serialized_name = listValuesOptions.include_count_serialized_name;
      sort_serialized_name = listValuesOptions.sort_serialized_name;
      cursor_serialized_name = listValuesOptions.cursor_serialized_name;
      include_audit_serialized_name = listValuesOptions.include_audit_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param exportVar the exportVar
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder exportField(Boolean exportVar) {
      this.export_serialized_name = exportVar;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the include_count_serialized_name.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count_serialized_name
     */
    public Boolean includeCount() {
      return include_count_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * The attribute by which returned results will be sorted. To reverse the sort order, prefix the value with a minus
     * sign (`-`). Supported values are `name`, `updated`, and `workspace_id`.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the page of results to retrieve.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    /**
     * Gets the include_audit_serialized_name.
     *
     * Whether to include the audit properties (`created` and `updated` timestamps) in the response.
     *
     * @return the include_audit_serialized_name
     */
    public Boolean includeAudit() {
      return include_audit_serialized_name;
    }
    private ListWorkspacesOptions(ListWorkspacesOptionsBuilder builder) {
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
      include_audit_serialized_name = builder.include_audit_serialized_name;
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
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    private Boolean include_audit_serialized_name;

    private ListWorkspacesOptionsBuilder(ListWorkspacesOptions listWorkspacesOptions) {
      page_limit_serialized_name = listWorkspacesOptions.page_limit_serialized_name;
      include_count_serialized_name = listWorkspacesOptions.include_count_serialized_name;
      sort_serialized_name = listWorkspacesOptions.sort_serialized_name;
      cursor_serialized_name = listWorkspacesOptions.cursor_serialized_name;
      include_audit_serialized_name = listWorkspacesOptions.include_audit_serialized_name;
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
     * Set the page_limit_serialized_name.
     *
     * @param pageLimit the pageLimit
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder pageLimit(Long pageLimit) {
      this.page_limit_serialized_name = pageLimit;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param includeCount the includeCount
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder includeCount(Boolean includeCount) {
      this.include_count_serialized_name = includeCount;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sortVar the sortVar
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder sortField(String sortVar) {
      this.sort_serialized_name = sortVar;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor the cursor
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder cursor(String cursor) {
      this.cursor_serialized_name = cursor;
      return this;
    }

    /**
     * Set the include_audit_serialized_name.
     *
     * @param includeAudit the includeAudit
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder includeAudit(Boolean includeAudit) {
      this.include_audit_serialized_name = includeAudit;
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
     * Gets the logs_serialized_name.
     *
     * An array of objects describing log events.
     *
     * @return the logs_serialized_name
     */
    @AuraEnabled
    public List<LogExport> getLogs() {
      return logs_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public LogPagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the logs_serialized_name.
     *
     * @param logs the new logs
     */
    public void setLogs(final List<LogExport> logs) {
      this.logs_serialized_name = logs;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for logs_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
     * Gets the request_serialized_name.
     *
     * A request received by the workspace, including the user input and context.
     *
     * @return the request_serialized_name
     */
    @AuraEnabled
    public MessageRequest getRequest() {
      return request_serialized_name;
    }
    /**
     * Gets the response_serialized_name.
     *
     * The response sent by the workspace, including the output text, detected intents and entities, and context.
     *
     * @return the response_serialized_name
     */
    @AuraEnabled
    public MessageResponse getResponse() {
      return response_serialized_name;
    }
    /**
     * Gets the log_id_serialized_name.
     *
     * A unique identifier for the logged event.
     *
     * @return the log_id_serialized_name
     */
    @AuraEnabled
    public String getLogId() {
      return log_id_serialized_name;
    }
    /**
     * Gets the request_timestamp_serialized_name.
     *
     * The timestamp for receipt of the message.
     *
     * @return the request_timestamp_serialized_name
     */
    @AuraEnabled
    public String getRequestTimestamp() {
      return request_timestamp_serialized_name;
    }
    /**
     * Gets the response_timestamp_serialized_name.
     *
     * The timestamp for the system response to the message.
     *
     * @return the response_timestamp_serialized_name
     */
    @AuraEnabled
    public String getResponseTimestamp() {
      return response_timestamp_serialized_name;
    }
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The unique identifier of the workspace where the request was made.
     *
     * @return the workspace_id_serialized_name
     */
    @AuraEnabled
    public String getWorkspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the workspace where the message request was made.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }

    /**
     * Sets the request_serialized_name.
     *
     * @param request the new request
     */
    public void setRequest(final MessageRequest request) {
      this.request_serialized_name = request;
    }

    /**
     * Sets the response_serialized_name.
     *
     * @param response the new response
     */
    public void setResponse(final MessageResponse response) {
      this.response_serialized_name = response;
    }

    /**
     * Sets the log_id_serialized_name.
     *
     * @param logId the new logId
     */
    public void setLogId(final String logId) {
      this.log_id_serialized_name = logId;
    }

    /**
     * Sets the request_timestamp_serialized_name.
     *
     * @param requestTimestamp the new requestTimestamp
     */
    public void setRequestTimestamp(final String requestTimestamp) {
      this.request_timestamp_serialized_name = requestTimestamp;
    }

    /**
     * Sets the response_timestamp_serialized_name.
     *
     * @param responseTimestamp the new responseTimestamp
     */
    public void setResponseTimestamp(final String responseTimestamp) {
      this.response_timestamp_serialized_name = responseTimestamp;
    }

    /**
     * Sets the workspace_id_serialized_name.
     *
     * @param workspaceId the new workspaceId
     */
    public void setWorkspaceId(final String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
    }

    /**
     * Sets the language_serialized_name.
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

      // calling custom deserializer for request_serialized_name
      MessageRequest newRequest = (MessageRequest) new MessageRequest().deserialize(JSON.serialize(ret.getRequest()), (Map<String, Object>) jsonMap.get('request_serialized_name'), MessageRequest.class);
      ret.setRequest(newRequest);

      // calling custom deserializer for response_serialized_name
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
     * Gets the level_serialized_name.
     *
     * @return the level_serialized_name
     */
    @AuraEnabled
    public String getLevel() {
      return level_serialized_name;
    }

    /**
     * Gets the msg_serialized_name.
     *
     * @return the msg_serialized_name
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
     * Sets the level_serialized_name.
     *
     * @param level_serialized_name the new level_serialized_name
     */
    public void setLevel(final String level_serialized_name) {
      this.level_serialized_name = level_serialized_name;
    }

    /**
     * Sets the msg_serialized_name.
     *
     * @param msg_serialized_name the new msg_serialized_name
     */
    public void setMsg(final String msg_serialized_name) {
      this.msg_serialized_name = msg_serialized_name;
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
     * Gets the next_url_serialized_name.
     *
     * The URL that will return the next page of results, if any.
     *
     * @return the next_url_serialized_name
     */
    @AuraEnabled
    public String getNextUrl() {
      return next_url_serialized_name;
    }
    /**
     * Gets the matched_serialized_name.
     *
     * Reserved for future use.
     *
     * @return the matched_serialized_name
     */
    @AuraEnabled
    public Long getMatched() {
      return matched_serialized_name;
    }
    /**
     * Gets the next_cursor_serialized_name.
     *
     * A token identifying the next page of results.
     *
     * @return the next_cursor_serialized_name
     */
    @AuraEnabled
    public String getNextCursor() {
      return next_cursor_serialized_name;
    }

    /**
     * Sets the next_url_serialized_name.
     *
     * @param nextUrl the new nextUrl
     */
    public void setNextUrl(final String nextUrl) {
      this.next_url_serialized_name = nextUrl;
    }

    /**
     * Sets the matched_serialized_name.
     *
     * @param matched the new matched
     */
    public void setMatched(final long matched) {
      this.matched_serialized_name = matched;
    }

    /**
     * Sets the next_cursor_serialized_name.
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
   * The text of the user input.
   */
  public class MessageInput extends IBMWatsonGenericModel {
    private String text_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The user's input.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
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
    private String workspace_id_serialized_name;
    private InputData input_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private OutputData output_serialized_name;
    private Boolean nodes_visited_details_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the input_serialized_name.
     *
     * An input object that includes the input text.
     *
     * @return the input_serialized_name
     */
    public InputData input() {
      return input_serialized_name;
    }
    /**
     * Gets the alternate_intents_serialized_name.
     *
     * Whether to return more than one intent. Set to `true` to return all matching intents.
     *
     * @return the alternate_intents_serialized_name
     */
    public Boolean alternateIntents() {
      return alternate_intents_serialized_name;
    }
    /**
     * Gets the context_serialized_name.
     *
     * State information for the conversation. Continue a conversation by including the context object from the previous
     * response.
     *
     * @return the context_serialized_name
     */
    public Context context() {
      return context_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * Entities to use when evaluating the message. Include entities from the previous response to continue using those
     * entities rather than detecting entities in the new input.
     *
     * @return the entities_serialized_name
     */
    public List<RuntimeEntity> entities() {
      return entities_serialized_name;
    }
    /**
     * Gets the intents_serialized_name.
     *
     * Intents to use when evaluating the user input. Include intents from the previous response to continue using those
     * intents rather than trying to recognize intents in the new input.
     *
     * @return the intents_serialized_name
     */
    public List<RuntimeIntent> intents() {
      return intents_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * System output. Include the output from the previous response to maintain intermediate information over multiple
     * requests.
     *
     * @return the output_serialized_name
     */
    public OutputData output() {
      return output_serialized_name;
    }
    /**
     * Gets the nodes_visited_details_serialized_name.
     *
     * Whether to include additional diagnostic information about the dialog nodes that were visited during processing
     * of the message.
     *
     * @return the nodes_visited_details_serialized_name
     */
    public Boolean nodesVisitedDetails() {
      return nodes_visited_details_serialized_name;
    }
    private MessageOptions(MessageOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      input_serialized_name = builder.input_serialized_name;
      alternate_intents_serialized_name = builder.alternate_intents_serialized_name;
      context_serialized_name = builder.context_serialized_name;
      entities_serialized_name = builder.entities_serialized_name;
      intents_serialized_name = builder.intents_serialized_name;
      output_serialized_name = builder.output_serialized_name;
      nodes_visited_details_serialized_name = builder.nodes_visited_details_serialized_name;
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
    private String workspace_id_serialized_name;
    private InputData input_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private OutputData output_serialized_name;
    private Boolean nodes_visited_details_serialized_name;

    private MessageOptionsBuilder(MessageOptions messageOptions) {
      workspace_id_serialized_name = messageOptions.workspace_id_serialized_name;
      input_serialized_name = messageOptions.input_serialized_name;
      alternate_intents_serialized_name = messageOptions.alternate_intents_serialized_name;
      context_serialized_name = messageOptions.context_serialized_name;
      entities_serialized_name = messageOptions.entities_serialized_name;
      intents_serialized_name = messageOptions.intents_serialized_name;
      output_serialized_name = messageOptions.output_serialized_name;
      nodes_visited_details_serialized_name = messageOptions.nodes_visited_details_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Adds an entities to entities_serialized_name.
     *
     * @param entities the new entities
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addEntities(RuntimeEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities_serialized_name == null) {
        this.entities_serialized_name = new List<RuntimeEntity>();
      }
      this.entities_serialized_name.add(entities);
      return this;
    }

    /**
     * Adds an intents to intents_serialized_name.
     *
     * @param intents the new intents
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addIntents(RuntimeIntent intents) {
      IBMWatsonValidator.notNull(intents, 'intents cannot be null');
      if (this.intents_serialized_name == null) {
        this.intents_serialized_name = new List<RuntimeIntent>();
      }
      this.intents_serialized_name.add(intents);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the input_serialized_name.
     *
     * @param input the input
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder input(InputData input) {
      this.input_serialized_name = input;
      return this;
    }

    /**
     * Set the alternate_intents_serialized_name.
     *
     * @param alternateIntents the alternateIntents
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder alternateIntents(Boolean alternateIntents) {
      this.alternate_intents_serialized_name = alternateIntents;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context the context
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder context(Context context) {
      this.context_serialized_name = context;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     * Existing entities_serialized_name will be replaced.
     *
     * @param entities the entities
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder entities(List<RuntimeEntity> entities) {
      this.entities_serialized_name = entities;
      return this;
    }

    /**
     * Set the intents_serialized_name.
     * Existing intents_serialized_name will be replaced.
     *
     * @param intents the intents
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder intents(List<RuntimeIntent> intents) {
      this.intents_serialized_name = intents;
      return this;
    }

    /**
     * Set the output_serialized_name.
     *
     * @param output the output
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder output(OutputData output) {
      this.output_serialized_name = output;
      return this;
    }

    /**
     * Set the nodes_visited_details_serialized_name.
     *
     * @param nodesVisitedDetails the nodesVisitedDetails
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder nodesVisitedDetails(Boolean nodesVisitedDetails) {
      this.nodes_visited_details_serialized_name = nodesVisitedDetails;
      return this;
    }

    /**
     * Set the messageRequest.
     *
     * @param messageRequest the messageRequest
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder messageRequest(MessageRequest messageRequest) {
      this.input_serialized_name = messageRequest.getInput();
      this.alternate_intents_serialized_name = messageRequest.getAlternateIntents();
      this.context_serialized_name = messageRequest.getContext();
      this.entities_serialized_name = messageRequest.getEntities();
      this.intents_serialized_name = messageRequest.getIntents();
      this.output_serialized_name = messageRequest.getOutput();
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
   * A request formatted for the Conversation service.
   */
  public class MessageRequest extends IBMWatsonGenericModel {
    private InputData input_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private OutputData output_serialized_name;
    /**
     * Gets the input_serialized_name.
     *
     * An input object that includes the input text.
     *
     * @return the input_serialized_name
     */
    @AuraEnabled
    public InputData getInput() {
      return input_serialized_name;
    }
    /**
     * Gets the alternate_intents_serialized_name.
     *
     * Whether to return more than one intent. Set to `true` to return all matching intents.
     *
     * @return the alternate_intents_serialized_name
     */
    @AuraEnabled
    public Boolean getAlternateIntents() {
      return alternate_intents_serialized_name;
    }
    /**
     * Gets the context_serialized_name.
     *
     * State information for the conversation. Continue a conversation by including the context object from the previous
     * response.
     *
     * @return the context_serialized_name
     */
    @AuraEnabled
    public Context getContext() {
      return context_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * Entities to use when evaluating the message. Include entities from the previous response to continue using those
     * entities rather than detecting entities in the new input.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<RuntimeEntity> getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the intents_serialized_name.
     *
     * Intents to use when evaluating the user input. Include intents from the previous response to continue using those
     * intents rather than trying to recognize intents in the new input.
     *
     * @return the intents_serialized_name
     */
    @AuraEnabled
    public List<RuntimeIntent> getIntents() {
      return intents_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * System output. Include the output from the previous response to maintain intermediate information over multiple
     * requests.
     *
     * @return the output_serialized_name
     */
    @AuraEnabled
    public OutputData getOutput() {
      return output_serialized_name;
    }

    /**
     * Sets the input_serialized_name.
     *
     * @param input the new input
     */
    public void setInput(final InputData input) {
      this.input_serialized_name = input;
    }

    /**
     * Sets the alternate_intents_serialized_name.
     *
     * @param alternateIntents the new alternateIntents
     */
    public void setAlternateIntents(final Boolean alternateIntents) {
      this.alternate_intents_serialized_name = alternateIntents;
    }

    /**
     * Sets the context_serialized_name.
     *
     * @param context the new context
     */
    public void setContext(final Context context) {
      this.context_serialized_name = context;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<RuntimeEntity> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the intents_serialized_name.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<RuntimeIntent> intents) {
      this.intents_serialized_name = intents;
    }

    /**
     * Sets the output_serialized_name.
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

      // calling custom deserializer for input_serialized_name
      InputData newInput = (InputData) new InputData().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), InputData.class);
      ret.setInput(newInput);

      // calling custom deserializer for context_serialized_name
      Context newContext = (Context) new Context().deserialize(JSON.serialize(ret.getContext()), (Map<String, Object>) jsonMap.get('context_serialized_name'), Context.class);
      ret.setContext(newContext);

      // calling custom deserializer for entities_serialized_name
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

      // calling custom deserializer for intents_serialized_name
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

      // calling custom deserializer for output_serialized_name
      OutputData newOutput = (OutputData) new OutputData().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), OutputData.class);
      ret.setOutput(newOutput);

      return ret;
    }
  }

  /**
   * A response from the Conversation service.
   */
  public class MessageResponse extends IBMWatsonDynamicResponseModel {
    private MessageInput input_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private OutputData output_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the input_serialized_name.
     *
     * @return the input_serialized_name
     */
    @AuraEnabled
    public MessageInput getInput() {
      return input_serialized_name;
    }

    /**
     * Gets the intents_serialized_name.
     *
     * @return the intents_serialized_name
     */
    @AuraEnabled
    public List<RuntimeIntent> getIntents() {
      return intents_serialized_name;
    }

    /**
     * Gets the entities_serialized_name.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<RuntimeEntity> getEntities() {
      return entities_serialized_name;
    }

    /**
     * Gets the alternate_intents_serialized_name.
     *
     * @return the alternate_intents_serialized_name
     */
    @AuraEnabled
    public Boolean getAlternateIntents() {
      return alternate_intents_serialized_name;
    }

    /**
     * Gets the context_serialized_name.
     *
     * @return the context_serialized_name
     */
    @AuraEnabled
    public Context getContext() {
      return context_serialized_name;
    }

    /**
     * Gets the output_serialized_name.
     *
     * @return the output_serialized_name
     */
    @AuraEnabled
    public OutputData getOutput() {
      return output_serialized_name;
    }

    /**
     * Gets the dynamic properties attached to MessageResponse.
     *
     * @return the dynamic properties
     */
    @AuraEnabled
    public Map<String, Object> getAdditionalProperties() {
      return this.getDynamicProperties();
    }

    /**
     * Sets the input_serialized_name.
     *
     * @param input_serialized_name the new input_serialized_name
     */
    public void setInput(final MessageInput input_serialized_name) {
      this.input_serialized_name = input_serialized_name;
    }

    /**
     * Sets the intents_serialized_name.
     *
     * @param intents_serialized_name the new intents_serialized_name
     */
    public void setIntents(final List<RuntimeIntent> intents_serialized_name) {
      this.intents_serialized_name = intents_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     */
    public void setEntities(final List<RuntimeEntity> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
    }

    /**
     * Sets the alternate_intents_serialized_name.
     *
     * @param alternate_intents_serialized_name the new alternate_intents_serialized_name
     */
    public void setAlternateIntents(final Boolean alternate_intents_serialized_name) {
      this.alternate_intents_serialized_name = alternate_intents_serialized_name;
    }

    /**
     * Sets the context_serialized_name.
     *
     * @param context_serialized_name the new context_serialized_name
     */
    public void setContext(final Context context_serialized_name) {
      this.context_serialized_name = context_serialized_name;
    }

    /**
     * Sets the output_serialized_name.
     *
     * @param output_serialized_name the new output_serialized_name
     */
    public void setOutput(final OutputData output_serialized_name) {
      this.output_serialized_name = output_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      MessageResponse ret = (MessageResponse) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for input_serialized_name
      MessageInput newInput = (MessageInput) new MessageInput().deserialize(JSON.serialize(ret.getInput()), (Map<String, Object>) jsonMap.get('input_serialized_name'), MessageInput.class);
      ret.setInput(newInput);

      // calling custom deserializer for intents_serialized_name
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

      // calling custom deserializer for entities_serialized_name
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

      // calling custom deserializer for context_serialized_name
      Context newContext = (Context) new Context().deserialize(JSON.serialize(ret.getContext()), (Map<String, Object>) jsonMap.get('context_serialized_name'), Context.class);
      ret.setContext(newContext);

      // calling custom deserializer for output_serialized_name
      OutputData newOutput = (OutputData) new OutputData().deserialize(JSON.serialize(ret.getOutput()), (Map<String, Object>) jsonMap.get('output_serialized_name'), OutputData.class);
      ret.setOutput(newOutput);

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
   * An output object that includes the response to the user, the nodes that were hit, and messages from the log.
   */
  public class OutputData extends IBMWatsonDynamicModel {
    private List<LogMessage> log_messages_serialized_name;
    private List<String> text_serialized_name;
    private List<String> nodes_visited_serialized_name;
    private List<DialogNodeVisitedDetails> nodes_visited_details_serialized_name;
    private Map<String, Object> additional_properties_serialized_name;

    /**
     * Gets the log_messages_serialized_name.
     *
     * @return the log_messages_serialized_name
     */
    @AuraEnabled
    public List<LogMessage> getLogMessages() {
      return log_messages_serialized_name;
    }

    /**
     * Gets the text_serialized_name.
     *
     * @return the text_serialized_name
     */
    @AuraEnabled
    public List<String> getText() {
      return text_serialized_name;
    }

    /**
     * Gets the nodes_visited_serialized_name.
     *
     * @return the nodes_visited_serialized_name
     */
    @AuraEnabled
    public List<String> getNodesVisited() {
      return nodes_visited_serialized_name;
    }

    /**
     * Gets the nodes_visited_details_serialized_name.
     *
     * @return the nodes_visited_details_serialized_name
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
     * Sets the log_messages_serialized_name.
     *
     * @param log_messages_serialized_name the new log_messages_serialized_name
     */
    public void setLogMessages(final List<LogMessage> log_messages_serialized_name) {
      this.log_messages_serialized_name = log_messages_serialized_name;
    }

    /**
     * Sets the text_serialized_name.
     *
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final List<String> text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Sets the nodes_visited_serialized_name.
     *
     * @param nodes_visited_serialized_name the new nodes_visited_serialized_name
     */
    public void setNodesVisited(final List<String> nodes_visited_serialized_name) {
      this.nodes_visited_serialized_name = nodes_visited_serialized_name;
    }

    /**
     * Sets the nodes_visited_details_serialized_name.
     *
     * @param nodes_visited_details_serialized_name the new nodes_visited_details_serialized_name
     */
    public void setNodesVisitedDetails(final List<DialogNodeVisitedDetails> nodes_visited_details_serialized_name) {
      this.nodes_visited_details_serialized_name = nodes_visited_details_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      OutputData ret = (OutputData) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for log_messages_serialized_name
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

      // calling custom deserializer for nodes_visited_details_serialized_name
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
     * Gets the refresh_url_serialized_name.
     *
     * The URL that will return the same page of results.
     *
     * @return the refresh_url_serialized_name
     */
    @AuraEnabled
    public String getRefreshUrl() {
      return refresh_url_serialized_name;
    }
    /**
     * Gets the next_url_serialized_name.
     *
     * The URL that will return the next page of results.
     *
     * @return the next_url_serialized_name
     */
    @AuraEnabled
    public String getNextUrl() {
      return next_url_serialized_name;
    }
    /**
     * Gets the total_serialized_name.
     *
     * Reserved for future use.
     *
     * @return the total_serialized_name
     */
    @AuraEnabled
    public Long getTotal() {
      return total_serialized_name;
    }
    /**
     * Gets the matched_serialized_name.
     *
     * Reserved for future use.
     *
     * @return the matched_serialized_name
     */
    @AuraEnabled
    public Long getMatched() {
      return matched_serialized_name;
    }
    /**
     * Gets the refresh_cursor_serialized_name.
     *
     * A token identifying the current page of results.
     *
     * @return the refresh_cursor_serialized_name
     */
    @AuraEnabled
    public String getRefreshCursor() {
      return refresh_cursor_serialized_name;
    }
    /**
     * Gets the next_cursor_serialized_name.
     *
     * A token identifying the next page of results.
     *
     * @return the next_cursor_serialized_name
     */
    @AuraEnabled
    public String getNextCursor() {
      return next_cursor_serialized_name;
    }

    /**
     * Sets the refresh_url_serialized_name.
     *
     * @param refreshUrl the new refreshUrl
     */
    public void setRefreshUrl(final String refreshUrl) {
      this.refresh_url_serialized_name = refreshUrl;
    }

    /**
     * Sets the next_url_serialized_name.
     *
     * @param nextUrl the new nextUrl
     */
    public void setNextUrl(final String nextUrl) {
      this.next_url_serialized_name = nextUrl;
    }

    /**
     * Sets the total_serialized_name.
     *
     * @param total the new total
     */
    public void setTotal(final long total) {
      this.total_serialized_name = total;
    }

    /**
     * Sets the matched_serialized_name.
     *
     * @param matched the new matched
     */
    public void setMatched(final long matched) {
      this.matched_serialized_name = matched;
    }

    /**
     * Sets the refresh_cursor_serialized_name.
     *
     * @param refreshCursor the new refreshCursor
     */
    public void setRefreshCursor(final String refreshCursor) {
      this.refresh_cursor_serialized_name = refreshCursor;
    }

    /**
     * Sets the next_cursor_serialized_name.
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
     * Gets the entity_serialized_name.
     *
     * @return the entity_serialized_name
     */
    @AuraEnabled
    public String getEntity() {
      return entity_serialized_name;
    }

    /**
     * Gets the location_serialized_name.
     *
     * @return the location_serialized_name
     */
    @AuraEnabled
    public List<Long> getLocation() {
      return location_serialized_name;
    }

    /**
     * Gets the value_serialized_name.
     *
     * @return the value_serialized_name
     */
    @AuraEnabled
    public String getValue() {
      return value_serialized_name;
    }

    /**
     * Gets the confidence_serialized_name.
     *
     * @return the confidence_serialized_name
     */
    @AuraEnabled
    public Double getConfidence() {
      return confidence_serialized_name;
    }

    /**
     * Gets the metadata_serialized_name.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }

    /**
     * Gets the groups_serialized_name.
     *
     * @return the groups_serialized_name
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
     * Sets the entity_serialized_name.
     *
     * @param entity_serialized_name the new entity_serialized_name
     */
    public void setEntity(final String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Sets the location_serialized_name.
     *
     * @param location_serialized_name the new location_serialized_name
     */
    public void setLocation(final List<Long> location_serialized_name) {
      this.location_serialized_name = location_serialized_name;
    }

    /**
     * Sets the value_serialized_name.
     *
     * @param value_serialized_name the new value_serialized_name
     */
    public void setValue(final String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence_serialized_name the new confidence_serialized_name
     */
    public void setConfidence(final Double confidence_serialized_name) {
      this.confidence_serialized_name = confidence_serialized_name;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata_serialized_name the new metadata_serialized_name
     */
    public void setMetadata(final IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
    }

    /**
     * Sets the groups_serialized_name.
     *
     * @param groups_serialized_name the new groups_serialized_name
     */
    public void setGroups(final List<CaptureGroup> groups_serialized_name) {
      this.groups_serialized_name = groups_serialized_name;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RuntimeEntity ret = (RuntimeEntity) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for groups_serialized_name
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
     * Gets the intent_serialized_name.
     *
     * @return the intent_serialized_name
     */
    @AuraEnabled
    public String getIntent() {
      return intent_serialized_name;
    }

    /**
     * Gets the confidence_serialized_name.
     *
     * @return the confidence_serialized_name
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
     * Sets the intent_serialized_name.
     *
     * @param intent_serialized_name the new intent_serialized_name
     */
    public void setIntent(final String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Sets the confidence_serialized_name.
     *
     * @param confidence_serialized_name the new confidence_serialized_name
     */
    public void setConfidence(final Double confidence_serialized_name) {
      this.confidence_serialized_name = confidence_serialized_name;
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
     * Gets the synonym_serialized_name.
     *
     * The text of the synonym.
     *
     * @return the synonym_serialized_name
     */
    @AuraEnabled
    public String getSynonym() {
      return synonym_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the synonym.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the most recent update to the synonym.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }

    /**
     * Sets the synonym_serialized_name.
     *
     * @param synonym the new synonym
     */
    public void setSynonym(final String synonym) {
      this.synonym_serialized_name = synonym;
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
     * Gets the synonyms_serialized_name.
     *
     * An array of synonyms.
     *
     * @return the synonyms_serialized_name
     */
    @AuraEnabled
    public List<Synonym> getSynonyms() {
      return synonyms_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * The pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the synonyms_serialized_name.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<Synonym> synonyms) {
      this.synonyms_serialized_name = synonyms;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for synonyms_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input counterexample (for example, `What are you wearing?`).
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the new_text_serialized_name.
     *
     * The text of a user input counterexample.
     *
     * @return the new_text_serialized_name
     */
    public String newText() {
      return new_text_serialized_name;
    }
    private UpdateCounterexampleOptions(UpdateCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      text_serialized_name = builder.text_serialized_name;
      new_text_serialized_name = builder.new_text_serialized_name;
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
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;

    private UpdateCounterexampleOptionsBuilder(UpdateCounterexampleOptions updateCounterexampleOptions) {
      workspace_id_serialized_name = updateCounterexampleOptions.workspace_id_serialized_name;
      text_serialized_name = updateCounterexampleOptions.text_serialized_name;
      new_text_serialized_name = updateCounterexampleOptions.new_text_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the new_text_serialized_name.
     *
     * @param newText the newText
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder newText(String newText) {
      this.new_text_serialized_name = newText;
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
   * The UpdateDialogNode options.
   */
  public class UpdateDialogNodeOptions extends IBMWatsonOptionsModel {
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    private String new_type_serialized_name;
    private List<DialogNodeAction> new_actions_serialized_name;
    private String new_conditions_serialized_name;
    private IBMWatsonMapModel new_context_serialized_name;
    private String new_previous_sibling_serialized_name;
    private String new_variable_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private String new_title_serialized_name;
    private String new_description_serialized_name;
    private String new_digress_out_serialized_name;
    private String new_event_name_serialized_name;
    private String new_digress_out_slots_serialized_name;
    private DialogNodeNextStep new_next_step_serialized_name;
    private String new_digress_in_serialized_name;
    private IBMWatsonMapModel new_output_serialized_name;
    private String new_parent_serialized_name;
    private String new_dialog_node_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialog_node_serialized_name
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the new_type_serialized_name.
     *
     * How the dialog node is processed.
     *
     * @return the new_type_serialized_name
     */
    public String newType() {
      return new_type_serialized_name;
    }
    /**
     * Gets the new_actions_serialized_name.
     *
     * An array of objects describing any actions to be invoked by the dialog node.
     *
     * @return the new_actions_serialized_name
     */
    public List<DialogNodeAction> newActions() {
      return new_actions_serialized_name;
    }
    /**
     * Gets the new_conditions_serialized_name.
     *
     * The condition that will trigger the dialog node. This string cannot contain carriage return, newline, or tab
     * characters, and it must be no longer than 2048 characters.
     *
     * @return the new_conditions_serialized_name
     */
    public String newConditions() {
      return new_conditions_serialized_name;
    }
    /**
     * Gets the new_context_serialized_name.
     *
     * The context for the dialog node.
     *
     * @return the new_context_serialized_name
     */
    public IBMWatsonMapModel newContext() {
      return new_context_serialized_name;
    }
    /**
     * Gets the new_previous_sibling_serialized_name.
     *
     * The ID of the previous sibling dialog node.
     *
     * @return the new_previous_sibling_serialized_name
     */
    public String newPreviousSibling() {
      return new_previous_sibling_serialized_name;
    }
    /**
     * Gets the new_variable_serialized_name.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the new_variable_serialized_name
     */
    public String newVariable() {
      return new_variable_serialized_name;
    }
    /**
     * Gets the new_metadata_serialized_name.
     *
     * The metadata for the dialog node.
     *
     * @return the new_metadata_serialized_name
     */
    public IBMWatsonMapModel newMetadata() {
      return new_metadata_serialized_name;
    }
    /**
     * Gets the new_title_serialized_name.
     *
     * The alias used to identify the dialog node. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 64 characters.
     *
     * @return the new_title_serialized_name
     */
    public String newTitle() {
      return new_title_serialized_name;
    }
    /**
     * Gets the new_description_serialized_name.
     *
     * The description of the dialog node. This string cannot contain carriage return, newline, or tab characters, and
     * it must be no longer than 128 characters.
     *
     * @return the new_description_serialized_name
     */
    public String newDescription() {
      return new_description_serialized_name;
    }
    /**
     * Gets the new_digress_out_serialized_name.
     *
     * Whether this dialog node can be returned to after a digression.
     *
     * @return the new_digress_out_serialized_name
     */
    public String newDigressOut() {
      return new_digress_out_serialized_name;
    }
    /**
     * Gets the new_event_name_serialized_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the new_event_name_serialized_name
     */
    public String newEventName() {
      return new_event_name_serialized_name;
    }
    /**
     * Gets the new_digress_out_slots_serialized_name.
     *
     * Whether the user can digress to top-level nodes while filling out slots.
     *
     * @return the new_digress_out_slots_serialized_name
     */
    public String newDigressOutSlots() {
      return new_digress_out_slots_serialized_name;
    }
    /**
     * Gets the new_next_step_serialized_name.
     *
     * The next step to be executed in dialog processing.
     *
     * @return the new_next_step_serialized_name
     */
    public DialogNodeNextStep newNextStep() {
      return new_next_step_serialized_name;
    }
    /**
     * Gets the new_digress_in_serialized_name.
     *
     * Whether this top-level dialog node can be digressed into.
     *
     * @return the new_digress_in_serialized_name
     */
    public String newDigressIn() {
      return new_digress_in_serialized_name;
    }
    /**
     * Gets the new_output_serialized_name.
     *
     * The output of the dialog node. For more information about how to specify dialog node output, see the
     * [documentation](https://console.bluemix.net/docs/services/conversation/dialog-overview.html#complex).
     *
     * @return the new_output_serialized_name
     */
    public IBMWatsonMapModel newOutput() {
      return new_output_serialized_name;
    }
    /**
     * Gets the new_parent_serialized_name.
     *
     * The ID of the parent dialog node.
     *
     * @return the new_parent_serialized_name
     */
    public String newParent() {
      return new_parent_serialized_name;
    }
    /**
     * Gets the new_dialog_node_serialized_name.
     *
     * The dialog node ID. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, space, underscore, hyphen, and dot characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the new_dialog_node_serialized_name
     */
    public String newDialogNode() {
      return new_dialog_node_serialized_name;
    }
    private UpdateDialogNodeOptions(UpdateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node_serialized_name, 'dialog_node_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      dialog_node_serialized_name = builder.dialog_node_serialized_name;
      new_type_serialized_name = builder.new_type_serialized_name;
      new_actions_serialized_name = builder.new_actions_serialized_name;
      new_conditions_serialized_name = builder.new_conditions_serialized_name;
      new_context_serialized_name = builder.new_context_serialized_name;
      new_previous_sibling_serialized_name = builder.new_previous_sibling_serialized_name;
      new_variable_serialized_name = builder.new_variable_serialized_name;
      new_metadata_serialized_name = builder.new_metadata_serialized_name;
      new_title_serialized_name = builder.new_title_serialized_name;
      new_description_serialized_name = builder.new_description_serialized_name;
      new_digress_out_serialized_name = builder.new_digress_out_serialized_name;
      new_event_name_serialized_name = builder.new_event_name_serialized_name;
      new_digress_out_slots_serialized_name = builder.new_digress_out_slots_serialized_name;
      new_next_step_serialized_name = builder.new_next_step_serialized_name;
      new_digress_in_serialized_name = builder.new_digress_in_serialized_name;
      new_output_serialized_name = builder.new_output_serialized_name;
      new_parent_serialized_name = builder.new_parent_serialized_name;
      new_dialog_node_serialized_name = builder.new_dialog_node_serialized_name;
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
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    private String new_type_serialized_name;
    private List<DialogNodeAction> new_actions_serialized_name;
    private String new_conditions_serialized_name;
    private IBMWatsonMapModel new_context_serialized_name;
    private String new_previous_sibling_serialized_name;
    private String new_variable_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private String new_title_serialized_name;
    private String new_description_serialized_name;
    private String new_digress_out_serialized_name;
    private String new_event_name_serialized_name;
    private String new_digress_out_slots_serialized_name;
    private DialogNodeNextStep new_next_step_serialized_name;
    private String new_digress_in_serialized_name;
    private IBMWatsonMapModel new_output_serialized_name;
    private String new_parent_serialized_name;
    private String new_dialog_node_serialized_name;

    private UpdateDialogNodeOptionsBuilder(UpdateDialogNodeOptions updateDialogNodeOptions) {
      workspace_id_serialized_name = updateDialogNodeOptions.workspace_id_serialized_name;
      dialog_node_serialized_name = updateDialogNodeOptions.dialog_node_serialized_name;
      new_type_serialized_name = updateDialogNodeOptions.new_type_serialized_name;
      new_actions_serialized_name = updateDialogNodeOptions.new_actions_serialized_name;
      new_conditions_serialized_name = updateDialogNodeOptions.new_conditions_serialized_name;
      new_context_serialized_name = updateDialogNodeOptions.new_context_serialized_name;
      new_previous_sibling_serialized_name = updateDialogNodeOptions.new_previous_sibling_serialized_name;
      new_variable_serialized_name = updateDialogNodeOptions.new_variable_serialized_name;
      new_metadata_serialized_name = updateDialogNodeOptions.new_metadata_serialized_name;
      new_title_serialized_name = updateDialogNodeOptions.new_title_serialized_name;
      new_description_serialized_name = updateDialogNodeOptions.new_description_serialized_name;
      new_digress_out_serialized_name = updateDialogNodeOptions.new_digress_out_serialized_name;
      new_event_name_serialized_name = updateDialogNodeOptions.new_event_name_serialized_name;
      new_digress_out_slots_serialized_name = updateDialogNodeOptions.new_digress_out_slots_serialized_name;
      new_next_step_serialized_name = updateDialogNodeOptions.new_next_step_serialized_name;
      new_digress_in_serialized_name = updateDialogNodeOptions.new_digress_in_serialized_name;
      new_output_serialized_name = updateDialogNodeOptions.new_output_serialized_name;
      new_parent_serialized_name = updateDialogNodeOptions.new_parent_serialized_name;
      new_dialog_node_serialized_name = updateDialogNodeOptions.new_dialog_node_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.dialog_node_serialized_name = dialogNode;
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
     * Adds an newActions to new_actions_serialized_name.
     *
     * @param newActions the new newActions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder addNewActions(DialogNodeAction newActions) {
      IBMWatsonValidator.notNull(newActions, 'newActions cannot be null');
      if (this.new_actions_serialized_name == null) {
        this.new_actions_serialized_name = new List<DialogNodeAction>();
      }
      this.new_actions_serialized_name.add(newActions);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialogNode the dialogNode
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder dialogNode(String dialogNode) {
      this.dialog_node_serialized_name = dialogNode;
      return this;
    }

    /**
     * Set the new_type_serialized_name.
     *
     * @param newType the newType
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newType(String newType) {
      this.new_type_serialized_name = newType;
      return this;
    }

    /**
     * Set the new_actions_serialized_name.
     * Existing new_actions_serialized_name will be replaced.
     *
     * @param newActions the newActions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newActions(List<DialogNodeAction> newActions) {
      this.new_actions_serialized_name = newActions;
      return this;
    }

    /**
     * Set the new_conditions_serialized_name.
     *
     * @param newConditions the newConditions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newConditions(String newConditions) {
      this.new_conditions_serialized_name = newConditions;
      return this;
    }

    /**
     * Set the new_context_serialized_name.
     *
     * @param newContext the newContext
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newContext(IBMWatsonMapModel newContext) {
      this.new_context_serialized_name = newContext;
      return this;
    }

    /**
     * Set the new_previous_sibling_serialized_name.
     *
     * @param newPreviousSibling the newPreviousSibling
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newPreviousSibling(String newPreviousSibling) {
      this.new_previous_sibling_serialized_name = newPreviousSibling;
      return this;
    }

    /**
     * Set the new_variable_serialized_name.
     *
     * @param newVariable the newVariable
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newVariable(String newVariable) {
      this.new_variable_serialized_name = newVariable;
      return this;
    }

    /**
     * Set the new_metadata_serialized_name.
     *
     * @param newMetadata the newMetadata
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newMetadata(IBMWatsonMapModel newMetadata) {
      this.new_metadata_serialized_name = newMetadata;
      return this;
    }

    /**
     * Set the new_title_serialized_name.
     *
     * @param newTitle the newTitle
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newTitle(String newTitle) {
      this.new_title_serialized_name = newTitle;
      return this;
    }

    /**
     * Set the new_description_serialized_name.
     *
     * @param newDescription the newDescription
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDescription(String newDescription) {
      this.new_description_serialized_name = newDescription;
      return this;
    }

    /**
     * Set the new_digress_out_serialized_name.
     *
     * @param newDigressOut the newDigressOut
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDigressOut(String newDigressOut) {
      this.new_digress_out_serialized_name = newDigressOut;
      return this;
    }

    /**
     * Set the new_event_name_serialized_name.
     *
     * @param newEventName the newEventName
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newEventName(String newEventName) {
      this.new_event_name_serialized_name = newEventName;
      return this;
    }

    /**
     * Set the new_digress_out_slots_serialized_name.
     *
     * @param newDigressOutSlots the newDigressOutSlots
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDigressOutSlots(String newDigressOutSlots) {
      this.new_digress_out_slots_serialized_name = newDigressOutSlots;
      return this;
    }

    /**
     * Set the new_next_step_serialized_name.
     *
     * @param newNextStep the newNextStep
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newNextStep(DialogNodeNextStep newNextStep) {
      this.new_next_step_serialized_name = newNextStep;
      return this;
    }

    /**
     * Set the new_digress_in_serialized_name.
     *
     * @param newDigressIn the newDigressIn
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDigressIn(String newDigressIn) {
      this.new_digress_in_serialized_name = newDigressIn;
      return this;
    }

    /**
     * Set the new_output_serialized_name.
     *
     * @param newOutput the newOutput
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newOutput(IBMWatsonMapModel newOutput) {
      this.new_output_serialized_name = newOutput;
      return this;
    }

    /**
     * Set the new_parent_serialized_name.
     *
     * @param newParent the newParent
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newParent(String newParent) {
      this.new_parent_serialized_name = newParent;
      return this;
    }

    /**
     * Set the new_dialog_node_serialized_name.
     *
     * @param newDialogNode the newDialogNode
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDialogNode(String newDialogNode) {
      this.new_dialog_node_serialized_name = newDialogNode;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean new_fuzzy_match_serialized_name;
    private String new_entity_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private List<CreateValue> new_values_serialized_name;
    private String new_description_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the new_fuzzy_match_serialized_name.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the new_fuzzy_match_serialized_name
     */
    public Boolean newFuzzyMatch() {
      return new_fuzzy_match_serialized_name;
    }
    /**
     * Gets the new_entity_serialized_name.
     *
     * The name of the entity. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, and hyphen characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 64 characters.
     *
     * @return the new_entity_serialized_name
     */
    public String newEntity() {
      return new_entity_serialized_name;
    }
    /**
     * Gets the new_metadata_serialized_name.
     *
     * Any metadata related to the entity.
     *
     * @return the new_metadata_serialized_name
     */
    public IBMWatsonMapModel newMetadata() {
      return new_metadata_serialized_name;
    }
    /**
     * Gets the new_values_serialized_name.
     *
     * An array of entity values.
     *
     * @return the new_values_serialized_name
     */
    public List<CreateValue> newValues() {
      return new_values_serialized_name;
    }
    /**
     * Gets the new_description_serialized_name.
     *
     * The description of the entity. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the new_description_serialized_name
     */
    public String newDescription() {
      return new_description_serialized_name;
    }
    private UpdateEntityOptions(UpdateEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      new_fuzzy_match_serialized_name = builder.new_fuzzy_match_serialized_name;
      new_entity_serialized_name = builder.new_entity_serialized_name;
      new_metadata_serialized_name = builder.new_metadata_serialized_name;
      new_values_serialized_name = builder.new_values_serialized_name;
      new_description_serialized_name = builder.new_description_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean new_fuzzy_match_serialized_name;
    private String new_entity_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private List<CreateValue> new_values_serialized_name;
    private String new_description_serialized_name;

    private UpdateEntityOptionsBuilder(UpdateEntityOptions updateEntityOptions) {
      workspace_id_serialized_name = updateEntityOptions.workspace_id_serialized_name;
      entity_serialized_name = updateEntityOptions.entity_serialized_name;
      new_fuzzy_match_serialized_name = updateEntityOptions.new_fuzzy_match_serialized_name;
      new_entity_serialized_name = updateEntityOptions.new_entity_serialized_name;
      new_metadata_serialized_name = updateEntityOptions.new_metadata_serialized_name;
      new_values_serialized_name = updateEntityOptions.new_values_serialized_name;
      new_description_serialized_name = updateEntityOptions.new_description_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
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
     * Adds an newValues to new_values_serialized_name.
     *
     * @param newValues the new newValues
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder addNewValues(CreateValue newValues) {
      IBMWatsonValidator.notNull(newValues, 'newValues cannot be null');
      if (this.new_values_serialized_name == null) {
        this.new_values_serialized_name = new List<CreateValue>();
      }
      this.new_values_serialized_name.add(newValues);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the new_fuzzy_match_serialized_name.
     *
     * @param newFuzzyMatch the newFuzzyMatch
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newFuzzyMatch(Boolean newFuzzyMatch) {
      this.new_fuzzy_match_serialized_name = newFuzzyMatch;
      return this;
    }

    /**
     * Set the new_entity_serialized_name.
     *
     * @param newEntity the newEntity
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newEntity(String newEntity) {
      this.new_entity_serialized_name = newEntity;
      return this;
    }

    /**
     * Set the new_metadata_serialized_name.
     *
     * @param newMetadata the newMetadata
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newMetadata(IBMWatsonMapModel newMetadata) {
      this.new_metadata_serialized_name = newMetadata;
      return this;
    }

    /**
     * Set the new_values_serialized_name.
     * Existing new_values_serialized_name will be replaced.
     *
     * @param newValues the newValues
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newValues(List<CreateValue> newValues) {
      this.new_values_serialized_name = newValues;
      return this;
    }

    /**
     * Set the new_description_serialized_name.
     *
     * @param newDescription the newDescription
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newDescription(String newDescription) {
      this.new_description_serialized_name = newDescription;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of the user input example.
     *
     * @return the text_serialized_name
     */
    public String text() {
      return text_serialized_name;
    }
    /**
     * Gets the new_text_serialized_name.
     *
     * The text of the user input example. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 1024 characters.
     *
     * @return the new_text_serialized_name
     */
    public String newText() {
      return new_text_serialized_name;
    }
    private UpdateExampleOptions(UpdateExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      text_serialized_name = builder.text_serialized_name;
      new_text_serialized_name = builder.new_text_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;

    private UpdateExampleOptionsBuilder(UpdateExampleOptions updateExampleOptions) {
      workspace_id_serialized_name = updateExampleOptions.workspace_id_serialized_name;
      intent_serialized_name = updateExampleOptions.intent_serialized_name;
      text_serialized_name = updateExampleOptions.text_serialized_name;
      new_text_serialized_name = updateExampleOptions.new_text_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
      this.text_serialized_name = text;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text the text
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder text(String text) {
      this.text_serialized_name = text;
      return this;
    }

    /**
     * Set the new_text_serialized_name.
     *
     * @param newText the newText
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder newText(String newText) {
      this.new_text_serialized_name = newText;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String new_intent_serialized_name;
    private List<CreateExample> new_examples_serialized_name;
    private String new_description_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the new_intent_serialized_name.
     *
     * The name of the intent. This string must conform to the following restrictions:
     * - It can contain only Unicode alphanumeric, underscore, hyphen, and dot characters.
     * - It cannot begin with the reserved prefix `sys-`.
     * - It must be no longer than 128 characters.
     *
     * @return the new_intent_serialized_name
     */
    public String newIntent() {
      return new_intent_serialized_name;
    }
    /**
     * Gets the new_examples_serialized_name.
     *
     * An array of user input examples for the intent.
     *
     * @return the new_examples_serialized_name
     */
    public List<CreateExample> newExamples() {
      return new_examples_serialized_name;
    }
    /**
     * Gets the new_description_serialized_name.
     *
     * The description of the intent.
     *
     * @return the new_description_serialized_name
     */
    public String newDescription() {
      return new_description_serialized_name;
    }
    private UpdateIntentOptions(UpdateIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      new_intent_serialized_name = builder.new_intent_serialized_name;
      new_examples_serialized_name = builder.new_examples_serialized_name;
      new_description_serialized_name = builder.new_description_serialized_name;
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
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String new_intent_serialized_name;
    private List<CreateExample> new_examples_serialized_name;
    private String new_description_serialized_name;

    private UpdateIntentOptionsBuilder(UpdateIntentOptions updateIntentOptions) {
      workspace_id_serialized_name = updateIntentOptions.workspace_id_serialized_name;
      intent_serialized_name = updateIntentOptions.intent_serialized_name;
      new_intent_serialized_name = updateIntentOptions.new_intent_serialized_name;
      new_examples_serialized_name = updateIntentOptions.new_examples_serialized_name;
      new_description_serialized_name = updateIntentOptions.new_description_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.intent_serialized_name = intent;
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
     * Adds an newExamples to new_examples_serialized_name.
     *
     * @param newExamples the new newExamples
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder addNewExamples(CreateExample newExamples) {
      IBMWatsonValidator.notNull(newExamples, 'newExamples cannot be null');
      if (this.new_examples_serialized_name == null) {
        this.new_examples_serialized_name = new List<CreateExample>();
      }
      this.new_examples_serialized_name.add(newExamples);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent the intent
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder intent(String intent) {
      this.intent_serialized_name = intent;
      return this;
    }

    /**
     * Set the new_intent_serialized_name.
     *
     * @param newIntent the newIntent
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newIntent(String newIntent) {
      this.new_intent_serialized_name = newIntent;
      return this;
    }

    /**
     * Set the new_examples_serialized_name.
     * Existing new_examples_serialized_name will be replaced.
     *
     * @param newExamples the newExamples
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newExamples(List<CreateExample> newExamples) {
      this.new_examples_serialized_name = newExamples;
      return this;
    }

    /**
     * Set the new_description_serialized_name.
     *
     * @param newDescription the newDescription
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newDescription(String newDescription) {
      this.new_description_serialized_name = newDescription;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    private String new_synonym_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the synonym_serialized_name.
     *
     * The text of the synonym.
     *
     * @return the synonym_serialized_name
     */
    public String synonym() {
      return synonym_serialized_name;
    }
    /**
     * Gets the new_synonym_serialized_name.
     *
     * The text of the synonym. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the new_synonym_serialized_name
     */
    public String newSynonym() {
      return new_synonym_serialized_name;
    }
    private UpdateSynonymOptions(UpdateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym_serialized_name, 'synonym_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      synonym_serialized_name = builder.synonym_serialized_name;
      new_synonym_serialized_name = builder.new_synonym_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    private String new_synonym_serialized_name;

    private UpdateSynonymOptionsBuilder(UpdateSynonymOptions updateSynonymOptions) {
      workspace_id_serialized_name = updateSynonymOptions.workspace_id_serialized_name;
      entity_serialized_name = updateSynonymOptions.entity_serialized_name;
      value_serialized_name = updateSynonymOptions.value_serialized_name;
      synonym_serialized_name = updateSynonymOptions.synonym_serialized_name;
      new_synonym_serialized_name = updateSynonymOptions.new_synonym_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
      this.synonym_serialized_name = synonym;
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
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym the synonym
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder synonym(String synonym) {
      this.synonym_serialized_name = synonym;
      return this;
    }

    /**
     * Set the new_synonym_serialized_name.
     *
     * @param newSynonym the newSynonym
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder newSynonym(String newSynonym) {
      this.new_synonym_serialized_name = newSynonym;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private List<String> new_synonyms_serialized_name;
    private String new_type_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private List<String> new_patterns_serialized_name;
    private String new_value_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the entity_serialized_name.
     *
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    public String value() {
      return value_serialized_name;
    }
    /**
     * Gets the new_synonyms_serialized_name.
     *
     * An array of synonyms for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A synonym must conform to the following resrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the new_synonyms_serialized_name
     */
    public List<String> newSynonyms() {
      return new_synonyms_serialized_name;
    }
    /**
     * Gets the new_type_serialized_name.
     *
     * Specifies the type of value.
     *
     * @return the new_type_serialized_name
     */
    public String newType() {
      return new_type_serialized_name;
    }
    /**
     * Gets the new_metadata_serialized_name.
     *
     * Any metadata related to the entity value.
     *
     * @return the new_metadata_serialized_name
     */
    public IBMWatsonMapModel newMetadata() {
      return new_metadata_serialized_name;
    }
    /**
     * Gets the new_patterns_serialized_name.
     *
     * An array of patterns for the entity value. You can provide either synonyms or patterns (as indicated by
     * **type**), but not both. A pattern is a regular expression no longer than 512 characters. For more information
     * about how to specify a pattern, see the
     * [documentation](https://console.bluemix.net/docs/services/conversation/entities.html#creating-entities).
     *
     * @return the new_patterns_serialized_name
     */
    public List<String> newPatterns() {
      return new_patterns_serialized_name;
    }
    /**
     * Gets the new_value_serialized_name.
     *
     * The text of the entity value. This string must conform to the following restrictions:
     * - It cannot contain carriage return, newline, or tab characters.
     * - It cannot consist of only whitespace characters.
     * - It must be no longer than 64 characters.
     *
     * @return the new_value_serialized_name
     */
    public String newValue() {
      return new_value_serialized_name;
    }
    private UpdateValueOptions(UpdateValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      new_synonyms_serialized_name = builder.new_synonyms_serialized_name;
      new_type_serialized_name = builder.new_type_serialized_name;
      new_metadata_serialized_name = builder.new_metadata_serialized_name;
      new_patterns_serialized_name = builder.new_patterns_serialized_name;
      new_value_serialized_name = builder.new_value_serialized_name;
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
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private List<String> new_synonyms_serialized_name;
    private String new_type_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private List<String> new_patterns_serialized_name;
    private String new_value_serialized_name;

    private UpdateValueOptionsBuilder(UpdateValueOptions updateValueOptions) {
      workspace_id_serialized_name = updateValueOptions.workspace_id_serialized_name;
      entity_serialized_name = updateValueOptions.entity_serialized_name;
      value_serialized_name = updateValueOptions.value_serialized_name;
      new_synonyms_serialized_name = updateValueOptions.new_synonyms_serialized_name;
      new_type_serialized_name = updateValueOptions.new_type_serialized_name;
      new_metadata_serialized_name = updateValueOptions.new_metadata_serialized_name;
      new_patterns_serialized_name = updateValueOptions.new_patterns_serialized_name;
      new_value_serialized_name = updateValueOptions.new_value_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
      this.entity_serialized_name = entity;
      this.value_serialized_name = value;
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
     * Adds an newSynonyms to new_synonyms_serialized_name.
     *
     * @param newSynonyms the new newSynonyms
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewSynonyms(String newSynonyms) {
      IBMWatsonValidator.notNull(newSynonyms, 'newSynonyms cannot be null');
      if (this.new_synonyms_serialized_name == null) {
        this.new_synonyms_serialized_name = new List<String>();
      }
      this.new_synonyms_serialized_name.add(newSynonyms);
      return this;
    }

    /**
     * Adds an newPatterns to new_patterns_serialized_name.
     *
     * @param newPatterns the new newPatterns
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewPatterns(String newPatterns) {
      IBMWatsonValidator.notNull(newPatterns, 'newPatterns cannot be null');
      if (this.new_patterns_serialized_name == null) {
        this.new_patterns_serialized_name = new List<String>();
      }
      this.new_patterns_serialized_name.add(newPatterns);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity the entity
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder entity(String entity) {
      this.entity_serialized_name = entity;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value the value
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder value(String value) {
      this.value_serialized_name = value;
      return this;
    }

    /**
     * Set the new_synonyms_serialized_name.
     * Existing new_synonyms_serialized_name will be replaced.
     *
     * @param newSynonyms the newSynonyms
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newSynonyms(List<String> newSynonyms) {
      this.new_synonyms_serialized_name = newSynonyms;
      return this;
    }

    /**
     * Set the new_type_serialized_name.
     *
     * @param newType the newType
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newType(String newType) {
      this.new_type_serialized_name = newType;
      return this;
    }

    /**
     * Set the new_metadata_serialized_name.
     *
     * @param newMetadata the newMetadata
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newMetadata(IBMWatsonMapModel newMetadata) {
      this.new_metadata_serialized_name = newMetadata;
      return this;
    }

    /**
     * Set the new_patterns_serialized_name.
     * Existing new_patterns_serialized_name will be replaced.
     *
     * @param newPatterns the newPatterns
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newPatterns(List<String> newPatterns) {
      this.new_patterns_serialized_name = newPatterns;
      return this;
    }

    /**
     * Set the new_value_serialized_name.
     *
     * @param newValue the newValue
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newValue(String newValue) {
      this.new_value_serialized_name = newValue;
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
    private String workspace_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String language_serialized_name;
    private List<CreateIntent> intents_serialized_name;
    private List<CreateEntity> entities_serialized_name;
    private List<CreateDialogNode> dialog_nodes_serialized_name;
    private List<CreateCounterexample> counterexamples_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean learning_opt_out_serialized_name;
    private Boolean append_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the workspace. This string cannot contain carriage return, newline, or tab characters, and it must be
     * no longer than 64 characters.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the workspace. This string cannot contain carriage return, newline, or tab characters, and it
     * must be no longer than 128 characters.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the workspace.
     *
     * @return the language_serialized_name
     */
    public String language() {
      return language_serialized_name;
    }
    /**
     * Gets the intents_serialized_name.
     *
     * An array of objects defining the intents for the workspace.
     *
     * @return the intents_serialized_name
     */
    public List<CreateIntent> intents() {
      return intents_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * An array of objects defining the entities for the workspace.
     *
     * @return the entities_serialized_name
     */
    public List<CreateEntity> entities() {
      return entities_serialized_name;
    }
    /**
     * Gets the dialog_nodes_serialized_name.
     *
     * An array of objects defining the nodes in the workspace dialog.
     *
     * @return the dialog_nodes_serialized_name
     */
    public List<CreateDialogNode> dialogNodes() {
      return dialog_nodes_serialized_name;
    }
    /**
     * Gets the counterexamples_serialized_name.
     *
     * An array of objects defining input examples that have been marked as irrelevant input.
     *
     * @return the counterexamples_serialized_name
     */
    public List<CreateCounterexample> counterexamples() {
      return counterexamples_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the workspace.
     *
     * @return the metadata_serialized_name
     */
    public IBMWatsonMapModel metadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the learning_opt_out_serialized_name.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates
     * that workspace training data is not to be used.
     *
     * @return the learning_opt_out_serialized_name
     */
    public Boolean learningOptOut() {
      return learning_opt_out_serialized_name;
    }
    /**
     * Gets the append_serialized_name.
     *
     * Whether the new data is to be appended to the existing data in the workspace. If **append**=`false`, elements
     * included in the new data completely replace the corresponding existing elements, including all subelements. For
     * example, if the new data includes **entities** and **append**=`false`, all existing entities in the workspace are
     * discarded and replaced with the new entities.
     *
     * If **append**=`true`, existing elements are preserved, and the new elements are added. If any elements in the new
     * data collide with existing elements, the update request fails.
     *
     * @return the append_serialized_name
     */
    public Boolean append() {
      return append_serialized_name;
    }
    private UpdateWorkspaceOptions(UpdateWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      name_serialized_name = builder.name_serialized_name;
      description_serialized_name = builder.description_serialized_name;
      language_serialized_name = builder.language_serialized_name;
      intents_serialized_name = builder.intents_serialized_name;
      entities_serialized_name = builder.entities_serialized_name;
      dialog_nodes_serialized_name = builder.dialog_nodes_serialized_name;
      counterexamples_serialized_name = builder.counterexamples_serialized_name;
      metadata_serialized_name = builder.metadata_serialized_name;
      learning_opt_out_serialized_name = builder.learning_opt_out_serialized_name;
      append_serialized_name = builder.append_serialized_name;
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
    private String workspace_id_serialized_name;
    private String name_serialized_name;
    private String description_serialized_name;
    private String language_serialized_name;
    private List<CreateIntent> intents_serialized_name;
    private List<CreateEntity> entities_serialized_name;
    private List<CreateDialogNode> dialog_nodes_serialized_name;
    private List<CreateCounterexample> counterexamples_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean learning_opt_out_serialized_name;
    private Boolean append_serialized_name;

    private UpdateWorkspaceOptionsBuilder(UpdateWorkspaceOptions updateWorkspaceOptions) {
      workspace_id_serialized_name = updateWorkspaceOptions.workspace_id_serialized_name;
      name_serialized_name = updateWorkspaceOptions.name_serialized_name;
      description_serialized_name = updateWorkspaceOptions.description_serialized_name;
      language_serialized_name = updateWorkspaceOptions.language_serialized_name;
      intents_serialized_name = updateWorkspaceOptions.intents_serialized_name;
      entities_serialized_name = updateWorkspaceOptions.entities_serialized_name;
      dialog_nodes_serialized_name = updateWorkspaceOptions.dialog_nodes_serialized_name;
      counterexamples_serialized_name = updateWorkspaceOptions.counterexamples_serialized_name;
      metadata_serialized_name = updateWorkspaceOptions.metadata_serialized_name;
      learning_opt_out_serialized_name = updateWorkspaceOptions.learning_opt_out_serialized_name;
      append_serialized_name = updateWorkspaceOptions.append_serialized_name;
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
      this.workspace_id_serialized_name = workspaceId;
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
     * Adds an intents to intents_serialized_name.
     *
     * @param intents the new intents
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addIntents(CreateIntent intents) {
      IBMWatsonValidator.notNull(intents, 'intents cannot be null');
      if (this.intents_serialized_name == null) {
        this.intents_serialized_name = new List<CreateIntent>();
      }
      this.intents_serialized_name.add(intents);
      return this;
    }

    /**
     * Adds an entities to entities_serialized_name.
     *
     * @param entities the new entities
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addEntities(CreateEntity entities) {
      IBMWatsonValidator.notNull(entities, 'entities cannot be null');
      if (this.entities_serialized_name == null) {
        this.entities_serialized_name = new List<CreateEntity>();
      }
      this.entities_serialized_name.add(entities);
      return this;
    }

    /**
     * Adds an dialogNodes to dialog_nodes_serialized_name.
     *
     * @param dialogNodes the new dialogNodes
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialogNodes) {
      IBMWatsonValidator.notNull(dialogNodes, 'dialogNodes cannot be null');
      if (this.dialog_nodes_serialized_name == null) {
        this.dialog_nodes_serialized_name = new List<CreateDialogNode>();
      }
      this.dialog_nodes_serialized_name.add(dialogNodes);
      return this;
    }

    /**
     * Adds an counterexamples to counterexamples_serialized_name.
     *
     * @param counterexamples the new counterexamples
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addCounterexamples(CreateCounterexample counterexamples) {
      IBMWatsonValidator.notNull(counterexamples, 'counterexamples cannot be null');
      if (this.counterexamples_serialized_name == null) {
        this.counterexamples_serialized_name = new List<CreateCounterexample>();
      }
      this.counterexamples_serialized_name.add(counterexamples);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspaceId the workspaceId
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder workspaceId(String workspaceId) {
      this.workspace_id_serialized_name = workspaceId;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name the name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder name(String name) {
      this.name_serialized_name = name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description the description
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder description(String description) {
      this.description_serialized_name = description;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language the language
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder language(String language) {
      this.language_serialized_name = language;
      return this;
    }

    /**
     * Set the intents_serialized_name.
     * Existing intents_serialized_name will be replaced.
     *
     * @param intents the intents
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder intents(List<CreateIntent> intents) {
      this.intents_serialized_name = intents;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     * Existing entities_serialized_name will be replaced.
     *
     * @param entities the entities
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder entities(List<CreateEntity> entities) {
      this.entities_serialized_name = entities;
      return this;
    }

    /**
     * Set the dialog_nodes_serialized_name.
     * Existing dialog_nodes_serialized_name will be replaced.
     *
     * @param dialogNodes the dialogNodes
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialogNodes) {
      this.dialog_nodes_serialized_name = dialogNodes;
      return this;
    }

    /**
     * Set the counterexamples_serialized_name.
     * Existing counterexamples_serialized_name will be replaced.
     *
     * @param counterexamples the counterexamples
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder counterexamples(List<CreateCounterexample> counterexamples) {
      this.counterexamples_serialized_name = counterexamples;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata the metadata
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder metadata(IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
      return this;
    }

    /**
     * Set the learning_opt_out_serialized_name.
     *
     * @param learningOptOut the learningOptOut
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder learningOptOut(Boolean learningOptOut) {
      this.learning_opt_out_serialized_name = learningOptOut;
      return this;
    }

    /**
     * Set the append_serialized_name.
     *
     * @param append the append
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder append(Boolean append) {
      this.append_serialized_name = append;
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
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    @AuraEnabled
    public String getValue() {
      return value_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the entity value.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the entity value.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the synonyms_serialized_name.
     *
     * An array containing any synonyms for the entity value.
     *
     * @return the synonyms_serialized_name
     */
    @AuraEnabled
    public List<String> getSynonyms() {
      return synonyms_serialized_name;
    }
    /**
     * Gets the patterns_serialized_name.
     *
     * An array containing any patterns for the entity value.
     *
     * @return the patterns_serialized_name
     */
    @AuraEnabled
    public List<String> getPatterns() {
      return patterns_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }

    /**
     * Sets the value_serialized_name.
     *
     * @param value the new value
     */
    public void setValue(final String value) {
      this.value_serialized_name = value;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the synonyms_serialized_name.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<String> synonyms) {
      this.synonyms_serialized_name = synonyms;
    }

    /**
     * Sets the patterns_serialized_name.
     *
     * @param patterns the new patterns
     */
    public void setPatterns(final List<String> patterns) {
      this.patterns_serialized_name = patterns;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Value ret = (Value) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata_serialized_name
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
     * Gets the values_serialized_name.
     *
     * An array of entity values.
     *
     * @return the values_serialized_name
     */
    @AuraEnabled
    public List<ValueExport> getValues() {
      return values_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the values_serialized_name.
     *
     * @param values the new values
     */
    public void setValues(final List<ValueExport> values) {
      this.values_serialized_name = values;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for values_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
     * Gets the value_serialized_name.
     *
     * The text of the entity value.
     *
     * @return the value_serialized_name
     */
    @AuraEnabled
    public String getValue() {
      return value_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the entity value.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the entity value.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the synonyms_serialized_name.
     *
     * An array containing any synonyms for the entity value.
     *
     * @return the synonyms_serialized_name
     */
    @AuraEnabled
    public List<String> getSynonyms() {
      return synonyms_serialized_name;
    }
    /**
     * Gets the patterns_serialized_name.
     *
     * An array containing any patterns for the entity value.
     *
     * @return the patterns_serialized_name
     */
    @AuraEnabled
    public List<String> getPatterns() {
      return patterns_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value.
     *
     * @return the type_serialized_name
     */
    @AuraEnabled
    public String getType() {
      return type_serialized_name;
    }

    /**
     * Sets the value_serialized_name.
     *
     * @param value the new value
     */
    public void setValue(final String value) {
      this.value_serialized_name = value;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the synonyms_serialized_name.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<String> synonyms) {
      this.synonyms_serialized_name = synonyms;
    }

    /**
     * Sets the patterns_serialized_name.
     *
     * @param patterns the new patterns
     */
    public void setPatterns(final List<String> patterns) {
      this.patterns_serialized_name = patterns;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param typeVar the new typeVar
     */
    public void setType(final String typeVar) {
      this.type_serialized_name = typeVar;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ValueExport ret = (ValueExport) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata_serialized_name
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
    /**
     * Gets the name_serialized_name.
     *
     * The name of the workspace.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the workspace.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the workspace.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the workspace.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    @AuraEnabled
    public String getWorkspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the workspace.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata related to the workspace.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the learning_opt_out_serialized_name.
     *
     * Whether training data from the workspace (including artifacts such as intents and entities) can be used by IBM
     * for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learning_opt_out_serialized_name
     */
    @AuraEnabled
    public Boolean getLearningOptOut() {
      return learning_opt_out_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the learning_opt_out_serialized_name.
     *
     * @param learningOptOut the new learningOptOut
     */
    public void setLearningOptOut(final Boolean learningOptOut) {
      this.learning_opt_out_serialized_name = learningOptOut;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Workspace ret = (Workspace) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

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
     * Gets the workspaces_serialized_name.
     *
     * An array of objects describing the workspaces associated with the service instance.
     *
     * @return the workspaces_serialized_name
     */
    @AuraEnabled
    public List<Workspace> getWorkspaces() {
      return workspaces_serialized_name;
    }
    /**
     * Gets the pagination_serialized_name.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination_serialized_name
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the workspaces_serialized_name.
     *
     * @param workspaces the new workspaces
     */
    public void setWorkspaces(final List<Workspace> workspaces) {
      this.workspaces_serialized_name = workspaces;
    }

    /**
     * Sets the pagination_serialized_name.
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

      // calling custom deserializer for workspaces_serialized_name
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

      // calling custom deserializer for pagination_serialized_name
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
    private List<IntentExport> intents_serialized_name;
    private List<EntityExport> entities_serialized_name;
    private List<Counterexample> counterexamples_serialized_name;
    private List<DialogNode> dialog_nodes_serialized_name;
    /**
     * Gets the name_serialized_name.
     *
     * The name of the workspace.
     *
     * @return the name_serialized_name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the workspace.
     *
     * @return the description_serialized_name
     */
    @AuraEnabled
    public String getDescription() {
      return description_serialized_name;
    }
    /**
     * Gets the language_serialized_name.
     *
     * The language of the workspace.
     *
     * @return the language_serialized_name
     */
    @AuraEnabled
    public String getLanguage() {
      return language_serialized_name;
    }
    /**
     * Gets the metadata_serialized_name.
     *
     * Any metadata that is required by the workspace.
     *
     * @return the metadata_serialized_name
     */
    @AuraEnabled
    public IBMWatsonMapModel getMetadata() {
      return metadata_serialized_name;
    }
    /**
     * Gets the created_serialized_name.
     *
     * The timestamp for creation of the workspace.
     *
     * @return the created_serialized_name
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
    /**
     * Gets the updated_serialized_name.
     *
     * The timestamp for the last update to the workspace.
     *
     * @return the updated_serialized_name
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    @AuraEnabled
    public String getWorkspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the status_serialized_name.
     *
     * The current status of the workspace.
     *
     * @return the status_serialized_name
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
    /**
     * Gets the learning_opt_out_serialized_name.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates
     * that workspace training data is not to be used.
     *
     * @return the learning_opt_out_serialized_name
     */
    @AuraEnabled
    public Boolean getLearningOptOut() {
      return learning_opt_out_serialized_name;
    }
    /**
     * Gets the intents_serialized_name.
     *
     * An array of intents.
     *
     * @return the intents_serialized_name
     */
    @AuraEnabled
    public List<IntentExport> getIntents() {
      return intents_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * An array of entities.
     *
     * @return the entities_serialized_name
     */
    @AuraEnabled
    public List<EntityExport> getEntities() {
      return entities_serialized_name;
    }
    /**
     * Gets the counterexamples_serialized_name.
     *
     * An array of counterexamples.
     *
     * @return the counterexamples_serialized_name
     */
    @AuraEnabled
    public List<Counterexample> getCounterexamples() {
      return counterexamples_serialized_name;
    }
    /**
     * Gets the dialog_nodes_serialized_name.
     *
     * An array of objects describing the dialog nodes in the workspace.
     *
     * @return the dialog_nodes_serialized_name
     */
    @AuraEnabled
    public List<DialogNode> getDialogNodes() {
      return dialog_nodes_serialized_name;
    }

    /**
     * Sets the name_serialized_name.
     *
     * @param name the new name
     */
    public void setName(final String name) {
      this.name_serialized_name = name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description_serialized_name = description;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language_serialized_name = language;
    }

    /**
     * Sets the metadata_serialized_name.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final IBMWatsonMapModel metadata) {
      this.metadata_serialized_name = metadata;
    }

    /**
     * Sets the status_serialized_name.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status_serialized_name = status;
    }

    /**
     * Sets the learning_opt_out_serialized_name.
     *
     * @param learningOptOut the new learningOptOut
     */
    public void setLearningOptOut(final Boolean learningOptOut) {
      this.learning_opt_out_serialized_name = learningOptOut;
    }

    /**
     * Sets the intents_serialized_name.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<IntentExport> intents) {
      this.intents_serialized_name = intents;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntityExport> entities) {
      this.entities_serialized_name = entities;
    }

    /**
     * Sets the counterexamples_serialized_name.
     *
     * @param counterexamples the new counterexamples
     */
    public void setCounterexamples(final List<Counterexample> counterexamples) {
      this.counterexamples_serialized_name = counterexamples;
    }

    /**
     * Sets the dialog_nodes_serialized_name.
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

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
      ret.setMetadata(newMetadata);

      // calling custom deserializer for intents_serialized_name
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

      // calling custom deserializer for entities_serialized_name
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

      // calling custom deserializer for counterexamples_serialized_name
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

      // calling custom deserializer for dialog_nodes_serialized_name
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

}
