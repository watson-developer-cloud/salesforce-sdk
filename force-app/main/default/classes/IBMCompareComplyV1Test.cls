@isTest
private class IBMCompareComplyV1Test {
  private static IBMCompareComplyV1 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMCompareComplyV1('2018-10-15', new IBMWatsonNoAuthAuthenticator());
    mockFile = new IBMWatsonFile.FileBuilder()
      .name('mock-file.txt')
      .description('Test file')
      .contentType('text/plain')
      .body(blob.valueOf('Test string'))
      .build();
  }

  static IBMWatsonMapModel createMockMap() {
    IBMWatsonMapModel mockMap = new IBMWatsonMapModel();
    mockMap.put('testKey', 'testVal');
    return mockMap;
  }

  static testMethod void testAddFeedbackOptionsModel() {
    Test.startTest();
    IBMCompareComplyV1Models.Category categoryModel = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Amendments')
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.Label labelModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('testString')
      .party('testString')
      .build();
    IBMCompareComplyV1Models.TypeLabel typeLabelModel = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(labelModel)
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabelsInModel = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabelsInModel = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    IBMCompareComplyV1Models.Location locationModel = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(26L)
      .xEnd(26L)
      .build();
    IBMCompareComplyV1Models.ShortDoc shortDocModel = new IBMCompareComplyV1Models.ShortDocBuilder()
      .title('testString')
      .hash('testString')
      .build();
    IBMCompareComplyV1Models.FeedbackDataInput feedbackDataInputModel = new IBMCompareComplyV1Models.FeedbackDataInputBuilder()
      .feedbackType('testString')
      .document(shortDocModel)
      .modelId('testString')
      .modelVersion('testString')
      .location(locationModel)
      .text('testString')
      .originalLabels(originalLabelsInModel)
      .updatedLabels(updatedLabelsInModel)
      .build();

    IBMCompareComplyV1Models.AddFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.AddFeedbackOptionsBuilder()
      .feedbackData(feedbackDataInputModel)
      .userId('testString')
      .comment('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(feedbackDataInputModel, testRequestModel.feedbackData());
    System.assertEquals('testString', testRequestModel.userId());
    System.assertEquals('testString', testRequestModel.comment());
    Test.stopTest();
  }
  static testMethod void testCategoryModel() {
    Test.startTest();

    IBMCompareComplyV1Models.Category testRequestModel = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Amendments')
      .provenanceIds(new List<String> { 'testString' })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('Amendments', testRequestModel.getLabel());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.getProvenanceIds());
    Test.stopTest();
  }
  static testMethod void testClassifyElementsOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.ClassifyElementsOptions testRequestModel = new IBMCompareComplyV1Models.ClassifyElementsOptionsBuilder()
      .file(mockFile)
      .fileContentType('application/pdf')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.file());
    System.assertEquals('application/pdf', testRequestModel.fileContentType());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testCompareDocumentsOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.CompareDocumentsOptions testRequestModel = new IBMCompareComplyV1Models.CompareDocumentsOptionsBuilder()
      .file1(mockFile)
      .file2(mockFile)
      .file1ContentType('application/pdf')
      .file2ContentType('application/pdf')
      .file1Label('testString')
      .file2Label('testString')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.file1());
    System.assertEquals(mockFile, testRequestModel.file2());
    System.assertEquals('application/pdf', testRequestModel.file1ContentType());
    System.assertEquals('application/pdf', testRequestModel.file2ContentType());
    System.assertEquals('testString', testRequestModel.file1Label());
    System.assertEquals('testString', testRequestModel.file2Label());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testConvertToHtmlOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.ConvertToHtmlOptions testRequestModel = new IBMCompareComplyV1Models.ConvertToHtmlOptionsBuilder()
      .file(mockFile)
      .fileContentType('application/pdf')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.file());
    System.assertEquals('application/pdf', testRequestModel.fileContentType());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testCreateBatchOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.CreateBatchOptions testRequestModel = new IBMCompareComplyV1Models.CreateBatchOptionsBuilder()
      .function('html_conversion')
      .inputCredentialsFile(mockFile)
      .inputBucketLocation('testString')
      .inputBucketName('testString')
      .outputCredentialsFile(mockFile)
      .outputBucketLocation('testString')
      .outputBucketName('testString')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('html_conversion', testRequestModel.function());
    System.assertEquals(mockFile, testRequestModel.inputCredentialsFile());
    System.assertEquals('testString', testRequestModel.inputBucketLocation());
    System.assertEquals('testString', testRequestModel.inputBucketName());
    System.assertEquals(mockFile, testRequestModel.outputCredentialsFile());
    System.assertEquals('testString', testRequestModel.outputBucketLocation());
    System.assertEquals('testString', testRequestModel.outputBucketName());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testDeleteFeedbackOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.DeleteFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.DeleteFeedbackOptionsBuilder()
      .feedbackId('testString')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.feedbackId());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testExtractTablesOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.ExtractTablesOptions testRequestModel = new IBMCompareComplyV1Models.ExtractTablesOptionsBuilder()
      .file(mockFile)
      .fileContentType('application/pdf')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(mockFile, testRequestModel.file());
    System.assertEquals('application/pdf', testRequestModel.fileContentType());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testFeedbackDataInputModel() {
    Test.startTest();
    IBMCompareComplyV1Models.Category categoryModel = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Amendments')
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.Label labelModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('testString')
      .party('testString')
      .build();
    IBMCompareComplyV1Models.TypeLabel typeLabelModel = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(labelModel)
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabelsInModel = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabelsInModel = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    IBMCompareComplyV1Models.Location locationModel = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(26L)
      .xEnd(26L)
      .build();
    IBMCompareComplyV1Models.ShortDoc shortDocModel = new IBMCompareComplyV1Models.ShortDocBuilder()
      .title('testString')
      .hash('testString')
      .build();

    IBMCompareComplyV1Models.FeedbackDataInput testRequestModel = new IBMCompareComplyV1Models.FeedbackDataInputBuilder()
      .feedbackType('testString')
      .document(shortDocModel)
      .modelId('testString')
      .modelVersion('testString')
      .location(locationModel)
      .text('testString')
      .originalLabels(originalLabelsInModel)
      .updatedLabels(updatedLabelsInModel)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getFeedbackType());
    System.assertEquals(shortDocModel, testRequestModel.getDocument());
    System.assertEquals('testString', testRequestModel.getModelId());
    System.assertEquals('testString', testRequestModel.getModelVersion());
    System.assertEquals(locationModel, testRequestModel.getLocation());
    System.assertEquals('testString', testRequestModel.getText());
    System.assertEquals(originalLabelsInModel, testRequestModel.getOriginalLabels());
    System.assertEquals(updatedLabelsInModel, testRequestModel.getUpdatedLabels());
    Test.stopTest();
  }
  static testMethod void testGetBatchOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.GetBatchOptions testRequestModel = new IBMCompareComplyV1Models.GetBatchOptionsBuilder()
      .batchId('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.batchId());
    Test.stopTest();
  }
  static testMethod void testGetFeedbackOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.GetFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.GetFeedbackOptionsBuilder()
      .feedbackId('testString')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.feedbackId());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testLabelModel() {
    Test.startTest();

    IBMCompareComplyV1Models.Label testRequestModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('testString')
      .party('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getNature());
    System.assertEquals('testString', testRequestModel.getParty());
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

    IBMCompareComplyV1Models.ListFeedbackOptions testRequestModel = new IBMCompareComplyV1Models.ListFeedbackOptionsBuilder()
      .feedbackType('testString')
      .before((Datetime) JSON.deserialize('"2019-01-01"', Datetime.class))
      .after((Datetime) JSON.deserialize('"2019-01-01"', Datetime.class))
      .documentTitle('testString')
      .modelId('testString')
      .modelVersion('testString')
      .categoryRemoved('testString')
      .categoryAdded('testString')
      .categoryNotChanged('testString')
      .typeRemoved('testString')
      .typeAdded('testString')
      .typeNotChanged('testString')
      .pageLimit(38)
      .cursor('testString')
      .xSort('testString')
      .includeTotal(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.feedbackType());
    System.assertEquals((Datetime) JSON.deserialize('"2019-01-01"', Datetime.class), testRequestModel.before());
    System.assertEquals((Datetime) JSON.deserialize('"2019-01-01"', Datetime.class), testRequestModel.after());
    System.assertEquals('testString', testRequestModel.documentTitle());
    System.assertEquals('testString', testRequestModel.modelId());
    System.assertEquals('testString', testRequestModel.modelVersion());
    System.assertEquals('testString', testRequestModel.categoryRemoved());
    System.assertEquals('testString', testRequestModel.categoryAdded());
    System.assertEquals('testString', testRequestModel.categoryNotChanged());
    System.assertEquals('testString', testRequestModel.typeRemoved());
    System.assertEquals('testString', testRequestModel.typeAdded());
    System.assertEquals('testString', testRequestModel.typeNotChanged());
    System.assertEquals(38, testRequestModel.pageLimit());
    System.assertEquals('testString', testRequestModel.cursor());
    System.assertEquals('testString', testRequestModel.xSort());
    System.assertEquals(true, testRequestModel.includeTotal());
    Test.stopTest();
  }
  static testMethod void testLocationModel() {
    Test.startTest();

    IBMCompareComplyV1Models.Location testRequestModel = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(26L)
      .xEnd(26L)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(26L, testRequestModel.getXBegin());
    System.assertEquals(26L, testRequestModel.getXEnd());
    Test.stopTest();
  }
  static testMethod void testOriginalLabelsInModel() {
    Test.startTest();
    IBMCompareComplyV1Models.Category categoryModel = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Amendments')
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.Label labelModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('testString')
      .party('testString')
      .build();
    IBMCompareComplyV1Models.TypeLabel typeLabelModel = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(labelModel)
      .provenanceIds(new List<String> { 'testString' })
      .build();

    IBMCompareComplyV1Models.OriginalLabelsIn testRequestModel = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel }, testRequestModel.getTypes());
    System.assertEquals(new List<IBMCompareComplyV1Models.Category> { categoryModel }, testRequestModel.getCategories());
    Test.stopTest();
  }
  static testMethod void testShortDocModel() {
    Test.startTest();

    IBMCompareComplyV1Models.ShortDoc testRequestModel = new IBMCompareComplyV1Models.ShortDocBuilder()
      .title('testString')
      .hash('testString')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.getTitle());
    System.assertEquals('testString', testRequestModel.getHash());
    Test.stopTest();
  }
  static testMethod void testTypeLabelModel() {
    Test.startTest();
    IBMCompareComplyV1Models.Label labelModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('testString')
      .party('testString')
      .build();

    IBMCompareComplyV1Models.TypeLabel testRequestModel = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(labelModel)
      .provenanceIds(new List<String> { 'testString' })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(labelModel, testRequestModel.getLabel());
    System.assertEquals(new List<String> { 'testString' }, testRequestModel.getProvenanceIds());
    Test.stopTest();
  }
  static testMethod void testUpdateBatchOptionsModel() {
    Test.startTest();

    IBMCompareComplyV1Models.UpdateBatchOptions testRequestModel = new IBMCompareComplyV1Models.UpdateBatchOptionsBuilder()
      .batchId('testString')
      .action('rescan')
      .model('contracts')
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.batchId());
    System.assertEquals('rescan', testRequestModel.action());
    System.assertEquals('contracts', testRequestModel.model());
    Test.stopTest();
  }
  static testMethod void testUpdatedLabelsInModel() {
    Test.startTest();
    IBMCompareComplyV1Models.Category categoryModel = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Amendments')
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.Label labelModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('testString')
      .party('testString')
      .build();
    IBMCompareComplyV1Models.TypeLabel typeLabelModel = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(labelModel)
      .provenanceIds(new List<String> { 'testString' })
      .build();

    IBMCompareComplyV1Models.UpdatedLabelsIn testRequestModel = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel }, testRequestModel.getTypes());
    System.assertEquals(new List<IBMCompareComplyV1Models.Category> { categoryModel }, testRequestModel.getCategories());
    Test.stopTest();
  }

  static testMethod void testConvertToHtml() {
    String mockResponseBody = '{"num_pages": "numPages", "author": "author", "publication_date": "publicationDate", "title": "title", "html": "html"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.ConvertToHtmlOptions convertToHtmlOptionsModel = new IBMCompareComplyV1Models.ConvertToHtmlOptionsBuilder()
      .file(mockFile)
      .fileContentType('application/pdf')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.HTMLReturn response = service.convertToHtml(convertToHtmlOptionsModel);
    System.assert(response.getNumPages() != null);
    System.assert(response.getAuthor() != null);
    System.assert(response.getPublicationDate() != null);
    System.assert(response.getTitle() != null);
    System.assert(response.getHtml() != null);

    Test.stopTest();
  }
  static testMethod void testClassifyElements() {
    String mockResponseBody = '{"document": {"title": "title", "html": "html", "hash": "hash", "label": "label"}, "model_id": "modelId", "model_version": "modelVersion", "elements": [{"location": {"begin": "6", "end": "4"}, "text": "text", "types": [{"label": {"nature": "nature", "party": "party"}, "provenance_ids": ["provenanceIds"]}], "categories": [{"label": "label", "provenance_ids": ["provenanceIds"]}], "attributes": [{"type": "xType", "text": "text", "location": {"begin": "6", "end": "4"}}]}], "effective_dates": [{"confidence_level": "confidenceLevel", "text": "text", "text_normalized": "textNormalized", "provenance_ids": ["provenanceIds"], "location": {"begin": "6", "end": "4"}}], "contract_amounts": [{"confidence_level": "confidenceLevel", "text": "text", "text_normalized": "textNormalized", "interpretation": {"value": "value", "numeric_value": "12", "unit": "unit"}, "provenance_ids": ["provenanceIds"], "location": {"begin": "6", "end": "4"}}], "termination_dates": [{"confidence_level": "confidenceLevel", "text": "text", "text_normalized": "textNormalized", "provenance_ids": ["provenanceIds"], "location": {"begin": "6", "end": "4"}}], "contract_types": [{"confidence_level": "confidenceLevel", "text": "text", "provenance_ids": ["provenanceIds"], "location": {"begin": "6", "end": "4"}}], "contract_terms": [{"confidence_level": "confidenceLevel", "text": "text", "text_normalized": "textNormalized", "interpretation": {"value": "value", "numeric_value": "12", "unit": "unit"}, "provenance_ids": ["provenanceIds"], "location": {"begin": "6", "end": "4"}}], "payment_terms": [{"confidence_level": "confidenceLevel", "text": "text", "text_normalized": "textNormalized", "interpretation": {"value": "value", "numeric_value": "12", "unit": "unit"}, "provenance_ids": ["provenanceIds"], "location": {"begin": "6", "end": "4"}}], "contract_currencies": [{"confidence_level": "confidenceLevel", "text": "text", "text_normalized": "textNormalized", "provenance_ids": ["provenanceIds"], "location": {"begin": "6", "end": "4"}}], "tables": [{"location": {"begin": "6", "end": "4"}, "text": "text", "section_title": {"text": "text", "location": {"begin": "6", "end": "4"}}, "title": {"location": {"begin": "6", "end": "4"}, "text": "text"}, "table_headers": [{"cell_id": "cellId", "text": "text", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14"}], "row_headers": [{"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text", "text_normalized": "textNormalized", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14"}], "column_headers": [{"cell_id": "cellId", "text": "text", "text_normalized": "textNormalized", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14"}], "body_cells": [{"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14", "row_header_ids": ["rowHeaderIds"], "row_header_texts": ["rowHeaderTexts"], "row_header_texts_normalized": ["rowHeaderTextsNormalized"], "column_header_ids": ["columnHeaderIds"], "column_header_texts": ["columnHeaderTexts"], "column_header_texts_normalized": ["columnHeaderTextsNormalized"], "attributes": [{"type": "xType", "text": "text", "location": {"begin": "6", "end": "4"}}]}], "contexts": [{"text": "text", "location": {"begin": "6", "end": "4"}}], "key_value_pairs": [{"key": {"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text"}, "value": [{"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text"}]}]}], "document_structure": {"section_titles": [{"text": "text", "location": {"begin": "6", "end": "4"}, "level": "5", "element_locations": [{"begin": "6", "end": "4"}]}], "leading_sentences": [{"text": "text", "location": {"begin": "6", "end": "4"}, "element_locations": [{"begin": "6", "end": "4"}]}], "paragraphs": [{"location": {"begin": "6", "end": "4"}}]}, "parties": [{"party": "party", "role": "role", "importance": "importance", "addresses": [{"text": "text", "location": {"begin": "6", "end": "4"}}], "contacts": [{"name": "name", "role": "role"}], "mentions": [{"text": "text", "location": {"begin": "6", "end": "4"}}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.ClassifyElementsOptions classifyElementsOptionsModel = new IBMCompareComplyV1Models.ClassifyElementsOptionsBuilder()
      .file(mockFile)
      .fileContentType('application/pdf')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.ClassifyReturn response = service.classifyElements(classifyElementsOptionsModel);
    System.assert(response.getDocument().getTitle() != null);
    System.assert(response.getDocument().getHtml() != null);
    System.assert(response.getDocument().getHash() != null);
    System.assert(response.getDocument().getLabel() != null);
    System.assert(response.getModelId() != null);
    System.assert(response.getModelVersion() != null);
    System.assert(response.getElements().get(0).getLocation().getXBegin() != null);
    System.assert(response.getElements().get(0).getLocation().getXEnd() != null);
    System.assert(response.getElements().get(0).getText() != null);
    System.assert(response.getElements().get(0).getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getElements().get(0).getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getElements().get(0).getTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getElements().get(0).getCategories().get(0).getLabel() != null);
    System.assert(response.getElements().get(0).getCategories().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getElements().get(0).getAttributes().get(0).getXType() != null);
    System.assert(response.getElements().get(0).getAttributes().get(0).getText() != null);
    System.assert(response.getElements().get(0).getAttributes().get(0).getLocation().getXBegin() != null);
    System.assert(response.getElements().get(0).getAttributes().get(0).getLocation().getXEnd() != null);
    System.assert(response.getEffectiveDates().get(0).getConfidenceLevel() != null);
    System.assert(response.getEffectiveDates().get(0).getText() != null);
    System.assert(response.getEffectiveDates().get(0).getTextNormalized() != null);
    System.assert(response.getEffectiveDates().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getEffectiveDates().get(0).getLocation().getXBegin() != null);
    System.assert(response.getEffectiveDates().get(0).getLocation().getXEnd() != null);
    System.assert(response.getContractAmounts().get(0).getConfidenceLevel() != null);
    System.assert(response.getContractAmounts().get(0).getText() != null);
    System.assert(response.getContractAmounts().get(0).getTextNormalized() != null);
    System.assert(response.getContractAmounts().get(0).getInterpretation().getValue() != null);
    System.assert(response.getContractAmounts().get(0).getInterpretation().getNumericValue() != null);
    System.assert(response.getContractAmounts().get(0).getInterpretation().getUnit() != null);
    System.assert(response.getContractAmounts().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getContractAmounts().get(0).getLocation().getXBegin() != null);
    System.assert(response.getContractAmounts().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTerminationDates().get(0).getConfidenceLevel() != null);
    System.assert(response.getTerminationDates().get(0).getText() != null);
    System.assert(response.getTerminationDates().get(0).getTextNormalized() != null);
    System.assert(response.getTerminationDates().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getTerminationDates().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTerminationDates().get(0).getLocation().getXEnd() != null);
    System.assert(response.getContractTypes().get(0).getConfidenceLevel() != null);
    System.assert(response.getContractTypes().get(0).getText() != null);
    System.assert(response.getContractTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getContractTypes().get(0).getLocation().getXBegin() != null);
    System.assert(response.getContractTypes().get(0).getLocation().getXEnd() != null);
    System.assert(response.getContractTerms().get(0).getConfidenceLevel() != null);
    System.assert(response.getContractTerms().get(0).getText() != null);
    System.assert(response.getContractTerms().get(0).getTextNormalized() != null);
    System.assert(response.getContractTerms().get(0).getInterpretation().getValue() != null);
    System.assert(response.getContractTerms().get(0).getInterpretation().getNumericValue() != null);
    System.assert(response.getContractTerms().get(0).getInterpretation().getUnit() != null);
    System.assert(response.getContractTerms().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getContractTerms().get(0).getLocation().getXBegin() != null);
    System.assert(response.getContractTerms().get(0).getLocation().getXEnd() != null);
    System.assert(response.getPaymentTerms().get(0).getConfidenceLevel() != null);
    System.assert(response.getPaymentTerms().get(0).getText() != null);
    System.assert(response.getPaymentTerms().get(0).getTextNormalized() != null);
    System.assert(response.getPaymentTerms().get(0).getInterpretation().getValue() != null);
    System.assert(response.getPaymentTerms().get(0).getInterpretation().getNumericValue() != null);
    System.assert(response.getPaymentTerms().get(0).getInterpretation().getUnit() != null);
    System.assert(response.getPaymentTerms().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getPaymentTerms().get(0).getLocation().getXBegin() != null);
    System.assert(response.getPaymentTerms().get(0).getLocation().getXEnd() != null);
    System.assert(response.getContractCurrencies().get(0).getConfidenceLevel() != null);
    System.assert(response.getContractCurrencies().get(0).getText() != null);
    System.assert(response.getContractCurrencies().get(0).getTextNormalized() != null);
    System.assert(response.getContractCurrencies().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getContractCurrencies().get(0).getLocation().getXBegin() != null);
    System.assert(response.getContractCurrencies().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getText() != null);
    System.assert(response.getTables().get(0).getSectionTitle().getText() != null);
    System.assert(response.getTables().get(0).getSectionTitle().getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getSectionTitle().getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getTitle().getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getTitle().getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getTitle().getText() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getText() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getText() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getTextNormalized() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getText() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getTextNormalized() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getText() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowHeaderIds().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowHeaderTexts().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowHeaderTextsNormalized().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnHeaderIds().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTexts().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTextsNormalized().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getXType() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getText() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getContexts().get(0).getText() != null);
    System.assert(response.getTables().get(0).getContexts().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getContexts().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getCellId() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getText() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getText() != null);
    System.assert(response.getDocumentStructure().getSectionTitles().get(0).getText() != null);
    System.assert(response.getDocumentStructure().getSectionTitles().get(0).getLocation().getXBegin() != null);
    System.assert(response.getDocumentStructure().getSectionTitles().get(0).getLocation().getXEnd() != null);
    System.assert(response.getDocumentStructure().getSectionTitles().get(0).getLevel() != null);
    System.assert(response.getDocumentStructure().getSectionTitles().get(0).getElementLocations().get(0).getXBegin() != null);
    System.assert(response.getDocumentStructure().getSectionTitles().get(0).getElementLocations().get(0).getXEnd() != null);
    System.assert(response.getDocumentStructure().getLeadingSentences().get(0).getText() != null);
    System.assert(response.getDocumentStructure().getLeadingSentences().get(0).getLocation().getXBegin() != null);
    System.assert(response.getDocumentStructure().getLeadingSentences().get(0).getLocation().getXEnd() != null);
    System.assert(response.getDocumentStructure().getLeadingSentences().get(0).getElementLocations().get(0).getXBegin() != null);
    System.assert(response.getDocumentStructure().getLeadingSentences().get(0).getElementLocations().get(0).getXEnd() != null);
    System.assert(response.getDocumentStructure().getParagraphs().get(0).getLocation().getXBegin() != null);
    System.assert(response.getDocumentStructure().getParagraphs().get(0).getLocation().getXEnd() != null);
    System.assert(response.getParties().get(0).getParty() != null);
    System.assert(response.getParties().get(0).getRole() != null);
    System.assert(response.getParties().get(0).getImportance() != null);
    System.assert(response.getParties().get(0).getAddresses().get(0).getText() != null);
    System.assert(response.getParties().get(0).getAddresses().get(0).getLocation().getXBegin() != null);
    System.assert(response.getParties().get(0).getAddresses().get(0).getLocation().getXEnd() != null);
    System.assert(response.getParties().get(0).getContacts().get(0).getName() != null);
    System.assert(response.getParties().get(0).getContacts().get(0).getRole() != null);
    System.assert(response.getParties().get(0).getMentions().get(0).getText() != null);
    System.assert(response.getParties().get(0).getMentions().get(0).getLocation().getXBegin() != null);
    System.assert(response.getParties().get(0).getMentions().get(0).getLocation().getXEnd() != null);

    Test.stopTest();
  }
  static testMethod void testExtractTables() {
    String mockResponseBody = '{"document": {"html": "html", "title": "title", "hash": "hash"}, "model_id": "modelId", "model_version": "modelVersion", "tables": [{"location": {"begin": "6", "end": "4"}, "text": "text", "section_title": {"text": "text", "location": {"begin": "6", "end": "4"}}, "title": {"location": {"begin": "6", "end": "4"}, "text": "text"}, "table_headers": [{"cell_id": "cellId", "text": "text", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14"}], "row_headers": [{"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text", "text_normalized": "textNormalized", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14"}], "column_headers": [{"cell_id": "cellId", "text": "text", "text_normalized": "textNormalized", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14"}], "body_cells": [{"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text", "row_index_begin": "13", "row_index_end": "11", "column_index_begin": "16", "column_index_end": "14", "row_header_ids": ["rowHeaderIds"], "row_header_texts": ["rowHeaderTexts"], "row_header_texts_normalized": ["rowHeaderTextsNormalized"], "column_header_ids": ["columnHeaderIds"], "column_header_texts": ["columnHeaderTexts"], "column_header_texts_normalized": ["columnHeaderTextsNormalized"], "attributes": [{"type": "xType", "text": "text", "location": {"begin": "6", "end": "4"}}]}], "contexts": [{"text": "text", "location": {"begin": "6", "end": "4"}}], "key_value_pairs": [{"key": {"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text"}, "value": [{"cell_id": "cellId", "location": {"begin": "6", "end": "4"}, "text": "text"}]}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.ExtractTablesOptions extractTablesOptionsModel = new IBMCompareComplyV1Models.ExtractTablesOptionsBuilder()
      .file(mockFile)
      .fileContentType('application/pdf')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.TableReturn response = service.extractTables(extractTablesOptionsModel);
    System.assert(response.getDocument().getHtml() != null);
    System.assert(response.getDocument().getTitle() != null);
    System.assert(response.getDocument().getHash() != null);
    System.assert(response.getModelId() != null);
    System.assert(response.getModelVersion() != null);
    System.assert(response.getTables().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getText() != null);
    System.assert(response.getTables().get(0).getSectionTitle().getText() != null);
    System.assert(response.getTables().get(0).getSectionTitle().getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getSectionTitle().getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getTitle().getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getTitle().getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getTitle().getText() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getText() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getTableHeaders().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getText() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getTextNormalized() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getRowHeaders().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getText() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getTextNormalized() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getColumnHeaders().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getText() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowIndexBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowIndexEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnIndexBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnIndexEnd() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowHeaderIds().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowHeaderTexts().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getRowHeaderTextsNormalized().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnHeaderIds().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTexts().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getColumnHeaderTextsNormalized().get(0) != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getXType() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getText() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getBodyCells().get(0).getAttributes().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getContexts().get(0).getText() != null);
    System.assert(response.getTables().get(0).getContexts().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getContexts().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getCellId() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getKey().getText() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getCellId() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXBegin() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getLocation().getXEnd() != null);
    System.assert(response.getTables().get(0).getKeyValuePairs().get(0).getValue().get(0).getText() != null);

    Test.stopTest();
  }
  static testMethod void testCompareDocuments() {
    String mockResponseBody = '{"model_id": "modelId", "model_version": "modelVersion", "documents": [{"title": "title", "html": "html", "hash": "hash", "label": "label"}], "aligned_elements": [{"element_pair": [{"document_label": "documentLabel", "text": "text", "location": {"begin": "6", "end": "4"}, "types": [{"label": {"nature": "nature", "party": "party"}}], "categories": [{"label": "label"}], "attributes": [{"type": "xType", "text": "text", "location": {"begin": "6", "end": "4"}}]}], "identical_text": false, "provenance_ids": ["provenanceIds"], "significant_elements": false}], "unaligned_elements": [{"document_label": "documentLabel", "location": {"begin": "6", "end": "4"}, "text": "text", "types": [{"label": {"nature": "nature", "party": "party"}}], "categories": [{"label": "label"}], "attributes": [{"type": "xType", "text": "text", "location": {"begin": "6", "end": "4"}}]}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.CompareDocumentsOptions compareDocumentsOptionsModel = new IBMCompareComplyV1Models.CompareDocumentsOptionsBuilder()
      .file1(mockFile)
      .file2(mockFile)
      .file1ContentType('application/pdf')
      .file2ContentType('application/pdf')
      .file1Label('testString')
      .file2Label('testString')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.CompareReturn response = service.compareDocuments(compareDocumentsOptionsModel);
    System.assert(response.getModelId() != null);
    System.assert(response.getModelVersion() != null);
    System.assert(response.getDocuments().get(0).getTitle() != null);
    System.assert(response.getDocuments().get(0).getHtml() != null);
    System.assert(response.getDocuments().get(0).getHash() != null);
    System.assert(response.getDocuments().get(0).getLabel() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getDocumentLabel() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getText() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getLocation().getXBegin() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getLocation().getXEnd() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getCategories().get(0).getLabel() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getXType() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getText() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getLocation().getXBegin() != null);
    System.assert(response.getAlignedElements().get(0).getElementPair().get(0).getAttributes().get(0).getLocation().getXEnd() != null);
    System.assert(response.getAlignedElements().get(0).getIdenticalText() != null);
    System.assert(response.getAlignedElements().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getAlignedElements().get(0).getSignificantElements() != null);
    System.assert(response.getUnalignedElements().get(0).getDocumentLabel() != null);
    System.assert(response.getUnalignedElements().get(0).getLocation().getXBegin() != null);
    System.assert(response.getUnalignedElements().get(0).getLocation().getXEnd() != null);
    System.assert(response.getUnalignedElements().get(0).getText() != null);
    System.assert(response.getUnalignedElements().get(0).getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getUnalignedElements().get(0).getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getUnalignedElements().get(0).getCategories().get(0).getLabel() != null);
    System.assert(response.getUnalignedElements().get(0).getAttributes().get(0).getXType() != null);
    System.assert(response.getUnalignedElements().get(0).getAttributes().get(0).getText() != null);
    System.assert(response.getUnalignedElements().get(0).getAttributes().get(0).getLocation().getXBegin() != null);
    System.assert(response.getUnalignedElements().get(0).getAttributes().get(0).getLocation().getXEnd() != null);

    Test.stopTest();
  }
  static testMethod void testAddFeedback() {
    String mockResponseBody = '{"feedback_id": "feedbackId", "user_id": "userId", "comment": "comment", "created": "2017-05-16T13:56:54.957Z", "feedback_data": {"feedback_type": "feedbackType", "document": {"title": "title", "hash": "hash"}, "model_id": "modelId", "model_version": "modelVersion", "location": {"begin": "6", "end": "4"}, "text": "text", "original_labels": {"types": [{"label": {"nature": "nature", "party": "party"}, "provenance_ids": ["provenanceIds"]}], "categories": [{"label": "label", "provenance_ids": ["provenanceIds"]}], "modification": "modification"}, "updated_labels": {"types": [{"label": {"nature": "nature", "party": "party"}, "provenance_ids": ["provenanceIds"]}], "categories": [{"label": "label", "provenance_ids": ["provenanceIds"]}], "modification": "modification"}, "pagination": {"refresh_cursor": "refreshCursor", "next_cursor": "nextCursor", "refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5"}}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.Category categoryModel = new IBMCompareComplyV1Models.CategoryBuilder()
      .label('Amendments')
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.Label labelModel = new IBMCompareComplyV1Models.LabelBuilder()
      .nature('testString')
      .party('testString')
      .build();
    IBMCompareComplyV1Models.TypeLabel typeLabelModel = new IBMCompareComplyV1Models.TypeLabelBuilder()
      .label(labelModel)
      .provenanceIds(new List<String> { 'testString' })
      .build();
    IBMCompareComplyV1Models.UpdatedLabelsIn updatedLabelsInModel = new IBMCompareComplyV1Models.UpdatedLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    IBMCompareComplyV1Models.OriginalLabelsIn originalLabelsInModel = new IBMCompareComplyV1Models.OriginalLabelsInBuilder()
      .types(new List<IBMCompareComplyV1Models.TypeLabel> { typeLabelModel })
      .categories(new List<IBMCompareComplyV1Models.Category> { categoryModel })
      .build();
    IBMCompareComplyV1Models.Location locationModel = new IBMCompareComplyV1Models.LocationBuilder()
      .xBegin(26L)
      .xEnd(26L)
      .build();
    IBMCompareComplyV1Models.ShortDoc shortDocModel = new IBMCompareComplyV1Models.ShortDocBuilder()
      .title('testString')
      .hash('testString')
      .build();
    IBMCompareComplyV1Models.FeedbackDataInput feedbackDataInputModel = new IBMCompareComplyV1Models.FeedbackDataInputBuilder()
      .feedbackType('testString')
      .document(shortDocModel)
      .modelId('testString')
      .modelVersion('testString')
      .location(locationModel)
      .text('testString')
      .originalLabels(originalLabelsInModel)
      .updatedLabels(updatedLabelsInModel)
      .build();
    IBMCompareComplyV1Models.AddFeedbackOptions addFeedbackOptionsModel = new IBMCompareComplyV1Models.AddFeedbackOptionsBuilder()
      .feedbackData(feedbackDataInputModel)
      .userId('testString')
      .comment('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.FeedbackReturn response = service.addFeedback(addFeedbackOptionsModel);
    System.assert(response.getFeedbackId() != null);
    System.assert(response.getUserId() != null);
    System.assert(response.getComment() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getFeedbackData().getFeedbackType() != null);
    System.assert(response.getFeedbackData().getDocument().getTitle() != null);
    System.assert(response.getFeedbackData().getDocument().getHash() != null);
    System.assert(response.getFeedbackData().getModelId() != null);
    System.assert(response.getFeedbackData().getModelVersion() != null);
    System.assert(response.getFeedbackData().getLocation().getXBegin() != null);
    System.assert(response.getFeedbackData().getLocation().getXEnd() != null);
    System.assert(response.getFeedbackData().getText() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getModification() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getModification() != null);
    System.assert(response.getFeedbackData().getPagination().getRefreshCursor() != null);
    System.assert(response.getFeedbackData().getPagination().getNextCursor() != null);
    System.assert(response.getFeedbackData().getPagination().getRefreshUrl() != null);
    System.assert(response.getFeedbackData().getPagination().getNextUrl() != null);
    System.assert(response.getFeedbackData().getPagination().getTotal() != null);

    Test.stopTest();
  }
  static testMethod void testListFeedback() {
    String mockResponseBody = '{"feedback": [{"feedback_id": "feedbackId", "created": "2017-05-16T13:56:54.957Z", "comment": "comment", "feedback_data": {"feedback_type": "feedbackType", "document": {"title": "title", "hash": "hash"}, "model_id": "modelId", "model_version": "modelVersion", "location": {"begin": "6", "end": "4"}, "text": "text", "original_labels": {"types": [{"label": {"nature": "nature", "party": "party"}, "provenance_ids": ["provenanceIds"]}], "categories": [{"label": "label", "provenance_ids": ["provenanceIds"]}], "modification": "modification"}, "updated_labels": {"types": [{"label": {"nature": "nature", "party": "party"}, "provenance_ids": ["provenanceIds"]}], "categories": [{"label": "label", "provenance_ids": ["provenanceIds"]}], "modification": "modification"}, "pagination": {"refresh_cursor": "refreshCursor", "next_cursor": "nextCursor", "refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5"}}}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.ListFeedbackOptions listFeedbackOptionsModel = new IBMCompareComplyV1Models.ListFeedbackOptionsBuilder()
      .feedbackType('testString')
      .before((Datetime) JSON.deserialize('"2019-01-01"', Datetime.class))
      .after((Datetime) JSON.deserialize('"2019-01-01"', Datetime.class))
      .documentTitle('testString')
      .modelId('testString')
      .modelVersion('testString')
      .categoryRemoved('testString')
      .categoryAdded('testString')
      .categoryNotChanged('testString')
      .typeRemoved('testString')
      .typeAdded('testString')
      .typeNotChanged('testString')
      .pageLimit(38)
      .cursor('testString')
      .xSort('testString')
      .includeTotal(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.FeedbackList response = service.listFeedback(listFeedbackOptionsModel);
    System.assert(response.getFeedback().get(0).getFeedbackId() != null);
    System.assert(response.getFeedback().get(0).getCreated() != null);
    System.assert(response.getFeedback().get(0).getComment() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getFeedbackType() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getDocument().getTitle() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getDocument().getHash() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getModelId() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getModelVersion() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getLocation().getXBegin() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getLocation().getXEnd() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getText() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getOriginalLabels().getModification() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getUpdatedLabels().getModification() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getPagination().getRefreshCursor() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getPagination().getNextCursor() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getPagination().getRefreshUrl() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getPagination().getNextUrl() != null);
    System.assert(response.getFeedback().get(0).getFeedbackData().getPagination().getTotal() != null);

    Test.stopTest();
  }
  static testMethod void testGetFeedback() {
    String mockResponseBody = '{"feedback_id": "feedbackId", "created": "2017-05-16T13:56:54.957Z", "comment": "comment", "feedback_data": {"feedback_type": "feedbackType", "document": {"title": "title", "hash": "hash"}, "model_id": "modelId", "model_version": "modelVersion", "location": {"begin": "6", "end": "4"}, "text": "text", "original_labels": {"types": [{"label": {"nature": "nature", "party": "party"}, "provenance_ids": ["provenanceIds"]}], "categories": [{"label": "label", "provenance_ids": ["provenanceIds"]}], "modification": "modification"}, "updated_labels": {"types": [{"label": {"nature": "nature", "party": "party"}, "provenance_ids": ["provenanceIds"]}], "categories": [{"label": "label", "provenance_ids": ["provenanceIds"]}], "modification": "modification"}, "pagination": {"refresh_cursor": "refreshCursor", "next_cursor": "nextCursor", "refresh_url": "refreshUrl", "next_url": "nextUrl", "total": "5"}}}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.GetFeedbackOptions getFeedbackOptionsModel = new IBMCompareComplyV1Models.GetFeedbackOptionsBuilder()
      .feedbackId('testString')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.GetFeedback response = service.getFeedback(getFeedbackOptionsModel);
    System.assert(response.getFeedbackId() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getComment() != null);
    System.assert(response.getFeedbackData().getFeedbackType() != null);
    System.assert(response.getFeedbackData().getDocument().getTitle() != null);
    System.assert(response.getFeedbackData().getDocument().getHash() != null);
    System.assert(response.getFeedbackData().getModelId() != null);
    System.assert(response.getFeedbackData().getModelVersion() != null);
    System.assert(response.getFeedbackData().getLocation().getXBegin() != null);
    System.assert(response.getFeedbackData().getLocation().getXEnd() != null);
    System.assert(response.getFeedbackData().getText() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getCategories().get(0).getLabel() != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getCategories().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getOriginalLabels().getModification() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getNature() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getLabel().getParty() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getTypes().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getLabel() != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getCategories().get(0).getProvenanceIds().get(0) != null);
    System.assert(response.getFeedbackData().getUpdatedLabels().getModification() != null);
    System.assert(response.getFeedbackData().getPagination().getRefreshCursor() != null);
    System.assert(response.getFeedbackData().getPagination().getNextCursor() != null);
    System.assert(response.getFeedbackData().getPagination().getRefreshUrl() != null);
    System.assert(response.getFeedbackData().getPagination().getNextUrl() != null);
    System.assert(response.getFeedbackData().getPagination().getTotal() != null);

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

    IBMCompareComplyV1Models.DeleteFeedbackOptions deleteFeedbackOptionsModel = new IBMCompareComplyV1Models.DeleteFeedbackOptionsBuilder()
      .feedbackId('testString')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteFeedback(deleteFeedbackOptionsModel);

    Test.stopTest();
  }
  static testMethod void testCreateBatch() {
    String mockResponseBody = '{"function": "function", "input_bucket_location": "inputBucketLocation", "input_bucket_name": "inputBucketName", "output_bucket_location": "outputBucketLocation", "output_bucket_name": "outputBucketName", "batch_id": "batchId", "document_counts": {"total": "5", "pending": "7", "successful": "10", "failed": "6"}, "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.CreateBatchOptions createBatchOptionsModel = new IBMCompareComplyV1Models.CreateBatchOptionsBuilder()
      .function('html_conversion')
      .inputCredentialsFile(mockFile)
      .inputBucketLocation('testString')
      .inputBucketName('testString')
      .outputCredentialsFile(mockFile)
      .outputBucketLocation('testString')
      .outputBucketName('testString')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.BatchStatus response = service.createBatch(createBatchOptionsModel);
    System.assert(response.getFunction() != null);
    System.assert(response.getInputBucketLocation() != null);
    System.assert(response.getInputBucketName() != null);
    System.assert(response.getOutputBucketLocation() != null);
    System.assert(response.getOutputBucketName() != null);
    System.assert(response.getBatchId() != null);
    System.assert(response.getDocumentCounts().getTotal() != null);
    System.assert(response.getDocumentCounts().getPending() != null);
    System.assert(response.getDocumentCounts().getSuccessful() != null);
    System.assert(response.getDocumentCounts().getFailed() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testListBatches() {
    String mockResponseBody = '{"batches": [{"function": "function", "input_bucket_location": "inputBucketLocation", "input_bucket_name": "inputBucketName", "output_bucket_location": "outputBucketLocation", "output_bucket_name": "outputBucketName", "batch_id": "batchId", "document_counts": {"total": "5", "pending": "7", "successful": "10", "failed": "6"}, "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.ListBatchesOptions listBatchesOptionsModel = new IBMCompareComplyV1Models.ListBatchesOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.Batches response = service.listBatches(listBatchesOptionsModel);
    System.assert(response.getBatches().get(0).getFunction() != null);
    System.assert(response.getBatches().get(0).getInputBucketLocation() != null);
    System.assert(response.getBatches().get(0).getInputBucketName() != null);
    System.assert(response.getBatches().get(0).getOutputBucketLocation() != null);
    System.assert(response.getBatches().get(0).getOutputBucketName() != null);
    System.assert(response.getBatches().get(0).getBatchId() != null);
    System.assert(response.getBatches().get(0).getDocumentCounts().getTotal() != null);
    System.assert(response.getBatches().get(0).getDocumentCounts().getPending() != null);
    System.assert(response.getBatches().get(0).getDocumentCounts().getSuccessful() != null);
    System.assert(response.getBatches().get(0).getDocumentCounts().getFailed() != null);
    System.assert(response.getBatches().get(0).getStatus() != null);
    System.assert(response.getBatches().get(0).getCreated() != null);
    System.assert(response.getBatches().get(0).getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testGetBatch() {
    String mockResponseBody = '{"function": "function", "input_bucket_location": "inputBucketLocation", "input_bucket_name": "inputBucketName", "output_bucket_location": "outputBucketLocation", "output_bucket_name": "outputBucketName", "batch_id": "batchId", "document_counts": {"total": "5", "pending": "7", "successful": "10", "failed": "6"}, "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.GetBatchOptions getBatchOptionsModel = new IBMCompareComplyV1Models.GetBatchOptionsBuilder()
      .batchId('testString')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.BatchStatus response = service.getBatch(getBatchOptionsModel);
    System.assert(response.getFunction() != null);
    System.assert(response.getInputBucketLocation() != null);
    System.assert(response.getInputBucketName() != null);
    System.assert(response.getOutputBucketLocation() != null);
    System.assert(response.getOutputBucketName() != null);
    System.assert(response.getBatchId() != null);
    System.assert(response.getDocumentCounts().getTotal() != null);
    System.assert(response.getDocumentCounts().getPending() != null);
    System.assert(response.getDocumentCounts().getSuccessful() != null);
    System.assert(response.getDocumentCounts().getFailed() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
  static testMethod void testUpdateBatch() {
    String mockResponseBody = '{"function": "function", "input_bucket_location": "inputBucketLocation", "input_bucket_name": "inputBucketName", "output_bucket_location": "outputBucketLocation", "output_bucket_name": "outputBucketName", "batch_id": "batchId", "document_counts": {"total": "5", "pending": "7", "successful": "10", "failed": "6"}, "status": "status", "created": "2017-05-16T13:56:54.957Z", "updated": "2017-05-16T13:56:54.957Z"}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMCompareComplyV1Models.UpdateBatchOptions updateBatchOptionsModel = new IBMCompareComplyV1Models.UpdateBatchOptionsBuilder()
      .batchId('testString')
      .action('rescan')
      .model('contracts')
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMCompareComplyV1Models.BatchStatus response = service.updateBatch(updateBatchOptionsModel);
    System.assert(response.getFunction() != null);
    System.assert(response.getInputBucketLocation() != null);
    System.assert(response.getInputBucketName() != null);
    System.assert(response.getOutputBucketLocation() != null);
    System.assert(response.getOutputBucketName() != null);
    System.assert(response.getBatchId() != null);
    System.assert(response.getDocumentCounts().getTotal() != null);
    System.assert(response.getDocumentCounts().getPending() != null);
    System.assert(response.getDocumentCounts().getSuccessful() != null);
    System.assert(response.getDocumentCounts().getFailed() != null);
    System.assert(response.getStatus() != null);
    System.assert(response.getCreated() != null);
    System.assert(response.getUpdated() != null);

    Test.stopTest();
  }
}
