@isTest
private class IBMCompareComplyV1Test {
  private static String VERSION;
  private static String COMMENT;
  private static String USER_ID;
  private static String PROVENANCE_ID;
  private static String FILENAME;
  private static String CONTENT_TYPE_PDF;
  private static String LABEL;
  private static String BUCKET_LOCATION;
  private static String BUCKET_NAME;
  private static String FEEDBACK_ID;
  private static String FEEDBACK_TYPE;
  private static String MODEL_ID;
  private static String MODEL_VERSION;
  private static String TEXT;
  private static String BATCH_ID;
  private static String NATURE;
  private static String PARTY;
  private static String CATEGORY_ADDED;
  private static String CATEGORY_REMOVED;
  private static String CATEGORY_NOT_CHANGED;
  private static String DOCUMENT_TITLE;
  private static String TEST_SORT;
  private static String TYPE_ADDED;
  private static String TYPE_REMOVED;
  private static String TYPE_NOT_CHANGED;
  private static Long TEST_BEGIN;
  private static Long TEST_END;
  private static String HASH;
  private static String TITLE;
  private static String NUM_PAGES;
  private static String AUTHOR;
  private static String PUBLICATION_DATE;
  private static String HTML;
  private static String DOCUMENT_LABEL;
  private static String TYPE;
  private static String REFRESH_CURSOR;
  private static String NEXT_CURSOR;
  private static String REFRESH_URL;
  private static String NEXT_URL;
  private static Long TOTAL;
  private static Long PENDING;
  private static Long SUCCESSFUL;
  private static Long FAILED;
  private static String STATUS;
  private static String CELL_ID;
  private static Long ROW_INDEX_BEGIN;
  private static Long ROW_INDEX_END;
  private static Long COLUMN_INDEX_BEGIN;
  private static Long COLUMN_INDEX_END;
  private static String ID;
  private static String TEXT_NORMALIZED;
  private static Long LEVEL;
  private static String ROLE;
  private static String NAME;
  private static Long PAGE_LIMIT;
  private static String CURSOR;
  private static String CONTRACTS;
  private static String TABLES;
  private static String ADDED;
  private static String ELEMENT_CLASSIFICATION;
  private static String AMENDMENTS;
  private static String HEADER_NAME;
  private static String HEADER_VALUE;
  private static Datetime TEST_DATE;
  private static String CANCEL;
  private static String UNKNOWN;
  private static String HIGH;

  static {
    VERSION = '2018-10-15';
    COMMENT = 'comment';
    USER_ID = 'user_id';
    PROVENANCE_ID = 'provenance_id';
    FILENAME = 'filename';
    CONTENT_TYPE_PDF = 'application/pdf';
    LABEL = 'label';
    BUCKET_LOCATION = 'bucket_location';
    BUCKET_NAME = 'bucket_name';
    FEEDBACK_ID = 'feedback_id';
    FEEDBACK_TYPE = 'feedback_type';
    MODEL_ID = 'model_id';
    MODEL_VERSION = 'model_version';
    TEXT = 'text';
    BATCH_ID = 'batch_id';
    NATURE = 'nature';
    PARTY = 'party';
    CATEGORY_ADDED = 'category_added';
    CATEGORY_REMOVED = 'category_removed';
    CATEGORY_NOT_CHANGED = 'category_not_changed';
    DOCUMENT_TITLE = 'document_title';
    TEST_SORT = 'sort';
    TYPE_ADDED = 'type_added';
    TYPE_REMOVED = 'type_removed';
    TYPE_NOT_CHANGED = 'type_not_changed';
    TEST_BEGIN = 0L;
    TEST_END = 1L;
    HASH = 'hash';
    TITLE = 'title';
    NUM_PAGES = '20';
    AUTHOR = 'author';
    PUBLICATION_DATE = '06-12-1995';
    HTML = 'html';
    DOCUMENT_LABEL = 'document_label';
    TYPE = 'type';
    REFRESH_CURSOR = 'refresh_cursor';
    NEXT_CURSOR = 'next_cursor';
    REFRESH_URL = 'refresh_url';
    NEXT_URL = 'next_url';
    TOTAL = 1000L;
    PENDING = 300L;
    SUCCESSFUL = 400L;
    FAILED = 500L;
    STATUS = 'status';
    CELL_ID = 'cell_id';
    ROW_INDEX_BEGIN = 2000L;
    ROW_INDEX_END = 3000L;
    COLUMN_INDEX_BEGIN = 4000L;
    COLUMN_INDEX_END = 5000L;
    ID = 'id';
    TEXT_NORMALIZED = 'text_normalized';
    LEVEL = 12L;
    ROLE = 'role';
    NAME = 'name';
    PAGE_LIMIT = 7L;
    CURSOR = 'cursor';
    CONTRACTS = 'contracts';
    TABLES = 'tables';
    ADDED = 'added';
    ELEMENT_CLASSIFICATION = 'element_classification';
    AMENDMENTS = 'Amendments';
    HEADER_NAME = 'Header-Name';
    HEADER_VALUE = 'header_value';
    TEST_DATE = (Datetime) JSON.deserialize('"1995-06-12T01:11:11.111Z"', Datetime.class);
    CANCEL = 'cancel';
    UNKNOWN = 'Unknown';
    HIGH = 'High';
  }

  static testMethod void testAddFeedbackOptions() {
    Test.startTest();
    IBMCompareComplyV1Models.FeedbackDataInput feedbackDataInput = new IBMCompareComplyV1Models.FeedbackDataInput();

    IBMCompareComplyV1Models.AddFeedbackOptions addFeedbackOptions = new IBMCompareComplyV1Models.AddFeedbackOptionsBuilder()
      .comment(COMMENT)
      .feedbackData(feedbackDataInput)
      .userId(USER_ID)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    addFeedbackOptions = addFeedbackOptions.newBuilder().build();

    System.assertEquals(COMMENT, addFeedbackOptions.comment());
    System.assertEquals(feedbackDataInput, addFeedbackOptions.feedbackData());
    System.assertEquals(USER_ID, addFeedbackOptions.userId());
    Test.stopTest();
  }

  static testMethod void testCategory() {
    Test.startTest();
    IBMCompareComplyV1Models.Category category = new IBMCompareComplyV1Models.Category();
    category.setLabel(AMENDMENTS);
    category.setProvenanceIds(new List<String> { PROVENANCE_ID });

    System.assertEquals(AMENDMENTS, category.getLabel());
    System.assertEquals(PROVENANCE_ID, category.getProvenanceIds().get(0));
    Test.stopTest();
  }

  static testMethod void testClassifyElementsOptions() {
    Test.startTest();
    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.ClassifyElementsOptions classifyElementsOptions = new IBMCompareComplyV1Models.ClassifyElementsOptionsBuilder()
      .file(testPdf)
      .filename(FILENAME)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    classifyElementsOptions = classifyElementsOptions.newBuilder().build();

    System.assertEquals(testPdf, classifyElementsOptions.file());
    System.assertEquals(FILENAME, classifyElementsOptions.filename());
    System.assertEquals(CONTRACTS, classifyElementsOptions.modelId());
    Test.stopTest();
  }

  static testMethod void testCompareDocumentsOptions() {
    Test.startTest();
    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.CompareDocumentsOptions compareDocumentsOptions = new IBMCompareComplyV1Models.CompareDocumentsOptionsBuilder()
      .file1(testPdf)
      .file1ContentType(CONTENT_TYPE_PDF)
      .file1Filename(FILENAME)
      .file1Label(LABEL)
      .file2(testPdf)
      .file2ContentType(CONTENT_TYPE_PDF)
      .file2Filename(FILENAME)
      .file2Label(LABEL)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    compareDocumentsOptions = compareDocumentsOptions.newBuilder().build();

    System.assertEquals(testPdf, compareDocumentsOptions.file1());
    System.assertEquals(CONTENT_TYPE_PDF, compareDocumentsOptions.file1ContentType());
    System.assertEquals(FILENAME, compareDocumentsOptions.file1Filename());
    System.assertEquals(LABEL, compareDocumentsOptions.file1Label());
    System.assertEquals(testPdf, compareDocumentsOptions.file2());
    System.assertEquals(CONTENT_TYPE_PDF, compareDocumentsOptions.file2ContentType());
    System.assertEquals(FILENAME, compareDocumentsOptions.file2Filename());
    System.assertEquals(LABEL, compareDocumentsOptions.file2Label());
    System.assertEquals(CONTRACTS, compareDocumentsOptions.modelId());
    Test.stopTest();
  }

  static testMethod void testConvertToHtmlOptions() {
    Test.startTest();
    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.ConvertToHtmlOptions convertToHtmlOptions = new IBMCompareComplyV1Models.ConvertToHtmlOptionsBuilder()
      .file(testPdf)
      .fileContentType(CONTENT_TYPE_PDF)
      .filename(FILENAME)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    convertToHtmlOptions = convertToHtmlOptions.newBuilder().build();

    System.assertEquals(testPdf, convertToHtmlOptions.file());
    System.assertEquals(CONTENT_TYPE_PDF, convertToHtmlOptions.fileContentType());
    System.assertEquals(FILENAME, convertToHtmlOptions.filename());
    System.assertEquals(CONTRACTS, convertToHtmlOptions.modelId());
    Test.stopTest();
  }

  static testMethod void testCreateBatchOptions() {
    Test.startTest();
    IBMWatsonFile testCredentialFile = new IBMWatsonFile.FileBuilder()
      .name('test_credentials.json')
      .description('Test JSON file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_JSON)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.CreateBatchOptions createBatchOptions = new IBMCompareComplyV1Models.CreateBatchOptionsBuilder()
      .function(ELEMENT_CLASSIFICATION)
      .inputBucketLocation(BUCKET_LOCATION)
      .inputBucketName(BUCKET_NAME)
      .inputCredentialsFile(testCredentialFile)
      .inputCredentialsFilename(FILENAME)
      .modelId(CONTRACTS)
      .outputBucketLocation(BUCKET_LOCATION)
      .outputBucketName(BUCKET_NAME)
      .outputCredentialsFile(testCredentialFile)
      .outputCredentialsFilename(FILENAME)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    createBatchOptions = createBatchOptions.newBuilder().build();

    System.assertEquals(ELEMENT_CLASSIFICATION, createBatchOptions.function());
    System.assertEquals(BUCKET_LOCATION, createBatchOptions.inputBucketLocation());
    System.assertEquals(BUCKET_NAME, createBatchOptions.inputBucketName());
    System.assertEquals(testCredentialFile, createBatchOptions.inputCredentialsFile());
    System.assertEquals(FILENAME, createBatchOptions.inputCredentialsFilename());
    System.assertEquals(CONTRACTS, createBatchOptions.modelId());
    System.assertEquals(BUCKET_LOCATION, createBatchOptions.outputBucketLocation());
    System.assertEquals(BUCKET_NAME, createBatchOptions.outputBucketName());
    System.assertEquals(testCredentialFile, createBatchOptions.outputCredentialsFile());
    System.assertEquals(FILENAME, createBatchOptions.outputCredentialsFilename());
    Test.stopTest();
  }

  static testMethod void testDeleteFeedbackOptions() {
    Test.startTest();
    IBMCompareComplyV1Models.DeleteFeedbackOptions deleteFeedbackOptions = new IBMCompareComplyV1Models.DeleteFeedbackOptionsBuilder()
      .feedbackId(FEEDBACK_ID)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    deleteFeedbackOptions = deleteFeedbackOptions.newBuilder().build();

    System.assertEquals(FEEDBACK_ID, deleteFeedbackOptions.feedbackId());
    System.assertEquals(CONTRACTS, deleteFeedbackOptions.modelId());
    Test.stopTest();
  }

  static testMethod void testExtractTablesOptions() {
    Test.startTest();
    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.ExtractTablesOptions extractTablesOptions = new IBMCompareComplyV1Models.ExtractTablesOptionsBuilder()
      .file(testPdf)
      .filename(FILENAME)
      .modelId(TABLES)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    extractTablesOptions = extractTablesOptions.newBuilder().build();

    System.assertEquals(testPdf, extractTablesOptions.file());
    System.assertEquals(FILENAME, extractTablesOptions.filename());
    System.assertEquals(TABLES, extractTablesOptions.modelId());
    Test.stopTest();
  }

  static testMethod void testFeedbackDataInput() {
    Test.startTest();
    IBMCompareComplyV1Models.ShortDoc shortDoc = new IBMCompareComplyV1Models.ShortDoc();
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.Location();
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabelsIn = new IBMCompareComplyV1Models.OriginalLabelsIn();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabelsIn = new IBMCompareComplyV1Models.UpdatedLabelsIn();

    IBMCompareComplyV1Models.FeedbackDataInput feedbackDataInput = new IBMCompareComplyV1Models.FeedbackDataInput();
    feedbackDataInput.setDocument(shortDoc);
    feedbackDataInput.setFeedbackType(FEEDBACK_TYPE);
    feedbackDataInput.setLocation(location);
    feedbackDataInput.setModelId(MODEL_ID);
    feedbackDataInput.setModelVersion(MODEL_VERSION);
    feedbackDataInput.setOriginalLabels(originalLabelsIn);
    feedbackDataInput.setText(TEXT);
    feedbackDataInput.setUpdatedLabels(updatedLabelsIn);

    System.assertEquals(shortDoc, feedbackDataInput.getDocument());
    System.assertEquals(FEEDBACK_TYPE, feedbackDataInput.getFeedbackType());
    System.assertEquals(location, feedbackDataInput.getLocation());
    System.assertEquals(MODEL_ID, feedbackDataInput.getModelId());
    System.assertEquals(MODEL_VERSION, feedbackDataInput.getModelVersion());
    System.assertEquals(originalLabelsIn, feedbackDataInput.getOriginalLabels());
    System.assertEquals(TEXT, feedbackDataInput.getText());
    System.assertEquals(updatedLabelsIn, feedbackDataInput.getUpdatedLabels());
    Test.stopTest();
  }

  static testMethod void testListBatchesOptions() {
    Test.startTest();
    IBMCompareComplyV1Models.ListBatchesOptions listBatchesOptions = new IBMCompareComplyV1Models.ListBatchesOptionsBuilder()
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.ListBatchesOptions newListBatchesOptions = listBatchesOptions.newBuilder().build();

    System.assertEquals(listBatchesOptions.requestHeaders(), newListBatchesOptions.requestHeaders());
    Test.stopTest();
  }

  static testMethod void testGetBatchOptions() {
    Test.startTest();
    IBMCompareComplyV1Models.GetBatchOptions getBatchOptions = new IBMCompareComplyV1Models.GetBatchOptionsBuilder()
      .batchId(BATCH_ID)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    getBatchOptions = getBatchOptions.newBuilder().build();

    System.assertEquals(BATCH_ID, getBatchOptions.batchId());
    Test.stopTest();
  }

  static testMethod void testGetFeedbackOptions() {
    Test.startTest();
    IBMCompareComplyV1Models.GetFeedbackOptions getFeedbackOptions = new IBMCompareComplyV1Models.GetFeedbackOptionsBuilder()
      .feedbackId(FEEDBACK_ID)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    getFeedbackOptions = getFeedbackOptions.newBuilder().build();

    System.assertEquals(FEEDBACK_ID, getFeedbackOptions.feedbackId());
    System.assertEquals(CONTRACTS, getFeedbackOptions.modelId());
    Test.stopTest();
  }

  static testMethod void testLabel() {
    Test.startTest();
    IBMCompareComplyV1Models.Label label = new IBMCompareComplyV1Models.Label();
    label.setNature(NATURE);
    label.setParty(PARTY);

    System.assertEquals(NATURE, label.getNature());
    System.assertEquals(PARTY, label.getParty());
    Test.stopTest();
  }

  static testMethod void testListFeedbackOptions() {
    Test.startTest();
    IBMCompareComplyV1Models.ListFeedbackOptions listFeedbackOptions = new IBMCompareComplyV1Models.ListFeedbackOptionsBuilder()
      .after(TEST_DATE)
      .before(TEST_DATE)
      .categoryAdded(CATEGORY_ADDED)
      .categoryRemoved(CATEGORY_REMOVED)
      .categoryNotChanged(CATEGORY_NOT_CHANGED)
      .pageLimit(PAGE_LIMIT)
      .documentTitle(DOCUMENT_TITLE)
      .feedbackType(FEEDBACK_TYPE)
      .includeTotal(true)
      .modelId(MODEL_ID)
      .modelVersion(MODEL_VERSION)
      .cursor(CURSOR)
      .xsort(TEST_SORT)
      .typeAdded(TYPE_ADDED)
      .typeRemoved(TYPE_REMOVED)
      .typeNotChanged(TYPE_NOT_CHANGED)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    listFeedbackOptions = listFeedbackOptions.newBuilder().build();

    System.assertEquals(TEST_DATE, listFeedbackOptions.after());
    System.assertEquals(TEST_DATE, listFeedbackOptions.before());
    System.assertEquals(CATEGORY_ADDED, listFeedbackOptions.categoryAdded());
    System.assertEquals(CATEGORY_REMOVED, listFeedbackOptions.categoryRemoved());
    System.assertEquals(CATEGORY_NOT_CHANGED, listFeedbackOptions.categoryNotChanged());
    System.assertEquals(PAGE_LIMIT, listFeedbackOptions.pageLimit());
    System.assertEquals(DOCUMENT_TITLE, listFeedbackOptions.documentTitle());
    System.assertEquals(FEEDBACK_TYPE, listFeedbackOptions.feedbackType());
    System.assertEquals(MODEL_ID, listFeedbackOptions.modelId());
    System.assertEquals(MODEL_VERSION, listFeedbackOptions.modelVersion());
    System.assertEquals(CURSOR, listFeedbackOptions.cursor());
    System.assertEquals(TYPE_ADDED, listFeedbackOptions.typeAdded());
    System.assertEquals(TYPE_REMOVED, listFeedbackOptions.typeRemoved());
    System.assertEquals(TYPE_NOT_CHANGED, listFeedbackOptions.typeNotChanged());
    System.assertEquals(true, listFeedbackOptions.includeTotal());
    Test.stopTest();
  }

  static testMethod void testLocation() {
    Test.startTest();
    IBMCompareComplyV1Models.Location location = new IBMCompareComplyV1Models.Location();
    location.setXbegin(TEST_BEGIN);
    location.setXend(TEST_END);

    System.assertEquals(TEST_BEGIN, location.getXbegin());
    System.assertEquals(TEST_END, location.getXend());
    Test.stopTest();
  }

  static testMethod void testOriginalLabelsIn() {
    Test.startTest();
    IBMCompareComplyV1Models.Category category = new IBMCompareComplyV1Models.Category();
    IBMCompareComplyV1Models.TypeLabel typeLabel = new IBMCompareComplyV1Models.TypeLabel();
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabelsIn = new IBMCompareComplyV1Models.OriginalLabelsIn();
    originalLabelsIn.setCategories(new List<IBMCompareComplyV1Models.Category> { category });
    originalLabelsIn.setTypes(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabel });

    System.assertEquals(category, originalLabelsIn.getCategories().get(0));
    System.assertEquals(typeLabel, originalLabelsIn.getTypes().get(0));
    Test.stopTest();
  }

  static testMethod void testShortDoc() {
    Test.startTest();
    IBMCompareComplyV1Models.ShortDoc shortDoc = new IBMCompareComplyV1Models.ShortDoc();
    shortDoc.setHash(HASH);
    shortDoc.setTitle(TITLE);

    System.assertEquals(HASH, shortDoc.getHash());
    System.assertEquals(TITLE, shortDoc.getTitle());
    Test.stopTest();
  }

  static testMethod void testTypeLabel() {
    Test.startTest();
    IBMCompareComplyV1Models.Label label = new IBMCompareComplyV1Models.Label();
    IBMCompareComplyV1Models.TypeLabel typeLabel = new IBMCompareComplyV1Models.TypeLabel();
    typeLabel.setLabel(label);
    typeLabel.setProvenanceIds(new List<String> { PROVENANCE_ID });

    System.assertEquals(label, typeLabel.getLabel());
    System.assertEquals(PROVENANCE_ID, typeLabel.getProvenanceIds().get(0));
    Test.stopTest();
  }

  static testMethod void testUpdateBatchOptions() {
    Test.startTest();
    IBMCompareComplyV1Models.UpdateBatchOptions updateBatchOptions = new IBMCompareComplyV1Models.UpdateBatchOptionsBuilder()
      .action(CANCEL)
      .batchId(BATCH_ID)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    updateBatchOptions = updateBatchOptions.newBuilder().build();

    System.assertEquals(CANCEL, updateBatchOptions.action());
    System.assertEquals(BATCH_ID, updateBatchOptions.batchId());
    System.assertEquals(CONTRACTS, updateBatchOptions.modelId());
    Test.stopTest();
  }

  static testMethod void testUpdatedLabelsIn() {
    Test.startTest();
    IBMCompareComplyV1Models.Category category = new IBMCompareComplyV1Models.Category();
    IBMCompareComplyV1Models.TypeLabel typeLabel = new IBMCompareComplyV1Models.TypeLabel();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabelsIn = new IBMCompareComplyV1Models.UpdatedLabelsIn();
    updatedLabelsIn.setCategories(new List<IBMCompareComplyV1Models.Category> { category });
    updatedLabelsIn.setTypes(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabel });

    System.assertEquals(category, updatedLabelsIn.getCategories().get(0));
    System.assertEquals(typeLabel, updatedLabelsIn.getTypes().get(0));
    Test.stopTest();
  }

  static testMethod void testConvertToHtml() {
    String body = IBMWatsonMockResponses.htmlReturnResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.ConvertToHtmlOptions convertToHtmlOptions = new IBMCompareComplyV1Models.ConvertToHtmlOptionsBuilder()
      .file(testPdf)
      .fileContentType(CONTENT_TYPE_PDF)
      .filename(FILENAME)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.HTMLReturn response = service.convertToHtml(convertToHtmlOptions);

    System.assertEquals(NUM_PAGES, response.getNumPages());
    System.assertEquals(AUTHOR, response.getAuthor());
    System.assertEquals(PUBLICATION_DATE, response.getPublicationDate());
    System.assertEquals(TITLE, response.getTitle());
    System.assertEquals(HTML, response.getHtml());
    Test.stopTest();
  }

  static testMethod void testClassifyElements() {
    String body = IBMWatsonMockResponses.classifyReturnResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.ClassifyElementsOptions classifyElementsOptions = new IBMCompareComplyV1Models.ClassifyElementsOptionsBuilder()
      .file(testPdf)
      .filename(FILENAME)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.ClassifyReturn response = service.classifyElements(classifyElementsOptions);

    System.assertEquals(TITLE, response.getDocument().getTitle());
    System.assertEquals(HTML, response.getDocument().getHtml());
    System.assertEquals(HASH, response.getDocument().getHash());
    System.assertEquals(LABEL, response.getDocument().getLabel());
    System.assertEquals(MODEL_ID, response.getModelId());
    System.assertEquals(MODEL_VERSION, response.getModelVersion());
    System.assertEquals(TEST_BEGIN, response.getElements().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getElements().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getElements().get(0).getText());
    System.assertEquals(NATURE, response.getElements().get(0).getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY, response.getElements().get(0).getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID, response.getElements().get(0).getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL, response.getElements().get(0).getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID, response.getElements().get(0).getCategories().get(0).getProvenanceIds().get(0));
    System.assertEquals(TYPE, response.getElements().get(0).getAttributes().get(0).getXtype());
    System.assertEquals(TEXT, response.getElements().get(0).getAttributes().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getElements().get(0).getAttributes().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getElements().get(0).getAttributes().get(0).getLocation().getXend());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getSectionTitle().getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getSectionTitle().getLocation().getXend());
    System.assertEquals(CELL_ID, response.getTables().get(0).getTableHeaders().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getTableHeaders().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getTableHeaders().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getTableHeaders().get(0).getText());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getTableHeaders().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getTableHeaders().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getTableHeaders().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getTableHeaders().get(0).getColumnIndexEnd());
    System.assertEquals(CELL_ID, response.getTables().get(0).getColumnHeaders().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getColumnHeaders().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getColumnHeaders().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getColumnHeaders().get(0).getText());
    System.assertEquals(TEXT_NORMALIZED, response.getTables().get(0).getColumnHeaders().get(0).getTextNormalized());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getColumnHeaders().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getColumnHeaders().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexEnd());
    System.assertEquals(CELL_ID, response.getTables().get(0).getRowHeaders().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getRowHeaders().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getRowHeaders().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getRowHeaders().get(0).getText());
    System.assertEquals(TEXT_NORMALIZED, response.getTables().get(0).getRowHeaders().get(0).getTextNormalized());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getRowHeaders().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getRowHeaders().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getRowHeaders().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getRowHeaders().get(0).getColumnIndexEnd());
    System.assertEquals(CELL_ID, response.getTables().get(0).getBodyCells().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getBodyCells().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getBodyCells().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getText());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getBodyCells().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getBodyCells().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getBodyCells().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getBodyCells().get(0).getColumnIndexEnd());
    System.assertEquals(ID, response.getTables().get(0).getBodyCells().get(0).getRowHeaderIds().get(0));
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getRowHeaderTexts().get(0));
    System.assertEquals(TEXT_NORMALIZED,
        response.getTables().get(0).getBodyCells().get(0).getRowHeaderTextsNormalized().get(0));
    System.assertEquals(ID, response.getTables().get(0).getBodyCells().get(0).getColumnHeaderIds().get(0));
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTexts().get(0));
    System.assertEquals(TEXT_NORMALIZED,
        response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTextsNormalized().get(0));
    System.assertEquals(TYPE, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getXtype());
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getDocumentStructure().getSectionTitles().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getDocumentStructure().getSectionTitles().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getDocumentStructure().getSectionTitles().get(0).getLocation().getXend());
    System.assertEquals(LEVEL, response.getDocumentStructure().getSectionTitles().get(0).getLevel());
    System.assertEquals(TEST_BEGIN,
        response.getDocumentStructure().getSectionTitles().get(0).getElementLocations().get(0).getXbegin());
    System.assertEquals(TEST_END,
        response.getDocumentStructure().getSectionTitles().get(0).getElementLocations().get(0).getXend());
    System.assertEquals(TEXT, response.getDocumentStructure().getLeadingSentences().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getDocumentStructure().getLeadingSentences().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getDocumentStructure().getLeadingSentences().get(0).getLocation().getXend());
    System.assertEquals(TEST_BEGIN,
        response.getDocumentStructure().getLeadingSentences().get(0).getElementLocations().get(0).getXbegin());
    System.assertEquals(TEST_END,
        response.getDocumentStructure().getLeadingSentences().get(0).getElementLocations().get(0).getXend());
    System.assertEquals(PARTY, response.getParties().get(0).getParty());
    System.assertEquals(UNKNOWN, response.getParties().get(0).getImportance());
    System.assertEquals(ROLE, response.getParties().get(0).getRole());
    System.assertEquals(TEXT, response.getParties().get(0).getAddresses().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getParties().get(0).getAddresses().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getParties().get(0).getAddresses().get(0).getLocation().getXend());
    System.assertEquals(NAME, response.getParties().get(0).getContacts().get(0).getName());
    System.assertEquals(ROLE, response.getParties().get(0).getContacts().get(0).getRole());
    System.assertEquals(TEXT, response.getEffectiveDates().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getEffectiveDates().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getEffectiveDates().get(0).getLocation().getXend());
    System.assertEquals(HIGH, response.getEffectiveDates().get(0).getConfidenceLevel());
    System.assertEquals(TEXT, response.getContractAmounts().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getContractAmounts().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getContractAmounts().get(0).getLocation().getXend());
    System.assertEquals(HIGH, response.getContractAmounts().get(0).getConfidenceLevel());
    System.assertEquals(TEXT, response.getTerminationDates().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getTerminationDates().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTerminationDates().get(0).getLocation().getXend());
    System.assertEquals(HIGH, response.getTerminationDates().get(0).getConfidenceLevel());
    Test.stopTest();
  }

  static testMethod void testExtractTables() {
    String body = IBMWatsonMockResponses.tableReturnResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.ExtractTablesOptions extractTablesOptions = new IBMCompareComplyV1Models.ExtractTablesOptionsBuilder()
      .file(testPdf)
      .filename(FILENAME)
      .modelId(TABLES)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.TableReturn response = service.extractTables(extractTablesOptions);

    System.assertEquals(HTML, response.getDocument().getHtml());
    System.assertEquals(TITLE, response.getDocument().getTitle());
    System.assertEquals(HASH, response.getDocument().getHash());
    System.assertEquals(MODEL_ID, response.getModelId());
    System.assertEquals(MODEL_VERSION, response.getModelVersion());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getSectionTitle().getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getSectionTitle().getLocation().getXend());
    System.assertEquals(CELL_ID, response.getTables().get(0).getTableHeaders().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getTableHeaders().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getTableHeaders().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getTableHeaders().get(0).getText());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getTableHeaders().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getTableHeaders().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getTableHeaders().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getTableHeaders().get(0).getColumnIndexEnd());
    System.assertEquals(CELL_ID, response.getTables().get(0).getColumnHeaders().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getColumnHeaders().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getColumnHeaders().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getColumnHeaders().get(0).getText());
    System.assertEquals(TEXT_NORMALIZED, response.getTables().get(0).getColumnHeaders().get(0).getTextNormalized());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getColumnHeaders().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getColumnHeaders().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexEnd());
    System.assertEquals(CELL_ID, response.getTables().get(0).getRowHeaders().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getRowHeaders().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getRowHeaders().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getRowHeaders().get(0).getText());
    System.assertEquals(TEXT_NORMALIZED, response.getTables().get(0).getRowHeaders().get(0).getTextNormalized());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getRowHeaders().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getRowHeaders().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getRowHeaders().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getRowHeaders().get(0).getColumnIndexEnd());
    System.assertEquals(CELL_ID, response.getTables().get(0).getBodyCells().get(0).getCellId());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getBodyCells().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getBodyCells().get(0).getLocation().getXend());
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getText());
    System.assertEquals(ROW_INDEX_BEGIN, response.getTables().get(0).getBodyCells().get(0).getRowIndexBegin());
    System.assertEquals(ROW_INDEX_END, response.getTables().get(0).getBodyCells().get(0).getRowIndexEnd());
    System.assertEquals(COLUMN_INDEX_BEGIN, response.getTables().get(0).getBodyCells().get(0).getColumnIndexBegin());
    System.assertEquals(COLUMN_INDEX_END, response.getTables().get(0).getBodyCells().get(0).getColumnIndexEnd());
    System.assertEquals(ID, response.getTables().get(0).getBodyCells().get(0).getRowHeaderIds().get(0));
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getRowHeaderTexts().get(0));
    System.assertEquals(TEXT_NORMALIZED,
        response.getTables().get(0).getBodyCells().get(0).getRowHeaderTextsNormalized().get(0));
    System.assertEquals(ID, response.getTables().get(0).getBodyCells().get(0).getColumnHeaderIds().get(0));
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTexts().get(0));
    System.assertEquals(TEXT_NORMALIZED,
        response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTextsNormalized().get(0));
    System.assertEquals(TYPE, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getXtype());
    System.assertEquals(TEXT, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXend());
    Test.stopTest();
  }

  static testMethod void testCompareDocuments() {
    String body = IBMWatsonMockResponses.compareReturnResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMWatsonFile testPdf = new IBMWatsonFile.FileBuilder()
      .name('test_pdf.pdf')
      .description('Test PDF file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_PDF)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.CompareDocumentsOptions compareDocumentsOptions = new IBMCompareComplyV1Models.CompareDocumentsOptionsBuilder()
      .file1(testPdf)
      .file1ContentType(CONTENT_TYPE_PDF)
      .file1Filename(FILENAME)
      .file1Label(LABEL)
      .file2(testPdf)
      .file2ContentType(CONTENT_TYPE_PDF)
      .file2Filename(FILENAME)
      .file2Label(LABEL)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.CompareReturn response = service.compareDocuments(compareDocumentsOptions);

    System.assertEquals(TITLE, response.getDocuments().get(0).getTitle());
    System.assertEquals(HTML, response.getDocuments().get(0).getHtml());
    System.assertEquals(HASH, response.getDocuments().get(0).getHash());
    System.assertEquals(LABEL, response.getDocuments().get(0).getLabel());
    System.assertEquals(DOCUMENT_LABEL, response.getAlignedElements().get(0).getElementPair().get(0).getDocumentLabel());
    System.assertEquals(TEXT, response.getAlignedElements().get(0).getElementPair().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getAlignedElements().get(0).getElementPair().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getAlignedElements().get(0).getElementPair().get(0).getLocation().getXend());
    System.assertEquals(NATURE,
        response.getAlignedElements().get(0).getElementPair().get(0).getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY,
        response.getAlignedElements().get(0).getElementPair().get(0).getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID,
        response.getAlignedElements().get(0).getElementPair().get(0).getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL, response.getAlignedElements().get(0).getElementPair().get(0).getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getAlignedElements().get(0).getElementPair().get(0).getCategories().get(0).getProvenanceIds().get(0));
    System.assertEquals(TYPE, response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getXtype());
    System.assertEquals(TEXT, response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getText());
    System.assertEquals(TEST_BEGIN,
        response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END,
        response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getLocation().getXend());
    System.assertEquals(true, response.getAlignedElements().get(0).getIdenticalText());
    System.assertEquals(PROVENANCE_ID, response.getAlignedElements().get(0).getProvenanceIds().get(0));
    System.assertEquals(true, response.getAlignedElements().get(0).getSignificantElements());
    System.assertEquals(DOCUMENT_LABEL, response.getUnalignedElements().get(0).getDocumentLabel());
    System.assertEquals(TEXT, response.getUnalignedElements().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getUnalignedElements().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getUnalignedElements().get(0).getLocation().getXend());
    System.assertEquals(NATURE, response.getUnalignedElements().get(0).getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY, response.getUnalignedElements().get(0).getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID, response.getUnalignedElements().get(0).getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL, response.getUnalignedElements().get(0).getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getUnalignedElements().get(0).getCategories().get(0).getProvenanceIds().get(0));
    System.assertEquals(TYPE, response.getUnalignedElements().get(0).getAttributes().get(0).getXtype());
    System.assertEquals(TEXT, response.getUnalignedElements().get(0).getAttributes().get(0).getText());
    System.assertEquals(TEST_BEGIN, response.getUnalignedElements().get(0).getAttributes().get(0).getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getUnalignedElements().get(0).getAttributes().get(0).getLocation().getXend());
    System.assertEquals(MODEL_ID, response.getModelId());
    System.assertEquals(MODEL_VERSION, response.getModelVersion());
    Test.stopTest();
  }

  static testMethod void testAddFeedback() {
    String body = IBMWatsonMockResponses.feedbackReturnResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMCompareComplyV1Models.AddFeedbackOptions addFeedbackOptions = new IBMCompareComplyV1Models.AddFeedbackOptionsBuilder()
      .comment(COMMENT)
      .feedbackData(new IBMCompareComplyV1Models.FeedbackDataInput())
      .userId(USER_ID)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.FeedbackReturn response = service.addFeedback(addFeedbackOptions);

    System.assertEquals(FEEDBACK_ID, response.getFeedbackId());
    System.assertEquals(USER_ID, response.getUserId());
    System.assertEquals(COMMENT, response.getComment());
    System.assertEquals(TEST_DATE, response.getCreated());
    System.assertEquals(FEEDBACK_TYPE, response.getFeedbackData().getFeedbackType());
    System.assertEquals(TITLE, response.getFeedbackData().getDocument().getTitle());
    System.assertEquals(HASH, response.getFeedbackData().getDocument().getHash());
    System.assertEquals(MODEL_ID, response.getFeedbackData().getModelId());
    System.assertEquals(MODEL_VERSION, response.getFeedbackData().getModelVersion());
    System.assertEquals(TEST_BEGIN, response.getFeedbackData().getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getFeedbackData().getLocation().getXend());
    System.assertEquals(TEXT, response.getFeedbackData().getText());
    System.assertEquals(NATURE, response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY, response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL, response.getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0));
    System.assertEquals(ADDED,
        response.getFeedbackData().getOriginalLabels().getModification());
    System.assertEquals(NATURE, response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY, response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL,
        response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0));
    System.assertEquals(ADDED,
        response.getFeedbackData().getUpdatedLabels().getModification());
    System.assertEquals(REFRESH_CURSOR, response.getFeedbackData().getPagination().getRefreshCursor());
    System.assertEquals(NEXT_CURSOR, response.getFeedbackData().getPagination().getNextCursor());
    System.assertEquals(REFRESH_URL, response.getFeedbackData().getPagination().getRefreshUrl());
    System.assertEquals(NEXT_URL, response.getFeedbackData().getPagination().getNextUrl());
    System.assertEquals(TOTAL, response.getFeedbackData().getPagination().getTotal());
    Test.stopTest();
  }

  static testMethod void testDeleteFeedback() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMCompareComplyV1Models.DeleteFeedbackOptions deleteFeedbackOptions = new IBMCompareComplyV1Models.DeleteFeedbackOptionsBuilder()
      .feedbackId(FEEDBACK_ID)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    service.deleteFeedback(deleteFeedbackOptions);

    Test.stopTest();
  }

  static testMethod void testGetFeedback() {
    String body = IBMWatsonMockResponses.getFeedbackResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMCompareComplyV1Models.GetFeedbackOptions getFeedbackOptions = new IBMCompareComplyV1Models.GetFeedbackOptionsBuilder()
      .feedbackId(FEEDBACK_ID)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.GetFeedback response = service.getFeedback(getFeedbackOptions);

    System.assertEquals(FEEDBACK_ID, response.getFeedbackId());
    System.assertEquals(COMMENT, response.getComment());
    System.assertEquals(TEST_DATE, response.getCreated());
    System.assertEquals(FEEDBACK_TYPE, response.getFeedbackData().getFeedbackType());
    System.assertEquals(TITLE, response.getFeedbackData().getDocument().getTitle());
    System.assertEquals(HASH, response.getFeedbackData().getDocument().getHash());
    System.assertEquals(MODEL_ID, response.getFeedbackData().getModelId());
    System.assertEquals(MODEL_VERSION, response.getFeedbackData().getModelVersion());
    System.assertEquals(TEST_BEGIN, response.getFeedbackData().getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getFeedbackData().getLocation().getXend());
    System.assertEquals(TEXT, response.getFeedbackData().getText());
    System.assertEquals(NATURE, response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY, response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL, response.getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0));
    System.assertEquals(ADDED,
        response.getFeedbackData().getOriginalLabels().getModification());
    System.assertEquals(NATURE, response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY, response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL, response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0));
    System.assertEquals(ADDED,
        response.getFeedbackData().getUpdatedLabels().getModification());
    System.assertEquals(REFRESH_CURSOR, response.getFeedbackData().getPagination().getRefreshCursor());
    System.assertEquals(NEXT_CURSOR, response.getFeedbackData().getPagination().getNextCursor());
    System.assertEquals(REFRESH_URL, response.getFeedbackData().getPagination().getRefreshUrl());
    System.assertEquals(NEXT_URL, response.getFeedbackData().getPagination().getNextUrl());
    System.assertEquals(TOTAL, response.getFeedbackData().getPagination().getTotal());
    Test.stopTest();
  }

  static testMethod void testListFeedback() {
    String body = IBMWatsonMockResponses.feedbackListResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMCompareComplyV1Models.ListFeedbackOptions listFeedbackOptions = new IBMCompareComplyV1Models.ListFeedbackOptionsBuilder()
      .after(TEST_DATE)
      .before(TEST_DATE)
      .categoryAdded(CATEGORY_ADDED)
      .categoryRemoved(CATEGORY_REMOVED)
      .categoryNotChanged(CATEGORY_NOT_CHANGED)
      .pageLimit(PAGE_LIMIT)
      .documentTitle(DOCUMENT_TITLE)
      .feedbackType(FEEDBACK_TYPE)
      .includeTotal(true)
      .modelId(MODEL_ID)
      .modelVersion(MODEL_VERSION)
      .cursor(CURSOR)
      .xsort(TEST_SORT)
      .typeAdded(TYPE_ADDED)
      .typeRemoved(TYPE_REMOVED)
      .typeNotChanged(TYPE_NOT_CHANGED)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.FeedbackList response = service.listFeedback(listFeedbackOptions);

    System.assertEquals(FEEDBACK_ID, response.getFeedback().get(0).getFeedbackId());
    System.assertEquals(COMMENT, response.getFeedback().get(0).getComment());
    System.assertEquals(TEST_DATE, response.getFeedback().get(0).getCreated());
    System.assertEquals(FEEDBACK_TYPE, response.getFeedback().get(0).getFeedbackData().getFeedbackType());
    System.assertEquals(TITLE, response.getFeedback().get(0).getFeedbackData().getDocument().getTitle());
    System.assertEquals(HASH, response.getFeedback().get(0).getFeedbackData().getDocument().getHash());
    System.assertEquals(MODEL_ID, response.getFeedback().get(0).getFeedbackData().getModelId());
    System.assertEquals(MODEL_VERSION, response.getFeedback().get(0).getFeedbackData().getModelVersion());
    System.assertEquals(TEST_BEGIN, response.getFeedback().get(0).getFeedbackData().getLocation().getXbegin());
    System.assertEquals(TEST_END, response.getFeedback().get(0).getFeedbackData().getLocation().getXend());
    System.assertEquals(TEXT, response.getFeedback().get(0).getFeedbackData().getText());
    System.assertEquals(NATURE,
        response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY,
        response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds()
            .get(0));
    System.assertEquals(LABEL,
        response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds()
            .get(0));
    System.assertEquals(ADDED,
        response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getModification());
    System.assertEquals(NATURE,
        response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature());
    System.assertEquals(PARTY,
        response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0));
    System.assertEquals(LABEL,
        response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel());
    System.assertEquals(PROVENANCE_ID,
        response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds()
            .get(0));
    System.assertEquals(ADDED,
        response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getModification());
    System.assertEquals(REFRESH_CURSOR, response.getFeedback().get(0).getFeedbackData().getPagination().getRefreshCursor());
    System.assertEquals(NEXT_CURSOR, response.getFeedback().get(0).getFeedbackData().getPagination().getNextCursor());
    System.assertEquals(REFRESH_URL, response.getFeedback().get(0).getFeedbackData().getPagination().getRefreshUrl());
    System.assertEquals(NEXT_URL, response.getFeedback().get(0).getFeedbackData().getPagination().getNextUrl());
    System.assertEquals(TOTAL, response.getFeedback().get(0).getFeedbackData().getPagination().getTotal());
    Test.stopTest();
  }

  static testMethod void testCreateBatch() {
    String body = IBMWatsonMockResponses.batchStatusResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMWatsonFile testCredentialFile = new IBMWatsonFile.FileBuilder()
      .name('test_credentials.json')
      .description('Test JSON file')
      .contentType(IBMWatsonHttpMediaType.APPLICATION_JSON)
      .body(blob.valueOf('Test string'))
      .build();
    IBMCompareComplyV1Models.CreateBatchOptions createBatchOptions = new IBMCompareComplyV1Models.CreateBatchOptionsBuilder()
      .function(ELEMENT_CLASSIFICATION)
      .inputBucketLocation(BUCKET_LOCATION)
      .inputBucketName(BUCKET_NAME)
      .inputCredentialsFile(testCredentialFile)
      .inputCredentialsFilename(FILENAME)
      .modelId(CONTRACTS)
      .outputBucketLocation(BUCKET_LOCATION)
      .outputBucketName(BUCKET_NAME)
      .outputCredentialsFile(testCredentialFile)
      .outputCredentialsFilename(FILENAME)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.BatchStatus response = service.createBatch(createBatchOptions);

    assertBatchStatusResponse(response);
    Test.stopTest();
  }

  static testMethod void testGetBatch() {
    String body = IBMWatsonMockResponses.batchStatusResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMCompareComplyV1Models.GetBatchOptions getBatchOptions = new IBMCompareComplyV1Models.GetBatchOptionsBuilder()
      .batchId(BATCH_ID)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.BatchStatus response = service.getBatch(getBatchOptions);

    assertBatchStatusResponse(response);
    Test.stopTest();
  }

  static testMethod void testListBatches() {
    String body = IBMWatsonMockResponses.batchesResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMCompareComplyV1Models.ListBatchesOptions listBatchesOptions = new IBMCompareComplyV1Models.ListBatchesOptionsBuilder()
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.Batches response = service.listBatches(listBatchesOptions);

    assertBatchStatusResponse(response.getBatches().get(0));
    Test.stopTest();
  }

  static testMethod void testUpdateBatch() {
    String body = IBMWatsonMockResponses.batchStatusResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      body,
      null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMCompareComplyV1 service = new IBMCompareComplyV1(VERSION, iamOptions);

    IBMCompareComplyV1Models.UpdateBatchOptions updateBatchOptions = new IBMCompareComplyV1Models.UpdateBatchOptionsBuilder()
      .action(CANCEL)
      .batchId(BATCH_ID)
      .modelId(CONTRACTS)
      .addHeader(HEADER_NAME, HEADER_VALUE)
      .build();
    IBMCompareComplyV1Models.BatchStatus response = service.updateBatch(updateBatchOptions);

    assertBatchStatusResponse(response);
    Test.stopTest();
  }

  private static void assertBatchStatusResponse(IBMCompareComplyV1Models.BatchStatus response) {
    System.assertEquals(ELEMENT_CLASSIFICATION, response.getFunction());
    System.assertEquals(BUCKET_LOCATION, response.getInputBucketLocation());
    System.assertEquals(BUCKET_NAME, response.getInputBucketName());
    System.assertEquals(BUCKET_LOCATION, response.getOutputBucketLocation());
    System.assertEquals(BUCKET_NAME, response.getOutputBucketName());
    System.assertEquals(BATCH_ID, response.getBatchId());
    System.assertEquals(TOTAL, response.getDocumentCounts().getTotal());
    System.assertEquals(PENDING, response.getDocumentCounts().getPending());
    System.assertEquals(SUCCESSFUL, response.getDocumentCounts().getSuccessful());
    System.assertEquals(FAILED, response.getDocumentCounts().getFailed());
    System.assertEquals(STATUS, response.getStatus());
    System.assertEquals(TEST_DATE, response.getCreated());
    System.assertEquals(TEST_DATE, response.getUpdated());
  }
}
