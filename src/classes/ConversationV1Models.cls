public class ConversationV1Models {
  /**
   * Context information for the message. Include the context from the previous response to maintain state for the conversation.
   */
  public class Context extends IBMWatsonDynamicModel {

    /**
     * Gets the conversationId.
     *
     * @return the conversationId
     */
    public String getConversationId() {
      return (String)JSON.deserialize(JSON.serialize(this.get('conversationId')), String.class);
    }

    /**
     * Gets the xsystem.
     *
     * @return the xsystem
     */
    public SystemResponse getXsystem() {
      return (SystemResponse)JSON.deserialize(JSON.serialize(this.get('xsystem')), SystemResponse.class);
    }

    /**
     * Sets the conversationId.
     *
     * @param conversationId the new conversationId
     */
    public void setConversationId(final String conversationId) {
      this.put('conversationId', conversationId);
    }

    /**
     * Sets the xsystem.
     *
     * @param xsystem the new xsystem
     */
    public void setXsystem(final SystemResponse xsystem) {
      this.put('xsystem', xsystem);
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

    private CreateCounterexampleBuilder(CreateCounterexample createCounterexample) {
      text = createCounterexample.text;
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
  public class CreateCounterexampleOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String text;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String text;

    private CreateCounterexampleOptionsBuilder(CreateCounterexampleOptions createCounterexampleOptions) {
      workspaceId = createCounterexampleOptions.workspaceId;
      text = createCounterexampleOptions.text;
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
  }

  /**
   * CreateDialogNode.
   */
  public class CreateDialogNode extends IBMWatsonGenericModel {
    private String dialogNode;
    private String description;
    private String conditions;
    private String parent;
    private String previousSibling;
    private Map<String, Object> output;
    private Map<String, Object> context;
    private Map<String, Object> metadata;
    private DialogNodeNextStep nextStep;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;
    /**
     * Gets the dialogNode.
     *
     * The dialog node ID.
     *
     * @return the dialogNode
     */
    public String dialogNode() {
      return dialogNode;
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
     * Gets the previousSibling.
     *
     * The previous dialog node.
     *
     * @return the previousSibling
     */
    public String previousSibling() {
      return previousSibling;
    }
    /**
     * Gets the output.
     *
     * The output of the dialog node.
     *
     * @return the output
     */
    public Map<String, Object> output() {
      return output;
    }
    /**
     * Gets the context.
     *
     * The context for the dialog node.
     *
     * @return the context
     */
    public Map<String, Object> context() {
      return context;
    }
    /**
     * Gets the metadata.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata
     */
    public Map<String, Object> metadata() {
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
    private CreateDialogNode(CreateDialogNodeBuilder builder) {
      IBMWatsonValidator.notNull(builder.dialogNode, 'dialogNode cannot be null');
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
    private Map<String, Object> output;
    private Map<String, Object> context;
    private Map<String, Object> metadata;
    private DialogNodeNextStep nextStep;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;

    private CreateDialogNodeBuilder(CreateDialogNode createDialogNode) {
      dialogNode = createDialogNode.dialogNode;
      description = createDialogNode.description;
      conditions = createDialogNode.conditions;
      parent = createDialogNode.parent;
      previousSibling = createDialogNode.previousSibling;
      output = createDialogNode.output;
      context = createDialogNode.context;
      metadata = createDialogNode.metadata;
      nextStep = createDialogNode.nextStep;
      actions = createDialogNode.actions;
      title = createDialogNode.title;
      nodeType = createDialogNode.nodeType;
      eventName = createDialogNode.eventName;
      variable = createDialogNode.variable;
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
    public CreateDialogNodeBuilder output(Map<String, Object> output) {
      this.output = output;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder context(Map<String, Object> context) {
      this.context = context;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateDialogNode builder
     */
    public CreateDialogNodeBuilder metadata(Map<String, Object> metadata) {
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
  }

  /**
   * The createDialogNode options.
   */
  public class CreateDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String dialogNode;
    private String description;
    private String conditions;
    private String parent;
    private String previousSibling;
    private Map<String, Object> output;
    private Map<String, Object> context;
    private Map<String, Object> metadata;
    private DialogNodeNextStep nextStep;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    /**
     * Gets the dialogNode.
     *
     * The dialog node ID.
     *
     * @return the dialogNode
     */
    public String dialogNode() {
      return dialogNode;
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
     * Gets the previousSibling.
     *
     * The previous dialog node.
     *
     * @return the previousSibling
     */
    public String previousSibling() {
      return previousSibling;
    }
    /**
     * Gets the output.
     *
     * The output of the dialog node.
     *
     * @return the output
     */
    public Map<String, Object> output() {
      return output;
    }
    /**
     * Gets the context.
     *
     * The context for the dialog node.
     *
     * @return the context
     */
    public Map<String, Object> context() {
      return context;
    }
    /**
     * Gets the metadata.
     *
     * The metadata for the dialog node.
     *
     * @return the metadata
     */
    public Map<String, Object> metadata() {
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
    private String workspaceId;
    private String dialogNode;
    private String description;
    private String conditions;
    private String parent;
    private String previousSibling;
    private Map<String, Object> output;
    private Map<String, Object> context;
    private Map<String, Object> metadata;
    private DialogNodeNextStep nextStep;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;

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
    public CreateDialogNodeOptionsBuilder output(Map<String, Object> output) {
      this.output = output;
      return this;
    }

    /**
     * Set the context.
     *
     * @param context the context
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder context(Map<String, Object> context) {
      this.context = context;
      return this;
    }

    /**
     * Set the metadata.
     *
     * @param metadata the metadata
     * @return the CreateDialogNodeOptions builder
     */
    public CreateDialogNodeOptionsBuilder metadata(Map<String, Object> metadata) {
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
  }

  /**
   * CreateEntity.
   */
  public class CreateEntity extends IBMWatsonGenericModel {
    private String entity;
    private String description;
    private Map<String, Object> metadata;
    private List<CreateValue> values;
    private Boolean fuzzyMatch;
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
    public Map<String, Object> metadata() {
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
     * Gets the fuzzyMatch.
     *
     * Whether to use fuzzy matching for the entity.
     *
     * @return the fuzzyMatch
     */
    public Boolean fuzzyMatch() {
      return fuzzyMatch;
    }
    private CreateEntity(CreateEntityBuilder builder) {
      IBMWatsonValidator.notNull(builder.entity, 'entity cannot be null');
      entity = builder.entity;
      description = builder.description;
      metadata = builder.metadata;
      values = builder.values;
      fuzzyMatch = builder.fuzzyMatch;
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
    private Map<String, Object> metadata;
    private List<CreateValue> values;
    private Boolean fuzzyMatch;

    private CreateEntityBuilder(CreateEntity createEntity) {
      entity = createEntity.entity;
      description = createEntity.description;
      metadata = createEntity.metadata;
      values = createEntity.values;
      fuzzyMatch = createEntity.fuzzyMatch;
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
     * Adds an value to values.
     *
     * @param value the new value
     * @return the CreateEntity builder
     */
    public CreateEntityBuilder addValue(CreateValue value) {
      IBMWatsonValidator.notNull(value, 'value cannot be null');
      if (this.values == null) {
        this.values = new List<CreateValue>();
      }
      this.values.add(value);
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
    public CreateEntityBuilder metadata(Map<String, Object> metadata) {
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
  public class CreateEntityOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String description;
    private Map<String, Object> metadata;
    private List<CreateValue> values;
    private Boolean fuzzyMatch;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    public Map<String, Object> metadata() {
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
    private String workspaceId;
    private String entity;
    private String description;
    private Map<String, Object> metadata;
    private List<CreateValue> values;
    private Boolean fuzzyMatch;

    private CreateEntityOptionsBuilder(CreateEntityOptions createEntityOptions) {
      workspaceId = createEntityOptions.workspaceId;
      entity = createEntityOptions.entity;
      description = createEntityOptions.description;
      metadata = createEntityOptions.metadata;
      values = createEntityOptions.values;
      fuzzyMatch = createEntityOptions.fuzzyMatch;
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
     * Adds an value to values.
     *
     * @param value the new value
     * @return the CreateEntityOptions builder
     */
    public CreateEntityOptionsBuilder addValue(CreateValue value) {
      IBMWatsonValidator.notNull(value, 'value cannot be null');
      if (this.values == null) {
        this.values = new List<CreateValue>();
      }
      this.values.add(value);
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
    public CreateEntityOptionsBuilder metadata(Map<String, Object> metadata) {
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

    private CreateExampleBuilder(CreateExample createExample) {
      text = createExample.text;
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
    private String workspaceId;
    private String intent;
    private String text;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notNull(builder.text, 'text cannot be null');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String intent;
    private String text;

    private CreateExampleOptionsBuilder(CreateExampleOptions createExampleOptions) {
      workspaceId = createExampleOptions.workspaceId;
      intent = createExampleOptions.intent;
      text = createExampleOptions.text;
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

    private CreateIntentBuilder(CreateIntent createIntent) {
      intent = createIntent.intent;
      description = createIntent.description;
      examples = createIntent.examples;
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
     * Adds an example to examples.
     *
     * @param example the new example
     * @return the CreateIntent builder
     */
    public CreateIntentBuilder addExample(CreateExample example) {
      IBMWatsonValidator.notNull(example, 'example cannot be null');
      if (this.examples == null) {
        this.examples = new List<CreateExample>();
      }
      this.examples.add(example);
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
    private String workspaceId;
    private String intent;
    private String description;
    private List<CreateExample> examples;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notNull(builder.intent, 'intent cannot be null');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String intent;
    private String description;
    private List<CreateExample> examples;

    private CreateIntentOptionsBuilder(CreateIntentOptions createIntentOptions) {
      workspaceId = createIntentOptions.workspaceId;
      intent = createIntentOptions.intent;
      description = createIntentOptions.description;
      examples = createIntentOptions.examples;
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
     * Adds an example to examples.
     *
     * @param example the new example
     * @return the CreateIntentOptions builder
     */
    public CreateIntentOptionsBuilder addExample(CreateExample example) {
      IBMWatsonValidator.notNull(example, 'example cannot be null');
      if (this.examples == null) {
        this.examples = new List<CreateExample>();
      }
      this.examples.add(example);
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
  }

  /**
   * The createSynonym options.
   */
  public class CreateSynonymOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private CreateSynonymOptions(CreateSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notNull(builder.synonym, 'synonym cannot be null');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;

    private CreateSynonymOptionsBuilder(CreateSynonymOptions createSynonymOptions) {
      workspaceId = createSynonymOptions.workspaceId;
      entity = createSynonymOptions.entity;
      value = createSynonymOptions.value;
      synonym = createSynonymOptions.synonym;
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
  }

  /**
   * CreateValue.
   */
  public class CreateValue extends IBMWatsonGenericModel {
    private String value;
    private Map<String, Object> metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;
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
    public Map<String, Object> metadata() {
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
     * Gets the valueType.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
     *
     * @return the valueType
     */
    public String valueType() {
      return valueType;
    }
    private CreateValue(CreateValueBuilder builder) {
      IBMWatsonValidator.notNull(builder.value, 'value cannot be null');
      value = builder.value;
      metadata = builder.metadata;
      synonyms = builder.synonyms;
      patterns = builder.patterns;
      valueType = builder.valueType;
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
    private Map<String, Object> metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;

    private CreateValueBuilder(CreateValue createValue) {
      value = createValue.value;
      metadata = createValue.metadata;
      synonyms = createValue.synonyms;
      patterns = createValue.patterns;
      valueType = createValue.valueType;
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
     * Adds an synonym to synonyms.
     *
     * @param synonym the new synonym
     * @return the CreateValue builder
     */
    public CreateValueBuilder addSynonym(String synonym) {
      IBMWatsonValidator.notNull(synonym, 'synonym cannot be null');
      if (this.synonyms == null) {
        this.synonyms = new List<String>();
      }
      this.synonyms.add(synonym);
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
    public CreateValueBuilder metadata(Map<String, Object> metadata) {
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
  public class CreateValueOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private Map<String, Object> metadata;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public Map<String, Object> metadata() {
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
     * Gets the valueType.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
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
    private String workspaceId;
    private String entity;
    private String value;
    private Map<String, Object> metadata;
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
     * Adds an synonym to synonyms.
     *
     * @param synonym the new synonym
     * @return the CreateValueOptions builder
     */
    public CreateValueOptionsBuilder addSynonym(String synonym) {
      IBMWatsonValidator.notNull(synonym, 'synonym cannot be null');
      if (this.synonyms == null) {
        this.synonyms = new List<String>();
      }
      this.synonyms.add(synonym);
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
    public CreateValueOptionsBuilder metadata(Map<String, Object> metadata) {
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
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, Object> metadata;
    private Boolean learningOptOut;
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
     * Gets the dialogNodes.
     *
     * An array of objects defining the nodes in the workspace dialog.
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
    public Map<String, Object> metadata() {
      return metadata;
    }
    /**
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    public Boolean learningOptOut() {
      return learningOptOut;
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
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, Object> metadata;
    private Boolean learningOptOut;

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
     * Adds an intent to intents.
     *
     * @param intent the new intent
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addIntent(CreateIntent intent) {
      IBMWatsonValidator.notNull(intent, 'intent cannot be null');
      if (this.intents == null) {
        this.intents = new List<CreateIntent>();
      }
      this.intents.add(intent);
      return this;
    }

    /**
     * Adds an entity to entities.
     *
     * @param entity the new entity
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addEntity(CreateEntity entity) {
      IBMWatsonValidator.notNull(entity, 'entity cannot be null');
      if (this.entities == null) {
        this.entities = new List<CreateEntity>();
      }
      this.entities.add(entity);
      return this;
    }

    /**
     * Adds an dialogNode to dialogNodes.
     *
     * @param dialogNode the new dialogNode
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addDialogNode(CreateDialogNode dialogNode) {
      IBMWatsonValidator.notNull(dialogNode, 'dialogNode cannot be null');
      if (this.dialogNodes == null) {
        this.dialogNodes = new List<CreateDialogNode>();
      }
      this.dialogNodes.add(dialogNode);
      return this;
    }

    /**
     * Adds an counterexample to counterexamples.
     *
     * @param counterexample the new counterexample
     * @return the CreateWorkspaceOptions builder
     */
    public CreateWorkspaceOptionsBuilder addCounterexample(CreateCounterexample counterexample) {
      IBMWatsonValidator.notNull(counterexample, 'counterexample cannot be null');
      if (this.counterexamples == null) {
        this.counterexamples = new List<CreateCounterexample>();
      }
      this.counterexamples.add(counterexample);
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
    public CreateWorkspaceOptionsBuilder metadata(Map<String, Object> metadata) {
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
  }

  /**
   * The deleteCounterexample options.
   */
  public class DeleteCounterexampleOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String text;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private String workspaceId;
    private String text;

    private DeleteCounterexampleOptionsBuilder(DeleteCounterexampleOptions deleteCounterexampleOptions) {
      workspaceId = deleteCounterexampleOptions.workspaceId;
      text = deleteCounterexampleOptions.text;
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
  }

  /**
   * The deleteDialogNode options.
   */
  public class DeleteDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String dialogNode;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private String workspaceId;
    private String dialogNode;

    private DeleteDialogNodeOptionsBuilder(DeleteDialogNodeOptions deleteDialogNodeOptions) {
      workspaceId = deleteDialogNodeOptions.workspaceId;
      dialogNode = deleteDialogNodeOptions.dialogNode;
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
  }

  /**
   * The deleteEntity options.
   */
  public class DeleteEntityOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private String workspaceId;
    private String entity;

    private DeleteEntityOptionsBuilder(DeleteEntityOptions deleteEntityOptions) {
      workspaceId = deleteEntityOptions.workspaceId;
      entity = deleteEntityOptions.entity;
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
  }

  /**
   * The deleteExample options.
   */
  public class DeleteExampleOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String intent;
    private String text;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String intent;
    private String text;

    private DeleteExampleOptionsBuilder(DeleteExampleOptions deleteExampleOptions) {
      workspaceId = deleteExampleOptions.workspaceId;
      intent = deleteExampleOptions.intent;
      text = deleteExampleOptions.text;
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
  }

  /**
   * The deleteIntent options.
   */
  public class DeleteIntentOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String intent;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String intent;

    private DeleteIntentOptionsBuilder(DeleteIntentOptions deleteIntentOptions) {
      workspaceId = deleteIntentOptions.workspaceId;
      intent = deleteIntentOptions.intent;
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
  }

  /**
   * The deleteSynonym options.
   */
  public class DeleteSynonymOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;

    private DeleteSynonymOptionsBuilder(DeleteSynonymOptions deleteSynonymOptions) {
      workspaceId = deleteSynonymOptions.workspaceId;
      entity = deleteSynonymOptions.entity;
      value = deleteSynonymOptions.value;
      synonym = deleteSynonymOptions.synonym;
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
  }

  /**
   * The deleteValue options.
   */
  public class DeleteValueOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private String workspaceId;
    private String entity;
    private String value;

    private DeleteValueOptionsBuilder(DeleteValueOptions deleteValueOptions) {
      workspaceId = deleteValueOptions.workspaceId;
      entity = deleteValueOptions.entity;
      value = deleteValueOptions.value;
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
  }

  /**
   * The deleteWorkspace options.
   */
  public class DeleteWorkspaceOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    private DeleteWorkspaceOptions(DeleteWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;

    private DeleteWorkspaceOptionsBuilder(DeleteWorkspaceOptions deleteWorkspaceOptions) {
      workspaceId = deleteWorkspaceOptions.workspaceId;
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
  }

  /**
   * DialogNode.
   */
  public class DialogNode extends IBMWatsonGenericModel {
    private String dialogNodeId;
    private String description;
    private String conditions;
    private String parent;
    private String previousSibling;
    private Map<String, Object> output;
    private Map<String, Object> context;
    private Map<String, Object> metadata;
    private DialogNodeNextStep nextStep;
    private Datetime created;
    private Datetime updated;
    private List<DialogNodeAction> actions;
    private String title;
    private String nodeType;
    private String eventName;
    private String variable;
    /**
     * Gets the dialogNodeId.
     *
     * The dialog node ID.
     *
     * @return the dialogNodeId
     */
    public String getDialogNodeId() {
      return dialogNodeId;
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
     * Gets the previousSibling.
     *
     * The ID of the previous sibling dialog node.
     *
     * @return the previousSibling
     */
    public String getPreviousSibling() {
      return previousSibling;
    }
    /**
     * Gets the output.
     *
     * The output of the dialog node.
     *
     * @return the output
     */
    public Map<String, Object> getOutput() {
      return output;
    }
    /**
     * Gets the context.
     *
     * The context (if defined) for the dialog node.
     *
     * @return the context
     */
    public Map<String, Object> getContext() {
      return context;
    }
    /**
     * Gets the metadata.
     *
     * The metadata (if any) for the dialog node.
     *
     * @return the metadata
     */
    public Map<String, Object> getMetadata() {
      return metadata;
    }
    /**
     * Gets the nextStep.
     *
     * The next step to execute following this dialog node.
     *
     * @return the nextStep
     */
    public DialogNodeNextStep getNextStep() {
      return nextStep;
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
     * Gets the nodeType.
     *
     * How the dialog node is processed.
     *
     * @return the nodeType
     */
    public String getNodeType() {
      return nodeType;
    }
    /**
     * Gets the eventName.
     *
     * How an `event_handler` node is processed.
     *
     * @return the eventName
     */
    public String getEventName() {
      return eventName;
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
     * Sets the dialogNodeId.
     *
     * @param dialogNodeId the new dialogNodeId
     */
    public void setDialogNodeId(final String dialogNodeId) {
      this.dialogNodeId = dialogNodeId;
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
     * Sets the previousSibling.
     *
     * @param previousSibling the new previousSibling
     */
    public void setPreviousSibling(final String previousSibling) {
      this.previousSibling = previousSibling;
    }

    /**
     * Sets the output.
     *
     * @param output the new output
     */
    public void setOutput(final Map<String, Object> output) {
      this.output = output;
    }

    /**
     * Sets the context.
     *
     * @param context the new context
     */
    public void setContext(final Map<String, Object> context) {
      this.context = context;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, Object> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the nextStep.
     *
     * @param nextStep the new nextStep
     */
    public void setNextStep(final DialogNodeNextStep nextStep) {
      this.nextStep = nextStep;
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
     * Sets the nodeType.
     *
     * @param nodeType the new nodeType
     */
    public void setNodeType(final String nodeType) {
      this.nodeType = nodeType;
    }

    /**
     * Sets the eventName.
     *
     * @param eventName the new eventName
     */
    public void setEventName(final String eventName) {
      this.eventName = eventName;
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
    private String actionType;
    private Map<String, Object> parameters;
    private String resultVariable;
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
     * Gets the actionType.
     *
     * The type of action to invoke.
     *
     * @return the actionType
     */
    public String getActionType() {
      return actionType;
    }
    /**
     * Gets the parameters.
     *
     * A map of key/value pairs to be provided to the action.
     *
     * @return the parameters
     */
    public Map<String, Object> getParameters() {
      return parameters;
    }
    /**
     * Gets the resultVariable.
     *
     * The location in the dialog context where the result of the action is stored.
     *
     * @return the resultVariable
     */
    public String getResultVariable() {
      return resultVariable;
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
     * Sets the actionType.
     *
     * @param actionType the new actionType
     */
    public void setActionType(final String actionType) {
      this.actionType = actionType;
    }

    /**
     * Sets the parameters.
     *
     * @param parameters the new parameters
     */
    public void setParameters(final Map<String, Object> parameters) {
      this.parameters = parameters;
    }

    /**
     * Sets the resultVariable.
     *
     * @param resultVariable the new resultVariable
     */
    public void setResultVariable(final String resultVariable) {
      this.resultVariable = resultVariable;
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
    private List<DialogNode> dialogNodes;
    private Pagination pagination;
    /**
     * Gets the dialogNodes.
     *
     * @return the dialogNodes
     */
    public List<DialogNode> getDialogNodes() {
      return dialogNodes;
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
     * Sets the dialogNodes.
     *
     * @param dialogNodes the new dialogNodes
     */
    public void setDialogNodes(final List<DialogNode> dialogNodes) {
      this.dialogNodes = dialogNodes;
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
    private String dialogNode;
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
     * Gets the dialogNode.
     *
     * The ID of the dialog node to process next.
     *
     * @return the dialogNode
     */
    public String getDialogNode() {
      return dialogNode;
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
     * Sets the dialogNode.
     *
     * @param dialogNode the new dialogNode
     */
    public void setDialogNode(final String dialogNode) {
      this.dialogNode = dialogNode;
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
    private String entityName;
    private Datetime created;
    private Datetime updated;
    private String description;
    private Map<String, Object> metadata;
    private Boolean fuzzyMatch;
    /**
     * Gets the entityName.
     *
     * The name of the entity.
     *
     * @return the entityName
     */
    public String getEntityName() {
      return entityName;
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
    public Map<String, Object> getMetadata() {
      return metadata;
    }
    /**
     * Gets the fuzzyMatch.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzyMatch
     */
    public Boolean isFuzzyMatch() {
      return fuzzyMatch;
    }

    /**
     * Sets the entityName.
     *
     * @param entityName the new entityName
     */
    public void setEntityName(final String entityName) {
      this.entityName = entityName;
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
    public void setMetadata(final Map<String, Object> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the fuzzyMatch.
     *
     * @param fuzzyMatch the new fuzzyMatch
     */
    public void setFuzzyMatch(final Boolean fuzzyMatch) {
      this.fuzzyMatch = fuzzyMatch;
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
    private String entityName;
    private Datetime created;
    private Datetime updated;
    private String description;
    private Map<String, Object> metadata;
    private Boolean fuzzyMatch;
    private List<ValueExport> values;
    /**
     * Gets the entityName.
     *
     * The name of the entity.
     *
     * @return the entityName
     */
    public String getEntityName() {
      return entityName;
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
    public Map<String, Object> getMetadata() {
      return metadata;
    }
    /**
     * Gets the fuzzyMatch.
     *
     * Whether fuzzy matching is used for the entity.
     *
     * @return the fuzzyMatch
     */
    public Boolean isFuzzyMatch() {
      return fuzzyMatch;
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
     * Sets the entityName.
     *
     * @param entityName the new entityName
     */
    public void setEntityName(final String entityName) {
      this.entityName = entityName;
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
    public void setMetadata(final Map<String, Object> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the fuzzyMatch.
     *
     * @param fuzzyMatch the new fuzzyMatch
     */
    public void setFuzzyMatch(final Boolean fuzzyMatch) {
      this.fuzzyMatch = fuzzyMatch;
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
    private String exampleText;
    private Datetime created;
    private Datetime updated;
    /**
     * Gets the exampleText.
     *
     * The text of the example.
     *
     * @return the exampleText
     */
    public String getExampleText() {
      return exampleText;
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
     * Sets the exampleText.
     *
     * @param exampleText the new exampleText
     */
    public void setExampleText(final String exampleText) {
      this.exampleText = exampleText;
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
    private String workspaceId;
    private String text;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private GetCounterexampleOptions(GetCounterexampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String text;

    private GetCounterexampleOptionsBuilder(GetCounterexampleOptions getCounterexampleOptions) {
      workspaceId = getCounterexampleOptions.workspaceId;
      text = getCounterexampleOptions.text;
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
  }

  /**
   * The getDialogNode options.
   */
  public class GetDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String dialogNode;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private GetDialogNodeOptions(GetDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialogNode, 'dialogNode cannot be empty');
      workspaceId = builder.workspaceId;
      dialogNode = builder.dialogNode;
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
    private String workspaceId;
    private String dialogNode;

    private GetDialogNodeOptionsBuilder(GetDialogNodeOptions getDialogNodeOptions) {
      workspaceId = getDialogNodeOptions.workspaceId;
      dialogNode = getDialogNodeOptions.dialogNode;
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
  }

  /**
   * The getEntity options.
   */
  public class GetEntityOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
    private GetEntityOptions(GetEntityOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      xexport = builder.xexport;
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
    private String workspaceId;
    private String entity;
    private Boolean xexport;

    private GetEntityOptionsBuilder(GetEntityOptions getEntityOptions) {
      workspaceId = getEntityOptions.workspaceId;
      entity = getEntityOptions.entity;
      xexport = getEntityOptions.xexport;
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
  }

  /**
   * The getExample options.
   */
  public class GetExampleOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String intent;
    private String text;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String intent;
    private String text;

    private GetExampleOptionsBuilder(GetExampleOptions getExampleOptions) {
      workspaceId = getExampleOptions.workspaceId;
      intent = getExampleOptions.intent;
      text = getExampleOptions.text;
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
  }

  /**
   * The getIntent options.
   */
  public class GetIntentOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String intent;
    private Boolean xexport;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
    private GetIntentOptions(GetIntentOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      xexport = builder.xexport;
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
    private String workspaceId;
    private String intent;
    private Boolean xexport;

    private GetIntentOptionsBuilder(GetIntentOptions getIntentOptions) {
      workspaceId = getIntentOptions.workspaceId;
      intent = getIntentOptions.intent;
      xexport = getIntentOptions.xexport;
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
  }

  /**
   * The getSynonym options.
   */
  public class GetSynonymOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
    private GetSynonymOptions(GetSynonymOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      IBMWatsonValidator.notEmpty(builder.synonym, 'synonym cannot be empty');
      workspaceId = builder.workspaceId;
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
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;

    private GetSynonymOptionsBuilder(GetSynonymOptions getSynonymOptions) {
      workspaceId = getSynonymOptions.workspaceId;
      entity = getSynonymOptions.entity;
      value = getSynonymOptions.value;
      synonym = getSynonymOptions.synonym;
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
  }

  /**
   * The getValue options.
   */
  public class GetValueOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private Boolean xexport;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
    private GetValueOptions(GetValueOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      IBMWatsonValidator.notEmpty(builder.value, 'value cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      value = builder.value;
      xexport = builder.xexport;
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
    private String workspaceId;
    private String entity;
    private String value;
    private Boolean xexport;

    private GetValueOptionsBuilder(GetValueOptions getValueOptions) {
      workspaceId = getValueOptions.workspaceId;
      entity = getValueOptions.entity;
      value = getValueOptions.value;
      xexport = getValueOptions.xexport;
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
  }

  /**
   * The getWorkspace options.
   */
  public class GetWorkspaceOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private Boolean xexport;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
    private GetWorkspaceOptions(GetWorkspaceOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xexport = builder.xexport;
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
    private String workspaceId;
    private Boolean xexport;

    private GetWorkspaceOptionsBuilder(GetWorkspaceOptions getWorkspaceOptions) {
      workspaceId = getWorkspaceOptions.workspaceId;
      xexport = getWorkspaceOptions.xexport;
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

    private InputDataBuilder(InputData inputData) {
      text = inputData.text;
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
     * @return the inputData
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
    private String intentName;
    private Datetime created;
    private Datetime updated;
    private String description;
    /**
     * Gets the intentName.
     *
     * The name of the intent.
     *
     * @return the intentName
     */
    public String getIntentName() {
      return intentName;
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
     * Sets the intentName.
     *
     * @param intentName the new intentName
     */
    public void setIntentName(final String intentName) {
      this.intentName = intentName;
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
    private String intentName;
    private Datetime created;
    private Datetime updated;
    private String description;
    private List<Example> examples;
    /**
     * Gets the intentName.
     *
     * The name of the intent.
     *
     * @return the intentName
     */
    public String getIntentName() {
      return intentName;
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
     * Sets the intentName.
     *
     * @param intentName the new intentName
     */
    public void setIntentName(final String intentName) {
      this.intentName = intentName;
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
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
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
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListCounterexamplesOptionsBuilder(ListCounterexamplesOptions listCounterexamplesOptions) {
      workspaceId = listCounterexamplesOptions.workspaceId;
      pageLimit = listCounterexamplesOptions.pageLimit;
      includeCount = listCounterexamplesOptions.includeCount;
      xsort = listCounterexamplesOptions.xsort;
      cursor = listCounterexamplesOptions.cursor;
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
    public ListCounterexamplesOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listDialogNodes options.
   */
  public class ListDialogNodesOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
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
    private String workspaceId;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListDialogNodesOptionsBuilder(ListDialogNodesOptions listDialogNodesOptions) {
      workspaceId = listDialogNodesOptions.workspaceId;
      pageLimit = listDialogNodesOptions.pageLimit;
      includeCount = listDialogNodesOptions.includeCount;
      xsort = listDialogNodesOptions.xsort;
      cursor = listDialogNodesOptions.cursor;
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
    public ListDialogNodesOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listEntities options.
   */
  public class ListEntitiesOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xexport = builder.xexport;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
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
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListEntitiesOptionsBuilder(ListEntitiesOptions listEntitiesOptions) {
      workspaceId = listEntitiesOptions.workspaceId;
      xexport = listEntitiesOptions.xexport;
      pageLimit = listEntitiesOptions.pageLimit;
      includeCount = listEntitiesOptions.includeCount;
      xsort = listEntitiesOptions.xsort;
      cursor = listEntitiesOptions.cursor;
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
    public ListEntitiesOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listExamples options.
   */
  public class ListExamplesOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String intent;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
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
    private String workspaceId;
    private String intent;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListExamplesOptionsBuilder(ListExamplesOptions listExamplesOptions) {
      workspaceId = listExamplesOptions.workspaceId;
      intent = listExamplesOptions.intent;
      pageLimit = listExamplesOptions.pageLimit;
      includeCount = listExamplesOptions.includeCount;
      xsort = listExamplesOptions.xsort;
      cursor = listExamplesOptions.cursor;
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
    public ListExamplesOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listIntents options.
   */
  public class ListIntentsOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    /**
     * Gets the xexport.
     *
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xexport = builder.xexport;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
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
    private String workspaceId;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListIntentsOptionsBuilder(ListIntentsOptions listIntentsOptions) {
      workspaceId = listIntentsOptions.workspaceId;
      xexport = listIntentsOptions.xexport;
      pageLimit = listIntentsOptions.pageLimit;
      includeCount = listIntentsOptions.includeCount;
      xsort = listIntentsOptions.xsort;
      cursor = listIntentsOptions.cursor;
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
    public ListIntentsOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listLogs options.
   */
  public class ListLogsOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String xsort;
    private String filter;
    private Long pageLimit;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
    }
    /**
     * Gets the xsort.
     *
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      xsort = builder.xsort;
      filter = builder.filter;
      pageLimit = builder.pageLimit;
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
    public ListLogsOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listSynonyms options.
   */
  public class ListSynonymsOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
    private String workspaceId;
    private String entity;
    private String value;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListSynonymsOptionsBuilder(ListSynonymsOptions listSynonymsOptions) {
      workspaceId = listSynonymsOptions.workspaceId;
      entity = listSynonymsOptions.entity;
      value = listSynonymsOptions.value;
      pageLimit = listSynonymsOptions.pageLimit;
      includeCount = listSynonymsOptions.includeCount;
      xsort = listSynonymsOptions.xsort;
      cursor = listSynonymsOptions.cursor;
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
    public ListSynonymsOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listValues options.
   */
  public class ListValuesOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * Whether to include all element content in the returned data. If export=`false`, the returned data includes only information about the element itself. If export=`true`, all content, including subelements, is included. The default value is `false`.
     *
     * @return the xexport
     */
    public Boolean xexport() {
      return xexport;
    }
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.entity, 'entity cannot be empty');
      workspaceId = builder.workspaceId;
      entity = builder.entity;
      xexport = builder.xexport;
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
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
    private String workspaceId;
    private String entity;
    private Boolean xexport;
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListValuesOptionsBuilder(ListValuesOptions listValuesOptions) {
      workspaceId = listValuesOptions.workspaceId;
      entity = listValuesOptions.entity;
      xexport = listValuesOptions.xexport;
      pageLimit = listValuesOptions.pageLimit;
      includeCount = listValuesOptions.includeCount;
      xsort = listValuesOptions.xsort;
      cursor = listValuesOptions.cursor;
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
    public ListValuesOptionsBuilder pageLimit(long pageLimit) {
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
  }

  /**
   * The listWorkspaces options.
   */
  public class ListWorkspacesOptions extends IBMWatsonGenericModel {
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;
    /**
     * Gets the pageLimit.
     *
     * The number of records to return in each page of results. The default page limit is 100.
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
     * Sorts the response according to the value of the specified property, in ascending or descending order.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
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
      pageLimit = builder.pageLimit;
      includeCount = builder.includeCount;
      xsort = builder.xsort;
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
    private Long pageLimit;
    private Boolean includeCount;
    private String xsort;
    private String cursor;

    private ListWorkspacesOptionsBuilder(ListWorkspacesOptions listWorkspacesOptions) {
      pageLimit = listWorkspacesOptions.pageLimit;
      includeCount = listWorkspacesOptions.includeCount;
      xsort = listWorkspacesOptions.xsort;
      cursor = listWorkspacesOptions.cursor;
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
    public ListWorkspacesOptionsBuilder pageLimit(long pageLimit) {
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
    private String logId;
    private String requestTimestamp;
    private String responseTimestamp;
    private String workspaceId;
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
     * Gets the logId.
     *
     * A unique identifier for the logged message.
     *
     * @return the logId
     */
    public String getLogId() {
      return logId;
    }
    /**
     * Gets the requestTimestamp.
     *
     * The timestamp for receipt of the message.
     *
     * @return the requestTimestamp
     */
    public String getRequestTimestamp() {
      return requestTimestamp;
    }
    /**
     * Gets the responseTimestamp.
     *
     * The timestamp for the system response to the message.
     *
     * @return the responseTimestamp
     */
    public String getResponseTimestamp() {
      return responseTimestamp;
    }
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String getWorkspaceId() {
      return workspaceId;
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
     * Sets the logId.
     *
     * @param logId the new logId
     */
    public void setLogId(final String logId) {
      this.logId = logId;
    }

    /**
     * Sets the requestTimestamp.
     *
     * @param requestTimestamp the new requestTimestamp
     */
    public void setRequestTimestamp(final String requestTimestamp) {
      this.requestTimestamp = requestTimestamp;
    }

    /**
     * Sets the responseTimestamp.
     *
     * @param responseTimestamp the new responseTimestamp
     */
    public void setResponseTimestamp(final String responseTimestamp) {
      this.responseTimestamp = responseTimestamp;
    }

    /**
     * Sets the workspaceId.
     *
     * @param workspaceId the new workspaceId
     */
    public void setWorkspaceId(final String workspaceId) {
      this.workspaceId = workspaceId;
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
    private String nextUrl;
    private Long matched;
    /**
     * Gets the nextUrl.
     *
     * The URL that will return the next page of results.
     *
     * @return the nextUrl
     */
    public String getNextUrl() {
      return nextUrl;
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
     * Sets the nextUrl.
     *
     * @param nextUrl the new nextUrl
     */
    public void setNextUrl(final String nextUrl) {
      this.nextUrl = nextUrl;
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
    private String workspaceId;
    private InputData input;
    private Boolean alternateIntents;
    private Context context;
    private List<RuntimeEntity> entities;
    private List<RuntimeIntent> intents;
    private OutputData output;
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
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      workspaceId = builder.workspaceId;
      input = builder.input;
      alternateIntents = builder.alternateIntents;
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
    private String workspaceId;
    private InputData input;
    private Boolean alternateIntents;
    private Context context;
    private List<RuntimeEntity> entities;
    private List<RuntimeIntent> intents;
    private OutputData output;

    private MessageOptionsBuilder(MessageOptions messageOptions) {
      workspaceId = messageOptions.workspaceId;
      input = messageOptions.input;
      alternateIntents = messageOptions.alternateIntents;
      context = messageOptions.context;
      entities = messageOptions.entities;
      intents = messageOptions.intents;
      output = messageOptions.output;
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
     * Adds an entity to entities.
     *
     * @param entity the new entity
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addEntity(RuntimeEntity entity) {
      IBMWatsonValidator.notNull(entity, 'entity cannot be null');
      if (this.entities == null) {
        this.entities = new List<RuntimeEntity>();
      }
      this.entities.add(entity);
      return this;
    }

    /**
     * Adds an intent to intents.
     *
     * @param intent the new intent
     * @return the MessageOptions builder
     */
    public MessageOptionsBuilder addIntent(RuntimeIntent intent) {
      IBMWatsonValidator.notNull(intent, 'intent cannot be null');
      if (this.intents == null) {
        this.intents = new List<RuntimeIntent>();
      }
      this.intents.add(intent);
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
  }

  /**
   * A request formatted for the Conversation service.
   */
  public class MessageRequest extends IBMWatsonGenericModel {
    private InputData input;
    private Boolean alternateIntents;
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
     * Gets the alternateIntents.
     *
     * Whether to return more than one intent. Set to `true` to return all matching intents.
     *
     * @return the alternateIntents
     */
    public Boolean isAlternateIntents() {
      return alternateIntents;
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
     * Sets the alternateIntents.
     *
     * @param alternateIntents the new alternateIntents
     */
    public void setAlternateIntents(final Boolean alternateIntents) {
      this.alternateIntents = alternateIntents;
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
     * Gets the alternateIntents.
     *
     * @return the alternateIntents
     */
    public Boolean isAlternateIntents() {
      return (Boolean)JSON.deserialize(JSON.serialize(this.get('alternateIntents')), Boolean.class);
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
     * Sets the alternateIntents.
     *
     * @param alternateIntents the new alternateIntents
     */
    public void setAlternateIntents(final Boolean alternateIntents) {
      this.put('alternateIntents', alternateIntents);
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
     * Gets the logMessages.
     *
     * @return the logMessages
     */
    public List<LogMessage> getLogMessages() {
      return (List<LogMessage>)JSON.deserialize(JSON.serialize(this.get('logMessages')), List<LogMessage>.class);
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
     * Gets the nodesVisited.
     *
     * @return the nodesVisited
     */
    public List<String> getNodesVisited() {
      return (List<String>)JSON.deserialize(JSON.serialize(this.get('nodesVisited')), List<String>.class);
    }

    /**
     * Sets the logMessages.
     *
     * @param logMessages the new logMessages
     */
    public void setLogMessages(final List<LogMessage> logMessages) {
      this.put('logMessages', logMessages);
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
     * Sets the nodesVisited.
     *
     * @param nodesVisited the new nodesVisited
     */
    public void setNodesVisited(final List<String> nodesVisited) {
      this.put('nodesVisited', nodesVisited);
    }
  }

  /**
   * The pagination data for the returned objects.
   */
  public class Pagination extends IBMWatsonGenericModel {
    private String refreshUrl;
    private String nextUrl;
    private Long total;
    private Long matched;
    /**
     * Gets the refreshUrl.
     *
     * The URL that will return the same page of results.
     *
     * @return the refreshUrl
     */
    public String getRefreshUrl() {
      return refreshUrl;
    }
    /**
     * Gets the nextUrl.
     *
     * The URL that will return the next page of results.
     *
     * @return the nextUrl
     */
    public String getNextUrl() {
      return nextUrl;
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
     * Sets the refreshUrl.
     *
     * @param refreshUrl the new refreshUrl
     */
    public void setRefreshUrl(final String refreshUrl) {
      this.refreshUrl = refreshUrl;
    }

    /**
     * Sets the nextUrl.
     *
     * @param nextUrl the new nextUrl
     */
    public void setNextUrl(final String nextUrl) {
      this.nextUrl = nextUrl;
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
    public Map<String, Object> getMetadata() {
      return (Map<String, Object>)JSON.deserialize(JSON.serialize(this.get('metadata')), Map<String, Object>.class);
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
    public void setMetadata(final Map<String, Object> metadata) {
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
    private String synonymText;
    private Datetime created;
    private Datetime updated;
    /**
     * Gets the synonymText.
     *
     * The text of the synonym.
     *
     * @return the synonymText
     */
    public String getSynonymText() {
      return synonymText;
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
     * Sets the synonymText.
     *
     * @param synonymText the new synonymText
     */
    public void setSynonymText(final String synonymText) {
      this.synonymText = synonymText;
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
    private String workspaceId;
    private String text;
    private String newText;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * The text of the example to be marked as irrelevant input.
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
    private String workspaceId;
    private String text;
    private String newText;

    private UpdateCounterexampleOptionsBuilder(UpdateCounterexampleOptions updateCounterexampleOptions) {
      workspaceId = updateCounterexampleOptions.workspaceId;
      text = updateCounterexampleOptions.text;
      newText = updateCounterexampleOptions.newText;
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
  }

  /**
   * The UpdateDialogNode options.
   */
  public class UpdateDialogNodeOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String dialogNode;
    private String nodeType;
    private List<DialogNodeAction> newActions;
    private String newConditions;
    private Map<String, Object> newContext;
    private String newPreviousSibling;
    private String newVariable;
    private Map<String, Object> newMetadata;
    private String newTitle;
    private String newDescription;
    private String newEventName;
    private DialogNodeNextStep newNextStep;
    private Map<String, Object> newOutput;
    private String newParent;
    private String newDialogNode;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * How the node is processed.
     *
     * @return the nodeType
     */
    public String nodeType() {
      return nodeType;
    }
    /**
     * Gets the newActions.
     *
     * The actions for the dialog node.
     *
     * @return the newActions
     */
    public List<DialogNodeAction> newActions() {
      return newActions;
    }
    /**
     * Gets the newConditions.
     *
     * The condition that will trigger the dialog node.
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
    public Map<String, Object> newContext() {
      return newContext;
    }
    /**
     * Gets the newPreviousSibling.
     *
     * The previous dialog node.
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
     * Gets the newMetadata.
     *
     * The metadata for the dialog node.
     *
     * @return the newMetadata
     */
    public Map<String, Object> newMetadata() {
      return newMetadata;
    }
    /**
     * Gets the newTitle.
     *
     * The alias used to identify the dialog node.
     *
     * @return the newTitle
     */
    public String newTitle() {
      return newTitle;
    }
    /**
     * Gets the newDescription.
     *
     * The description of the dialog node.
     *
     * @return the newDescription
     */
    public String newDescription() {
      return newDescription;
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
     * Gets the newOutput.
     *
     * The output of the dialog node.
     *
     * @return the newOutput
     */
    public Map<String, Object> newOutput() {
      return newOutput;
    }
    /**
     * Gets the newParent.
     *
     * The ID of the parent dialog node (if any).
     *
     * @return the newParent
     */
    public String newParent() {
      return newParent;
    }
    /**
     * Gets the newDialogNode.
     *
     * The dialog node ID.
     *
     * @return the newDialogNode
     */
    public String newDialogNode() {
      return newDialogNode;
    }
    private UpdateDialogNodeOptions(UpdateDialogNodeOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.dialogNode, 'dialogNode cannot be empty');
      IBMWatsonValidator.notNull(builder.newDialogNode, 'newDialogNode cannot be null');
      workspaceId = builder.workspaceId;
      dialogNode = builder.dialogNode;
      nodeType = builder.nodeType;
      newActions = builder.newActions;
      newConditions = builder.newConditions;
      newContext = builder.newContext;
      newPreviousSibling = builder.newPreviousSibling;
      newVariable = builder.newVariable;
      newMetadata = builder.newMetadata;
      newTitle = builder.newTitle;
      newDescription = builder.newDescription;
      newEventName = builder.newEventName;
      newNextStep = builder.newNextStep;
      newOutput = builder.newOutput;
      newParent = builder.newParent;
      newDialogNode = builder.newDialogNode;
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
    private String workspaceId;
    private String dialogNode;
    private String nodeType;
    private List<DialogNodeAction> newActions;
    private String newConditions;
    private Map<String, Object> newContext;
    private String newPreviousSibling;
    private String newVariable;
    private Map<String, Object> newMetadata;
    private String newTitle;
    private String newDescription;
    private String newEventName;
    private DialogNodeNextStep newNextStep;
    private Map<String, Object> newOutput;
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
      newMetadata = updateDialogNodeOptions.newMetadata;
      newTitle = updateDialogNodeOptions.newTitle;
      newDescription = updateDialogNodeOptions.newDescription;
      newEventName = updateDialogNodeOptions.newEventName;
      newNextStep = updateDialogNodeOptions.newNextStep;
      newOutput = updateDialogNodeOptions.newOutput;
      newParent = updateDialogNodeOptions.newParent;
      newDialogNode = updateDialogNodeOptions.newDialogNode;
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
     * @param newDialogNode the newDialogNode
     */
    public UpdateDialogNodeOptionsBuilder(String workspaceId, String dialogNode, String newDialogNode) {
      this.workspaceId = workspaceId;
      this.dialogNode = dialogNode;
      this.newDialogNode = newDialogNode;
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
    public UpdateDialogNodeOptionsBuilder newContext(Map<String, Object> newContext) {
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
     * Set the newMetadata.
     *
     * @param newMetadata the newMetadata
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newMetadata(Map<String, Object> newMetadata) {
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
     * Set the newOutput.
     *
     * @param newOutput the newOutput
     * @return the UpdateDialogNodeOptions builder
     */
    public UpdateDialogNodeOptionsBuilder newOutput(Map<String, Object> newOutput) {
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
  }

  /**
   * The updateEntity options.
   */
  public class UpdateEntityOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private Boolean newFuzzyMatch;
    private String newEntity;
    private Map<String, Object> newMetadata;
    private List<CreateValue> newValues;
    private String newDescription;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * The name of the entity.
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
    public Map<String, Object> newMetadata() {
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
     * The description of the entity.
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
    private String workspaceId;
    private String entity;
    private Boolean newFuzzyMatch;
    private String newEntity;
    private Map<String, Object> newMetadata;
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
     * Adds an value to newValues.
     *
     * @param value the new value
     * @return the UpdateEntityOptions builder
     */
    public UpdateEntityOptionsBuilder addValue(CreateValue value) {
      IBMWatsonValidator.notNull(value, 'value cannot be null');
      if (this.newValues == null) {
        this.newValues = new List<CreateValue>();
      }
      this.newValues.add(value);
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
    public UpdateEntityOptionsBuilder newMetadata(Map<String, Object> newMetadata) {
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
  }

  /**
   * The updateExample options.
   */
  public class UpdateExampleOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String intent;
    private String text;
    private String newText;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
     * Gets the newText.
     *
     * The text of the user input example.
     *
     * @return the newText
     */
    public String newText() {
      return newText;
    }
    private UpdateExampleOptions(UpdateExampleOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.workspaceId, 'workspaceId cannot be empty');
      IBMWatsonValidator.notEmpty(builder.intent, 'intent cannot be empty');
      IBMWatsonValidator.notEmpty(builder.text, 'text cannot be empty');
      workspaceId = builder.workspaceId;
      intent = builder.intent;
      text = builder.text;
      newText = builder.newText;
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
    private String workspaceId;
    private String intent;
    private String text;
    private String newText;

    private UpdateExampleOptionsBuilder(UpdateExampleOptions updateExampleOptions) {
      workspaceId = updateExampleOptions.workspaceId;
      intent = updateExampleOptions.intent;
      text = updateExampleOptions.text;
      newText = updateExampleOptions.newText;
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
  }

  /**
   * The updateIntent options.
   */
  public class UpdateIntentOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String intent;
    private String newIntent;
    private List<CreateExample> newExamples;
    private String newDescription;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
     * Gets the newIntent.
     *
     * The name of the intent.
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
     * Adds an example to newExamples.
     *
     * @param example the new example
     * @return the UpdateIntentOptions builder
     */
    public UpdateIntentOptionsBuilder addExample(CreateExample example) {
      IBMWatsonValidator.notNull(example, 'example cannot be null');
      if (this.newExamples == null) {
        this.newExamples = new List<CreateExample>();
      }
      this.newExamples.add(example);
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
  }

  /**
   * The updateSynonym options.
   */
  public class UpdateSynonymOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private String synonym;
    private String newSynonym;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * The text of the synonym.
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
  }

  /**
   * The updateValue options.
   */
  public class UpdateValueOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String entity;
    private String value;
    private List<String> newSynonyms;
    private String valueType;
    private Map<String, Object> newMetadata;
    private List<String> newPatterns;
    private String newValue;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
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
     * An array of synonyms for the entity value.
     *
     * @return the newSynonyms
     */
    public List<String> newSynonyms() {
      return newSynonyms;
    }
    /**
     * Gets the valueType.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
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
    public Map<String, Object> newMetadata() {
      return newMetadata;
    }
    /**
     * Gets the newPatterns.
     *
     * An array of patterns for the entity value. A pattern is specified as a regular expression.
     *
     * @return the newPatterns
     */
    public List<String> newPatterns() {
      return newPatterns;
    }
    /**
     * Gets the newValue.
     *
     * The text of the entity value.
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
    private String workspaceId;
    private String entity;
    private String value;
    private List<String> newSynonyms;
    private String valueType;
    private Map<String, Object> newMetadata;
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
     * Adds an synonym to newSynonyms.
     *
     * @param synonym the new synonym
     * @return the UpdateValueOptions builder
     */
    public UpdateValueOptionsBuilder addSynonym(String synonym) {
      IBMWatsonValidator.notNull(synonym, 'synonym cannot be null');
      if (this.newSynonyms == null) {
        this.newSynonyms = new List<String>();
      }
      this.newSynonyms.add(synonym);
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
    public UpdateValueOptionsBuilder newMetadata(Map<String, Object> newMetadata) {
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
  }

  /**
   * The updateWorkspace options.
   */
  public class UpdateWorkspaceOptions extends IBMWatsonGenericModel {
    private String workspaceId;
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, Object> metadata;
    private Boolean learningOptOut;
    /**
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String workspaceId() {
      return workspaceId;
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
     * Gets the dialogNodes.
     *
     * An array of objects defining the nodes in the workspace dialog.
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
    public Map<String, Object> metadata() {
      return metadata;
    }
    /**
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    public Boolean learningOptOut() {
      return learningOptOut;
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
    private String workspaceId;
    private String name;
    private String description;
    private String language;
    private List<CreateIntent> intents;
    private List<CreateEntity> entities;
    private List<CreateDialogNode> dialogNodes;
    private List<CreateCounterexample> counterexamples;
    private Map<String, Object> metadata;
    private Boolean learningOptOut;

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
     * Adds an intent to intents.
     *
     * @param intent the new intent
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addIntent(CreateIntent intent) {
      IBMWatsonValidator.notNull(intent, 'intent cannot be null');
      if (this.intents == null) {
        this.intents = new List<CreateIntent>();
      }
      this.intents.add(intent);
      return this;
    }

    /**
     * Adds an entity to entities.
     *
     * @param entity the new entity
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addEntity(CreateEntity entity) {
      IBMWatsonValidator.notNull(entity, 'entity cannot be null');
      if (this.entities == null) {
        this.entities = new List<CreateEntity>();
      }
      this.entities.add(entity);
      return this;
    }

    /**
     * Adds an dialogNode to dialogNodes.
     *
     * @param dialogNode the new dialogNode
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addDialogNode(CreateDialogNode dialogNode) {
      IBMWatsonValidator.notNull(dialogNode, 'dialogNode cannot be null');
      if (this.dialogNodes == null) {
        this.dialogNodes = new List<CreateDialogNode>();
      }
      this.dialogNodes.add(dialogNode);
      return this;
    }

    /**
     * Adds an counterexample to counterexamples.
     *
     * @param counterexample the new counterexample
     * @return the UpdateWorkspaceOptions builder
     */
    public UpdateWorkspaceOptionsBuilder addCounterexample(CreateCounterexample counterexample) {
      IBMWatsonValidator.notNull(counterexample, 'counterexample cannot be null');
      if (this.counterexamples == null) {
        this.counterexamples = new List<CreateCounterexample>();
      }
      this.counterexamples.add(counterexample);
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
    public UpdateWorkspaceOptionsBuilder metadata(Map<String, Object> metadata) {
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
  }

  /**
   * Value.
   */
  public class Value extends IBMWatsonGenericModel {
    private String valueText;
    private Map<String, Object> metadata;
    private Datetime created;
    private Datetime updated;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;
    /**
     * Gets the valueText.
     *
     * The text of the entity value.
     *
     * @return the valueText
     */
    public String getValueText() {
      return valueText;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public Map<String, Object> getMetadata() {
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
     * Gets the valueType.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
     *
     * @return the valueType
     */
    public String getValueType() {
      return valueType;
    }

    /**
     * Sets the valueText.
     *
     * @param valueText the new valueText
     */
    public void setValueText(final String valueText) {
      this.valueText = valueText;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, Object> metadata) {
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
     * Sets the valueType.
     *
     * @param valueType the new valueType
     */
    public void setValueType(final String valueType) {
      this.valueType = valueType;
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
    private String valueText;
    private Map<String, Object> metadata;
    private Datetime created;
    private Datetime updated;
    private List<String> synonyms;
    private List<String> patterns;
    private String valueType;
    /**
     * Gets the valueText.
     *
     * The text of the entity value.
     *
     * @return the valueText
     */
    public String getValueText() {
      return valueText;
    }
    /**
     * Gets the metadata.
     *
     * Any metadata related to the entity value.
     *
     * @return the metadata
     */
    public Map<String, Object> getMetadata() {
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
     * Gets the valueType.
     *
     * Specifies the type of value (`synonyms` or `patterns`). The default value is `synonyms`.
     *
     * @return the valueType
     */
    public String getValueType() {
      return valueType;
    }

    /**
     * Sets the valueText.
     *
     * @param valueText the new valueText
     */
    public void setValueText(final String valueText) {
      this.valueText = valueText;
    }

    /**
     * Sets the metadata.
     *
     * @param metadata the new metadata
     */
    public void setMetadata(final Map<String, Object> metadata) {
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
     * Sets the valueType.
     *
     * @param valueType the new valueType
     */
    public void setValueType(final String valueType) {
      this.valueType = valueType;
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
    private String workspaceId;
    private String description;
    private Map<String, Object> metadata;
    private Boolean learningOptOut;
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
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String getWorkspaceId() {
      return workspaceId;
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
    public Map<String, Object> getMetadata() {
      return metadata;
    }
    /**
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    public Boolean isLearningOptOut() {
      return learningOptOut;
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
    public void setMetadata(final Map<String, Object> metadata) {
      this.metadata = metadata;
    }

    /**
     * Sets the learningOptOut.
     *
     * @param learningOptOut the new learningOptOut
     */
    public void setLearningOptOut(final Boolean learningOptOut) {
      this.learningOptOut = learningOptOut;
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
    private Map<String, Object> metadata;
    private Datetime created;
    private Datetime updated;
    private String workspaceId;
    private String status;
    private Boolean learningOptOut;
    private List<IntentExport> intents;
    private List<EntityExport> entities;
    private List<Counterexample> counterexamples;
    private List<DialogNode> dialogNodes;
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
    public Map<String, Object> getMetadata() {
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
     * Gets the workspaceId.
     *
     * The workspace ID.
     *
     * @return the workspaceId
     */
    public String getWorkspaceId() {
      return workspaceId;
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
     * Gets the learningOptOut.
     *
     * Whether training data from the workspace can be used by IBM for general service improvements. `true` indicates that workspace training data is not to be used.
     *
     * @return the learningOptOut
     */
    public Boolean isLearningOptOut() {
      return learningOptOut;
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
     * Gets the dialogNodes.
     *
     * An array of objects describing the dialog nodes in the workspace.
     *
     * @return the dialogNodes
     */
    public List<DialogNode> getDialogNodes() {
      return dialogNodes;
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
    public void setMetadata(final Map<String, Object> metadata) {
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
     * Sets the learningOptOut.
     *
     * @param learningOptOut the new learningOptOut
     */
    public void setLearningOptOut(final Boolean learningOptOut) {
      this.learningOptOut = learningOptOut;
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
     * Sets the dialogNodes.
     *
     * @param dialogNodes the new dialogNodes
     */
    public void setDialogNodes(final List<DialogNode> dialogNodes) {
      this.dialogNodes = dialogNodes;
    }
  }

}
