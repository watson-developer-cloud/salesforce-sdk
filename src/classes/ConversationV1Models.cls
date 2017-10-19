public class ConversationV1Models {
  /**
   * Context information for the message. Include the context from the previous response to maintain state for the conversation.
   */
  public class Context extends IBMWatsonDynamicModel {

    /**
     * Gets the conversation_id.
     *
     * @return the conversation_id
     */
    public String getConversationId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('conversation_id')), String.class);
    }

    /**
     * Gets the system_serialized_name.
     *
     * @return the system_serialized_name
     */
    public SystemResponse getSystem() {
      return (SystemResponse)JSON.deserialize(JSON.serialize(this.get('system_serialized_name')), SystemResponse.class);
    }

    /**
     * Sets the conversation_id.
     *
     * @param conversation_id the new conversation_id
     */
    public void setConversationId(final String conversation_id) {
      this.put('conversation_id', conversation_id);
    }

    /**
     * Sets the system_serialized_name.
     *
     * @param system_serialized_name the new system_serialized_name
     */
    public void setSystem(final SystemResponse system_serialized_name) {
      this.put('system_serialized_name', system_serialized_name);
    }
  }

  /**
   * Counterexample.
   */
  public class Counterexample extends IBMWatsonGenericModel {
    private String text;
    private Datetime created;
    private Datetime updated;
    /**
     * Gets the text.
     *
     * The text of the counterexample.
     *
     * @return the text
     */
    public String getText() {
      return text;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the counterexample.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the counterexample.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text = text;
    }
  }

  /**
   * CounterexampleCollection.
   */
  public class CounterexampleCollection extends IBMWatsonGenericModel {
    private List<Counterexample> counterexamples;
    private Pagination pagination;
    /**
     * Gets the counterexamples.
     *
     * An array of objects describing the examples marked as irrelevant input.
     *
     * @return the counterexamples
     */
    public List<Counterexample> getCounterexamples() {
      return counterexamples;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the counterexamples.
     *
     * @param counterexamples the new counterexamples
     */
    public void setCounterexamples(final List<Counterexample> counterexamples) {
      this.counterexamples = counterexamples;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * CreateCounterexample.
   */
  public class CreateCounterexample extends IBMWatsonGenericModel {
    private String text;
    /**
     * Gets the text.
     *
     * The text of a user input marked as irrelevant input.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
    private CreateCounterexample(CreateCounterexampleBuilder builder) {
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      text = builder.text;
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

    private CreateCounterexampleBuilder(CreateCounterexample create_counterexample) {
      text = create_counterexample.text;
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
     * @return the create_counterexample
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
  public class CreateCounterexampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the text.
     *
     * The text of a user input marked as irrelevant input.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
    private CreateCounterexampleOptions(CreateCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      workspace_id = builder.workspace_id;
      text = builder.text;
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
    private String workspace_id;
    private String text;

    private CreateCounterexampleOptionsBuilder(CreateCounterexampleOptions create_counterexample_options) {
      workspace_id = create_counterexample_options.workspace_id;
      text = create_counterexample_options.text;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param text the text
     */
    public CreateCounterexampleOptionsBuilder(String workspace_id, String text) {
      this.workspace_id = workspace_id;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the CreateCounterexampleOptions builder
     */
    public CreateCounterexampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * CreateDialogNode.
   */
  public class CreateDialogNode extends IBMWatsonGenericModel {
    private String dialog_node;
    private String description;
    private String conditions;
    private String parent;
    private String previous_sibling;
    private Map<String, String> output;
    private Map<String, String> context;
    private Map<String, String> metadata;
    private DialogNodeNextStep next_step;
    private List<DialogNodeAction> actions;
    private String title;
    private String type_serialized_name;
    private String event_name;
    private String variable;
    /**
     * Gets the dialog_node.
     *
     * The dialog node ID.
     *
     * @return the dialog_node
     */
    public String dialogNode() {
      return dialog_node;
    }
    /**
     * Gets the description.
     *
     * The description of the dialog node.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
    /**
     * Gets the conditions.
     *
     * The condition that will trigger the dialog node.
     *
     * @return the conditions
     */
    public String conditions() {
      return conditions;
    }
    /**
     * Gets the parent.
     *
     * The ID of the parent dialog node (if any).
     *
     * @return the parent
     */
    public String parent() {
      return parent;
    }
    /**
     * Gets the previous_sibling.
     *
     * The previous dialog node.
     *
     * @return the previous_sibling
     */
    public String previousSibling() {
      return previous_sibling;
    }
    /**
     * Gets the output.
     *
     * The output of the dialog node.
     *
     * @return the output
     */
    public Map<String, String> output() {
      return output;
    }
    /**
     * Gets the context.
     *
     * The context for the dialog node.
     *
     * @return the context
     */
    public Map<String, String> context() {
      return context;
    }
    /**
     * Gets the metadata.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata
     */
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the next_step.
     *
     * The next step to execute following this dialog node.
     *
     * @return the next_step
     */
    public DialogNodeNextStep nextStep() {
      return next_step;
    }
    /**
     * Gets the actions.
     *
     * The actions for the dialog node.
     *
     * @return the actions
     */
    public List<DialogNodeAction> actions() {
      return actions;
    }
    /**
     * Gets the title.
     *
     * The alias used to identify the dialog node.
     *
     * @return the title
     */
    public String title() {
      return title;
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
     * Gets the event_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the event_name
     */
    public String eventName() {
      return event_name;
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
    private CreateDialogNode(CreateDialogNodeBuilder builder) {
      IBMWatsonValidator.notNull(builder.dialog_node, 'dialog_node cannot be null');
      dialog_node = builder.dialog_node;
      description = builder.description;
      conditions = builder.conditions;
      parent = builder.parent;
      previous_sibling = builder.previous_sibling;
      output = builder.output;
      context = builder.context;
      metadata = builder.metadata;
      next_step = builder.next_step;
      actions = builder.actions;
      title = builder.title;
      type_serialized_name = builder.type_serialized_name;
      event_name = builder.event_name;
      variable = builder.variable;
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
    private String dialog_node;
    private String description;
    private String conditions;
    private String parent;
    private String previous_sibling;
    private Map<String, String> output;
    private Map<String, String> context;
    private Map<String, String> metadata;
    private DialogNodeNextStep next_step;
    private List<DialogNodeAction> actions;
    private String title;
    private String type_serialized_name;
    private String event_name;
    private String variable;

    private CreateDialogNodeBuilder(CreateDialogNode create_dialog_node) {
      dialog_node = create_dialog_node.dialog_node;
      description = create_dialog_node.description;
      conditions = create_dialog_node.conditions;
      parent = create_dialog_node.parent;
      previous_sibling = create_dialog_node.previous_sibling;
      output = create_dialog_node.output;
      context = create_dialog_node.context;
      metadata = create_dialog_node.metadata;
      next_step = create_dialog_node.next_step;
      actions = create_dialog_node.actions;
      title = create_dialog_node.title;
      type_serialized_name = create_dialog_node.type_serialized_name;
      event_name = create_dialog_node.event_name;
      variable = create_dialog_node.variable;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateDialogNodeBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param dialog_node the dialog_node
     */
    public CreateDialogNodeBuilder(String dialog_node) {
      this.dialog_node = dialog_node;
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
     * Set the dialog_node.
     *
     * @param dialog_node the dialog_node
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder dialogNode(String dialog_node) {
      this.dialog_node = dialog_node;
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
     * Set the previous_sibling.
     *
     * @param previous_sibling the previous_sibling
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder previousSibling(String previous_sibling) {
      this.previous_sibling = previous_sibling;
      return this;
    }

    /**
     * Set the output.
     *
     * @param output the output
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder output(Map<String, String> output) {
      this.output = output;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder context(Map<String, String> context) {
      this.context = context;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder metadata(Map<String, String> metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the next_step.
     *
     * @param next_step the next_step
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder nextStep(DialogNodeNextStep next_step) {
      this.next_step = next_step;
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
     * Set the event_name.
     *
     * @param event_name the event_name
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder eventName(String event_name) {
      this.event_name = event_name;
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
  }

  /**
   * The createDialogNode options.
   */
  public class CreateDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String dialog_node;
    private String description;
    private String conditions;
    private String parent;
    private String previous_sibling;
    private Map<String, String> output;
    private Map<String, String> context;
    private Map<String, String> metadata;
    private DialogNodeNextStep next_step;
    private List<DialogNodeAction> actions;
    private String title;
    private String type_serialized_name;
    private String event_name;
    private String variable;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the dialog_node.
     *
     * The dialog node ID.
     *
     * @return the dialog_node
     */
    public String dialogNode() {
      return dialog_node;
    }
    /**
     * Gets the description.
     *
     * The description of the dialog node.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
    /**
     * Gets the conditions.
     *
     * The condition that will trigger the dialog node.
     *
     * @return the conditions
     */
    public String conditions() {
      return conditions;
    }
    /**
     * Gets the parent.
     *
     * The ID of the parent dialog node (if any).
     *
     * @return the parent
     */
    public String parent() {
      return parent;
    }
    /**
     * Gets the previous_sibling.
     *
     * The previous dialog node.
     *
     * @return the previous_sibling
     */
    public String previousSibling() {
      return previous_sibling;
    }
    /**
     * Gets the output.
     *
     * The output of the dialog node.
     *
     * @return the output
     */
    public Map<String, String> output() {
      return output;
    }
    /**
     * Gets the context.
     *
     * The context for the dialog node.
     *
     * @return the context
     */
    public Map<String, String> context() {
      return context;
    }
    /**
     * Gets the metadata.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata
     */
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the next_step.
     *
     * The next step to execute following this dialog node.
     *
     * @return the next_step
     */
    public DialogNodeNextStep nextStep() {
      return next_step;
    }
    /**
     * Gets the actions.
     *
     * The actions for the dialog node.
     *
     * @return the actions
     */
    public List<DialogNodeAction> actions() {
      return actions;
    }
    /**
     * Gets the title.
     *
     * The alias used to identify the dialog node.
     *
     * @return the title
     */
    public String title() {
      return title;
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
     * Gets the event_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the event_name
     */
    public String eventName() {
      return event_name;
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
    private CreateDialogNodeOptions(CreateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notNull(builder.dialog_node, 'dialog_node cannot be null');
      workspace_id = builder.workspace_id;
      dialog_node = builder.dialog_node;
      description = builder.description;
      conditions = builder.conditions;
      parent = builder.parent;
      previous_sibling = builder.previous_sibling;
      output = builder.output;
      context = builder.context;
      metadata = builder.metadata;
      next_step = builder.next_step;
      actions = builder.actions;
      title = builder.title;
      type_serialized_name = builder.type_serialized_name;
      event_name = builder.event_name;
      variable = builder.variable;
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
    private String workspace_id;
    private String dialog_node;
    private String description;
    private String conditions;
    private String parent;
    private String previous_sibling;
    private Map<String, String> output;
    private Map<String, String> context;
    private Map<String, String> metadata;
    private DialogNodeNextStep next_step;
    private List<DialogNodeAction> actions;
    private String title;
    private String type_serialized_name;
    private String event_name;
    private String variable;

    private CreateDialogNodeOptionsBuilder(CreateDialogNodeOptions create_dialog_node_options) {
      workspace_id = create_dialog_node_options.workspace_id;
      dialog_node = create_dialog_node_options.dialog_node;
      description = create_dialog_node_options.description;
      conditions = create_dialog_node_options.conditions;
      parent = create_dialog_node_options.parent;
      previous_sibling = create_dialog_node_options.previous_sibling;
      output = create_dialog_node_options.output;
      context = create_dialog_node_options.context;
      metadata = create_dialog_node_options.metadata;
      next_step = create_dialog_node_options.next_step;
      actions = create_dialog_node_options.actions;
      title = create_dialog_node_options.title;
      type_serialized_name = create_dialog_node_options.type_serialized_name;
      event_name = create_dialog_node_options.event_name;
      variable = create_dialog_node_options.variable;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param dialog_node the dialog_node
     */
    public CreateDialogNodeOptionsBuilder(String workspace_id, String dialog_node) {
      this.workspace_id = workspace_id;
      this.dialog_node = dialog_node;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
      return this;
    }

    /**
     * Set the dialog_node.
     *
     * @param dialog_node the dialog_node
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder dialogNode(String dialog_node) {
      this.dialog_node = dialog_node;
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
     * Set the previous_sibling.
     *
     * @param previous_sibling the previous_sibling
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder previousSibling(String previous_sibling) {
      this.previous_sibling = previous_sibling;
      return this;
    }

    /**
     * Set the output.
     *
     * @param output the output
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder output(Map<String, String> output) {
      this.output = output;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder context(Map<String, String> context) {
      this.context = context;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder metadata(Map<String, String> metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the next_step.
     *
     * @param next_step the next_step
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder nextStep(DialogNodeNextStep next_step) {
      this.next_step = next_step;
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
     * Set the event_name.
     *
     * @param event_name the event_name
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder eventName(String event_name) {
      this.event_name = event_name;
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
  }

  /**
   * CreateEntity.
   */
  public class CreateEntity extends IBMWatsonGenericModel {
    private String entity;
    private String description;
    private Map<String, String> metadata;
    private List<CreateValue> values;
    private Boolean fuzzy_match;
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
     * Gets the description.
     *
     * The description of the entity.
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
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the values.
     *
     * An array of entity values.
     *
     * @return the values
     */
    public List<CreateValue> values() {
      return values;
    }
    /**
     * Gets the fuzzy_match.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the fuzzy_match
     */
    public Boolean fuzzyMatch() {
      return fuzzy_match;
    }
    private CreateEntity(CreateEntityBuilder builder) {
      IBMWatsonValidator.notNull(builder.entity, 'entity cannot be null');
      entity = builder.entity;
      description = builder.description;
      metadata = builder.metadata;
      values = builder.values;
      fuzzy_match = builder.fuzzy_match;
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
    private Map<String, String> metadata;
    private List<CreateValue> values;
    private Boolean fuzzy_match;

    private CreateEntityBuilder(CreateEntity create_entity) {
      entity = create_entity.entity;
      description = create_entity.description;
      metadata = create_entity.metadata;
      values = create_entity.values;
      fuzzy_match = create_entity.fuzzy_match;
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
     * @return the create_entity
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
    public CreateEntityBuilder metadata(Map<String, String> metadata) {
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
     * Set the fuzzy_match.
     *
     * @param fuzzy_match the fuzzy_match
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder fuzzyMatch(Boolean fuzzy_match) {
      this.fuzzy_match = fuzzy_match;
      return this;
    }
  }

  /**
   * The createEntity options.
   */
  public class CreateEntityOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String description;
    private Map<String, String> metadata;
    private List<CreateValue> values;
    private Boolean fuzzy_match;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the description.
     *
     * The description of the entity.
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
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the values.
     *
     * An array of entity values.
     *
     * @return the values
     */
    public List<CreateValue> values() {
      return values;
    }
    /**
     * Gets the fuzzy_match.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the fuzzy_match
     */
    public Boolean fuzzyMatch() {
      return fuzzy_match;
    }
    private CreateEntityOptions(CreateEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notNull(builder.entity, 'entity cannot be null');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      description = builder.description;
      metadata = builder.metadata;
      values = builder.values;
      fuzzy_match = builder.fuzzy_match;
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
    private String workspace_id;
    private String entity;
    private String description;
    private Map<String, String> metadata;
    private List<CreateValue> values;
    private Boolean fuzzy_match;

    private CreateEntityOptionsBuilder(CreateEntityOptions create_entity_options) {
      workspace_id = create_entity_options.workspace_id;
      entity = create_entity_options.entity;
      description = create_entity_options.description;
      metadata = create_entity_options.metadata;
      values = create_entity_options.values;
      fuzzy_match = create_entity_options.fuzzy_match;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     */
    public CreateEntityOptionsBuilder(String workspace_id, String entity) {
      this.workspace_id = workspace_id;
      this.entity = entity;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
    public CreateEntityOptionsBuilder metadata(Map<String, String> metadata) {
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
     * Set the fuzzy_match.
     *
     * @param fuzzy_match the fuzzy_match
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder fuzzyMatch(Boolean fuzzy_match) {
      this.fuzzy_match = fuzzy_match;
      return this;
    }
  }

  /**
   * CreateExample.
   */
  public class CreateExample extends IBMWatsonGenericModel {
    private String text;
    /**
     * Gets the text.
     *
     * The text of a user input example.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
    private CreateExample(CreateExampleBuilder builder) {
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      text = builder.text;
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

    private CreateExampleBuilder(CreateExample create_example) {
      text = create_example.text;
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
     * @return the create_example
     */
    public CreateExample build() {
      return new CreateExample(this);
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
  }

  /**
   * The createExample options.
   */
  public class CreateExampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private String text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
    /**
     * Gets the text.
     *
     * The text of a user input example.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
    private CreateExampleOptions(CreateExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
      text = builder.text;
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
    private String workspace_id;
    private String intent;
    private String text;

    private CreateExampleOptionsBuilder(CreateExampleOptions create_example_options) {
      workspace_id = create_example_options.workspace_id;
      intent = create_example_options.intent;
      text = create_example_options.text;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     * @param text the text
     */
    public CreateExampleOptionsBuilder(String workspace_id, String intent, String text) {
      this.workspace_id = workspace_id;
      this.intent = intent;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the CreateExampleOptions builder
     */
    public CreateExampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * CreateIntent.
   */
  public class CreateIntent extends IBMWatsonGenericModel {
    private String intent;
    private String description;
    private List<CreateExample> examples;
    /**
     * Gets the intent.
     *
     * The name of the intent.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
    /**
     * Gets the description.
     *
     * The description of the intent.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
    /**
     * Gets the examples.
     *
     * An array of user input examples.
     *
     * @return the examples
     */
    public List<CreateExample> examples() {
      return examples;
    }
    private CreateIntent(CreateIntentBuilder builder) {
      IBMWatsonValidator.notNull(builder.intent, 'intent cannot be null');
      intent = builder.intent;
      description = builder.description;
      examples = builder.examples;
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

    private CreateIntentBuilder(CreateIntent create_intent) {
      intent = create_intent.intent;
      description = create_intent.description;
      examples = create_intent.examples;
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
     * @return the create_intent
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
  public class CreateIntentOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private String description;
    private List<CreateExample> examples;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The name of the intent.
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
    /**
     * Gets the description.
     *
     * The description of the intent.
     *
     * @return the description
     */
    public String description() {
      return description;
    }
    /**
     * Gets the examples.
     *
     * An array of user input examples.
     *
     * @return the examples
     */
    public List<CreateExample> examples() {
      return examples;
    }
    private CreateIntentOptions(CreateIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notNull(builder.intent, 'intent cannot be null');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
      description = builder.description;
      examples = builder.examples;
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
    private String workspace_id;
    private String intent;
    private String description;
    private List<CreateExample> examples;

    private CreateIntentOptionsBuilder(CreateIntentOptions create_intent_options) {
      workspace_id = create_intent_options.workspace_id;
      intent = create_intent_options.intent;
      description = create_intent_options.description;
      examples = create_intent_options.examples;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     */
    public CreateIntentOptionsBuilder(String workspace_id, String intent) {
      this.workspace_id = workspace_id;
      this.intent = intent;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The createSynonym options.
   */
  public class CreateSynonymOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
    private CreateSynonymOptions(CreateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notNull(builder.synonym, 'synonym cannot be null');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
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
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;

    private CreateSynonymOptionsBuilder(CreateSynonymOptions create_synonym_options) {
      workspace_id = create_synonym_options.workspace_id;
      entity = create_synonym_options.entity;
      value = create_synonym_options.value;
      synonym = create_synonym_options.synonym;
    }

    /**
     * Instantiates a new builder.
     */
    public CreateSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public CreateSynonymOptionsBuilder(String workspace_id, String entity, String value, String synonym) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the CreateSynonymOptions builder
     */
    public CreateSynonymOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * CreateValue.
   */
  public class CreateValue extends IBMWatsonGenericModel {
    private String value;
    private Map<String, String> metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String type_serialized_name;
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
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the synonyms.
     *
     * An array of synonyms for the entity value.
     *
     * @return the synonyms
     */
    public List<String> synonyms() {
      return synonyms;
    }
    /**
     * Gets the patterns.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the patterns
     */
    public List<String> patterns() {
      return patterns;
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
      IBMWatsonValidator.notNull(builder.value, 'value cannot be null');
      value = builder.value;
      metadata = builder.metadata;
      synonyms = builder.synonyms;
      patterns = builder.patterns;
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
    private String value;
    private Map<String, String> metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String type_serialized_name;

    private CreateValueBuilder(CreateValue create_value) {
      value = create_value.value;
      metadata = create_value.metadata;
      synonyms = create_value.synonyms;
      patterns = create_value.patterns;
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
     * @param value the value
     */
    public CreateValueBuilder(String value) {
      this.value = value;
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
    public CreateValueBuilder metadata(Map<String, String> metadata) {
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
  public class CreateValueOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private Map<String, String> metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String type_serialized_name;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the synonyms.
     *
     * An array of synonyms for the entity value.
     *
     * @return the synonyms
     */
    public List<String> synonyms() {
      return synonyms;
    }
    /**
     * Gets the patterns.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the patterns
     */
    public List<String> patterns() {
      return patterns;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notNull(builder.value, 'value cannot be null');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
      metadata = builder.metadata;
      synonyms = builder.synonyms;
      patterns = builder.patterns;
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
    private String workspace_id;
    private String entity;
    private String value;
    private Map<String, String> metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String type_serialized_name;

    private CreateValueOptionsBuilder(CreateValueOptions create_value_options) {
      workspace_id = create_value_options.workspace_id;
      entity = create_value_options.entity;
      value = create_value_options.value;
      metadata = create_value_options.metadata;
      synonyms = create_value_options.synonyms;
      patterns = create_value_options.patterns;
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
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     */
    public CreateValueOptionsBuilder(String workspace_id, String entity, String value) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
    public CreateValueOptionsBuilder metadata(Map<String, String> metadata) {
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
  public class CreateWorkspaceOptions extends IBMWatsonGenericModel {
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialog_nodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, String> metadata;
    private Boolean learning_opt_out;
    /**
     * Gets the name.
     *
     * The name of the workspace.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
    /**
     * Gets the description.
     *
     * The description of the workspace.
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
     * Gets the dialog_nodes.
     *
     * An array of objects defining the nodes in the workspace dialog.
     *
     * @return the dialog_nodes
     */
    public List<CreateDialogNode> dialogNodes() {
      return dialog_nodes;
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
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the learning_opt_out.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learning_opt_out
     */
    public Boolean learningOptOut() {
      return learning_opt_out;
    }
    private CreateWorkspaceOptions(CreateWorkspaceOptionsBuilder builder) {
      name = builder.name;
      description = builder.description;
      language = builder.language;
      intents = builder.intents;
      entities = builder.entities;
      dialog_nodes = builder.dialog_nodes;
      counterexamples = builder.counterexamples;
      metadata = builder.metadata;
      learning_opt_out = builder.learning_opt_out;
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
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialog_nodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, String> metadata;
    private Boolean learning_opt_out;

    private CreateWorkspaceOptionsBuilder(CreateWorkspaceOptions create_workspace_options) {
      name = create_workspace_options.name;
      description = create_workspace_options.description;
      language = create_workspace_options.language;
      intents = create_workspace_options.intents;
      entities = create_workspace_options.entities;
      dialog_nodes = create_workspace_options.dialog_nodes;
      counterexamples = create_workspace_options.counterexamples;
      metadata = create_workspace_options.metadata;
      learning_opt_out = create_workspace_options.learning_opt_out;
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
     * Adds an dialog_nodes to dialog_nodes.
     *
     * @param dialog_nodes the new dialog_nodes
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialog_nodes) {
      IBMWatsonValidator.notNull(dialog_nodes, 'dialog_nodes cannot be null');
      if (this.dialog_nodes == null) {
        this.dialog_nodes = new List<CreateDialogNode>();
      }
      this.dialog_nodes.add(dialog_nodes);
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
     * Set the dialog_nodes.
     * Existing dialog_nodes will be replaced.
     *
     * @param dialog_nodes the dialog_nodes
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialog_nodes) {
      this.dialog_nodes = dialog_nodes;
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
    public CreateWorkspaceOptionsBuilder metadata(Map<String, String> metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the learning_opt_out.
     *
     * @param learning_opt_out the learning_opt_out
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder learningOptOut(Boolean learning_opt_out) {
      this.learning_opt_out = learning_opt_out;
      return this;
    }
  }

  /**
   * The deleteCounterexample options.
   */
  public class DeleteCounterexampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspace_id = builder.workspace_id;
      text = builder.text;
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
    private String workspace_id;
    private String text;

    private DeleteCounterexampleOptionsBuilder(DeleteCounterexampleOptions delete_counterexample_options) {
      workspace_id = delete_counterexample_options.workspace_id;
      text = delete_counterexample_options.text;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param text the text
     */
    public DeleteCounterexampleOptionsBuilder(String workspace_id, String text) {
      this.workspace_id = workspace_id;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteCounterexampleOptions builder
     */
    public DeleteCounterexampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The deleteDialogNode options.
   */
  public class DeleteDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String dialog_node;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the dialog_node.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialog_node
     */
    public String dialogNode() {
      return dialog_node;
    }
    private DeleteDialogNodeOptions(DeleteDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node, 'dialog_node cannot be empty');
      workspace_id = builder.workspace_id;
      dialog_node = builder.dialog_node;
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
    private String workspace_id;
    private String dialog_node;

    private DeleteDialogNodeOptionsBuilder(DeleteDialogNodeOptions delete_dialog_node_options) {
      workspace_id = delete_dialog_node_options.workspace_id;
      dialog_node = delete_dialog_node_options.dialog_node;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param dialog_node the dialog_node
     */
    public DeleteDialogNodeOptionsBuilder(String workspace_id, String dialog_node) {
      this.workspace_id = workspace_id;
      this.dialog_node = dialog_node;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
      return this;
    }

    /**
     * Set the dialog_node.
     *
     * @param dialog_node the dialog_node
     * @return the DeleteDialogNodeOptions builder
     */
    public DeleteDialogNodeOptionsBuilder dialogNode(String dialog_node) {
      this.dialog_node = dialog_node;
      return this;
    }
  }

  /**
   * The deleteEntity options.
   */
  public class DeleteEntityOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
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
    private String workspace_id;
    private String entity;

    private DeleteEntityOptionsBuilder(DeleteEntityOptions delete_entity_options) {
      workspace_id = delete_entity_options.workspace_id;
      entity = delete_entity_options.entity;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     */
    public DeleteEntityOptionsBuilder(String workspace_id, String entity) {
      this.workspace_id = workspace_id;
      this.entity = entity;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteEntityOptions builder
     */
    public DeleteEntityOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The deleteExample options.
   */
  public class DeleteExampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private String text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
      text = builder.text;
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
    private String workspace_id;
    private String intent;
    private String text;

    private DeleteExampleOptionsBuilder(DeleteExampleOptions delete_example_options) {
      workspace_id = delete_example_options.workspace_id;
      intent = delete_example_options.intent;
      text = delete_example_options.text;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     * @param text the text
     */
    public DeleteExampleOptionsBuilder(String workspace_id, String intent, String text) {
      this.workspace_id = workspace_id;
      this.intent = intent;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteExampleOptions builder
     */
    public DeleteExampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The deleteIntent options.
   */
  public class DeleteIntentOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
    private DeleteIntentOptions(DeleteIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
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
    private String workspace_id;
    private String intent;

    private DeleteIntentOptionsBuilder(DeleteIntentOptions delete_intent_options) {
      workspace_id = delete_intent_options.workspace_id;
      intent = delete_intent_options.intent;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     */
    public DeleteIntentOptionsBuilder(String workspace_id, String intent) {
      this.workspace_id = workspace_id;
      this.intent = intent;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteIntentOptions builder
     */
    public DeleteIntentOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The deleteSynonym options.
   */
  public class DeleteSynonymOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym, 'synonym cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
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
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;

    private DeleteSynonymOptionsBuilder(DeleteSynonymOptions delete_synonym_options) {
      workspace_id = delete_synonym_options.workspace_id;
      entity = delete_synonym_options.entity;
      value = delete_synonym_options.value;
      synonym = delete_synonym_options.synonym;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public DeleteSynonymOptionsBuilder(String workspace_id, String entity, String value, String synonym) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteSynonymOptions builder
     */
    public DeleteSynonymOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The deleteValue options.
   */
  public class DeleteValueOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
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
    private String workspace_id;
    private String entity;
    private String value;

    private DeleteValueOptionsBuilder(DeleteValueOptions delete_value_options) {
      workspace_id = delete_value_options.workspace_id;
      entity = delete_value_options.entity;
      value = delete_value_options.value;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     */
    public DeleteValueOptionsBuilder(String workspace_id, String entity, String value) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteValueOptions builder
     */
    public DeleteValueOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The deleteWorkspace options.
   */
  public class DeleteWorkspaceOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    private DeleteWorkspaceOptions(DeleteWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
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
    private String workspace_id;

    private DeleteWorkspaceOptionsBuilder(DeleteWorkspaceOptions delete_workspace_options) {
      workspace_id = delete_workspace_options.workspace_id;
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public DeleteWorkspaceOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the DeleteWorkspaceOptions builder
     */
    public DeleteWorkspaceOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
      return this;
    }
  }

  /**
   * DialogNode.
   */
  public class DialogNode extends IBMWatsonGenericModel {
    private String dialog_node;
    private String description;
    private String conditions;
    private String parent;
    private String previous_sibling;
    private Map<String, String> output;
    private Map<String, String> context;
    private Map<String, String> metadata;
    private DialogNodeNextStep next_step;
    private Datetime created;
    private Datetime updated;
    private List<DialogNodeAction> actions;
    private String title;
    private String type_serialized_name;
    private String event_name;
    private String variable;
    /**
     * Gets the dialog_node.
     *
     * The dialog node ID.
     *
     * @return the dialog_node
     */
    public String getDialogNode() {
      return dialog_node;
    }
    /**
     * Gets the description.
     *
     * The description of the dialog node.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the conditions.
     *
     * The condition that triggers the dialog node.
     *
     * @return the conditions
     */
    public String getConditions() {
      return conditions;
    }
    /**
     * Gets the parent.
     *
     * The ID of the parent dialog node.
     *
     * @return the parent
     */
    public String getParent() {
      return parent;
    }
    /**
     * Gets the previous_sibling.
     *
     * The ID of the previous sibling dialog node.
     *
     * @return the previous_sibling
     */
    public String getPreviousSibling() {
      return previous_sibling;
    }
    /**
     * Gets the output.
     *
     * The output of the dialog node.
     *
     * @return the output
     */
    public Map<String, String> getOutput() {
      return output;
    }
    /**
     * Gets the context.
     *
     * The context (if defined) for the dialog node.
     *
     * @return the context
     */
    public Map<String, String> getContext() {
      return context;
    }
    /**
     * Gets the metadata.
     *
     * The metadata (if any) for the dialog node.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return metadata;
    }
    /**
     * Gets the next_step.
     *
     * The next step to execute following this dialog node.
     *
     * @return the next_step
     */
    public DialogNodeNextStep getNextStep() {
      return next_step;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the dialog node.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the most recent update to the dialog node.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the actions.
     *
     * The actions for the dialog node.
     *
     * @return the actions
     */
    public List<DialogNodeAction> getActions() {
      return actions;
    }
    /**
     * Gets the title.
     *
     * The alias used to identify the dialog node.
     *
     * @return the title
     */
    public String getTitle() {
      return title;
    }
    /**
     * Gets the type_serialized_name.
     *
     * How the dialog node is processed.
     *
     * @return the type_serialized_name
     */
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the event_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the event_name
     */
    public String getEventName() {
      return event_name;
    }
    /**
     * Gets the variable.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the variable
     */
    public String getVariable() {
      return variable;
    }

    /**
     * Sets the dialog_node.
     *
     * @param dialog_node the new dialog_node
     */
    public void setDialogNode(final String dialog_node) {
      this.dialog_node = dialog_node;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the conditions.
     *
     * @param conditions the new conditions
     */
    public void setConditions(final String conditions) {
      this.conditions = conditions;
    }

    /**
     * Sets the parent.
     *
     * @param parent the new parent
     */
    public void setParent(final String parent) {
      this.parent = parent;
    }

    /**
     * Sets the previous_sibling.
     *
     * @param previous_sibling the new previous_sibling
     */
    public void setPreviousSibling(final String previous_sibling) {
      this.previous_sibling = previous_sibling;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final Map<String, String> output) {
      this.output = output;
    }

    /**
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final Map<String, String> context) {
      this.context = context;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the next_step.
     *
     * @param next_step the new next_step
     */
    public void setNextStep(final DialogNodeNextStep next_step) {
      this.next_step = next_step;
    }

    /**
     * Sets the actions.
     *
     * @param actions the new actions
     */
    public void setActions(final List<DialogNodeAction> actions) {
      this.actions = actions;
    }

    /**
     * Sets the title.
     *
     * @param title the new title
     */
    public void setTitle(final String title) {
      this.title = title;
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
     * Sets the event_name.
     *
     * @param event_name the new event_name
     */
    public void setEventName(final String event_name) {
      this.event_name = event_name;
    }

    /**
     * Sets the variable.
     *
     * @param variable the new variable
     */
    public void setVariable(final String variable) {
      this.variable = variable;
    }
  }

  /**
   * DialogNodeAction.
   */
  public class DialogNodeAction extends IBMWatsonGenericModel {
    private String name;
    private String type_serialized_name;
    private Map<String, String> parameters;
    private String result_variable;
    private String credentials;
    /**
     * Gets the name.
     *
     * The name of the action.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the type_serialized_name.
     *
     * The type of action to invoke.
     *
     * @return the type_serialized_name
     */
    public String getType() {
      return type_serialized_name;
    }
    /**
     * Gets the parameters.
     *
     * A map of key/value pairs to be provided to the action.
     *
     * @return the parameters
     */
    public Map<String, String> getParameters() {
      return parameters;
    }
    /**
     * Gets the result_variable.
     *
     * The location in the dialog context where the result of the action is stored.
     *
     * @return the result_variable
     */
    public String getResultVariable() {
      return result_variable;
    }
    /**
     * Gets the credentials.
     *
     * The name of the context variable that the client application will use to pass in credentials for the action.
     *
     * @return the credentials
     */
    public String getCredentials() {
      return credentials;
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
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }

    /**
     * Sets the parameters.
     *
     * @param parameters the new parameters
     */
    public void setParameters(final Map<String, String> parameters) {
      this.parameters = parameters;
    }

    /**
     * Sets the result_variable.
     *
     * @param result_variable the new result_variable
     */
    public void setResultVariable(final String result_variable) {
      this.result_variable = result_variable;
    }

    /**
     * Sets the credentials.
     *
     * @param credentials the new credentials
     */
    public void setCredentials(final String credentials) {
      this.credentials = credentials;
    }
  }

  /**
   * DialogNodeCollection.
   */
  public class DialogNodeCollection extends IBMWatsonGenericModel {
    private List<DialogNode> dialog_nodes;
    private Pagination pagination;
    /**
     * Gets the dialog_nodes.
     *
     * @return the dialog_nodes
     */
    public List<DialogNode> getDialogNodes() {
      return dialog_nodes;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the dialog_nodes.
     *
     * @param dialog_nodes the new dialog_nodes
     */
    public void setDialogNodes(final List<DialogNode> dialog_nodes) {
      this.dialog_nodes = dialog_nodes;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * The next step to execute following this dialog node.
   */
  public class DialogNodeNextStep extends IBMWatsonGenericModel {
    private String behavior;
    private String dialog_node;
    private String selector;
    /**
     * Gets the behavior.
     *
     * How the `next_step` reference is processed.
     *
     * @return the behavior
     */
    public String getBehavior() {
      return behavior;
    }
    /**
     * Gets the dialog_node.
     *
     * The ID of the dialog node to process next.
     *
     * @return the dialog_node
     */
    public String getDialogNode() {
      return dialog_node;
    }
    /**
     * Gets the selector.
     *
     * Which part of the dialog node to process next.
     *
     * @return the selector
     */
    public String getSelector() {
      return selector;
    }

    /**
     * Sets the behavior.
     *
     * @param behavior the new behavior
     */
    public void setBehavior(final String behavior) {
      this.behavior = behavior;
    }

    /**
     * Sets the dialog_node.
     *
     * @param dialog_node the new dialog_node
     */
    public void setDialogNode(final String dialog_node) {
      this.dialog_node = dialog_node;
    }

    /**
     * Sets the selector.
     *
     * @param selector the new selector
     */
    public void setSelector(final String selector) {
      this.selector = selector;
    }
  }

  /**
   * Entity.
   */
  public class Entity extends IBMWatsonGenericModel {
    private String entity;
    private Datetime created;
    private Datetime updated;
    private String description;
    private Map<String, String> metadata;
    private Boolean fuzzy_match;
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String getEntity() {
      return entity;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the description.
     *
     * The description of the entity.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return metadata;
    }
    /**
     * Gets the fuzzy_match.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzy_match
     */
    public Boolean isFuzzyMatch() {
      return fuzzy_match;
    }

    /**
     * Sets the entity.
     *
     * @param entity the new entity
     */
    public void setEntity(final String entity) {
      this.entity = entity;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the fuzzy_match.
     *
     * @param fuzzy_match the new fuzzy_match
     */
    public void setFuzzyMatch(final Boolean fuzzy_match) {
      this.fuzzy_match = fuzzy_match;
    }
  }

  /**
   * An array of entities.
   */
  public class EntityCollection extends IBMWatsonGenericModel {
    private List<EntityExport> entities;
    private Pagination pagination;
    /**
     * Gets the entities.
     *
     * An array of entities.
     *
     * @return the entities
     */
    public List<EntityExport> getEntities() {
      return entities;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntityExport> entities) {
      this.entities = entities;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * EntityExport.
   */
  public class EntityExport extends IBMWatsonGenericModel {
    private String entity;
    private Datetime created;
    private Datetime updated;
    private String description;
    private Map<String, String> metadata;
    private Boolean fuzzy_match;
    private List<ValueExport> values;
    /**
     * Gets the entity.
     *
     * The name of the entity.
     *
     * @return the entity
     */
    public String getEntity() {
      return entity;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the description.
     *
     * The description of the entity.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return metadata;
    }
    /**
     * Gets the fuzzy_match.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzy_match
     */
    public Boolean isFuzzyMatch() {
      return fuzzy_match;
    }
    /**
     * Gets the values.
     *
     * An array of entity values.
     *
     * @return the values
     */
    public List<ValueExport> getValues() {
      return values;
    }

    /**
     * Sets the entity.
     *
     * @param entity the new entity
     */
    public void setEntity(final String entity) {
      this.entity = entity;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the fuzzy_match.
     *
     * @param fuzzy_match the new fuzzy_match
     */
    public void setFuzzyMatch(final Boolean fuzzy_match) {
      this.fuzzy_match = fuzzy_match;
    }

    /**
     * Sets the values.
     *
     * @param values the new values
     */
    public void setValues(final List<ValueExport> values) {
      this.values = values;
    }
  }

  /**
   * Example.
   */
  public class Example extends IBMWatsonGenericModel {
    private String text;
    private Datetime created;
    private Datetime updated;
    /**
     * Gets the text.
     *
     * The text of the example.
     *
     * @return the text
     */
    public String getText() {
      return text;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the example.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the example.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text = text;
    }
  }

  /**
   * ExampleCollection.
   */
  public class ExampleCollection extends IBMWatsonGenericModel {
    private List<Example> examples;
    private Pagination pagination;
    /**
     * Gets the examples.
     *
     * An array of Example objects describing the examples defined for the intent.
     *
     * @return the examples
     */
    public List<Example> getExamples() {
      return examples;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the examples.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<Example> examples) {
      this.examples = examples;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * The getCounterexample options.
   */
  public class GetCounterexampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
    private GetCounterexampleOptions(GetCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspace_id = builder.workspace_id;
      text = builder.text;
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
    private String workspace_id;
    private String text;

    private GetCounterexampleOptionsBuilder(GetCounterexampleOptions get_counterexample_options) {
      workspace_id = get_counterexample_options.workspace_id;
      text = get_counterexample_options.text;
    }

    /**
     * Instantiates a new builder.
     */
    public GetCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param text the text
     */
    public GetCounterexampleOptionsBuilder(String workspace_id, String text) {
      this.workspace_id = workspace_id;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetCounterexampleOptions builder
     */
    public GetCounterexampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The getDialogNode options.
   */
  public class GetDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String dialog_node;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the dialog_node.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialog_node
     */
    public String dialogNode() {
      return dialog_node;
    }
    private GetDialogNodeOptions(GetDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node, 'dialog_node cannot be empty');
      workspace_id = builder.workspace_id;
      dialog_node = builder.dialog_node;
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
    private String workspace_id;
    private String dialog_node;

    private GetDialogNodeOptionsBuilder(GetDialogNodeOptions get_dialog_node_options) {
      workspace_id = get_dialog_node_options.workspace_id;
      dialog_node = get_dialog_node_options.dialog_node;
    }

    /**
     * Instantiates a new builder.
     */
    public GetDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param dialog_node the dialog_node
     */
    public GetDialogNodeOptionsBuilder(String workspace_id, String dialog_node) {
      this.workspace_id = workspace_id;
      this.dialog_node = dialog_node;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
      return this;
    }

    /**
     * Set the dialog_node.
     *
     * @param dialog_node the dialog_node
     * @return the GetDialogNodeOptions builder
     */
    public GetDialogNodeOptionsBuilder dialogNode(String dialog_node) {
      this.dialog_node = dialog_node;
      return this;
    }
  }

  /**
   * The getEntity options.
   */
  public class GetEntityOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
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
    private String workspace_id;
    private String entity;
    private Boolean export_serialized_name;

    private GetEntityOptionsBuilder(GetEntityOptions get_entity_options) {
      workspace_id = get_entity_options.workspace_id;
      entity = get_entity_options.entity;
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
     * @param workspace_id the workspace_id
     * @param entity the entity
     */
    public GetEntityOptionsBuilder(String workspace_id, String entity) {
      this.workspace_id = workspace_id;
      this.entity = entity;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetEntityOptions builder
     */
    public GetEntityOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  public class GetExampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private String text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
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
    private GetExampleOptions(GetExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
      text = builder.text;
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
    private String workspace_id;
    private String intent;
    private String text;

    private GetExampleOptionsBuilder(GetExampleOptions get_example_options) {
      workspace_id = get_example_options.workspace_id;
      intent = get_example_options.intent;
      text = get_example_options.text;
    }

    /**
     * Instantiates a new builder.
     */
    public GetExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     * @param text the text
     */
    public GetExampleOptionsBuilder(String workspace_id, String intent, String text) {
      this.workspace_id = workspace_id;
      this.intent = intent;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetExampleOptions builder
     */
    public GetExampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The getIntent options.
   */
  public class GetIntentOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent
     */
    public String intent() {
      return intent;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
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
    private String workspace_id;
    private String intent;
    private Boolean export_serialized_name;

    private GetIntentOptionsBuilder(GetIntentOptions get_intent_options) {
      workspace_id = get_intent_options.workspace_id;
      intent = get_intent_options.intent;
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
     * @param workspace_id the workspace_id
     * @param intent the intent
     */
    public GetIntentOptionsBuilder(String workspace_id, String intent) {
      this.workspace_id = workspace_id;
      this.intent = intent;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetIntentOptions builder
     */
    public GetIntentOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  public class GetSynonymOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
    private GetSynonymOptions(GetSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym, 'synonym cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
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
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;

    private GetSynonymOptionsBuilder(GetSynonymOptions get_synonym_options) {
      workspace_id = get_synonym_options.workspace_id;
      entity = get_synonym_options.entity;
      value = get_synonym_options.value;
      synonym = get_synonym_options.synonym;
    }

    /**
     * Instantiates a new builder.
     */
    public GetSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public GetSynonymOptionsBuilder(String workspace_id, String entity, String value, String synonym) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetSynonymOptions builder
     */
    public GetSynonymOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  }

  /**
   * The getValue options.
   */
  public class GetValueOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
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
    private String workspace_id;
    private String entity;
    private String value;
    private Boolean export_serialized_name;

    private GetValueOptionsBuilder(GetValueOptions get_value_options) {
      workspace_id = get_value_options.workspace_id;
      entity = get_value_options.entity;
      value = get_value_options.value;
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
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     */
    public GetValueOptionsBuilder(String workspace_id, String entity, String value) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetValueOptions builder
     */
    public GetValueOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  public class GetWorkspaceOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private Boolean export_serialized_name;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
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
    private String workspace_id;
    private Boolean export_serialized_name;

    private GetWorkspaceOptionsBuilder(GetWorkspaceOptions get_workspace_options) {
      workspace_id = get_workspace_options.workspace_id;
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
     * @param workspace_id the workspace_id
     */
    public GetWorkspaceOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the GetWorkspaceOptions builder
     */
    public GetWorkspaceOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
  public class InputData extends IBMWatsonGenericModel {
    private String text;
    /**
     * Gets the text.
     *
     * The text of the user input.
     *
     * @return the text
     */
    public String text() {
      return text;
    }
    private InputData(InputDataBuilder builder) {
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      text = builder.text;
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
    private String text;

    private InputDataBuilder(InputData input_data) {
      text = input_data.text;
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
      this.text = text;
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
     * Set the text.
     *
     * @param text the text
     * @return the InputData builder
     */
    public InputDataBuilder text(String text) {
      this.text = text;
      return this;
    }
  }

  /**
   * Intent.
   */
  public class Intent extends IBMWatsonGenericModel {
    private String intent;
    private Datetime created;
    private Datetime updated;
    private String description;
    /**
     * Gets the intent.
     *
     * The name of the intent.
     *
     * @return the intent
     */
    public String getIntent() {
      return intent;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the intent.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the intent.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the description.
     *
     * The description of the intent.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }

    /**
     * Sets the intent.
     *
     * @param intent the new intent
     */
    public void setIntent(final String intent) {
      this.intent = intent;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }
  }

  /**
   * IntentCollection.
   */
  public class IntentCollection extends IBMWatsonGenericModel {
    private List<IntentExport> intents;
    private Pagination pagination;
    /**
     * Gets the intents.
     *
     * An array of intents.
     *
     * @return the intents
     */
    public List<IntentExport> getIntents() {
      return intents;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<IntentExport> intents) {
      this.intents = intents;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * IntentExport.
   */
  public class IntentExport extends IBMWatsonGenericModel {
    private String intent;
    private Datetime created;
    private Datetime updated;
    private String description;
    private List<Example> examples;
    /**
     * Gets the intent.
     *
     * The name of the intent.
     *
     * @return the intent
     */
    public String getIntent() {
      return intent;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the intent.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the intent.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the description.
     *
     * The description of the intent.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the examples.
     *
     * An array of user input examples.
     *
     * @return the examples
     */
    public List<Example> getExamples() {
      return examples;
    }

    /**
     * Sets the intent.
     *
     * @param intent the new intent
     */
    public void setIntent(final String intent) {
      this.intent = intent;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the examples.
     *
     * @param examples the new examples
     */
    public void setExamples(final List<Example> examples) {
      this.examples = examples;
    }
  }

  /**
   * The listCounterexamples options.
   */
  public class ListCounterexamplesOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListCounterexamplesOptions(ListCounterexamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private String workspace_id;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListCounterexamplesOptionsBuilder(ListCounterexamplesOptions list_counterexamples_options) {
      workspace_id = list_counterexamples_options.workspace_id;
      page_limit = list_counterexamples_options.page_limit;
      include_count = list_counterexamples_options.include_count;
      sort_serialized_name = list_counterexamples_options.sort_serialized_name;
      cursor = list_counterexamples_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListCounterexamplesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public ListCounterexamplesOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
      return this;
    }

    /**
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListCounterexamplesOptions builder
     */
    public ListCounterexamplesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * The listDialogNodes options.
   */
  public class ListDialogNodesOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListDialogNodesOptions(ListDialogNodesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private String workspace_id;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListDialogNodesOptionsBuilder(ListDialogNodesOptions list_dialog_nodes_options) {
      workspace_id = list_dialog_nodes_options.workspace_id;
      page_limit = list_dialog_nodes_options.page_limit;
      include_count = list_dialog_nodes_options.include_count;
      sort_serialized_name = list_dialog_nodes_options.sort_serialized_name;
      cursor = list_dialog_nodes_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListDialogNodesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public ListDialogNodesOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
      return this;
    }

    /**
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListDialogNodesOptions builder
     */
    public ListDialogNodesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * The listEntities options.
   */
  public class ListEntitiesOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private Boolean export_serialized_name;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListEntitiesOptions(ListEntitiesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
      export_serialized_name = builder.export_serialized_name;
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private String workspace_id;
    private Boolean export_serialized_name;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListEntitiesOptionsBuilder(ListEntitiesOptions list_entities_options) {
      workspace_id = list_entities_options.workspace_id;
      export_serialized_name = list_entities_options.export_serialized_name;
      page_limit = list_entities_options.page_limit;
      include_count = list_entities_options.include_count;
      sort_serialized_name = list_entities_options.sort_serialized_name;
      cursor = list_entities_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListEntitiesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public ListEntitiesOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListEntitiesOptions builder
     */
    public ListEntitiesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * The listExamples options.
   */
  public class ListExamplesOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
    /**
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListExamplesOptions(ListExamplesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private String workspace_id;
    private String intent;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListExamplesOptionsBuilder(ListExamplesOptions list_examples_options) {
      workspace_id = list_examples_options.workspace_id;
      intent = list_examples_options.intent;
      page_limit = list_examples_options.page_limit;
      include_count = list_examples_options.include_count;
      sort_serialized_name = list_examples_options.sort_serialized_name;
      cursor = list_examples_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListExamplesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     */
    public ListExamplesOptionsBuilder(String workspace_id, String intent) {
      this.workspace_id = workspace_id;
      this.intent = intent;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListExamplesOptions builder
     */
    public ListExamplesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * The listIntents options.
   */
  public class ListIntentsOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private Boolean export_serialized_name;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListIntentsOptions(ListIntentsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
      export_serialized_name = builder.export_serialized_name;
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private String workspace_id;
    private Boolean export_serialized_name;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListIntentsOptionsBuilder(ListIntentsOptions list_intents_options) {
      workspace_id = list_intents_options.workspace_id;
      export_serialized_name = list_intents_options.export_serialized_name;
      page_limit = list_intents_options.page_limit;
      include_count = list_intents_options.include_count;
      sort_serialized_name = list_intents_options.sort_serialized_name;
      cursor = list_intents_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListIntentsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public ListIntentsOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListIntentsOptions builder
     */
    public ListIntentsOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * The listLogs options.
   */
  public class ListLogsOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String sort_serialized_name;
    private String filter;
    private Long page_limit;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the filter.
     *
     * A cacheable parameter that limits the results to those matching the specified filter. For more information, see the [documentation](https://console.bluemix.net/docs/services/conversation/filter-reference.html#filter-query-syntax).
     *
     * @return the filter
     */
    public String filter() {
      return filter;
    }
    /**
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListLogsOptions(ListLogsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
      sort_serialized_name = builder.sort_serialized_name;
      filter = builder.filter;
      page_limit = builder.page_limit;
      cursor = builder.cursor;
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
    private String workspace_id;
    private String sort_serialized_name;
    private String filter;
    private Long page_limit;
    private String cursor;

    private ListLogsOptionsBuilder(ListLogsOptions list_logs_options) {
      workspace_id = list_logs_options.workspace_id;
      sort_serialized_name = list_logs_options.sort_serialized_name;
      filter = list_logs_options.filter;
      page_limit = list_logs_options.page_limit;
      cursor = list_logs_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListLogsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public ListLogsOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListLogsOptions builder
     */
    public ListLogsOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
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
  }

  /**
   * The listSynonyms options.
   */
  public class ListSynonymsOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListSynonymsOptions(ListSynonymsOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private String workspace_id;
    private String entity;
    private String value;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListSynonymsOptionsBuilder(ListSynonymsOptions list_synonyms_options) {
      workspace_id = list_synonyms_options.workspace_id;
      entity = list_synonyms_options.entity;
      value = list_synonyms_options.value;
      page_limit = list_synonyms_options.page_limit;
      include_count = list_synonyms_options.include_count;
      sort_serialized_name = list_synonyms_options.sort_serialized_name;
      cursor = list_synonyms_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListSynonymsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     */
    public ListSynonymsOptionsBuilder(String workspace_id, String entity, String value) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListSynonymsOptions builder
     */
    public ListSynonymsOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * The listValues options.
   */
  public class ListValuesOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private Boolean export_serialized_name;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListValuesOptions(ListValuesOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      export_serialized_name = builder.export_serialized_name;
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private String workspace_id;
    private String entity;
    private Boolean export_serialized_name;
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListValuesOptionsBuilder(ListValuesOptions list_values_options) {
      workspace_id = list_values_options.workspace_id;
      entity = list_values_options.entity;
      export_serialized_name = list_values_options.export_serialized_name;
      page_limit = list_values_options.page_limit;
      include_count = list_values_options.include_count;
      sort_serialized_name = list_values_options.sort_serialized_name;
      cursor = list_values_options.cursor;
    }

    /**
     * Instantiates a new builder.
     */
    public ListValuesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     */
    public ListValuesOptionsBuilder(String workspace_id, String entity) {
      this.workspace_id = workspace_id;
      this.entity = entity;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListValuesOptions builder
     */
    public ListValuesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * The listWorkspaces options.
   */
  public class ListWorkspacesOptions extends IBMWatsonGenericModel {
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;
    /**
     * Gets the page_limit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the page_limit
     */
    public Long pageLimit() {
      return page_limit;
    }
    /**
     * Gets the include_count.
     *
     * Whether to include information about the number of records returned.
     *
     * @return the include_count
     */
    public Boolean includeCount() {
      return include_count;
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
     * Gets the cursor.
     *
     * A token identifying the last value from the previous page of results.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
    private ListWorkspacesOptions(ListWorkspacesOptionsBuilder builder) {
      page_limit = builder.page_limit;
      include_count = builder.include_count;
      sort_serialized_name = builder.sort_serialized_name;
      cursor = builder.cursor;
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
    private Long page_limit;
    private Boolean include_count;
    private String sort_serialized_name;
    private String cursor;

    private ListWorkspacesOptionsBuilder(ListWorkspacesOptions list_workspaces_options) {
      page_limit = list_workspaces_options.page_limit;
      include_count = list_workspaces_options.include_count;
      sort_serialized_name = list_workspaces_options.sort_serialized_name;
      cursor = list_workspaces_options.cursor;
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
     * Set the page_limit.
     *
     * @param page_limit the page_limit
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder pageLimit(Long page_limit) {
      this.page_limit = page_limit;
      return this;
    }

    /**
     * Set the include_count.
     *
     * @param include_count the include_count
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder includeCount(Boolean include_count) {
      this.include_count = include_count;
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
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListWorkspacesOptions builder
     */
    public ListWorkspacesOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }
  }

  /**
   * LogCollection.
   */
  public class LogCollection extends IBMWatsonGenericModel {
    private List<LogExport> logs;
    private LogPagination pagination;
    /**
     * Gets the logs.
     *
     * An array of log events.
     *
     * @return the logs
     */
    public List<LogExport> getLogs() {
      return logs;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public LogPagination getPagination() {
      return pagination;
    }

    /**
     * Sets the logs.
     *
     * @param logs the new logs
     */
    public void setLogs(final List<LogExport> logs) {
      this.logs = logs;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final LogPagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * LogExport.
   */
  public class LogExport extends IBMWatsonGenericModel {
    private MessageRequest request;
    private MessageResponse response;
    private String log_id;
    private String request_timestamp;
    private String response_timestamp;
    private String workspace_id;
    private String language;
    /**
     * Gets the request.
     *
     * A request formatted for the Conversation service.
     *
     * @return the request
     */
    public MessageRequest getRequest() {
      return request;
    }
    /**
     * Gets the response.
     *
     * A response from the Conversation service.
     *
     * @return the response
     */
    public MessageResponse getResponse() {
      return response;
    }
    /**
     * Gets the log_id.
     *
     * A unique identifier for the logged message.
     *
     * @return the log_id
     */
    public String getLogId() {
      return log_id;
    }
    /**
     * Gets the request_timestamp.
     *
     * The timestamp for receipt of the message.
     *
     * @return the request_timestamp
     */
    public String getRequestTimestamp() {
      return request_timestamp;
    }
    /**
     * Gets the response_timestamp.
     *
     * The timestamp for the system response to the message.
     *
     * @return the response_timestamp
     */
    public String getResponseTimestamp() {
      return response_timestamp;
    }
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String getWorkspaceId() {
      return workspace_id;
    }
    /**
     * Gets the language.
     *
     * The language of the workspace where the message request was made.
     *
     * @return the language
     */
    public String getLanguage() {
      return language;
    }

    /**
     * Sets the request.
     *
     * @param request the new request
     */
    public void setRequest(final MessageRequest request) {
      this.request = request;
    }

    /**
     * Sets the response.
     *
     * @param response the new response
     */
    public void setResponse(final MessageResponse response) {
      this.response = response;
    }

    /**
     * Sets the log_id.
     *
     * @param log_id the new log_id
     */
    public void setLogId(final String log_id) {
      this.log_id = log_id;
    }

    /**
     * Sets the request_timestamp.
     *
     * @param request_timestamp the new request_timestamp
     */
    public void setRequestTimestamp(final String request_timestamp) {
      this.request_timestamp = request_timestamp;
    }

    /**
     * Sets the response_timestamp.
     *
     * @param response_timestamp the new response_timestamp
     */
    public void setResponseTimestamp(final String response_timestamp) {
      this.response_timestamp = response_timestamp;
    }

    /**
     * Sets the workspace_id.
     *
     * @param workspace_id the new workspace_id
     */
    public void setWorkspaceId(final String workspace_id) {
      this.workspace_id = workspace_id;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language = language;
    }
  }

  /**
   * Log message details.
   */
  public class LogMessage extends IBMWatsonDynamicModel {

    /**
     * Gets the level.
     *
     * @return the level
     */
    public String getLevel() {
      return (String)JSON.deserialize(JSON.serialize(this.get('level')), String.class);
    }

    /**
     * Gets the msg.
     *
     * @return the msg
     */
    public String getMsg() {
      return (String)JSON.deserialize(JSON.serialize(this.get('msg')), String.class);
    }

    /**
     * Sets the level.
     *
     * @param level the new level
     */
    public void setLevel(final String level) {
      this.put('level', level);
    }

    /**
     * Sets the msg.
     *
     * @param msg the new msg
     */
    public void setMsg(final String msg) {
      this.put('msg', msg);
    }
  }

  /**
   * The pagination data for the returned objects.
   */
  public class LogPagination extends IBMWatsonGenericModel {
    private String next_url;
    private Long matched;
    /**
     * Gets the next_url.
     *
     * The URL that will return the next page of results.
     *
     * @return the next_url
     */
    public String getNextUrl() {
      return next_url;
    }
    /**
     * Gets the matched.
     *
     * Reserved for future use.
     *
     * @return the matched
     */
    public Long getMatched() {
      return matched;
    }

    /**
     * Sets the next_url.
     *
     * @param next_url the new next_url
     */
    public void setNextUrl(final String next_url) {
      this.next_url = next_url;
    }

    /**
     * Sets the matched.
     *
     * @param matched the new matched
     */
    public void setMatched(final long matched) {
      this.matched = matched;
    }
  }

  /**
   * An input object that includes the input text.
   */
  public class MessageInput extends IBMWatsonGenericModel {
    private String text;
    /**
     * Gets the text.
     *
     * The user's input.
     *
     * @return the text
     */
    public String getText() {
      return text;
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final String text) {
      this.text = text;
    }
  }

  /**
   * The message options.
   */
  public class MessageOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private InputData input;
    private Boolean alternate_intents;
    private Context context;
    private List<RuntimeEntity> entities;
    private List<RuntimeIntent> intents;
    private OutputData output;
    /**
     * Gets the workspace_id.
     *
     * Unique identifier of the workspace.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the alternate_intents.
     *
     * Whether to return more than one intent. Set to `true` to return all matching intents.
     *
     * @return the alternate_intents
     */
    public Boolean alternateIntents() {
      return alternate_intents;
    }
    /**
     * Gets the context.
     *
     * State information for the conversation. Continue a conversation by including the context object from the previous response.
     *
     * @return the context
     */
    public Context context() {
      return context;
    }
    /**
     * Gets the entities.
     *
     * Include the entities from the previous response when they do not need to change and to prevent Watson from trying to identify them.
     *
     * @return the entities
     */
    public List<RuntimeEntity> entities() {
      return entities;
    }
    /**
     * Gets the intents.
     *
     * An array of name-confidence pairs for the user input. Include the intents from the previous response when they do not need to change and to prevent Watson from trying to identify them.
     *
     * @return the intents
     */
    public List<RuntimeIntent> intents() {
      return intents;
    }
    /**
     * Gets the output.
     *
     * System output. Include the output from the request when you have several requests within the same Dialog turn to pass back in the intermediate information.
     *
     * @return the output
     */
    public OutputData output() {
      return output;
    }
    private MessageOptions(MessageOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
      input = builder.input;
      alternate_intents = builder.alternate_intents;
      context = builder.context;
      entities = builder.entities;
      intents = builder.intents;
      output = builder.output;
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
    private String workspace_id;
    private InputData input;
    private Boolean alternate_intents;
    private Context context;
    private List<RuntimeEntity> entities;
    private List<RuntimeIntent> intents;
    private OutputData output;

    private MessageOptionsBuilder(MessageOptions message_options) {
      workspace_id = message_options.workspace_id;
      input = message_options.input;
      alternate_intents = message_options.alternate_intents;
      context = message_options.context;
      entities = message_options.entities;
      intents = message_options.intents;
      output = message_options.output;
    }

    /**
     * Instantiates a new builder.
     */
    public MessageOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public MessageOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the alternate_intents.
     *
     * @param alternate_intents the alternate_intents
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder alternateIntents(Boolean alternate_intents) {
      this.alternate_intents = alternate_intents;
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
  }

  /**
   * A request formatted for the Conversation service.
   */
  public class MessageRequest extends IBMWatsonGenericModel {
    private InputData input;
    private Boolean alternate_intents;
    private Context context;
    private List<RuntimeEntity> entities;
    private List<RuntimeIntent> intents;
    private OutputData output;
    /**
     * Gets the input.
     *
     * An input object that includes the input text.
     *
     * @return the input
     */
    public InputData getInput() {
      return input;
    }
    /**
     * Gets the alternate_intents.
     *
     * Whether to return more than one intent. Set to `true` to return all matching intents.
     *
     * @return the alternate_intents
     */
    public Boolean isAlternateIntents() {
      return alternate_intents;
    }
    /**
     * Gets the context.
     *
     * State information for the conversation. Continue a conversation by including the context object from the previous response.
     *
     * @return the context
     */
    public Context getContext() {
      return context;
    }
    /**
     * Gets the entities.
     *
     * Include the entities from the previous response when they do not need to change and to prevent Watson from trying to identify them.
     *
     * @return the entities
     */
    public List<RuntimeEntity> getEntities() {
      return entities;
    }
    /**
     * Gets the intents.
     *
     * An array of name-confidence pairs for the user input. Include the intents from the previous response when they do not need to change and to prevent Watson from trying to identify them.
     *
     * @return the intents
     */
    public List<RuntimeIntent> getIntents() {
      return intents;
    }
    /**
     * Gets the output.
     *
     * System output. Include the output from the request when you have several requests within the same Dialog turn to pass back in the intermediate information.
     *
     * @return the output
     */
    public OutputData getOutput() {
      return output;
    }

    /**
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final InputData input) {
      this.input = input;
    }

    /**
     * Sets the alternate_intents.
     *
     * @param alternate_intents the new alternate_intents
     */
    public void setAlternateIntents(final Boolean alternate_intents) {
      this.alternate_intents = alternate_intents;
    }

    /**
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final Context context) {
      this.context = context;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<RuntimeEntity> entities) {
      this.entities = entities;
    }

    /**
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<RuntimeIntent> intents) {
      this.intents = intents;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final OutputData output) {
      this.output = output;
    }
  }

  /**
   * A response from the Conversation service.
   */
  public class MessageResponse extends IBMWatsonDynamicModel {

    /**
     * Gets the input.
     *
     * @return the input
     */
    public MessageInput getInput() {
      return (MessageInput)JSON.deserialize(JSON.serialize(this.get('input')), MessageInput.class);
    }

    /**
     * Gets the intents.
     *
     * @return the intents
     */
    public List<RuntimeIntent> getIntents() {
      return (List<RuntimeIntent>)JSON.deserialize(JSON.serialize(this.get('intents')), List<RuntimeIntent>.class);
    }

    /**
     * Gets the entities.
     *
     * @return the entities
     */
    public List<RuntimeEntity> getEntities() {
      return (List<RuntimeEntity>)JSON.deserialize(JSON.serialize(this.get('entities')), List<RuntimeEntity>.class);
    }

    /**
     * Gets the alternate_intents.
     *
     * @return the alternate_intents
     */
    public Boolean isAlternateIntents() {
      return (Boolean)JSON.deserialize(JSON.serialize(this.get('alternate_intents')), Boolean.class);
    }

    /**
     * Gets the context.
     *
     * @return the context
     */
    public Context getContext() {
      return (Context)JSON.deserialize(JSON.serialize(this.get('context')), Context.class);
    }

    /**
     * Gets the output.
     *
     * @return the output
     */
    public OutputData getOutput() {
      return (OutputData)JSON.deserialize(JSON.serialize(this.get('output')), OutputData.class);
    }

    /**
     * Sets the input.
     *
     * @param input the new input
     */
    public void setInput(final MessageInput input) {
      this.put('input', input);
    }

    /**
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<RuntimeIntent> intents) {
      this.put('intents', intents);
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<RuntimeEntity> entities) {
      this.put('entities', entities);
    }

    /**
     * Sets the alternate_intents.
     *
     * @param alternate_intents the new alternate_intents
     */
    public void setAlternateIntents(final Boolean alternate_intents) {
      this.put('alternate_intents', alternate_intents);
    }

    /**
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final Context context) {
      this.put('context', context);
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final OutputData output) {
      this.put('output', output);
    }
  }

  /**
   * An output object that includes the response to the user, the nodes that were hit, and messages from the log.
   */
  public class OutputData extends IBMWatsonDynamicModel {

    /**
     * Gets the log_messages.
     *
     * @return the log_messages
     */
    public List<LogMessage> getLogMessages() {
      return (List<LogMessage>)JSON.deserialize(JSON.serialize(this.get('log_messages')), List<LogMessage>.class);
    }

    /**
     * Gets the text.
     *
     * @return the text
     */
    public List<String> getText() {
      return (List<String>)JSON.deserialize(JSON.serialize(this.get('text')), List<String>.class);
    }

    /**
     * Gets the nodes_visited.
     *
     * @return the nodes_visited
     */
    public List<String> getNodesVisited() {
      return (List<String>)JSON.deserialize(JSON.serialize(this.get('nodes_visited')), List<String>.class);
    }

    /**
     * Sets the log_messages.
     *
     * @param log_messages the new log_messages
     */
    public void setLogMessages(final List<LogMessage> log_messages) {
      this.put('log_messages', log_messages);
    }

    /**
     * Sets the text.
     *
     * @param text the new text
     */
    public void setText(final List<String> text) {
      this.put('text', text);
    }

    /**
     * Sets the nodes_visited.
     *
     * @param nodes_visited the new nodes_visited
     */
    public void setNodesVisited(final List<String> nodes_visited) {
      this.put('nodes_visited', nodes_visited);
    }
  }

  /**
   * The pagination data for the returned objects.
   */
  public class Pagination extends IBMWatsonGenericModel {
    private String refresh_url;
    private String next_url;
    private Long total;
    private Long matched;
    /**
     * Gets the refresh_url.
     *
     * The URL that will return the same page of results.
     *
     * @return the refresh_url
     */
    public String getRefreshUrl() {
      return refresh_url;
    }
    /**
     * Gets the next_url.
     *
     * The URL that will return the next page of results.
     *
     * @return the next_url
     */
    public String getNextUrl() {
      return next_url;
    }
    /**
     * Gets the total.
     *
     * Reserved for future use.
     *
     * @return the total
     */
    public Long getTotal() {
      return total;
    }
    /**
     * Gets the matched.
     *
     * Reserved for future use.
     *
     * @return the matched
     */
    public Long getMatched() {
      return matched;
    }

    /**
     * Sets the refresh_url.
     *
     * @param refresh_url the new refresh_url
     */
    public void setRefreshUrl(final String refresh_url) {
      this.refresh_url = refresh_url;
    }

    /**
     * Sets the next_url.
     *
     * @param next_url the new next_url
     */
    public void setNextUrl(final String next_url) {
      this.next_url = next_url;
    }

    /**
     * Sets the total.
     *
     * @param total the new total
     */
    public void setTotal(final long total) {
      this.total = total;
    }

    /**
     * Sets the matched.
     *
     * @param matched the new matched
     */
    public void setMatched(final long matched) {
      this.matched = matched;
    }
  }

  /**
   * A term from the request that was identified as an entity.
   */
  public class RuntimeEntity extends IBMWatsonDynamicModel {

    /**
     * Gets the entity.
     *
     * @return the entity
     */
    public String getEntity() {
      return (String)JSON.deserialize(JSON.serialize(this.get('entity')), String.class);
    }

    /**
     * Gets the location.
     *
     * @return the location
     */
    public List<Long> getLocation() {
      return (List<Long>)JSON.deserialize(JSON.serialize(this.get('location')), List<Long>.class);
    }

    /**
     * Gets the value.
     *
     * @return the value
     */
    public String getValue() {
      return (String)JSON.deserialize(JSON.serialize(this.get('value')), String.class);
    }

    /**
     * Gets the confidence.
     *
     * @return the confidence
     */
    public Double getConfidence() {
      return (Double)JSON.deserialize(JSON.serialize(this.get('confidence')), Double.class);
    }

    /**
     * Gets the metadata.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return (Map<String, String>)JSON.deserialize(JSON.serialize(this.get('metadata')), Map<String, String>.class);
    }

    /**
     * Sets the entity.
     *
     * @param entity the new entity
     */
    public void setEntity(final String entity) {
      this.put('entity', entity);
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final List<Long> location) {
      this.put('location', location);
    }

    /**
     * Sets the value.
     *
     * @param value the new value
     */
    public void setValue(final String value) {
      this.put('value', value);
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.put('confidence', confidence);
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.put('metadata', metadata);
    }
  }

  /**
   * An intent identified in the user input.
   */
  public class RuntimeIntent extends IBMWatsonDynamicModel {

    /**
     * Gets the intent.
     *
     * @return the intent
     */
    public String getIntent() {
      return (String)JSON.deserialize(JSON.serialize(this.get('intent')), String.class);
    }

    /**
     * Gets the confidence.
     *
     * @return the confidence
     */
    public Double getConfidence() {
      return (Double)JSON.deserialize(JSON.serialize(this.get('confidence')), Double.class);
    }

    /**
     * Sets the intent.
     *
     * @param intent the new intent
     */
    public void setIntent(final String intent) {
      this.put('intent', intent);
    }

    /**
     * Sets the confidence.
     *
     * @param confidence the new confidence
     */
    public void setConfidence(final Double confidence) {
      this.put('confidence', confidence);
    }
  }

  /**
   * Synonym.
   */
  public class Synonym extends IBMWatsonGenericModel {
    private String synonym;
    private Datetime created;
    private Datetime updated;
    /**
     * Gets the synonym.
     *
     * The text of the synonym.
     *
     * @return the synonym
     */
    public String getSynonym() {
      return synonym;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the synonym.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the most recent update to the synonym.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }

    /**
     * Sets the synonym.
     *
     * @param synonym the new synonym
     */
    public void setSynonym(final String synonym) {
      this.synonym = synonym;
    }
  }

  /**
   * SynonymCollection.
   */
  public class SynonymCollection extends IBMWatsonGenericModel {
    private List<Synonym> synonyms;
    private Pagination pagination;
    /**
     * Gets the synonyms.
     *
     * An array of synonyms.
     *
     * @return the synonyms
     */
    public List<Synonym> getSynonyms() {
      return synonyms;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the synonyms.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<Synonym> synonyms) {
      this.synonyms = synonyms;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * For internal use only.
   */
  public class SystemResponse extends IBMWatsonDynamicModel {
  }

  /**
   * The updateCounterexample options.
   */
  public class UpdateCounterexampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String text;
    private String new_text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the new_text.
     *
     * The text of the example to be marked as irrelevant input.
     *
     * @return the new_text
     */
    public String newText() {
      return new_text;
    }
    private UpdateCounterexampleOptions(UpdateCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspace_id = builder.workspace_id;
      text = builder.text;
      new_text = builder.new_text;
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
    private String workspace_id;
    private String text;
    private String new_text;

    private UpdateCounterexampleOptionsBuilder(UpdateCounterexampleOptions update_counterexample_options) {
      workspace_id = update_counterexample_options.workspace_id;
      text = update_counterexample_options.text;
      new_text = update_counterexample_options.new_text;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateCounterexampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param text the text
     */
    public UpdateCounterexampleOptionsBuilder(String workspace_id, String text) {
      this.workspace_id = workspace_id;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the new_text.
     *
     * @param new_text the new_text
     * @return the UpdateCounterexampleOptions builder
     */
    public UpdateCounterexampleOptionsBuilder newText(String new_text) {
      this.new_text = new_text;
      return this;
    }
  }

  /**
   * The UpdateDialogNode options.
   */
  public class UpdateDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String dialog_node;
    private String new_type;
    private List<DialogNodeAction> new_actions;
    private String new_conditions;
    private Map<String, String> new_context;
    private String new_previous_sibling;
    private String new_variable;
    private Map<String, String> new_metadata;
    private String new_title;
    private String new_description;
    private String new_event_name;
    private DialogNodeNextStep new_next_step;
    private Map<String, String> new_output;
    private String new_parent;
    private String new_dialog_node;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the dialog_node.
     *
     * The dialog node ID (for example, `get_order`).
     *
     * @return the dialog_node
     */
    public String dialogNode() {
      return dialog_node;
    }
    /**
     * Gets the new_type.
     *
     * How the node is processed.
     *
     * @return the new_type
     */
    public String newType() {
      return new_type;
    }
    /**
     * Gets the new_actions.
     *
     * The actions for the dialog node.
     *
     * @return the new_actions
     */
    public List<DialogNodeAction> newActions() {
      return new_actions;
    }
    /**
     * Gets the new_conditions.
     *
     * The condition that will trigger the dialog node.
     *
     * @return the new_conditions
     */
    public String newConditions() {
      return new_conditions;
    }
    /**
     * Gets the new_context.
     *
     * The context for the dialog node.
     *
     * @return the new_context
     */
    public Map<String, String> newContext() {
      return new_context;
    }
    /**
     * Gets the new_previous_sibling.
     *
     * The previous dialog node.
     *
     * @return the new_previous_sibling
     */
    public String newPreviousSibling() {
      return new_previous_sibling;
    }
    /**
     * Gets the new_variable.
     *
     * The location in the dialog context where output is stored.
     *
     * @return the new_variable
     */
    public String newVariable() {
      return new_variable;
    }
    /**
     * Gets the new_metadata.
     *
     * The metadata for the dialog node.
     *
     * @return the new_metadata
     */
    public Map<String, String> newMetadata() {
      return new_metadata;
    }
    /**
     * Gets the new_title.
     *
     * The alias used to identify the dialog node.
     *
     * @return the new_title
     */
    public String newTitle() {
      return new_title;
    }
    /**
     * Gets the new_description.
     *
     * The description of the dialog node.
     *
     * @return the new_description
     */
    public String newDescription() {
      return new_description;
    }
    /**
     * Gets the new_event_name.
     *
     * How an `event_handler` node is processed.
     *
     * @return the new_event_name
     */
    public String newEventName() {
      return new_event_name;
    }
    /**
     * Gets the new_next_step.
     *
     * The next step to execute following this dialog node.
     *
     * @return the new_next_step
     */
    public DialogNodeNextStep newNextStep() {
      return new_next_step;
    }
    /**
     * Gets the new_output.
     *
     * The output of the dialog node.
     *
     * @return the new_output
     */
    public Map<String, String> newOutput() {
      return new_output;
    }
    /**
     * Gets the new_parent.
     *
     * The ID of the parent dialog node (if any).
     *
     * @return the new_parent
     */
    public String newParent() {
      return new_parent;
    }
    /**
     * Gets the new_dialog_node.
     *
     * The dialog node ID.
     *
     * @return the new_dialog_node
     */
    public String newDialogNode() {
      return new_dialog_node;
    }
    private UpdateDialogNodeOptions(UpdateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialog_node, 'dialog_node cannot be empty');
      IBMWatsonValidator.notNull(builder.new_dialog_node, 'new_dialog_node cannot be null');
      workspace_id = builder.workspace_id;
      dialog_node = builder.dialog_node;
      new_type = builder.new_type;
      new_actions = builder.new_actions;
      new_conditions = builder.new_conditions;
      new_context = builder.new_context;
      new_previous_sibling = builder.new_previous_sibling;
      new_variable = builder.new_variable;
      new_metadata = builder.new_metadata;
      new_title = builder.new_title;
      new_description = builder.new_description;
      new_event_name = builder.new_event_name;
      new_next_step = builder.new_next_step;
      new_output = builder.new_output;
      new_parent = builder.new_parent;
      new_dialog_node = builder.new_dialog_node;
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
    private String workspace_id;
    private String dialog_node;
    private String new_type;
    private List<DialogNodeAction> new_actions;
    private String new_conditions;
    private Map<String, String> new_context;
    private String new_previous_sibling;
    private String new_variable;
    private Map<String, String> new_metadata;
    private String new_title;
    private String new_description;
    private String new_event_name;
    private DialogNodeNextStep new_next_step;
    private Map<String, String> new_output;
    private String new_parent;
    private String new_dialog_node;

    private UpdateDialogNodeOptionsBuilder(UpdateDialogNodeOptions update_dialog_node_options) {
      workspace_id = update_dialog_node_options.workspace_id;
      dialog_node = update_dialog_node_options.dialog_node;
      new_type = update_dialog_node_options.new_type;
      new_actions = update_dialog_node_options.new_actions;
      new_conditions = update_dialog_node_options.new_conditions;
      new_context = update_dialog_node_options.new_context;
      new_previous_sibling = update_dialog_node_options.new_previous_sibling;
      new_variable = update_dialog_node_options.new_variable;
      new_metadata = update_dialog_node_options.new_metadata;
      new_title = update_dialog_node_options.new_title;
      new_description = update_dialog_node_options.new_description;
      new_event_name = update_dialog_node_options.new_event_name;
      new_next_step = update_dialog_node_options.new_next_step;
      new_output = update_dialog_node_options.new_output;
      new_parent = update_dialog_node_options.new_parent;
      new_dialog_node = update_dialog_node_options.new_dialog_node;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateDialogNodeOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param dialog_node the dialog_node
     * @param new_dialog_node the new_dialog_node
     */
    public UpdateDialogNodeOptionsBuilder(String workspace_id, String dialog_node, String new_dialog_node) {
      this.workspace_id = workspace_id;
      this.dialog_node = dialog_node;
      this.new_dialog_node = new_dialog_node;
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
     * Adds an new_actions to new_actions.
     *
     * @param new_actions the new new_actions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder addNewActions(DialogNodeAction new_actions) {
      IBMWatsonValidator.notNull(new_actions, 'new_actions cannot be null');
      if (this.new_actions == null) {
        this.new_actions = new List<DialogNodeAction>();
      }
      this.new_actions.add(new_actions);
      return this;
    }

    /**
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
      return this;
    }

    /**
     * Set the dialog_node.
     *
     * @param dialog_node the dialog_node
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder dialogNode(String dialog_node) {
      this.dialog_node = dialog_node;
      return this;
    }

    /**
     * Set the new_type.
     *
     * @param new_type the new_type
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newType(String new_type) {
      this.new_type = new_type;
      return this;
    }

    /**
     * Set the new_actions.
     * Existing new_actions will be replaced.
     *
     * @param new_actions the new_actions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newActions(List<DialogNodeAction> new_actions) {
      this.new_actions = new_actions;
      return this;
    }

    /**
     * Set the new_conditions.
     *
     * @param new_conditions the new_conditions
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newConditions(String new_conditions) {
      this.new_conditions = new_conditions;
      return this;
    }

    /**
     * Set the new_context.
     *
     * @param new_context the new_context
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newContext(Map<String, String> new_context) {
      this.new_context = new_context;
      return this;
    }

    /**
     * Set the new_previous_sibling.
     *
     * @param new_previous_sibling the new_previous_sibling
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newPreviousSibling(String new_previous_sibling) {
      this.new_previous_sibling = new_previous_sibling;
      return this;
    }

    /**
     * Set the new_variable.
     *
     * @param new_variable the new_variable
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newVariable(String new_variable) {
      this.new_variable = new_variable;
      return this;
    }

    /**
     * Set the new_metadata.
     *
     * @param new_metadata the new_metadata
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newMetadata(Map<String, String> new_metadata) {
      this.new_metadata = new_metadata;
      return this;
    }

    /**
     * Set the new_title.
     *
     * @param new_title the new_title
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newTitle(String new_title) {
      this.new_title = new_title;
      return this;
    }

    /**
     * Set the new_description.
     *
     * @param new_description the new_description
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDescription(String new_description) {
      this.new_description = new_description;
      return this;
    }

    /**
     * Set the new_event_name.
     *
     * @param new_event_name the new_event_name
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newEventName(String new_event_name) {
      this.new_event_name = new_event_name;
      return this;
    }

    /**
     * Set the new_next_step.
     *
     * @param new_next_step the new_next_step
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newNextStep(DialogNodeNextStep new_next_step) {
      this.new_next_step = new_next_step;
      return this;
    }

    /**
     * Set the new_output.
     *
     * @param new_output the new_output
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newOutput(Map<String, String> new_output) {
      this.new_output = new_output;
      return this;
    }

    /**
     * Set the new_parent.
     *
     * @param new_parent the new_parent
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newParent(String new_parent) {
      this.new_parent = new_parent;
      return this;
    }

    /**
     * Set the new_dialog_node.
     *
     * @param new_dialog_node the new_dialog_node
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newDialogNode(String new_dialog_node) {
      this.new_dialog_node = new_dialog_node;
      return this;
    }
  }

  /**
   * The updateEntity options.
   */
  public class UpdateEntityOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private Boolean new_fuzzy_match;
    private String new_entity;
    private Map<String, String> new_metadata;
    private List<CreateValue> new_values;
    private String new_description;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the new_fuzzy_match.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the new_fuzzy_match
     */
    public Boolean newFuzzyMatch() {
      return new_fuzzy_match;
    }
    /**
     * Gets the new_entity.
     *
     * The name of the entity.
     *
     * @return the new_entity
     */
    public String newEntity() {
      return new_entity;
    }
    /**
     * Gets the new_metadata.
     *
     * Any metadata related to the entity.
     *
     * @return the new_metadata
     */
    public Map<String, String> newMetadata() {
      return new_metadata;
    }
    /**
     * Gets the new_values.
     *
     * An array of entity values.
     *
     * @return the new_values
     */
    public List<CreateValue> newValues() {
      return new_values;
    }
    /**
     * Gets the new_description.
     *
     * The description of the entity.
     *
     * @return the new_description
     */
    public String newDescription() {
      return new_description;
    }
    private UpdateEntityOptions(UpdateEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      new_fuzzy_match = builder.new_fuzzy_match;
      new_entity = builder.new_entity;
      new_metadata = builder.new_metadata;
      new_values = builder.new_values;
      new_description = builder.new_description;
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
    private String workspace_id;
    private String entity;
    private Boolean new_fuzzy_match;
    private String new_entity;
    private Map<String, String> new_metadata;
    private List<CreateValue> new_values;
    private String new_description;

    private UpdateEntityOptionsBuilder(UpdateEntityOptions update_entity_options) {
      workspace_id = update_entity_options.workspace_id;
      entity = update_entity_options.entity;
      new_fuzzy_match = update_entity_options.new_fuzzy_match;
      new_entity = update_entity_options.new_entity;
      new_metadata = update_entity_options.new_metadata;
      new_values = update_entity_options.new_values;
      new_description = update_entity_options.new_description;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateEntityOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     */
    public UpdateEntityOptionsBuilder(String workspace_id, String entity) {
      this.workspace_id = workspace_id;
      this.entity = entity;
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
     * Adds an new_values to new_values.
     *
     * @param new_values the new new_values
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder addNewValues(CreateValue new_values) {
      IBMWatsonValidator.notNull(new_values, 'new_values cannot be null');
      if (this.new_values == null) {
        this.new_values = new List<CreateValue>();
      }
      this.new_values.add(new_values);
      return this;
    }

    /**
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the new_fuzzy_match.
     *
     * @param new_fuzzy_match the new_fuzzy_match
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newFuzzyMatch(Boolean new_fuzzy_match) {
      this.new_fuzzy_match = new_fuzzy_match;
      return this;
    }

    /**
     * Set the new_entity.
     *
     * @param new_entity the new_entity
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newEntity(String new_entity) {
      this.new_entity = new_entity;
      return this;
    }

    /**
     * Set the new_metadata.
     *
     * @param new_metadata the new_metadata
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newMetadata(Map<String, String> new_metadata) {
      this.new_metadata = new_metadata;
      return this;
    }

    /**
     * Set the new_values.
     * Existing new_values will be replaced.
     *
     * @param new_values the new_values
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newValues(List<CreateValue> new_values) {
      this.new_values = new_values;
      return this;
    }

    /**
     * Set the new_description.
     *
     * @param new_description the new_description
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder newDescription(String new_description) {
      this.new_description = new_description;
      return this;
    }
  }

  /**
   * The updateExample options.
   */
  public class UpdateExampleOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private String text;
    private String new_text;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
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
     * Gets the new_text.
     *
     * The text of the user input example.
     *
     * @return the new_text
     */
    public String newText() {
      return new_text;
    }
    private UpdateExampleOptions(UpdateExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
      text = builder.text;
      new_text = builder.new_text;
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
    private String workspace_id;
    private String intent;
    private String text;
    private String new_text;

    private UpdateExampleOptionsBuilder(UpdateExampleOptions update_example_options) {
      workspace_id = update_example_options.workspace_id;
      intent = update_example_options.intent;
      text = update_example_options.text;
      new_text = update_example_options.new_text;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateExampleOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     * @param text the text
     */
    public UpdateExampleOptionsBuilder(String workspace_id, String intent, String text) {
      this.workspace_id = workspace_id;
      this.intent = intent;
      this.text = text;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the new_text.
     *
     * @param new_text the new_text
     * @return the UpdateExampleOptions builder
     */
    public UpdateExampleOptionsBuilder newText(String new_text) {
      this.new_text = new_text;
      return this;
    }
  }

  /**
   * The updateIntent options.
   */
  public class UpdateIntentOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String intent;
    private String new_intent;
    private List<CreateExample> new_examples;
    private String new_description;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the intent.
     *
     * The intent name (for example, `pizza_order`).
     *
     * @return the intent
     */
    public String intent() {
      return intent;
    }
    /**
     * Gets the new_intent.
     *
     * The name of the intent.
     *
     * @return the new_intent
     */
    public String newIntent() {
      return new_intent;
    }
    /**
     * Gets the new_examples.
     *
     * An array of user input examples for the intent.
     *
     * @return the new_examples
     */
    public List<CreateExample> newExamples() {
      return new_examples;
    }
    /**
     * Gets the new_description.
     *
     * The description of the intent.
     *
     * @return the new_description
     */
    public String newDescription() {
      return new_description;
    }
    private UpdateIntentOptions(UpdateIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspace_id = builder.workspace_id;
      intent = builder.intent;
      new_intent = builder.new_intent;
      new_examples = builder.new_examples;
      new_description = builder.new_description;
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
    private String workspace_id;
    private String intent;
    private String new_intent;
    private List<CreateExample> new_examples;
    private String new_description;

    private UpdateIntentOptionsBuilder(UpdateIntentOptions update_intent_options) {
      workspace_id = update_intent_options.workspace_id;
      intent = update_intent_options.intent;
      new_intent = update_intent_options.new_intent;
      new_examples = update_intent_options.new_examples;
      new_description = update_intent_options.new_description;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateIntentOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param intent the intent
     */
    public UpdateIntentOptionsBuilder(String workspace_id, String intent) {
      this.workspace_id = workspace_id;
      this.intent = intent;
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
     * Adds an new_examples to new_examples.
     *
     * @param new_examples the new new_examples
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder addNewExamples(CreateExample new_examples) {
      IBMWatsonValidator.notNull(new_examples, 'new_examples cannot be null');
      if (this.new_examples == null) {
        this.new_examples = new List<CreateExample>();
      }
      this.new_examples.add(new_examples);
      return this;
    }

    /**
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the new_intent.
     *
     * @param new_intent the new_intent
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newIntent(String new_intent) {
      this.new_intent = new_intent;
      return this;
    }

    /**
     * Set the new_examples.
     * Existing new_examples will be replaced.
     *
     * @param new_examples the new_examples
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newExamples(List<CreateExample> new_examples) {
      this.new_examples = new_examples;
      return this;
    }

    /**
     * Set the new_description.
     *
     * @param new_description the new_description
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder newDescription(String new_description) {
      this.new_description = new_description;
      return this;
    }
  }

  /**
   * The updateSynonym options.
   */
  public class UpdateSynonymOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;
    private String new_synonym;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the new_synonym.
     *
     * The text of the synonym.
     *
     * @return the new_synonym
     */
    public String newSynonym() {
      return new_synonym;
    }
    private UpdateSynonymOptions(UpdateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym, 'synonym cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
      synonym = builder.synonym;
      new_synonym = builder.new_synonym;
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
    private String workspace_id;
    private String entity;
    private String value;
    private String synonym;
    private String new_synonym;

    private UpdateSynonymOptionsBuilder(UpdateSynonymOptions update_synonym_options) {
      workspace_id = update_synonym_options.workspace_id;
      entity = update_synonym_options.entity;
      value = update_synonym_options.value;
      synonym = update_synonym_options.synonym;
      new_synonym = update_synonym_options.new_synonym;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateSynonymOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     * @param synonym the synonym
     */
    public UpdateSynonymOptionsBuilder(String workspace_id, String entity, String value, String synonym) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
      this.synonym = synonym;
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the new_synonym.
     *
     * @param new_synonym the new_synonym
     * @return the UpdateSynonymOptions builder
     */
    public UpdateSynonymOptionsBuilder newSynonym(String new_synonym) {
      this.new_synonym = new_synonym;
      return this;
    }
  }

  /**
   * The updateValue options.
   */
  public class UpdateValueOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String entity;
    private String value;
    private List<String> new_synonyms;
    private String new_type;
    private Map<String, String> new_metadata;
    private List<String> new_patterns;
    private String new_value;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
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
     * Gets the new_synonyms.
     *
     * An array of synonyms for the entity value.
     *
     * @return the new_synonyms
     */
    public List<String> newSynonyms() {
      return new_synonyms;
    }
    /**
     * Gets the new_type.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
     *
     * @return the new_type
     */
    public String newType() {
      return new_type;
    }
    /**
     * Gets the new_metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the new_metadata
     */
    public Map<String, String> newMetadata() {
      return new_metadata;
    }
    /**
     * Gets the new_patterns.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the new_patterns
     */
    public List<String> newPatterns() {
      return new_patterns;
    }
    /**
     * Gets the new_value.
     *
     * The text of the entity value.
     *
     * @return the new_value
     */
    public String newValue() {
      return new_value;
    }
    private UpdateValueOptions(UpdateValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspace_id = builder.workspace_id;
      entity = builder.entity;
      value = builder.value;
      new_synonyms = builder.new_synonyms;
      new_type = builder.new_type;
      new_metadata = builder.new_metadata;
      new_patterns = builder.new_patterns;
      new_value = builder.new_value;
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
    private String workspace_id;
    private String entity;
    private String value;
    private List<String> new_synonyms;
    private String new_type;
    private Map<String, String> new_metadata;
    private List<String> new_patterns;
    private String new_value;

    private UpdateValueOptionsBuilder(UpdateValueOptions update_value_options) {
      workspace_id = update_value_options.workspace_id;
      entity = update_value_options.entity;
      value = update_value_options.value;
      new_synonyms = update_value_options.new_synonyms;
      new_type = update_value_options.new_type;
      new_metadata = update_value_options.new_metadata;
      new_patterns = update_value_options.new_patterns;
      new_value = update_value_options.new_value;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateValueOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     * @param entity the entity
     * @param value the value
     */
    public UpdateValueOptionsBuilder(String workspace_id, String entity, String value) {
      this.workspace_id = workspace_id;
      this.entity = entity;
      this.value = value;
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
     * Adds an new_synonyms to new_synonyms.
     *
     * @param new_synonyms the new new_synonyms
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewSynonyms(String new_synonyms) {
      IBMWatsonValidator.notNull(new_synonyms, 'new_synonyms cannot be null');
      if (this.new_synonyms == null) {
        this.new_synonyms = new List<String>();
      }
      this.new_synonyms.add(new_synonyms);
      return this;
    }

    /**
     * Adds an new_patterns to new_patterns.
     *
     * @param new_patterns the new new_patterns
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addNewPatterns(String new_patterns) {
      IBMWatsonValidator.notNull(new_patterns, 'new_patterns cannot be null');
      if (this.new_patterns == null) {
        this.new_patterns = new List<String>();
      }
      this.new_patterns.add(new_patterns);
      return this;
    }

    /**
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the new_synonyms.
     * Existing new_synonyms will be replaced.
     *
     * @param new_synonyms the new_synonyms
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newSynonyms(List<String> new_synonyms) {
      this.new_synonyms = new_synonyms;
      return this;
    }

    /**
     * Set the new_type.
     *
     * @param new_type the new_type
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newType(String new_type) {
      this.new_type = new_type;
      return this;
    }

    /**
     * Set the new_metadata.
     *
     * @param new_metadata the new_metadata
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newMetadata(Map<String, String> new_metadata) {
      this.new_metadata = new_metadata;
      return this;
    }

    /**
     * Set the new_patterns.
     * Existing new_patterns will be replaced.
     *
     * @param new_patterns the new_patterns
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newPatterns(List<String> new_patterns) {
      this.new_patterns = new_patterns;
      return this;
    }

    /**
     * Set the new_value.
     *
     * @param new_value the new_value
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder newValue(String new_value) {
      this.new_value = new_value;
      return this;
    }
  }

  /**
   * The updateWorkspace options.
   */
  public class UpdateWorkspaceOptions extends IBMWatsonGenericModel {
    private String workspace_id;
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialog_nodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, String> metadata;
    private Boolean learning_opt_out;
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String workspaceId() {
      return workspace_id;
    }
    /**
     * Gets the name.
     *
     * The name of the workspace.
     *
     * @return the name
     */
    public String name() {
      return name;
    }
    /**
     * Gets the description.
     *
     * The description of the workspace.
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
     * Gets the dialog_nodes.
     *
     * An array of objects defining the nodes in the workspace dialog.
     *
     * @return the dialog_nodes
     */
    public List<CreateDialogNode> dialogNodes() {
      return dialog_nodes;
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
    public Map<String, String> metadata() {
      return metadata;
    }
    /**
     * Gets the learning_opt_out.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learning_opt_out
     */
    public Boolean learningOptOut() {
      return learning_opt_out;
    }
    private UpdateWorkspaceOptions(UpdateWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspace_id, 'workspace_id cannot be empty');
      workspace_id = builder.workspace_id;
      name = builder.name;
      description = builder.description;
      language = builder.language;
      intents = builder.intents;
      entities = builder.entities;
      dialog_nodes = builder.dialog_nodes;
      counterexamples = builder.counterexamples;
      metadata = builder.metadata;
      learning_opt_out = builder.learning_opt_out;
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
    private String workspace_id;
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialog_nodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, String> metadata;
    private Boolean learning_opt_out;

    private UpdateWorkspaceOptionsBuilder(UpdateWorkspaceOptions update_workspace_options) {
      workspace_id = update_workspace_options.workspace_id;
      name = update_workspace_options.name;
      description = update_workspace_options.description;
      language = update_workspace_options.language;
      intents = update_workspace_options.intents;
      entities = update_workspace_options.entities;
      dialog_nodes = update_workspace_options.dialog_nodes;
      counterexamples = update_workspace_options.counterexamples;
      metadata = update_workspace_options.metadata;
      learning_opt_out = update_workspace_options.learning_opt_out;
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateWorkspaceOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param workspace_id the workspace_id
     */
    public UpdateWorkspaceOptionsBuilder(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Adds an dialog_nodes to dialog_nodes.
     *
     * @param dialog_nodes the new dialog_nodes
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addDialogNodes(CreateDialogNode dialog_nodes) {
      IBMWatsonValidator.notNull(dialog_nodes, 'dialog_nodes cannot be null');
      if (this.dialog_nodes == null) {
        this.dialog_nodes = new List<CreateDialogNode>();
      }
      this.dialog_nodes.add(dialog_nodes);
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
     * Set the workspace_id.
     *
     * @param workspace_id the workspace_id
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder workspaceId(String workspace_id) {
      this.workspace_id = workspace_id;
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
     * Set the dialog_nodes.
     * Existing dialog_nodes will be replaced.
     *
     * @param dialog_nodes the dialog_nodes
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder dialogNodes(List<CreateDialogNode> dialog_nodes) {
      this.dialog_nodes = dialog_nodes;
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
    public UpdateWorkspaceOptionsBuilder metadata(Map<String, String> metadata) {
      this.metadata = metadata;
      return this;
    }

    /**
     * Set the learning_opt_out.
     *
     * @param learning_opt_out the learning_opt_out
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder learningOptOut(Boolean learning_opt_out) {
      this.learning_opt_out = learning_opt_out;
      return this;
    }
  }

  /**
   * Value.
   */
  public class Value extends IBMWatsonGenericModel {
    private String value;
    private Map<String, String> metadata;
    private Datetime created;
    private Datetime updated;
    private List<String> synonyms;
    private List<String> patterns;
    private String type_serialized_name;
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String getValue() {
      return value;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return metadata;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity value.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity value.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the synonyms.
     *
     * An array of synonyms for the entity value.
     *
     * @return the synonyms
     */
    public List<String> getSynonyms() {
      return synonyms;
    }
    /**
     * Gets the patterns.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the patterns
     */
    public List<String> getPatterns() {
      return patterns;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
     *
     * @return the type_serialized_name
     */
    public String getType() {
      return type_serialized_name;
    }

    /**
     * Sets the value.
     *
     * @param value the new value
     */
    public void setValue(final String value) {
      this.value = value;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the synonyms.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<String> synonyms) {
      this.synonyms = synonyms;
    }

    /**
     * Sets the patterns.
     *
     * @param patterns the new patterns
     */
    public void setPatterns(final List<String> patterns) {
      this.patterns = patterns;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }
  }

  /**
   * ValueCollection.
   */
  public class ValueCollection extends IBMWatsonGenericModel {
    private List<ValueExport> values;
    private Pagination pagination;
    /**
     * Gets the values.
     *
     * An array of entity values.
     *
     * @return the values
     */
    public List<ValueExport> getValues() {
      return values;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the values.
     *
     * @param values the new values
     */
    public void setValues(final List<ValueExport> values) {
      this.values = values;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * ValueExport.
   */
  public class ValueExport extends IBMWatsonGenericModel {
    private String value;
    private Map<String, String> metadata;
    private Datetime created;
    private Datetime updated;
    private List<String> synonyms;
    private List<String> patterns;
    private String type_serialized_name;
    /**
     * Gets the value.
     *
     * The text of the entity value.
     *
     * @return the value
     */
    public String getValue() {
      return value;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return metadata;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the entity value.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the entity value.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the synonyms.
     *
     * An array of synonyms.
     *
     * @return the synonyms
     */
    public List<String> getSynonyms() {
      return synonyms;
    }
    /**
     * Gets the patterns.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the patterns
     */
    public List<String> getPatterns() {
      return patterns;
    }
    /**
     * Gets the type_serialized_name.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
     *
     * @return the type_serialized_name
     */
    public String getType() {
      return type_serialized_name;
    }

    /**
     * Sets the value.
     *
     * @param value the new value
     */
    public void setValue(final String value) {
      this.value = value;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the synonyms.
     *
     * @param synonyms the new synonyms
     */
    public void setSynonyms(final List<String> synonyms) {
      this.synonyms = synonyms;
    }

    /**
     * Sets the patterns.
     *
     * @param patterns the new patterns
     */
    public void setPatterns(final List<String> patterns) {
      this.patterns = patterns;
    }

    /**
     * Sets the type_serialized_name.
     *
     * @param type_serialized_name the new type_serialized_name
     */
    public void setType(final String type_serialized_name) {
      this.type_serialized_name = type_serialized_name;
    }
  }

  /**
   * Workspace.
   */
  public class Workspace extends IBMWatsonGenericModel {
    private String name;
    private String language;
    private Datetime created;
    private Datetime updated;
    private String workspace_id;
    private String description;
    private Map<String, String> metadata;
    private Boolean learning_opt_out;
    /**
     * Gets the name.
     *
     * The name of the workspace.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the language.
     *
     * The language of the workspace.
     *
     * @return the language
     */
    public String getLanguage() {
      return language;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the workspace.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the workspace.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String getWorkspaceId() {
      return workspace_id;
    }
    /**
     * Gets the description.
     *
     * The description of the workspace.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata that is required by the workspace.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return metadata;
    }
    /**
     * Gets the learning_opt_out.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learning_opt_out
     */
    public Boolean isLearningOptOut() {
      return learning_opt_out;
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
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language = language;
    }

    /**
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the learning_opt_out.
     *
     * @param learning_opt_out the new learning_opt_out
     */
    public void setLearningOptOut(final Boolean learning_opt_out) {
      this.learning_opt_out = learning_opt_out;
    }
  }

  /**
   * WorkspaceCollection.
   */
  public class WorkspaceCollection extends IBMWatsonGenericModel {
    private List<Workspace> workspaces;
    private Pagination pagination;
    /**
     * Gets the workspaces.
     *
     * An array of workspaces.
     *
     * @return the workspaces
     */
    public List<Workspace> getWorkspaces() {
      return workspaces;
    }
    /**
     * Gets the pagination.
     *
     * An object defining the pagination data for the returned objects.
     *
     * @return the pagination
     */
    public Pagination getPagination() {
      return pagination;
    }

    /**
     * Sets the workspaces.
     *
     * @param workspaces the new workspaces
     */
    public void setWorkspaces(final List<Workspace> workspaces) {
      this.workspaces = workspaces;
    }

    /**
     * Sets the pagination.
     *
     * @param pagination the new pagination
     */
    public void setPagination(final Pagination pagination) {
      this.pagination = pagination;
    }
  }

  /**
   * WorkspaceExport.
   */
  public class WorkspaceExport extends IBMWatsonGenericModel {
    private String name;
    private String description;
    private String language;
    private Map<String, String> metadata;
    private Datetime created;
    private Datetime updated;
    private String workspace_id;
    private String status;
    private Boolean learning_opt_out;
    private List<IntentExport> intents;
    private List<EntityExport> entities;
    private List<Counterexample> counterexamples;
    private List<DialogNode> dialog_nodes;
    /**
     * Gets the name.
     *
     * The name of the workspace.
     *
     * @return the name
     */
    public String getName() {
      return name;
    }
    /**
     * Gets the description.
     *
     * The description of the workspace.
     *
     * @return the description
     */
    public String getDescription() {
      return description;
    }
    /**
     * Gets the language.
     *
     * The language of the workspace.
     *
     * @return the language
     */
    public String getLanguage() {
      return language;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata that is required by the workspace.
     *
     * @return the metadata
     */
    public Map<String, String> getMetadata() {
      return metadata;
    }
    /**
     * Gets the created.
     *
     * The timestamp for creation of the workspace.
     *
     * @return the created
     */
    public Datetime getCreated() {
      return created;
    }
    /**
     * Gets the updated.
     *
     * The timestamp for the last update to the workspace.
     *
     * @return the updated
     */
    public Datetime getUpdated() {
      return updated;
    }
    /**
     * Gets the workspace_id.
     *
     * The workspace ID.
     *
     * @return the workspace_id
     */
    public String getWorkspaceId() {
      return workspace_id;
    }
    /**
     * Gets the status.
     *
     * The current status of the workspace.
     *
     * @return the status
     */
    public String getStatus() {
      return status;
    }
    /**
     * Gets the learning_opt_out.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learning_opt_out
     */
    public Boolean isLearningOptOut() {
      return learning_opt_out;
    }
    /**
     * Gets the intents.
     *
     * An array of intents.
     *
     * @return the intents
     */
    public List<IntentExport> getIntents() {
      return intents;
    }
    /**
     * Gets the entities.
     *
     * An array of entities.
     *
     * @return the entities
     */
    public List<EntityExport> getEntities() {
      return entities;
    }
    /**
     * Gets the counterexamples.
     *
     * An array of counterexamples.
     *
     * @return the counterexamples
     */
    public List<Counterexample> getCounterexamples() {
      return counterexamples;
    }
    /**
     * Gets the dialog_nodes.
     *
     * An array of objects describing the dialog nodes in the workspace.
     *
     * @return the dialog_nodes
     */
    public List<DialogNode> getDialogNodes() {
      return dialog_nodes;
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
     * Sets the description.
     *
     * @param description the new description
     */
    public void setDescription(final String description) {
      this.description = description;
    }

    /**
     * Sets the language.
     *
     * @param language the new language
     */
    public void setLanguage(final String language) {
      this.language = language;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, String> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the status.
     *
     * @param status the new status
     */
    public void setStatus(final String status) {
      this.status = status;
    }

    /**
     * Sets the learning_opt_out.
     *
     * @param learning_opt_out the new learning_opt_out
     */
    public void setLearningOptOut(final Boolean learning_opt_out) {
      this.learning_opt_out = learning_opt_out;
    }

    /**
     * Sets the intents.
     *
     * @param intents the new intents
     */
    public void setIntents(final List<IntentExport> intents) {
      this.intents = intents;
    }

    /**
     * Sets the entities.
     *
     * @param entities the new entities
     */
    public void setEntities(final List<EntityExport> entities) {
      this.entities = entities;
    }

    /**
     * Sets the counterexamples.
     *
     * @param counterexamples the new counterexamples
     */
    public void setCounterexamples(final List<Counterexample> counterexamples) {
      this.counterexamples = counterexamples;
    }

    /**
     * Sets the dialog_nodes.
     *
     * @param dialog_nodes the new dialog_nodes
     */
    public void setDialogNodes(final List<DialogNode> dialog_nodes) {
      this.dialog_nodes = dialog_nodes;
    }
  }

}
