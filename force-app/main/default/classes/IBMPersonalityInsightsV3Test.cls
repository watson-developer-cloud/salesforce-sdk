@isTest
private class IBMPersonalityInsightsV3Test {
  private static IBMPersonalityInsightsV3 service;

  static {
    service = new IBMPersonalityInsightsV3('2017-10-13', new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testBehaviorModel() {
    Test.startTest();
    String traitId = 'trait_id';
    String name = 'name';
    String category = 'category';
    Double percentage = 0.5;

    IBMPersonalityInsightsV3Models.Behavior testRequestModel = new IBMPersonalityInsightsV3Models.Behavior();
    testRequestModel.setTraitId(traitId);
    testRequestModel.setName(name);
    testRequestModel.setCategory(category);
    testRequestModel.setPercentage(percentage);

    System.assertEquals(traitId, testRequestModel.getTraitId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(category, testRequestModel.getCategory());
    System.assertEquals(percentage, testRequestModel.getPercentage());
    Test.stopTest();
  }
  static testMethod void testConsumptionPreferencesModel() {
    Test.startTest();
    String consumptionPreferenceId = 'consumption_preference_id';
    String name = 'name';
    Double score = 0.5;

    IBMPersonalityInsightsV3Models.ConsumptionPreferences testRequestModel = new IBMPersonalityInsightsV3Models.ConsumptionPreferences();
    testRequestModel.setConsumptionPreferenceId(consumptionPreferenceId);
    testRequestModel.setName(name);
    testRequestModel.setScore(score);

    System.assertEquals(consumptionPreferenceId, testRequestModel.getConsumptionPreferenceId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(score, testRequestModel.getScore());
    Test.stopTest();
  }
  static testMethod void testConsumptionPreferencesCategoryModel() {
    Test.startTest();
    String consumptionPreferenceCategoryId = 'consumption_preference_category_id';
    String name = 'name';
    String consumptionPreferenceId = 'consumption_preference_id';
    Double score = 0.5;
    IBMPersonalityInsightsV3Models.ConsumptionPreferences consumptionPreferencesItem = new IBMPersonalityInsightsV3Models.ConsumptionPreferences();
    consumptionPreferencesItem.setConsumptionPreferenceId(consumptionPreferenceId);
    consumptionPreferencesItem.setName(name);
    consumptionPreferencesItem.setScore(score);
    List<IBMPersonalityInsightsV3Models.ConsumptionPreferences> consumptionPreferences = new List<IBMPersonalityInsightsV3Models.ConsumptionPreferences> { consumptionPreferencesItem } ;

    IBMPersonalityInsightsV3Models.ConsumptionPreferencesCategory testRequestModel = new IBMPersonalityInsightsV3Models.ConsumptionPreferencesCategory();
    testRequestModel.setConsumptionPreferenceCategoryId(consumptionPreferenceCategoryId);
    testRequestModel.setName(name);
    testRequestModel.setConsumptionPreferences(consumptionPreferences);

    System.assertEquals(consumptionPreferenceCategoryId, testRequestModel.getConsumptionPreferenceCategoryId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(consumptionPreferences, testRequestModel.getConsumptionPreferences());
    Test.stopTest();
  }
  static testMethod void testContentModel() {
    Test.startTest();
    String nestedContent = 'nested_content';
    IBMPersonalityInsightsV3Models.ContentItem contentItemsItem = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content(nestedContent)
      .build();
    List<IBMPersonalityInsightsV3Models.ContentItem> contentItems = new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemsItem } ;

    IBMPersonalityInsightsV3Models.Content testRequestModel = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(contentItems)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(contentItems, testRequestModel.contentItems());
    Test.stopTest();
  }
  static testMethod void testContentItemModel() {
    Test.startTest();
    String content = 'content';
    String id = 'id';
    Long created = 10L;
    Long updated = 10L;
    String contenttype = 'contenttype';
    String language = 'language';
    String parentid = 'parentid';
    Boolean reply = true;
    Boolean forward = true;

    IBMPersonalityInsightsV3Models.ContentItem testRequestModel = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content(content)
      .id(id)
      .created(created)
      .updated(updated)
      .contenttype(contenttype)
      .language(language)
      .parentid(parentid)
      .reply(reply)
      .forward(forward)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(content, testRequestModel.content());
    System.assertEquals(id, testRequestModel.id());
    System.assertEquals(created, testRequestModel.created());
    System.assertEquals(updated, testRequestModel.updated());
    System.assertEquals(contenttype, testRequestModel.contenttype());
    System.assertEquals(language, testRequestModel.language());
    System.assertEquals(parentid, testRequestModel.parentid());
    System.assertEquals(reply, testRequestModel.reply());
    System.assertEquals(forward, testRequestModel.forward());
    Test.stopTest();
  }
  static testMethod void testProfileModel() {
    Test.startTest();
    String processedLanguage = 'processed_language';
    Long wordCount = 10L;
    String wordCountMessage = 'word_count_message';
    String traitId = 'trait_id';
    String name = 'name';
    String category = 'category';
    Double percentile = 0.5;
    IBMPersonalityInsightsV3Models.Trait personalityItem = new IBMPersonalityInsightsV3Models.Trait();
    personalityItem.setTraitId(traitId);
    personalityItem.setName(name);
    personalityItem.setCategory(category);
    personalityItem.setPercentile(percentile);
    List<IBMPersonalityInsightsV3Models.Trait> personality = new List<IBMPersonalityInsightsV3Models.Trait> { personalityItem } ;
    IBMPersonalityInsightsV3Models.Trait needsItem = new IBMPersonalityInsightsV3Models.Trait();
    needsItem.setTraitId(traitId);
    needsItem.setName(name);
    needsItem.setCategory(category);
    needsItem.setPercentile(percentile);
    List<IBMPersonalityInsightsV3Models.Trait> needs = new List<IBMPersonalityInsightsV3Models.Trait> { needsItem } ;
    IBMPersonalityInsightsV3Models.Trait valuesItem = new IBMPersonalityInsightsV3Models.Trait();
    valuesItem.setTraitId(traitId);
    valuesItem.setName(name);
    valuesItem.setCategory(category);
    valuesItem.setPercentile(percentile);
    List<IBMPersonalityInsightsV3Models.Trait> values = new List<IBMPersonalityInsightsV3Models.Trait> { valuesItem } ;
    Double percentage = 0.5;
    IBMPersonalityInsightsV3Models.Behavior behaviorItem = new IBMPersonalityInsightsV3Models.Behavior();
    behaviorItem.setTraitId(traitId);
    behaviorItem.setName(name);
    behaviorItem.setCategory(category);
    behaviorItem.setPercentage(percentage);
    List<IBMPersonalityInsightsV3Models.Behavior> behavior = new List<IBMPersonalityInsightsV3Models.Behavior> { behaviorItem } ;
    String consumptionPreferenceCategoryId = 'consumption_preference_category_id';
    String consumptionPreferenceId = 'consumption_preference_id';
    Double score = 0.5;
    IBMPersonalityInsightsV3Models.ConsumptionPreferences nestedConsumptionPreferencesItem = new IBMPersonalityInsightsV3Models.ConsumptionPreferences();
    nestedConsumptionPreferencesItem.setConsumptionPreferenceId(consumptionPreferenceId);
    nestedConsumptionPreferencesItem.setName(name);
    nestedConsumptionPreferencesItem.setScore(score);
    List<IBMPersonalityInsightsV3Models.ConsumptionPreferences> nestedConsumptionPreferences = new List<IBMPersonalityInsightsV3Models.ConsumptionPreferences> { nestedConsumptionPreferencesItem } ;
    IBMPersonalityInsightsV3Models.ConsumptionPreferencesCategory consumptionPreferencesItem = new IBMPersonalityInsightsV3Models.ConsumptionPreferencesCategory();
    consumptionPreferencesItem.setConsumptionPreferenceCategoryId(consumptionPreferenceCategoryId);
    consumptionPreferencesItem.setName(name);
    consumptionPreferencesItem.setConsumptionPreferences(nestedConsumptionPreferences);
    List<IBMPersonalityInsightsV3Models.ConsumptionPreferencesCategory> consumptionPreferences = new List<IBMPersonalityInsightsV3Models.ConsumptionPreferencesCategory> { consumptionPreferencesItem } ;
    String warningId = 'warning_id';
    String message = 'message';
    IBMPersonalityInsightsV3Models.Warning warningsItem = new IBMPersonalityInsightsV3Models.Warning();
    warningsItem.setWarningId(warningId);
    warningsItem.setMessage(message);
    List<IBMPersonalityInsightsV3Models.Warning> warnings = new List<IBMPersonalityInsightsV3Models.Warning> { warningsItem } ;

    IBMPersonalityInsightsV3Models.Profile testRequestModel = new IBMPersonalityInsightsV3Models.Profile();
    testRequestModel.setProcessedLanguage(processedLanguage);
    testRequestModel.setWordCount(wordCount);
    testRequestModel.setWordCountMessage(wordCountMessage);
    testRequestModel.setPersonality(personality);
    testRequestModel.setNeeds(needs);
    testRequestModel.setValues(values);
    testRequestModel.setBehavior(behavior);
    testRequestModel.setConsumptionPreferences(consumptionPreferences);
    testRequestModel.setWarnings(warnings);

    System.assertEquals(processedLanguage, testRequestModel.getProcessedLanguage());
    System.assertEquals(wordCount, testRequestModel.getWordCount());
    System.assertEquals(wordCountMessage, testRequestModel.getWordCountMessage());
    System.assertEquals(personality, testRequestModel.getPersonality());
    System.assertEquals(needs, testRequestModel.getNeeds());
    System.assertEquals(values, testRequestModel.getValues());
    System.assertEquals(behavior, testRequestModel.getBehavior());
    System.assertEquals(consumptionPreferences, testRequestModel.getConsumptionPreferences());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    Test.stopTest();
  }
  static testMethod void testProfileOptionsModel() {
    Test.startTest();
    String html = 'html';
    String nestedContent = 'nested_content';
    IBMPersonalityInsightsV3Models.ContentItem contentItemsItem = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content(nestedContent)
      .build();
    List<IBMPersonalityInsightsV3Models.ContentItem> contentItems = new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemsItem } ;
    IBMPersonalityInsightsV3Models.Content content = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(contentItems)
      .build();
    String body = 'body';
    String contentType = 'content_type';
    String contentLanguage = 'content_language';
    String acceptLanguage = 'accept_language';
    Boolean rawScores = true;
    Boolean csvHeaders = true;
    Boolean consumptionPreferences = true;

    IBMPersonalityInsightsV3Models.ProfileOptions testRequestModel = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .html(html)
      .contentLanguage(contentLanguage)
      .acceptLanguage(acceptLanguage)
      .rawScores(rawScores)
      .csvHeaders(csvHeaders)
      .consumptionPreferences(consumptionPreferences)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(contentLanguage, testRequestModel.contentLanguage());
    System.assertEquals(acceptLanguage, testRequestModel.acceptLanguage());
    System.assertEquals(rawScores, testRequestModel.rawScores());
    System.assertEquals(csvHeaders, testRequestModel.csvHeaders());
    System.assertEquals(consumptionPreferences, testRequestModel.consumptionPreferences());
    Test.stopTest();
  }
  static testMethod void testTraitModel() {
    Test.startTest();
    String traitId = 'trait_id';
    String name = 'name';
    String category = 'category';
    Double percentile = 0.5;
    Double rawScore = 0.5;
    Boolean significant = true;
    IBMPersonalityInsightsV3Models.Trait childrenItem = new IBMPersonalityInsightsV3Models.Trait();
    childrenItem.setTraitId(traitId);
    childrenItem.setName(name);
    childrenItem.setCategory(category);
    childrenItem.setPercentile(percentile);
    List<IBMPersonalityInsightsV3Models.Trait> children = new List<IBMPersonalityInsightsV3Models.Trait> { childrenItem } ;

    IBMPersonalityInsightsV3Models.Trait testRequestModel = new IBMPersonalityInsightsV3Models.Trait();
    testRequestModel.setTraitId(traitId);
    testRequestModel.setName(name);
    testRequestModel.setCategory(category);
    testRequestModel.setPercentile(percentile);
    testRequestModel.setRawScore(rawScore);
    testRequestModel.setSignificant(significant);
    testRequestModel.setChildren(children);

    System.assertEquals(traitId, testRequestModel.getTraitId());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(category, testRequestModel.getCategory());
    System.assertEquals(percentile, testRequestModel.getPercentile());
    System.assertEquals(rawScore, testRequestModel.getRawScore());
    System.assertEquals(significant, testRequestModel.getSignificant());
    System.assertEquals(children, testRequestModel.getChildren());
    Test.stopTest();
  }
  static testMethod void testWarningModel() {
    Test.startTest();
    String warningId = 'warning_id';
    String message = 'message';

    IBMPersonalityInsightsV3Models.Warning testRequestModel = new IBMPersonalityInsightsV3Models.Warning();
    testRequestModel.setWarningId(warningId);
    testRequestModel.setMessage(message);

    System.assertEquals(warningId, testRequestModel.getWarningId());
    System.assertEquals(message, testRequestModel.getMessage());
    Test.stopTest();
  }


  static testMethod void testProfile() {
    String mockResponseBody = IBMWatsonMockResponses.personalityInsightsV3Profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String html = 'html';
    String nestedContent = 'nested_content';
    IBMPersonalityInsightsV3Models.ContentItem contentItemsItem = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content(nestedContent)
      .build();
    List<IBMPersonalityInsightsV3Models.ContentItem> contentItems = new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemsItem } ;
    IBMPersonalityInsightsV3Models.Content content = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(contentItems)
      .build();
    String body = 'body';
    String contentType = 'content_type';
    String contentLanguage = 'content_language';
    String acceptLanguage = 'accept_language';
    Boolean rawScores = true;
    Boolean csvHeaders = true;
    Boolean consumptionPreferences = true;

    IBMPersonalityInsightsV3Models.ProfileOptions options = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .html(html)
      .contentLanguage(contentLanguage)
      .acceptLanguage(acceptLanguage)
      .rawScores(rawScores)
      .csvHeaders(csvHeaders)
      .consumptionPreferences(consumptionPreferences)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMPersonalityInsightsV3Models.Profile response = service.profile(options);

    System.assertEquals(
      'processed_language',
      response.getProcessedLanguage()
    );
    System.assertEquals(
      10L,
      response.getWordCount()
    );
    System.assertEquals(
      'word_count_message',
      response.getWordCountMessage()
    );
    System.assertEquals(
      'trait_id',
      response.getPersonality().get(0).getTraitId()
    );
    System.assertEquals(
      'name',
      response.getPersonality().get(0).getName()
    );
    System.assertEquals(
      'category',
      response.getPersonality().get(0).getCategory()
    );
    System.assertEquals(
      0.5,
      response.getPersonality().get(0).getPercentile()
    );
    System.assertEquals(
      0.5,
      response.getPersonality().get(0).getRawScore()
    );
    System.assertEquals(
      true,
      response.getPersonality().get(0).getSignificant()
    );
    System.assertEquals(
      'trait_id',
      response.getPersonality().get(0).getChildren().get(0).getTraitId()
    );
    System.assertEquals(
      'name',
      response.getPersonality().get(0).getChildren().get(0).getName()
    );
    System.assertEquals(
      'category',
      response.getPersonality().get(0).getChildren().get(0).getCategory()
    );
    System.assertEquals(
      0.5,
      response.getPersonality().get(0).getChildren().get(0).getPercentile()
    );
    System.assertEquals(
      0.5,
      response.getPersonality().get(0).getChildren().get(0).getRawScore()
    );
    System.assertEquals(
      true,
      response.getPersonality().get(0).getChildren().get(0).getSignificant()
    );
    System.assertEquals(
      'trait_id',
      response.getNeeds().get(0).getTraitId()
    );
    System.assertEquals(
      'name',
      response.getNeeds().get(0).getName()
    );
    System.assertEquals(
      'category',
      response.getNeeds().get(0).getCategory()
    );
    System.assertEquals(
      0.5,
      response.getNeeds().get(0).getPercentile()
    );
    System.assertEquals(
      0.5,
      response.getNeeds().get(0).getRawScore()
    );
    System.assertEquals(
      true,
      response.getNeeds().get(0).getSignificant()
    );
    System.assertEquals(
      'trait_id',
      response.getNeeds().get(0).getChildren().get(0).getTraitId()
    );
    System.assertEquals(
      'name',
      response.getNeeds().get(0).getChildren().get(0).getName()
    );
    System.assertEquals(
      'category',
      response.getNeeds().get(0).getChildren().get(0).getCategory()
    );
    System.assertEquals(
      0.5,
      response.getNeeds().get(0).getChildren().get(0).getPercentile()
    );
    System.assertEquals(
      0.5,
      response.getNeeds().get(0).getChildren().get(0).getRawScore()
    );
    System.assertEquals(
      true,
      response.getNeeds().get(0).getChildren().get(0).getSignificant()
    );
    System.assertEquals(
      'trait_id',
      response.getValues().get(0).getTraitId()
    );
    System.assertEquals(
      'name',
      response.getValues().get(0).getName()
    );
    System.assertEquals(
      'category',
      response.getValues().get(0).getCategory()
    );
    System.assertEquals(
      0.5,
      response.getValues().get(0).getPercentile()
    );
    System.assertEquals(
      0.5,
      response.getValues().get(0).getRawScore()
    );
    System.assertEquals(
      true,
      response.getValues().get(0).getSignificant()
    );
    System.assertEquals(
      'trait_id',
      response.getValues().get(0).getChildren().get(0).getTraitId()
    );
    System.assertEquals(
      'name',
      response.getValues().get(0).getChildren().get(0).getName()
    );
    System.assertEquals(
      'category',
      response.getValues().get(0).getChildren().get(0).getCategory()
    );
    System.assertEquals(
      0.5,
      response.getValues().get(0).getChildren().get(0).getPercentile()
    );
    System.assertEquals(
      0.5,
      response.getValues().get(0).getChildren().get(0).getRawScore()
    );
    System.assertEquals(
      true,
      response.getValues().get(0).getChildren().get(0).getSignificant()
    );
    System.assertEquals(
      'trait_id',
      response.getBehavior().get(0).getTraitId()
    );
    System.assertEquals(
      'name',
      response.getBehavior().get(0).getName()
    );
    System.assertEquals(
      'category',
      response.getBehavior().get(0).getCategory()
    );
    System.assertEquals(
      0.5,
      response.getBehavior().get(0).getPercentage()
    );
    System.assertEquals(
      'consumption_preference_category_id',
      response.getConsumptionPreferences().get(0).getConsumptionPreferenceCategoryId()
    );
    System.assertEquals(
      'name',
      response.getConsumptionPreferences().get(0).getName()
    );
    System.assertEquals(
      'warning_id',
      response.getWarnings().get(0).getWarningId()
    );
    System.assertEquals(
      'message',
      response.getWarnings().get(0).getMessage()
    );

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

    String html = 'html';
    String nestedContent = 'nested_content';
    IBMPersonalityInsightsV3Models.ContentItem contentItemsItem = new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content(nestedContent)
      .build();
    List<IBMPersonalityInsightsV3Models.ContentItem> contentItems = new List<IBMPersonalityInsightsV3Models.ContentItem> { contentItemsItem } ;
    IBMPersonalityInsightsV3Models.Content content = new IBMPersonalityInsightsV3Models.ContentBuilder()
      .contentItems(contentItems)
      .build();
    String body = 'body';
    String contentType = 'content_type';
    String contentLanguage = 'content_language';
    String acceptLanguage = 'accept_language';
    Boolean rawScores = true;
    Boolean csvHeaders = true;
    Boolean consumptionPreferences = true;

    IBMPersonalityInsightsV3Models.ProfileOptions options = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .html(html)
      .contentLanguage(contentLanguage)
      .acceptLanguage(acceptLanguage)
      .rawScores(rawScores)
      .csvHeaders(csvHeaders)
      .consumptionPreferences(consumptionPreferences)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.profileAsCsv(options);

    Test.stopTest();
  }
}
