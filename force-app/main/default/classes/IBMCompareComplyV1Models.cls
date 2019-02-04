public class IBMCompareComplyV1Models {
  /**
   * The addFeedback options.
   */
  public class AddFeedbackOptions extends IBMWatsonOptionsModel {
    private String userId;
    private String comment;
    private FeedbackDataInput feedbackData;
 
    /**
     * Gets the userId.
     *
     * An optional string identifying the user.
     *
     * @return the userId
     */
    public String userId() {
      return userId;
    }
 
    /**
     * Gets the comment.
     *
     * An optional comment on or description of the feedback.
     *
     * @return the comment
     */
    public String comment() {
      return comment;
    }
 
    /**
     * Gets the feedbackData.
     *
     * Feedback data for submission.
     *
     * @return the feedbackData
     */
    public FeedbackDataInput feedbackData() {
      return feedbackData;
    }

    private AddFeedbackOptions(AddFeedbackOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.feedbackData, 'feedbackData cannot be null');
      userId = builder.userId;
      comment = builder.comment;
      feedbackData = builder.feedbackData;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a AddFeedbackOptions builder
     */
    public AddFeedbackOptionsBuilder newBuilder() {
      return new AddFeedbackOptionsBuilder(this);
    }

  }

  /**
   * AddFeedbackOptions Builder.
   */
  public class AddFeedbackOptionsBuilder extends IBMWatsonOptionsModel {
    private String userId;
    private String comment;
    private FeedbackDataInput feedbackData;

    private AddFeedbackOptionsBuilder(AddFeedbackOptions addFeedbackOptions) {
      userId = addFeedbackOptions.userId;
      comment = addFeedbackOptions.comment;
      feedbackData = addFeedbackOptions.feedbackData;
      this.requestHeaders.putAll(addFeedbackOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public AddFeedbackOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param feedbackData the feedbackData
     */
    public AddFeedbackOptionsBuilder(FeedbackDataInput feedbackData) {
      this.feedbackData = feedbackData;
    }

    /**
     * Builds a AddFeedbackOptions.
     *
     * @return the addFeedbackOptions
     */
    public AddFeedbackOptions build() {
      return new AddFeedbackOptions(this);
    }

    /**
     * Set the userId.
     *
     * @param userId the userId
     * @return the AddFeedbackOptions builder
     */
    public AddFeedbackOptionsBuilder userId(String userId) {
      this.userId = userId;
      return this;
    }

    /**
     * Set the comment.
     *
     * @param comment the comment
     * @return the AddFeedbackOptions builder
     */
    public AddFeedbackOptionsBuilder comment(String comment) {
      this.comment = comment;
      return this;
    }

    /**
     * Set the feedbackData.
     *
     * @param feedbackData the feedbackData
     * @return the AddFeedbackOptions builder
     */
    public AddFeedbackOptionsBuilder feedbackData(FeedbackDataInput feedbackData) {
      this.feedbackData = feedbackData;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the AddFeedbackOptions builder
     */
    public AddFeedbackOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * A party's address.
   */
  public class Address extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private Location location_serialized_name;
 
    /**
     * Gets the text.
     *
     * A string listing the address.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
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
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Address ret = (Address) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * AlignedElement.
   */
  public class AlignedElement extends IBMWatsonGenericModel {
    private List<ElementPair> element_pair_serialized_name;
    private Boolean identical_text_serialized_name;
    private Boolean significant_elements_serialized_name;
    private List<String> provenance_ids_serialized_name;
 
    /**
     * Gets the elementPair.
     *
     * Identifies two elements that semantically align between the compared documents.
     *
     * @return the elementPair
     */
    @AuraEnabled
    public List<ElementPair> getElementPair() {
      return element_pair_serialized_name;
    }
 
    /**
     * Gets the identicalText.
     *
     * Specifies whether the text is identical.
     *
     * @return the identicalText
     */
    @AuraEnabled
    public Boolean getIdenticalText() {
      return identical_text_serialized_name;
    }
 
    /**
     * Gets the significantElements.
     *
     * Indicates that the elements aligned are contractual clauses of significance.
     *
     * @return the significantElements
     */
    @AuraEnabled
    public Boolean getSignificantElements() {
      return significant_elements_serialized_name;
    }
 
    /**
     * Gets the provenanceIds.
     *
     * One or more hashed values that you can send to IBM to provide feedback or receive support.
     *
     * @return the provenanceIds
     */
    @AuraEnabled
    public List<String> getProvenanceIds() {
      return provenance_ids_serialized_name;
    }

    /**
     * Sets the elementPair.
     *
     * @param elementPair the new elementPair
     */
    public void setElementPair(final List<ElementPair> elementPair) {
      this.element_pair_serialized_name = elementPair;
    }

    /**
     * Sets the identicalText.
     *
     * @param identicalText the new identicalText
     */
    public void setIdenticalText(final Boolean identicalText) {
      this.identical_text_serialized_name = identicalText;
    }

    /**
     * Sets the significantElements.
     *
     * @param significantElements the new significantElements
     */
    public void setSignificantElements(final Boolean significantElements) {
      this.significant_elements_serialized_name = significantElements;
    }

    /**
     * Sets the provenanceIds.
     *
     * @param provenanceIds the new provenanceIds
     */
    public void setProvenanceIds(final List<String> provenanceIds) {
      this.provenance_ids_serialized_name = provenanceIds;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      AlignedElement ret = (AlignedElement) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for elementPair
      List<ElementPair> newElementPair = new List<ElementPair>();
      List<ElementPair> deserializedElementPair = ret.getElementPair();
      if (deserializedElementPair != null) {
        for (Integer i = 0; i < deserializedElementPair.size(); i++) {
          ElementPair currentItem = ret.getElementPair().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('element_pair_serialized_name');
          ElementPair newItem = (ElementPair) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ElementPair.class);
          newElementPair.add(newItem);
        }
        ret.setElementPair(newElementPair);
      }

      return ret;
    }
  }

  /**
   * List of document attributes.
   */
  public class Attribute extends IBMWatsonGenericModel {
    private String type_serialized_name;
    private String text_serialized_name;
    private Location location_serialized_name;
 
    /**
     * Gets the xtype.
     *
     * The type of attribute.
     *
     * @return the xtype
     */
    @AuraEnabled
    public String getXtype() {
      return type_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text associated with the attribute.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }

    /**
     * Sets the xtype.
     *
     * @param xtype the new xtype
     */
    public void setXtype(final String xtype) {
      this.type_serialized_name = xtype;
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
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Attribute ret = (Attribute) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * The batch-request status.
   */
  public class BatchStatus extends IBMWatsonResponseModel {
    private String function_serialized_name;
    private String input_bucket_location_serialized_name;
    private String input_bucket_name_serialized_name;
    private String output_bucket_location_serialized_name;
    private String output_bucket_name_serialized_name;
    private String batch_id_serialized_name;
    private DocCounts document_counts_serialized_name;
    private String status_serialized_name;
    private Datetime created_serialized_name;
    private Datetime updated_serialized_name;
 
    /**
     * Gets the function.
     *
     * The method to be run against the documents. Possible values are `html_conversion`, `element_classification`, and
     * `tables`.
     *
     * @return the function
     */
    @AuraEnabled
    public String getFunction() {
      return function_serialized_name;
    }
 
    /**
     * Gets the inputBucketLocation.
     *
     * The geographical location of the Cloud Object Storage input bucket as listed on the **Endpoint** tab of your COS
     * instance; for example, `us-geo`, `eu-geo`, or `ap-geo`.
     *
     * @return the inputBucketLocation
     */
    @AuraEnabled
    public String getInputBucketLocation() {
      return input_bucket_location_serialized_name;
    }
 
    /**
     * Gets the inputBucketName.
     *
     * The name of the Cloud Object Storage input bucket.
     *
     * @return the inputBucketName
     */
    @AuraEnabled
    public String getInputBucketName() {
      return input_bucket_name_serialized_name;
    }
 
    /**
     * Gets the outputBucketLocation.
     *
     * The geographical location of the Cloud Object Storage output bucket as listed on the **Endpoint** tab of your COS
     * instance; for example, `us-geo`, `eu-geo`, or `ap-geo`.
     *
     * @return the outputBucketLocation
     */
    @AuraEnabled
    public String getOutputBucketLocation() {
      return output_bucket_location_serialized_name;
    }
 
    /**
     * Gets the outputBucketName.
     *
     * The name of the Cloud Object Storage output bucket.
     *
     * @return the outputBucketName
     */
    @AuraEnabled
    public String getOutputBucketName() {
      return output_bucket_name_serialized_name;
    }
 
    /**
     * Gets the batchId.
     *
     * The unique identifier for the batch request.
     *
     * @return the batchId
     */
    @AuraEnabled
    public String getBatchId() {
      return batch_id_serialized_name;
    }
 
    /**
     * Gets the documentCounts.
     *
     * Document counts.
     *
     * @return the documentCounts
     */
    @AuraEnabled
    public DocCounts getDocumentCounts() {
      return document_counts_serialized_name;
    }
 
    /**
     * Gets the status.
     *
     * The status of the batch request.
     *
     * @return the status
     */
    @AuraEnabled
    public String getStatus() {
      return status_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * The creation time of the batch request.
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
     * The time of the most recent update to the batch request.
     *
     * @return the updated
     */
    @AuraEnabled
    public Datetime getUpdated() {
      return updated_serialized_name;
    }

    /**
     * Sets the function.
     *
     * @param function the new function
     */
    public void setFunction(final String function) {
      this.function_serialized_name = function;
    }

    /**
     * Sets the inputBucketLocation.
     *
     * @param inputBucketLocation the new inputBucketLocation
     */
    public void setInputBucketLocation(final String inputBucketLocation) {
      this.input_bucket_location_serialized_name = inputBucketLocation;
    }

    /**
     * Sets the inputBucketName.
     *
     * @param inputBucketName the new inputBucketName
     */
    public void setInputBucketName(final String inputBucketName) {
      this.input_bucket_name_serialized_name = inputBucketName;
    }

    /**
     * Sets the outputBucketLocation.
     *
     * @param outputBucketLocation the new outputBucketLocation
     */
    public void setOutputBucketLocation(final String outputBucketLocation) {
      this.output_bucket_location_serialized_name = outputBucketLocation;
    }

    /**
     * Sets the outputBucketName.
     *
     * @param outputBucketName the new outputBucketName
     */
    public void setOutputBucketName(final String outputBucketName) {
      this.output_bucket_name_serialized_name = outputBucketName;
    }

    /**
     * Sets the batchId.
     *
     * @param batchId the new batchId
     */
    public void setBatchId(final String batchId) {
      this.batch_id_serialized_name = batchId;
    }

    /**
     * Sets the documentCounts.
     *
     * @param documentCounts the new documentCounts
     */
    public void setDocumentCounts(final DocCounts documentCounts) {
      this.document_counts_serialized_name = documentCounts;
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
     * Sets the created.
     *
     * @param created the new created
     */
    public void setCreated(final Datetime created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the updated.
     *
     * @param updated the new updated
     */
    public void setUpdated(final Datetime updated) {
      this.updated_serialized_name = updated;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      BatchStatus ret = (BatchStatus) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for documentCounts
      DocCounts newDocumentCounts = (DocCounts) new DocCounts().deserialize(JSON.serialize(ret.getDocumentCounts()), (Map<String, Object>) jsonMap.get('document_counts_serialized_name'), DocCounts.class);
      ret.setDocumentCounts(newDocumentCounts);

      return ret;
    }
  }

  /**
   * The results of a successful `GET /v1/batches` request.
   */
  public class Batches extends IBMWatsonResponseModel {
    private List<BatchStatus> batches_serialized_name;
 
    /**
     * Gets the batches.
     *
     * A list of the status of all batch requests.
     *
     * @return the batches
     */
    @AuraEnabled
    public List<BatchStatus> getBatches() {
      return batches_serialized_name;
    }

    /**
     * Sets the batches.
     *
     * @param batches the new batches
     */
    public void setBatches(final List<BatchStatus> batches) {
      this.batches_serialized_name = batches;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Batches ret = (Batches) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for batches
      List<BatchStatus> newBatches = new List<BatchStatus>();
      List<BatchStatus> deserializedBatches = ret.getBatches();
      if (deserializedBatches != null) {
        for (Integer i = 0; i < deserializedBatches.size(); i++) {
          BatchStatus currentItem = ret.getBatches().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('batches_serialized_name');
          BatchStatus newItem = (BatchStatus) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), BatchStatus.class);
          newBatches.add(newItem);
        }
        ret.setBatches(newBatches);
      }

      return ret;
    }
  }

  /**
   * Cells that are not table header, column header, or row header cells.
   */
  public class BodyCells extends IBMWatsonGenericModel {
    private String cell_id_serialized_name;
    private Location location_serialized_name;
    private String text_serialized_name;
    private Long row_index_begin_serialized_name;
    private Long row_index_end_serialized_name;
    private Long column_index_begin_serialized_name;
    private Long column_index_end_serialized_name;
    private List<String> row_header_ids_serialized_name;
    private List<String> row_header_texts_serialized_name;
    private List<String> row_header_texts_normalized_serialized_name;
    private List<String> column_header_ids_serialized_name;
    private List<String> column_header_texts_serialized_name;
    private List<String> column_header_texts_normalized_serialized_name;
    private List<Attribute> attributes_serialized_name;
 
    /**
     * Gets the cellId.
     *
     * A string value in the format `columnHeader-x-y`, where `x` and `y` are the begin and end offsets of this column
     * header cell in the input document.
     *
     * @return the cellId
     */
    @AuraEnabled
    public String getCellId() {
      return cell_id_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The textual contents of this cell from the input document without associated markup content.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the rowIndexBegin.
     *
     * The `begin` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexBegin
     */
    @AuraEnabled
    public Long getRowIndexBegin() {
      return row_index_begin_serialized_name;
    }
 
    /**
     * Gets the rowIndexEnd.
     *
     * The `end` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexEnd
     */
    @AuraEnabled
    public Long getRowIndexEnd() {
      return row_index_end_serialized_name;
    }
 
    /**
     * Gets the columnIndexBegin.
     *
     * The `begin` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexBegin
     */
    @AuraEnabled
    public Long getColumnIndexBegin() {
      return column_index_begin_serialized_name;
    }
 
    /**
     * Gets the columnIndexEnd.
     *
     * The `end` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexEnd
     */
    @AuraEnabled
    public Long getColumnIndexEnd() {
      return column_index_end_serialized_name;
    }
 
    /**
     * Gets the rowHeaderIds.
     *
     * An array of values, each being the `id` value of a row header that is applicable to this body cell.
     *
     * @return the rowHeaderIds
     */
    @AuraEnabled
    public List<String> getRowHeaderIds() {
      return row_header_ids_serialized_name;
    }
 
    /**
     * Gets the rowHeaderTexts.
     *
     * An array of values, each being the `text` value of a row header that is applicable to this body cell.
     *
     * @return the rowHeaderTexts
     */
    @AuraEnabled
    public List<String> getRowHeaderTexts() {
      return row_header_texts_serialized_name;
    }
 
    /**
     * Gets the rowHeaderTextsNormalized.
     *
     * If you provide customization input, the normalized version of the row header texts according to the
     * customization; otherwise, the same value as `row_header_texts`.
     *
     * @return the rowHeaderTextsNormalized
     */
    @AuraEnabled
    public List<String> getRowHeaderTextsNormalized() {
      return row_header_texts_normalized_serialized_name;
    }
 
    /**
     * Gets the columnHeaderIds.
     *
     * An array of values, each being the `id` value of a column header that is applicable to the current cell.
     *
     * @return the columnHeaderIds
     */
    @AuraEnabled
    public List<String> getColumnHeaderIds() {
      return column_header_ids_serialized_name;
    }
 
    /**
     * Gets the columnHeaderTexts.
     *
     * An array of values, each being the `text` value of a column header that is applicable to the current cell.
     *
     * @return the columnHeaderTexts
     */
    @AuraEnabled
    public List<String> getColumnHeaderTexts() {
      return column_header_texts_serialized_name;
    }
 
    /**
     * Gets the columnHeaderTextsNormalized.
     *
     * If you provide customization input, the normalized version of the column header texts according to the
     * customization; otherwise, the same value as `column_header_texts`.
     *
     * @return the columnHeaderTextsNormalized
     */
    @AuraEnabled
    public List<String> getColumnHeaderTextsNormalized() {
      return column_header_texts_normalized_serialized_name;
    }
 
    /**
     * Gets the attributes.
     *
     * @return the attributes
     */
    @AuraEnabled
    public List<Attribute> getAttributes() {
      return attributes_serialized_name;
    }

    /**
     * Sets the cellId.
     *
     * @param cellId the new cellId
     */
    public void setCellId(final String cellId) {
      this.cell_id_serialized_name = cellId;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
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
     * Sets the rowIndexBegin.
     *
     * @param rowIndexBegin the new rowIndexBegin
     */
    public void setRowIndexBegin(final long rowIndexBegin) {
      this.row_index_begin_serialized_name = rowIndexBegin;
    }

    /**
     * Sets the rowIndexEnd.
     *
     * @param rowIndexEnd the new rowIndexEnd
     */
    public void setRowIndexEnd(final long rowIndexEnd) {
      this.row_index_end_serialized_name = rowIndexEnd;
    }

    /**
     * Sets the columnIndexBegin.
     *
     * @param columnIndexBegin the new columnIndexBegin
     */
    public void setColumnIndexBegin(final long columnIndexBegin) {
      this.column_index_begin_serialized_name = columnIndexBegin;
    }

    /**
     * Sets the columnIndexEnd.
     *
     * @param columnIndexEnd the new columnIndexEnd
     */
    public void setColumnIndexEnd(final long columnIndexEnd) {
      this.column_index_end_serialized_name = columnIndexEnd;
    }

    /**
     * Sets the rowHeaderIds.
     *
     * @param rowHeaderIds the new rowHeaderIds
     */
    public void setRowHeaderIds(final List<String> rowHeaderIds) {
      this.row_header_ids_serialized_name = rowHeaderIds;
    }

    /**
     * Sets the rowHeaderTexts.
     *
     * @param rowHeaderTexts the new rowHeaderTexts
     */
    public void setRowHeaderTexts(final List<String> rowHeaderTexts) {
      this.row_header_texts_serialized_name = rowHeaderTexts;
    }

    /**
     * Sets the rowHeaderTextsNormalized.
     *
     * @param rowHeaderTextsNormalized the new rowHeaderTextsNormalized
     */
    public void setRowHeaderTextsNormalized(final List<String> rowHeaderTextsNormalized) {
      this.row_header_texts_normalized_serialized_name = rowHeaderTextsNormalized;
    }

    /**
     * Sets the columnHeaderIds.
     *
     * @param columnHeaderIds the new columnHeaderIds
     */
    public void setColumnHeaderIds(final List<String> columnHeaderIds) {
      this.column_header_ids_serialized_name = columnHeaderIds;
    }

    /**
     * Sets the columnHeaderTexts.
     *
     * @param columnHeaderTexts the new columnHeaderTexts
     */
    public void setColumnHeaderTexts(final List<String> columnHeaderTexts) {
      this.column_header_texts_serialized_name = columnHeaderTexts;
    }

    /**
     * Sets the columnHeaderTextsNormalized.
     *
     * @param columnHeaderTextsNormalized the new columnHeaderTextsNormalized
     */
    public void setColumnHeaderTextsNormalized(final List<String> columnHeaderTextsNormalized) {
      this.column_header_texts_normalized_serialized_name = columnHeaderTextsNormalized;
    }

    /**
     * Sets the attributes.
     *
     * @param attributes the new attributes
     */
    public void setAttributes(final List<Attribute> attributes) {
      this.attributes_serialized_name = attributes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      BodyCells ret = (BodyCells) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for attributes
      List<Attribute> newAttributes = new List<Attribute>();
      List<Attribute> deserializedAttributes = ret.getAttributes();
      if (deserializedAttributes != null) {
        for (Integer i = 0; i < deserializedAttributes.size(); i++) {
          Attribute currentItem = ret.getAttributes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('attributes_serialized_name');
          Attribute newItem = (Attribute) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Attribute.class);
          newAttributes.add(newItem);
        }
        ret.setAttributes(newAttributes);
      }

      return ret;
    }
  }

  /**
   * Information defining an element's subject matter.
   */
  public class Category extends IBMWatsonGenericModel {
    private String label_serialized_name;
    private List<String> provenance_ids_serialized_name;
 
    /**
     * Gets the label.
     *
     * The category of the associated element.
     *
     * @return the label
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
    }
 
    /**
     * Gets the provenanceIds.
     *
     * One or more hashed values that you can send to IBM to provide feedback or receive support.
     *
     * @return the provenanceIds
     */
    @AuraEnabled
    public List<String> getProvenanceIds() {
      return provenance_ids_serialized_name;
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
     * Sets the provenanceIds.
     *
     * @param provenanceIds the new provenanceIds
     */
    public void setProvenanceIds(final List<String> provenanceIds) {
      this.provenance_ids_serialized_name = provenanceIds;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Category ret = (Category) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The classifyElements options.
   */
  public class ClassifyElementsOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile file;
    private String filename;
    private String modelId;
    private String fileContentType;
 
    /**
     * Gets the file.
     *
     * The file to classify.
     *
     * @return the file
     */
    public IBMWatsonFile file() {
      return file;
    }
 
    /**
     * Gets the filename.
     *
     * The filename for file.
     *
     * @return the filename
     */
    public String filename() {
      return filename;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }
 
    /**
     * Gets the fileContentType.
     *
     * The content type of file.
     *
     * @return the fileContentType
     */
    public String fileContentType() {
      return fileContentType;
    }

    private ClassifyElementsOptions(ClassifyElementsOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.file, 'file cannot be null');
      file = builder.file;
      filename = builder.filename;
      modelId = builder.modelId;
      fileContentType = builder.fileContentType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ClassifyElementsOptions builder
     */
    public ClassifyElementsOptionsBuilder newBuilder() {
      return new ClassifyElementsOptionsBuilder(this);
    }

  }

  /**
   * ClassifyElementsOptions Builder.
   */
  public class ClassifyElementsOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile file;
    private String filename;
    private String modelId;
    private String fileContentType;

    private ClassifyElementsOptionsBuilder(ClassifyElementsOptions classifyElementsOptions) {
      file = classifyElementsOptions.file;
      filename = classifyElementsOptions.filename;
      modelId = classifyElementsOptions.modelId;
      fileContentType = classifyElementsOptions.fileContentType;
      this.requestHeaders.putAll(classifyElementsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ClassifyElementsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param file the file
     */
    public ClassifyElementsOptionsBuilder(IBMWatsonFile file) {
      this.file = file;
    }

    /**
     * Builds a ClassifyElementsOptions.
     *
     * @return the classifyElementsOptions
     */
    public ClassifyElementsOptions build() {
      return new ClassifyElementsOptions(this);
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the ClassifyElementsOptions builder
     */
    public ClassifyElementsOptionsBuilder file(IBMWatsonFile file) {
      this.file = file;
      return this;
    }

    /**
     * Set the filename.
     *
     * @param filename the filename
     * @return the ClassifyElementsOptions builder
     */
    public ClassifyElementsOptionsBuilder filename(String filename) {
      this.filename = filename;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the ClassifyElementsOptions builder
     */
    public ClassifyElementsOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Set the fileContentType.
     *
     * @param fileContentType the fileContentType
     * @return the ClassifyElementsOptions builder
     */
    public ClassifyElementsOptionsBuilder fileContentType(String fileContentType) {
      this.fileContentType = fileContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ClassifyElementsOptions builder
     */
    public ClassifyElementsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The analysis of objects returned by the `/v1/element_classification` method.
   */
  public class ClassifyReturn extends IBMWatsonResponseModel {
    private Document document_serialized_name;
    private String model_id_serialized_name;
    private String model_version_serialized_name;
    private List<Element> elements_serialized_name;
    private List<Tables> tables_serialized_name;
    private DocStructure document_structure_serialized_name;
    private List<Parties> parties_serialized_name;
    private List<EffectiveDates> effective_dates_serialized_name;
    private List<ContractAmts> contract_amounts_serialized_name;
    private List<TerminationDates> termination_dates_serialized_name;
 
    /**
     * Gets the document.
     *
     * Basic information about the input document.
     *
     * @return the document
     */
    @AuraEnabled
    public Document getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model used to classify the input document. For the `/v1/element_classification` method, the only
     * valid value is `contracts`.
     *
     * @return the modelId
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
 
    /**
     * Gets the modelVersion.
     *
     * The version of the analysis model identified by the value of the `model_id` key.
     *
     * @return the modelVersion
     */
    @AuraEnabled
    public String getModelVersion() {
      return model_version_serialized_name;
    }
 
    /**
     * Gets the elements.
     *
     * Document elements identified by the service.
     *
     * @return the elements
     */
    @AuraEnabled
    public List<Element> getElements() {
      return elements_serialized_name;
    }
 
    /**
     * Gets the tables.
     *
     * Definition of tables identified in the input document.
     *
     * @return the tables
     */
    @AuraEnabled
    public List<Tables> getTables() {
      return tables_serialized_name;
    }
 
    /**
     * Gets the documentStructure.
     *
     * The structure of the input document.
     *
     * @return the documentStructure
     */
    @AuraEnabled
    public DocStructure getDocumentStructure() {
      return document_structure_serialized_name;
    }
 
    /**
     * Gets the parties.
     *
     * Definitions of the parties identified in the input document.
     *
     * @return the parties
     */
    @AuraEnabled
    public List<Parties> getParties() {
      return parties_serialized_name;
    }
 
    /**
     * Gets the effectiveDates.
     *
     * The effective dates of the input document.
     *
     * @return the effectiveDates
     */
    @AuraEnabled
    public List<EffectiveDates> getEffectiveDates() {
      return effective_dates_serialized_name;
    }
 
    /**
     * Gets the contractAmounts.
     *
     * The monetary amounts identified in the input document.
     *
     * @return the contractAmounts
     */
    @AuraEnabled
    public List<ContractAmts> getContractAmounts() {
      return contract_amounts_serialized_name;
    }
 
    /**
     * Gets the terminationDates.
     *
     * The input document's termination dates.
     *
     * @return the terminationDates
     */
    @AuraEnabled
    public List<TerminationDates> getTerminationDates() {
      return termination_dates_serialized_name;
    }

    /**
     * Sets the document.
     *
     * @param document the new document
     */
    public void setDocument(final Document document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the modelId.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
    }

    /**
     * Sets the modelVersion.
     *
     * @param modelVersion the new modelVersion
     */
    public void setModelVersion(final String modelVersion) {
      this.model_version_serialized_name = modelVersion;
    }

    /**
     * Sets the elements.
     *
     * @param elements the new elements
     */
    public void setElements(final List<Element> elements) {
      this.elements_serialized_name = elements;
    }

    /**
     * Sets the tables.
     *
     * @param tables the new tables
     */
    public void setTables(final List<Tables> tables) {
      this.tables_serialized_name = tables;
    }

    /**
     * Sets the documentStructure.
     *
     * @param documentStructure the new documentStructure
     */
    public void setDocumentStructure(final DocStructure documentStructure) {
      this.document_structure_serialized_name = documentStructure;
    }

    /**
     * Sets the parties.
     *
     * @param parties the new parties
     */
    public void setParties(final List<Parties> parties) {
      this.parties_serialized_name = parties;
    }

    /**
     * Sets the effectiveDates.
     *
     * @param effectiveDates the new effectiveDates
     */
    public void setEffectiveDates(final List<EffectiveDates> effectiveDates) {
      this.effective_dates_serialized_name = effectiveDates;
    }

    /**
     * Sets the contractAmounts.
     *
     * @param contractAmounts the new contractAmounts
     */
    public void setContractAmounts(final List<ContractAmts> contractAmounts) {
      this.contract_amounts_serialized_name = contractAmounts;
    }

    /**
     * Sets the terminationDates.
     *
     * @param terminationDates the new terminationDates
     */
    public void setTerminationDates(final List<TerminationDates> terminationDates) {
      this.termination_dates_serialized_name = terminationDates;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ClassifyReturn ret = (ClassifyReturn) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for document
      Document newDocument = (Document) new Document().deserialize(JSON.serialize(ret.getDocument()), (Map<String, Object>) jsonMap.get('document_serialized_name'), Document.class);
      ret.setDocument(newDocument);

      // calling custom deserializer for elements
      List<Element> newElements = new List<Element>();
      List<Element> deserializedElements = ret.getElements();
      if (deserializedElements != null) {
        for (Integer i = 0; i < deserializedElements.size(); i++) {
          Element currentItem = ret.getElements().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('elements_serialized_name');
          Element newItem = (Element) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Element.class);
          newElements.add(newItem);
        }
        ret.setElements(newElements);
      }

      // calling custom deserializer for tables
      List<Tables> newTables = new List<Tables>();
      List<Tables> deserializedTables = ret.getTables();
      if (deserializedTables != null) {
        for (Integer i = 0; i < deserializedTables.size(); i++) {
          Tables currentItem = ret.getTables().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tables_serialized_name');
          Tables newItem = (Tables) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Tables.class);
          newTables.add(newItem);
        }
        ret.setTables(newTables);
      }

      // calling custom deserializer for documentStructure
      DocStructure newDocumentStructure = (DocStructure) new DocStructure().deserialize(JSON.serialize(ret.getDocumentStructure()), (Map<String, Object>) jsonMap.get('document_structure_serialized_name'), DocStructure.class);
      ret.setDocumentStructure(newDocumentStructure);

      // calling custom deserializer for parties
      List<Parties> newParties = new List<Parties>();
      List<Parties> deserializedParties = ret.getParties();
      if (deserializedParties != null) {
        for (Integer i = 0; i < deserializedParties.size(); i++) {
          Parties currentItem = ret.getParties().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('parties_serialized_name');
          Parties newItem = (Parties) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Parties.class);
          newParties.add(newItem);
        }
        ret.setParties(newParties);
      }

      // calling custom deserializer for effectiveDates
      List<EffectiveDates> newEffectiveDates = new List<EffectiveDates>();
      List<EffectiveDates> deserializedEffectiveDates = ret.getEffectiveDates();
      if (deserializedEffectiveDates != null) {
        for (Integer i = 0; i < deserializedEffectiveDates.size(); i++) {
          EffectiveDates currentItem = ret.getEffectiveDates().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('effective_dates_serialized_name');
          EffectiveDates newItem = (EffectiveDates) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), EffectiveDates.class);
          newEffectiveDates.add(newItem);
        }
        ret.setEffectiveDates(newEffectiveDates);
      }

      // calling custom deserializer for contractAmounts
      List<ContractAmts> newContractAmounts = new List<ContractAmts>();
      List<ContractAmts> deserializedContractAmounts = ret.getContractAmounts();
      if (deserializedContractAmounts != null) {
        for (Integer i = 0; i < deserializedContractAmounts.size(); i++) {
          ContractAmts currentItem = ret.getContractAmounts().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('contract_amounts_serialized_name');
          ContractAmts newItem = (ContractAmts) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ContractAmts.class);
          newContractAmounts.add(newItem);
        }
        ret.setContractAmounts(newContractAmounts);
      }

      // calling custom deserializer for terminationDates
      List<TerminationDates> newTerminationDates = new List<TerminationDates>();
      List<TerminationDates> deserializedTerminationDates = ret.getTerminationDates();
      if (deserializedTerminationDates != null) {
        for (Integer i = 0; i < deserializedTerminationDates.size(); i++) {
          TerminationDates currentItem = ret.getTerminationDates().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('termination_dates_serialized_name');
          TerminationDates newItem = (TerminationDates) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TerminationDates.class);
          newTerminationDates.add(newItem);
        }
        ret.setTerminationDates(newTerminationDates);
      }

      return ret;
    }
  }

  /**
   * Column-level cells, each applicable as a header to other cells in the same column as itself, of the current table.
   */
  public class ColumnHeaders extends IBMWatsonGenericModel {
    private String cell_id_serialized_name;
    private IBMWatsonMapModel location_serialized_name;
    private String text_serialized_name;
    private String text_normalized_serialized_name;
    private Long row_index_begin_serialized_name;
    private Long row_index_end_serialized_name;
    private Long column_index_begin_serialized_name;
    private Long column_index_end_serialized_name;
 
    /**
     * Gets the cellId.
     *
     * A string value in the format `columnHeader-x-y`, where `x` and `y` are the begin and end offsets of this column
     * header cell in the input document.
     *
     * @return the cellId
     */
    @AuraEnabled
    public String getCellId() {
      return cell_id_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The location of the column header cell in the current table as defined by its `begin` and `end` offsets,
     * respectfully, in the input document.
     *
     * @return the location
     */
    @AuraEnabled
    public IBMWatsonMapModel getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The textual contents of this cell from the input document without associated markup content.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the textNormalized.
     *
     * If you provide customization input, the normalized version of the cell text according to the customization;
     * otherwise, the same value as `text`.
     *
     * @return the textNormalized
     */
    @AuraEnabled
    public String getTextNormalized() {
      return text_normalized_serialized_name;
    }
 
    /**
     * Gets the rowIndexBegin.
     *
     * The `begin` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexBegin
     */
    @AuraEnabled
    public Long getRowIndexBegin() {
      return row_index_begin_serialized_name;
    }
 
    /**
     * Gets the rowIndexEnd.
     *
     * The `end` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexEnd
     */
    @AuraEnabled
    public Long getRowIndexEnd() {
      return row_index_end_serialized_name;
    }
 
    /**
     * Gets the columnIndexBegin.
     *
     * The `begin` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexBegin
     */
    @AuraEnabled
    public Long getColumnIndexBegin() {
      return column_index_begin_serialized_name;
    }
 
    /**
     * Gets the columnIndexEnd.
     *
     * The `end` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexEnd
     */
    @AuraEnabled
    public Long getColumnIndexEnd() {
      return column_index_end_serialized_name;
    }

    /**
     * Sets the cellId.
     *
     * @param cellId the new cellId
     */
    public void setCellId(final String cellId) {
      this.cell_id_serialized_name = cellId;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final IBMWatsonMapModel location) {
      this.location_serialized_name = location;
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
     * Sets the textNormalized.
     *
     * @param textNormalized the new textNormalized
     */
    public void setTextNormalized(final String textNormalized) {
      this.text_normalized_serialized_name = textNormalized;
    }

    /**
     * Sets the rowIndexBegin.
     *
     * @param rowIndexBegin the new rowIndexBegin
     */
    public void setRowIndexBegin(final long rowIndexBegin) {
      this.row_index_begin_serialized_name = rowIndexBegin;
    }

    /**
     * Sets the rowIndexEnd.
     *
     * @param rowIndexEnd the new rowIndexEnd
     */
    public void setRowIndexEnd(final long rowIndexEnd) {
      this.row_index_end_serialized_name = rowIndexEnd;
    }

    /**
     * Sets the columnIndexBegin.
     *
     * @param columnIndexBegin the new columnIndexBegin
     */
    public void setColumnIndexBegin(final long columnIndexBegin) {
      this.column_index_begin_serialized_name = columnIndexBegin;
    }

    /**
     * Sets the columnIndexEnd.
     *
     * @param columnIndexEnd the new columnIndexEnd
     */
    public void setColumnIndexEnd(final long columnIndexEnd) {
      this.column_index_end_serialized_name = columnIndexEnd;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ColumnHeaders ret = (ColumnHeaders) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      IBMWatsonMapModel newLocation = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), IBMWatsonMapModel.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * The compareDocuments options.
   */
  public class CompareDocumentsOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile file1;
    private String file1Filename;
    private IBMWatsonFile file2;
    private String file2Filename;
    private String file1Label;
    private String file2Label;
    private String modelId;
    private String file1ContentType;
    private String file2ContentType;
 
    /**
     * Gets the file1.
     *
     * The first file to compare.
     *
     * @return the file1
     */
    public IBMWatsonFile file1() {
      return file1;
    }
 
    /**
     * Gets the file1Filename.
     *
     * The filename for file1.
     *
     * @return the file1Filename
     */
    public String file1Filename() {
      return file1Filename;
    }
 
    /**
     * Gets the file2.
     *
     * The second file to compare.
     *
     * @return the file2
     */
    public IBMWatsonFile file2() {
      return file2;
    }
 
    /**
     * Gets the file2Filename.
     *
     * The filename for file2.
     *
     * @return the file2Filename
     */
    public String file2Filename() {
      return file2Filename;
    }
 
    /**
     * Gets the file1Label.
     *
     * A text label for the first file.
     *
     * @return the file1Label
     */
    public String file1Label() {
      return file1Label;
    }
 
    /**
     * Gets the file2Label.
     *
     * A text label for the second file.
     *
     * @return the file2Label
     */
    public String file2Label() {
      return file2Label;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }
 
    /**
     * Gets the file1ContentType.
     *
     * The content type of file1.
     *
     * @return the file1ContentType
     */
    public String file1ContentType() {
      return file1ContentType;
    }
 
    /**
     * Gets the file2ContentType.
     *
     * The content type of file2.
     *
     * @return the file2ContentType
     */
    public String file2ContentType() {
      return file2ContentType;
    }

    private CompareDocumentsOptions(CompareDocumentsOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.file1, 'file1 cannot be null');
      IBMWatsonValidator.notNull(builder.file2, 'file2 cannot be null');
      file1 = builder.file1;
      file1Filename = builder.file1Filename;
      file2 = builder.file2;
      file2Filename = builder.file2Filename;
      file1Label = builder.file1Label;
      file2Label = builder.file2Label;
      modelId = builder.modelId;
      file1ContentType = builder.file1ContentType;
      file2ContentType = builder.file2ContentType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder newBuilder() {
      return new CompareDocumentsOptionsBuilder(this);
    }

  }

  /**
   * CompareDocumentsOptions Builder.
   */
  public class CompareDocumentsOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile file1;
    private String file1Filename;
    private IBMWatsonFile file2;
    private String file2Filename;
    private String file1Label;
    private String file2Label;
    private String modelId;
    private String file1ContentType;
    private String file2ContentType;

    private CompareDocumentsOptionsBuilder(CompareDocumentsOptions compareDocumentsOptions) {
      file1 = compareDocumentsOptions.file1;
      file1Filename = compareDocumentsOptions.file1Filename;
      file2 = compareDocumentsOptions.file2;
      file2Filename = compareDocumentsOptions.file2Filename;
      file1Label = compareDocumentsOptions.file1Label;
      file2Label = compareDocumentsOptions.file2Label;
      modelId = compareDocumentsOptions.modelId;
      file1ContentType = compareDocumentsOptions.file1ContentType;
      file2ContentType = compareDocumentsOptions.file2ContentType;
      this.requestHeaders.putAll(compareDocumentsOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CompareDocumentsOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param file1 the file1
     * @param file2 the file2
     */
    public CompareDocumentsOptionsBuilder(IBMWatsonFile file1, IBMWatsonFile file2) {
      this.file1 = file1;
      this.file2 = file2;
    }

    /**
     * Builds a CompareDocumentsOptions.
     *
     * @return the compareDocumentsOptions
     */
    public CompareDocumentsOptions build() {
      return new CompareDocumentsOptions(this);
    }

    /**
     * Set the file1.
     *
     * @param file1 the file1
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file1(IBMWatsonFile file1) {
      this.file1 = file1;
      return this;
    }

    /**
     * Set the file1Filename.
     *
     * @param file1Filename the file1Filename
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file1Filename(String file1Filename) {
      this.file1Filename = file1Filename;
      return this;
    }

    /**
     * Set the file2.
     *
     * @param file2 the file2
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file2(IBMWatsonFile file2) {
      this.file2 = file2;
      return this;
    }

    /**
     * Set the file2Filename.
     *
     * @param file2Filename the file2Filename
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file2Filename(String file2Filename) {
      this.file2Filename = file2Filename;
      return this;
    }

    /**
     * Set the file1Label.
     *
     * @param file1Label the file1Label
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file1Label(String file1Label) {
      this.file1Label = file1Label;
      return this;
    }

    /**
     * Set the file2Label.
     *
     * @param file2Label the file2Label
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file2Label(String file2Label) {
      this.file2Label = file2Label;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Set the file1ContentType.
     *
     * @param file1ContentType the file1ContentType
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file1ContentType(String file1ContentType) {
      this.file1ContentType = file1ContentType;
      return this;
    }

    /**
     * Set the file2ContentType.
     *
     * @param file2ContentType the file2ContentType
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder file2ContentType(String file2ContentType) {
      this.file2ContentType = file2ContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CompareDocumentsOptions builder
     */
    public CompareDocumentsOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The comparison of the two submitted documents.
   */
  public class CompareReturn extends IBMWatsonResponseModel {
    private List<Document> documents_serialized_name;
    private List<AlignedElement> aligned_elements_serialized_name;
    private List<UnalignedElement> unaligned_elements_serialized_name;
    private String model_id_serialized_name;
    private String model_version_serialized_name;
 
    /**
     * Gets the documents.
     *
     * Information about the documents being compared.
     *
     * @return the documents
     */
    @AuraEnabled
    public List<Document> getDocuments() {
      return documents_serialized_name;
    }
 
    /**
     * Gets the alignedElements.
     *
     * A list of pairs of elements that semantically align between the compared documents.
     *
     * @return the alignedElements
     */
    @AuraEnabled
    public List<AlignedElement> getAlignedElements() {
      return aligned_elements_serialized_name;
    }
 
    /**
     * Gets the unalignedElements.
     *
     * A list of elements that do not semantically align between the compared documents.
     *
     * @return the unalignedElements
     */
    @AuraEnabled
    public List<UnalignedElement> getUnalignedElements() {
      return unaligned_elements_serialized_name;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model used to classify the input document. For the `/v1/element_classification` method, the only
     * valid value is `contracts`.
     *
     * @return the modelId
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
 
    /**
     * Gets the modelVersion.
     *
     * The version of the analysis model identified by the value of the `model_id` key.
     *
     * @return the modelVersion
     */
    @AuraEnabled
    public String getModelVersion() {
      return model_version_serialized_name;
    }

    /**
     * Sets the documents.
     *
     * @param documents the new documents
     */
    public void setDocuments(final List<Document> documents) {
      this.documents_serialized_name = documents;
    }

    /**
     * Sets the alignedElements.
     *
     * @param alignedElements the new alignedElements
     */
    public void setAlignedElements(final List<AlignedElement> alignedElements) {
      this.aligned_elements_serialized_name = alignedElements;
    }

    /**
     * Sets the unalignedElements.
     *
     * @param unalignedElements the new unalignedElements
     */
    public void setUnalignedElements(final List<UnalignedElement> unalignedElements) {
      this.unaligned_elements_serialized_name = unalignedElements;
    }

    /**
     * Sets the modelId.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
    }

    /**
     * Sets the modelVersion.
     *
     * @param modelVersion the new modelVersion
     */
    public void setModelVersion(final String modelVersion) {
      this.model_version_serialized_name = modelVersion;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      CompareReturn ret = (CompareReturn) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for documents
      List<Document> newDocuments = new List<Document>();
      List<Document> deserializedDocuments = ret.getDocuments();
      if (deserializedDocuments != null) {
        for (Integer i = 0; i < deserializedDocuments.size(); i++) {
          Document currentItem = ret.getDocuments().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('documents_serialized_name');
          Document newItem = (Document) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Document.class);
          newDocuments.add(newItem);
        }
        ret.setDocuments(newDocuments);
      }

      // calling custom deserializer for alignedElements
      List<AlignedElement> newAlignedElements = new List<AlignedElement>();
      List<AlignedElement> deserializedAlignedElements = ret.getAlignedElements();
      if (deserializedAlignedElements != null) {
        for (Integer i = 0; i < deserializedAlignedElements.size(); i++) {
          AlignedElement currentItem = ret.getAlignedElements().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('aligned_elements_serialized_name');
          AlignedElement newItem = (AlignedElement) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), AlignedElement.class);
          newAlignedElements.add(newItem);
        }
        ret.setAlignedElements(newAlignedElements);
      }

      // calling custom deserializer for unalignedElements
      List<UnalignedElement> newUnalignedElements = new List<UnalignedElement>();
      List<UnalignedElement> deserializedUnalignedElements = ret.getUnalignedElements();
      if (deserializedUnalignedElements != null) {
        for (Integer i = 0; i < deserializedUnalignedElements.size(); i++) {
          UnalignedElement currentItem = ret.getUnalignedElements().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('unaligned_elements_serialized_name');
          UnalignedElement newItem = (UnalignedElement) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), UnalignedElement.class);
          newUnalignedElements.add(newItem);
        }
        ret.setUnalignedElements(newUnalignedElements);
      }

      return ret;
    }
  }

  /**
   * A contact.
   */
  public class Contact extends IBMWatsonGenericModel {
    private String name_serialized_name;
    private String role_serialized_name;
 
    /**
     * Gets the name.
     *
     * A string listing the name of the contact.
     *
     * @return the name
     */
    @AuraEnabled
    public String getName() {
      return name_serialized_name;
    }
 
    /**
     * Gets the role.
     *
     * A string listing the role of the contact.
     *
     * @return the role
     */
    @AuraEnabled
    public String getRole() {
      return role_serialized_name;
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
     * Sets the role.
     *
     * @param role the new role
     */
    public void setRole(final String role) {
      this.role_serialized_name = role;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Contact ret = (Contact) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A monetary amount identified in the input document.
   */
  public class ContractAmts extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String confidence_level_serialized_name;
    private Location location_serialized_name;
 
    /**
     * Gets the text.
     *
     * The monetary amount.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the confidenceLevel.
     *
     * The confidence level in the identification of the contract amount.
     *
     * @return the confidenceLevel
     */
    @AuraEnabled
    public String getConfidenceLevel() {
      return confidence_level_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
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
     * Sets the confidenceLevel.
     *
     * @param confidenceLevel the new confidenceLevel
     */
    public void setConfidenceLevel(final String confidenceLevel) {
      this.confidence_level_serialized_name = confidenceLevel;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ContractAmts ret = (ContractAmts) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * The convertToHtml options.
   */
  public class ConvertToHtmlOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile file;
    private String filename;
    private String modelId;
    private String fileContentType;
 
    /**
     * Gets the file.
     *
     * The file to convert.
     *
     * @return the file
     */
    public IBMWatsonFile file() {
      return file;
    }
 
    /**
     * Gets the filename.
     *
     * The filename for file.
     *
     * @return the filename
     */
    public String filename() {
      return filename;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }
 
    /**
     * Gets the fileContentType.
     *
     * The content type of file.
     *
     * @return the fileContentType
     */
    public String fileContentType() {
      return fileContentType;
    }

    private ConvertToHtmlOptions(ConvertToHtmlOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.file, 'file cannot be null');
      IBMWatsonValidator.notNull(builder.filename, 'filename cannot be null');
      file = builder.file;
      filename = builder.filename;
      modelId = builder.modelId;
      fileContentType = builder.fileContentType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ConvertToHtmlOptions builder
     */
    public ConvertToHtmlOptionsBuilder newBuilder() {
      return new ConvertToHtmlOptionsBuilder(this);
    }

  }

  /**
   * ConvertToHtmlOptions Builder.
   */
  public class ConvertToHtmlOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile file;
    private String filename;
    private String modelId;
    private String fileContentType;

    private ConvertToHtmlOptionsBuilder(ConvertToHtmlOptions convertToHtmlOptions) {
      file = convertToHtmlOptions.file;
      filename = convertToHtmlOptions.filename;
      modelId = convertToHtmlOptions.modelId;
      fileContentType = convertToHtmlOptions.fileContentType;
      this.requestHeaders.putAll(convertToHtmlOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ConvertToHtmlOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param file the file
     * @param filename the filename
     */
    public ConvertToHtmlOptionsBuilder(IBMWatsonFile file, String filename) {
      this.file = file;
      this.filename = filename;
    }

    /**
     * Builds a ConvertToHtmlOptions.
     *
     * @return the convertToHtmlOptions
     */
    public ConvertToHtmlOptions build() {
      return new ConvertToHtmlOptions(this);
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the ConvertToHtmlOptions builder
     */
    public ConvertToHtmlOptionsBuilder file(IBMWatsonFile file) {
      this.file = file;
      return this;
    }

    /**
     * Set the filename.
     *
     * @param filename the filename
     * @return the ConvertToHtmlOptions builder
     */
    public ConvertToHtmlOptionsBuilder filename(String filename) {
      this.filename = filename;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the ConvertToHtmlOptions builder
     */
    public ConvertToHtmlOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Set the fileContentType.
     *
     * @param fileContentType the fileContentType
     * @return the ConvertToHtmlOptions builder
     */
    public ConvertToHtmlOptionsBuilder fileContentType(String fileContentType) {
      this.fileContentType = fileContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ConvertToHtmlOptions builder
     */
    public ConvertToHtmlOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The createBatch options.
   */
  public class CreateBatchOptions extends IBMWatsonOptionsModel {
    private String function;
    private IBMWatsonFile inputCredentialsFile;
    private String inputCredentialsFilename;
    private String inputBucketLocation;
    private String inputBucketName;
    private IBMWatsonFile outputCredentialsFile;
    private String outputCredentialsFilename;
    private String outputBucketLocation;
    private String outputBucketName;
    private String modelId;
 
    /**
     * Gets the function.
     *
     * The Compare and Comply method to run across the submitted input documents.
     *
     * @return the function
     */
    public String function() {
      return function;
    }
 
    /**
     * Gets the inputCredentialsFile.
     *
     * A JSON file containing the input Cloud Object Storage credentials. At a minimum, the credentials must enable
     * `READ` permissions on the bucket defined by the `input_bucket_name` parameter.
     *
     * @return the inputCredentialsFile
     */
    public IBMWatsonFile inputCredentialsFile() {
      return inputCredentialsFile;
    }
 
    /**
     * Gets the inputCredentialsFilename.
     *
     * The filename for inputCredentialsFile.
     *
     * @return the inputCredentialsFilename
     */
    public String inputCredentialsFilename() {
      return inputCredentialsFilename;
    }
 
    /**
     * Gets the inputBucketLocation.
     *
     * The geographical location of the Cloud Object Storage input bucket as listed on the **Endpoint** tab of your
     * Cloud Object Storage instance; for example, `us-geo`, `eu-geo`, or `ap-geo`.
     *
     * @return the inputBucketLocation
     */
    public String inputBucketLocation() {
      return inputBucketLocation;
    }
 
    /**
     * Gets the inputBucketName.
     *
     * The name of the Cloud Object Storage input bucket.
     *
     * @return the inputBucketName
     */
    public String inputBucketName() {
      return inputBucketName;
    }
 
    /**
     * Gets the outputCredentialsFile.
     *
     * A JSON file that lists the Cloud Object Storage output credentials. At a minimum, the credentials must enable
     * `READ` and `WRITE` permissions on the bucket defined by the `output_bucket_name` parameter.
     *
     * @return the outputCredentialsFile
     */
    public IBMWatsonFile outputCredentialsFile() {
      return outputCredentialsFile;
    }
 
    /**
     * Gets the outputCredentialsFilename.
     *
     * The filename for outputCredentialsFile.
     *
     * @return the outputCredentialsFilename
     */
    public String outputCredentialsFilename() {
      return outputCredentialsFilename;
    }
 
    /**
     * Gets the outputBucketLocation.
     *
     * The geographical location of the Cloud Object Storage output bucket as listed on the **Endpoint** tab of your
     * Cloud Object Storage instance; for example, `us-geo`, `eu-geo`, or `ap-geo`.
     *
     * @return the outputBucketLocation
     */
    public String outputBucketLocation() {
      return outputBucketLocation;
    }
 
    /**
     * Gets the outputBucketName.
     *
     * The name of the Cloud Object Storage output bucket.
     *
     * @return the outputBucketName
     */
    public String outputBucketName() {
      return outputBucketName;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }

    private CreateBatchOptions(CreateBatchOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.function, 'function cannot be null');
      IBMWatsonValidator.notNull(builder.inputCredentialsFile, 'inputCredentialsFile cannot be null');
      IBMWatsonValidator.notNull(builder.inputBucketLocation, 'inputBucketLocation cannot be null');
      IBMWatsonValidator.notNull(builder.inputBucketName, 'inputBucketName cannot be null');
      IBMWatsonValidator.notNull(builder.outputCredentialsFile, 'outputCredentialsFile cannot be null');
      IBMWatsonValidator.notNull(builder.outputBucketLocation, 'outputBucketLocation cannot be null');
      IBMWatsonValidator.notNull(builder.outputBucketName, 'outputBucketName cannot be null');
      function = builder.function;
      inputCredentialsFile = builder.inputCredentialsFile;
      inputCredentialsFilename = builder.inputCredentialsFilename;
      inputBucketLocation = builder.inputBucketLocation;
      inputBucketName = builder.inputBucketName;
      outputCredentialsFile = builder.outputCredentialsFile;
      outputCredentialsFilename = builder.outputCredentialsFilename;
      outputBucketLocation = builder.outputBucketLocation;
      outputBucketName = builder.outputBucketName;
      modelId = builder.modelId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder newBuilder() {
      return new CreateBatchOptionsBuilder(this);
    }

  }

  /**
   * CreateBatchOptions Builder.
   */
  public class CreateBatchOptionsBuilder extends IBMWatsonOptionsModel {
    private String function;
    private IBMWatsonFile inputCredentialsFile;
    private String inputCredentialsFilename;
    private String inputBucketLocation;
    private String inputBucketName;
    private IBMWatsonFile outputCredentialsFile;
    private String outputCredentialsFilename;
    private String outputBucketLocation;
    private String outputBucketName;
    private String modelId;

    private CreateBatchOptionsBuilder(CreateBatchOptions createBatchOptions) {
      function = createBatchOptions.function;
      inputCredentialsFile = createBatchOptions.inputCredentialsFile;
      inputCredentialsFilename = createBatchOptions.inputCredentialsFilename;
      inputBucketLocation = createBatchOptions.inputBucketLocation;
      inputBucketName = createBatchOptions.inputBucketName;
      outputCredentialsFile = createBatchOptions.outputCredentialsFile;
      outputCredentialsFilename = createBatchOptions.outputCredentialsFilename;
      outputBucketLocation = createBatchOptions.outputBucketLocation;
      outputBucketName = createBatchOptions.outputBucketName;
      modelId = createBatchOptions.modelId;
      this.requestHeaders.putAll(createBatchOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public CreateBatchOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param function the function
     * @param inputCredentialsFile the inputCredentialsFile
     * @param inputBucketLocation the inputBucketLocation
     * @param inputBucketName the inputBucketName
     * @param outputCredentialsFile the outputCredentialsFile
     * @param outputBucketLocation the outputBucketLocation
     * @param outputBucketName the outputBucketName
     */
    public CreateBatchOptionsBuilder(String function, IBMWatsonFile inputCredentialsFile, String inputBucketLocation, String inputBucketName, IBMWatsonFile outputCredentialsFile, String outputBucketLocation, String outputBucketName) {
      this.function = function;
      this.inputCredentialsFile = inputCredentialsFile;
      this.inputBucketLocation = inputBucketLocation;
      this.inputBucketName = inputBucketName;
      this.outputCredentialsFile = outputCredentialsFile;
      this.outputBucketLocation = outputBucketLocation;
      this.outputBucketName = outputBucketName;
    }

    /**
     * Builds a CreateBatchOptions.
     *
     * @return the createBatchOptions
     */
    public CreateBatchOptions build() {
      return new CreateBatchOptions(this);
    }

    /**
     * Set the function.
     *
     * @param function the function
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder function(String function) {
      this.function = function;
      return this;
    }

    /**
     * Set the inputCredentialsFile.
     *
     * @param inputCredentialsFile the inputCredentialsFile
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder inputCredentialsFile(IBMWatsonFile inputCredentialsFile) {
      this.inputCredentialsFile = inputCredentialsFile;
      return this;
    }

    /**
     * Set the inputCredentialsFilename.
     *
     * @param inputCredentialsFilename the inputCredentialsFilename
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder inputCredentialsFilename(String inputCredentialsFilename) {
      this.inputCredentialsFilename = inputCredentialsFilename;
      return this;
    }

    /**
     * Set the inputBucketLocation.
     *
     * @param inputBucketLocation the inputBucketLocation
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder inputBucketLocation(String inputBucketLocation) {
      this.inputBucketLocation = inputBucketLocation;
      return this;
    }

    /**
     * Set the inputBucketName.
     *
     * @param inputBucketName the inputBucketName
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder inputBucketName(String inputBucketName) {
      this.inputBucketName = inputBucketName;
      return this;
    }

    /**
     * Set the outputCredentialsFile.
     *
     * @param outputCredentialsFile the outputCredentialsFile
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder outputCredentialsFile(IBMWatsonFile outputCredentialsFile) {
      this.outputCredentialsFile = outputCredentialsFile;
      return this;
    }

    /**
     * Set the outputCredentialsFilename.
     *
     * @param outputCredentialsFilename the outputCredentialsFilename
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder outputCredentialsFilename(String outputCredentialsFilename) {
      this.outputCredentialsFilename = outputCredentialsFilename;
      return this;
    }

    /**
     * Set the outputBucketLocation.
     *
     * @param outputBucketLocation the outputBucketLocation
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder outputBucketLocation(String outputBucketLocation) {
      this.outputBucketLocation = outputBucketLocation;
      return this;
    }

    /**
     * Set the outputBucketName.
     *
     * @param outputBucketName the outputBucketName
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder outputBucketName(String outputBucketName) {
      this.outputBucketName = outputBucketName;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the CreateBatchOptions builder
     */
    public CreateBatchOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The deleteFeedback options.
   */
  public class DeleteFeedbackOptions extends IBMWatsonOptionsModel {
    private String feedbackId;
    private String modelId;
 
    /**
     * Gets the feedbackId.
     *
     * A string that specifies the feedback entry to be deleted from the document.
     *
     * @return the feedbackId
     */
    public String feedbackId() {
      return feedbackId;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }

    private DeleteFeedbackOptions(DeleteFeedbackOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.feedbackId, 'feedbackId cannot be empty');
      feedbackId = builder.feedbackId;
      modelId = builder.modelId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a DeleteFeedbackOptions builder
     */
    public DeleteFeedbackOptionsBuilder newBuilder() {
      return new DeleteFeedbackOptionsBuilder(this);
    }

  }

  /**
   * DeleteFeedbackOptions Builder.
   */
  public class DeleteFeedbackOptionsBuilder extends IBMWatsonOptionsModel {
    private String feedbackId;
    private String modelId;

    private DeleteFeedbackOptionsBuilder(DeleteFeedbackOptions deleteFeedbackOptions) {
      feedbackId = deleteFeedbackOptions.feedbackId;
      modelId = deleteFeedbackOptions.modelId;
      this.requestHeaders.putAll(deleteFeedbackOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public DeleteFeedbackOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param feedbackId the feedbackId
     */
    public DeleteFeedbackOptionsBuilder(String feedbackId) {
      this.feedbackId = feedbackId;
    }

    /**
     * Builds a DeleteFeedbackOptions.
     *
     * @return the deleteFeedbackOptions
     */
    public DeleteFeedbackOptions build() {
      return new DeleteFeedbackOptions(this);
    }

    /**
     * Set the feedbackId.
     *
     * @param feedbackId the feedbackId
     * @return the DeleteFeedbackOptions builder
     */
    public DeleteFeedbackOptionsBuilder feedbackId(String feedbackId) {
      this.feedbackId = feedbackId;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the DeleteFeedbackOptions builder
     */
    public DeleteFeedbackOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the DeleteFeedbackOptions builder
     */
    public DeleteFeedbackOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Document counts.
   */
  public class DocCounts extends IBMWatsonGenericModel {
    private Long total_serialized_name;
    private Long pending_serialized_name;
    private Long successful_serialized_name;
    private Long failed_serialized_name;
 
    /**
     * Gets the total.
     *
     * Total number of documents.
     *
     * @return the total
     */
    @AuraEnabled
    public Long getTotal() {
      return total_serialized_name;
    }
 
    /**
     * Gets the pending.
     *
     * Number of pending documents.
     *
     * @return the pending
     */
    @AuraEnabled
    public Long getPending() {
      return pending_serialized_name;
    }
 
    /**
     * Gets the successful.
     *
     * Number of documents successfully processed.
     *
     * @return the successful
     */
    @AuraEnabled
    public Long getSuccessful() {
      return successful_serialized_name;
    }
 
    /**
     * Gets the failed.
     *
     * Number of documents not successfully processed.
     *
     * @return the failed
     */
    @AuraEnabled
    public Long getFailed() {
      return failed_serialized_name;
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
     * Sets the pending.
     *
     * @param pending the new pending
     */
    public void setPending(final long pending) {
      this.pending_serialized_name = pending;
    }

    /**
     * Sets the successful.
     *
     * @param successful the new successful
     */
    public void setSuccessful(final long successful) {
      this.successful_serialized_name = successful;
    }

    /**
     * Sets the failed.
     *
     * @param failed the new failed
     */
    public void setFailed(final long failed) {
      this.failed_serialized_name = failed;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocCounts ret = (DocCounts) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Information about the parsed input document.
   */
  public class DocInfo extends IBMWatsonGenericModel {
    private String html_serialized_name;
    private String title_serialized_name;
    private String hash_serialized_name;
 
    /**
     * Gets the html.
     *
     * The full text of the parsed document in HTML format.
     *
     * @return the html
     */
    @AuraEnabled
    public String getHtml() {
      return html_serialized_name;
    }
 
    /**
     * Gets the title.
     *
     * The title of the parsed document. If the service did not detect a title, the value of this element is `null`.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the hash.
     *
     * The MD5 hash of the input document.
     *
     * @return the hash
     */
    @AuraEnabled
    public String getHash() {
      return hash_serialized_name;
    }

    /**
     * Sets the html.
     *
     * @param html the new html
     */
    public void setHtml(final String html) {
      this.html_serialized_name = html;
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
     * Sets the hash.
     *
     * @param hash the new hash
     */
    public void setHash(final String hash) {
      this.hash_serialized_name = hash;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocInfo ret = (DocInfo) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The structure of the input document.
   */
  public class DocStructure extends IBMWatsonGenericModel {
    private List<SectionTitles> section_titles_serialized_name;
    private List<LeadingSentence> leading_sentences_serialized_name;
 
    /**
     * Gets the sectionTitles.
     *
     * An array containing one object per section or subsection identified in the input document.
     *
     * @return the sectionTitles
     */
    @AuraEnabled
    public List<SectionTitles> getSectionTitles() {
      return section_titles_serialized_name;
    }
 
    /**
     * Gets the leadingSentences.
     *
     * An array containing one object per section or subsection, in parallel with the `section_titles` array, that
     * details the leading sentences in the corresponding section or subsection.
     *
     * @return the leadingSentences
     */
    @AuraEnabled
    public List<LeadingSentence> getLeadingSentences() {
      return leading_sentences_serialized_name;
    }

    /**
     * Sets the sectionTitles.
     *
     * @param sectionTitles the new sectionTitles
     */
    public void setSectionTitles(final List<SectionTitles> sectionTitles) {
      this.section_titles_serialized_name = sectionTitles;
    }

    /**
     * Sets the leadingSentences.
     *
     * @param leadingSentences the new leadingSentences
     */
    public void setLeadingSentences(final List<LeadingSentence> leadingSentences) {
      this.leading_sentences_serialized_name = leadingSentences;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      DocStructure ret = (DocStructure) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for sectionTitles
      List<SectionTitles> newSectionTitles = new List<SectionTitles>();
      List<SectionTitles> deserializedSectionTitles = ret.getSectionTitles();
      if (deserializedSectionTitles != null) {
        for (Integer i = 0; i < deserializedSectionTitles.size(); i++) {
          SectionTitles currentItem = ret.getSectionTitles().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('section_titles_serialized_name');
          SectionTitles newItem = (SectionTitles) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), SectionTitles.class);
          newSectionTitles.add(newItem);
        }
        ret.setSectionTitles(newSectionTitles);
      }

      // calling custom deserializer for leadingSentences
      List<LeadingSentence> newLeadingSentences = new List<LeadingSentence>();
      List<LeadingSentence> deserializedLeadingSentences = ret.getLeadingSentences();
      if (deserializedLeadingSentences != null) {
        for (Integer i = 0; i < deserializedLeadingSentences.size(); i++) {
          LeadingSentence currentItem = ret.getLeadingSentences().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('leading_sentences_serialized_name');
          LeadingSentence newItem = (LeadingSentence) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), LeadingSentence.class);
          newLeadingSentences.add(newItem);
        }
        ret.setLeadingSentences(newLeadingSentences);
      }

      return ret;
    }
  }

  /**
   * Basic information about the input document.
   */
  public class Document extends IBMWatsonGenericModel {
    private String title_serialized_name;
    private String html_serialized_name;
    private String hash_serialized_name;
    private String label_serialized_name;
 
    /**
     * Gets the title.
     *
     * Document title, if detected.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the html.
     *
     * The input document converted into HTML format.
     *
     * @return the html
     */
    @AuraEnabled
    public String getHtml() {
      return html_serialized_name;
    }
 
    /**
     * Gets the hash.
     *
     * The MD5 hash value of the input document.
     *
     * @return the hash
     */
    @AuraEnabled
    public String getHash() {
      return hash_serialized_name;
    }
 
    /**
     * Gets the label.
     *
     * The label applied to the input document with the calling method's `file_1_label` or `file_2_label` value. This
     * field is specified only in the output of the **Comparing two documents** method.
     *
     * @return the label
     */
    @AuraEnabled
    public String getLabel() {
      return label_serialized_name;
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
     * Sets the html.
     *
     * @param html the new html
     */
    public void setHtml(final String html) {
      this.html_serialized_name = html;
    }

    /**
     * Sets the hash.
     *
     * @param hash the new hash
     */
    public void setHash(final String hash) {
      this.hash_serialized_name = hash;
    }

    /**
     * Sets the label.
     *
     * @param label the new label
     */
    public void setLabel(final String label) {
      this.label_serialized_name = label;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Document ret = (Document) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * An effective date.
   */
  public class EffectiveDates extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String confidence_level_serialized_name;
    private Location location_serialized_name;
 
    /**
     * Gets the text.
     *
     * The effective date, listed as a string.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the confidenceLevel.
     *
     * The confidence level in the identification of the effective date.
     *
     * @return the confidenceLevel
     */
    @AuraEnabled
    public String getConfidenceLevel() {
      return confidence_level_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
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
     * Sets the confidenceLevel.
     *
     * @param confidenceLevel the new confidenceLevel
     */
    public void setConfidenceLevel(final String confidenceLevel) {
      this.confidence_level_serialized_name = confidenceLevel;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      EffectiveDates ret = (EffectiveDates) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * A component part of the document.
   */
  public class Element extends IBMWatsonGenericModel {
    private Location location_serialized_name;
    private String text_serialized_name;
    private List<TypeLabel> types_serialized_name;
    private List<Category> categories_serialized_name;
    private List<Attribute> attributes_serialized_name;
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text of the element.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the types.
     *
     * Description of the action specified by the element  and whom it affects.
     *
     * @return the types
     */
    @AuraEnabled
    public List<TypeLabel> getTypes() {
      return types_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * List of functional categories into which the element falls; in other words, the subject matter of the element.
     *
     * @return the categories
     */
    @AuraEnabled
    public List<Category> getCategories() {
      return categories_serialized_name;
    }
 
    /**
     * Gets the attributes.
     *
     * List of document attributes.
     *
     * @return the attributes
     */
    @AuraEnabled
    public List<Attribute> getAttributes() {
      return attributes_serialized_name;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
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
     * Sets the types.
     *
     * @param types the new types
     */
    public void setTypes(final List<TypeLabel> types) {
      this.types_serialized_name = types;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<Category> categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the attributes.
     *
     * @param attributes the new attributes
     */
    public void setAttributes(final List<Attribute> attributes) {
      this.attributes_serialized_name = attributes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Element ret = (Element) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for types
      List<TypeLabel> newTypes = new List<TypeLabel>();
      List<TypeLabel> deserializedTypes = ret.getTypes();
      if (deserializedTypes != null) {
        for (Integer i = 0; i < deserializedTypes.size(); i++) {
          TypeLabel currentItem = ret.getTypes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('types_serialized_name');
          TypeLabel newItem = (TypeLabel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TypeLabel.class);
          newTypes.add(newItem);
        }
        ret.setTypes(newTypes);
      }

      // calling custom deserializer for categories
      List<Category> newCategories = new List<Category>();
      List<Category> deserializedCategories = ret.getCategories();
      if (deserializedCategories != null) {
        for (Integer i = 0; i < deserializedCategories.size(); i++) {
          Category currentItem = ret.getCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('categories_serialized_name');
          Category newItem = (Category) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Category.class);
          newCategories.add(newItem);
        }
        ret.setCategories(newCategories);
      }

      // calling custom deserializer for attributes
      List<Attribute> newAttributes = new List<Attribute>();
      List<Attribute> deserializedAttributes = ret.getAttributes();
      if (deserializedAttributes != null) {
        for (Integer i = 0; i < deserializedAttributes.size(); i++) {
          Attribute currentItem = ret.getAttributes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('attributes_serialized_name');
          Attribute newItem = (Attribute) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Attribute.class);
          newAttributes.add(newItem);
        }
        ret.setAttributes(newAttributes);
      }

      return ret;
    }
  }

  /**
   * A list of `begin` and `end` indexes that indicate the locations of the elements in the input document.
   */
  public class ElementLocations extends IBMWatsonGenericModel {
    private Long begin_serialized_name;
    private Long end_serialized_name;
 
    /**
     * Gets the xbegin.
     *
     * An integer that indicates the starting position of the element in the input document.
     *
     * @return the xbegin
     */
    @AuraEnabled
    public Long getXbegin() {
      return begin_serialized_name;
    }
 
    /**
     * Gets the xend.
     *
     * An integer that indicates the ending position of the element in the input document.
     *
     * @return the xend
     */
    @AuraEnabled
    public Long getXend() {
      return end_serialized_name;
    }

    /**
     * Sets the xbegin.
     *
     * @param xbegin the new xbegin
     */
    public void setXbegin(final long xbegin) {
      this.begin_serialized_name = xbegin;
    }

    /**
     * Sets the xend.
     *
     * @param xend the new xend
     */
    public void setXend(final long xend) {
      this.end_serialized_name = xend;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ElementLocations ret = (ElementLocations) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * Details of semantically aligned elements.
   */
  public class ElementPair extends IBMWatsonGenericModel {
    private String document_label_serialized_name;
    private String text_serialized_name;
    private Location location_serialized_name;
    private List<TypeLabel> types_serialized_name;
    private List<Category> categories_serialized_name;
    private List<Attribute> attributes_serialized_name;
 
    /**
     * Gets the documentLabel.
     *
     * The label of the document (that is, the value of either the `file_1_label` or `file_2_label` parameters) in which
     * the element occurs.
     *
     * @return the documentLabel
     */
    @AuraEnabled
    public String getDocumentLabel() {
      return document_label_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text of the element.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the types.
     *
     * Description of the action specified by the element  and whom it affects.
     *
     * @return the types
     */
    @AuraEnabled
    public List<TypeLabel> getTypes() {
      return types_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * List of functional categories into which the element falls; in other words, the subject matter of the element.
     *
     * @return the categories
     */
    @AuraEnabled
    public List<Category> getCategories() {
      return categories_serialized_name;
    }
 
    /**
     * Gets the attributes.
     *
     * List of document attributes.
     *
     * @return the attributes
     */
    @AuraEnabled
    public List<Attribute> getAttributes() {
      return attributes_serialized_name;
    }

    /**
     * Sets the documentLabel.
     *
     * @param documentLabel the new documentLabel
     */
    public void setDocumentLabel(final String documentLabel) {
      this.document_label_serialized_name = documentLabel;
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
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    /**
     * Sets the types.
     *
     * @param types the new types
     */
    public void setTypes(final List<TypeLabel> types) {
      this.types_serialized_name = types;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<Category> categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the attributes.
     *
     * @param attributes the new attributes
     */
    public void setAttributes(final List<Attribute> attributes) {
      this.attributes_serialized_name = attributes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ElementPair ret = (ElementPair) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for types
      List<TypeLabel> newTypes = new List<TypeLabel>();
      List<TypeLabel> deserializedTypes = ret.getTypes();
      if (deserializedTypes != null) {
        for (Integer i = 0; i < deserializedTypes.size(); i++) {
          TypeLabel currentItem = ret.getTypes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('types_serialized_name');
          TypeLabel newItem = (TypeLabel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TypeLabel.class);
          newTypes.add(newItem);
        }
        ret.setTypes(newTypes);
      }

      // calling custom deserializer for categories
      List<Category> newCategories = new List<Category>();
      List<Category> deserializedCategories = ret.getCategories();
      if (deserializedCategories != null) {
        for (Integer i = 0; i < deserializedCategories.size(); i++) {
          Category currentItem = ret.getCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('categories_serialized_name');
          Category newItem = (Category) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Category.class);
          newCategories.add(newItem);
        }
        ret.setCategories(newCategories);
      }

      // calling custom deserializer for attributes
      List<Attribute> newAttributes = new List<Attribute>();
      List<Attribute> deserializedAttributes = ret.getAttributes();
      if (deserializedAttributes != null) {
        for (Integer i = 0; i < deserializedAttributes.size(); i++) {
          Attribute currentItem = ret.getAttributes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('attributes_serialized_name');
          Attribute newItem = (Attribute) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Attribute.class);
          newAttributes.add(newItem);
        }
        ret.setAttributes(newAttributes);
      }

      return ret;
    }
  }

  /**
   * The extractTables options.
   */
  public class ExtractTablesOptions extends IBMWatsonOptionsModel {
    private IBMWatsonFile file;
    private String filename;
    private String modelId;
    private String fileContentType;
 
    /**
     * Gets the file.
     *
     * The file on which to run table extraction.
     *
     * @return the file
     */
    public IBMWatsonFile file() {
      return file;
    }
 
    /**
     * Gets the filename.
     *
     * The filename for file.
     *
     * @return the filename
     */
    public String filename() {
      return filename;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }
 
    /**
     * Gets the fileContentType.
     *
     * The content type of file.
     *
     * @return the fileContentType
     */
    public String fileContentType() {
      return fileContentType;
    }

    private ExtractTablesOptions(ExtractTablesOptionsBuilder builder) {
      IBMWatsonValidator.notNull(builder.file, 'file cannot be null');
      file = builder.file;
      filename = builder.filename;
      modelId = builder.modelId;
      fileContentType = builder.fileContentType;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ExtractTablesOptions builder
     */
    public ExtractTablesOptionsBuilder newBuilder() {
      return new ExtractTablesOptionsBuilder(this);
    }

  }

  /**
   * ExtractTablesOptions Builder.
   */
  public class ExtractTablesOptionsBuilder extends IBMWatsonOptionsModel {
    private IBMWatsonFile file;
    private String filename;
    private String modelId;
    private String fileContentType;

    private ExtractTablesOptionsBuilder(ExtractTablesOptions extractTablesOptions) {
      file = extractTablesOptions.file;
      filename = extractTablesOptions.filename;
      modelId = extractTablesOptions.modelId;
      fileContentType = extractTablesOptions.fileContentType;
      this.requestHeaders.putAll(extractTablesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ExtractTablesOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param file the file
     */
    public ExtractTablesOptionsBuilder(IBMWatsonFile file) {
      this.file = file;
    }

    /**
     * Builds a ExtractTablesOptions.
     *
     * @return the extractTablesOptions
     */
    public ExtractTablesOptions build() {
      return new ExtractTablesOptions(this);
    }

    /**
     * Set the file.
     *
     * @param file the file
     * @return the ExtractTablesOptions builder
     */
    public ExtractTablesOptionsBuilder file(IBMWatsonFile file) {
      this.file = file;
      return this;
    }

    /**
     * Set the filename.
     *
     * @param filename the filename
     * @return the ExtractTablesOptions builder
     */
    public ExtractTablesOptionsBuilder filename(String filename) {
      this.filename = filename;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the ExtractTablesOptions builder
     */
    public ExtractTablesOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Set the fileContentType.
     *
     * @param fileContentType the fileContentType
     * @return the ExtractTablesOptions builder
     */
    public ExtractTablesOptionsBuilder fileContentType(String fileContentType) {
      this.fileContentType = fileContentType;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ExtractTablesOptions builder
     */
    public ExtractTablesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * Feedback data for submission.
   */
  public class FeedbackDataInput {
    private String feedback_type_serialized_name;
    private ShortDoc document_serialized_name;
    private String model_id_serialized_name;
    private String model_version_serialized_name;
    private Location location_serialized_name;
    private String text_serialized_name;
    private OriginalLabelsIn original_labels_serialized_name;
    private UpdatedLabelsIn updated_labels_serialized_name;
 
    /**
     * Gets the feedbackType.
     *
     * The type of feedback. The only permitted value is `element_classification`.
     *
     * @return the feedbackType
     */
    public String getFeedbackType() {
      return feedback_type_serialized_name;
    }
 
    /**
     * Gets the document.
     *
     * Brief information about the input document.
     *
     * @return the document
     */
    public ShortDoc getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the modelId.
     *
     * An optional string identifying the model ID. The only permitted value is `contracts`.
     *
     * @return the modelId
     */
    public String getModelId() {
      return model_id_serialized_name;
    }
 
    /**
     * Gets the modelVersion.
     *
     * An optional string identifying the version of the model used.
     *
     * @return the modelVersion
     */
    public String getModelVersion() {
      return model_version_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text on which to submit feedback.
     *
     * @return the text
     */
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the originalLabels.
     *
     * The original labeling from the input document, without the submitted feedback.
     *
     * @return the originalLabels
     */
    public OriginalLabelsIn getOriginalLabels() {
      return original_labels_serialized_name;
    }
 
    /**
     * Gets the updatedLabels.
     *
     * The updated labeling from the input document, accounting for the submitted feedback.
     *
     * @return the updatedLabels
     */
    public UpdatedLabelsIn getUpdatedLabels() {
      return updated_labels_serialized_name;
    }

    /**
     * Sets the feedbackType.
     *
     * @param feedbackType the new feedbackType
     */
    public void setFeedbackType(final String feedbackType) {
      this.feedback_type_serialized_name = feedbackType;
    }

    /**
     * Sets the document.
     *
     * @param document the new document
     */
    public void setDocument(final ShortDoc document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the modelId.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
    }

    /**
     * Sets the modelVersion.
     *
     * @param modelVersion the new modelVersion
     */
    public void setModelVersion(final String modelVersion) {
      this.model_version_serialized_name = modelVersion;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
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
     * Sets the originalLabels.
     *
     * @param originalLabels the new originalLabels
     */
    public void setOriginalLabels(final OriginalLabelsIn originalLabels) {
      this.original_labels_serialized_name = originalLabels;
    }

    /**
     * Sets the updatedLabels.
     *
     * @param updatedLabels the new updatedLabels
     */
    public void setUpdatedLabels(final UpdatedLabelsIn updatedLabels) {
      this.updated_labels_serialized_name = updatedLabels;
    }

  }

  /**
   * Information returned from the `POST /v1/feedback` method.
   */
  public class FeedbackDataOutput extends IBMWatsonGenericModel {
    private String feedback_type_serialized_name;
    private ShortDoc document_serialized_name;
    private String model_id_serialized_name;
    private String model_version_serialized_name;
    private Location location_serialized_name;
    private String text_serialized_name;
    private OriginalLabelsOut original_labels_serialized_name;
    private UpdatedLabelsOut updated_labels_serialized_name;
    private Pagination pagination_serialized_name;
 
    /**
     * Gets the feedbackType.
     *
     * A string identifying the user adding the feedback. The only permitted value is `element_classification`.
     *
     * @return the feedbackType
     */
    @AuraEnabled
    public String getFeedbackType() {
      return feedback_type_serialized_name;
    }
 
    /**
     * Gets the document.
     *
     * Brief information about the input document.
     *
     * @return the document
     */
    @AuraEnabled
    public ShortDoc getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the modelId.
     *
     * An optional string identifying the model ID. The only permitted value is `contracts`.
     *
     * @return the modelId
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
 
    /**
     * Gets the modelVersion.
     *
     * An optional string identifying the version of the model used.
     *
     * @return the modelVersion
     */
    @AuraEnabled
    public String getModelVersion() {
      return model_version_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text to which the feedback applies.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the originalLabels.
     *
     * The original labeling from the input document, without the submitted feedback.
     *
     * @return the originalLabels
     */
    @AuraEnabled
    public OriginalLabelsOut getOriginalLabels() {
      return original_labels_serialized_name;
    }
 
    /**
     * Gets the updatedLabels.
     *
     * The updated labeling from the input document, accounting for the submitted feedback.
     *
     * @return the updatedLabels
     */
    @AuraEnabled
    public UpdatedLabelsOut getUpdatedLabels() {
      return updated_labels_serialized_name;
    }
 
    /**
     * Gets the pagination.
     *
     * Pagination details, if required by the length of the output.
     *
     * @return the pagination
     */
    @AuraEnabled
    public Pagination getPagination() {
      return pagination_serialized_name;
    }

    /**
     * Sets the feedbackType.
     *
     * @param feedbackType the new feedbackType
     */
    public void setFeedbackType(final String feedbackType) {
      this.feedback_type_serialized_name = feedbackType;
    }

    /**
     * Sets the document.
     *
     * @param document the new document
     */
    public void setDocument(final ShortDoc document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the modelId.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
    }

    /**
     * Sets the modelVersion.
     *
     * @param modelVersion the new modelVersion
     */
    public void setModelVersion(final String modelVersion) {
      this.model_version_serialized_name = modelVersion;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
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
     * Sets the originalLabels.
     *
     * @param originalLabels the new originalLabels
     */
    public void setOriginalLabels(final OriginalLabelsOut originalLabels) {
      this.original_labels_serialized_name = originalLabels;
    }

    /**
     * Sets the updatedLabels.
     *
     * @param updatedLabels the new updatedLabels
     */
    public void setUpdatedLabels(final UpdatedLabelsOut updatedLabels) {
      this.updated_labels_serialized_name = updatedLabels;
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

      FeedbackDataOutput ret = (FeedbackDataOutput) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for document
      ShortDoc newDocument = (ShortDoc) new ShortDoc().deserialize(JSON.serialize(ret.getDocument()), (Map<String, Object>) jsonMap.get('document_serialized_name'), ShortDoc.class);
      ret.setDocument(newDocument);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for originalLabels
      OriginalLabelsOut newOriginalLabels = (OriginalLabelsOut) new OriginalLabelsOut().deserialize(JSON.serialize(ret.getOriginalLabels()), (Map<String, Object>) jsonMap.get('original_labels_serialized_name'), OriginalLabelsOut.class);
      ret.setOriginalLabels(newOriginalLabels);

      // calling custom deserializer for updatedLabels
      UpdatedLabelsOut newUpdatedLabels = (UpdatedLabelsOut) new UpdatedLabelsOut().deserialize(JSON.serialize(ret.getUpdatedLabels()), (Map<String, Object>) jsonMap.get('updated_labels_serialized_name'), UpdatedLabelsOut.class);
      ret.setUpdatedLabels(newUpdatedLabels);

      // calling custom deserializer for pagination
      Pagination newPagination = (Pagination) new Pagination().deserialize(JSON.serialize(ret.getPagination()), (Map<String, Object>) jsonMap.get('pagination_serialized_name'), Pagination.class);
      ret.setPagination(newPagination);

      return ret;
    }
  }

  /**
   * The results of a successful `GET /v1/feedback` request.
   */
  public class FeedbackList extends IBMWatsonResponseModel {
    private List<GetFeedback> feedback_serialized_name;
 
    /**
     * Gets the feedback.
     *
     * A list of all feedback for the document.
     *
     * @return the feedback
     */
    @AuraEnabled
    public List<GetFeedback> getFeedback() {
      return feedback_serialized_name;
    }

    /**
     * Sets the feedback.
     *
     * @param feedback the new feedback
     */
    public void setFeedback(final List<GetFeedback> feedback) {
      this.feedback_serialized_name = feedback;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      FeedbackList ret = (FeedbackList) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for feedback
      List<GetFeedback> newFeedback = new List<GetFeedback>();
      List<GetFeedback> deserializedFeedback = ret.getFeedback();
      if (deserializedFeedback != null) {
        for (Integer i = 0; i < deserializedFeedback.size(); i++) {
          GetFeedback currentItem = ret.getFeedback().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('feedback_serialized_name');
          GetFeedback newItem = (GetFeedback) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), GetFeedback.class);
          newFeedback.add(newItem);
        }
        ret.setFeedback(newFeedback);
      }

      return ret;
    }
  }

  /**
   * Information about the document and the submitted feedback.
   */
  public class FeedbackReturn extends IBMWatsonResponseModel {
    private String feedback_id_serialized_name;
    private String user_id_serialized_name;
    private String comment_serialized_name;
    private Datetime created_serialized_name;
    private FeedbackDataOutput feedback_data_serialized_name;
 
    /**
     * Gets the feedbackId.
     *
     * The unique ID of the feedback object.
     *
     * @return the feedbackId
     */
    @AuraEnabled
    public String getFeedbackId() {
      return feedback_id_serialized_name;
    }
 
    /**
     * Gets the userId.
     *
     * An optional string identifying the person submitting feedback.
     *
     * @return the userId
     */
    @AuraEnabled
    public String getUserId() {
      return user_id_serialized_name;
    }
 
    /**
     * Gets the comment.
     *
     * An optional comment from the person submitting the feedback.
     *
     * @return the comment
     */
    @AuraEnabled
    public String getComment() {
      return comment_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * Timestamp listing the creation time of the feedback submission.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the feedbackData.
     *
     * Information returned from the `POST /v1/feedback` method.
     *
     * @return the feedbackData
     */
    @AuraEnabled
    public FeedbackDataOutput getFeedbackData() {
      return feedback_data_serialized_name;
    }

    /**
     * Sets the feedbackId.
     *
     * @param feedbackId the new feedbackId
     */
    public void setFeedbackId(final String feedbackId) {
      this.feedback_id_serialized_name = feedbackId;
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
     * Sets the comment.
     *
     * @param comment the new comment
     */
    public void setComment(final String comment) {
      this.comment_serialized_name = comment;
    }

    /**
     * Sets the created.
     *
     * @param created the new created
     */
    public void setCreated(final Datetime created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the feedbackData.
     *
     * @param feedbackData the new feedbackData
     */
    public void setFeedbackData(final FeedbackDataOutput feedbackData) {
      this.feedback_data_serialized_name = feedbackData;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      FeedbackReturn ret = (FeedbackReturn) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for feedbackData
      FeedbackDataOutput newFeedbackData = (FeedbackDataOutput) new FeedbackDataOutput().deserialize(JSON.serialize(ret.getFeedbackData()), (Map<String, Object>) jsonMap.get('feedback_data_serialized_name'), FeedbackDataOutput.class);
      ret.setFeedbackData(newFeedbackData);

      return ret;
    }
  }

  /**
   * The getBatch options.
   */
  public class GetBatchOptions extends IBMWatsonOptionsModel {
    private String batchId;
 
    /**
     * Gets the batchId.
     *
     * The ID of the batch-processing request whose information you want to retrieve.
     *
     * @return the batchId
     */
    public String batchId() {
      return batchId;
    }

    private GetBatchOptions(GetBatchOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.batchId, 'batchId cannot be empty');
      batchId = builder.batchId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetBatchOptions builder
     */
    public GetBatchOptionsBuilder newBuilder() {
      return new GetBatchOptionsBuilder(this);
    }

  }

  /**
   * GetBatchOptions Builder.
   */
  public class GetBatchOptionsBuilder extends IBMWatsonOptionsModel {
    private String batchId;

    private GetBatchOptionsBuilder(GetBatchOptions getBatchOptions) {
      batchId = getBatchOptions.batchId;
      this.requestHeaders.putAll(getBatchOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetBatchOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param batchId the batchId
     */
    public GetBatchOptionsBuilder(String batchId) {
      this.batchId = batchId;
    }

    /**
     * Builds a GetBatchOptions.
     *
     * @return the getBatchOptions
     */
    public GetBatchOptions build() {
      return new GetBatchOptions(this);
    }

    /**
     * Set the batchId.
     *
     * @param batchId the batchId
     * @return the GetBatchOptions builder
     */
    public GetBatchOptionsBuilder batchId(String batchId) {
      this.batchId = batchId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetBatchOptions builder
     */
    public GetBatchOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The results of a single feedback query.
   */
  public class GetFeedback extends IBMWatsonResponseModel {
    private String feedback_id_serialized_name;
    private Datetime created_serialized_name;
    private String comment_serialized_name;
    private FeedbackDataOutput feedback_data_serialized_name;
 
    /**
     * Gets the feedbackId.
     *
     * A string uniquely identifying the feedback entry.
     *
     * @return the feedbackId
     */
    @AuraEnabled
    public String getFeedbackId() {
      return feedback_id_serialized_name;
    }
 
    /**
     * Gets the created.
     *
     * A timestamp identifying the creation time of the feedback entry.
     *
     * @return the created
     */
    @AuraEnabled
    public Datetime getCreated() {
      return created_serialized_name;
    }
 
    /**
     * Gets the comment.
     *
     * A string containing the user's comment about the feedback entry.
     *
     * @return the comment
     */
    @AuraEnabled
    public String getComment() {
      return comment_serialized_name;
    }
 
    /**
     * Gets the feedbackData.
     *
     * Information returned from the `POST /v1/feedback` method.
     *
     * @return the feedbackData
     */
    @AuraEnabled
    public FeedbackDataOutput getFeedbackData() {
      return feedback_data_serialized_name;
    }

    /**
     * Sets the feedbackId.
     *
     * @param feedbackId the new feedbackId
     */
    public void setFeedbackId(final String feedbackId) {
      this.feedback_id_serialized_name = feedbackId;
    }

    /**
     * Sets the created.
     *
     * @param created the new created
     */
    public void setCreated(final Datetime created) {
      this.created_serialized_name = created;
    }

    /**
     * Sets the comment.
     *
     * @param comment the new comment
     */
    public void setComment(final String comment) {
      this.comment_serialized_name = comment;
    }

    /**
     * Sets the feedbackData.
     *
     * @param feedbackData the new feedbackData
     */
    public void setFeedbackData(final FeedbackDataOutput feedbackData) {
      this.feedback_data_serialized_name = feedbackData;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      GetFeedback ret = (GetFeedback) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for feedbackData
      FeedbackDataOutput newFeedbackData = (FeedbackDataOutput) new FeedbackDataOutput().deserialize(JSON.serialize(ret.getFeedbackData()), (Map<String, Object>) jsonMap.get('feedback_data_serialized_name'), FeedbackDataOutput.class);
      ret.setFeedbackData(newFeedbackData);

      return ret;
    }
  }

  /**
   * The getFeedback options.
   */
  public class GetFeedbackOptions extends IBMWatsonOptionsModel {
    private String feedbackId;
    private String modelId;
 
    /**
     * Gets the feedbackId.
     *
     * A string that specifies the feedback entry to be included in the output.
     *
     * @return the feedbackId
     */
    public String feedbackId() {
      return feedbackId;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }

    private GetFeedbackOptions(GetFeedbackOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.feedbackId, 'feedbackId cannot be empty');
      feedbackId = builder.feedbackId;
      modelId = builder.modelId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a GetFeedbackOptions builder
     */
    public GetFeedbackOptionsBuilder newBuilder() {
      return new GetFeedbackOptionsBuilder(this);
    }

  }

  /**
   * GetFeedbackOptions Builder.
   */
  public class GetFeedbackOptionsBuilder extends IBMWatsonOptionsModel {
    private String feedbackId;
    private String modelId;

    private GetFeedbackOptionsBuilder(GetFeedbackOptions getFeedbackOptions) {
      feedbackId = getFeedbackOptions.feedbackId;
      modelId = getFeedbackOptions.modelId;
      this.requestHeaders.putAll(getFeedbackOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public GetFeedbackOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param feedbackId the feedbackId
     */
    public GetFeedbackOptionsBuilder(String feedbackId) {
      this.feedbackId = feedbackId;
    }

    /**
     * Builds a GetFeedbackOptions.
     *
     * @return the getFeedbackOptions
     */
    public GetFeedbackOptions build() {
      return new GetFeedbackOptions(this);
    }

    /**
     * Set the feedbackId.
     *
     * @param feedbackId the feedbackId
     * @return the GetFeedbackOptions builder
     */
    public GetFeedbackOptionsBuilder feedbackId(String feedbackId) {
      this.feedbackId = feedbackId;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the GetFeedbackOptions builder
     */
    public GetFeedbackOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the GetFeedbackOptions builder
     */
    public GetFeedbackOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The HTML converted from an input document.
   */
  public class HTMLReturn extends IBMWatsonResponseModel {
    private String num_pages_serialized_name;
    private String author_serialized_name;
    private String publication_date_serialized_name;
    private String title_serialized_name;
    private String html_serialized_name;
 
    /**
     * Gets the numPages.
     *
     * The number of pages in the input document.
     *
     * @return the numPages
     */
    @AuraEnabled
    public String getNumPages() {
      return num_pages_serialized_name;
    }
 
    /**
     * Gets the author.
     *
     * The author of the input document, if identified.
     *
     * @return the author
     */
    @AuraEnabled
    public String getAuthor() {
      return author_serialized_name;
    }
 
    /**
     * Gets the publicationDate.
     *
     * The publication date of the input document, if identified.
     *
     * @return the publicationDate
     */
    @AuraEnabled
    public String getPublicationDate() {
      return publication_date_serialized_name;
    }
 
    /**
     * Gets the title.
     *
     * The title of the input document, if identified.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the html.
     *
     * The HTML version of the input document.
     *
     * @return the html
     */
    @AuraEnabled
    public String getHtml() {
      return html_serialized_name;
    }

    /**
     * Sets the numPages.
     *
     * @param numPages the new numPages
     */
    public void setNumPages(final String numPages) {
      this.num_pages_serialized_name = numPages;
    }

    /**
     * Sets the author.
     *
     * @param author the new author
     */
    public void setAuthor(final String author) {
      this.author_serialized_name = author;
    }

    /**
     * Sets the publicationDate.
     *
     * @param publicationDate the new publicationDate
     */
    public void setPublicationDate(final String publicationDate) {
      this.publication_date_serialized_name = publicationDate;
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
     * Sets the html.
     *
     * @param html the new html
     */
    public void setHtml(final String html) {
      this.html_serialized_name = html;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      HTMLReturn ret = (HTMLReturn) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A pair of `nature` and `party` objects. The `nature` object identifies the effect of the element on the identified
   * `party`, and the `party` object identifies the affected party.
   */
  public class Label extends IBMWatsonGenericModel {
    private String nature_serialized_name;
    private String party_serialized_name;
 
    /**
     * Gets the nature.
     *
     * The identified `nature` of the element.
     *
     * @return the nature
     */
    @AuraEnabled
    public String getNature() {
      return nature_serialized_name;
    }
 
    /**
     * Gets the party.
     *
     * The identified `party` of the element.
     *
     * @return the party
     */
    @AuraEnabled
    public String getParty() {
      return party_serialized_name;
    }

    /**
     * Sets the nature.
     *
     * @param nature the new nature
     */
    public void setNature(final String nature) {
      this.nature_serialized_name = nature;
    }

    /**
     * Sets the party.
     *
     * @param party the new party
     */
    public void setParty(final String party) {
      this.party_serialized_name = party;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Label ret = (Label) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The leading sentences in a section or subsection of the input document.
   */
  public class LeadingSentence extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private Location location_serialized_name;
    private List<ElementLocations> element_locations_serialized_name;
 
    /**
     * Gets the text.
     *
     * The text of the leading sentence.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the elementLocations.
     *
     * An array of `location` objects that lists the locations of detected leading sentences.
     *
     * @return the elementLocations
     */
    @AuraEnabled
    public List<ElementLocations> getElementLocations() {
      return element_locations_serialized_name;
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
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    /**
     * Sets the elementLocations.
     *
     * @param elementLocations the new elementLocations
     */
    public void setElementLocations(final List<ElementLocations> elementLocations) {
      this.element_locations_serialized_name = elementLocations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      LeadingSentence ret = (LeadingSentence) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for elementLocations
      List<ElementLocations> newElementLocations = new List<ElementLocations>();
      List<ElementLocations> deserializedElementLocations = ret.getElementLocations();
      if (deserializedElementLocations != null) {
        for (Integer i = 0; i < deserializedElementLocations.size(); i++) {
          ElementLocations currentItem = ret.getElementLocations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('element_locations_serialized_name');
          ElementLocations newItem = (ElementLocations) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ElementLocations.class);
          newElementLocations.add(newItem);
        }
        ret.setElementLocations(newElementLocations);
      }

      return ret;
    }
  }

  /**
   * The listBatches options.
   */
  public class ListBatchesOptions extends IBMWatsonOptionsModel {

    private ListBatchesOptions(ListBatchesOptionsBuilder builder) {
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListBatchesOptions builder
     */
    public ListBatchesOptionsBuilder newBuilder() {
      return new ListBatchesOptionsBuilder(this);
    }

  }

  /**
   * ListBatchesOptions Builder.
   */
  public class ListBatchesOptionsBuilder extends IBMWatsonOptionsModel {

    private ListBatchesOptionsBuilder(ListBatchesOptions listBatchesOptions) {
      this.requestHeaders.putAll(listBatchesOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListBatchesOptionsBuilder() {
    }

    /**
     * Builds a ListBatchesOptions.
     *
     * @return the listBatchesOptions
     */
    public ListBatchesOptions build() {
      return new ListBatchesOptions(this);
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListBatchesOptions builder
     */
    public ListBatchesOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The listFeedback options.
   */
  public class ListFeedbackOptions extends IBMWatsonOptionsModel {
    private String feedbackType;
    private Datetime before;
    private Datetime after;
    private String documentTitle;
    private String modelId;
    private String modelVersion;
    private String categoryRemoved;
    private String categoryAdded;
    private String categoryNotChanged;
    private String typeRemoved;
    private String typeAdded;
    private String typeNotChanged;
    private Long pageLimit;
    private String cursor;
    private String xsort;
    private Boolean includeTotal;
 
    /**
     * Gets the feedbackType.
     *
     * An optional string that filters the output to include only feedback with the specified feedback type. The only
     * permitted value is `element_classification`.
     *
     * @return the feedbackType
     */
    public String feedbackType() {
      return feedbackType;
    }
 
    /**
     * Gets the before.
     *
     * An optional string in the format `YYYY-MM-DD` that filters the output to include only feedback that was added
     * before the specified date.
     *
     * @return the before
     */
    public Datetime before() {
      return before;
    }
 
    /**
     * Gets the after.
     *
     * An optional string in the format `YYYY-MM-DD` that filters the output to include only feedback that was added
     * after the specified date.
     *
     * @return the after
     */
    public Datetime after() {
      return after;
    }
 
    /**
     * Gets the documentTitle.
     *
     * An optional string that filters the output to include only feedback from the document with the specified
     * `document_title`.
     *
     * @return the documentTitle
     */
    public String documentTitle() {
      return documentTitle;
    }
 
    /**
     * Gets the modelId.
     *
     * An optional string that filters the output to include only feedback with the specified `model_id`. The only
     * permitted value is `contracts`.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }
 
    /**
     * Gets the modelVersion.
     *
     * An optional string that filters the output to include only feedback with the specified `model_version`.
     *
     * @return the modelVersion
     */
    public String modelVersion() {
      return modelVersion;
    }
 
    /**
     * Gets the categoryRemoved.
     *
     * An optional string in the form of a comma-separated list of categories. If this is specified, the service filters
     * the output to include only feedback that has at least one category from the list removed.
     *
     * @return the categoryRemoved
     */
    public String categoryRemoved() {
      return categoryRemoved;
    }
 
    /**
     * Gets the categoryAdded.
     *
     * An optional string in the form of a comma-separated list of categories. If this is specified, the service filters
     * the output to include only feedback that has at least one category from the list added.
     *
     * @return the categoryAdded
     */
    public String categoryAdded() {
      return categoryAdded;
    }
 
    /**
     * Gets the categoryNotChanged.
     *
     * An optional string in the form of a comma-separated list of categories. If this is specified, the service filters
     * the output to include only feedback that has at least one category from the list unchanged.
     *
     * @return the categoryNotChanged
     */
    public String categoryNotChanged() {
      return categoryNotChanged;
    }
 
    /**
     * Gets the typeRemoved.
     *
     * An optional string of comma-separated `nature`:`party` pairs. If this is specified, the service filters the
     * output to include only feedback that has at least one `nature`:`party` pair from the list removed.
     *
     * @return the typeRemoved
     */
    public String typeRemoved() {
      return typeRemoved;
    }
 
    /**
     * Gets the typeAdded.
     *
     * An optional string of comma-separated `nature`:`party` pairs. If this is specified, the service filters the
     * output to include only feedback that has at least one `nature`:`party` pair from the list removed.
     *
     * @return the typeAdded
     */
    public String typeAdded() {
      return typeAdded;
    }
 
    /**
     * Gets the typeNotChanged.
     *
     * An optional string of comma-separated `nature`:`party` pairs. If this is specified, the service filters the
     * output to include only feedback that has at least one `nature`:`party` pair from the list unchanged.
     *
     * @return the typeNotChanged
     */
    public String typeNotChanged() {
      return typeNotChanged;
    }
 
    /**
     * Gets the pageLimit.
     *
     * An optional integer specifying the number of documents that you want the service to return.
     *
     * @return the pageLimit
     */
    public Long pageLimit() {
      return pageLimit;
    }
 
    /**
     * Gets the cursor.
     *
     * An optional string that returns the set of documents after the previous set. Use this parameter with the
     * `page_limit` parameter.
     *
     * @return the cursor
     */
    public String cursor() {
      return cursor;
    }
 
    /**
     * Gets the xsort.
     *
     * An optional comma-separated list of fields in the document to sort on. You can optionally specify the sort
     * direction by prefixing the value of the field with `-` for descending order or `+` for ascending order (the
     * default). Currently permitted sorting fields are `created`, `user_id`, and `document_title`.
     *
     * @return the xsort
     */
    public String xsort() {
      return xsort;
    }
 
    /**
     * Gets the includeTotal.
     *
     * An optional boolean value. If specified as `true`, the `pagination` object in the output includes a value called
     * `total` that gives the total count of feedback created.
     *
     * @return the includeTotal
     */
    public Boolean includeTotal() {
      return includeTotal;
    }

    private ListFeedbackOptions(ListFeedbackOptionsBuilder builder) {
      feedbackType = builder.feedbackType;
      before = builder.before;
      after = builder.after;
      documentTitle = builder.documentTitle;
      modelId = builder.modelId;
      modelVersion = builder.modelVersion;
      categoryRemoved = builder.categoryRemoved;
      categoryAdded = builder.categoryAdded;
      categoryNotChanged = builder.categoryNotChanged;
      typeRemoved = builder.typeRemoved;
      typeAdded = builder.typeAdded;
      typeNotChanged = builder.typeNotChanged;
      pageLimit = builder.pageLimit;
      cursor = builder.cursor;
      xsort = builder.xsort;
      includeTotal = builder.includeTotal;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder newBuilder() {
      return new ListFeedbackOptionsBuilder(this);
    }

  }

  /**
   * ListFeedbackOptions Builder.
   */
  public class ListFeedbackOptionsBuilder extends IBMWatsonOptionsModel {
    private String feedbackType;
    private Datetime before;
    private Datetime after;
    private String documentTitle;
    private String modelId;
    private String modelVersion;
    private String categoryRemoved;
    private String categoryAdded;
    private String categoryNotChanged;
    private String typeRemoved;
    private String typeAdded;
    private String typeNotChanged;
    private Long pageLimit;
    private String cursor;
    private String xsort;
    private Boolean includeTotal;

    private ListFeedbackOptionsBuilder(ListFeedbackOptions listFeedbackOptions) {
      feedbackType = listFeedbackOptions.feedbackType;
      before = listFeedbackOptions.before;
      after = listFeedbackOptions.after;
      documentTitle = listFeedbackOptions.documentTitle;
      modelId = listFeedbackOptions.modelId;
      modelVersion = listFeedbackOptions.modelVersion;
      categoryRemoved = listFeedbackOptions.categoryRemoved;
      categoryAdded = listFeedbackOptions.categoryAdded;
      categoryNotChanged = listFeedbackOptions.categoryNotChanged;
      typeRemoved = listFeedbackOptions.typeRemoved;
      typeAdded = listFeedbackOptions.typeAdded;
      typeNotChanged = listFeedbackOptions.typeNotChanged;
      pageLimit = listFeedbackOptions.pageLimit;
      cursor = listFeedbackOptions.cursor;
      xsort = listFeedbackOptions.xsort;
      includeTotal = listFeedbackOptions.includeTotal;
      this.requestHeaders.putAll(listFeedbackOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public ListFeedbackOptionsBuilder() {
    }

    /**
     * Builds a ListFeedbackOptions.
     *
     * @return the listFeedbackOptions
     */
    public ListFeedbackOptions build() {
      return new ListFeedbackOptions(this);
    }

    /**
     * Set the feedbackType.
     *
     * @param feedbackType the feedbackType
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder feedbackType(String feedbackType) {
      this.feedbackType = feedbackType;
      return this;
    }

    /**
     * Set the before.
     *
     * @param before the before
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder before(Datetime before) {
      this.before = before;
      return this;
    }

    /**
     * Set the after.
     *
     * @param after the after
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder after(Datetime after) {
      this.after = after;
      return this;
    }

    /**
     * Set the documentTitle.
     *
     * @param documentTitle the documentTitle
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder documentTitle(String documentTitle) {
      this.documentTitle = documentTitle;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Set the modelVersion.
     *
     * @param modelVersion the modelVersion
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder modelVersion(String modelVersion) {
      this.modelVersion = modelVersion;
      return this;
    }

    /**
     * Set the categoryRemoved.
     *
     * @param categoryRemoved the categoryRemoved
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder categoryRemoved(String categoryRemoved) {
      this.categoryRemoved = categoryRemoved;
      return this;
    }

    /**
     * Set the categoryAdded.
     *
     * @param categoryAdded the categoryAdded
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder categoryAdded(String categoryAdded) {
      this.categoryAdded = categoryAdded;
      return this;
    }

    /**
     * Set the categoryNotChanged.
     *
     * @param categoryNotChanged the categoryNotChanged
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder categoryNotChanged(String categoryNotChanged) {
      this.categoryNotChanged = categoryNotChanged;
      return this;
    }

    /**
     * Set the typeRemoved.
     *
     * @param typeRemoved the typeRemoved
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder typeRemoved(String typeRemoved) {
      this.typeRemoved = typeRemoved;
      return this;
    }

    /**
     * Set the typeAdded.
     *
     * @param typeAdded the typeAdded
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder typeAdded(String typeAdded) {
      this.typeAdded = typeAdded;
      return this;
    }

    /**
     * Set the typeNotChanged.
     *
     * @param typeNotChanged the typeNotChanged
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder typeNotChanged(String typeNotChanged) {
      this.typeNotChanged = typeNotChanged;
      return this;
    }

    /**
     * Set the pageLimit.
     *
     * @param pageLimit the pageLimit
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder pageLimit(Long pageLimit) {
      this.pageLimit = pageLimit;
      return this;
    }

    /**
     * Set the cursor.
     *
     * @param cursor the cursor
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder cursor(String cursor) {
      this.cursor = cursor;
      return this;
    }

    /**
     * Set the xsort.
     *
     * @param xsort the xsort
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder xsort(String xsort) {
      this.xsort = xsort;
      return this;
    }

    /**
     * Set the includeTotal.
     *
     * @param includeTotal the includeTotal
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder includeTotal(Boolean includeTotal) {
      this.includeTotal = includeTotal;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the ListFeedbackOptions builder
     */
    public ListFeedbackOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
   * `end`.
   */
  public class Location extends IBMWatsonGenericModel {
    private Long begin_serialized_name;
    private Long end_serialized_name;
 
    /**
     * Gets the xbegin.
     *
     * The element's `begin` index.
     *
     * @return the xbegin
     */
    @AuraEnabled
    public Long getXbegin() {
      return begin_serialized_name;
    }
 
    /**
     * Gets the xend.
     *
     * The element's `end` index.
     *
     * @return the xend
     */
    @AuraEnabled
    public Long getXend() {
      return end_serialized_name;
    }

    /**
     * Sets the xbegin.
     *
     * @param xbegin the new xbegin
     */
    public void setXbegin(final long xbegin) {
      this.begin_serialized_name = xbegin;
    }

    /**
     * Sets the xend.
     *
     * @param xend the new xend
     */
    public void setXend(final long xend) {
      this.end_serialized_name = xend;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Location ret = (Location) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The original labeling from the input document, without the submitted feedback.
   */
  public class OriginalLabelsIn {
    private List<TypeLabel> types_serialized_name;
    private List<Category> categories_serialized_name;
 
    /**
     * Gets the types.
     *
     * Description of the action specified by the element and whom it affects.
     *
     * @return the types
     */
    public List<TypeLabel> getTypes() {
      return types_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * List of functional categories into which the element falls; in other words, the subject matter of the element.
     *
     * @return the categories
     */
    public List<Category> getCategories() {
      return categories_serialized_name;
    }

    /**
     * Sets the types.
     *
     * @param types the new types
     */
    public void setTypes(final List<TypeLabel> types) {
      this.types_serialized_name = types;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<Category> categories) {
      this.categories_serialized_name = categories;
    }

  }

  /**
   * The original labeling from the input document, without the submitted feedback.
   */
  public class OriginalLabelsOut extends IBMWatsonGenericModel {
    private List<TypeLabel> types_serialized_name;
    private List<Category> categories_serialized_name;
    private String modification_serialized_name;
 
    /**
     * Gets the types.
     *
     * Description of the action specified by the element and whom it affects.
     *
     * @return the types
     */
    @AuraEnabled
    public List<TypeLabel> getTypes() {
      return types_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * List of functional categories into which the element falls; in other words, the subject matter of the element.
     *
     * @return the categories
     */
    @AuraEnabled
    public List<Category> getCategories() {
      return categories_serialized_name;
    }
 
    /**
     * Gets the modification.
     *
     * A string identifying the type of modification the feedback entry in the `updated_labels` array. Possible values
     * are `added`, `not_changed`, and `removed`.
     *
     * @return the modification
     */
    @AuraEnabled
    public String getModification() {
      return modification_serialized_name;
    }

    /**
     * Sets the types.
     *
     * @param types the new types
     */
    public void setTypes(final List<TypeLabel> types) {
      this.types_serialized_name = types;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<Category> categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the modification.
     *
     * @param modification the new modification
     */
    public void setModification(final String modification) {
      this.modification_serialized_name = modification;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      OriginalLabelsOut ret = (OriginalLabelsOut) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for types
      List<TypeLabel> newTypes = new List<TypeLabel>();
      List<TypeLabel> deserializedTypes = ret.getTypes();
      if (deserializedTypes != null) {
        for (Integer i = 0; i < deserializedTypes.size(); i++) {
          TypeLabel currentItem = ret.getTypes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('types_serialized_name');
          TypeLabel newItem = (TypeLabel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TypeLabel.class);
          newTypes.add(newItem);
        }
        ret.setTypes(newTypes);
      }

      // calling custom deserializer for categories
      List<Category> newCategories = new List<Category>();
      List<Category> deserializedCategories = ret.getCategories();
      if (deserializedCategories != null) {
        for (Integer i = 0; i < deserializedCategories.size(); i++) {
          Category currentItem = ret.getCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('categories_serialized_name');
          Category newItem = (Category) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Category.class);
          newCategories.add(newItem);
        }
        ret.setCategories(newCategories);
      }

      return ret;
    }
  }

  /**
   * Pagination details, if required by the length of the output.
   */
  public class Pagination extends IBMWatsonGenericModel {
    private String refresh_cursor_serialized_name;
    private String next_cursor_serialized_name;
    private String refresh_url_serialized_name;
    private String next_url_serialized_name;
    private Long total_serialized_name;
 
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
     * Gets the refreshUrl.
     *
     * The URL that returns the current page of results.
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
     * The URL that returns the next page of results.
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

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Pagination ret = (Pagination) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * A party and its corresponding role, including address and contact information if identified.
   */
  public class Parties extends IBMWatsonGenericModel {
    private String party_serialized_name;
    private String importance_serialized_name;
    private String role_serialized_name;
    private List<Address> addresses_serialized_name;
    private List<Contact> contacts_serialized_name;
 
    /**
     * Gets the party.
     *
     * A string identifying the party.
     *
     * @return the party
     */
    @AuraEnabled
    public String getParty() {
      return party_serialized_name;
    }
 
    /**
     * Gets the importance.
     *
     * A string that identifies the importance of the party.
     *
     * @return the importance
     */
    @AuraEnabled
    public String getImportance() {
      return importance_serialized_name;
    }
 
    /**
     * Gets the role.
     *
     * A string identifying the party's role.
     *
     * @return the role
     */
    @AuraEnabled
    public String getRole() {
      return role_serialized_name;
    }
 
    /**
     * Gets the addresses.
     *
     * List of the party's address or addresses.
     *
     * @return the addresses
     */
    @AuraEnabled
    public List<Address> getAddresses() {
      return addresses_serialized_name;
    }
 
    /**
     * Gets the contacts.
     *
     * List of the names and roles of contacts identified in the input document.
     *
     * @return the contacts
     */
    @AuraEnabled
    public List<Contact> getContacts() {
      return contacts_serialized_name;
    }

    /**
     * Sets the party.
     *
     * @param party the new party
     */
    public void setParty(final String party) {
      this.party_serialized_name = party;
    }

    /**
     * Sets the importance.
     *
     * @param importance the new importance
     */
    public void setImportance(final String importance) {
      this.importance_serialized_name = importance;
    }

    /**
     * Sets the role.
     *
     * @param role the new role
     */
    public void setRole(final String role) {
      this.role_serialized_name = role;
    }

    /**
     * Sets the addresses.
     *
     * @param addresses the new addresses
     */
    public void setAddresses(final List<Address> addresses) {
      this.addresses_serialized_name = addresses;
    }

    /**
     * Sets the contacts.
     *
     * @param contacts the new contacts
     */
    public void setContacts(final List<Contact> contacts) {
      this.contacts_serialized_name = contacts;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Parties ret = (Parties) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for addresses
      List<Address> newAddresses = new List<Address>();
      List<Address> deserializedAddresses = ret.getAddresses();
      if (deserializedAddresses != null) {
        for (Integer i = 0; i < deserializedAddresses.size(); i++) {
          Address currentItem = ret.getAddresses().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('addresses_serialized_name');
          Address newItem = (Address) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Address.class);
          newAddresses.add(newItem);
        }
        ret.setAddresses(newAddresses);
      }

      // calling custom deserializer for contacts
      List<Contact> newContacts = new List<Contact>();
      List<Contact> deserializedContacts = ret.getContacts();
      if (deserializedContacts != null) {
        for (Integer i = 0; i < deserializedContacts.size(); i++) {
          Contact currentItem = ret.getContacts().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('contacts_serialized_name');
          Contact newItem = (Contact) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Contact.class);
          newContacts.add(newItem);
        }
        ret.setContacts(newContacts);
      }

      return ret;
    }
  }

  /**
   * Row-level cells, each applicable as a header to other cells in the same row as itself, of the current table.
   */
  public class RowHeaders extends IBMWatsonGenericModel {
    private String cell_id_serialized_name;
    private Location location_serialized_name;
    private String text_serialized_name;
    private String text_normalized_serialized_name;
    private Long row_index_begin_serialized_name;
    private Long row_index_end_serialized_name;
    private Long column_index_begin_serialized_name;
    private Long column_index_end_serialized_name;
 
    /**
     * Gets the cellId.
     *
     * A string value in the format `rowHeader-x-y`, where `x` and `y` are the begin and end offsets of this row header
     * cell in the input document.
     *
     * @return the cellId
     */
    @AuraEnabled
    public String getCellId() {
      return cell_id_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The textual contents of this cell from the input document without associated markup content.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the textNormalized.
     *
     * If you provide customization input, the normalized version of the cell text according to the customization;
     * otherwise, the same value as `text`.
     *
     * @return the textNormalized
     */
    @AuraEnabled
    public String getTextNormalized() {
      return text_normalized_serialized_name;
    }
 
    /**
     * Gets the rowIndexBegin.
     *
     * The `begin` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexBegin
     */
    @AuraEnabled
    public Long getRowIndexBegin() {
      return row_index_begin_serialized_name;
    }
 
    /**
     * Gets the rowIndexEnd.
     *
     * The `end` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexEnd
     */
    @AuraEnabled
    public Long getRowIndexEnd() {
      return row_index_end_serialized_name;
    }
 
    /**
     * Gets the columnIndexBegin.
     *
     * The `begin` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexBegin
     */
    @AuraEnabled
    public Long getColumnIndexBegin() {
      return column_index_begin_serialized_name;
    }
 
    /**
     * Gets the columnIndexEnd.
     *
     * The `end` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexEnd
     */
    @AuraEnabled
    public Long getColumnIndexEnd() {
      return column_index_end_serialized_name;
    }

    /**
     * Sets the cellId.
     *
     * @param cellId the new cellId
     */
    public void setCellId(final String cellId) {
      this.cell_id_serialized_name = cellId;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
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
     * Sets the textNormalized.
     *
     * @param textNormalized the new textNormalized
     */
    public void setTextNormalized(final String textNormalized) {
      this.text_normalized_serialized_name = textNormalized;
    }

    /**
     * Sets the rowIndexBegin.
     *
     * @param rowIndexBegin the new rowIndexBegin
     */
    public void setRowIndexBegin(final long rowIndexBegin) {
      this.row_index_begin_serialized_name = rowIndexBegin;
    }

    /**
     * Sets the rowIndexEnd.
     *
     * @param rowIndexEnd the new rowIndexEnd
     */
    public void setRowIndexEnd(final long rowIndexEnd) {
      this.row_index_end_serialized_name = rowIndexEnd;
    }

    /**
     * Sets the columnIndexBegin.
     *
     * @param columnIndexBegin the new columnIndexBegin
     */
    public void setColumnIndexBegin(final long columnIndexBegin) {
      this.column_index_begin_serialized_name = columnIndexBegin;
    }

    /**
     * Sets the columnIndexEnd.
     *
     * @param columnIndexEnd the new columnIndexEnd
     */
    public void setColumnIndexEnd(final long columnIndexEnd) {
      this.column_index_end_serialized_name = columnIndexEnd;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      RowHeaders ret = (RowHeaders) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * The table's section title, if identified.
   */
  public class SectionTitle extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private Location location_serialized_name;
 
    /**
     * Gets the text.
     *
     * The text of the section title, if identified.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
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
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SectionTitle ret = (SectionTitle) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * An array containing one object per section or subsection detected in the input document. Sections and subsections
   * are not nested; instead, they are flattened out and can be placed back in order by using the `begin` and `end`
   * values of the element and the `level` value of the section.
   */
  public class SectionTitles extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private Location location_serialized_name;
    private Long level_serialized_name;
    private List<ElementLocations> element_locations_serialized_name;
 
    /**
     * Gets the text.
     *
     * The text of the section title, if identified.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the level.
     *
     * An integer indicating the level at which the section is located in the input document. For example, `1`
     * represents a top-level section, `2` represents a subsection within the level `1` section, and so forth.
     *
     * @return the level
     */
    @AuraEnabled
    public Long getLevel() {
      return level_serialized_name;
    }
 
    /**
     * Gets the elementLocations.
     *
     * An array of `location` objects that lists the locations of detected section titles.
     *
     * @return the elementLocations
     */
    @AuraEnabled
    public List<ElementLocations> getElementLocations() {
      return element_locations_serialized_name;
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
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    /**
     * Sets the level.
     *
     * @param level the new level
     */
    public void setLevel(final long level) {
      this.level_serialized_name = level;
    }

    /**
     * Sets the elementLocations.
     *
     * @param elementLocations the new elementLocations
     */
    public void setElementLocations(final List<ElementLocations> elementLocations) {
      this.element_locations_serialized_name = elementLocations;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      SectionTitles ret = (SectionTitles) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for elementLocations
      List<ElementLocations> newElementLocations = new List<ElementLocations>();
      List<ElementLocations> deserializedElementLocations = ret.getElementLocations();
      if (deserializedElementLocations != null) {
        for (Integer i = 0; i < deserializedElementLocations.size(); i++) {
          ElementLocations currentItem = ret.getElementLocations().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('element_locations_serialized_name');
          ElementLocations newItem = (ElementLocations) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ElementLocations.class);
          newElementLocations.add(newItem);
        }
        ret.setElementLocations(newElementLocations);
      }

      return ret;
    }
  }

  /**
   * Brief information about the input document.
   */
  public class ShortDoc extends IBMWatsonGenericModel {
    private String title_serialized_name;
    private String hash_serialized_name;
 
    /**
     * Gets the title.
     *
     * The title of the input document, if identified.
     *
     * @return the title
     */
    @AuraEnabled
    public String getTitle() {
      return title_serialized_name;
    }
 
    /**
     * Gets the hash.
     *
     * The MD5 hash of the input document.
     *
     * @return the hash
     */
    @AuraEnabled
    public String getHash() {
      return hash_serialized_name;
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
     * Sets the hash.
     *
     * @param hash the new hash
     */
    public void setHash(final String hash) {
      this.hash_serialized_name = hash;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      ShortDoc ret = (ShortDoc) super.deserialize(jsonString, jsonMap, classType);

      return ret;
    }
  }

  /**
   * The contents of the current table's header.
   */
  public class TableHeaders extends IBMWatsonGenericModel {
    private String cell_id_serialized_name;
    private IBMWatsonMapModel location_serialized_name;
    private String text_serialized_name;
    private Long row_index_begin_serialized_name;
    private Long row_index_end_serialized_name;
    private Long column_index_begin_serialized_name;
    private Long column_index_end_serialized_name;
 
    /**
     * Gets the cellId.
     *
     * String value in the format `tableHeader-x-y` where `x` and `y` are the `begin` and `end` offsets, respectfully,
     * of the cell value in the input document.
     *
     * @return the cellId
     */
    @AuraEnabled
    public String getCellId() {
      return cell_id_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The location of the table header cell in the current table as defined by its `begin` and `end` offsets,
     * respectfully, in the input document.
     *
     * @return the location
     */
    @AuraEnabled
    public IBMWatsonMapModel getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The textual contents of the cell from the input document without associated markup content.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the rowIndexBegin.
     *
     * The `begin` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexBegin
     */
    @AuraEnabled
    public Long getRowIndexBegin() {
      return row_index_begin_serialized_name;
    }
 
    /**
     * Gets the rowIndexEnd.
     *
     * The `end` index of this cell's `row` location in the current table.
     *
     * @return the rowIndexEnd
     */
    @AuraEnabled
    public Long getRowIndexEnd() {
      return row_index_end_serialized_name;
    }
 
    /**
     * Gets the columnIndexBegin.
     *
     * The `begin` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexBegin
     */
    @AuraEnabled
    public Long getColumnIndexBegin() {
      return column_index_begin_serialized_name;
    }
 
    /**
     * Gets the columnIndexEnd.
     *
     * The `end` index of this cell's `column` location in the current table.
     *
     * @return the columnIndexEnd
     */
    @AuraEnabled
    public Long getColumnIndexEnd() {
      return column_index_end_serialized_name;
    }

    /**
     * Sets the cellId.
     *
     * @param cellId the new cellId
     */
    public void setCellId(final String cellId) {
      this.cell_id_serialized_name = cellId;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final IBMWatsonMapModel location) {
      this.location_serialized_name = location;
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
     * Sets the rowIndexBegin.
     *
     * @param rowIndexBegin the new rowIndexBegin
     */
    public void setRowIndexBegin(final long rowIndexBegin) {
      this.row_index_begin_serialized_name = rowIndexBegin;
    }

    /**
     * Sets the rowIndexEnd.
     *
     * @param rowIndexEnd the new rowIndexEnd
     */
    public void setRowIndexEnd(final long rowIndexEnd) {
      this.row_index_end_serialized_name = rowIndexEnd;
    }

    /**
     * Sets the columnIndexBegin.
     *
     * @param columnIndexBegin the new columnIndexBegin
     */
    public void setColumnIndexBegin(final long columnIndexBegin) {
      this.column_index_begin_serialized_name = columnIndexBegin;
    }

    /**
     * Sets the columnIndexEnd.
     *
     * @param columnIndexEnd the new columnIndexEnd
     */
    public void setColumnIndexEnd(final long columnIndexEnd) {
      this.column_index_end_serialized_name = columnIndexEnd;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TableHeaders ret = (TableHeaders) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      IBMWatsonMapModel newLocation = (IBMWatsonMapModel) new IBMWatsonMapModel().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), IBMWatsonMapModel.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * The analysis of the document's tables.
   */
  public class TableReturn extends IBMWatsonResponseModel {
    private DocInfo document_serialized_name;
    private String model_id_serialized_name;
    private String model_version_serialized_name;
    private List<Tables> tables_serialized_name;
 
    /**
     * Gets the document.
     *
     * Information about the parsed input document.
     *
     * @return the document
     */
    @AuraEnabled
    public DocInfo getDocument() {
      return document_serialized_name;
    }
 
    /**
     * Gets the modelId.
     *
     * The ID of the model used to extract the table contents. The value for table extraction is `tables`.
     *
     * @return the modelId
     */
    @AuraEnabled
    public String getModelId() {
      return model_id_serialized_name;
    }
 
    /**
     * Gets the modelVersion.
     *
     * The version of the `tables` model ID.
     *
     * @return the modelVersion
     */
    @AuraEnabled
    public String getModelVersion() {
      return model_version_serialized_name;
    }
 
    /**
     * Gets the tables.
     *
     * Definitions of the tables identified in the input document.
     *
     * @return the tables
     */
    @AuraEnabled
    public List<Tables> getTables() {
      return tables_serialized_name;
    }

    /**
     * Sets the document.
     *
     * @param document the new document
     */
    public void setDocument(final DocInfo document) {
      this.document_serialized_name = document;
    }

    /**
     * Sets the modelId.
     *
     * @param modelId the new modelId
     */
    public void setModelId(final String modelId) {
      this.model_id_serialized_name = modelId;
    }

    /**
     * Sets the modelVersion.
     *
     * @param modelVersion the new modelVersion
     */
    public void setModelVersion(final String modelVersion) {
      this.model_version_serialized_name = modelVersion;
    }

    /**
     * Sets the tables.
     *
     * @param tables the new tables
     */
    public void setTables(final List<Tables> tables) {
      this.tables_serialized_name = tables;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TableReturn ret = (TableReturn) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for document
      DocInfo newDocument = (DocInfo) new DocInfo().deserialize(JSON.serialize(ret.getDocument()), (Map<String, Object>) jsonMap.get('document_serialized_name'), DocInfo.class);
      ret.setDocument(newDocument);

      // calling custom deserializer for tables
      List<Tables> newTables = new List<Tables>();
      List<Tables> deserializedTables = ret.getTables();
      if (deserializedTables != null) {
        for (Integer i = 0; i < deserializedTables.size(); i++) {
          Tables currentItem = ret.getTables().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('tables_serialized_name');
          Tables newItem = (Tables) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Tables.class);
          newTables.add(newItem);
        }
        ret.setTables(newTables);
      }

      return ret;
    }
  }

  /**
   * The contents of the tables extracted from a document.
   */
  public class Tables extends IBMWatsonGenericModel {
    private Location location_serialized_name;
    private String text_serialized_name;
    private SectionTitle section_title_serialized_name;
    private List<TableHeaders> table_headers_serialized_name;
    private List<RowHeaders> row_headers_serialized_name;
    private List<ColumnHeaders> column_headers_serialized_name;
    private List<BodyCells> body_cells_serialized_name;
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The textual contents of the current table from the input document without associated markup content.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the sectionTitle.
     *
     * The table's section title, if identified.
     *
     * @return the sectionTitle
     */
    @AuraEnabled
    public SectionTitle getSectionTitle() {
      return section_title_serialized_name;
    }
 
    /**
     * Gets the tableHeaders.
     *
     * An array of table-level cells that apply as headers to all the other cells in the current table.
     *
     * @return the tableHeaders
     */
    @AuraEnabled
    public List<TableHeaders> getTableHeaders() {
      return table_headers_serialized_name;
    }
 
    /**
     * Gets the rowHeaders.
     *
     * An array of row-level cells, each applicable as a header to other cells in the same row as itself, of the current
     * table.
     *
     * @return the rowHeaders
     */
    @AuraEnabled
    public List<RowHeaders> getRowHeaders() {
      return row_headers_serialized_name;
    }
 
    /**
     * Gets the columnHeaders.
     *
     * An array of column-level cells, each applicable as a header to other cells in the same column as itself, of the
     * current table.
     *
     * @return the columnHeaders
     */
    @AuraEnabled
    public List<ColumnHeaders> getColumnHeaders() {
      return column_headers_serialized_name;
    }
 
    /**
     * Gets the bodyCells.
     *
     * An array of cells that are neither table header nor column header nor row header cells, of the current table with
     * corresponding row and column header associations.
     *
     * @return the bodyCells
     */
    @AuraEnabled
    public List<BodyCells> getBodyCells() {
      return body_cells_serialized_name;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
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
     * Sets the sectionTitle.
     *
     * @param sectionTitle the new sectionTitle
     */
    public void setSectionTitle(final SectionTitle sectionTitle) {
      this.section_title_serialized_name = sectionTitle;
    }

    /**
     * Sets the tableHeaders.
     *
     * @param tableHeaders the new tableHeaders
     */
    public void setTableHeaders(final List<TableHeaders> tableHeaders) {
      this.table_headers_serialized_name = tableHeaders;
    }

    /**
     * Sets the rowHeaders.
     *
     * @param rowHeaders the new rowHeaders
     */
    public void setRowHeaders(final List<RowHeaders> rowHeaders) {
      this.row_headers_serialized_name = rowHeaders;
    }

    /**
     * Sets the columnHeaders.
     *
     * @param columnHeaders the new columnHeaders
     */
    public void setColumnHeaders(final List<ColumnHeaders> columnHeaders) {
      this.column_headers_serialized_name = columnHeaders;
    }

    /**
     * Sets the bodyCells.
     *
     * @param bodyCells the new bodyCells
     */
    public void setBodyCells(final List<BodyCells> bodyCells) {
      this.body_cells_serialized_name = bodyCells;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      Tables ret = (Tables) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for sectionTitle
      SectionTitle newSectionTitle = (SectionTitle) new SectionTitle().deserialize(JSON.serialize(ret.getSectionTitle()), (Map<String, Object>) jsonMap.get('section_title_serialized_name'), SectionTitle.class);
      ret.setSectionTitle(newSectionTitle);

      // calling custom deserializer for tableHeaders
      List<TableHeaders> newTableHeaders = new List<TableHeaders>();
      List<TableHeaders> deserializedTableHeaders = ret.getTableHeaders();
      if (deserializedTableHeaders != null) {
        for (Integer i = 0; i < deserializedTableHeaders.size(); i++) {
          TableHeaders currentItem = ret.getTableHeaders().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('table_headers_serialized_name');
          TableHeaders newItem = (TableHeaders) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TableHeaders.class);
          newTableHeaders.add(newItem);
        }
        ret.setTableHeaders(newTableHeaders);
      }

      // calling custom deserializer for rowHeaders
      List<RowHeaders> newRowHeaders = new List<RowHeaders>();
      List<RowHeaders> deserializedRowHeaders = ret.getRowHeaders();
      if (deserializedRowHeaders != null) {
        for (Integer i = 0; i < deserializedRowHeaders.size(); i++) {
          RowHeaders currentItem = ret.getRowHeaders().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('row_headers_serialized_name');
          RowHeaders newItem = (RowHeaders) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), RowHeaders.class);
          newRowHeaders.add(newItem);
        }
        ret.setRowHeaders(newRowHeaders);
      }

      // calling custom deserializer for columnHeaders
      List<ColumnHeaders> newColumnHeaders = new List<ColumnHeaders>();
      List<ColumnHeaders> deserializedColumnHeaders = ret.getColumnHeaders();
      if (deserializedColumnHeaders != null) {
        for (Integer i = 0; i < deserializedColumnHeaders.size(); i++) {
          ColumnHeaders currentItem = ret.getColumnHeaders().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('column_headers_serialized_name');
          ColumnHeaders newItem = (ColumnHeaders) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), ColumnHeaders.class);
          newColumnHeaders.add(newItem);
        }
        ret.setColumnHeaders(newColumnHeaders);
      }

      // calling custom deserializer for bodyCells
      List<BodyCells> newBodyCells = new List<BodyCells>();
      List<BodyCells> deserializedBodyCells = ret.getBodyCells();
      if (deserializedBodyCells != null) {
        for (Integer i = 0; i < deserializedBodyCells.size(); i++) {
          BodyCells currentItem = ret.getBodyCells().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('body_cells_serialized_name');
          BodyCells newItem = (BodyCells) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), BodyCells.class);
          newBodyCells.add(newItem);
        }
        ret.setBodyCells(newBodyCells);
      }

      return ret;
    }
  }

  /**
   * Termination dates identified in the input document.
   */
  public class TerminationDates extends IBMWatsonGenericModel {
    private String text_serialized_name;
    private String confidence_level_serialized_name;
    private Location location_serialized_name;
 
    /**
     * Gets the text.
     *
     * The termination date.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the confidenceLevel.
     *
     * The confidence level in the identification of the termination date.
     *
     * @return the confidenceLevel
     */
    @AuraEnabled
    public String getConfidenceLevel() {
      return confidence_level_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
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
     * Sets the confidenceLevel.
     *
     * @param confidenceLevel the new confidenceLevel
     */
    public void setConfidenceLevel(final String confidenceLevel) {
      this.confidence_level_serialized_name = confidenceLevel;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TerminationDates ret = (TerminationDates) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      return ret;
    }
  }

  /**
   * Identification of a specific type.
   */
  public class TypeLabel extends IBMWatsonGenericModel {
    private Label label_serialized_name;
    private List<String> provenance_ids_serialized_name;
 
    /**
     * Gets the label.
     *
     * A pair of `nature` and `party` objects. The `nature` object identifies the effect of the element on the
     * identified `party`, and the `party` object identifies the affected party.
     *
     * @return the label
     */
    @AuraEnabled
    public Label getLabel() {
      return label_serialized_name;
    }
 
    /**
     * Gets the provenanceIds.
     *
     * One or more hash values that you can send to IBM to provide feedback or receive support.
     *
     * @return the provenanceIds
     */
    @AuraEnabled
    public List<String> getProvenanceIds() {
      return provenance_ids_serialized_name;
    }

    /**
     * Sets the label.
     *
     * @param label the new label
     */
    public void setLabel(final Label label) {
      this.label_serialized_name = label;
    }

    /**
     * Sets the provenanceIds.
     *
     * @param provenanceIds the new provenanceIds
     */
    public void setProvenanceIds(final List<String> provenanceIds) {
      this.provenance_ids_serialized_name = provenanceIds;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      TypeLabel ret = (TypeLabel) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for label
      Label newLabel = (Label) new Label().deserialize(JSON.serialize(ret.getLabel()), (Map<String, Object>) jsonMap.get('label_serialized_name'), Label.class);
      ret.setLabel(newLabel);

      return ret;
    }
  }

  /**
   * Element that does not align semantically between two compared documents.
   */
  public class UnalignedElement extends IBMWatsonGenericModel {
    private String document_label_serialized_name;
    private Location location_serialized_name;
    private String text_serialized_name;
    private List<TypeLabel> types_serialized_name;
    private List<Category> categories_serialized_name;
    private List<Attribute> attributes_serialized_name;
 
    /**
     * Gets the documentLabel.
     *
     * The label assigned to the document by the value of the `file_1_label` or `file_2_label` parameters on the
     * `/v1/compare` method.
     *
     * @return the documentLabel
     */
    @AuraEnabled
    public String getDocumentLabel() {
      return document_label_serialized_name;
    }
 
    /**
     * Gets the location.
     *
     * The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     * `end`.
     *
     * @return the location
     */
    @AuraEnabled
    public Location getLocation() {
      return location_serialized_name;
    }
 
    /**
     * Gets the text.
     *
     * The text of the element.
     *
     * @return the text
     */
    @AuraEnabled
    public String getText() {
      return text_serialized_name;
    }
 
    /**
     * Gets the types.
     *
     * Description of the action specified by the element and whom it affects.
     *
     * @return the types
     */
    @AuraEnabled
    public List<TypeLabel> getTypes() {
      return types_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * List of functional categories into which the element falls; in other words, the subject matter of the element.
     *
     * @return the categories
     */
    @AuraEnabled
    public List<Category> getCategories() {
      return categories_serialized_name;
    }
 
    /**
     * Gets the attributes.
     *
     * List of document attributes.
     *
     * @return the attributes
     */
    @AuraEnabled
    public List<Attribute> getAttributes() {
      return attributes_serialized_name;
    }

    /**
     * Sets the documentLabel.
     *
     * @param documentLabel the new documentLabel
     */
    public void setDocumentLabel(final String documentLabel) {
      this.document_label_serialized_name = documentLabel;
    }

    /**
     * Sets the location.
     *
     * @param location the new location
     */
    public void setLocation(final Location location) {
      this.location_serialized_name = location;
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
     * Sets the types.
     *
     * @param types the new types
     */
    public void setTypes(final List<TypeLabel> types) {
      this.types_serialized_name = types;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<Category> categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the attributes.
     *
     * @param attributes the new attributes
     */
    public void setAttributes(final List<Attribute> attributes) {
      this.attributes_serialized_name = attributes;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      UnalignedElement ret = (UnalignedElement) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for location
      Location newLocation = (Location) new Location().deserialize(JSON.serialize(ret.getLocation()), (Map<String, Object>) jsonMap.get('location_serialized_name'), Location.class);
      ret.setLocation(newLocation);

      // calling custom deserializer for types
      List<TypeLabel> newTypes = new List<TypeLabel>();
      List<TypeLabel> deserializedTypes = ret.getTypes();
      if (deserializedTypes != null) {
        for (Integer i = 0; i < deserializedTypes.size(); i++) {
          TypeLabel currentItem = ret.getTypes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('types_serialized_name');
          TypeLabel newItem = (TypeLabel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TypeLabel.class);
          newTypes.add(newItem);
        }
        ret.setTypes(newTypes);
      }

      // calling custom deserializer for categories
      List<Category> newCategories = new List<Category>();
      List<Category> deserializedCategories = ret.getCategories();
      if (deserializedCategories != null) {
        for (Integer i = 0; i < deserializedCategories.size(); i++) {
          Category currentItem = ret.getCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('categories_serialized_name');
          Category newItem = (Category) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Category.class);
          newCategories.add(newItem);
        }
        ret.setCategories(newCategories);
      }

      // calling custom deserializer for attributes
      List<Attribute> newAttributes = new List<Attribute>();
      List<Attribute> deserializedAttributes = ret.getAttributes();
      if (deserializedAttributes != null) {
        for (Integer i = 0; i < deserializedAttributes.size(); i++) {
          Attribute currentItem = ret.getAttributes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('attributes_serialized_name');
          Attribute newItem = (Attribute) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Attribute.class);
          newAttributes.add(newItem);
        }
        ret.setAttributes(newAttributes);
      }

      return ret;
    }
  }

  /**
   * The updateBatch options.
   */
  public class UpdateBatchOptions extends IBMWatsonOptionsModel {
    private String batchId;
    private String action;
    private String modelId;
 
    /**
     * Gets the batchId.
     *
     * The ID of the batch-processing request you want to update.
     *
     * @return the batchId
     */
    public String batchId() {
      return batchId;
    }
 
    /**
     * Gets the action.
     *
     * The action you want to perform on the specified batch-processing request.
     *
     * @return the action
     */
    public String action() {
      return action;
    }
 
    /**
     * Gets the modelId.
     *
     * The analysis model to be used by the service. For the `/v1/element_classification` and `/v1/comparison` methods,
     * the default is `contracts`. For the `/v1/tables` method, the default is `tables`. These defaults apply to the
     * standalone methods as well as to the methods' use in batch-processing requests.
     *
     * @return the modelId
     */
    public String modelId() {
      return modelId;
    }

    private UpdateBatchOptions(UpdateBatchOptionsBuilder builder) {
      IBMWatsonValidator.notEmpty(builder.batchId, 'batchId cannot be empty');
      IBMWatsonValidator.notNull(builder.action, 'action cannot be null');
      batchId = builder.batchId;
      action = builder.action;
      modelId = builder.modelId;
      this.requestHeaders = builder.requestHeaders;
    }

    /**
     * New builder.
     *
     * @return a UpdateBatchOptions builder
     */
    public UpdateBatchOptionsBuilder newBuilder() {
      return new UpdateBatchOptionsBuilder(this);
    }

  }

  /**
   * UpdateBatchOptions Builder.
   */
  public class UpdateBatchOptionsBuilder extends IBMWatsonOptionsModel {
    private String batchId;
    private String action;
    private String modelId;

    private UpdateBatchOptionsBuilder(UpdateBatchOptions updateBatchOptions) {
      batchId = updateBatchOptions.batchId;
      action = updateBatchOptions.action;
      modelId = updateBatchOptions.modelId;
      this.requestHeaders.putAll(updateBatchOptions.requestHeaders());
    }

    /**
     * Instantiates a new builder.
     */
    public UpdateBatchOptionsBuilder() {
    }

    /**
     * Instantiates a new builder with required properties.
     *
     * @param batchId the batchId
     * @param action the action
     */
    public UpdateBatchOptionsBuilder(String batchId, String action) {
      this.batchId = batchId;
      this.action = action;
    }

    /**
     * Builds a UpdateBatchOptions.
     *
     * @return the updateBatchOptions
     */
    public UpdateBatchOptions build() {
      return new UpdateBatchOptions(this);
    }

    /**
     * Set the batchId.
     *
     * @param batchId the batchId
     * @return the UpdateBatchOptions builder
     */
    public UpdateBatchOptionsBuilder batchId(String batchId) {
      this.batchId = batchId;
      return this;
    }

    /**
     * Set the action.
     *
     * @param action the action
     * @return the UpdateBatchOptions builder
     */
    public UpdateBatchOptionsBuilder action(String action) {
      this.action = action;
      return this;
    }

    /**
     * Set the modelId.
     *
     * @param modelId the modelId
     * @return the UpdateBatchOptions builder
     */
    public UpdateBatchOptionsBuilder modelId(String modelId) {
      this.modelId = modelId;
      return this;
    }

    /**
     * Add a request header.
     *
     * @param name the header name
     * @param value the header value
     * @return the UpdateBatchOptions builder
     */
    public UpdateBatchOptionsBuilder addHeader(String name, String value) {
      this.requestHeaders.put(name, value);
      return this;
    }
  }

  /**
   * The updated labeling from the input document, accounting for the submitted feedback.
   */
  public class UpdatedLabelsIn {
    private List<TypeLabel> types_serialized_name;
    private List<Category> categories_serialized_name;
 
    /**
     * Gets the types.
     *
     * Description of the action specified by the element and whom it affects.
     *
     * @return the types
     */
    public List<TypeLabel> getTypes() {
      return types_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * List of functional categories into which the element falls; in other words, the subject matter of the element.
     *
     * @return the categories
     */
    public List<Category> getCategories() {
      return categories_serialized_name;
    }

    /**
     * Sets the types.
     *
     * @param types the new types
     */
    public void setTypes(final List<TypeLabel> types) {
      this.types_serialized_name = types;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<Category> categories) {
      this.categories_serialized_name = categories;
    }

  }

  /**
   * The updated labeling from the input document, accounting for the submitted feedback.
   */
  public class UpdatedLabelsOut extends IBMWatsonGenericModel {
    private List<TypeLabel> types_serialized_name;
    private List<Category> categories_serialized_name;
    private String modification_serialized_name;
 
    /**
     * Gets the types.
     *
     * Description of the action specified by the element and whom it affects.
     *
     * @return the types
     */
    @AuraEnabled
    public List<TypeLabel> getTypes() {
      return types_serialized_name;
    }
 
    /**
     * Gets the categories.
     *
     * List of functional categories into which the element falls; in other words, the subject matter of the element.
     *
     * @return the categories
     */
    @AuraEnabled
    public List<Category> getCategories() {
      return categories_serialized_name;
    }
 
    /**
     * Gets the modification.
     *
     * The type of modification the feedback entry in the `updated_labels` array. Possible values are `added`,
     * `not_changed`, and `removed`.
     *
     * @return the modification
     */
    @AuraEnabled
    public String getModification() {
      return modification_serialized_name;
    }

    /**
     * Sets the types.
     *
     * @param types the new types
     */
    public void setTypes(final List<TypeLabel> types) {
      this.types_serialized_name = types;
    }

    /**
     * Sets the categories.
     *
     * @param categories the new categories
     */
    public void setCategories(final List<Category> categories) {
      this.categories_serialized_name = categories;
    }

    /**
     * Sets the modification.
     *
     * @param modification the new modification
     */
    public void setModification(final String modification) {
      this.modification_serialized_name = modification;
    }

    public override Object deserialize(String jsonString, Map<String, Object> jsonMap, Type classType) {
      if (jsonMap == null) {
        return null;
      }

      UpdatedLabelsOut ret = (UpdatedLabelsOut) super.deserialize(jsonString, jsonMap, classType);

      // calling custom deserializer for types
      List<TypeLabel> newTypes = new List<TypeLabel>();
      List<TypeLabel> deserializedTypes = ret.getTypes();
      if (deserializedTypes != null) {
        for (Integer i = 0; i < deserializedTypes.size(); i++) {
          TypeLabel currentItem = ret.getTypes().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('types_serialized_name');
          TypeLabel newItem = (TypeLabel) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), TypeLabel.class);
          newTypes.add(newItem);
        }
        ret.setTypes(newTypes);
      }

      // calling custom deserializer for categories
      List<Category> newCategories = new List<Category>();
      List<Category> deserializedCategories = ret.getCategories();
      if (deserializedCategories != null) {
        for (Integer i = 0; i < deserializedCategories.size(); i++) {
          Category currentItem = ret.getCategories().get(i);
          List<Object> itemInMap = (List<Object>) jsonMap.get('categories_serialized_name');
          Category newItem = (Category) currentItem.deserialize(JSON.serialize(currentItem), (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(itemInMap.get(i))), Category.class);
          newCategories.add(newItem);
        }
        ret.setCategories(newCategories);
      }

      return ret;
    }
  }

}
