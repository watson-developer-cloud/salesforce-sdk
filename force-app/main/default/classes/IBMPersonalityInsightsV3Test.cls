@isTest
private class IBMPersonalityInsightsV3Test {
  private static IBMPersonalityInsightsV3 service;
  private static IBMWatsonFile mockFile;

  static {
    service = new IBMPersonalityInsightsV3('2017-10-13', new IBMWatsonNoAuthAuthenticator());
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

  static testMethod void testContentModel() {
    Test.startTest();
    IBMPersonalityInsightsV3Models.ContentItem contentItemModel = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content('testString')
      .id('testString')
      .created(26L)
      .updated(26L)
      .contenttype('text/plain')
      .language('ar')
      .parentid('testString')
      .reply(true)
      .forward(true)
      .build();

    IBMPersonalityInsightsV3Models.Content testRequestModel = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemModel })
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemModel }, testRequestModel.contentItems());
    Test.stopTest();
  }
  static testMethod void testContentItemModel() {
    Test.startTest();

    IBMPersonalityInsightsV3Models.ContentItem testRequestModel = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content('testString')
      .id('testString')
      .created(26L)
      .updated(26L)
      .contenttype('text/plain')
      .language('ar')
      .parentid('testString')
      .reply(true)
      .forward(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals('testString', testRequestModel.content());
    System.assertEquals('testString', testRequestModel.id());
    System.assertEquals(26L, testRequestModel.created());
    System.assertEquals(26L, testRequestModel.updated());
    System.assertEquals('text/plain', testRequestModel.contenttype());
    System.assertEquals('ar', testRequestModel.language());
    System.assertEquals('testString', testRequestModel.parentid());
    System.assertEquals(true, testRequestModel.reply());
    System.assertEquals(true, testRequestModel.forward());
    Test.stopTest();
  }
  static testMethod void testProfileOptionsModel() {
    Test.startTest();
    IBMPersonalityInsightsV3Models.ContentItem contentItemModel = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content('testString')
      .id('testString')
      .created(26L)
      .updated(26L)
      .contenttype('text/plain')
      .language('ar')
      .parentid('testString')
      .reply(true)
      .forward(true)
      .build();
    IBMPersonalityInsightsV3Models.Content contentModel = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemModel })
      .build();

    IBMPersonalityInsightsV3Models.ProfileOptions testRequestModel = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .content(contentModel)
      .text('testString')
      .contentLanguage('ar')
      .acceptLanguage('ar')
      .rawScores(true)
      .csvHeaders(true)
      .consumptionPreferences(true)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(contentModel, testRequestModel.content());
    System.assertEquals('testString', testRequestModel.body());
    System.assertEquals('ar', testRequestModel.contentLanguage());
    System.assertEquals('ar', testRequestModel.acceptLanguage());
    System.assertEquals(true, testRequestModel.rawScores());
    System.assertEquals(true, testRequestModel.csvHeaders());
    System.assertEquals(true, testRequestModel.consumptionPreferences());
    Test.stopTest();
  }

  static testMethod void testProfile() {
    String mockResponseBody = '{"processed_language": "processedLanguage", "word_count": "9", "word_count_message": "wordCountMessage", "personality": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": []}]}]}]}]}]}]}]}]}]}], "needs": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": []}]}]}]}]}]}]}]}]}]}], "values": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": [{"trait_id": "traitId", "name": "name", "category": "category", "percentile": "10", "raw_score": "8", "significant": false, "children": []}]}]}]}]}]}]}]}]}]}], "behavior": [{"trait_id": "traitId", "name": "name", "category": "category", "percentage": "10"}], "consumption_preferences": [{"consumption_preference_category_id": "consumptionPreferenceCategoryId", "name": "name", "consumption_preferences": [{"consumption_preference_id": "consumptionPreferenceId", "name": "name", "score": "5"}]}], "warnings": [{"warning_id": "warningId", "message": "message"}]}';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMPersonalityInsightsV3Models.ContentItem contentItemModel = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content('testString')
      .id('testString')
      .created(26L)
      .updated(26L)
      .contenttype('text/plain')
      .language('ar')
      .parentid('testString')
      .reply(true)
      .forward(true)
      .build();
    IBMPersonalityInsightsV3Models.Content contentModel = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemModel })
      .build();
    IBMPersonalityInsightsV3Models.ProfileOptions profileOptionsModel = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .content(contentModel)
      .text('testString')
      .contentLanguage('ar')
      .acceptLanguage('ar')
      .rawScores(true)
      .csvHeaders(true)
      .consumptionPreferences(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMPersonalityInsightsV3Models.Profile response = service.profile(profileOptionsModel);
    System.assert(response.getProcessedLanguage() != null);
    System.assert(response.getWordCount() != null);
    System.assert(response.getWordCountMessage() != null);
    System.assert(response.getPersonality().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getPersonality().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getNeeds().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getName() != null);
    System.assert(response.getValues().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getTraitId() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getName() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getCategory() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getPercentile() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getRawScore() != null);
    System.assert(response.getValues().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren().get(0).getSignificant() != null);
    System.assert(response.getBehavior().get(0).getTraitId() != null);
    System.assert(response.getBehavior().get(0).getName() != null);
    System.assert(response.getBehavior().get(0).getCategory() != null);
    System.assert(response.getBehavior().get(0).getPercentage() != null);
    System.assert(response.getConsumptionPreferences().get(0).getConsumptionPreferenceCategoryId() != null);
    System.assert(response.getConsumptionPreferences().get(0).getName() != null);
    System.assert(response.getConsumptionPreferences().get(0).getConsumptionPreferences().get(0).getConsumptionPreferenceId() != null);
    System.assert(response.getConsumptionPreferences().get(0).getConsumptionPreferences().get(0).getName() != null);
    System.assert(response.getConsumptionPreferences().get(0).getConsumptionPreferences().get(0).getScore() != null);
    System.assert(response.getWarnings().get(0).getWarningId() != null);
    System.assert(response.getWarnings().get(0).getMessage() != null);

    Test.stopTest();
  }
  static testMethod void testProfileAsCsv() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMPersonalityInsightsV3Models.ContentItem contentItemModel = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content('testString')
      .id('testString')
      .created(26L)
      .updated(26L)
      .contenttype('text/plain')
      .language('ar')
      .parentid('testString')
      .reply(true)
      .forward(true)
      .build();
    IBMPersonalityInsightsV3Models.Content contentModel = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemModel })
      .build();
    IBMPersonalityInsightsV3Models.ProfileOptions profileOptionsModel = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .content(contentModel)
      .text('testString')
      .contentLanguage('ar')
      .acceptLanguage('ar')
      .rawScores(true)
      .csvHeaders(true)
      .consumptionPreferences(true)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.profileAsCsv(profileOptionsModel);

    Test.stopTest();
  }
}
