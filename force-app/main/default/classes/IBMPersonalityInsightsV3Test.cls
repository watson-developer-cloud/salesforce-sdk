@isTest
private class IBMPersonalityInsightsV3Test {
  /**
   * Generates a personality profile based on input text.
   *
   */
  static testMethod void testProfile() {
    String body = IBMWatsonMockResponses.profile();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMWatsonIAMOptions iamOptions = new IBMWatsonIAMOptions.Builder()
      .apiKey('apikey')
      .build();
    IBMPersonalityInsightsV3 personalityInsights = new IBMPersonalityInsightsV3('2017-09-01', iamOptions);
    //or use
    personalityInsights = new IBMPersonalityInsightsV3('2017-09-01');
    personalityInsights.setEndPoint('https://gateway.watsonplatform.net/personality-insights/api');
    IBMPersonalityInsightsV3Models.ContentItem contentItem=new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content('text/plain')
      .id('test')
      .created(1)
      .updated(1)
      .contenttype(IBMWatsonHttpMediaType.APPLICATION_JSON)
      .language('en')
      .parentid('test')
      .reply(false)
      .forward(false)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    contentItem = contentItem.newBuilder().build();
    IBMPersonalityInsightsV3Models.Content content=new IBMPersonalityInsightsV3Models.ContentBuilder()
      .addContentItems(contentItem)
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem>{contentItem})
      .build();
    // or you can use following
    content=new IBMPersonalityInsightsV3Models.ContentBuilder(new List<IBMPersonalityInsightsV3Models.ContentItem>{contentItem})
      .addContentItems(contentItem)
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem>{contentItem})
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    content = content.newBuilder().build();
    IBMPersonalityInsightsV3Models.ProfileOptions options = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .contentLanguage('en')
      .acceptLanguage('en')
      .rawScores(true)
      .consumptionPreferences(true)
      .content(content)
      .html('<html><body>test</body></html>')
      .text('test')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    IBMPersonalityInsightsV3Models.Profile resp =
      personalityInsights.profile(options);
    System.assertEquals(content.contentItems().size(), 1);
    System.assertEquals(contentItem.content(), 'text/plain');
    System.assertEquals(contentItem.contenttype(), IBMWatsonHttpMediaType.APPLICATION_JSON);
    System.assertEquals(contentItem.created(), 1);
    System.assertEquals(contentItem.updated(), 1);
    System.assertEquals(contentItem.id(), 'test');
    System.assertEquals(contentItem.parentid(), 'test');
    System.assertEquals(contentItem.language(), 'en');
    System.assertEquals(contentItem.reply(), false);
    System.assertEquals(contentItem.forward(), false);
    System.assertEquals(resp.getProcessedLanguage(), 'ar');
    System.assertEquals(resp.getPersonality()[0].getTraitId(), 'string');
    System.assertEquals(resp.getPersonality()[0].getName(), 'string');
    System.assertEquals(resp.getPersonality()[0].getCategory(), 'personality');
    System.assertEquals(resp.getPersonality()[0].getPercentile(), 0);
    System.assertEquals(resp.getPersonality()[0].getRawScore(), 0);
    System.assertEquals(resp.getPersonality()[0].getSignificant(), true);
    System.assertEquals(resp.getPersonality()[0].getChildren().size(), 1);
    System.assertEquals(resp.getValues().size(), 1);
    System.assertEquals(resp.getNeeds().size(), 1);
    System.assertEquals(resp.getBehavior()[0].getTraitId(), 'string');
    System.assertEquals(resp.getBehavior()[0].getName(), 'string');
    System.assertEquals(resp.getBehavior()[0].getCategory(), 'string');
    System.assertEquals(resp.getBehavior()[0].getPercentage(), 0);
    System.assertEquals(resp.getConsumptionPreferences()[0].getConsumptionPreferenceCategoryId(), 'string');
    System.assertEquals(resp.getConsumptionPreferences()[0].getName(), 'string');
    System.assertEquals(resp.getConsumptionPreferences()[0].getConsumptionPreferences()[0].getConsumptionPreferenceId(), 'string');
    System.assertEquals(resp.getConsumptionPreferences()[0].getConsumptionPreferences()[0].getName(), 'string');
    System.assertEquals(resp.getConsumptionPreferences()[0].getConsumptionPreferences()[0].getScore(), 0.0);
    System.assertEquals(resp.getwarnings()[0].getWarningId(), 'WORD_COUNT_MESSAGE');
    System.assertEquals(resp.getwarnings()[0].getMessage(), 'string');
    Test.stopTest();
  }

  static testMethod void testGetProfileAsCSV() {
    String body = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(200, 'Success', body, null);
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();
    IBMPersonalityInsightsV3 personalityInsights = new IBMPersonalityInsightsV3('2017-09-01', 'username', 'password');
    //or use
    personalityInsights = new IBMPersonalityInsightsV3('2017-09-01');
    personalityInsights.setUsernameAndPassword('username', 'password');
    personalityInsights.setEndPoint('https://gateway.watsonplatform.net/personality-insights/api');
    IBMPersonalityInsightsV3Models.ContentItem contentItem=new IBMPersonalityInsightsV3Models.ContentItemBuilder()
      .content('text/plain')
      .id('test')
      .created(1)
      .updated(1)
      .contenttype(IBMWatsonHttpMediaType.APPLICATION_JSON)
      .language('en')
      .parentid('test')
      .reply(false)
      .forward(false)
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    contentItem = contentItem.newBuilder().build();
    IBMPersonalityInsightsV3Models.Content content=new IBMPersonalityInsightsV3Models.ContentBuilder()
      .addContentItems(contentItem)
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem>{contentItem})
      .build();
    // or you can use following
    content=new IBMPersonalityInsightsV3Models.ContentBuilder(new List<IBMPersonalityInsightsV3Models.ContentItem>{contentItem})
      .addContentItems(contentItem)
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem>{contentItem})
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    content = content.newBuilder().build();
    IBMPersonalityInsightsV3Models.ProfileOptions options = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .contentLanguage('en')
      .acceptLanguage('en')
      .rawScores(true)
      .consumptionPreferences(true)
      .content(content)
      .html('<html><body>test</body></html>')
      .text('test')
      .build();
    //you can add more attributes using following builder method. This step is not necessary
    options = options.newBuilder().build();
    String resp = personalityInsights.getProfileAsCSV(options, true);
    Test.stopTest();
  }
}