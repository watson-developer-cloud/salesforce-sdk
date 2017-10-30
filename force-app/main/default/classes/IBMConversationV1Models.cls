public class IBMConversationV1Models {
  /**
   * Context information for the message. Include the context from the previous response to maintain state for the conversation.
   */
  public class Context extends IBMWatsonDynamicModel {
    private String conversation_id_serialized_name;
    private SystemResponse system_serialized_name;

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
  public class Counterexample extends IBMWatsonGenericModel {
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
  public class CounterexampleCollection extends IBMWatsonGenericModel {
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
     * An object defining the pagination data for the returned objects.
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
     * @param counterexamples_serialized_name the new counterexamples_serialized_name
     */
    public void setCounterexamples(final List<Counterexample> counterexamples_serialized_name) {
      this.counterexamples_serialized_name = counterexamples_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
     * The text of a user input marked as irrelevant input.
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

    private CreateCounterexampleBuilder(CreateCounterexample create_counterexample) {
      text_serialized_name = create_counterexample.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCounterexampleBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text_serialized_name the text_serialized_name
     */
    public CreateCounterexampleBuilder(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a CreateCounterexample.
     *
     * @return the create_counterexample
     */
    public CreateCounterexample build() {
      return new CreateCounterexample(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the CreateCounterexample builder
     */
    public CreateCounterexampleBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The createCounterexample options.
   */
  public class CreateCounterexampleOptions {
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input marked as irrelevant input.
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
  public class CreateCounterexampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String text_serialized_name;

    private CreateCounterexampleOptionsBuilder(CreateCounterexampleOptions create_counterexample_options) {
      workspace_id_serialized_name = create_counterexample_options.workspace_id_serialized_name;
      text_serialized_name = create_counterexample_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public CreateCounterexampleOptionsBuilder(String workspace_id_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a CreateCounterexampleOptions.
     *
     * @return the create_counterexample_options
     */
    public CreateCounterexampleOptions build() {
      return new CreateCounterexampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID.
     *
     * @return the dialog_node_serialized_name
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the dialog node.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the conditions_serialized_name.
     *
     * The condition that will trigger the dialog node.
     *
     * @return the conditions_serialized_name
     */
    public String conditions() {
      return conditions_serialized_name;
    }
    /**
     * Gets the parent_serialized_name.
     *
     * The ID of the parent dialog node (if any).
     *
     * @return the parent_serialized_name
     */
    public String parent() {
      return parent_serialized_name;
    }
    /**
     * Gets the previous_sibling_serialized_name.
     *
     * The previous dialog node.
     *
     * @return the previous_sibling_serialized_name
     */
    public String previousSibling() {
      return previous_sibling_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * The output of the dialog node.
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
     * The next step to execute following this dialog node.
     *
     * @return the next_step_serialized_name
     */
    public DialogNodeNextStep nextStep() {
      return next_step_serialized_name;
    }
    /**
     * Gets the actions_serialized_name.
     *
     * The actions for the dialog node.
     *
     * @return the actions_serialized_name
     */
    public List<DialogNodeAction> actions() {
      return actions_serialized_name;
    }
    /**
     * Gets the title_serialized_name.
     *
     * The alias used to identify the dialog node.
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

    private CreateDialogNodeBuilder(CreateDialogNode create_dialog_node) {
      dialog_node_serialized_name = create_dialog_node.dialog_node_serialized_name;
      description_serialized_name = create_dialog_node.description_serialized_name;
      conditions_serialized_name = create_dialog_node.conditions_serialized_name;
      parent_serialized_name = create_dialog_node.parent_serialized_name;
      previous_sibling_serialized_name = create_dialog_node.previous_sibling_serialized_name;
      output_serialized_name = create_dialog_node.output_serialized_name;
      context_serialized_name = create_dialog_node.context_serialized_name;
      metadata_serialized_name = create_dialog_node.metadata_serialized_name;
      next_step_serialized_name = create_dialog_node.next_step_serialized_name;
      actions_serialized_name = create_dialog_node.actions_serialized_name;
      title_serialized_name = create_dialog_node.title_serialized_name;
      type_serialized_name = create_dialog_node.type_serialized_name;
      event_name_serialized_name = create_dialog_node.event_name_serialized_name;
      variable_serialized_name = create_dialog_node.variable_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateDialogNodeBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     */
    public CreateDialogNodeBuilder(String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
    }

    /**
     * Builds a CreateDialogNode.
     *
     * @return the create_dialog_node
     */
    public CreateDialogNode build() {
      return new CreateDialogNode(this);
    }

    /**
     * Adds an actions_serialized_name to actions_serialized_name.
     *
     * @param actions_serialized_name the new actions_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder addActions(DialogNodeAction actions_serialized_name) {
      IBMWatsonValidator.notNull(actions_serialized_name, 'actions_serialized_name cannot be null');
      if (this.actions_serialized_name == null) {
        this.actions_serialized_name = new List<DialogNodeAction>();
      }
      this.actions_serialized_name.add(actions_serialized_name);
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder dialogNode(String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the conditions_serialized_name.
     *
     * @param conditions_serialized_name the conditions_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder conditions(String conditions_serialized_name) {
      this.conditions_serialized_name = conditions_serialized_name;
      return this;
    }

    /**
     * Set the parent_serialized_name.
     *
     * @param parent_serialized_name the parent_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder parent(String parent_serialized_name) {
      this.parent_serialized_name = parent_serialized_name;
      return this;
    }

    /**
     * Set the previous_sibling_serialized_name.
     *
     * @param previous_sibling_serialized_name the previous_sibling_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder previousSibling(String previous_sibling_serialized_name) {
      this.previous_sibling_serialized_name = previous_sibling_serialized_name;
      return this;
    }

    /**
     * Set the output_serialized_name.
     *
     * @param output_serialized_name the output_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder output(IBMWatsonMapModel output_serialized_name) {
      this.output_serialized_name = output_serialized_name;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context_serialized_name the context_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder context(IBMWatsonMapModel context_serialized_name) {
      this.context_serialized_name = context_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the next_step_serialized_name.
     *
     * @param next_step_serialized_name the next_step_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder nextStep(DialogNodeNextStep next_step_serialized_name) {
      this.next_step_serialized_name = next_step_serialized_name;
      return this;
    }

    /**
     * Set the actions_serialized_name.
     * Existing actions_serialized_name will be replaced.
     *
     * @param actions_serialized_name the actions_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder actions(List<DialogNodeAction> actions_serialized_name) {
      this.actions_serialized_name = actions_serialized_name;
      return this;
    }

    /**
     * Set the title_serialized_name.
     *
     * @param title_serialized_name the title_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder title(String title_serialized_name) {
      this.title_serialized_name = title_serialized_name;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param type_serialized_name the type_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder typeField(String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
      return this;
    }

    /**
     * Set the event_name_serialized_name.
     *
     * @param event_name_serialized_name the event_name_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder eventName(String event_name_serialized_name) {
      this.event_name_serialized_name = event_name_serialized_name;
      return this;
    }

    /**
     * Set the variable_serialized_name.
     *
     * @param variable_serialized_name the variable_serialized_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder variable(String variable_serialized_name) {
      this.variable_serialized_name = variable_serialized_name;
      return this;
    }
  }

  /**
   * The createDialogNode options.
   */
  public class CreateDialogNodeOptions {
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
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the dialog_node_serialized_name.
     *
     * The dialog node ID.
     *
     * @return the dialog_node_serialized_name
     */
    public String dialogNode() {
      return dialog_node_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the dialog node.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the conditions_serialized_name.
     *
     * The condition that will trigger the dialog node.
     *
     * @return the conditions_serialized_name
     */
    public String conditions() {
      return conditions_serialized_name;
    }
    /**
     * Gets the parent_serialized_name.
     *
     * The ID of the parent dialog node (if any).
     *
     * @return the parent_serialized_name
     */
    public String parent() {
      return parent_serialized_name;
    }
    /**
     * Gets the previous_sibling_serialized_name.
     *
     * The previous dialog node.
     *
     * @return the previous_sibling_serialized_name
     */
    public String previousSibling() {
      return previous_sibling_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * The output of the dialog node.
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
     * The next step to execute following this dialog node.
     *
     * @return the next_step_serialized_name
     */
    public DialogNodeNextStep nextStep() {
      return next_step_serialized_name;
    }
    /**
     * Gets the actions_serialized_name.
     *
     * The actions for the dialog node.
     *
     * @return the actions_serialized_name
     */
    public List<DialogNodeAction> actions() {
      return actions_serialized_name;
    }
    /**
     * Gets the title_serialized_name.
     *
     * The alias used to identify the dialog node.
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
  public class CreateDialogNodeOptionsBuilder {
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

    private CreateDialogNodeOptionsBuilder(CreateDialogNodeOptions create_dialog_node_options) {
      workspace_id_serialized_name = create_dialog_node_options.workspace_id_serialized_name;
      dialog_node_serialized_name = create_dialog_node_options.dialog_node_serialized_name;
      description_serialized_name = create_dialog_node_options.description_serialized_name;
      conditions_serialized_name = create_dialog_node_options.conditions_serialized_name;
      parent_serialized_name = create_dialog_node_options.parent_serialized_name;
      previous_sibling_serialized_name = create_dialog_node_options.previous_sibling_serialized_name;
      output_serialized_name = create_dialog_node_options.output_serialized_name;
      context_serialized_name = create_dialog_node_options.context_serialized_name;
      metadata_serialized_name = create_dialog_node_options.metadata_serialized_name;
      next_step_serialized_name = create_dialog_node_options.next_step_serialized_name;
      actions_serialized_name = create_dialog_node_options.actions_serialized_name;
      title_serialized_name = create_dialog_node_options.title_serialized_name;
      type_serialized_name = create_dialog_node_options.type_serialized_name;
      event_name_serialized_name = create_dialog_node_options.event_name_serialized_name;
      variable_serialized_name = create_dialog_node_options.variable_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     */
    public CreateDialogNodeOptionsBuilder(String workspace_id_serialized_name, String dialog_node_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.dialog_node_serialized_name = dialog_node_serialized_name;
    }

    /**
     * Builds a CreateDialogNodeOptions.
     *
     * @return the create_dialog_node_options
     */
    public CreateDialogNodeOptions build() {
      return new CreateDialogNodeOptions(this);
    }

    /**
     * Adds an actions_serialized_name to actions_serialized_name.
     *
     * @param actions_serialized_name the new actions_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder addActions(DialogNodeAction actions_serialized_name) {
      IBMWatsonValidator.notNull(actions_serialized_name, 'actions_serialized_name cannot be null');
      if (this.actions_serialized_name == null) {
        this.actions_serialized_name = new List<DialogNodeAction>();
      }
      this.actions_serialized_name.add(actions_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder dialogNode(String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the conditions_serialized_name.
     *
     * @param conditions_serialized_name the conditions_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder conditions(String conditions_serialized_name) {
      this.conditions_serialized_name = conditions_serialized_name;
      return this;
    }

    /**
     * Set the parent_serialized_name.
     *
     * @param parent_serialized_name the parent_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder parent(String parent_serialized_name) {
      this.parent_serialized_name = parent_serialized_name;
      return this;
    }

    /**
     * Set the previous_sibling_serialized_name.
     *
     * @param previous_sibling_serialized_name the previous_sibling_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder previousSibling(String previous_sibling_serialized_name) {
      this.previous_sibling_serialized_name = previous_sibling_serialized_name;
      return this;
    }

    /**
     * Set the output_serialized_name.
     *
     * @param output_serialized_name the output_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder output(IBMWatsonMapModel output_serialized_name) {
      this.output_serialized_name = output_serialized_name;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context_serialized_name the context_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder context(IBMWatsonMapModel context_serialized_name) {
      this.context_serialized_name = context_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the next_step_serialized_name.
     *
     * @param next_step_serialized_name the next_step_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder nextStep(DialogNodeNextStep next_step_serialized_name) {
      this.next_step_serialized_name = next_step_serialized_name;
      return this;
    }

    /**
     * Set the actions_serialized_name.
     * Existing actions_serialized_name will be replaced.
     *
     * @param actions_serialized_name the actions_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder actions(List<DialogNodeAction> actions_serialized_name) {
      this.actions_serialized_name = actions_serialized_name;
      return this;
    }

    /**
     * Set the title_serialized_name.
     *
     * @param title_serialized_name the title_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder title(String title_serialized_name) {
      this.title_serialized_name = title_serialized_name;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param type_serialized_name the type_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder typeField(String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
      return this;
    }

    /**
     * Set the event_name_serialized_name.
     *
     * @param event_name_serialized_name the event_name_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder eventName(String event_name_serialized_name) {
      this.event_name_serialized_name = event_name_serialized_name;
      return this;
    }

    /**
     * Set the variable_serialized_name.
     *
     * @param variable_serialized_name the variable_serialized_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder variable(String variable_serialized_name) {
      this.variable_serialized_name = variable_serialized_name;
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
     * The name of the entity.
     *
     * @return the entity_serialized_name
     */
    public String entity() {
      return entity_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the entity.
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
     * An array of entity values.
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

    private CreateEntityBuilder(CreateEntity create_entity) {
      entity_serialized_name = create_entity.entity_serialized_name;
      description_serialized_name = create_entity.description_serialized_name;
      metadata_serialized_name = create_entity.metadata_serialized_name;
      values_serialized_name = create_entity.values_serialized_name;
      fuzzy_match_serialized_name = create_entity.fuzzy_match_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEntityBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param entity_serialized_name the entity_serialized_name
     */
    public CreateEntityBuilder(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Builds a CreateEntity.
     *
     * @return the create_entity
     */
    public CreateEntity build() {
      return new CreateEntity(this);
    }

    /**
     * Adds an values_serialized_name to values_serialized_name.
     *
     * @param values_serialized_name the new values_serialized_name
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder addValues(CreateValue values_serialized_name) {
      IBMWatsonValidator.notNull(values_serialized_name, 'values_serialized_name cannot be null');
      if (this.values_serialized_name == null) {
        this.values_serialized_name = new List<CreateValue>();
      }
      this.values_serialized_name.add(values_serialized_name);
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the values_serialized_name.
     * Existing values_serialized_name will be replaced.
     *
     * @param values_serialized_name the values_serialized_name
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder values(List<CreateValue> values_serialized_name) {
      this.values_serialized_name = values_serialized_name;
      return this;
    }

    /**
     * Set the fuzzy_match_serialized_name.
     *
     * @param fuzzy_match_serialized_name the fuzzy_match_serialized_name
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder fuzzyMatch(Boolean fuzzy_match_serialized_name) {
      this.fuzzy_match_serialized_name = fuzzy_match_serialized_name;
      return this;
    }
  }

  /**
   * The createEntity options.
   */
  public class CreateEntityOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CreateValue> values_serialized_name;
    private Boolean fuzzy_match_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * Gets the description_serialized_name.
     *
     * The description of the entity.
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
     * An array of entity values.
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
  public class CreateEntityOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String description_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<CreateValue> values_serialized_name;
    private Boolean fuzzy_match_serialized_name;

    private CreateEntityOptionsBuilder(CreateEntityOptions create_entity_options) {
      workspace_id_serialized_name = create_entity_options.workspace_id_serialized_name;
      entity_serialized_name = create_entity_options.entity_serialized_name;
      description_serialized_name = create_entity_options.description_serialized_name;
      metadata_serialized_name = create_entity_options.metadata_serialized_name;
      values_serialized_name = create_entity_options.values_serialized_name;
      fuzzy_match_serialized_name = create_entity_options.fuzzy_match_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     */
    public CreateEntityOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Builds a CreateEntityOptions.
     *
     * @return the create_entity_options
     */
    public CreateEntityOptions build() {
      return new CreateEntityOptions(this);
    }

    /**
     * Adds an values_serialized_name to values_serialized_name.
     *
     * @param values_serialized_name the new values_serialized_name
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder addValues(CreateValue values_serialized_name) {
      IBMWatsonValidator.notNull(values_serialized_name, 'values_serialized_name cannot be null');
      if (this.values_serialized_name == null) {
        this.values_serialized_name = new List<CreateValue>();
      }
      this.values_serialized_name.add(values_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the values_serialized_name.
     * Existing values_serialized_name will be replaced.
     *
     * @param values_serialized_name the values_serialized_name
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder values(List<CreateValue> values_serialized_name) {
      this.values_serialized_name = values_serialized_name;
      return this;
    }

    /**
     * Set the fuzzy_match_serialized_name.
     *
     * @param fuzzy_match_serialized_name the fuzzy_match_serialized_name
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder fuzzyMatch(Boolean fuzzy_match_serialized_name) {
      this.fuzzy_match_serialized_name = fuzzy_match_serialized_name;
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
     * The text of a user input example.
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

    private CreateExampleBuilder(CreateExample create_example) {
      text_serialized_name = create_example.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateExampleBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text_serialized_name the text_serialized_name
     */
    public CreateExampleBuilder(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a CreateExample.
     *
     * @return the create_example
     */
    public CreateExample build() {
      return new CreateExample(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the CreateExample builder
     */
    public CreateExampleBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The createExample options.
   */
  public class CreateExampleOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the text_serialized_name.
     *
     * The text of a user input example.
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
  public class CreateExampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;

    private CreateExampleOptionsBuilder(CreateExampleOptions create_example_options) {
      workspace_id_serialized_name = create_example_options.workspace_id_serialized_name;
      intent_serialized_name = create_example_options.intent_serialized_name;
      text_serialized_name = create_example_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public CreateExampleOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a CreateExampleOptions.
     *
     * @return the create_example_options
     */
    public CreateExampleOptions build() {
      return new CreateExampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
     * The name of the intent.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the intent.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the examples_serialized_name.
     *
     * An array of user input examples.
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

    private CreateIntentBuilder(CreateIntent create_intent) {
      intent_serialized_name = create_intent.intent_serialized_name;
      description_serialized_name = create_intent.description_serialized_name;
      examples_serialized_name = create_intent.examples_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateIntentBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param intent_serialized_name the intent_serialized_name
     */
    public CreateIntentBuilder(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Builds a CreateIntent.
     *
     * @return the create_intent
     */
    public CreateIntent build() {
      return new CreateIntent(this);
    }

    /**
     * Adds an examples_serialized_name to examples_serialized_name.
     *
     * @param examples_serialized_name the new examples_serialized_name
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder addExamples(CreateExample examples_serialized_name) {
      IBMWatsonValidator.notNull(examples_serialized_name, 'examples_serialized_name cannot be null');
      if (this.examples_serialized_name == null) {
        this.examples_serialized_name = new List<CreateExample>();
      }
      this.examples_serialized_name.add(examples_serialized_name);
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the examples_serialized_name.
     * Existing examples_serialized_name will be replaced.
     *
     * @param examples_serialized_name the examples_serialized_name
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder examples(List<CreateExample> examples_serialized_name) {
      this.examples_serialized_name = examples_serialized_name;
      return this;
    }
  }

  /**
   * The createIntent options.
   */
  public class CreateIntentOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String description_serialized_name;
    private List<CreateExample> examples_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The name of the intent.
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the intent.
     *
     * @return the description_serialized_name
     */
    public String description() {
      return description_serialized_name;
    }
    /**
     * Gets the examples_serialized_name.
     *
     * An array of user input examples.
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
  public class CreateIntentOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String description_serialized_name;
    private List<CreateExample> examples_serialized_name;

    private CreateIntentOptionsBuilder(CreateIntentOptions create_intent_options) {
      workspace_id_serialized_name = create_intent_options.workspace_id_serialized_name;
      intent_serialized_name = create_intent_options.intent_serialized_name;
      description_serialized_name = create_intent_options.description_serialized_name;
      examples_serialized_name = create_intent_options.examples_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     */
    public CreateIntentOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Builds a CreateIntentOptions.
     *
     * @return the create_intent_options
     */
    public CreateIntentOptions build() {
      return new CreateIntentOptions(this);
    }

    /**
     * Adds an examples_serialized_name to examples_serialized_name.
     *
     * @param examples_serialized_name the new examples_serialized_name
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder addExamples(CreateExample examples_serialized_name) {
      IBMWatsonValidator.notNull(examples_serialized_name, 'examples_serialized_name cannot be null');
      if (this.examples_serialized_name == null) {
        this.examples_serialized_name = new List<CreateExample>();
      }
      this.examples_serialized_name.add(examples_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the examples_serialized_name.
     * Existing examples_serialized_name will be replaced.
     *
     * @param examples_serialized_name the examples_serialized_name
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder examples(List<CreateExample> examples_serialized_name) {
      this.examples_serialized_name = examples_serialized_name;
      return this;
    }
  }

  /**
   * The createSynonym options.
   */
  public class CreateSynonymOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
    private CreateSynonymOptions(CreateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.synonym_serialized_name, 'synonym_serialized_name cannot be null');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      synonym_serialized_name = builder.synonym_serialized_name;
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
  public class CreateSynonymOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;

    private CreateSynonymOptionsBuilder(CreateSynonymOptions create_synonym_options) {
      workspace_id_serialized_name = create_synonym_options.workspace_id_serialized_name;
      entity_serialized_name = create_synonym_options.entity_serialized_name;
      value_serialized_name = create_synonym_options.value_serialized_name;
      synonym_serialized_name = create_synonym_options.synonym_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     * @param synonym_serialized_name the synonym_serialized_name
     */
    public CreateSynonymOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name, String synonym_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
      this.synonym_serialized_name = synonym_serialized_name;
    }

    /**
     * Builds a CreateSynonymOptions.
     *
     * @return the create_synonym_options
     */
    public CreateSynonymOptions build() {
      return new CreateSynonymOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym_serialized_name the synonym_serialized_name
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder synonym(String synonym_serialized_name) {
      this.synonym_serialized_name = synonym_serialized_name;
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
     * The text of the entity value.
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
     * An array of synonyms for the entity value.
     *
     * @return the synonyms_serialized_name
     */
    public List<String> synonyms() {
      return synonyms_serialized_name;
    }
    /**
     * Gets the patterns_serialized_name.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the patterns_serialized_name
     */
    public List<String> patterns() {
      return patterns_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
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

    private CreateValueBuilder(CreateValue create_value) {
      value_serialized_name = create_value.value_serialized_name;
      metadata_serialized_name = create_value.metadata_serialized_name;
      synonyms_serialized_name = create_value.synonyms_serialized_name;
      patterns_serialized_name = create_value.patterns_serialized_name;
      type_serialized_name = create_value.type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateValueBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param value_serialized_name the value_serialized_name
     */
    public CreateValueBuilder(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
    }

    /**
     * Builds a CreateValue.
     *
     * @return the create_value
     */
    public CreateValue build() {
      return new CreateValue(this);
    }

    /**
     * Adds an synonyms_serialized_name to synonyms_serialized_name.
     *
     * @param synonyms_serialized_name the new synonyms_serialized_name
     * @return the CreateValue builder
     */
    public CreateValueBuilder addSynonyms(String synonyms_serialized_name) {
      IBMWatsonValidator.notNull(synonyms_serialized_name, 'synonyms_serialized_name cannot be null');
      if (this.synonyms_serialized_name == null) {
        this.synonyms_serialized_name = new List<String>();
      }
      this.synonyms_serialized_name.add(synonyms_serialized_name);
      return this;
    }

    /**
     * Adds an patterns_serialized_name to patterns_serialized_name.
     *
     * @param patterns_serialized_name the new patterns_serialized_name
     * @return the CreateValue builder
     */
    public CreateValueBuilder addPatterns(String patterns_serialized_name) {
      IBMWatsonValidator.notNull(patterns_serialized_name, 'patterns_serialized_name cannot be null');
      if (this.patterns_serialized_name == null) {
        this.patterns_serialized_name = new List<String>();
      }
      this.patterns_serialized_name.add(patterns_serialized_name);
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the CreateValue builder
     */
    public CreateValueBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the CreateValue builder
     */
    public CreateValueBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the synonyms_serialized_name.
     * Existing synonyms_serialized_name will be replaced.
     *
     * @param synonyms_serialized_name the synonyms_serialized_name
     * @return the CreateValue builder
     */
    public CreateValueBuilder synonyms(List<String> synonyms_serialized_name) {
      this.synonyms_serialized_name = synonyms_serialized_name;
      return this;
    }

    /**
     * Set the patterns_serialized_name.
     * Existing patterns_serialized_name will be replaced.
     *
     * @param patterns_serialized_name the patterns_serialized_name
     * @return the CreateValue builder
     */
    public CreateValueBuilder patterns(List<String> patterns_serialized_name) {
      this.patterns_serialized_name = patterns_serialized_name;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param type_serialized_name the type_serialized_name
     * @return the CreateValue builder
     */
    public CreateValueBuilder typeField(String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
      return this;
    }
  }

  /**
   * The createValue options.
   */
  public class CreateValueOptions {
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
     * The workspace ID.
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
     * An array of synonyms for the entity value.
     *
     * @return the synonyms_serialized_name
     */
    public List<String> synonyms() {
      return synonyms_serialized_name;
    }
    /**
     * Gets the patterns_serialized_name.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the patterns_serialized_name
     */
    public List<String> patterns() {
      return patterns_serialized_name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
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
  public class CreateValueOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private List<String> synonyms_serialized_name;
    private List<String> patterns_serialized_name;
    private String type_serialized_name;

    private CreateValueOptionsBuilder(CreateValueOptions create_value_options) {
      workspace_id_serialized_name = create_value_options.workspace_id_serialized_name;
      entity_serialized_name = create_value_options.entity_serialized_name;
      value_serialized_name = create_value_options.value_serialized_name;
      metadata_serialized_name = create_value_options.metadata_serialized_name;
      synonyms_serialized_name = create_value_options.synonyms_serialized_name;
      patterns_serialized_name = create_value_options.patterns_serialized_name;
      type_serialized_name = create_value_options.type_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     */
    public CreateValueOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
    }

    /**
     * Builds a CreateValueOptions.
     *
     * @return the create_value_options
     */
    public CreateValueOptions build() {
      return new CreateValueOptions(this);
    }

    /**
     * Adds an synonyms_serialized_name to synonyms_serialized_name.
     *
     * @param synonyms_serialized_name the new synonyms_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addSynonyms(String synonyms_serialized_name) {
      IBMWatsonValidator.notNull(synonyms_serialized_name, 'synonyms_serialized_name cannot be null');
      if (this.synonyms_serialized_name == null) {
        this.synonyms_serialized_name = new List<String>();
      }
      this.synonyms_serialized_name.add(synonyms_serialized_name);
      return this;
    }

    /**
     * Adds an patterns_serialized_name to patterns_serialized_name.
     *
     * @param patterns_serialized_name the new patterns_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addPatterns(String patterns_serialized_name) {
      IBMWatsonValidator.notNull(patterns_serialized_name, 'patterns_serialized_name cannot be null');
      if (this.patterns_serialized_name == null) {
        this.patterns_serialized_name = new List<String>();
      }
      this.patterns_serialized_name.add(patterns_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the synonyms_serialized_name.
     * Existing synonyms_serialized_name will be replaced.
     *
     * @param synonyms_serialized_name the synonyms_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder synonyms(List<String> synonyms_serialized_name) {
      this.synonyms_serialized_name = synonyms_serialized_name;
      return this;
    }

    /**
     * Set the patterns_serialized_name.
     * Existing patterns_serialized_name will be replaced.
     *
     * @param patterns_serialized_name the patterns_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder patterns(List<String> patterns_serialized_name) {
      this.patterns_serialized_name = patterns_serialized_name;
      return this;
    }

    /**
     * Set the type_serialized_name.
     *
     * @param type_serialized_name the type_serialized_name
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder typeField(String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
      return this;
    }
  }

  /**
   * The createWorkspace options.
   */
  public class CreateWorkspaceOptions {
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
     * The name of the workspace.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the workspace.
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
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
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
  public class CreateWorkspaceOptionsBuilder {
    private String name_serialized_name;
    private String description_serialized_name;
    private String language_serialized_name;
    private List<CreateIntent> intents_serialized_name;
    private List<CreateEntity> entities_serialized_name;
    private List<CreateDialogNode> dialog_nodes_serialized_name;
    private List<CreateCounterexample> counterexamples_serialized_name;
    private IBMWatsonMapModel metadata_serialized_name;
    private Boolean learning_opt_out_serialized_name;

    private CreateWorkspaceOptionsBuilder(CreateWorkspaceOptions create_workspace_options) {
      name_serialized_name = create_workspace_options.name_serialized_name;
      description_serialized_name = create_workspace_options.description_serialized_name;
      language_serialized_name = create_workspace_options.language_serialized_name;
      intents_serialized_name = create_workspace_options.intents_serialized_name;
      entities_serialized_name = create_workspace_options.entities_serialized_name;
      dialog_nodes_serialized_name = create_workspace_options.dialog_nodes_serialized_name;
      counterexamples_serialized_name = create_workspace_options.counterexamples_serialized_name;
      metadata_serialized_name = create_workspace_options.metadata_serialized_name;
      learning_opt_out_serialized_name = create_workspace_options.learning_opt_out_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateWorkspaceOptionsBuilder() {
    }

    /**
     * Builds a CreateWorkspaceOptions.
     *
     * @return the create_workspace_options
     */
    public CreateWorkspaceOptions build() {
      return new CreateWorkspaceOptions(this);
    }

    /**
     * Adds an intents_serialized_name to intents_serialized_name.
     *
     * @param intents_serialized_name the new intents_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addIntents(CreateIntent intents_serialized_name) {
      IBMWatsonValidator.notNull(intents_serialized_name, 'intents_serialized_name cannot be null');
      if (this.intents_serialized_name == null) {
        this.intents_serialized_name = new List<CreateIntent>();
      }
      this.intents_serialized_name.add(intents_serialized_name);
      return this;
    }

    /**
     * Adds an entities_serialized_name to entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addEntities(CreateEntity entities_serialized_name) {
      IBMWatsonValidator.notNull(entities_serialized_name, 'entities_serialized_name cannot be null');
      if (this.entities_serialized_name == null) {
        this.entities_serialized_name = new List<CreateEntity>();
      }
      this.entities_serialized_name.add(entities_serialized_name);
      return this;
    }

    /**
     * Adds an dialog_nodes_serialized_name to dialog_nodes_serialized_name.
     *
     * @param dialog_nodes_serialized_name the new dialog_nodes_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialog_nodes_serialized_name) {
      IBMWatsonValidator.notNull(dialog_nodes_serialized_name, 'dialog_nodes_serialized_name cannot be null');
      if (this.dialog_nodes_serialized_name == null) {
        this.dialog_nodes_serialized_name = new List<CreateDialogNode>();
      }
      this.dialog_nodes_serialized_name.add(dialog_nodes_serialized_name);
      return this;
    }

    /**
     * Adds an counterexamples_serialized_name to counterexamples_serialized_name.
     *
     * @param counterexamples_serialized_name the new counterexamples_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addCounterexamples(CreateCounterexample counterexamples_serialized_name) {
      IBMWatsonValidator.notNull(counterexamples_serialized_name, 'counterexamples_serialized_name cannot be null');
      if (this.counterexamples_serialized_name == null) {
        this.counterexamples_serialized_name = new List<CreateCounterexample>();
      }
      this.counterexamples_serialized_name.add(counterexamples_serialized_name);
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language_serialized_name the language_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder language(String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
      return this;
    }

    /**
     * Set the intents_serialized_name.
     * Existing intents_serialized_name will be replaced.
     *
     * @param intents_serialized_name the intents_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder intents(List<CreateIntent> intents_serialized_name) {
      this.intents_serialized_name = intents_serialized_name;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     * Existing entities_serialized_name will be replaced.
     *
     * @param entities_serialized_name the entities_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder entities(List<CreateEntity> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
      return this;
    }

    /**
     * Set the dialog_nodes_serialized_name.
     * Existing dialog_nodes_serialized_name will be replaced.
     *
     * @param dialog_nodes_serialized_name the dialog_nodes_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialog_nodes_serialized_name) {
      this.dialog_nodes_serialized_name = dialog_nodes_serialized_name;
      return this;
    }

    /**
     * Set the counterexamples_serialized_name.
     * Existing counterexamples_serialized_name will be replaced.
     *
     * @param counterexamples_serialized_name the counterexamples_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder counterexamples(List<CreateCounterexample> counterexamples_serialized_name) {
      this.counterexamples_serialized_name = counterexamples_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the learning_opt_out_serialized_name.
     *
     * @param learning_opt_out_serialized_name the learning_opt_out_serialized_name
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder learningOptOut(Boolean learning_opt_out_serialized_name) {
      this.learning_opt_out_serialized_name = learning_opt_out_serialized_name;
      return this;
    }
  }

  /**
   * The deleteCounterexample options.
   */
  public class DeleteCounterexampleOptions {
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
  public class DeleteCounterexampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String text_serialized_name;

    private DeleteCounterexampleOptionsBuilder(DeleteCounterexampleOptions delete_counterexample_options) {
      workspace_id_serialized_name = delete_counterexample_options.workspace_id_serialized_name;
      text_serialized_name = delete_counterexample_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public DeleteCounterexampleOptionsBuilder(String workspace_id_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a DeleteCounterexampleOptions.
     *
     * @return the delete_counterexample_options
     */
    public DeleteCounterexampleOptions build() {
      return new DeleteCounterexampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The deleteDialogNode options.
   */
  public class DeleteDialogNodeOptions {
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
  public class DeleteDialogNodeOptionsBuilder {
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;

    private DeleteDialogNodeOptionsBuilder(DeleteDialogNodeOptions delete_dialog_node_options) {
      workspace_id_serialized_name = delete_dialog_node_options.workspace_id_serialized_name;
      dialog_node_serialized_name = delete_dialog_node_options.dialog_node_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     */
    public DeleteDialogNodeOptionsBuilder(String workspace_id_serialized_name, String dialog_node_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.dialog_node_serialized_name = dialog_node_serialized_name;
    }

    /**
     * Builds a DeleteDialogNodeOptions.
     *
     * @return the delete_dialog_node_options
     */
    public DeleteDialogNodeOptions build() {
      return new DeleteDialogNodeOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder dialogNode(String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
      return this;
    }
  }

  /**
   * The deleteEntity options.
   */
  public class DeleteEntityOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
  public class DeleteEntityOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;

    private DeleteEntityOptionsBuilder(DeleteEntityOptions delete_entity_options) {
      workspace_id_serialized_name = delete_entity_options.workspace_id_serialized_name;
      entity_serialized_name = delete_entity_options.entity_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     */
    public DeleteEntityOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Builds a DeleteEntityOptions.
     *
     * @return the delete_entity_options
     */
    public DeleteEntityOptions build() {
      return new DeleteEntityOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }
  }

  /**
   * The deleteExample options.
   */
  public class DeleteExampleOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
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
  public class DeleteExampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;

    private DeleteExampleOptionsBuilder(DeleteExampleOptions delete_example_options) {
      workspace_id_serialized_name = delete_example_options.workspace_id_serialized_name;
      intent_serialized_name = delete_example_options.intent_serialized_name;
      text_serialized_name = delete_example_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public DeleteExampleOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a DeleteExampleOptions.
     *
     * @return the delete_example_options
     */
    public DeleteExampleOptions build() {
      return new DeleteExampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The deleteIntent options.
   */
  public class DeleteIntentOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
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
  public class DeleteIntentOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;

    private DeleteIntentOptionsBuilder(DeleteIntentOptions delete_intent_options) {
      workspace_id_serialized_name = delete_intent_options.workspace_id_serialized_name;
      intent_serialized_name = delete_intent_options.intent_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     */
    public DeleteIntentOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Builds a DeleteIntentOptions.
     *
     * @return the delete_intent_options
     */
    public DeleteIntentOptions build() {
      return new DeleteIntentOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }
  }

  /**
   * The deleteSynonym options.
   */
  public class DeleteSynonymOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
  public class DeleteSynonymOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;

    private DeleteSynonymOptionsBuilder(DeleteSynonymOptions delete_synonym_options) {
      workspace_id_serialized_name = delete_synonym_options.workspace_id_serialized_name;
      entity_serialized_name = delete_synonym_options.entity_serialized_name;
      value_serialized_name = delete_synonym_options.value_serialized_name;
      synonym_serialized_name = delete_synonym_options.synonym_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     * @param synonym_serialized_name the synonym_serialized_name
     */
    public DeleteSynonymOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name, String synonym_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
      this.synonym_serialized_name = synonym_serialized_name;
    }

    /**
     * Builds a DeleteSynonymOptions.
     *
     * @return the delete_synonym_options
     */
    public DeleteSynonymOptions build() {
      return new DeleteSynonymOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym_serialized_name the synonym_serialized_name
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder synonym(String synonym_serialized_name) {
      this.synonym_serialized_name = synonym_serialized_name;
      return this;
    }
  }

  /**
   * The deleteValue options.
   */
  public class DeleteValueOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
  public class DeleteValueOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;

    private DeleteValueOptionsBuilder(DeleteValueOptions delete_value_options) {
      workspace_id_serialized_name = delete_value_options.workspace_id_serialized_name;
      entity_serialized_name = delete_value_options.entity_serialized_name;
      value_serialized_name = delete_value_options.value_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     */
    public DeleteValueOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
    }

    /**
     * Builds a DeleteValueOptions.
     *
     * @return the delete_value_options
     */
    public DeleteValueOptions build() {
      return new DeleteValueOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }
  }

  /**
   * The deleteWorkspace options.
   */
  public class DeleteWorkspaceOptions {
    private String workspace_id_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    private DeleteWorkspaceOptions(DeleteWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
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
  public class DeleteWorkspaceOptionsBuilder {
    private String workspace_id_serialized_name;

    private DeleteWorkspaceOptionsBuilder(DeleteWorkspaceOptions delete_workspace_options) {
      workspace_id_serialized_name = delete_workspace_options.workspace_id_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public DeleteWorkspaceOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a DeleteWorkspaceOptions.
     *
     * @return the delete_workspace_options
     */
    public DeleteWorkspaceOptions build() {
      return new DeleteWorkspaceOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the DeleteWorkspaceOptions builder
     */
    public DeleteWorkspaceOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }
  }

  /**
   * DialogNode.
   */
  public class DialogNode extends IBMWatsonGenericModel {
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
     * The ID of the parent dialog node.
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
     * The ID of the previous sibling dialog node.
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
     * The metadata (if any) for the dialog node.
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
     * Sets the dialog_node_serialized_name.
     *
     * @param dialog_node_serialized_name the new dialog_node_serialized_name
     */
    public void setDialogNode(final String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
    }

    /**
     * Sets the conditions_serialized_name.
     *
     * @param conditions_serialized_name the new conditions_serialized_name
     */
    public void setConditions(final String conditions_serialized_name) {
      this.conditions_serialized_name = conditions_serialized_name;
    }

    /**
     * Sets the parent_serialized_name.
     *
     * @param parent_serialized_name the new parent_serialized_name
     */
    public void setParent(final String parent_serialized_name) {
      this.parent_serialized_name = parent_serialized_name;
    }

    /**
     * Sets the previous_sibling_serialized_name.
     *
     * @param previous_sibling_serialized_name the new previous_sibling_serialized_name
     */
    public void setPreviousSibling(final String previous_sibling_serialized_name) {
      this.previous_sibling_serialized_name = previous_sibling_serialized_name;
    }

    /**
     * Sets the output_serialized_name.
     *
     * @param output_serialized_name the new output_serialized_name
     */
    public void setOutput(final IBMWatsonMapModel output_serialized_name) {
      this.output_serialized_name = output_serialized_name;
    }

    /**
     * Sets the context_serialized_name.
     *
     * @param context_serialized_name the new context_serialized_name
     */
    public void setContext(final IBMWatsonMapModel context_serialized_name) {
      this.context_serialized_name = context_serialized_name;
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
     * Sets the next_step_serialized_name.
     *
     * @param next_step_serialized_name the new next_step_serialized_name
     */
    public void setNextStep(final DialogNodeNextStep next_step_serialized_name) {
      this.next_step_serialized_name = next_step_serialized_name;
    }

    /**
     * Sets the actions_serialized_name.
     *
     * @param actions_serialized_name the new actions_serialized_name
     */
    public void setActions(final List<DialogNodeAction> actions_serialized_name) {
      this.actions_serialized_name = actions_serialized_name;
    }

    /**
     * Sets the title_serialized_name.
     *
     * @param title_serialized_name the new title_serialized_name
     */
    public void setTitle(final String title_serialized_name) {
      this.title_serialized_name = title_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }

    /**
     * Sets the event_name_serialized_name.
     *
     * @param event_name_serialized_name the new event_name_serialized_name
     */
    public void setEventName(final String event_name_serialized_name) {
      this.event_name_serialized_name = event_name_serialized_name;
    }

    /**
     * Sets the variable_serialized_name.
     *
     * @param variable_serialized_name the new variable_serialized_name
     */
    public void setVariable(final String variable_serialized_name) {
      this.variable_serialized_name = variable_serialized_name;
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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }

    /**
     * Sets the parameters_serialized_name.
     *
     * @param parameters_serialized_name the new parameters_serialized_name
     */
    public void setParameters(final IBMWatsonMapModel parameters_serialized_name) {
      this.parameters_serialized_name = parameters_serialized_name;
    }

    /**
     * Sets the result_variable_serialized_name.
     *
     * @param result_variable_serialized_name the new result_variable_serialized_name
     */
    public void setResultVariable(final String result_variable_serialized_name) {
      this.result_variable_serialized_name = result_variable_serialized_name;
    }

    /**
     * Sets the credentials_serialized_name.
     *
     * @param credentials_serialized_name the new credentials_serialized_name
     */
    public void setCredentials(final String credentials_serialized_name) {
      this.credentials_serialized_name = credentials_serialized_name;
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
   * DialogNodeCollection.
   */
  public class DialogNodeCollection extends IBMWatsonGenericModel {
    private List<DialogNode> dialog_nodes_serialized_name;
    private Pagination pagination_serialized_name;
    /**
     * Gets the dialog_nodes_serialized_name.
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
     * An object defining the pagination data for the returned objects.
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
     * @param dialog_nodes_serialized_name the new dialog_nodes_serialized_name
     */
    public void setDialogNodes(final List<DialogNode> dialog_nodes_serialized_name) {
      this.dialog_nodes_serialized_name = dialog_nodes_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
     * How the `next_step` reference is processed.
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
     * The ID of the dialog node to process next.
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
     * @param behavior_serialized_name the new behavior_serialized_name
     */
    public void setBehavior(final String behavior_serialized_name) {
      this.behavior_serialized_name = behavior_serialized_name;
    }

    /**
     * Sets the dialog_node_serialized_name.
     *
     * @param dialog_node_serialized_name the new dialog_node_serialized_name
     */
    public void setDialogNode(final String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
    }

    /**
     * Sets the selector_serialized_name.
     *
     * @param selector_serialized_name the new selector_serialized_name
     */
    public void setSelector(final String selector_serialized_name) {
      this.selector_serialized_name = selector_serialized_name;
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
   * Entity.
   */
  public class Entity extends IBMWatsonGenericModel {
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
     * @param entity_serialized_name the new entity_serialized_name
     */
    public void setEntity(final String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
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
     * Sets the fuzzy_match_serialized_name.
     *
     * @param fuzzy_match_serialized_name the new fuzzy_match_serialized_name
     */
    public void setFuzzyMatch(final Boolean fuzzy_match_serialized_name) {
      this.fuzzy_match_serialized_name = fuzzy_match_serialized_name;
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
  public class EntityCollection extends IBMWatsonGenericModel {
    private List<EntityExport> entities_serialized_name;
    private Pagination pagination_serialized_name;
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
     * Sets the entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     */
    public void setEntities(final List<EntityExport> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
  public class EntityExport extends IBMWatsonGenericModel {
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
     * An array of entity values.
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
     * @param entity_serialized_name the new entity_serialized_name
     */
    public void setEntity(final String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
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
     * Sets the fuzzy_match_serialized_name.
     *
     * @param fuzzy_match_serialized_name the new fuzzy_match_serialized_name
     */
    public void setFuzzyMatch(final Boolean fuzzy_match_serialized_name) {
      this.fuzzy_match_serialized_name = fuzzy_match_serialized_name;
    }

    /**
     * Sets the values_serialized_name.
     *
     * @param values_serialized_name the new values_serialized_name
     */
    public void setValues(final List<ValueExport> values_serialized_name) {
      this.values_serialized_name = values_serialized_name;
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
  public class Example extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The text of the example.
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
  public class ExampleCollection extends IBMWatsonGenericModel {
    private List<Example> examples_serialized_name;
    private Pagination pagination_serialized_name;
    /**
     * Gets the examples_serialized_name.
     *
     * An array of Example objects describing the examples defined for the intent.
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
     * An object defining the pagination data for the returned objects.
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
     * @param examples_serialized_name the new examples_serialized_name
     */
    public void setExamples(final List<Example> examples_serialized_name) {
      this.examples_serialized_name = examples_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
  public class GetCounterexampleOptions {
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
    private GetCounterexampleOptions(GetCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      text_serialized_name = builder.text_serialized_name;
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
  public class GetCounterexampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String text_serialized_name;

    private GetCounterexampleOptionsBuilder(GetCounterexampleOptions get_counterexample_options) {
      workspace_id_serialized_name = get_counterexample_options.workspace_id_serialized_name;
      text_serialized_name = get_counterexample_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public GetCounterexampleOptionsBuilder(String workspace_id_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a GetCounterexampleOptions.
     *
     * @return the get_counterexample_options
     */
    public GetCounterexampleOptions build() {
      return new GetCounterexampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The getDialogNode options.
   */
  public class GetDialogNodeOptions {
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
    private GetDialogNodeOptions(GetDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node_serialized_name, 'dialog_node_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      dialog_node_serialized_name = builder.dialog_node_serialized_name;
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
  public class GetDialogNodeOptionsBuilder {
    private String workspace_id_serialized_name;
    private String dialog_node_serialized_name;

    private GetDialogNodeOptionsBuilder(GetDialogNodeOptions get_dialog_node_options) {
      workspace_id_serialized_name = get_dialog_node_options.workspace_id_serialized_name;
      dialog_node_serialized_name = get_dialog_node_options.dialog_node_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     */
    public GetDialogNodeOptionsBuilder(String workspace_id_serialized_name, String dialog_node_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.dialog_node_serialized_name = dialog_node_serialized_name;
    }

    /**
     * Builds a GetDialogNodeOptions.
     *
     * @return the get_dialog_node_options
     */
    public GetDialogNodeOptions build() {
      return new GetDialogNodeOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder dialogNode(String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
      return this;
    }
  }

  /**
   * The getEntity options.
   */
  public class GetEntityOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    private GetEntityOptions(GetEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      export_serialized_name = builder.export_serialized_name;
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
  public class GetEntityOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;

    private GetEntityOptionsBuilder(GetEntityOptions get_entity_options) {
      workspace_id_serialized_name = get_entity_options.workspace_id_serialized_name;
      entity_serialized_name = get_entity_options.entity_serialized_name;
      export_serialized_name = get_entity_options.export_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     */
    public GetEntityOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Builds a GetEntityOptions.
     *
     * @return the get_entity_options
     */
    public GetEntityOptions build() {
      return new GetEntityOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param export_serialized_name the export_serialized_name
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder exportField(Boolean export_serialized_name) {
      this.export_serialized_name = export_serialized_name;
      return this;
    }
  }

  /**
   * The getExample options.
   */
  public class GetExampleOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
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
    private GetExampleOptions(GetExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text_serialized_name, 'text_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      text_serialized_name = builder.text_serialized_name;
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
  public class GetExampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;

    private GetExampleOptionsBuilder(GetExampleOptions get_example_options) {
      workspace_id_serialized_name = get_example_options.workspace_id_serialized_name;
      intent_serialized_name = get_example_options.intent_serialized_name;
      text_serialized_name = get_example_options.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public GetExampleOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a GetExampleOptions.
     *
     * @return the get_example_options
     */
    public GetExampleOptions build() {
      return new GetExampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * The getIntent options.
   */
  public class GetIntentOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    private GetIntentOptions(GetIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent_serialized_name, 'intent_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      intent_serialized_name = builder.intent_serialized_name;
      export_serialized_name = builder.export_serialized_name;
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
  public class GetIntentOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Boolean export_serialized_name;

    private GetIntentOptionsBuilder(GetIntentOptions get_intent_options) {
      workspace_id_serialized_name = get_intent_options.workspace_id_serialized_name;
      intent_serialized_name = get_intent_options.intent_serialized_name;
      export_serialized_name = get_intent_options.export_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     */
    public GetIntentOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Builds a GetIntentOptions.
     *
     * @return the get_intent_options
     */
    public GetIntentOptions build() {
      return new GetIntentOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param export_serialized_name the export_serialized_name
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder exportField(Boolean export_serialized_name) {
      this.export_serialized_name = export_serialized_name;
      return this;
    }
  }

  /**
   * The getSynonym options.
   */
  public class GetSynonymOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
    private GetSynonymOptions(GetSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym_serialized_name, 'synonym_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      synonym_serialized_name = builder.synonym_serialized_name;
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
  public class GetSynonymOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;

    private GetSynonymOptionsBuilder(GetSynonymOptions get_synonym_options) {
      workspace_id_serialized_name = get_synonym_options.workspace_id_serialized_name;
      entity_serialized_name = get_synonym_options.entity_serialized_name;
      value_serialized_name = get_synonym_options.value_serialized_name;
      synonym_serialized_name = get_synonym_options.synonym_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     * @param synonym_serialized_name the synonym_serialized_name
     */
    public GetSynonymOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name, String synonym_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
      this.synonym_serialized_name = synonym_serialized_name;
    }

    /**
     * Builds a GetSynonymOptions.
     *
     * @return the get_synonym_options
     */
    public GetSynonymOptions build() {
      return new GetSynonymOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym_serialized_name the synonym_serialized_name
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder synonym(String synonym_serialized_name) {
      this.synonym_serialized_name = synonym_serialized_name;
      return this;
    }
  }

  /**
   * The getValue options.
   */
  public class GetValueOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    private GetValueOptions(GetValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity_serialized_name, 'entity_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value_serialized_name, 'value_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      entity_serialized_name = builder.entity_serialized_name;
      value_serialized_name = builder.value_serialized_name;
      export_serialized_name = builder.export_serialized_name;
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
  public class GetValueOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Boolean export_serialized_name;

    private GetValueOptionsBuilder(GetValueOptions get_value_options) {
      workspace_id_serialized_name = get_value_options.workspace_id_serialized_name;
      entity_serialized_name = get_value_options.entity_serialized_name;
      value_serialized_name = get_value_options.value_serialized_name;
      export_serialized_name = get_value_options.export_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     */
    public GetValueOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
    }

    /**
     * Builds a GetValueOptions.
     *
     * @return the get_value_options
     */
    public GetValueOptions build() {
      return new GetValueOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param export_serialized_name the export_serialized_name
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder exportField(Boolean export_serialized_name) {
      this.export_serialized_name = export_serialized_name;
      return this;
    }
  }

  /**
   * The getWorkspace options.
   */
  public class GetWorkspaceOptions {
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    private GetWorkspaceOptions(GetWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      export_serialized_name = builder.export_serialized_name;
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
  public class GetWorkspaceOptionsBuilder {
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;

    private GetWorkspaceOptionsBuilder(GetWorkspaceOptions get_workspace_options) {
      workspace_id_serialized_name = get_workspace_options.workspace_id_serialized_name;
      export_serialized_name = get_workspace_options.export_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public GetWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public GetWorkspaceOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a GetWorkspaceOptions.
     *
     * @return the get_workspace_options
     */
    public GetWorkspaceOptions build() {
      return new GetWorkspaceOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param export_serialized_name the export_serialized_name
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder exportField(Boolean export_serialized_name) {
      this.export_serialized_name = export_serialized_name;
      return this;
    }
  }

  /**
   * An object defining the user input.
   */
  public class InputData {
    private String text_serialized_name;
    /**
     * Gets the text_serialized_name.
     *
     * The text of the user input.
     *
     * @return the text_serialized_name
     */
    public String text() {
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

  }

  /**
   * InputData Builder.
   */
  public class InputDataBuilder {
    private String text_serialized_name;

    private InputDataBuilder(InputData input_data) {
      text_serialized_name = input_data.text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public InputDataBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param text_serialized_name the text_serialized_name
     */
    public InputDataBuilder(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a InputData.
     *
     * @return the input_data
     */
    public InputData build() {
      return new InputData(this);
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the InputData builder
     */
    public InputDataBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }
  }

  /**
   * Intent.
   */
  public class Intent extends IBMWatsonGenericModel {
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
     * @param intent_serialized_name the new intent_serialized_name
     */
    public void setIntent(final String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
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
  public class IntentCollection extends IBMWatsonGenericModel {
    private List<IntentExport> intents_serialized_name;
    private Pagination pagination_serialized_name;
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
     * Sets the intents_serialized_name.
     *
     * @param intents_serialized_name the new intents_serialized_name
     */
    public void setIntents(final List<IntentExport> intents_serialized_name) {
      this.intents_serialized_name = intents_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
  public class IntentExport extends IBMWatsonGenericModel {
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
     * An array of user input examples.
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
     * @param intent_serialized_name the new intent_serialized_name
     */
    public void setIntent(final String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
    }

    /**
     * Sets the examples_serialized_name.
     *
     * @param examples_serialized_name the new examples_serialized_name
     */
    public void setExamples(final List<Example> examples_serialized_name) {
      this.examples_serialized_name = examples_serialized_name;
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
   * The listCounterexamples options.
   */
  public class ListCounterexamplesOptions {
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    private ListCounterexamplesOptions(ListCounterexamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
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
  public class ListCounterexamplesOptionsBuilder {
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListCounterexamplesOptionsBuilder(ListCounterexamplesOptions list_counterexamples_options) {
      workspace_id_serialized_name = list_counterexamples_options.workspace_id_serialized_name;
      page_limit_serialized_name = list_counterexamples_options.page_limit_serialized_name;
      include_count_serialized_name = list_counterexamples_options.include_count_serialized_name;
      sort_serialized_name = list_counterexamples_options.sort_serialized_name;
      cursor_serialized_name = list_counterexamples_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCounterexamplesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public ListCounterexamplesOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a ListCounterexamplesOptions.
     *
     * @return the list_counterexamples_options
     */
    public ListCounterexamplesOptions build() {
      return new ListCounterexamplesOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listDialogNodes options.
   */
  public class ListDialogNodesOptions {
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    private ListDialogNodesOptions(ListDialogNodesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
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
  public class ListDialogNodesOptionsBuilder {
    private String workspace_id_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListDialogNodesOptionsBuilder(ListDialogNodesOptions list_dialog_nodes_options) {
      workspace_id_serialized_name = list_dialog_nodes_options.workspace_id_serialized_name;
      page_limit_serialized_name = list_dialog_nodes_options.page_limit_serialized_name;
      include_count_serialized_name = list_dialog_nodes_options.include_count_serialized_name;
      sort_serialized_name = list_dialog_nodes_options.sort_serialized_name;
      cursor_serialized_name = list_dialog_nodes_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListDialogNodesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public ListDialogNodesOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a ListDialogNodesOptions.
     *
     * @return the list_dialog_nodes_options
     */
    public ListDialogNodesOptions build() {
      return new ListDialogNodesOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listEntities options.
   */
  public class ListEntitiesOptions {
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    private ListEntitiesOptions(ListEntitiesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
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
  public class ListEntitiesOptionsBuilder {
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListEntitiesOptionsBuilder(ListEntitiesOptions list_entities_options) {
      workspace_id_serialized_name = list_entities_options.workspace_id_serialized_name;
      export_serialized_name = list_entities_options.export_serialized_name;
      page_limit_serialized_name = list_entities_options.page_limit_serialized_name;
      include_count_serialized_name = list_entities_options.include_count_serialized_name;
      sort_serialized_name = list_entities_options.sort_serialized_name;
      cursor_serialized_name = list_entities_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListEntitiesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public ListEntitiesOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a ListEntitiesOptions.
     *
     * @return the list_entities_options
     */
    public ListEntitiesOptions build() {
      return new ListEntitiesOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param export_serialized_name the export_serialized_name
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder exportField(Boolean export_serialized_name) {
      this.export_serialized_name = export_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listExamples options.
   */
  public class ListExamplesOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
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
  public class ListExamplesOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListExamplesOptionsBuilder(ListExamplesOptions list_examples_options) {
      workspace_id_serialized_name = list_examples_options.workspace_id_serialized_name;
      intent_serialized_name = list_examples_options.intent_serialized_name;
      page_limit_serialized_name = list_examples_options.page_limit_serialized_name;
      include_count_serialized_name = list_examples_options.include_count_serialized_name;
      sort_serialized_name = list_examples_options.sort_serialized_name;
      cursor_serialized_name = list_examples_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListExamplesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     */
    public ListExamplesOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Builds a ListExamplesOptions.
     *
     * @return the list_examples_options
     */
    public ListExamplesOptions build() {
      return new ListExamplesOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listIntents options.
   */
  public class ListIntentsOptions {
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the export_serialized_name.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    private ListIntentsOptions(ListIntentsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      workspace_id_serialized_name = builder.workspace_id_serialized_name;
      export_serialized_name = builder.export_serialized_name;
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
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
  public class ListIntentsOptionsBuilder {
    private String workspace_id_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListIntentsOptionsBuilder(ListIntentsOptions list_intents_options) {
      workspace_id_serialized_name = list_intents_options.workspace_id_serialized_name;
      export_serialized_name = list_intents_options.export_serialized_name;
      page_limit_serialized_name = list_intents_options.page_limit_serialized_name;
      include_count_serialized_name = list_intents_options.include_count_serialized_name;
      sort_serialized_name = list_intents_options.sort_serialized_name;
      cursor_serialized_name = list_intents_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListIntentsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public ListIntentsOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a ListIntentsOptions.
     *
     * @return the list_intents_options
     */
    public ListIntentsOptions build() {
      return new ListIntentsOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param export_serialized_name the export_serialized_name
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder exportField(Boolean export_serialized_name) {
      this.export_serialized_name = export_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listLogs options.
   */
  public class ListLogsOptions {
    private String workspace_id_serialized_name;
    private String sort_serialized_name;
    private String filter_serialized_name;
    private Long page_limit_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the sort_serialized_name.
     *
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the filter_serialized_name.
     *
     * A cacheable parameter that limits the results to those matching the specified filter. For more information, see the [documentation](https://console.bluemix.net/docs/services/conversation/filter-reference.html#filter-query-syntax).
     *
     * @return the filter_serialized_name
     */
    public String filter() {
      return filter_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit_serialized_name
     */
    public Long pageLimit() {
      return page_limit_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
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
  public class ListLogsOptionsBuilder {
    private String workspace_id_serialized_name;
    private String sort_serialized_name;
    private String filter_serialized_name;
    private Long page_limit_serialized_name;
    private String cursor_serialized_name;

    private ListLogsOptionsBuilder(ListLogsOptions list_logs_options) {
      workspace_id_serialized_name = list_logs_options.workspace_id_serialized_name;
      sort_serialized_name = list_logs_options.sort_serialized_name;
      filter_serialized_name = list_logs_options.filter_serialized_name;
      page_limit_serialized_name = list_logs_options.page_limit_serialized_name;
      cursor_serialized_name = list_logs_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListLogsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public ListLogsOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a ListLogsOptions.
     *
     * @return the list_logs_options
     */
    public ListLogsOptions build() {
      return new ListLogsOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the filter_serialized_name.
     *
     * @param filter_serialized_name the filter_serialized_name
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder filter(String filter_serialized_name) {
      this.filter_serialized_name = filter_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listSynonyms options.
   */
  public class ListSynonymsOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
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
  public class ListSynonymsOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListSynonymsOptionsBuilder(ListSynonymsOptions list_synonyms_options) {
      workspace_id_serialized_name = list_synonyms_options.workspace_id_serialized_name;
      entity_serialized_name = list_synonyms_options.entity_serialized_name;
      value_serialized_name = list_synonyms_options.value_serialized_name;
      page_limit_serialized_name = list_synonyms_options.page_limit_serialized_name;
      include_count_serialized_name = list_synonyms_options.include_count_serialized_name;
      sort_serialized_name = list_synonyms_options.sort_serialized_name;
      cursor_serialized_name = list_synonyms_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListSynonymsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     */
    public ListSynonymsOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
    }

    /**
     * Builds a ListSynonymsOptions.
     *
     * @return the list_synonyms_options
     */
    public ListSynonymsOptions build() {
      return new ListSynonymsOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listValues options.
   */
  public class ListValuesOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the export_serialized_name
     */
    public Boolean exportField() {
      return export_serialized_name;
    }
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
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
  public class ListValuesOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean export_serialized_name;
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListValuesOptionsBuilder(ListValuesOptions list_values_options) {
      workspace_id_serialized_name = list_values_options.workspace_id_serialized_name;
      entity_serialized_name = list_values_options.entity_serialized_name;
      export_serialized_name = list_values_options.export_serialized_name;
      page_limit_serialized_name = list_values_options.page_limit_serialized_name;
      include_count_serialized_name = list_values_options.include_count_serialized_name;
      sort_serialized_name = list_values_options.sort_serialized_name;
      cursor_serialized_name = list_values_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListValuesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     */
    public ListValuesOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Builds a ListValuesOptions.
     *
     * @return the list_values_options
     */
    public ListValuesOptions build() {
      return new ListValuesOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the export_serialized_name.
     *
     * @param export_serialized_name the export_serialized_name
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder exportField(Boolean export_serialized_name) {
      this.export_serialized_name = export_serialized_name;
      return this;
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * The listWorkspaces options.
   */
  public class ListWorkspacesOptions {
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;
    /**
     * Gets the page_limit_serialized_name.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the sort_serialized_name
     */
    public String sortField() {
      return sort_serialized_name;
    }
    /**
     * Gets the cursor_serialized_name.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor_serialized_name
     */
    public String cursor() {
      return cursor_serialized_name;
    }
    private ListWorkspacesOptions(ListWorkspacesOptionsBuilder builder) {
      page_limit_serialized_name = builder.page_limit_serialized_name;
      include_count_serialized_name = builder.include_count_serialized_name;
      sort_serialized_name = builder.sort_serialized_name;
      cursor_serialized_name = builder.cursor_serialized_name;
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
  public class ListWorkspacesOptionsBuilder {
    private Long page_limit_serialized_name;
    private Boolean include_count_serialized_name;
    private String sort_serialized_name;
    private String cursor_serialized_name;

    private ListWorkspacesOptionsBuilder(ListWorkspacesOptions list_workspaces_options) {
      page_limit_serialized_name = list_workspaces_options.page_limit_serialized_name;
      include_count_serialized_name = list_workspaces_options.include_count_serialized_name;
      sort_serialized_name = list_workspaces_options.sort_serialized_name;
      cursor_serialized_name = list_workspaces_options.cursor_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public ListWorkspacesOptionsBuilder() {
    }

    /**
     * Builds a ListWorkspacesOptions.
     *
     * @return the list_workspaces_options
     */
    public ListWorkspacesOptions build() {
      return new ListWorkspacesOptions(this);
    }

    /**
     * Set the page_limit_serialized_name.
     *
     * @param page_limit_serialized_name the page_limit_serialized_name
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder pageLimit(Long page_limit_serialized_name) {
      this.page_limit_serialized_name = page_limit_serialized_name;
      return this;
    }

    /**
     * Set the include_count_serialized_name.
     *
     * @param include_count_serialized_name the include_count_serialized_name
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder includeCount(Boolean include_count_serialized_name) {
      this.include_count_serialized_name = include_count_serialized_name;
      return this;
    }

    /**
     * Set the sort_serialized_name.
     *
     * @param sort_serialized_name the sort_serialized_name
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder sortField(String sort_serialized_name) {
      this.sort_serialized_name = sort_serialized_name;
      return this;
    }

    /**
     * Set the cursor_serialized_name.
     *
     * @param cursor_serialized_name the cursor_serialized_name
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder cursor(String cursor_serialized_name) {
      this.cursor_serialized_name = cursor_serialized_name;
      return this;
    }
  }

  /**
   * LogCollection.
   */
  public class LogCollection extends IBMWatsonGenericModel {
    private List<LogExport> logs_serialized_name;
    private LogPagination pagination_serialized_name;
    /**
     * Gets the logs_serialized_name.
     *
     * An array of log events.
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
     * An object defining the pagination data for the returned objects.
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
     * @param logs_serialized_name the new logs_serialized_name
     */
    public void setLogs(final List<LogExport> logs_serialized_name) {
      this.logs_serialized_name = logs_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final LogPagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
     * A request formatted for the Conversation service.
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
     * A response from the Conversation service.
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
     * A unique identifier for the logged message.
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
     * The workspace ID.
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
     * @param request_serialized_name the new request_serialized_name
     */
    public void setRequest(final MessageRequest request_serialized_name) {
      this.request_serialized_name = request_serialized_name;
    }

    /**
     * Sets the response_serialized_name.
     *
     * @param response_serialized_name the new response_serialized_name
     */
    public void setResponse(final MessageResponse response_serialized_name) {
      this.response_serialized_name = response_serialized_name;
    }

    /**
     * Sets the log_id_serialized_name.
     *
     * @param log_id_serialized_name the new log_id_serialized_name
     */
    public void setLogId(final String log_id_serialized_name) {
      this.log_id_serialized_name = log_id_serialized_name;
    }

    /**
     * Sets the request_timestamp_serialized_name.
     *
     * @param request_timestamp_serialized_name the new request_timestamp_serialized_name
     */
    public void setRequestTimestamp(final String request_timestamp_serialized_name) {
      this.request_timestamp_serialized_name = request_timestamp_serialized_name;
    }

    /**
     * Sets the response_timestamp_serialized_name.
     *
     * @param response_timestamp_serialized_name the new response_timestamp_serialized_name
     */
    public void setResponseTimestamp(final String response_timestamp_serialized_name) {
      this.response_timestamp_serialized_name = response_timestamp_serialized_name;
    }

    /**
     * Sets the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the new workspace_id_serialized_name
     */
    public void setWorkspaceId(final String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
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
     * Sets the next_url_serialized_name.
     *
     * @param next_url_serialized_name the new next_url_serialized_name
     */
    public void setNextUrl(final String next_url_serialized_name) {
      this.next_url_serialized_name = next_url_serialized_name;
    }

    /**
     * Sets the matched_serialized_name.
     *
     * @param matched_serialized_name the new matched_serialized_name
     */
    public void setMatched(final long matched_serialized_name) {
      this.matched_serialized_name = matched_serialized_name;
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
   * An input object that includes the input text.
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
     * @param text_serialized_name the new text_serialized_name
     */
    public void setText(final String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
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
  public class MessageOptions {
    private String workspace_id_serialized_name;
    private InputData input_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private OutputData output_serialized_name;
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
     * State information for the conversation. Continue a conversation by including the context object from the previous response.
     *
     * @return the context_serialized_name
     */
    public Context context() {
      return context_serialized_name;
    }
    /**
     * Gets the entities_serialized_name.
     *
     * Include the entities from the previous response when they do not need to change and to prevent Watson from trying to identify them.
     *
     * @return the entities_serialized_name
     */
    public List<RuntimeEntity> entities() {
      return entities_serialized_name;
    }
    /**
     * Gets the intents_serialized_name.
     *
     * An array of name-confidence pairs for the user input. Include the intents from the previous response when they do not need to change and to prevent Watson from trying to identify them.
     *
     * @return the intents_serialized_name
     */
    public List<RuntimeIntent> intents() {
      return intents_serialized_name;
    }
    /**
     * Gets the output_serialized_name.
     *
     * System output. Include the output from the request when you have several requests within the same Dialog turn to pass back in the intermediate information.
     *
     * @return the output_serialized_name
     */
    public OutputData output() {
      return output_serialized_name;
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
  public class MessageOptionsBuilder {
    private String workspace_id_serialized_name;
    private InputData input_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private OutputData output_serialized_name;

    private MessageOptionsBuilder(MessageOptions message_options) {
      workspace_id_serialized_name = message_options.workspace_id_serialized_name;
      input_serialized_name = message_options.input_serialized_name;
      alternate_intents_serialized_name = message_options.alternate_intents_serialized_name;
      context_serialized_name = message_options.context_serialized_name;
      entities_serialized_name = message_options.entities_serialized_name;
      intents_serialized_name = message_options.intents_serialized_name;
      output_serialized_name = message_options.output_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public MessageOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public MessageOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a MessageOptions.
     *
     * @return the message_options
     */
    public MessageOptions build() {
      return new MessageOptions(this);
    }

    /**
     * Adds an entities_serialized_name to entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addEntities(RuntimeEntity entities_serialized_name) {
      IBMWatsonValidator.notNull(entities_serialized_name, 'entities_serialized_name cannot be null');
      if (this.entities_serialized_name == null) {
        this.entities_serialized_name = new List<RuntimeEntity>();
      }
      this.entities_serialized_name.add(entities_serialized_name);
      return this;
    }

    /**
     * Adds an intents_serialized_name to intents_serialized_name.
     *
     * @param intents_serialized_name the new intents_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addIntents(RuntimeIntent intents_serialized_name) {
      IBMWatsonValidator.notNull(intents_serialized_name, 'intents_serialized_name cannot be null');
      if (this.intents_serialized_name == null) {
        this.intents_serialized_name = new List<RuntimeIntent>();
      }
      this.intents_serialized_name.add(intents_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the input_serialized_name.
     *
     * @param input_serialized_name the input_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder input(InputData input_serialized_name) {
      this.input_serialized_name = input_serialized_name;
      return this;
    }

    /**
     * Set the alternate_intents_serialized_name.
     *
     * @param alternate_intents_serialized_name the alternate_intents_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder alternateIntents(Boolean alternate_intents_serialized_name) {
      this.alternate_intents_serialized_name = alternate_intents_serialized_name;
      return this;
    }

    /**
     * Set the context_serialized_name.
     *
     * @param context_serialized_name the context_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder context(Context context_serialized_name) {
      this.context_serialized_name = context_serialized_name;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     * Existing entities_serialized_name will be replaced.
     *
     * @param entities_serialized_name the entities_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder entities(List<RuntimeEntity> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
      return this;
    }

    /**
     * Set the intents_serialized_name.
     * Existing intents_serialized_name will be replaced.
     *
     * @param intents_serialized_name the intents_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder intents(List<RuntimeIntent> intents_serialized_name) {
      this.intents_serialized_name = intents_serialized_name;
      return this;
    }

    /**
     * Set the output_serialized_name.
     *
     * @param output_serialized_name the output_serialized_name
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder output(OutputData output_serialized_name) {
      this.output_serialized_name = output_serialized_name;
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
     * State information for the conversation. Continue a conversation by including the context object from the previous response.
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
     * Include the entities from the previous response when they do not need to change and to prevent Watson from trying to identify them.
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
     * An array of name-confidence pairs for the user input. Include the intents from the previous response when they do not need to change and to prevent Watson from trying to identify them.
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
     * System output. Include the output from the request when you have several requests within the same Dialog turn to pass back in the intermediate information.
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
     * @param input_serialized_name the new input_serialized_name
     */
    public void setInput(final InputData input_serialized_name) {
      this.input_serialized_name = input_serialized_name;
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
     * Sets the entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     */
    public void setEntities(final List<RuntimeEntity> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
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

      MessageRequest ret = (MessageRequest) super.deserialize(jsonString, jsonMap, classType);

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
  public class MessageResponse extends IBMWatsonDynamicModel {
    private MessageInput input_serialized_name;
    private List<RuntimeIntent> intents_serialized_name;
    private List<RuntimeEntity> entities_serialized_name;
    private Boolean alternate_intents_serialized_name;
    private Context context_serialized_name;
    private OutputData output_serialized_name;

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
     * Sets the refresh_url_serialized_name.
     *
     * @param refresh_url_serialized_name the new refresh_url_serialized_name
     */
    public void setRefreshUrl(final String refresh_url_serialized_name) {
      this.refresh_url_serialized_name = refresh_url_serialized_name;
    }

    /**
     * Sets the next_url_serialized_name.
     *
     * @param next_url_serialized_name the new next_url_serialized_name
     */
    public void setNextUrl(final String next_url_serialized_name) {
      this.next_url_serialized_name = next_url_serialized_name;
    }

    /**
     * Sets the total_serialized_name.
     *
     * @param total_serialized_name the new total_serialized_name
     */
    public void setTotal(final long total_serialized_name) {
      this.total_serialized_name = total_serialized_name;
    }

    /**
     * Sets the matched_serialized_name.
     *
     * @param matched_serialized_name the new matched_serialized_name
     */
    public void setMatched(final long matched_serialized_name) {
      this.matched_serialized_name = matched_serialized_name;
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RuntimeEntity ret = (RuntimeEntity) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for metadata_serialized_name
      IBMWatsonMapModel newMetadata = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getMetadata()), (Map<String, Object>) jsonMap.get('metadata_serialized_name'), IBMWatsonMapModel.class);
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
   * An intent identified in the user input.
   */
  public class RuntimeIntent extends IBMWatsonDynamicModel {
    private String intent_serialized_name;
    private Double confidence_serialized_name;

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
  public class Synonym extends IBMWatsonGenericModel {
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
     * @param synonym_serialized_name the new synonym_serialized_name
     */
    public void setSynonym(final String synonym_serialized_name) {
      this.synonym_serialized_name = synonym_serialized_name;
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
  public class SynonymCollection extends IBMWatsonGenericModel {
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
     * An object defining the pagination data for the returned objects.
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
     * @param synonyms_serialized_name the new synonyms_serialized_name
     */
    public void setSynonyms(final List<Synonym> synonyms_serialized_name) {
      this.synonyms_serialized_name = synonyms_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
  public class UpdateCounterexampleOptions {
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * The text of the example to be marked as irrelevant input.
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
  public class UpdateCounterexampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;

    private UpdateCounterexampleOptionsBuilder(UpdateCounterexampleOptions update_counterexample_options) {
      workspace_id_serialized_name = update_counterexample_options.workspace_id_serialized_name;
      text_serialized_name = update_counterexample_options.text_serialized_name;
      new_text_serialized_name = update_counterexample_options.new_text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public UpdateCounterexampleOptionsBuilder(String workspace_id_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a UpdateCounterexampleOptions.
     *
     * @return the update_counterexample_options
     */
    public UpdateCounterexampleOptions build() {
      return new UpdateCounterexampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }

    /**
     * Set the new_text_serialized_name.
     *
     * @param new_text_serialized_name the new_text_serialized_name
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder newText(String new_text_serialized_name) {
      this.new_text_serialized_name = new_text_serialized_name;
      return this;
    }
  }

  /**
   * The UpdateDialogNode options.
   */
  public class UpdateDialogNodeOptions {
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
    private String new_event_name_serialized_name;
    private DialogNodeNextStep new_next_step_serialized_name;
    private IBMWatsonMapModel new_output_serialized_name;
    private String new_parent_serialized_name;
    private String new_dialog_node_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * How the node is processed.
     *
     * @return the new_type_serialized_name
     */
    public String newType() {
      return new_type_serialized_name;
    }
    /**
     * Gets the new_actions_serialized_name.
     *
     * The actions for the dialog node.
     *
     * @return the new_actions_serialized_name
     */
    public List<DialogNodeAction> newActions() {
      return new_actions_serialized_name;
    }
    /**
     * Gets the new_conditions_serialized_name.
     *
     * The condition that will trigger the dialog node.
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
     * The previous dialog node.
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
     * The alias used to identify the dialog node.
     *
     * @return the new_title_serialized_name
     */
    public String newTitle() {
      return new_title_serialized_name;
    }
    /**
     * Gets the new_description_serialized_name.
     *
     * The description of the dialog node.
     *
     * @return the new_description_serialized_name
     */
    public String newDescription() {
      return new_description_serialized_name;
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
     * Gets the new_next_step_serialized_name.
     *
     * The next step to execute following this dialog node.
     *
     * @return the new_next_step_serialized_name
     */
    public DialogNodeNextStep newNextStep() {
      return new_next_step_serialized_name;
    }
    /**
     * Gets the new_output_serialized_name.
     *
     * The output of the dialog node.
     *
     * @return the new_output_serialized_name
     */
    public IBMWatsonMapModel newOutput() {
      return new_output_serialized_name;
    }
    /**
     * Gets the new_parent_serialized_name.
     *
     * The ID of the parent dialog node (if any).
     *
     * @return the new_parent_serialized_name
     */
    public String newParent() {
      return new_parent_serialized_name;
    }
    /**
     * Gets the new_dialog_node_serialized_name.
     *
     * The dialog node ID.
     *
     * @return the new_dialog_node_serialized_name
     */
    public String newDialogNode() {
      return new_dialog_node_serialized_name;
    }
    private UpdateDialogNodeOptions(UpdateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id_serialized_name, 'workspace_id_serialized_name cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node_serialized_name, 'dialog_node_serialized_name cannot be empty');
      IBMWatsonValidator.notNull(builder.new_dialog_node_serialized_name, 'new_dialog_node_serialized_name cannot be null');
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
      new_event_name_serialized_name = builder.new_event_name_serialized_name;
      new_next_step_serialized_name = builder.new_next_step_serialized_name;
      new_output_serialized_name = builder.new_output_serialized_name;
      new_parent_serialized_name = builder.new_parent_serialized_name;
      new_dialog_node_serialized_name = builder.new_dialog_node_serialized_name;
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
  public class UpdateDialogNodeOptionsBuilder {
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
    private String new_event_name_serialized_name;
    private DialogNodeNextStep new_next_step_serialized_name;
    private IBMWatsonMapModel new_output_serialized_name;
    private String new_parent_serialized_name;
    private String new_dialog_node_serialized_name;

    private UpdateDialogNodeOptionsBuilder(UpdateDialogNodeOptions update_dialog_node_options) {
      workspace_id_serialized_name = update_dialog_node_options.workspace_id_serialized_name;
      dialog_node_serialized_name = update_dialog_node_options.dialog_node_serialized_name;
      new_type_serialized_name = update_dialog_node_options.new_type_serialized_name;
      new_actions_serialized_name = update_dialog_node_options.new_actions_serialized_name;
      new_conditions_serialized_name = update_dialog_node_options.new_conditions_serialized_name;
      new_context_serialized_name = update_dialog_node_options.new_context_serialized_name;
      new_previous_sibling_serialized_name = update_dialog_node_options.new_previous_sibling_serialized_name;
      new_variable_serialized_name = update_dialog_node_options.new_variable_serialized_name;
      new_metadata_serialized_name = update_dialog_node_options.new_metadata_serialized_name;
      new_title_serialized_name = update_dialog_node_options.new_title_serialized_name;
      new_description_serialized_name = update_dialog_node_options.new_description_serialized_name;
      new_event_name_serialized_name = update_dialog_node_options.new_event_name_serialized_name;
      new_next_step_serialized_name = update_dialog_node_options.new_next_step_serialized_name;
      new_output_serialized_name = update_dialog_node_options.new_output_serialized_name;
      new_parent_serialized_name = update_dialog_node_options.new_parent_serialized_name;
      new_dialog_node_serialized_name = update_dialog_node_options.new_dialog_node_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     * @param new_dialog_node_serialized_name the new_dialog_node_serialized_name
     */
    public UpdateDialogNodeOptionsBuilder(String workspace_id_serialized_name, String dialog_node_serialized_name, String new_dialog_node_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.dialog_node_serialized_name = dialog_node_serialized_name;
      this.new_dialog_node_serialized_name = new_dialog_node_serialized_name;
    }

    /**
     * Builds a UpdateDialogNodeOptions.
     *
     * @return the update_dialog_node_options
     */
    public UpdateDialogNodeOptions build() {
      return new UpdateDialogNodeOptions(this);
    }

    /**
     * Adds an new_actions_serialized_name to new_actions_serialized_name.
     *
     * @param new_actions_serialized_name the new new_actions_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder addNewActions(DialogNodeAction new_actions_serialized_name) {
      IBMWatsonValidator.notNull(new_actions_serialized_name, 'new_actions_serialized_name cannot be null');
      if (this.new_actions_serialized_name == null) {
        this.new_actions_serialized_name = new List<DialogNodeAction>();
      }
      this.new_actions_serialized_name.add(new_actions_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the dialog_node_serialized_name.
     *
     * @param dialog_node_serialized_name the dialog_node_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder dialogNode(String dialog_node_serialized_name) {
      this.dialog_node_serialized_name = dialog_node_serialized_name;
      return this;
    }

    /**
     * Set the new_type_serialized_name.
     *
     * @param new_type_serialized_name the new_type_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newType(String new_type_serialized_name) {
      this.new_type_serialized_name = new_type_serialized_name;
      return this;
    }

    /**
     * Set the new_actions_serialized_name.
     * Existing new_actions_serialized_name will be replaced.
     *
     * @param new_actions_serialized_name the new_actions_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newActions(List<DialogNodeAction> new_actions_serialized_name) {
      this.new_actions_serialized_name = new_actions_serialized_name;
      return this;
    }

    /**
     * Set the new_conditions_serialized_name.
     *
     * @param new_conditions_serialized_name the new_conditions_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newConditions(String new_conditions_serialized_name) {
      this.new_conditions_serialized_name = new_conditions_serialized_name;
      return this;
    }

    /**
     * Set the new_context_serialized_name.
     *
     * @param new_context_serialized_name the new_context_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newContext(IBMWatsonMapModel new_context_serialized_name) {
      this.new_context_serialized_name = new_context_serialized_name;
      return this;
    }

    /**
     * Set the new_previous_sibling_serialized_name.
     *
     * @param new_previous_sibling_serialized_name the new_previous_sibling_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newPreviousSibling(String new_previous_sibling_serialized_name) {
      this.new_previous_sibling_serialized_name = new_previous_sibling_serialized_name;
      return this;
    }

    /**
     * Set the new_variable_serialized_name.
     *
     * @param new_variable_serialized_name the new_variable_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newVariable(String new_variable_serialized_name) {
      this.new_variable_serialized_name = new_variable_serialized_name;
      return this;
    }

    /**
     * Set the new_metadata_serialized_name.
     *
     * @param new_metadata_serialized_name the new_metadata_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newMetadata(IBMWatsonMapModel new_metadata_serialized_name) {
      this.new_metadata_serialized_name = new_metadata_serialized_name;
      return this;
    }

    /**
     * Set the new_title_serialized_name.
     *
     * @param new_title_serialized_name the new_title_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newTitle(String new_title_serialized_name) {
      this.new_title_serialized_name = new_title_serialized_name;
      return this;
    }

    /**
     * Set the new_description_serialized_name.
     *
     * @param new_description_serialized_name the new_description_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDescription(String new_description_serialized_name) {
      this.new_description_serialized_name = new_description_serialized_name;
      return this;
    }

    /**
     * Set the new_event_name_serialized_name.
     *
     * @param new_event_name_serialized_name the new_event_name_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newEventName(String new_event_name_serialized_name) {
      this.new_event_name_serialized_name = new_event_name_serialized_name;
      return this;
    }

    /**
     * Set the new_next_step_serialized_name.
     *
     * @param new_next_step_serialized_name the new_next_step_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newNextStep(DialogNodeNextStep new_next_step_serialized_name) {
      this.new_next_step_serialized_name = new_next_step_serialized_name;
      return this;
    }

    /**
     * Set the new_output_serialized_name.
     *
     * @param new_output_serialized_name the new_output_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newOutput(IBMWatsonMapModel new_output_serialized_name) {
      this.new_output_serialized_name = new_output_serialized_name;
      return this;
    }

    /**
     * Set the new_parent_serialized_name.
     *
     * @param new_parent_serialized_name the new_parent_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newParent(String new_parent_serialized_name) {
      this.new_parent_serialized_name = new_parent_serialized_name;
      return this;
    }

    /**
     * Set the new_dialog_node_serialized_name.
     *
     * @param new_dialog_node_serialized_name the new_dialog_node_serialized_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDialogNode(String new_dialog_node_serialized_name) {
      this.new_dialog_node_serialized_name = new_dialog_node_serialized_name;
      return this;
    }
  }

  /**
   * The updateEntity options.
   */
  public class UpdateEntityOptions {
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
     * The workspace ID.
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
     * The name of the entity.
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
     * The description of the entity.
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
  public class UpdateEntityOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private Boolean new_fuzzy_match_serialized_name;
    private String new_entity_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private List<CreateValue> new_values_serialized_name;
    private String new_description_serialized_name;

    private UpdateEntityOptionsBuilder(UpdateEntityOptions update_entity_options) {
      workspace_id_serialized_name = update_entity_options.workspace_id_serialized_name;
      entity_serialized_name = update_entity_options.entity_serialized_name;
      new_fuzzy_match_serialized_name = update_entity_options.new_fuzzy_match_serialized_name;
      new_entity_serialized_name = update_entity_options.new_entity_serialized_name;
      new_metadata_serialized_name = update_entity_options.new_metadata_serialized_name;
      new_values_serialized_name = update_entity_options.new_values_serialized_name;
      new_description_serialized_name = update_entity_options.new_description_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     */
    public UpdateEntityOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
    }

    /**
     * Builds a UpdateEntityOptions.
     *
     * @return the update_entity_options
     */
    public UpdateEntityOptions build() {
      return new UpdateEntityOptions(this);
    }

    /**
     * Adds an new_values_serialized_name to new_values_serialized_name.
     *
     * @param new_values_serialized_name the new new_values_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder addNewValues(CreateValue new_values_serialized_name) {
      IBMWatsonValidator.notNull(new_values_serialized_name, 'new_values_serialized_name cannot be null');
      if (this.new_values_serialized_name == null) {
        this.new_values_serialized_name = new List<CreateValue>();
      }
      this.new_values_serialized_name.add(new_values_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the new_fuzzy_match_serialized_name.
     *
     * @param new_fuzzy_match_serialized_name the new_fuzzy_match_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newFuzzyMatch(Boolean new_fuzzy_match_serialized_name) {
      this.new_fuzzy_match_serialized_name = new_fuzzy_match_serialized_name;
      return this;
    }

    /**
     * Set the new_entity_serialized_name.
     *
     * @param new_entity_serialized_name the new_entity_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newEntity(String new_entity_serialized_name) {
      this.new_entity_serialized_name = new_entity_serialized_name;
      return this;
    }

    /**
     * Set the new_metadata_serialized_name.
     *
     * @param new_metadata_serialized_name the new_metadata_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newMetadata(IBMWatsonMapModel new_metadata_serialized_name) {
      this.new_metadata_serialized_name = new_metadata_serialized_name;
      return this;
    }

    /**
     * Set the new_values_serialized_name.
     * Existing new_values_serialized_name will be replaced.
     *
     * @param new_values_serialized_name the new_values_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newValues(List<CreateValue> new_values_serialized_name) {
      this.new_values_serialized_name = new_values_serialized_name;
      return this;
    }

    /**
     * Set the new_description_serialized_name.
     *
     * @param new_description_serialized_name the new_description_serialized_name
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newDescription(String new_description_serialized_name) {
      this.new_description_serialized_name = new_description_serialized_name;
      return this;
    }
  }

  /**
   * The updateExample options.
   */
  public class UpdateExampleOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
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
     * The text of the user input example.
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
  public class UpdateExampleOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String text_serialized_name;
    private String new_text_serialized_name;

    private UpdateExampleOptionsBuilder(UpdateExampleOptions update_example_options) {
      workspace_id_serialized_name = update_example_options.workspace_id_serialized_name;
      intent_serialized_name = update_example_options.intent_serialized_name;
      text_serialized_name = update_example_options.text_serialized_name;
      new_text_serialized_name = update_example_options.new_text_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     * @param text_serialized_name the text_serialized_name
     */
    public UpdateExampleOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name, String text_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
      this.text_serialized_name = text_serialized_name;
    }

    /**
     * Builds a UpdateExampleOptions.
     *
     * @return the update_example_options
     */
    public UpdateExampleOptions build() {
      return new UpdateExampleOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the text_serialized_name.
     *
     * @param text_serialized_name the text_serialized_name
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder text(String text_serialized_name) {
      this.text_serialized_name = text_serialized_name;
      return this;
    }

    /**
     * Set the new_text_serialized_name.
     *
     * @param new_text_serialized_name the new_text_serialized_name
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder newText(String new_text_serialized_name) {
      this.new_text_serialized_name = new_text_serialized_name;
      return this;
    }
  }

  /**
   * The updateIntent options.
   */
  public class UpdateIntentOptions {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String new_intent_serialized_name;
    private List<CreateExample> new_examples_serialized_name;
    private String new_description_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the intent_serialized_name.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent_serialized_name
     */
    public String intent() {
      return intent_serialized_name;
    }
    /**
     * Gets the new_intent_serialized_name.
     *
     * The name of the intent.
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
  public class UpdateIntentOptionsBuilder {
    private String workspace_id_serialized_name;
    private String intent_serialized_name;
    private String new_intent_serialized_name;
    private List<CreateExample> new_examples_serialized_name;
    private String new_description_serialized_name;

    private UpdateIntentOptionsBuilder(UpdateIntentOptions update_intent_options) {
      workspace_id_serialized_name = update_intent_options.workspace_id_serialized_name;
      intent_serialized_name = update_intent_options.intent_serialized_name;
      new_intent_serialized_name = update_intent_options.new_intent_serialized_name;
      new_examples_serialized_name = update_intent_options.new_examples_serialized_name;
      new_description_serialized_name = update_intent_options.new_description_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param intent_serialized_name the intent_serialized_name
     */
    public UpdateIntentOptionsBuilder(String workspace_id_serialized_name, String intent_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.intent_serialized_name = intent_serialized_name;
    }

    /**
     * Builds a UpdateIntentOptions.
     *
     * @return the update_intent_options
     */
    public UpdateIntentOptions build() {
      return new UpdateIntentOptions(this);
    }

    /**
     * Adds an new_examples_serialized_name to new_examples_serialized_name.
     *
     * @param new_examples_serialized_name the new new_examples_serialized_name
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder addNewExamples(CreateExample new_examples_serialized_name) {
      IBMWatsonValidator.notNull(new_examples_serialized_name, 'new_examples_serialized_name cannot be null');
      if (this.new_examples_serialized_name == null) {
        this.new_examples_serialized_name = new List<CreateExample>();
      }
      this.new_examples_serialized_name.add(new_examples_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the intent_serialized_name.
     *
     * @param intent_serialized_name the intent_serialized_name
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder intent(String intent_serialized_name) {
      this.intent_serialized_name = intent_serialized_name;
      return this;
    }

    /**
     * Set the new_intent_serialized_name.
     *
     * @param new_intent_serialized_name the new_intent_serialized_name
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newIntent(String new_intent_serialized_name) {
      this.new_intent_serialized_name = new_intent_serialized_name;
      return this;
    }

    /**
     * Set the new_examples_serialized_name.
     * Existing new_examples_serialized_name will be replaced.
     *
     * @param new_examples_serialized_name the new_examples_serialized_name
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newExamples(List<CreateExample> new_examples_serialized_name) {
      this.new_examples_serialized_name = new_examples_serialized_name;
      return this;
    }

    /**
     * Set the new_description_serialized_name.
     *
     * @param new_description_serialized_name the new_description_serialized_name
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newDescription(String new_description_serialized_name) {
      this.new_description_serialized_name = new_description_serialized_name;
      return this;
    }
  }

  /**
   * The updateSynonym options.
   */
  public class UpdateSynonymOptions {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    private String new_synonym_serialized_name;
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
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
     * The text of the synonym.
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
  public class UpdateSynonymOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private String synonym_serialized_name;
    private String new_synonym_serialized_name;

    private UpdateSynonymOptionsBuilder(UpdateSynonymOptions update_synonym_options) {
      workspace_id_serialized_name = update_synonym_options.workspace_id_serialized_name;
      entity_serialized_name = update_synonym_options.entity_serialized_name;
      value_serialized_name = update_synonym_options.value_serialized_name;
      synonym_serialized_name = update_synonym_options.synonym_serialized_name;
      new_synonym_serialized_name = update_synonym_options.new_synonym_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     * @param synonym_serialized_name the synonym_serialized_name
     */
    public UpdateSynonymOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name, String synonym_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
      this.synonym_serialized_name = synonym_serialized_name;
    }

    /**
     * Builds a UpdateSynonymOptions.
     *
     * @return the update_synonym_options
     */
    public UpdateSynonymOptions build() {
      return new UpdateSynonymOptions(this);
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the synonym_serialized_name.
     *
     * @param synonym_serialized_name the synonym_serialized_name
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder synonym(String synonym_serialized_name) {
      this.synonym_serialized_name = synonym_serialized_name;
      return this;
    }

    /**
     * Set the new_synonym_serialized_name.
     *
     * @param new_synonym_serialized_name the new_synonym_serialized_name
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder newSynonym(String new_synonym_serialized_name) {
      this.new_synonym_serialized_name = new_synonym_serialized_name;
      return this;
    }
  }

  /**
   * The updateValue options.
   */
  public class UpdateValueOptions {
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
     * The workspace ID.
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
     * An array of synonyms for the entity value.
     *
     * @return the new_synonyms_serialized_name
     */
    public List<String> newSynonyms() {
      return new_synonyms_serialized_name;
    }
    /**
     * Gets the new_type_serialized_name.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
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
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the new_patterns_serialized_name
     */
    public List<String> newPatterns() {
      return new_patterns_serialized_name;
    }
    /**
     * Gets the new_value_serialized_name.
     *
     * The text of the entity value.
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
  public class UpdateValueOptionsBuilder {
    private String workspace_id_serialized_name;
    private String entity_serialized_name;
    private String value_serialized_name;
    private List<String> new_synonyms_serialized_name;
    private String new_type_serialized_name;
    private IBMWatsonMapModel new_metadata_serialized_name;
    private List<String> new_patterns_serialized_name;
    private String new_value_serialized_name;

    private UpdateValueOptionsBuilder(UpdateValueOptions update_value_options) {
      workspace_id_serialized_name = update_value_options.workspace_id_serialized_name;
      entity_serialized_name = update_value_options.entity_serialized_name;
      value_serialized_name = update_value_options.value_serialized_name;
      new_synonyms_serialized_name = update_value_options.new_synonyms_serialized_name;
      new_type_serialized_name = update_value_options.new_type_serialized_name;
      new_metadata_serialized_name = update_value_options.new_metadata_serialized_name;
      new_patterns_serialized_name = update_value_options.new_patterns_serialized_name;
      new_value_serialized_name = update_value_options.new_value_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @param entity_serialized_name the entity_serialized_name
     * @param value_serialized_name the value_serialized_name
     */
    public UpdateValueOptionsBuilder(String workspace_id_serialized_name, String entity_serialized_name, String value_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      this.entity_serialized_name = entity_serialized_name;
      this.value_serialized_name = value_serialized_name;
    }

    /**
     * Builds a UpdateValueOptions.
     *
     * @return the update_value_options
     */
    public UpdateValueOptions build() {
      return new UpdateValueOptions(this);
    }

    /**
     * Adds an new_synonyms_serialized_name to new_synonyms_serialized_name.
     *
     * @param new_synonyms_serialized_name the new new_synonyms_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewSynonyms(String new_synonyms_serialized_name) {
      IBMWatsonValidator.notNull(new_synonyms_serialized_name, 'new_synonyms_serialized_name cannot be null');
      if (this.new_synonyms_serialized_name == null) {
        this.new_synonyms_serialized_name = new List<String>();
      }
      this.new_synonyms_serialized_name.add(new_synonyms_serialized_name);
      return this;
    }

    /**
     * Adds an new_patterns_serialized_name to new_patterns_serialized_name.
     *
     * @param new_patterns_serialized_name the new new_patterns_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewPatterns(String new_patterns_serialized_name) {
      IBMWatsonValidator.notNull(new_patterns_serialized_name, 'new_patterns_serialized_name cannot be null');
      if (this.new_patterns_serialized_name == null) {
        this.new_patterns_serialized_name = new List<String>();
      }
      this.new_patterns_serialized_name.add(new_patterns_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the entity_serialized_name.
     *
     * @param entity_serialized_name the entity_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder entity(String entity_serialized_name) {
      this.entity_serialized_name = entity_serialized_name;
      return this;
    }

    /**
     * Set the value_serialized_name.
     *
     * @param value_serialized_name the value_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder value(String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
      return this;
    }

    /**
     * Set the new_synonyms_serialized_name.
     * Existing new_synonyms_serialized_name will be replaced.
     *
     * @param new_synonyms_serialized_name the new_synonyms_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newSynonyms(List<String> new_synonyms_serialized_name) {
      this.new_synonyms_serialized_name = new_synonyms_serialized_name;
      return this;
    }

    /**
     * Set the new_type_serialized_name.
     *
     * @param new_type_serialized_name the new_type_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newType(String new_type_serialized_name) {
      this.new_type_serialized_name = new_type_serialized_name;
      return this;
    }

    /**
     * Set the new_metadata_serialized_name.
     *
     * @param new_metadata_serialized_name the new_metadata_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newMetadata(IBMWatsonMapModel new_metadata_serialized_name) {
      this.new_metadata_serialized_name = new_metadata_serialized_name;
      return this;
    }

    /**
     * Set the new_patterns_serialized_name.
     * Existing new_patterns_serialized_name will be replaced.
     *
     * @param new_patterns_serialized_name the new_patterns_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newPatterns(List<String> new_patterns_serialized_name) {
      this.new_patterns_serialized_name = new_patterns_serialized_name;
      return this;
    }

    /**
     * Set the new_value_serialized_name.
     *
     * @param new_value_serialized_name the new_value_serialized_name
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newValue(String new_value_serialized_name) {
      this.new_value_serialized_name = new_value_serialized_name;
      return this;
    }
  }

  /**
   * The updateWorkspace options.
   */
  public class UpdateWorkspaceOptions {
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
    /**
     * Gets the workspace_id_serialized_name.
     *
     * The workspace ID.
     *
     * @return the workspace_id_serialized_name
     */
    public String workspaceId() {
      return workspace_id_serialized_name;
    }
    /**
     * Gets the name_serialized_name.
     *
     * The name of the workspace.
     *
     * @return the name_serialized_name
     */
    public String name() {
      return name_serialized_name;
    }
    /**
     * Gets the description_serialized_name.
     *
     * The description of the workspace.
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
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learning_opt_out_serialized_name
     */
    public Boolean learningOptOut() {
      return learning_opt_out_serialized_name;
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
  public class UpdateWorkspaceOptionsBuilder {
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

    private UpdateWorkspaceOptionsBuilder(UpdateWorkspaceOptions update_workspace_options) {
      workspace_id_serialized_name = update_workspace_options.workspace_id_serialized_name;
      name_serialized_name = update_workspace_options.name_serialized_name;
      description_serialized_name = update_workspace_options.description_serialized_name;
      language_serialized_name = update_workspace_options.language_serialized_name;
      intents_serialized_name = update_workspace_options.intents_serialized_name;
      entities_serialized_name = update_workspace_options.entities_serialized_name;
      dialog_nodes_serialized_name = update_workspace_options.dialog_nodes_serialized_name;
      counterexamples_serialized_name = update_workspace_options.counterexamples_serialized_name;
      metadata_serialized_name = update_workspace_options.metadata_serialized_name;
      learning_opt_out_serialized_name = update_workspace_options.learning_opt_out_serialized_name;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     */
    public UpdateWorkspaceOptionsBuilder(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
    }

    /**
     * Builds a UpdateWorkspaceOptions.
     *
     * @return the update_workspace_options
     */
    public UpdateWorkspaceOptions build() {
      return new UpdateWorkspaceOptions(this);
    }

    /**
     * Adds an intents_serialized_name to intents_serialized_name.
     *
     * @param intents_serialized_name the new intents_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addIntents(CreateIntent intents_serialized_name) {
      IBMWatsonValidator.notNull(intents_serialized_name, 'intents_serialized_name cannot be null');
      if (this.intents_serialized_name == null) {
        this.intents_serialized_name = new List<CreateIntent>();
      }
      this.intents_serialized_name.add(intents_serialized_name);
      return this;
    }

    /**
     * Adds an entities_serialized_name to entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addEntities(CreateEntity entities_serialized_name) {
      IBMWatsonValidator.notNull(entities_serialized_name, 'entities_serialized_name cannot be null');
      if (this.entities_serialized_name == null) {
        this.entities_serialized_name = new List<CreateEntity>();
      }
      this.entities_serialized_name.add(entities_serialized_name);
      return this;
    }

    /**
     * Adds an dialog_nodes_serialized_name to dialog_nodes_serialized_name.
     *
     * @param dialog_nodes_serialized_name the new dialog_nodes_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialog_nodes_serialized_name) {
      IBMWatsonValidator.notNull(dialog_nodes_serialized_name, 'dialog_nodes_serialized_name cannot be null');
      if (this.dialog_nodes_serialized_name == null) {
        this.dialog_nodes_serialized_name = new List<CreateDialogNode>();
      }
      this.dialog_nodes_serialized_name.add(dialog_nodes_serialized_name);
      return this;
    }

    /**
     * Adds an counterexamples_serialized_name to counterexamples_serialized_name.
     *
     * @param counterexamples_serialized_name the new counterexamples_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addCounterexamples(CreateCounterexample counterexamples_serialized_name) {
      IBMWatsonValidator.notNull(counterexamples_serialized_name, 'counterexamples_serialized_name cannot be null');
      if (this.counterexamples_serialized_name == null) {
        this.counterexamples_serialized_name = new List<CreateCounterexample>();
      }
      this.counterexamples_serialized_name.add(counterexamples_serialized_name);
      return this;
    }

    /**
     * Set the workspace_id_serialized_name.
     *
     * @param workspace_id_serialized_name the workspace_id_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder workspaceId(String workspace_id_serialized_name) {
      this.workspace_id_serialized_name = workspace_id_serialized_name;
      return this;
    }

    /**
     * Set the name_serialized_name.
     *
     * @param name_serialized_name the name_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder name(String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
      return this;
    }

    /**
     * Set the description_serialized_name.
     *
     * @param description_serialized_name the description_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder description(String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
      return this;
    }

    /**
     * Set the language_serialized_name.
     *
     * @param language_serialized_name the language_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder language(String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
      return this;
    }

    /**
     * Set the intents_serialized_name.
     * Existing intents_serialized_name will be replaced.
     *
     * @param intents_serialized_name the intents_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder intents(List<CreateIntent> intents_serialized_name) {
      this.intents_serialized_name = intents_serialized_name;
      return this;
    }

    /**
     * Set the entities_serialized_name.
     * Existing entities_serialized_name will be replaced.
     *
     * @param entities_serialized_name the entities_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder entities(List<CreateEntity> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
      return this;
    }

    /**
     * Set the dialog_nodes_serialized_name.
     * Existing dialog_nodes_serialized_name will be replaced.
     *
     * @param dialog_nodes_serialized_name the dialog_nodes_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialog_nodes_serialized_name) {
      this.dialog_nodes_serialized_name = dialog_nodes_serialized_name;
      return this;
    }

    /**
     * Set the counterexamples_serialized_name.
     * Existing counterexamples_serialized_name will be replaced.
     *
     * @param counterexamples_serialized_name the counterexamples_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder counterexamples(List<CreateCounterexample> counterexamples_serialized_name) {
      this.counterexamples_serialized_name = counterexamples_serialized_name;
      return this;
    }

    /**
     * Set the metadata_serialized_name.
     *
     * @param metadata_serialized_name the metadata_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder metadata(IBMWatsonMapModel metadata_serialized_name) {
      this.metadata_serialized_name = metadata_serialized_name;
      return this;
    }

    /**
     * Set the learning_opt_out_serialized_name.
     *
     * @param learning_opt_out_serialized_name the learning_opt_out_serialized_name
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder learningOptOut(Boolean learning_opt_out_serialized_name) {
      this.learning_opt_out_serialized_name = learning_opt_out_serialized_name;
      return this;
    }
  }

  /**
   * Value.
   */
  public class Value extends IBMWatsonGenericModel {
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
     * An array of synonyms for the entity value.
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
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
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
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
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
     * @param value_serialized_name the new value_serialized_name
     */
    public void setValue(final String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
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
     * Sets the synonyms_serialized_name.
     *
     * @param synonyms_serialized_name the new synonyms_serialized_name
     */
    public void setSynonyms(final List<String> synonyms_serialized_name) {
      this.synonyms_serialized_name = synonyms_serialized_name;
    }

    /**
     * Sets the patterns_serialized_name.
     *
     * @param patterns_serialized_name the new patterns_serialized_name
     */
    public void setPatterns(final List<String> patterns_serialized_name) {
      this.patterns_serialized_name = patterns_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
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
  public class ValueCollection extends IBMWatsonGenericModel {
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
     * @param values_serialized_name the new values_serialized_name
     */
    public void setValues(final List<ValueExport> values_serialized_name) {
      this.values_serialized_name = values_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
  public class ValueExport extends IBMWatsonGenericModel {
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
     * An array of synonyms.
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
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
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
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
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
     * @param value_serialized_name the new value_serialized_name
     */
    public void setValue(final String value_serialized_name) {
      this.value_serialized_name = value_serialized_name;
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
     * Sets the synonyms_serialized_name.
     *
     * @param synonyms_serialized_name the new synonyms_serialized_name
     */
    public void setSynonyms(final List<String> synonyms_serialized_name) {
      this.synonyms_serialized_name = synonyms_serialized_name;
    }

    /**
     * Sets the patterns_serialized_name.
     *
     * @param patterns_serialized_name the new patterns_serialized_name
     */
    public void setPatterns(final List<String> patterns_serialized_name) {
      this.patterns_serialized_name = patterns_serialized_name;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
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
  public class Workspace extends IBMWatsonGenericModel {
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
     * Any metadata that is required by the workspace.
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
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
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
     * Sets the learning_opt_out_serialized_name.
     *
     * @param learning_opt_out_serialized_name the new learning_opt_out_serialized_name
     */
    public void setLearningOptOut(final Boolean learning_opt_out_serialized_name) {
      this.learning_opt_out_serialized_name = learning_opt_out_serialized_name;
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
  public class WorkspaceCollection extends IBMWatsonGenericModel {
    private List<Workspace> workspaces_serialized_name;
    private Pagination pagination_serialized_name;
    /**
     * Gets the workspaces_serialized_name.
     *
     * An array of workspaces.
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
     * @param workspaces_serialized_name the new workspaces_serialized_name
     */
    public void setWorkspaces(final List<Workspace> workspaces_serialized_name) {
      this.workspaces_serialized_name = workspaces_serialized_name;
    }

    /**
     * Sets the pagination_serialized_name.
     *
     * @param pagination_serialized_name the new pagination_serialized_name
     */
    public void setPagination(final Pagination pagination_serialized_name) {
      this.pagination_serialized_name = pagination_serialized_name;
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
  public class WorkspaceExport extends IBMWatsonGenericModel {
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
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
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
     * @param name_serialized_name the new name_serialized_name
     */
    public void setName(final String name_serialized_name) {
      this.name_serialized_name = name_serialized_name;
    }

    /**
     * Sets the description_serialized_name.
     *
     * @param description_serialized_name the new description_serialized_name
     */
    public void setDescription(final String description_serialized_name) {
      this.description_serialized_name = description_serialized_name;
    }

    /**
     * Sets the language_serialized_name.
     *
     * @param language_serialized_name the new language_serialized_name
     */
    public void setLanguage(final String language_serialized_name) {
      this.language_serialized_name = language_serialized_name;
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
     * Sets the status_serialized_name.
     *
     * @param status_serialized_name the new status_serialized_name
     */
    public void setStatus(final String status_serialized_name) {
      this.status_serialized_name = status_serialized_name;
    }

    /**
     * Sets the learning_opt_out_serialized_name.
     *
     * @param learning_opt_out_serialized_name the new learning_opt_out_serialized_name
     */
    public void setLearningOptOut(final Boolean learning_opt_out_serialized_name) {
      this.learning_opt_out_serialized_name = learning_opt_out_serialized_name;
    }

    /**
     * Sets the intents_serialized_name.
     *
     * @param intents_serialized_name the new intents_serialized_name
     */
    public void setIntents(final List<IntentExport> intents_serialized_name) {
      this.intents_serialized_name = intents_serialized_name;
    }

    /**
     * Sets the entities_serialized_name.
     *
     * @param entities_serialized_name the new entities_serialized_name
     */
    public void setEntities(final List<EntityExport> entities_serialized_name) {
      this.entities_serialized_name = entities_serialized_name;
    }

    /**
     * Sets the counterexamples_serialized_name.
     *
     * @param counterexamples_serialized_name the new counterexamples_serialized_name
     */
    public void setCounterexamples(final List<Counterexample> counterexamples_serialized_name) {
      this.counterexamples_serialized_name = counterexamples_serialized_name;
    }

    /**
     * Sets the dialog_nodes_serialized_name.
     *
     * @param dialog_nodes_serialized_name the new dialog_nodes_serialized_name
     */
    public void setDialogNodes(final List<DialogNode> dialog_nodes_serialized_name) {
      this.dialog_nodes_serialized_name = dialog_nodes_serialized_name;
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
