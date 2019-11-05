@isTest
private class IBMCompareComplyV1Test {
  private static IBMCompareComplyV1 service;

  static {
    service = new IBMCompareComplyV1('2018-10-15', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testAddFeedbackOptionsModel() {
    Test.startTest();
    String feedbackType = 'feedback_type';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabels = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabels = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    IBMCompareComplyV1Models.FeedbackDataInput feedbackData = new IBMCompareComplyV1Models.FeedbackDataInputBuilder()
      .feedbackType(feedbackType)
      .location(location)
      .text(text)
      .originalLabels(originalLabels)
      .updatedLabels(updatedLabels)
      .build();
    String userId = 'user_id';
    String comment = 'comment';

    IBMCompareComplyV1Models.AddFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.AddFeedbackOptionsBuilder()
      .feedbackData(feedbackData)
      .userId(userId)
      .comment(comment)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(feedbackData, testRequestModel.feedbackData());
    System.assertEquals(userId, testRequestModel.userId());
    System.assertEquals(comment, testRequestModel.comment());
    Test.stopTest();
  }
  static testMethod void testAddressModel() {
    Test.startTest();
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.Address testRequestModel = new IBMCompareComplyV1Models.Address();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testAlignedElementModel() {
    Test.startTest();
    IBMCompareComplyV1Models.ElementPair elementPairItem = new IBMCompareComplyV1Models.ElementPair();
    List<IBMCompareComplyV1Models.ElementPair> elementPair = new List<IBMCompareComplyV1Models.ElementPair> { elementPairItem } ;
    Boolean identicalText = true;
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Boolean significantElements = true;

    IBMCompareComplyV1Models.AlignedElement testRequestModel = new IBMCompareComplyV1Models.AlignedElement();
    testRequestModel.setElementPair(elementPair);
    testRequestModel.setIdenticalText(identicalText);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setSignificantElements(significantElements);

    System.assertEquals(elementPair, testRequestModel.getElementPair());
    System.assertEquals(identicalText, testRequestModel.getIdenticalText());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(significantElements, testRequestModel.getSignificantElements());
    Test.stopTest();
  }
  static testMethod void testAttributeModel() {
    Test.startTest();
    String xType = 'x_type';
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.Attribute testRequestModel = new IBMCompareComplyV1Models.Attribute();
    testRequestModel.setXType(xType);
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testBatchStatusModel() {
    Test.startTest();
    String function = 'function';
    String inputBucketLocation = 'input_bucket_location';
    String inputBucketName = 'input_bucket_name';
    String outputBucketLocation = 'output_bucket_location';
    String outputBucketName = 'output_bucket_name';
    String batchId = 'batch_id';
    IBMCompareComplyV1Models.DocCounts documentCounts = new IBMCompareComplyV1Models.DocCounts();
    String status = 'status';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime updated = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);

    IBMCompareComplyV1Models.BatchStatus testRequestModel = new IBMCompareComplyV1Models.BatchStatus();
    testRequestModel.setFunction(function);
    testRequestModel.setInputBucketLocation(inputBucketLocation);
    testRequestModel.setInputBucketName(inputBucketName);
    testRequestModel.setOutputBucketLocation(outputBucketLocation);
    testRequestModel.setOutputBucketName(outputBucketName);
    testRequestModel.setBatchId(batchId);
    testRequestModel.setDocumentCounts(documentCounts);
    testRequestModel.setStatus(status);
    testRequestModel.setCreated(created);
    testRequestModel.setUpdated(updated);

    System.assertEquals(function, testRequestModel.getFunction());
    System.assertEquals(inputBucketLocation, testRequestModel.getInputBucketLocation());
    System.assertEquals(inputBucketName, testRequestModel.getInputBucketName());
    System.assertEquals(outputBucketLocation, testRequestModel.getOutputBucketLocation());
    System.assertEquals(outputBucketName, testRequestModel.getOutputBucketName());
    System.assertEquals(batchId, testRequestModel.getBatchId());
    System.assertEquals(documentCounts, testRequestModel.getDocumentCounts());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(updated, testRequestModel.getUpdated());
    Test.stopTest();
  }
  static testMethod void testBatchesModel() {
    Test.startTest();
    IBMCompareComplyV1Models.BatchStatus batchesItem = new IBMCompareComplyV1Models.BatchStatus();
    List<IBMCompareComplyV1Models.BatchStatus> batches = new List<IBMCompareComplyV1Models.BatchStatus> { batchesItem } ;

    IBMCompareComplyV1Models.Batches testRequestModel = new IBMCompareComplyV1Models.Batches();
    testRequestModel.setBatches(batches);

    System.assertEquals(batches, testRequestModel.getBatches());
    Test.stopTest();
  }
  static testMethod void testBodyCellsModel() {
    Test.startTest();
    String cellId = 'cell_id';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    Long rowIndexBegin = 10L;
    Long rowIndexEnd = 10L;
    Long columnIndexBegin = 10L;
    Long columnIndexEnd = 10L;
    List<String> rowHeaderIds = new List<String> { 'row_header_ids' } ;
    List<String> rowHeaderTexts = new List<String> { 'row_header_texts' } ;
    List<String> rowHeaderTextsNormalized = new List<String> { 'row_header_texts_normalized' } ;
    List<String> columnHeaderIds = new List<String> { 'column_header_ids' } ;
    List<String> columnHeaderTexts = new List<String> { 'column_header_texts' } ;
    List<String> columnHeaderTextsNormalized = new List<String> { 'column_header_texts_normalized' } ;
    IBMCompareComplyV1Models.Attribute attributesItem = new IBMCompareComplyV1Models.Attribute();
    List<IBMCompareComplyV1Models.Attribute> attributes = new List<IBMCompareComplyV1Models.Attribute> { attributesItem } ;

    IBMCompareComplyV1Models.BodyCells testRequestModel = new IBMCompareComplyV1Models.BodyCells();
    testRequestModel.setCellId(cellId);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setRowIndexBegin(rowIndexBegin);
    testRequestModel.setRowIndexEnd(rowIndexEnd);
    testRequestModel.setColumnIndexBegin(columnIndexBegin);
    testRequestModel.setColumnIndexEnd(columnIndexEnd);
    testRequestModel.setRowHeaderIds(rowHeaderIds);
    testRequestModel.setRowHeaderTexts(rowHeaderTexts);
    testRequestModel.setRowHeaderTextsNormalized(rowHeaderTextsNormalized);
    testRequestModel.setColumnHeaderIds(columnHeaderIds);
    testRequestModel.setColumnHeaderTexts(columnHeaderTexts);
    testRequestModel.setColumnHeaderTextsNormalized(columnHeaderTextsNormalized);
    testRequestModel.setAttributes(attributes);

    System.assertEquals(cellId, testRequestModel.getCellId());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(rowIndexBegin, testRequestModel.getRowIndexBegin());
    System.assertEquals(rowIndexEnd, testRequestModel.getRowIndexEnd());
    System.assertEquals(columnIndexBegin, testRequestModel.getColumnIndexBegin());
    System.assertEquals(columnIndexEnd, testRequestModel.getColumnIndexEnd());
    System.assertEquals(rowHeaderIds, testRequestModel.getRowHeaderIds());
    System.assertEquals(rowHeaderTexts, testRequestModel.getRowHeaderTexts());
    System.assertEquals(rowHeaderTextsNormalized, testRequestModel.getRowHeaderTextsNormalized());
    System.assertEquals(columnHeaderIds, testRequestModel.getColumnHeaderIds());
    System.assertEquals(columnHeaderTexts, testRequestModel.getColumnHeaderTexts());
    System.assertEquals(columnHeaderTextsNormalized, testRequestModel.getColumnHeaderTextsNormalized());
    System.assertEquals(attributes, testRequestModel.getAttributes());
    Test.stopTest();
  }
  static testMethod void testCategoryModel() {
    Test.startTest();
    String label = 'label';
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;

    IBMCompareComplyV1Models.Category testRequestModel = new IBMCompareComplyV1Models.CategoryBuilder()
      .label(label)
      .provenanceIds(provenanceIds)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    Test.stopTest();
  }
  static testMethod void testCategoryComparisonModel() {
    Test.startTest();
    String label = 'label';

    IBMCompareComplyV1Models.CategoryComparison testRequestModel = new IBMCompareComplyV1Models.CategoryComparison();
    testRequestModel.setLabel(label);

    System.assertEquals(label, testRequestModel.getLabel());
    Test.stopTest();
  }
  static testMethod void testClassifyElementsOptionsModel() {
    Test.startTest();
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String fileContentType = 'file_content_type';
    String model = 'model';

    IBMCompareComplyV1Models.ClassifyElementsOptions testRequestModel = new IBMCompareComplyV1Models.ClassifyElementsOptionsBuilder()
      .file(file)
      .fileContentType(fileContentType)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(file, testRequestModel.file());
    System.assertEquals(fileContentType, testRequestModel.fileContentType());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testClassifyReturnModel() {
    Test.startTest();
    IBMCompareComplyV1Models.Document document = new IBMCompareComplyV1Models.Document();
    String modelId = 'model_id';
    String modelVersion = 'model_version';
    IBMCompareComplyV1Models.Element elementsItem = new IBMCompareComplyV1Models.Element();
    List<IBMCompareComplyV1Models.Element> elements = new List<IBMCompareComplyV1Models.Element> { elementsItem } ;
    IBMCompareComplyV1Models.EffectiveDates effectiveDatesItem = new IBMCompareComplyV1Models.EffectiveDates();
    List<IBMCompareComplyV1Models.EffectiveDates> effectiveDates = new List<IBMCompareComplyV1Models.EffectiveDates> { effectiveDatesItem } ;
    IBMCompareComplyV1Models.ContractAmts contractAmountsItem = new IBMCompareComplyV1Models.ContractAmts();
    List<IBMCompareComplyV1Models.ContractAmts> contractAmounts = new List<IBMCompareComplyV1Models.ContractAmts> { contractAmountsItem } ;
    IBMCompareComplyV1Models.TerminationDates terminationDatesItem = new IBMCompareComplyV1Models.TerminationDates();
    List<IBMCompareComplyV1Models.TerminationDates> terminationDates = new List<IBMCompareComplyV1Models.TerminationDates> { terminationDatesItem } ;
    IBMCompareComplyV1Models.ContractTypes contractTypesItem = new IBMCompareComplyV1Models.ContractTypes();
    List<IBMCompareComplyV1Models.ContractTypes> contractTypes = new List<IBMCompareComplyV1Models.ContractTypes> { contractTypesItem } ;
    IBMCompareComplyV1Models.ContractTerms contractTermsItem = new IBMCompareComplyV1Models.ContractTerms();
    List<IBMCompareComplyV1Models.ContractTerms> contractTerms = new List<IBMCompareComplyV1Models.ContractTerms> { contractTermsItem } ;
    IBMCompareComplyV1Models.PaymentTerms paymentTermsItem = new IBMCompareComplyV1Models.PaymentTerms();
    List<IBMCompareComplyV1Models.PaymentTerms> paymentTerms = new List<IBMCompareComplyV1Models.PaymentTerms> { paymentTermsItem } ;
    IBMCompareComplyV1Models.ContractCurrencies contractCurrenciesItem = new IBMCompareComplyV1Models.ContractCurrencies();
    List<IBMCompareComplyV1Models.ContractCurrencies> contractCurrencies = new List<IBMCompareComplyV1Models.ContractCurrencies> { contractCurrenciesItem } ;
    IBMCompareComplyV1Models.Tables tablesItem = new IBMCompareComplyV1Models.Tables();
    List<IBMCompareComplyV1Models.Tables> tables = new List<IBMCompareComplyV1Models.Tables> { tablesItem } ;
    IBMCompareComplyV1Models.DocStructure documentStructure = new IBMCompareComplyV1Models.DocStructure();
    IBMCompareComplyV1Models.Parties partiesItem = new IBMCompareComplyV1Models.Parties();
    List<IBMCompareComplyV1Models.Parties> parties = new List<IBMCompareComplyV1Models.Parties> { partiesItem } ;

    IBMCompareComplyV1Models.ClassifyReturn testRequestModel = new IBMCompareComplyV1Models.ClassifyReturn();
    testRequestModel.setDocument(document);
    testRequestModel.setModelId(modelId);
    testRequestModel.setModelVersion(modelVersion);
    testRequestModel.setElements(elements);
    testRequestModel.setEffectiveDates(effectiveDates);
    testRequestModel.setContractAmounts(contractAmounts);
    testRequestModel.setTerminationDates(terminationDates);
    testRequestModel.setContractTypes(contractTypes);
    testRequestModel.setContractTerms(contractTerms);
    testRequestModel.setPaymentTerms(paymentTerms);
    testRequestModel.setContractCurrencies(contractCurrencies);
    testRequestModel.setTables(tables);
    testRequestModel.setDocumentStructure(documentStructure);
    testRequestModel.setParties(parties);

    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(modelVersion, testRequestModel.getModelVersion());
    System.assertEquals(elements, testRequestModel.getElements());
    System.assertEquals(effectiveDates, testRequestModel.getEffectiveDates());
    System.assertEquals(contractAmounts, testRequestModel.getContractAmounts());
    System.assertEquals(terminationDates, testRequestModel.getTerminationDates());
    System.assertEquals(contractTypes, testRequestModel.getContractTypes());
    System.assertEquals(contractTerms, testRequestModel.getContractTerms());
    System.assertEquals(paymentTerms, testRequestModel.getPaymentTerms());
    System.assertEquals(contractCurrencies, testRequestModel.getContractCurrencies());
    System.assertEquals(tables, testRequestModel.getTables());
    System.assertEquals(documentStructure, testRequestModel.getDocumentStructure());
    System.assertEquals(parties, testRequestModel.getParties());
    Test.stopTest();
  }
  static testMethod void testColumnHeadersModel() {
    Test.startTest();
    String cellId = 'cell_id';
    IBMWatsonMapModel location = new IBMWatsonMapModel();
    location.put('location_key', 'location');
    String text = 'text';
    String textNormalized = 'text_normalized';
    Long rowIndexBegin = 10L;
    Long rowIndexEnd = 10L;
    Long columnIndexBegin = 10L;
    Long columnIndexEnd = 10L;

    IBMCompareComplyV1Models.ColumnHeaders testRequestModel = new IBMCompareComplyV1Models.ColumnHeaders();
    testRequestModel.setCellId(cellId);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setRowIndexBegin(rowIndexBegin);
    testRequestModel.setRowIndexEnd(rowIndexEnd);
    testRequestModel.setColumnIndexBegin(columnIndexBegin);
    testRequestModel.setColumnIndexEnd(columnIndexEnd);

    System.assertEquals(cellId, testRequestModel.getCellId());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(rowIndexBegin, testRequestModel.getRowIndexBegin());
    System.assertEquals(rowIndexEnd, testRequestModel.getRowIndexEnd());
    System.assertEquals(columnIndexBegin, testRequestModel.getColumnIndexBegin());
    System.assertEquals(columnIndexEnd, testRequestModel.getColumnIndexEnd());
    Test.stopTest();
  }
  static testMethod void testCompareDocumentsOptionsModel() {
    Test.startTest();
    IBMWatsonFile file1 = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile file2 = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String file1ContentType = 'file1content_type';
    String file2ContentType = 'file2content_type';
    String file1Label = 'file1label';
    String file2Label = 'file2label';
    String model = 'model';

    IBMCompareComplyV1Models.CompareDocumentsOptions testRequestModel = new IBMCompareComplyV1Models.CompareDocumentsOptionsBuilder()
      .file1(file1)
      .file2(file2)
      .file1ContentType(file1ContentType)
      .file2ContentType(file2ContentType)
      .file1Label(file1Label)
      .file2Label(file2Label)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(file1, testRequestModel.file1());
    System.assertEquals(file2, testRequestModel.file2());
    System.assertEquals(file1ContentType, testRequestModel.file1ContentType());
    System.assertEquals(file2ContentType, testRequestModel.file2ContentType());
    System.assertEquals(file1Label, testRequestModel.file1Label());
    System.assertEquals(file2Label, testRequestModel.file2Label());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testCompareReturnModel() {
    Test.startTest();
    String modelId = 'model_id';
    String modelVersion = 'model_version';
    IBMCompareComplyV1Models.Document documentsItem = new IBMCompareComplyV1Models.Document();
    List<IBMCompareComplyV1Models.Document> documents = new List<IBMCompareComplyV1Models.Document> { documentsItem } ;
    IBMCompareComplyV1Models.AlignedElement alignedElementsItem = new IBMCompareComplyV1Models.AlignedElement();
    List<IBMCompareComplyV1Models.AlignedElement> alignedElements = new List<IBMCompareComplyV1Models.AlignedElement> { alignedElementsItem } ;
    IBMCompareComplyV1Models.UnalignedElement unalignedElementsItem = new IBMCompareComplyV1Models.UnalignedElement();
    List<IBMCompareComplyV1Models.UnalignedElement> unalignedElements = new List<IBMCompareComplyV1Models.UnalignedElement> { unalignedElementsItem } ;

    IBMCompareComplyV1Models.CompareReturn testRequestModel = new IBMCompareComplyV1Models.CompareReturn();
    testRequestModel.setModelId(modelId);
    testRequestModel.setModelVersion(modelVersion);
    testRequestModel.setDocuments(documents);
    testRequestModel.setAlignedElements(alignedElements);
    testRequestModel.setUnalignedElements(unalignedElements);

    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(modelVersion, testRequestModel.getModelVersion());
    System.assertEquals(documents, testRequestModel.getDocuments());
    System.assertEquals(alignedElements, testRequestModel.getAlignedElements());
    System.assertEquals(unalignedElements, testRequestModel.getUnalignedElements());
    Test.stopTest();
  }
  static testMethod void testContactModel() {
    Test.startTest();
    String name = 'name';
    String role = 'role';

    IBMCompareComplyV1Models.Contact testRequestModel = new IBMCompareComplyV1Models.Contact();
    testRequestModel.setName(name);
    testRequestModel.setRole(role);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(role, testRequestModel.getRole());
    Test.stopTest();
  }
  static testMethod void testContextsModel() {
    Test.startTest();
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.Contexts testRequestModel = new IBMCompareComplyV1Models.Contexts();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testContractAmtsModel() {
    Test.startTest();
    String confidenceLevel = 'confidence_level';
    String text = 'text';
    String textNormalized = 'text_normalized';
    IBMCompareComplyV1Models.Interpretation interpretation = new IBMCompareComplyV1Models.Interpretation();
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.ContractAmts testRequestModel = new IBMCompareComplyV1Models.ContractAmts();
    testRequestModel.setConfidenceLevel(confidenceLevel);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setInterpretation(interpretation);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setLocation(location);

    System.assertEquals(confidenceLevel, testRequestModel.getConfidenceLevel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(interpretation, testRequestModel.getInterpretation());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testContractCurrenciesModel() {
    Test.startTest();
    String confidenceLevel = 'confidence_level';
    String text = 'text';
    String textNormalized = 'text_normalized';
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.ContractCurrencies testRequestModel = new IBMCompareComplyV1Models.ContractCurrencies();
    testRequestModel.setConfidenceLevel(confidenceLevel);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setLocation(location);

    System.assertEquals(confidenceLevel, testRequestModel.getConfidenceLevel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testContractTermsModel() {
    Test.startTest();
    String confidenceLevel = 'confidence_level';
    String text = 'text';
    String textNormalized = 'text_normalized';
    IBMCompareComplyV1Models.Interpretation interpretation = new IBMCompareComplyV1Models.Interpretation();
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.ContractTerms testRequestModel = new IBMCompareComplyV1Models.ContractTerms();
    testRequestModel.setConfidenceLevel(confidenceLevel);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setInterpretation(interpretation);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setLocation(location);

    System.assertEquals(confidenceLevel, testRequestModel.getConfidenceLevel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(interpretation, testRequestModel.getInterpretation());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testContractTypesModel() {
    Test.startTest();
    String confidenceLevel = 'confidence_level';
    String text = 'text';
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.ContractTypes testRequestModel = new IBMCompareComplyV1Models.ContractTypes();
    testRequestModel.setConfidenceLevel(confidenceLevel);
    testRequestModel.setText(text);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setLocation(location);

    System.assertEquals(confidenceLevel, testRequestModel.getConfidenceLevel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testConvertToHtmlOptionsModel() {
    Test.startTest();
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String fileContentType = 'file_content_type';
    String model = 'model';

    IBMCompareComplyV1Models.ConvertToHtmlOptions testRequestModel = new IBMCompareComplyV1Models.ConvertToHtmlOptionsBuilder()
      .file(file)
      .fileContentType(fileContentType)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(file, testRequestModel.file());
    System.assertEquals(fileContentType, testRequestModel.fileContentType());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testCreateBatchOptionsModel() {
    Test.startTest();
    String function = 'function';
    IBMWatsonFile inputCredentialsFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String inputBucketLocation = 'input_bucket_location';
    String inputBucketName = 'input_bucket_name';
    IBMWatsonFile outputCredentialsFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String outputBucketLocation = 'output_bucket_location';
    String outputBucketName = 'output_bucket_name';
    String model = 'model';

    IBMCompareComplyV1Models.CreateBatchOptions testRequestModel = new IBMCompareComplyV1Models.CreateBatchOptionsBuilder()
      .function(function)
      .inputCredentialsFile(inputCredentialsFile)
      .inputBucketLocation(inputBucketLocation)
      .inputBucketName(inputBucketName)
      .outputCredentialsFile(outputCredentialsFile)
      .outputBucketLocation(outputBucketLocation)
      .outputBucketName(outputBucketName)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(function, testRequestModel.function());
    System.assertEquals(inputCredentialsFile, testRequestModel.inputCredentialsFile());
    System.assertEquals(inputBucketLocation, testRequestModel.inputBucketLocation());
    System.assertEquals(inputBucketName, testRequestModel.inputBucketName());
    System.assertEquals(outputCredentialsFile, testRequestModel.outputCredentialsFile());
    System.assertEquals(outputBucketLocation, testRequestModel.outputBucketLocation());
    System.assertEquals(outputBucketName, testRequestModel.outputBucketName());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testDeleteFeedbackOptionsModel() {
    Test.startTest();
    String feedbackId = 'feedback_id';
    String model = 'model';

    IBMCompareComplyV1Models.DeleteFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.DeleteFeedbackOptionsBuilder()
      .feedbackId(feedbackId)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(feedbackId, testRequestModel.feedbackId());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testDocCountsModel() {
    Test.startTest();
    Long total = 10L;
    Long pending = 10L;
    Long successful = 10L;
    Long failed = 10L;

    IBMCompareComplyV1Models.DocCounts testRequestModel = new IBMCompareComplyV1Models.DocCounts();
    testRequestModel.setTotal(total);
    testRequestModel.setPending(pending);
    testRequestModel.setSuccessful(successful);
    testRequestModel.setFailed(failed);

    System.assertEquals(total, testRequestModel.getTotal());
    System.assertEquals(pending, testRequestModel.getPending());
    System.assertEquals(successful, testRequestModel.getSuccessful());
    System.assertEquals(failed, testRequestModel.getFailed());
    Test.stopTest();
  }
  static testMethod void testDocInfoModel() {
    Test.startTest();
    String html = 'html';
    String title = 'title';
    String hash = 'hash';

    IBMCompareComplyV1Models.DocInfo testRequestModel = new IBMCompareComplyV1Models.DocInfo();
    testRequestModel.setHtml(html);
    testRequestModel.setTitle(title);
    testRequestModel.setHash(hash);

    System.assertEquals(html, testRequestModel.getHtml());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(hash, testRequestModel.getHash());
    Test.stopTest();
  }
  static testMethod void testDocStructureModel() {
    Test.startTest();
    IBMCompareComplyV1Models.SectionTitles sectionTitlesItem = new IBMCompareComplyV1Models.SectionTitles();
    List<IBMCompareComplyV1Models.SectionTitles> sectionTitles = new List<IBMCompareComplyV1Models.SectionTitles> { sectionTitlesItem } ;
    IBMCompareComplyV1Models.LeadingSentence leadingSentencesItem = new IBMCompareComplyV1Models.LeadingSentence();
    List<IBMCompareComplyV1Models.LeadingSentence> leadingSentences = new List<IBMCompareComplyV1Models.LeadingSentence> { leadingSentencesItem } ;
    IBMCompareComplyV1Models.Paragraphs paragraphsItem = new IBMCompareComplyV1Models.Paragraphs();
    List<IBMCompareComplyV1Models.Paragraphs> paragraphs = new List<IBMCompareComplyV1Models.Paragraphs> { paragraphsItem } ;

    IBMCompareComplyV1Models.DocStructure testRequestModel = new IBMCompareComplyV1Models.DocStructure();
    testRequestModel.setSectionTitles(sectionTitles);
    testRequestModel.setLeadingSentences(leadingSentences);
    testRequestModel.setParagraphs(paragraphs);

    System.assertEquals(sectionTitles, testRequestModel.getSectionTitles());
    System.assertEquals(leadingSentences, testRequestModel.getLeadingSentences());
    System.assertEquals(paragraphs, testRequestModel.getParagraphs());
    Test.stopTest();
  }
  static testMethod void testDocumentModel() {
    Test.startTest();
    String title = 'title';
    String html = 'html';
    String hash = 'hash';
    String label = 'label';

    IBMCompareComplyV1Models.Document testRequestModel = new IBMCompareComplyV1Models.Document();
    testRequestModel.setTitle(title);
    testRequestModel.setHtml(html);
    testRequestModel.setHash(hash);
    testRequestModel.setLabel(label);

    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(html, testRequestModel.getHtml());
    System.assertEquals(hash, testRequestModel.getHash());
    System.assertEquals(label, testRequestModel.getLabel());
    Test.stopTest();
  }
  static testMethod void testEffectiveDatesModel() {
    Test.startTest();
    String confidenceLevel = 'confidence_level';
    String text = 'text';
    String textNormalized = 'text_normalized';
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.EffectiveDates testRequestModel = new IBMCompareComplyV1Models.EffectiveDates();
    testRequestModel.setConfidenceLevel(confidenceLevel);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setLocation(location);

    System.assertEquals(confidenceLevel, testRequestModel.getConfidenceLevel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testElementModel() {
    Test.startTest();
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;
    IBMCompareComplyV1Models.Attribute attributesItem = new IBMCompareComplyV1Models.Attribute();
    List<IBMCompareComplyV1Models.Attribute> attributes = new List<IBMCompareComplyV1Models.Attribute> { attributesItem } ;

    IBMCompareComplyV1Models.Element testRequestModel = new IBMCompareComplyV1Models.Element();
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setTypes(types);
    testRequestModel.setCategories(categories);
    testRequestModel.setAttributes(attributes);

    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(types, testRequestModel.getTypes());
    System.assertEquals(categories, testRequestModel.getCategories());
    System.assertEquals(attributes, testRequestModel.getAttributes());
    Test.stopTest();
  }
  static testMethod void testElementLocationsModel() {
    Test.startTest();
    Long xBegin = 10L;
    Long xEnd = 10L;

    IBMCompareComplyV1Models.ElementLocations testRequestModel = new IBMCompareComplyV1Models.ElementLocations();
    testRequestModel.setXBegin(xBegin);
    testRequestModel.setXEnd(xEnd);

    System.assertEquals(xBegin, testRequestModel.getXBegin());
    System.assertEquals(xEnd, testRequestModel.getXEnd());
    Test.stopTest();
  }
  static testMethod void testElementPairModel() {
    Test.startTest();
    String documentLabel = 'document_label';
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    IBMCompareComplyV1Models.TypeLabelComparison typesItem = new IBMCompareComplyV1Models.TypeLabelComparison();
    List<IBMCompareComplyV1Models.TypeLabelComparison> types = new List<IBMCompareComplyV1Models.TypeLabelComparison> { typesItem } ;
    IBMCompareComplyV1Models.CategoryComparison categoriesItem = new IBMCompareComplyV1Models.CategoryComparison();
    List<IBMCompareComplyV1Models.CategoryComparison> categories = new List<IBMCompareComplyV1Models.CategoryComparison> { categoriesItem } ;
    IBMCompareComplyV1Models.Attribute attributesItem = new IBMCompareComplyV1Models.Attribute();
    List<IBMCompareComplyV1Models.Attribute> attributes = new List<IBMCompareComplyV1Models.Attribute> { attributesItem } ;

    IBMCompareComplyV1Models.ElementPair testRequestModel = new IBMCompareComplyV1Models.ElementPair();
    testRequestModel.setDocumentLabel(documentLabel);
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);
    testRequestModel.setTypes(types);
    testRequestModel.setCategories(categories);
    testRequestModel.setAttributes(attributes);

    System.assertEquals(documentLabel, testRequestModel.getDocumentLabel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(types, testRequestModel.getTypes());
    System.assertEquals(categories, testRequestModel.getCategories());
    System.assertEquals(attributes, testRequestModel.getAttributes());
    Test.stopTest();
  }
  static testMethod void testExtractTablesOptionsModel() {
    Test.startTest();
    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String fileContentType = 'file_content_type';
    String model = 'model';

    IBMCompareComplyV1Models.ExtractTablesOptions testRequestModel = new IBMCompareComplyV1Models.ExtractTablesOptionsBuilder()
      .file(file)
      .fileContentType(fileContentType)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(file, testRequestModel.file());
    System.assertEquals(fileContentType, testRequestModel.fileContentType());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testFeedbackDataInputModel() {
    Test.startTest();
    String feedbackType = 'feedback_type';
    IBMCompareComplyV1Models.ShortDoc document = new IBMCompareComplyV1Models.ShortDocBuilder()
      .build();
    String modelId = 'model_id';
    String modelVersion = 'model_version';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabels = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabels = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();

    IBMCompareComplyV1Models.FeedbackDataInput testRequestModel = new IBMCompareComplyV1Models.FeedbackDataInputBuilder()
      .feedbackType(feedbackType)
      .document(document)
      .modelId(modelId)
      .modelVersion(modelVersion)
      .location(location)
      .text(text)
      .originalLabels(originalLabels)
      .updatedLabels(updatedLabels)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(feedbackType, testRequestModel.getFeedbackType());
    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(modelVersion, testRequestModel.getModelVersion());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(originalLabels, testRequestModel.getOriginalLabels());
    System.assertEquals(updatedLabels, testRequestModel.getUpdatedLabels());
    Test.stopTest();
  }
  static testMethod void testFeedbackDataOutputModel() {
    Test.startTest();
    String feedbackType = 'feedback_type';
    IBMCompareComplyV1Models.ShortDoc document = new IBMCompareComplyV1Models.ShortDocBuilder()
      .build();
    String modelId = 'model_id';
    String modelVersion = 'model_version';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    IBMCompareComplyV1Models.OriginalLabelsOut originalLabels = new IBMCompareComplyV1Models.OriginalLabelsOut();
    IBMCompareComplyV1Models.UpdatedLabelsOut updatedLabels = new IBMCompareComplyV1Models.UpdatedLabelsOut();
    IBMCompareComplyV1Models.Pagination pagination = new IBMCompareComplyV1Models.Pagination();

    IBMCompareComplyV1Models.FeedbackDataOutput testRequestModel = new IBMCompareComplyV1Models.FeedbackDataOutput();
    testRequestModel.setFeedbackType(feedbackType);
    testRequestModel.setDocument(document);
    testRequestModel.setModelId(modelId);
    testRequestModel.setModelVersion(modelVersion);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setOriginalLabels(originalLabels);
    testRequestModel.setUpdatedLabels(updatedLabels);
    testRequestModel.setPagination(pagination);

    System.assertEquals(feedbackType, testRequestModel.getFeedbackType());
    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(modelVersion, testRequestModel.getModelVersion());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(originalLabels, testRequestModel.getOriginalLabels());
    System.assertEquals(updatedLabels, testRequestModel.getUpdatedLabels());
    System.assertEquals(pagination, testRequestModel.getPagination());
    Test.stopTest();
  }
  static testMethod void testFeedbackListModel() {
    Test.startTest();
    IBMCompareComplyV1Models.GetFeedback feedbackItem = new IBMCompareComplyV1Models.GetFeedback();
    List<IBMCompareComplyV1Models.GetFeedback> feedback = new List<IBMCompareComplyV1Models.GetFeedback> { feedbackItem } ;

    IBMCompareComplyV1Models.FeedbackList testRequestModel = new IBMCompareComplyV1Models.FeedbackList();
    testRequestModel.setFeedback(feedback);

    System.assertEquals(feedback, testRequestModel.getFeedback());
    Test.stopTest();
  }
  static testMethod void testFeedbackReturnModel() {
    Test.startTest();
    String feedbackId = 'feedback_id';
    String userId = 'user_id';
    String comment = 'comment';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    IBMCompareComplyV1Models.FeedbackDataOutput feedbackData = new IBMCompareComplyV1Models.FeedbackDataOutput();

    IBMCompareComplyV1Models.FeedbackReturn testRequestModel = new IBMCompareComplyV1Models.FeedbackReturn();
    testRequestModel.setFeedbackId(feedbackId);
    testRequestModel.setUserId(userId);
    testRequestModel.setComment(comment);
    testRequestModel.setCreated(created);
    testRequestModel.setFeedbackData(feedbackData);

    System.assertEquals(feedbackId, testRequestModel.getFeedbackId());
    System.assertEquals(userId, testRequestModel.getUserId());
    System.assertEquals(comment, testRequestModel.getComment());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(feedbackData, testRequestModel.getFeedbackData());
    Test.stopTest();
  }
  static testMethod void testGetBatchOptionsModel() {
    Test.startTest();
    String batchId = 'batch_id';

    IBMCompareComplyV1Models.GetBatchOptions testRequestModel = new IBMCompareComplyV1Models.GetBatchOptionsBuilder()
      .batchId(batchId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(batchId, testRequestModel.batchId());
    Test.stopTest();
  }
  static testMethod void testGetFeedbackModel() {
    Test.startTest();
    String feedbackId = 'feedback_id';
    Datetime created = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String comment = 'comment';
    IBMCompareComplyV1Models.FeedbackDataOutput feedbackData = new IBMCompareComplyV1Models.FeedbackDataOutput();

    IBMCompareComplyV1Models.GetFeedback testRequestModel = new IBMCompareComplyV1Models.GetFeedback();
    testRequestModel.setFeedbackId(feedbackId);
    testRequestModel.setCreated(created);
    testRequestModel.setComment(comment);
    testRequestModel.setFeedbackData(feedbackData);

    System.assertEquals(feedbackId, testRequestModel.getFeedbackId());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(comment, testRequestModel.getComment());
    System.assertEquals(feedbackData, testRequestModel.getFeedbackData());
    Test.stopTest();
  }
  static testMethod void testGetFeedbackOptionsModel() {
    Test.startTest();
    String feedbackId = 'feedback_id';
    String model = 'model';

    IBMCompareComplyV1Models.GetFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.GetFeedbackOptionsBuilder()
      .feedbackId(feedbackId)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(feedbackId, testRequestModel.feedbackId());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testHTMLReturnModel() {
    Test.startTest();
    String numPages = 'num_pages';
    String author = 'author';
    String publicationDate = 'publication_date';
    String title = 'title';
    String html = 'html';

    IBMCompareComplyV1Models.HTMLReturn testRequestModel = new IBMCompareComplyV1Models.HTMLReturn();
    testRequestModel.setNumPages(numPages);
    testRequestModel.setAuthor(author);
    testRequestModel.setPublicationDate(publicationDate);
    testRequestModel.setTitle(title);
    testRequestModel.setHtml(html);

    System.assertEquals(numPages, testRequestModel.getNumPages());
    System.assertEquals(author, testRequestModel.getAuthor());
    System.assertEquals(publicationDate, testRequestModel.getPublicationDate());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(html, testRequestModel.getHtml());
    Test.stopTest();
  }
  static testMethod void testInterpretationModel() {
    Test.startTest();
    String value = 'value';
    Double numericValue = 0.5;
    String unit = 'unit';

    IBMCompareComplyV1Models.Interpretation testRequestModel = new IBMCompareComplyV1Models.Interpretation();
    testRequestModel.setValue(value);
    testRequestModel.setNumericValue(numericValue);
    testRequestModel.setUnit(unit);

    System.assertEquals(value, testRequestModel.getValue());
    System.assertEquals(numericValue, testRequestModel.getNumericValue());
    System.assertEquals(unit, testRequestModel.getUnit());
    Test.stopTest();
  }
  static testMethod void testKeyModel() {
    Test.startTest();
    String cellId = 'cell_id';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';

    IBMCompareComplyV1Models.Key testRequestModel = new IBMCompareComplyV1Models.Key();
    testRequestModel.setCellId(cellId);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);

    System.assertEquals(cellId, testRequestModel.getCellId());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testKeyValuePairModel() {
    Test.startTest();
    IBMCompareComplyV1Models.Key key = new IBMCompareComplyV1Models.Key();
    IBMCompareComplyV1Models.Value valueItem = new IBMCompareComplyV1Models.Value();
    List<IBMCompareComplyV1Models.Value> value = new List<IBMCompareComplyV1Models.Value> { valueItem } ;

    IBMCompareComplyV1Models.KeyValuePair testRequestModel = new IBMCompareComplyV1Models.KeyValuePair();
    testRequestModel.setKey(key);
    testRequestModel.setValue(value);

    System.assertEquals(key, testRequestModel.getKey());
    System.assertEquals(value, testRequestModel.getValue());
    Test.stopTest();
  }
  static testMethod void testLabelModel() {
    Test.startTest();
    String nature = 'nature';
    String party = 'party';

    IBMCompareComplyV1Models.Label testRequestModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature(nature)
      .party(party)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(nature, testRequestModel.getNature());
    System.assertEquals(party, testRequestModel.getParty());
    Test.stopTest();
  }
  static testMethod void testLeadingSentenceModel() {
    Test.startTest();
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    IBMCompareComplyV1Models.ElementLocations elementLocationsItem = new IBMCompareComplyV1Models.ElementLocations();
    List<IBMCompareComplyV1Models.ElementLocations> elementLocations = new List<IBMCompareComplyV1Models.ElementLocations> { elementLocationsItem } ;

    IBMCompareComplyV1Models.LeadingSentence testRequestModel = new IBMCompareComplyV1Models.LeadingSentence();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);
    testRequestModel.setElementLocations(elementLocations);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(elementLocations, testRequestModel.getElementLocations());
    Test.stopTest();
  }
  static testMethod void testListBatchesOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.ListBatchesOptions testRequestModel = new IBMCompareComplyV1Models.ListBatchesOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListFeedbackOptionsModel() {
    Test.startTest();
    String feedbackType = 'feedback_type';
    Datetime before = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime after = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String documentTitle = 'document_title';
    String modelId = 'model_id';
    String modelVersion = 'model_version';
    String categoryRemoved = 'category_removed';
    String categoryAdded = 'category_added';
    String categoryNotChanged = 'category_not_changed';
    String typeRemoved = 'type_removed';
    String typeAdded = 'type_added';
    String typeNotChanged = 'type_not_changed';
    Long pageLimit = 10L;
    String cursor = 'cursor';
    String xSort = 'x_sort';
    Boolean includeTotal = true;

    IBMCompareComplyV1Models.ListFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.ListFeedbackOptionsBuilder()
      .feedbackType(feedbackType)
      .before(before)
      .after(after)
      .documentTitle(documentTitle)
      .modelId(modelId)
      .modelVersion(modelVersion)
      .categoryRemoved(categoryRemoved)
      .categoryAdded(categoryAdded)
      .categoryNotChanged(categoryNotChanged)
      .typeRemoved(typeRemoved)
      .typeAdded(typeAdded)
      .typeNotChanged(typeNotChanged)
      .pageLimit(pageLimit)
      .cursor(cursor)
      .xSort(xSort)
      .includeTotal(includeTotal)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(feedbackType, testRequestModel.feedbackType());
    System.assertEquals(before, testRequestModel.before());
    System.assertEquals(after, testRequestModel.after());
    System.assertEquals(documentTitle, testRequestModel.documentTitle());
    System.assertEquals(modelId, testRequestModel.modelId());
    System.assertEquals(modelVersion, testRequestModel.modelVersion());
    System.assertEquals(categoryRemoved, testRequestModel.categoryRemoved());
    System.assertEquals(categoryAdded, testRequestModel.categoryAdded());
    System.assertEquals(categoryNotChanged, testRequestModel.categoryNotChanged());
    System.assertEquals(typeRemoved, testRequestModel.typeRemoved());
    System.assertEquals(typeAdded, testRequestModel.typeAdded());
    System.assertEquals(typeNotChanged, testRequestModel.typeNotChanged());
    System.assertEquals(pageLimit, testRequestModel.pageLimit());
    System.assertEquals(cursor, testRequestModel.cursor());
    System.assertEquals(xSort, testRequestModel.xSort());
    System.assertEquals(includeTotal, testRequestModel.includeTotal());
    Test.stopTest();
  }
  static testMethod void testLocationModel() {
    Test.startTest();
    Long xBegin = 10L;
    Long xEnd = 10L;

    IBMCompareComplyV1Models.Location testRequestModel = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(xBegin, testRequestModel.getXBegin());
    System.assertEquals(xEnd, testRequestModel.getXEnd());
    Test.stopTest();
  }
  static testMethod void testMentionModel() {
    Test.startTest();
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.Mention testRequestModel = new IBMCompareComplyV1Models.Mention();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testOriginalLabelsInModel() {
    Test.startTest();
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;

    IBMCompareComplyV1Models.OriginalLabelsIn testRequestModel = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(types, testRequestModel.getTypes());
    System.assertEquals(categories, testRequestModel.getCategories());
    Test.stopTest();
  }
  static testMethod void testOriginalLabelsOutModel() {
    Test.startTest();
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;
    String modification = 'modification';

    IBMCompareComplyV1Models.OriginalLabelsOut testRequestModel = new IBMCompareComplyV1Models.OriginalLabelsOut();
    testRequestModel.setTypes(types);
    testRequestModel.setCategories(categories);
    testRequestModel.setModification(modification);

    System.assertEquals(types, testRequestModel.getTypes());
    System.assertEquals(categories, testRequestModel.getCategories());
    System.assertEquals(modification, testRequestModel.getModification());
    Test.stopTest();
  }
  static testMethod void testPaginationModel() {
    Test.startTest();
    String refreshCursor = 'refresh_cursor';
    String nextCursor = 'next_cursor';
    String refreshUrl = 'refresh_url';
    String nextUrl = 'next_url';
    Long total = 10L;

    IBMCompareComplyV1Models.Pagination testRequestModel = new IBMCompareComplyV1Models.Pagination();
    testRequestModel.setRefreshCursor(refreshCursor);
    testRequestModel.setNextCursor(nextCursor);
    testRequestModel.setRefreshUrl(refreshUrl);
    testRequestModel.setNextUrl(nextUrl);
    testRequestModel.setTotal(total);

    System.assertEquals(refreshCursor, testRequestModel.getRefreshCursor());
    System.assertEquals(nextCursor, testRequestModel.getNextCursor());
    System.assertEquals(refreshUrl, testRequestModel.getRefreshUrl());
    System.assertEquals(nextUrl, testRequestModel.getNextUrl());
    System.assertEquals(total, testRequestModel.getTotal());
    Test.stopTest();
  }
  static testMethod void testParagraphsModel() {
    Test.startTest();
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.Paragraphs testRequestModel = new IBMCompareComplyV1Models.Paragraphs();
    testRequestModel.setLocation(location);

    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testPartiesModel() {
    Test.startTest();
    String party = 'party';
    String role = 'role';
    String importance = 'importance';
    IBMCompareComplyV1Models.Address addressesItem = new IBMCompareComplyV1Models.Address();
    List<IBMCompareComplyV1Models.Address> addresses = new List<IBMCompareComplyV1Models.Address> { addressesItem } ;
    IBMCompareComplyV1Models.Contact contactsItem = new IBMCompareComplyV1Models.Contact();
    List<IBMCompareComplyV1Models.Contact> contacts = new List<IBMCompareComplyV1Models.Contact> { contactsItem } ;
    IBMCompareComplyV1Models.Mention mentionsItem = new IBMCompareComplyV1Models.Mention();
    List<IBMCompareComplyV1Models.Mention> mentions = new List<IBMCompareComplyV1Models.Mention> { mentionsItem } ;

    IBMCompareComplyV1Models.Parties testRequestModel = new IBMCompareComplyV1Models.Parties();
    testRequestModel.setParty(party);
    testRequestModel.setRole(role);
    testRequestModel.setImportance(importance);
    testRequestModel.setAddresses(addresses);
    testRequestModel.setContacts(contacts);
    testRequestModel.setMentions(mentions);

    System.assertEquals(party, testRequestModel.getParty());
    System.assertEquals(role, testRequestModel.getRole());
    System.assertEquals(importance, testRequestModel.getImportance());
    System.assertEquals(addresses, testRequestModel.getAddresses());
    System.assertEquals(contacts, testRequestModel.getContacts());
    System.assertEquals(mentions, testRequestModel.getMentions());
    Test.stopTest();
  }
  static testMethod void testPaymentTermsModel() {
    Test.startTest();
    String confidenceLevel = 'confidence_level';
    String text = 'text';
    String textNormalized = 'text_normalized';
    IBMCompareComplyV1Models.Interpretation interpretation = new IBMCompareComplyV1Models.Interpretation();
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.PaymentTerms testRequestModel = new IBMCompareComplyV1Models.PaymentTerms();
    testRequestModel.setConfidenceLevel(confidenceLevel);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setInterpretation(interpretation);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setLocation(location);

    System.assertEquals(confidenceLevel, testRequestModel.getConfidenceLevel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(interpretation, testRequestModel.getInterpretation());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testRowHeadersModel() {
    Test.startTest();
    String cellId = 'cell_id';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    String textNormalized = 'text_normalized';
    Long rowIndexBegin = 10L;
    Long rowIndexEnd = 10L;
    Long columnIndexBegin = 10L;
    Long columnIndexEnd = 10L;

    IBMCompareComplyV1Models.RowHeaders testRequestModel = new IBMCompareComplyV1Models.RowHeaders();
    testRequestModel.setCellId(cellId);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setRowIndexBegin(rowIndexBegin);
    testRequestModel.setRowIndexEnd(rowIndexEnd);
    testRequestModel.setColumnIndexBegin(columnIndexBegin);
    testRequestModel.setColumnIndexEnd(columnIndexEnd);

    System.assertEquals(cellId, testRequestModel.getCellId());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(rowIndexBegin, testRequestModel.getRowIndexBegin());
    System.assertEquals(rowIndexEnd, testRequestModel.getRowIndexEnd());
    System.assertEquals(columnIndexBegin, testRequestModel.getColumnIndexBegin());
    System.assertEquals(columnIndexEnd, testRequestModel.getColumnIndexEnd());
    Test.stopTest();
  }
  static testMethod void testSectionTitleModel() {
    Test.startTest();
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.SectionTitle testRequestModel = new IBMCompareComplyV1Models.SectionTitle();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testSectionTitlesModel() {
    Test.startTest();
    String text = 'text';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    Long level = 10L;
    IBMCompareComplyV1Models.ElementLocations elementLocationsItem = new IBMCompareComplyV1Models.ElementLocations();
    List<IBMCompareComplyV1Models.ElementLocations> elementLocations = new List<IBMCompareComplyV1Models.ElementLocations> { elementLocationsItem } ;

    IBMCompareComplyV1Models.SectionTitles testRequestModel = new IBMCompareComplyV1Models.SectionTitles();
    testRequestModel.setText(text);
    testRequestModel.setLocation(location);
    testRequestModel.setLevel(level);
    testRequestModel.setElementLocations(elementLocations);

    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(level, testRequestModel.getLevel());
    System.assertEquals(elementLocations, testRequestModel.getElementLocations());
    Test.stopTest();
  }
  static testMethod void testShortDocModel() {
    Test.startTest();
    String title = 'title';
    String hash = 'hash';

    IBMCompareComplyV1Models.ShortDoc testRequestModel = new IBMCompareComplyV1Models.ShortDocBuilder()
      .title(title)
      .hash(hash)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(hash, testRequestModel.getHash());
    Test.stopTest();
  }
  static testMethod void testTableHeadersModel() {
    Test.startTest();
    String cellId = 'cell_id';
    IBMWatsonMapModel location = new IBMWatsonMapModel();
    location.put('location_key', 'location');
    String text = 'text';
    Long rowIndexBegin = 10L;
    Long rowIndexEnd = 10L;
    Long columnIndexBegin = 10L;
    Long columnIndexEnd = 10L;

    IBMCompareComplyV1Models.TableHeaders testRequestModel = new IBMCompareComplyV1Models.TableHeaders();
    testRequestModel.setCellId(cellId);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setRowIndexBegin(rowIndexBegin);
    testRequestModel.setRowIndexEnd(rowIndexEnd);
    testRequestModel.setColumnIndexBegin(columnIndexBegin);
    testRequestModel.setColumnIndexEnd(columnIndexEnd);

    System.assertEquals(cellId, testRequestModel.getCellId());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(rowIndexBegin, testRequestModel.getRowIndexBegin());
    System.assertEquals(rowIndexEnd, testRequestModel.getRowIndexEnd());
    System.assertEquals(columnIndexBegin, testRequestModel.getColumnIndexBegin());
    System.assertEquals(columnIndexEnd, testRequestModel.getColumnIndexEnd());
    Test.stopTest();
  }
  static testMethod void testTableReturnModel() {
    Test.startTest();
    IBMCompareComplyV1Models.DocInfo document = new IBMCompareComplyV1Models.DocInfo();
    String modelId = 'model_id';
    String modelVersion = 'model_version';
    IBMCompareComplyV1Models.Tables tablesItem = new IBMCompareComplyV1Models.Tables();
    List<IBMCompareComplyV1Models.Tables> tables = new List<IBMCompareComplyV1Models.Tables> { tablesItem } ;

    IBMCompareComplyV1Models.TableReturn testRequestModel = new IBMCompareComplyV1Models.TableReturn();
    testRequestModel.setDocument(document);
    testRequestModel.setModelId(modelId);
    testRequestModel.setModelVersion(modelVersion);
    testRequestModel.setTables(tables);

    System.assertEquals(document, testRequestModel.getDocument());
    System.assertEquals(modelId, testRequestModel.getModelId());
    System.assertEquals(modelVersion, testRequestModel.getModelVersion());
    System.assertEquals(tables, testRequestModel.getTables());
    Test.stopTest();
  }
  static testMethod void testTableTitleModel() {
    Test.startTest();
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';

    IBMCompareComplyV1Models.TableTitle testRequestModel = new IBMCompareComplyV1Models.TableTitle();
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);

    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }
  static testMethod void testTablesModel() {
    Test.startTest();
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    IBMCompareComplyV1Models.SectionTitle sectionTitle = new IBMCompareComplyV1Models.SectionTitle();
    IBMCompareComplyV1Models.TableTitle title = new IBMCompareComplyV1Models.TableTitle();
    IBMCompareComplyV1Models.TableHeaders tableHeadersItem = new IBMCompareComplyV1Models.TableHeaders();
    List<IBMCompareComplyV1Models.TableHeaders> tableHeaders = new List<IBMCompareComplyV1Models.TableHeaders> { tableHeadersItem } ;
    IBMCompareComplyV1Models.RowHeaders rowHeadersItem = new IBMCompareComplyV1Models.RowHeaders();
    List<IBMCompareComplyV1Models.RowHeaders> rowHeaders = new List<IBMCompareComplyV1Models.RowHeaders> { rowHeadersItem } ;
    IBMCompareComplyV1Models.ColumnHeaders columnHeadersItem = new IBMCompareComplyV1Models.ColumnHeaders();
    List<IBMCompareComplyV1Models.ColumnHeaders> columnHeaders = new List<IBMCompareComplyV1Models.ColumnHeaders> { columnHeadersItem } ;
    IBMCompareComplyV1Models.BodyCells bodyCellsItem = new IBMCompareComplyV1Models.BodyCells();
    List<IBMCompareComplyV1Models.BodyCells> bodyCells = new List<IBMCompareComplyV1Models.BodyCells> { bodyCellsItem } ;
    IBMCompareComplyV1Models.Contexts contextsItem = new IBMCompareComplyV1Models.Contexts();
    List<IBMCompareComplyV1Models.Contexts> contexts = new List<IBMCompareComplyV1Models.Contexts> { contextsItem } ;
    IBMCompareComplyV1Models.KeyValuePair keyValuePairsItem = new IBMCompareComplyV1Models.KeyValuePair();
    List<IBMCompareComplyV1Models.KeyValuePair> keyValuePairs = new List<IBMCompareComplyV1Models.KeyValuePair> { keyValuePairsItem } ;

    IBMCompareComplyV1Models.Tables testRequestModel = new IBMCompareComplyV1Models.Tables();
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setSectionTitle(sectionTitle);
    testRequestModel.setTitle(title);
    testRequestModel.setTableHeaders(tableHeaders);
    testRequestModel.setRowHeaders(rowHeaders);
    testRequestModel.setColumnHeaders(columnHeaders);
    testRequestModel.setBodyCells(bodyCells);
    testRequestModel.setContexts(contexts);
    testRequestModel.setKeyValuePairs(keyValuePairs);

    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(sectionTitle, testRequestModel.getSectionTitle());
    System.assertEquals(title, testRequestModel.getTitle());
    System.assertEquals(tableHeaders, testRequestModel.getTableHeaders());
    System.assertEquals(rowHeaders, testRequestModel.getRowHeaders());
    System.assertEquals(columnHeaders, testRequestModel.getColumnHeaders());
    System.assertEquals(bodyCells, testRequestModel.getBodyCells());
    System.assertEquals(contexts, testRequestModel.getContexts());
    System.assertEquals(keyValuePairs, testRequestModel.getKeyValuePairs());
    Test.stopTest();
  }
  static testMethod void testTerminationDatesModel() {
    Test.startTest();
    String confidenceLevel = 'confidence_level';
    String text = 'text';
    String textNormalized = 'text_normalized';
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();

    IBMCompareComplyV1Models.TerminationDates testRequestModel = new IBMCompareComplyV1Models.TerminationDates();
    testRequestModel.setConfidenceLevel(confidenceLevel);
    testRequestModel.setText(text);
    testRequestModel.setTextNormalized(textNormalized);
    testRequestModel.setProvenanceIds(provenanceIds);
    testRequestModel.setLocation(location);

    System.assertEquals(confidenceLevel, testRequestModel.getConfidenceLevel());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(textNormalized, testRequestModel.getTextNormalized());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    System.assertEquals(location, testRequestModel.getLocation());
    Test.stopTest();
  }
  static testMethod void testTypeLabelModel() {
    Test.startTest();
    String nature = 'nature';
    String party = 'party';
    IBMCompareComplyV1Models.Label label = new IBMCompareComplyV1Models.LabelBuilder()
      .nature(nature)
      .party(party)
      .build();
    List<String> provenanceIds = new List<String> { 'provenance_ids' } ;

    IBMCompareComplyV1Models.TypeLabel testRequestModel = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(label)
      .provenanceIds(provenanceIds)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(label, testRequestModel.getLabel());
    System.assertEquals(provenanceIds, testRequestModel.getProvenanceIds());
    Test.stopTest();
  }
  static testMethod void testTypeLabelComparisonModel() {
    Test.startTest();
    String nature = 'nature';
    String party = 'party';
    IBMCompareComplyV1Models.Label label = new IBMCompareComplyV1Models.LabelBuilder()
      .nature(nature)
      .party(party)
      .build();

    IBMCompareComplyV1Models.TypeLabelComparison testRequestModel = new IBMCompareComplyV1Models.TypeLabelComparison();
    testRequestModel.setLabel(label);

    System.assertEquals(label, testRequestModel.getLabel());
    Test.stopTest();
  }
  static testMethod void testUnalignedElementModel() {
    Test.startTest();
    String documentLabel = 'document_label';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    IBMCompareComplyV1Models.TypeLabelComparison typesItem = new IBMCompareComplyV1Models.TypeLabelComparison();
    List<IBMCompareComplyV1Models.TypeLabelComparison> types = new List<IBMCompareComplyV1Models.TypeLabelComparison> { typesItem } ;
    IBMCompareComplyV1Models.CategoryComparison categoriesItem = new IBMCompareComplyV1Models.CategoryComparison();
    List<IBMCompareComplyV1Models.CategoryComparison> categories = new List<IBMCompareComplyV1Models.CategoryComparison> { categoriesItem } ;
    IBMCompareComplyV1Models.Attribute attributesItem = new IBMCompareComplyV1Models.Attribute();
    List<IBMCompareComplyV1Models.Attribute> attributes = new List<IBMCompareComplyV1Models.Attribute> { attributesItem } ;

    IBMCompareComplyV1Models.UnalignedElement testRequestModel = new IBMCompareComplyV1Models.UnalignedElement();
    testRequestModel.setDocumentLabel(documentLabel);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);
    testRequestModel.setTypes(types);
    testRequestModel.setCategories(categories);
    testRequestModel.setAttributes(attributes);

    System.assertEquals(documentLabel, testRequestModel.getDocumentLabel());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    System.assertEquals(types, testRequestModel.getTypes());
    System.assertEquals(categories, testRequestModel.getCategories());
    System.assertEquals(attributes, testRequestModel.getAttributes());
    Test.stopTest();
  }
  static testMethod void testUpdateBatchOptionsModel() {
    Test.startTest();
    String batchId = 'batch_id';
    String action = 'action';
    String model = 'model';

    IBMCompareComplyV1Models.UpdateBatchOptions testRequestModel = new IBMCompareComplyV1Models.UpdateBatchOptionsBuilder()
      .batchId(batchId)
      .action(action)
      .model(model)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(batchId, testRequestModel.batchId());
    System.assertEquals(action, testRequestModel.action());
    System.assertEquals(model, testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testUpdatedLabelsInModel() {
    Test.startTest();
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;

    IBMCompareComplyV1Models.UpdatedLabelsIn testRequestModel = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(types, testRequestModel.getTypes());
    System.assertEquals(categories, testRequestModel.getCategories());
    Test.stopTest();
  }
  static testMethod void testUpdatedLabelsOutModel() {
    Test.startTest();
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;
    String modification = 'modification';

    IBMCompareComplyV1Models.UpdatedLabelsOut testRequestModel = new IBMCompareComplyV1Models.UpdatedLabelsOut();
    testRequestModel.setTypes(types);
    testRequestModel.setCategories(categories);
    testRequestModel.setModification(modification);

    System.assertEquals(types, testRequestModel.getTypes());
    System.assertEquals(categories, testRequestModel.getCategories());
    System.assertEquals(modification, testRequestModel.getModification());
    Test.stopTest();
  }
  static testMethod void testValueModel() {
    Test.startTest();
    String cellId = 'cell_id';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';

    IBMCompareComplyV1Models.Value testRequestModel = new IBMCompareComplyV1Models.Value();
    testRequestModel.setCellId(cellId);
    testRequestModel.setLocation(location);
    testRequestModel.setText(text);

    System.assertEquals(cellId, testRequestModel.getCellId());
    System.assertEquals(location, testRequestModel.getLocation());
    System.assertEquals(text, testRequestModel.getText());
    Test.stopTest();
  }


  static testMethod void testConvertToHtml() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1HtmlReturn();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String fileContentType = 'file_content_type';
    String model = 'model';

    IBMCompareComplyV1Models.ConvertToHtmlOptions options = new IBMCompareComplyV1Models.ConvertToHtmlOptionsBuilder()
      .file(file)
      .fileContentType(fileContentType)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.HTMLReturn response = service.convertToHtml(options);

    System.assertEquals(
      'num_pages',
      response.getNumPages()
    );
    System.assertEquals(
      'author',
      response.getAuthor()
    );
    System.assertEquals(
      'publication_date',
      response.getPublicationDate()
    );
    System.assertEquals(
      'title',
      response.getTitle()
    );
    System.assertEquals(
      'html',
      response.getHtml()
    );

    Test.stopTest();
  }
  static testMethod void testClassifyElements() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1ClassifyReturn();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String fileContentType = 'file_content_type';
    String model = 'model';

    IBMCompareComplyV1Models.ClassifyElementsOptions options = new IBMCompareComplyV1Models.ClassifyElementsOptionsBuilder()
      .file(file)
      .fileContentType(fileContentType)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.ClassifyReturn response = service.classifyElements(options);

    System.assertEquals(
      'title',
      response.getDocument().getTitle()
    );
    System.assertEquals(
      'html',
      response.getDocument().getHtml()
    );
    System.assertEquals(
      'hash',
      response.getDocument().getHash()
    );
    System.assertEquals(
      'label',
      response.getDocument().getLabel()
    );
    System.assertEquals(
      'model_id',
      response.getModelId()
    );
    System.assertEquals(
      'model_version',
      response.getModelVersion()
    );
    System.assertEquals(
      10L,
      response.getElements().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getElements().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getElements().get(0).getText()
    );
    System.assertEquals(
      'nature',
      response.getElements().get(0).getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getElements().get(0).getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'provenance_ids',
      response.getElements().get(0).getTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'label',
      response.getElements().get(0).getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'provenance_ids',
      response.getElements().get(0).getCategories().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'type',
      response.getElements().get(0).getAttributes().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getElements().get(0).getAttributes().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getElements().get(0).getAttributes().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getElements().get(0).getAttributes().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'confidence_level',
      response.getEffectiveDates().get(0).getConfidenceLevel()
    );
    System.assertEquals(
      'text',
      response.getEffectiveDates().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getEffectiveDates().get(0).getTextNormalized()
    );
    System.assertEquals(
      'provenance_ids',
      response.getEffectiveDates().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      10L,
      response.getEffectiveDates().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getEffectiveDates().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'confidence_level',
      response.getContractAmounts().get(0).getConfidenceLevel()
    );
    System.assertEquals(
      'text',
      response.getContractAmounts().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getContractAmounts().get(0).getTextNormalized()
    );
    System.assertEquals(
      'value',
      response.getContractAmounts().get(0).getInterpretation().getValue()
    );
    System.assertEquals(
      0.5,
      response.getContractAmounts().get(0).getInterpretation().getNumericValue()
    );
    System.assertEquals(
      'unit',
      response.getContractAmounts().get(0).getInterpretation().getUnit()
    );
    System.assertEquals(
      'provenance_ids',
      response.getContractAmounts().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      10L,
      response.getContractAmounts().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getContractAmounts().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'confidence_level',
      response.getTerminationDates().get(0).getConfidenceLevel()
    );
    System.assertEquals(
      'text',
      response.getTerminationDates().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getTerminationDates().get(0).getTextNormalized()
    );
    System.assertEquals(
      'provenance_ids',
      response.getTerminationDates().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      10L,
      response.getTerminationDates().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTerminationDates().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'confidence_level',
      response.getContractTypes().get(0).getConfidenceLevel()
    );
    System.assertEquals(
      'text',
      response.getContractTypes().get(0).getText()
    );
    System.assertEquals(
      'provenance_ids',
      response.getContractTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      10L,
      response.getContractTypes().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getContractTypes().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'confidence_level',
      response.getContractTerms().get(0).getConfidenceLevel()
    );
    System.assertEquals(
      'text',
      response.getContractTerms().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getContractTerms().get(0).getTextNormalized()
    );
    System.assertEquals(
      'value',
      response.getContractTerms().get(0).getInterpretation().getValue()
    );
    System.assertEquals(
      0.5,
      response.getContractTerms().get(0).getInterpretation().getNumericValue()
    );
    System.assertEquals(
      'unit',
      response.getContractTerms().get(0).getInterpretation().getUnit()
    );
    System.assertEquals(
      'provenance_ids',
      response.getContractTerms().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      10L,
      response.getContractTerms().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getContractTerms().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'confidence_level',
      response.getPaymentTerms().get(0).getConfidenceLevel()
    );
    System.assertEquals(
      'text',
      response.getPaymentTerms().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getPaymentTerms().get(0).getTextNormalized()
    );
    System.assertEquals(
      'value',
      response.getPaymentTerms().get(0).getInterpretation().getValue()
    );
    System.assertEquals(
      0.5,
      response.getPaymentTerms().get(0).getInterpretation().getNumericValue()
    );
    System.assertEquals(
      'unit',
      response.getPaymentTerms().get(0).getInterpretation().getUnit()
    );
    System.assertEquals(
      'provenance_ids',
      response.getPaymentTerms().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      10L,
      response.getPaymentTerms().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getPaymentTerms().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'confidence_level',
      response.getContractCurrencies().get(0).getConfidenceLevel()
    );
    System.assertEquals(
      'text',
      response.getContractCurrencies().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getContractCurrencies().get(0).getTextNormalized()
    );
    System.assertEquals(
      'provenance_ids',
      response.getContractCurrencies().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      10L,
      response.getContractCurrencies().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getContractCurrencies().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getText()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getSectionTitle().getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getSectionTitle().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getSectionTitle().getLocation().getXEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTitle().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTitle().getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getTitle().getText()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getTableHeaders().get(0).getCellId()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getTableHeaders().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getRowHeaders().get(0).getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getRowHeaders().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getTables().get(0).getRowHeaders().get(0).getTextNormalized()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getColumnHeaders().get(0).getCellId()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getColumnHeaders().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getTables().get(0).getColumnHeaders().get(0).getTextNormalized()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getBodyCells().get(0).getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getBodyCells().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'row_header_ids',
      response.getTables().get(0).getBodyCells().get(0).getRowHeaderIds().get(0)
    );
    System.assertEquals(
      'row_header_texts',
      response.getTables().get(0).getBodyCells().get(0).getRowHeaderTexts().get(0)
    );
    System.assertEquals(
      'row_header_texts_normalized',
      response.getTables().get(0).getBodyCells().get(0).getRowHeaderTextsNormalized().get(0)
    );
    System.assertEquals(
      'column_header_ids',
      response.getTables().get(0).getBodyCells().get(0).getColumnHeaderIds().get(0)
    );
    System.assertEquals(
      'column_header_texts',
      response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTexts().get(0)
    );
    System.assertEquals(
      'column_header_texts_normalized',
      response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTextsNormalized().get(0)
    );
    System.assertEquals(
      'type',
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getContexts().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getContexts().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getContexts().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getText()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getText()
    );
    System.assertEquals(
      'text',
      response.getDocumentStructure().getSectionTitles().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getSectionTitles().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getSectionTitles().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getSectionTitles().get(0).getLevel()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getSectionTitles().get(0).getElementLocations().get(0).getXBegin()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getSectionTitles().get(0).getElementLocations().get(0).getXEnd()
    );
    System.assertEquals(
      'text',
      response.getDocumentStructure().getLeadingSentences().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getLeadingSentences().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getLeadingSentences().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getLeadingSentences().get(0).getElementLocations().get(0).getXBegin()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getLeadingSentences().get(0).getElementLocations().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getParagraphs().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getDocumentStructure().getParagraphs().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'party',
      response.getParties().get(0).getParty()
    );
    System.assertEquals(
      'role',
      response.getParties().get(0).getRole()
    );
    System.assertEquals(
      'importance',
      response.getParties().get(0).getImportance()
    );
    System.assertEquals(
      'text',
      response.getParties().get(0).getAddresses().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getParties().get(0).getAddresses().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getParties().get(0).getAddresses().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'name',
      response.getParties().get(0).getContacts().get(0).getName()
    );
    System.assertEquals(
      'role',
      response.getParties().get(0).getContacts().get(0).getRole()
    );
    System.assertEquals(
      'text',
      response.getParties().get(0).getMentions().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getParties().get(0).getMentions().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getParties().get(0).getMentions().get(0).getLocation().getXEnd()
    );

    Test.stopTest();
  }
  static testMethod void testExtractTables() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1TableReturn();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile file = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String fileContentType = 'file_content_type';
    String model = 'model';

    IBMCompareComplyV1Models.ExtractTablesOptions options = new IBMCompareComplyV1Models.ExtractTablesOptionsBuilder()
      .file(file)
      .fileContentType(fileContentType)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.TableReturn response = service.extractTables(options);

    System.assertEquals(
      'html',
      response.getDocument().getHtml()
    );
    System.assertEquals(
      'title',
      response.getDocument().getTitle()
    );
    System.assertEquals(
      'hash',
      response.getDocument().getHash()
    );
    System.assertEquals(
      'model_id',
      response.getModelId()
    );
    System.assertEquals(
      'model_version',
      response.getModelVersion()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getText()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getSectionTitle().getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getSectionTitle().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getSectionTitle().getLocation().getXEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTitle().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTitle().getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getTitle().getText()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getTableHeaders().get(0).getCellId()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getTableHeaders().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getTableHeaders().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getRowHeaders().get(0).getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getRowHeaders().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getTables().get(0).getRowHeaders().get(0).getTextNormalized()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getRowHeaders().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getColumnHeaders().get(0).getCellId()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getColumnHeaders().get(0).getText()
    );
    System.assertEquals(
      'text_normalized',
      response.getTables().get(0).getColumnHeaders().get(0).getTextNormalized()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getBodyCells().get(0).getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getBodyCells().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getRowIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getRowIndexEnd()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getColumnIndexBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getColumnIndexEnd()
    );
    System.assertEquals(
      'row_header_ids',
      response.getTables().get(0).getBodyCells().get(0).getRowHeaderIds().get(0)
    );
    System.assertEquals(
      'row_header_texts',
      response.getTables().get(0).getBodyCells().get(0).getRowHeaderTexts().get(0)
    );
    System.assertEquals(
      'row_header_texts_normalized',
      response.getTables().get(0).getBodyCells().get(0).getRowHeaderTextsNormalized().get(0)
    );
    System.assertEquals(
      'column_header_ids',
      response.getTables().get(0).getBodyCells().get(0).getColumnHeaderIds().get(0)
    );
    System.assertEquals(
      'column_header_texts',
      response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTexts().get(0)
    );
    System.assertEquals(
      'column_header_texts_normalized',
      response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTextsNormalized().get(0)
    );
    System.assertEquals(
      'type',
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getContexts().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getContexts().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getContexts().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getKeyValuePairs().get(0).getKey().getText()
    );
    System.assertEquals(
      'cell_id',
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getCellId()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getText()
    );

    Test.stopTest();
  }
  static testMethod void testCompareDocuments() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1CompareReturn();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile file1 = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    IBMWatsonFile file2 = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/pdf')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String file1ContentType = 'file1content_type';
    String file2ContentType = 'file2content_type';
    String file1Label = 'file1label';
    String file2Label = 'file2label';
    String model = 'model';

    IBMCompareComplyV1Models.CompareDocumentsOptions options = new IBMCompareComplyV1Models.CompareDocumentsOptionsBuilder()
      .file1(file1)
      .file2(file2)
      .file1ContentType(file1ContentType)
      .file2ContentType(file2ContentType)
      .file1Label(file1Label)
      .file2Label(file2Label)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.CompareReturn response = service.compareDocuments(options);

    System.assertEquals(
      'model_id',
      response.getModelId()
    );
    System.assertEquals(
      'model_version',
      response.getModelVersion()
    );
    System.assertEquals(
      'title',
      response.getDocuments().get(0).getTitle()
    );
    System.assertEquals(
      'html',
      response.getDocuments().get(0).getHtml()
    );
    System.assertEquals(
      'hash',
      response.getDocuments().get(0).getHash()
    );
    System.assertEquals(
      'label',
      response.getDocuments().get(0).getLabel()
    );
    System.assertEquals(
      'document_label',
      response.getAlignedElements().get(0).getElementPair().get(0).getDocumentLabel()
    );
    System.assertEquals(
      'text',
      response.getAlignedElements().get(0).getElementPair().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getAlignedElements().get(0).getElementPair().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getAlignedElements().get(0).getElementPair().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'nature',
      response.getAlignedElements().get(0).getElementPair().get(0).getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getAlignedElements().get(0).getElementPair().get(0).getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'label',
      response.getAlignedElements().get(0).getElementPair().get(0).getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'type',
      response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      true,
      response.getAlignedElements().get(0).getIdenticalText()
    );
    System.assertEquals(
      'provenance_ids',
      response.getAlignedElements().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      true,
      response.getAlignedElements().get(0).getSignificantElements()
    );
    System.assertEquals(
      'document_label',
      response.getUnalignedElements().get(0).getDocumentLabel()
    );
    System.assertEquals(
      10L,
      response.getUnalignedElements().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getUnalignedElements().get(0).getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getUnalignedElements().get(0).getText()
    );
    System.assertEquals(
      'nature',
      response.getUnalignedElements().get(0).getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getUnalignedElements().get(0).getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'label',
      response.getUnalignedElements().get(0).getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'type',
      response.getUnalignedElements().get(0).getAttributes().get(0).getXType()
    );
    System.assertEquals(
      'text',
      response.getUnalignedElements().get(0).getAttributes().get(0).getText()
    );
    System.assertEquals(
      10L,
      response.getUnalignedElements().get(0).getAttributes().get(0).getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getUnalignedElements().get(0).getAttributes().get(0).getLocation().getXEnd()
    );

    Test.stopTest();
  }
  static testMethod void testAddFeedback() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1FeedbackReturn();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String feedbackType = 'feedback_type';
    Long xBegin = 10L;
    Long xEnd = 10L;
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(xBegin)
      .xEnd(xEnd)
      .build();
    String text = 'text';
    IBMCompareComplyV1Models.TypeLabel typesItem = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .build();
    List<IBMCompareComplyV1Models.TypeLabel> types = new List<IBMCompareComplyV1Models.TypeLabel> { typesItem } ;
    IBMCompareComplyV1Models.Category categoriesItem = new IBMCompareComplyV1Models.CategoryBuilder()
      .build();
    List<IBMCompareComplyV1Models.Category> categories = new List<IBMCompareComplyV1Models.Category> { categoriesItem } ;
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabels = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabels = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(types)
      .categories(categories)
      .build();
    IBMCompareComplyV1Models.FeedbackDataInput feedbackData = new IBMCompareComplyV1Models.FeedbackDataInputBuilder()
      .feedbackType(feedbackType)
      .location(location)
      .text(text)
      .originalLabels(originalLabels)
      .updatedLabels(updatedLabels)
      .build();
    String userId = 'user_id';
    String comment = 'comment';

    IBMCompareComplyV1Models.AddFeedbackOptions options = new IBMCompareComplyV1Models.AddFeedbackOptionsBuilder()
      .feedbackData(feedbackData)
      .userId(userId)
      .comment(comment)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.FeedbackReturn response = service.addFeedback(options);

    System.assertEquals(
      'feedback_id',
      response.getFeedbackId()
    );
    System.assertEquals(
      'user_id',
      response.getUserId()
    );
    System.assertEquals(
      'comment',
      response.getComment()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'feedback_type',
      response.getFeedbackData().getFeedbackType()
    );
    System.assertEquals(
      'title',
      response.getFeedbackData().getDocument().getTitle()
    );
    System.assertEquals(
      'hash',
      response.getFeedbackData().getDocument().getHash()
    );
    System.assertEquals(
      'model_id',
      response.getFeedbackData().getModelId()
    );
    System.assertEquals(
      'model_version',
      response.getFeedbackData().getModelVersion()
    );
    System.assertEquals(
      10L,
      response.getFeedbackData().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getFeedbackData().getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getFeedbackData().getText()
    );
    System.assertEquals(
      'nature',
      response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'label',
      response.getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'modification',
      response.getFeedbackData().getOriginalLabels().getModification()
    );
    System.assertEquals(
      'nature',
      response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'label',
      response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'modification',
      response.getFeedbackData().getUpdatedLabels().getModification()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getFeedbackData().getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getFeedbackData().getPagination().getNextCursor()
    );
    System.assertEquals(
      'refresh_url',
      response.getFeedbackData().getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getFeedbackData().getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getFeedbackData().getPagination().getTotal()
    );

    Test.stopTest();
  }
  static testMethod void testListFeedback() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1FeedbackList();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String feedbackType = 'feedback_type';
    Datetime before = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    Datetime after = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    String documentTitle = 'document_title';
    String modelId = 'model_id';
    String modelVersion = 'model_version';
    String categoryRemoved = 'category_removed';
    String categoryAdded = 'category_added';
    String categoryNotChanged = 'category_not_changed';
    String typeRemoved = 'type_removed';
    String typeAdded = 'type_added';
    String typeNotChanged = 'type_not_changed';
    Long pageLimit = 10L;
    String cursor = 'cursor';
    String xSort = 'x_sort';
    Boolean includeTotal = true;

    IBMCompareComplyV1Models.ListFeedbackOptions options = new IBMCompareComplyV1Models.ListFeedbackOptionsBuilder()
      .feedbackType(feedbackType)
      .before(before)
      .after(after)
      .documentTitle(documentTitle)
      .modelId(modelId)
      .modelVersion(modelVersion)
      .categoryRemoved(categoryRemoved)
      .categoryAdded(categoryAdded)
      .categoryNotChanged(categoryNotChanged)
      .typeRemoved(typeRemoved)
      .typeAdded(typeAdded)
      .typeNotChanged(typeNotChanged)
      .pageLimit(pageLimit)
      .cursor(cursor)
      .xSort(xSort)
      .includeTotal(includeTotal)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.FeedbackList response = service.listFeedback(options);

    System.assertEquals(
      'feedback_id',
      response.getFeedback().get(0).getFeedbackId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getFeedback().get(0).getCreated()
    );
    System.assertEquals(
      'comment',
      response.getFeedback().get(0).getComment()
    );
    System.assertEquals(
      'feedback_type',
      response.getFeedback().get(0).getFeedbackData().getFeedbackType()
    );
    System.assertEquals(
      'title',
      response.getFeedback().get(0).getFeedbackData().getDocument().getTitle()
    );
    System.assertEquals(
      'hash',
      response.getFeedback().get(0).getFeedbackData().getDocument().getHash()
    );
    System.assertEquals(
      'model_id',
      response.getFeedback().get(0).getFeedbackData().getModelId()
    );
    System.assertEquals(
      'model_version',
      response.getFeedback().get(0).getFeedbackData().getModelVersion()
    );
    System.assertEquals(
      10L,
      response.getFeedback().get(0).getFeedbackData().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getFeedback().get(0).getFeedbackData().getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getFeedback().get(0).getFeedbackData().getText()
    );
    System.assertEquals(
      'nature',
      response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'label',
      response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'modification',
      response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getModification()
    );
    System.assertEquals(
      'nature',
      response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'label',
      response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'modification',
      response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getModification()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getFeedback().get(0).getFeedbackData().getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getFeedback().get(0).getFeedbackData().getPagination().getNextCursor()
    );
    System.assertEquals(
      'refresh_url',
      response.getFeedback().get(0).getFeedbackData().getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getFeedback().get(0).getFeedbackData().getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getFeedback().get(0).getFeedbackData().getPagination().getTotal()
    );

    Test.stopTest();
  }
  static testMethod void testGetFeedback() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1GetFeedback();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String feedbackId = 'feedback_id';
    String model = 'model';

    IBMCompareComplyV1Models.GetFeedbackOptions options = new IBMCompareComplyV1Models.GetFeedbackOptionsBuilder()
      .feedbackId(feedbackId)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.GetFeedback response = service.getFeedback(options);

    System.assertEquals(
      'feedback_id',
      response.getFeedbackId()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      'comment',
      response.getComment()
    );
    System.assertEquals(
      'feedback_type',
      response.getFeedbackData().getFeedbackType()
    );
    System.assertEquals(
      'title',
      response.getFeedbackData().getDocument().getTitle()
    );
    System.assertEquals(
      'hash',
      response.getFeedbackData().getDocument().getHash()
    );
    System.assertEquals(
      'model_id',
      response.getFeedbackData().getModelId()
    );
    System.assertEquals(
      'model_version',
      response.getFeedbackData().getModelVersion()
    );
    System.assertEquals(
      10L,
      response.getFeedbackData().getLocation().getXBegin()
    );
    System.assertEquals(
      10L,
      response.getFeedbackData().getLocation().getXEnd()
    );
    System.assertEquals(
      'text',
      response.getFeedbackData().getText()
    );
    System.assertEquals(
      'nature',
      response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'label',
      response.getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'modification',
      response.getFeedbackData().getOriginalLabels().getModification()
    );
    System.assertEquals(
      'nature',
      response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature()
    );
    System.assertEquals(
      'party',
      response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'label',
      response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel()
    );
    System.assertEquals(
      'provenance_ids',
      response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0)
    );
    System.assertEquals(
      'modification',
      response.getFeedbackData().getUpdatedLabels().getModification()
    );
    System.assertEquals(
      'refresh_cursor',
      response.getFeedbackData().getPagination().getRefreshCursor()
    );
    System.assertEquals(
      'next_cursor',
      response.getFeedbackData().getPagination().getNextCursor()
    );
    System.assertEquals(
      'refresh_url',
      response.getFeedbackData().getPagination().getRefreshUrl()
    );
    System.assertEquals(
      'next_url',
      response.getFeedbackData().getPagination().getNextUrl()
    );
    System.assertEquals(
      10L,
      response.getFeedbackData().getPagination().getTotal()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteFeedback() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String feedbackId = 'feedback_id';
    String model = 'model';

    IBMCompareComplyV1Models.DeleteFeedbackOptions options = new IBMCompareComplyV1Models.DeleteFeedbackOptionsBuilder()
      .feedbackId(feedbackId)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteFeedback(options);

    Test.stopTest();
  }
  static testMethod void testCreateBatch() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1BatchStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String function = 'function';
    IBMWatsonFile inputCredentialsFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String inputBucketLocation = 'input_bucket_location';
    String inputBucketName = 'input_bucket_name';
    IBMWatsonFile outputCredentialsFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('application/json')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String outputBucketLocation = 'output_bucket_location';
    String outputBucketName = 'output_bucket_name';
    String model = 'model';

    IBMCompareComplyV1Models.CreateBatchOptions options = new IBMCompareComplyV1Models.CreateBatchOptionsBuilder()
      .function(function)
      .inputCredentialsFile(inputCredentialsFile)
      .inputBucketLocation(inputBucketLocation)
      .inputBucketName(inputBucketName)
      .outputCredentialsFile(outputCredentialsFile)
      .outputBucketLocation(outputBucketLocation)
      .outputBucketName(outputBucketName)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.BatchStatus response = service.createBatch(options);

    System.assertEquals(
      'function',
      response.getFunction()
    );
    System.assertEquals(
      'input_bucket_location',
      response.getInputBucketLocation()
    );
    System.assertEquals(
      'input_bucket_name',
      response.getInputBucketName()
    );
    System.assertEquals(
      'output_bucket_location',
      response.getOutputBucketLocation()
    );
    System.assertEquals(
      'output_bucket_name',
      response.getOutputBucketName()
    );
    System.assertEquals(
      'batch_id',
      response.getBatchId()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getTotal()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getSuccessful()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getFailed()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testListBatches() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1Batches();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMCompareComplyV1Models.ListBatchesOptions options = new IBMCompareComplyV1Models.ListBatchesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.Batches response = service.listBatches(options);

    System.assertEquals(
      'function',
      response.getBatches().get(0).getFunction()
    );
    System.assertEquals(
      'input_bucket_location',
      response.getBatches().get(0).getInputBucketLocation()
    );
    System.assertEquals(
      'input_bucket_name',
      response.getBatches().get(0).getInputBucketName()
    );
    System.assertEquals(
      'output_bucket_location',
      response.getBatches().get(0).getOutputBucketLocation()
    );
    System.assertEquals(
      'output_bucket_name',
      response.getBatches().get(0).getOutputBucketName()
    );
    System.assertEquals(
      'batch_id',
      response.getBatches().get(0).getBatchId()
    );
    System.assertEquals(
      10L,
      response.getBatches().get(0).getDocumentCounts().getTotal()
    );
    System.assertEquals(
      10L,
      response.getBatches().get(0).getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getBatches().get(0).getDocumentCounts().getSuccessful()
    );
    System.assertEquals(
      10L,
      response.getBatches().get(0).getDocumentCounts().getFailed()
    );
    System.assertEquals(
      'status',
      response.getBatches().get(0).getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getBatches().get(0).getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getBatches().get(0).getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testGetBatch() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1BatchStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String batchId = 'batch_id';

    IBMCompareComplyV1Models.GetBatchOptions options = new IBMCompareComplyV1Models.GetBatchOptionsBuilder()
      .batchId(batchId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.BatchStatus response = service.getBatch(options);

    System.assertEquals(
      'function',
      response.getFunction()
    );
    System.assertEquals(
      'input_bucket_location',
      response.getInputBucketLocation()
    );
    System.assertEquals(
      'input_bucket_name',
      response.getInputBucketName()
    );
    System.assertEquals(
      'output_bucket_location',
      response.getOutputBucketLocation()
    );
    System.assertEquals(
      'output_bucket_name',
      response.getOutputBucketName()
    );
    System.assertEquals(
      'batch_id',
      response.getBatchId()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getTotal()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getSuccessful()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getFailed()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
  static testMethod void testUpdateBatch() {
    String mockResponseBody = IBMWatsonMockResponses.compareComplyV1BatchStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String batchId = 'batch_id';
    String action = 'action';
    String model = 'model';

    IBMCompareComplyV1Models.UpdateBatchOptions options = new IBMCompareComplyV1Models.UpdateBatchOptionsBuilder()
      .batchId(batchId)
      .action(action)
      .model(model)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.BatchStatus response = service.updateBatch(options);

    System.assertEquals(
      'function',
      response.getFunction()
    );
    System.assertEquals(
      'input_bucket_location',
      response.getInputBucketLocation()
    );
    System.assertEquals(
      'input_bucket_name',
      response.getInputBucketName()
    );
    System.assertEquals(
      'output_bucket_location',
      response.getOutputBucketLocation()
    );
    System.assertEquals(
      'output_bucket_name',
      response.getOutputBucketName()
    );
    System.assertEquals(
      'batch_id',
      response.getBatchId()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getTotal()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getPending()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getSuccessful()
    );
    System.assertEquals(
      10L,
      response.getDocumentCounts().getFailed()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getCreated()
    );
    System.assertEquals(
      (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class),
      response.getUpdated()
    );

    Test.stopTest();
  }
}
