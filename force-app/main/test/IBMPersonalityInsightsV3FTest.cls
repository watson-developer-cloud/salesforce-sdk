public with sharing class IBMPersonalityInsightsV3FTest {
  
  private static String VERSION_2017_09_01 = '2017-09-01';
  // Make sure the named credentials below is defined
  private static String NAMED_CREDENTIALS = 'callout:watson_personality_insights_v3';
  private static String URL = 'https://gateway.watsonplatform.net/personality-insights/api';
  
  public static void runAllTests(String username, String password)
  {
    testProfile(username, password);
  }
  /**
   * Generates a personality profile based on input text.
   *
   */
  public static IBMPersonalityInsightsV3Models.Profile testProfile(String username, String password) {
    IBMPersonalityInsightsV3 personalityInsights = new IBMPersonalityInsightsV3('2017-09-01');
    if (username != null && password != null) {
      personalityInsights.setEndPoint(URL);
      personalityInsights.setUsernameAndPassword(username, password);
    }
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
    IBMPersonalityInsightsV3Models.Content content=new IBMPersonalityInsightsV3Models.ContentBuilder()
      .addContentItems(contentItem)
      .contentItems(new List<IBMPersonalityInsightsV3Models.ContentItem>{contentItem})
      .build();
    IBMPersonalityInsightsV3Models.ProfileOptions options = new IBMPersonalityInsightsV3Models.ProfileOptionsBuilder()
      .contentLanguage('en')
      .acceptLanguage('en')
      .rawScores(true)
      .csvHeaders(false)
      .consumptionPreferences(true)
      .content(content)
      .html('<html><body>I love Apples not oranges</body></html>')
      .text('Salesforce is making it easier for developers to use IBM Watson\'s artificial intelligence engine within the firm\'s customer relationship management software, which could lead to some exciting new technology for advisers.' + 
             ' To kick off the annual Dreamforce conference in San Francisco, Salesforce announced a new IBM Watson SDK, or software development kit. For the non-geeks out there, SDKs help make it easier for coders to develop new features and functionality within a software like Salesforce without having to write all the underlying code.' + 
             ' This is especially useful for a program as sophisticated as Watson, and should help engineers at fintech vendors and large financial services firms create new applications for the AI engine and bring them to market faster.' + 
             'Jamie Cox, the managing principle at Harris Financial Group, which has $750 million in assets under management, has used Salesforce for 11 years, and has been waiting for the chance to use Watson\'s capabilities.' + 
             'For example, Mr. Cox thinks Watson could track a client\'s social media, spending accounts and any other data feeds plugged into Salesforce to get a more complete picture of the client and how to best serve them.' +
             'Watson could be continually working in the background to predict which clients are worrying about the markets, which clients\' risk tolerances have changed and which clients need an adjustment to their financial plan because of a life event, for example. ' +
             'Mr. Cox believes the insights Watson generates also could help determine which prospects are most worth the adviser\'s time and resources, and how to best pursue them. ' +
             'These features aren\'t available yet, but launching a Watson SDK could drastically shorten the timeline for development. When it arrives, Mr. Cox said a Watson-powered Salesforce CRM could help an adviser be more proactive, provide better service to a greater number of clients, and keep up with escalating demands from customers used to working with digital retailers like Amazon.' +
             'Salesforce first introduced AI functionality to its financial services product in March with Einstein, which tracks advisers\' communication with clients to surface new business opportunities. Mr. Cox has used Einstein, but thinks Watson offers more powerful capabilities.' +
             '\"People are automatically uncomfortable talking about their money,\" Mr. Cox said. \"As cognitive functions of computing make it easier to understand what makes people tick, we can make those conversations about money easier.\"' +
             'The partnership with Watson doesn\'t mean Salesforce is abandoning Einstein. The company launched a new tool at Dreamforce called myEinstein, which lets users create AI-powered apps and chat bots without needing any coding knowledge. Salesforce also announced a new partnership with Google that will provide the CRM with access to Google Analytics and Google\'s own AI technology.')
      .build();
    IBMPersonalityInsightsV3Models.Profile resp =
      personalityInsights.profile(options);
    System.debug('IBMNaturalLanguageUnderstandingV1FTest.testAnalyze(): '+ resp);  
    return resp;  
  }
    
}