@isTest
private class IBMSpeechToTextV1Test {
  private static IBMSpeechToTextV1 service;

  static {
    service = new IBMSpeechToTextV1(new IBMWatsonNoAuthAuthenticator());
  }

  static testMethod void testAcousticModelModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String created = 'created';
    String updated = 'updated';
    String language = 'language';
    List<String> versions = new List<String> { 'versions' } ;
    String owner = 'owner';
    String name = 'name';
    String description = 'description';
    String baseModelName = 'base_model_name';
    String status = 'status';
    Long progress = 10L;
    String warnings = 'warnings';

    IBMSpeechToTextV1Models.AcousticModel testRequestModel = new IBMSpeechToTextV1Models.AcousticModel();
    testRequestModel.setCustomizationId(customizationId);
    testRequestModel.setCreated(created);
    testRequestModel.setUpdated(updated);
    testRequestModel.setLanguage(language);
    testRequestModel.setVersions(versions);
    testRequestModel.setOwner(owner);
    testRequestModel.setName(name);
    testRequestModel.setDescription(description);
    testRequestModel.setBaseModelName(baseModelName);
    testRequestModel.setStatus(status);
    testRequestModel.setProgress(progress);
    testRequestModel.setWarnings(warnings);

    System.assertEquals(customizationId, testRequestModel.getCustomizationId());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(updated, testRequestModel.getUpdated());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(versions, testRequestModel.getVersions());
    System.assertEquals(owner, testRequestModel.getOwner());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(baseModelName, testRequestModel.getBaseModelName());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(progress, testRequestModel.getProgress());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    Test.stopTest();
  }
  static testMethod void testAcousticModelsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    IBMSpeechToTextV1Models.AcousticModel customizationsItem = new IBMSpeechToTextV1Models.AcousticModel();
    customizationsItem.setCustomizationId(customizationId);
    List<IBMSpeechToTextV1Models.AcousticModel> customizations = new List<IBMSpeechToTextV1Models.AcousticModel> { customizationsItem } ;

    IBMSpeechToTextV1Models.AcousticModels testRequestModel = new IBMSpeechToTextV1Models.AcousticModels();
    testRequestModel.setCustomizations(customizations);

    System.assertEquals(customizations, testRequestModel.getCustomizations());
    Test.stopTest();
  }
  static testMethod void testAddAudioOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String audioName = 'audio_name';
    IBMWatsonFile audioResource = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    String containedContentType = 'contained_content_type';
    Boolean allowOverwrite = true;

    IBMSpeechToTextV1Models.AddAudioOptions testRequestModel = new IBMSpeechToTextV1Models.AddAudioOptionsBuilder()
      .customizationId(customizationId)
      .audioName(audioName)
      .audioResource(audioResource)
      .contentType(contentType)
      .containedContentType(containedContentType)
      .allowOverwrite(allowOverwrite)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(audioName, testRequestModel.audioName());
    System.assertEquals(audioResource, testRequestModel.audioResource());
    System.assertEquals(contentType, testRequestModel.contentType());
    System.assertEquals(containedContentType, testRequestModel.containedContentType());
    System.assertEquals(allowOverwrite, testRequestModel.allowOverwrite());
    Test.stopTest();
  }
  static testMethod void testAddCorpusOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String corpusName = 'corpus_name';
    IBMWatsonFile corpusFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    Boolean allowOverwrite = true;

    IBMSpeechToTextV1Models.AddCorpusOptions testRequestModel = new IBMSpeechToTextV1Models.AddCorpusOptionsBuilder()
      .customizationId(customizationId)
      .corpusName(corpusName)
      .corpusFile(corpusFile)
      .allowOverwrite(allowOverwrite)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(corpusName, testRequestModel.corpusName());
    System.assertEquals(corpusFile, testRequestModel.corpusFile());
    System.assertEquals(allowOverwrite, testRequestModel.allowOverwrite());
    Test.stopTest();
  }
  static testMethod void testAddGrammarOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';
    IBMWatsonFile grammarFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    Boolean allowOverwrite = true;

    IBMSpeechToTextV1Models.AddGrammarOptions testRequestModel = new IBMSpeechToTextV1Models.AddGrammarOptionsBuilder()
      .customizationId(customizationId)
      .grammarName(grammarName)
      .grammarFile(grammarFile)
      .contentType(contentType)
      .allowOverwrite(allowOverwrite)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(grammarName, testRequestModel.grammarName());
    System.assertEquals(grammarFile, testRequestModel.grammarFile());
    System.assertEquals(contentType, testRequestModel.contentType());
    System.assertEquals(allowOverwrite, testRequestModel.allowOverwrite());
    Test.stopTest();
  }
  static testMethod void testAddWordOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String wordName = 'word_name';
    String word = 'word';
    List<String> soundsLike = new List<String> { 'sounds_like' } ;
    String displayAs = 'display_as';

    IBMSpeechToTextV1Models.AddWordOptions testRequestModel = new IBMSpeechToTextV1Models.AddWordOptionsBuilder()
      .customizationId(customizationId)
      .wordName(wordName)
      .word(word)
      .soundsLike(soundsLike)
      .displayAs(displayAs)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(wordName, testRequestModel.wordName());
    System.assertEquals(word, testRequestModel.word());
    System.assertEquals(soundsLike, testRequestModel.soundsLike());
    System.assertEquals(displayAs, testRequestModel.displayAs());
    Test.stopTest();
  }
  static testMethod void testAddWordsOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    IBMSpeechToTextV1Models.CustomWord wordsItem = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .build();
    List<IBMSpeechToTextV1Models.CustomWord> words = new List<IBMSpeechToTextV1Models.CustomWord> { wordsItem } ;

    IBMSpeechToTextV1Models.AddWordsOptions testRequestModel = new IBMSpeechToTextV1Models.AddWordsOptionsBuilder()
      .customizationId(customizationId)
      .words(words)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(words, testRequestModel.words());
    Test.stopTest();
  }
  static testMethod void testAudioDetailsModel() {
    Test.startTest();
    String xType = 'x_type';
    String codec = 'codec';
    Long frequency = 10L;
    String compression = 'compression';

    IBMSpeechToTextV1Models.AudioDetails testRequestModel = new IBMSpeechToTextV1Models.AudioDetails();
    testRequestModel.setXType(xType);
    testRequestModel.setCodec(codec);
    testRequestModel.setFrequency(frequency);
    testRequestModel.setCompression(compression);

    System.assertEquals(xType, testRequestModel.getXType());
    System.assertEquals(codec, testRequestModel.getCodec());
    System.assertEquals(frequency, testRequestModel.getFrequency());
    System.assertEquals(compression, testRequestModel.getCompression());
    Test.stopTest();
  }
  static testMethod void testAudioListingModel() {
    Test.startTest();
    Long duration = 10L;
    String name = 'name';
    IBMSpeechToTextV1Models.AudioDetails details = new IBMSpeechToTextV1Models.AudioDetails();
    String status = 'status';
    IBMSpeechToTextV1Models.AudioResource container = new IBMSpeechToTextV1Models.AudioResource();
    container.setDuration(duration);
    container.setName(name);
    container.setDetails(details);
    container.setStatus(status);
    IBMSpeechToTextV1Models.AudioResource audioItem = new IBMSpeechToTextV1Models.AudioResource();
    audioItem.setDuration(duration);
    audioItem.setName(name);
    audioItem.setDetails(details);
    audioItem.setStatus(status);
    List<IBMSpeechToTextV1Models.AudioResource> audio = new List<IBMSpeechToTextV1Models.AudioResource> { audioItem } ;

    IBMSpeechToTextV1Models.AudioListing testRequestModel = new IBMSpeechToTextV1Models.AudioListing();
    testRequestModel.setDuration(duration);
    testRequestModel.setName(name);
    testRequestModel.setDetails(details);
    testRequestModel.setStatus(status);
    testRequestModel.setContainer(container);
    testRequestModel.setAudio(audio);

    System.assertEquals(duration, testRequestModel.getDuration());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(details, testRequestModel.getDetails());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(container, testRequestModel.getContainer());
    System.assertEquals(audio, testRequestModel.getAudio());
    Test.stopTest();
  }
  static testMethod void testAudioMetricsModel() {
    Test.startTest();
    Double samplingInterval = 0.5;
    Boolean xFinal = true;
    Double endTime = 0.5;
    Double speechRatio = 0.5;
    Double highFrequencyLoss = 0.5;
    Double xBegin = 0.5;
    Double xEnd = 0.5;
    Long count = 10L;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin directCurrentOffsetItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    directCurrentOffsetItem.setXBegin(xBegin);
    directCurrentOffsetItem.setXEnd(xEnd);
    directCurrentOffsetItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> directCurrentOffset = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { directCurrentOffsetItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin clippingRateItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    clippingRateItem.setXBegin(xBegin);
    clippingRateItem.setXEnd(xEnd);
    clippingRateItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> clippingRate = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { clippingRateItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin speechLevelItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    speechLevelItem.setXBegin(xBegin);
    speechLevelItem.setXEnd(xEnd);
    speechLevelItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> speechLevel = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { speechLevelItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin nonSpeechLevelItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    nonSpeechLevelItem.setXBegin(xBegin);
    nonSpeechLevelItem.setXEnd(xEnd);
    nonSpeechLevelItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> nonSpeechLevel = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { nonSpeechLevelItem } ;
    IBMSpeechToTextV1Models.AudioMetricsDetails accumulated = new IBMSpeechToTextV1Models.AudioMetricsDetails();
    accumulated.setXFinal(xFinal);
    accumulated.setEndTime(endTime);
    accumulated.setSpeechRatio(speechRatio);
    accumulated.setHighFrequencyLoss(highFrequencyLoss);
    accumulated.setDirectCurrentOffset(directCurrentOffset);
    accumulated.setClippingRate(clippingRate);
    accumulated.setSpeechLevel(speechLevel);
    accumulated.setNonSpeechLevel(nonSpeechLevel);

    IBMSpeechToTextV1Models.AudioMetrics testRequestModel = new IBMSpeechToTextV1Models.AudioMetrics();
    testRequestModel.setSamplingInterval(samplingInterval);
    testRequestModel.setAccumulated(accumulated);

    System.assertEquals(samplingInterval, testRequestModel.getSamplingInterval());
    System.assertEquals(accumulated, testRequestModel.getAccumulated());
    Test.stopTest();
  }
  static testMethod void testAudioMetricsDetailsModel() {
    Test.startTest();
    Boolean xFinal = true;
    Double endTime = 0.5;
    Double signalToNoiseRatio = 0.5;
    Double speechRatio = 0.5;
    Double highFrequencyLoss = 0.5;
    Double xBegin = 0.5;
    Double xEnd = 0.5;
    Long count = 10L;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin directCurrentOffsetItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    directCurrentOffsetItem.setXBegin(xBegin);
    directCurrentOffsetItem.setXEnd(xEnd);
    directCurrentOffsetItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> directCurrentOffset = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { directCurrentOffsetItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin clippingRateItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    clippingRateItem.setXBegin(xBegin);
    clippingRateItem.setXEnd(xEnd);
    clippingRateItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> clippingRate = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { clippingRateItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin speechLevelItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    speechLevelItem.setXBegin(xBegin);
    speechLevelItem.setXEnd(xEnd);
    speechLevelItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> speechLevel = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { speechLevelItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin nonSpeechLevelItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    nonSpeechLevelItem.setXBegin(xBegin);
    nonSpeechLevelItem.setXEnd(xEnd);
    nonSpeechLevelItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> nonSpeechLevel = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { nonSpeechLevelItem } ;

    IBMSpeechToTextV1Models.AudioMetricsDetails testRequestModel = new IBMSpeechToTextV1Models.AudioMetricsDetails();
    testRequestModel.setXFinal(xFinal);
    testRequestModel.setEndTime(endTime);
    testRequestModel.setSignalToNoiseRatio(signalToNoiseRatio);
    testRequestModel.setSpeechRatio(speechRatio);
    testRequestModel.setHighFrequencyLoss(highFrequencyLoss);
    testRequestModel.setDirectCurrentOffset(directCurrentOffset);
    testRequestModel.setClippingRate(clippingRate);
    testRequestModel.setSpeechLevel(speechLevel);
    testRequestModel.setNonSpeechLevel(nonSpeechLevel);

    System.assertEquals(xFinal, testRequestModel.getXFinal());
    System.assertEquals(endTime, testRequestModel.getEndTime());
    System.assertEquals(signalToNoiseRatio, testRequestModel.getSignalToNoiseRatio());
    System.assertEquals(speechRatio, testRequestModel.getSpeechRatio());
    System.assertEquals(highFrequencyLoss, testRequestModel.getHighFrequencyLoss());
    System.assertEquals(directCurrentOffset, testRequestModel.getDirectCurrentOffset());
    System.assertEquals(clippingRate, testRequestModel.getClippingRate());
    System.assertEquals(speechLevel, testRequestModel.getSpeechLevel());
    System.assertEquals(nonSpeechLevel, testRequestModel.getNonSpeechLevel());
    Test.stopTest();
  }
  static testMethod void testAudioMetricsHistogramBinModel() {
    Test.startTest();
    Double xBegin = 0.5;
    Double xEnd = 0.5;
    Long count = 10L;

    IBMSpeechToTextV1Models.AudioMetricsHistogramBin testRequestModel = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    testRequestModel.setXBegin(xBegin);
    testRequestModel.setXEnd(xEnd);
    testRequestModel.setCount(count);

    System.assertEquals(xBegin, testRequestModel.getXBegin());
    System.assertEquals(xEnd, testRequestModel.getXEnd());
    System.assertEquals(count, testRequestModel.getCount());
    Test.stopTest();
  }
  static testMethod void testAudioResourceModel() {
    Test.startTest();
    Long duration = 10L;
    String name = 'name';
    IBMSpeechToTextV1Models.AudioDetails details = new IBMSpeechToTextV1Models.AudioDetails();
    String status = 'status';

    IBMSpeechToTextV1Models.AudioResource testRequestModel = new IBMSpeechToTextV1Models.AudioResource();
    testRequestModel.setDuration(duration);
    testRequestModel.setName(name);
    testRequestModel.setDetails(details);
    testRequestModel.setStatus(status);

    System.assertEquals(duration, testRequestModel.getDuration());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(details, testRequestModel.getDetails());
    System.assertEquals(status, testRequestModel.getStatus());
    Test.stopTest();
  }
  static testMethod void testAudioResourcesModel() {
    Test.startTest();
    Double totalMinutesOfAudio = 0.5;
    Long duration = 10L;
    String name = 'name';
    IBMSpeechToTextV1Models.AudioDetails details = new IBMSpeechToTextV1Models.AudioDetails();
    String status = 'status';
    IBMSpeechToTextV1Models.AudioResource audioItem = new IBMSpeechToTextV1Models.AudioResource();
    audioItem.setDuration(duration);
    audioItem.setName(name);
    audioItem.setDetails(details);
    audioItem.setStatus(status);
    List<IBMSpeechToTextV1Models.AudioResource> audio = new List<IBMSpeechToTextV1Models.AudioResource> { audioItem } ;

    IBMSpeechToTextV1Models.AudioResources testRequestModel = new IBMSpeechToTextV1Models.AudioResources();
    testRequestModel.setTotalMinutesOfAudio(totalMinutesOfAudio);
    testRequestModel.setAudio(audio);

    System.assertEquals(totalMinutesOfAudio, testRequestModel.getTotalMinutesOfAudio());
    System.assertEquals(audio, testRequestModel.getAudio());
    Test.stopTest();
  }
  static testMethod void testCheckJobOptionsModel() {
    Test.startTest();
    String id = 'id';

    IBMSpeechToTextV1Models.CheckJobOptions testRequestModel = new IBMSpeechToTextV1Models.CheckJobOptionsBuilder()
      .id(id)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(id, testRequestModel.id());
    Test.stopTest();
  }
  static testMethod void testCheckJobsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.CheckJobsOptions testRequestModel = new IBMSpeechToTextV1Models.CheckJobsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testCorporaModel() {
    Test.startTest();
    String name = 'name';
    Long totalWords = 10L;
    Long outOfVocabularyWords = 10L;
    String status = 'status';
    IBMSpeechToTextV1Models.Corpus corporaItem = new IBMSpeechToTextV1Models.Corpus();
    corporaItem.setName(name);
    corporaItem.setTotalWords(totalWords);
    corporaItem.setOutOfVocabularyWords(outOfVocabularyWords);
    corporaItem.setStatus(status);
    List<IBMSpeechToTextV1Models.Corpus> corpora = new List<IBMSpeechToTextV1Models.Corpus> { corporaItem } ;

    IBMSpeechToTextV1Models.Corpora testRequestModel = new IBMSpeechToTextV1Models.Corpora();
    testRequestModel.setCorpora(corpora);

    System.assertEquals(corpora, testRequestModel.getCorpora());
    Test.stopTest();
  }
  static testMethod void testCorpusModel() {
    Test.startTest();
    String name = 'name';
    Long totalWords = 10L;
    Long outOfVocabularyWords = 10L;
    String status = 'status';
    String error = 'error';

    IBMSpeechToTextV1Models.Corpus testRequestModel = new IBMSpeechToTextV1Models.Corpus();
    testRequestModel.setName(name);
    testRequestModel.setTotalWords(totalWords);
    testRequestModel.setOutOfVocabularyWords(outOfVocabularyWords);
    testRequestModel.setStatus(status);
    testRequestModel.setError(error);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(totalWords, testRequestModel.getTotalWords());
    System.assertEquals(outOfVocabularyWords, testRequestModel.getOutOfVocabularyWords());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(error, testRequestModel.getError());
    Test.stopTest();
  }
  static testMethod void testCreateAcousticModelOptionsModel() {
    Test.startTest();
    String name = 'name';
    String baseModelName = 'base_model_name';
    String description = 'description';

    IBMSpeechToTextV1Models.CreateAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.CreateAcousticModelOptionsBuilder()
      .name(name)
      .baseModelName(baseModelName)
      .description(description)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(baseModelName, testRequestModel.baseModelName());
    System.assertEquals(description, testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testCreateJobOptionsModel() {
    Test.startTest();
    IBMWatsonFile audio = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    String model = 'model';
    String callbackUrl = 'callback_url';
    String events = 'events';
    String userToken = 'user_token';
    Long resultsTtl = 10L;
    String languageCustomizationId = 'language_customization_id';
    String acousticCustomizationId = 'acoustic_customization_id';
    String baseModelVersion = 'base_model_version';
    Double customizationWeight = 0.5;
    Long inactivityTimeout = 10L;
    List<String> keywords = new List<String> { 'keywords' } ;
    Double keywordsThreshold = 0.5;
    Long maxAlternatives = 10L;
    Double wordAlternativesThreshold = 0.5;
    Boolean wordConfidence = true;
    Boolean timestamps = true;
    Boolean profanityFilter = true;
    Boolean smartFormatting = true;
    Boolean speakerLabels = true;
    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';
    Boolean redaction = true;
    Boolean processingMetrics = true;
    Double processingMetricsInterval = 0.5;
    Boolean audioMetrics = true;

    IBMSpeechToTextV1Models.CreateJobOptions testRequestModel = new IBMSpeechToTextV1Models.CreateJobOptionsBuilder()
      .audio(audio)
      .contentType(contentType)
      .model(model)
      .callbackUrl(callbackUrl)
      .events(events)
      .userToken(userToken)
      .resultsTtl(resultsTtl)
      .languageCustomizationId(languageCustomizationId)
      .acousticCustomizationId(acousticCustomizationId)
      .baseModelVersion(baseModelVersion)
      .customizationWeight(customizationWeight)
      .inactivityTimeout(inactivityTimeout)
      .keywords(keywords)
      .keywordsThreshold(keywordsThreshold)
      .maxAlternatives(maxAlternatives)
      .wordAlternativesThreshold(wordAlternativesThreshold)
      .wordConfidence(wordConfidence)
      .timestamps(timestamps)
      .profanityFilter(profanityFilter)
      .smartFormatting(smartFormatting)
      .speakerLabels(speakerLabels)
      .customizationId(customizationId)
      .grammarName(grammarName)
      .redaction(redaction)
      .processingMetrics(processingMetrics)
      .processingMetricsInterval(processingMetricsInterval)
      .audioMetrics(audioMetrics)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(audio, testRequestModel.audio());
    System.assertEquals(contentType, testRequestModel.contentType());
    System.assertEquals(model, testRequestModel.model());
    System.assertEquals(callbackUrl, testRequestModel.callbackUrl());
    System.assertEquals(events, testRequestModel.events());
    System.assertEquals(userToken, testRequestModel.userToken());
    System.assertEquals(resultsTtl, testRequestModel.resultsTtl());
    System.assertEquals(languageCustomizationId, testRequestModel.languageCustomizationId());
    System.assertEquals(acousticCustomizationId, testRequestModel.acousticCustomizationId());
    System.assertEquals(baseModelVersion, testRequestModel.baseModelVersion());
    System.assertEquals(customizationWeight, testRequestModel.customizationWeight());
    System.assertEquals(inactivityTimeout, testRequestModel.inactivityTimeout());
    System.assertEquals(keywords, testRequestModel.keywords());
    System.assertEquals(keywordsThreshold, testRequestModel.keywordsThreshold());
    System.assertEquals(maxAlternatives, testRequestModel.maxAlternatives());
    System.assertEquals(wordAlternativesThreshold, testRequestModel.wordAlternativesThreshold());
    System.assertEquals(wordConfidence, testRequestModel.wordConfidence());
    System.assertEquals(timestamps, testRequestModel.timestamps());
    System.assertEquals(profanityFilter, testRequestModel.profanityFilter());
    System.assertEquals(smartFormatting, testRequestModel.smartFormatting());
    System.assertEquals(speakerLabels, testRequestModel.speakerLabels());
    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(grammarName, testRequestModel.grammarName());
    System.assertEquals(redaction, testRequestModel.redaction());
    System.assertEquals(processingMetrics, testRequestModel.processingMetrics());
    System.assertEquals(processingMetricsInterval, testRequestModel.processingMetricsInterval());
    System.assertEquals(audioMetrics, testRequestModel.audioMetrics());
    Test.stopTest();
  }
  static testMethod void testCreateLanguageModelOptionsModel() {
    Test.startTest();
    String name = 'name';
    String baseModelName = 'base_model_name';
    String dialect = 'dialect';
    String description = 'description';

    IBMSpeechToTextV1Models.CreateLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.CreateLanguageModelOptionsBuilder()
      .name(name)
      .baseModelName(baseModelName)
      .dialect(dialect)
      .description(description)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(name, testRequestModel.name());
    System.assertEquals(baseModelName, testRequestModel.baseModelName());
    System.assertEquals(dialect, testRequestModel.dialect());
    System.assertEquals(description, testRequestModel.description());
    Test.stopTest();
  }
  static testMethod void testCustomWordModel() {
    Test.startTest();
    String word = 'word';
    List<String> soundsLike = new List<String> { 'sounds_like' } ;
    String displayAs = 'display_as';

    IBMSpeechToTextV1Models.CustomWord testRequestModel = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .word(word)
      .soundsLike(soundsLike)
      .displayAs(displayAs)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(word, testRequestModel.getWord());
    System.assertEquals(soundsLike, testRequestModel.getSoundsLike());
    System.assertEquals(displayAs, testRequestModel.getDisplayAs());
    Test.stopTest();
  }
  static testMethod void testDeleteAcousticModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.DeleteAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testDeleteAudioOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String audioName = 'audio_name';

    IBMSpeechToTextV1Models.DeleteAudioOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteAudioOptionsBuilder()
      .customizationId(customizationId)
      .audioName(audioName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(audioName, testRequestModel.audioName());
    Test.stopTest();
  }
  static testMethod void testDeleteCorpusOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String corpusName = 'corpus_name';

    IBMSpeechToTextV1Models.DeleteCorpusOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteCorpusOptionsBuilder()
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(corpusName, testRequestModel.corpusName());
    Test.stopTest();
  }
  static testMethod void testDeleteGrammarOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';

    IBMSpeechToTextV1Models.DeleteGrammarOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteGrammarOptionsBuilder()
      .customizationId(customizationId)
      .grammarName(grammarName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(grammarName, testRequestModel.grammarName());
    Test.stopTest();
  }
  static testMethod void testDeleteJobOptionsModel() {
    Test.startTest();
    String id = 'id';

    IBMSpeechToTextV1Models.DeleteJobOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteJobOptionsBuilder()
      .id(id)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(id, testRequestModel.id());
    Test.stopTest();
  }
  static testMethod void testDeleteLanguageModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.DeleteLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testDeleteUserDataOptionsModel() {
    Test.startTest();
    String customerId = 'customer_id';

    IBMSpeechToTextV1Models.DeleteUserDataOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customerId, testRequestModel.customerId());
    Test.stopTest();
  }
  static testMethod void testDeleteWordOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String wordName = 'word_name';

    IBMSpeechToTextV1Models.DeleteWordOptions testRequestModel = new IBMSpeechToTextV1Models.DeleteWordOptionsBuilder()
      .customizationId(customizationId)
      .wordName(wordName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(wordName, testRequestModel.wordName());
    Test.stopTest();
  }
  static testMethod void testGetAcousticModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.GetAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.GetAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetAudioOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String audioName = 'audio_name';

    IBMSpeechToTextV1Models.GetAudioOptions testRequestModel = new IBMSpeechToTextV1Models.GetAudioOptionsBuilder()
      .customizationId(customizationId)
      .audioName(audioName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(audioName, testRequestModel.audioName());
    Test.stopTest();
  }
  static testMethod void testGetCorpusOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String corpusName = 'corpus_name';

    IBMSpeechToTextV1Models.GetCorpusOptions testRequestModel = new IBMSpeechToTextV1Models.GetCorpusOptionsBuilder()
      .customizationId(customizationId)
      .corpusName(corpusName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(corpusName, testRequestModel.corpusName());
    Test.stopTest();
  }
  static testMethod void testGetGrammarOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';

    IBMSpeechToTextV1Models.GetGrammarOptions testRequestModel = new IBMSpeechToTextV1Models.GetGrammarOptionsBuilder()
      .customizationId(customizationId)
      .grammarName(grammarName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(grammarName, testRequestModel.grammarName());
    Test.stopTest();
  }
  static testMethod void testGetLanguageModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.GetLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.GetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testGetModelOptionsModel() {
    Test.startTest();
    String modelId = 'model_id';

    IBMSpeechToTextV1Models.GetModelOptions testRequestModel = new IBMSpeechToTextV1Models.GetModelOptionsBuilder()
      .modelId(modelId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(modelId, testRequestModel.modelId());
    Test.stopTest();
  }
  static testMethod void testGetWordOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String wordName = 'word_name';

    IBMSpeechToTextV1Models.GetWordOptions testRequestModel = new IBMSpeechToTextV1Models.GetWordOptionsBuilder()
      .customizationId(customizationId)
      .wordName(wordName)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(wordName, testRequestModel.wordName());
    Test.stopTest();
  }
  static testMethod void testGrammarModel() {
    Test.startTest();
    String name = 'name';
    Long outOfVocabularyWords = 10L;
    String status = 'status';
    String error = 'error';

    IBMSpeechToTextV1Models.Grammar testRequestModel = new IBMSpeechToTextV1Models.Grammar();
    testRequestModel.setName(name);
    testRequestModel.setOutOfVocabularyWords(outOfVocabularyWords);
    testRequestModel.setStatus(status);
    testRequestModel.setError(error);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(outOfVocabularyWords, testRequestModel.getOutOfVocabularyWords());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(error, testRequestModel.getError());
    Test.stopTest();
  }
  static testMethod void testGrammarsModel() {
    Test.startTest();
    String name = 'name';
    Long outOfVocabularyWords = 10L;
    String status = 'status';
    IBMSpeechToTextV1Models.Grammar grammarsItem = new IBMSpeechToTextV1Models.Grammar();
    grammarsItem.setName(name);
    grammarsItem.setOutOfVocabularyWords(outOfVocabularyWords);
    grammarsItem.setStatus(status);
    List<IBMSpeechToTextV1Models.Grammar> grammars = new List<IBMSpeechToTextV1Models.Grammar> { grammarsItem } ;

    IBMSpeechToTextV1Models.Grammars testRequestModel = new IBMSpeechToTextV1Models.Grammars();
    testRequestModel.setGrammars(grammars);

    System.assertEquals(grammars, testRequestModel.getGrammars());
    Test.stopTest();
  }
  static testMethod void testKeywordResultModel() {
    Test.startTest();
    String normalizedText = 'normalized_text';
    Double startTime = 0.5;
    Double endTime = 0.5;
    Double confidence = 0.5;

    IBMSpeechToTextV1Models.KeywordResult testRequestModel = new IBMSpeechToTextV1Models.KeywordResult();
    testRequestModel.setNormalizedText(normalizedText);
    testRequestModel.setStartTime(startTime);
    testRequestModel.setEndTime(endTime);
    testRequestModel.setConfidence(confidence);

    System.assertEquals(normalizedText, testRequestModel.getNormalizedText());
    System.assertEquals(startTime, testRequestModel.getStartTime());
    System.assertEquals(endTime, testRequestModel.getEndTime());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    Test.stopTest();
  }
  static testMethod void testLanguageModelModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String created = 'created';
    String updated = 'updated';
    String language = 'language';
    String dialect = 'dialect';
    List<String> versions = new List<String> { 'versions' } ;
    String owner = 'owner';
    String name = 'name';
    String description = 'description';
    String baseModelName = 'base_model_name';
    String status = 'status';
    Long progress = 10L;
    String error = 'error';
    String warnings = 'warnings';

    IBMSpeechToTextV1Models.LanguageModel testRequestModel = new IBMSpeechToTextV1Models.LanguageModel();
    testRequestModel.setCustomizationId(customizationId);
    testRequestModel.setCreated(created);
    testRequestModel.setUpdated(updated);
    testRequestModel.setLanguage(language);
    testRequestModel.setDialect(dialect);
    testRequestModel.setVersions(versions);
    testRequestModel.setOwner(owner);
    testRequestModel.setName(name);
    testRequestModel.setDescription(description);
    testRequestModel.setBaseModelName(baseModelName);
    testRequestModel.setStatus(status);
    testRequestModel.setProgress(progress);
    testRequestModel.setError(error);
    testRequestModel.setWarnings(warnings);

    System.assertEquals(customizationId, testRequestModel.getCustomizationId());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(updated, testRequestModel.getUpdated());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(dialect, testRequestModel.getDialect());
    System.assertEquals(versions, testRequestModel.getVersions());
    System.assertEquals(owner, testRequestModel.getOwner());
    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(description, testRequestModel.getDescription());
    System.assertEquals(baseModelName, testRequestModel.getBaseModelName());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(progress, testRequestModel.getProgress());
    System.assertEquals(error, testRequestModel.getError());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    Test.stopTest();
  }
  static testMethod void testLanguageModelsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    IBMSpeechToTextV1Models.LanguageModel customizationsItem = new IBMSpeechToTextV1Models.LanguageModel();
    customizationsItem.setCustomizationId(customizationId);
    List<IBMSpeechToTextV1Models.LanguageModel> customizations = new List<IBMSpeechToTextV1Models.LanguageModel> { customizationsItem } ;

    IBMSpeechToTextV1Models.LanguageModels testRequestModel = new IBMSpeechToTextV1Models.LanguageModels();
    testRequestModel.setCustomizations(customizations);

    System.assertEquals(customizations, testRequestModel.getCustomizations());
    Test.stopTest();
  }
  static testMethod void testListAcousticModelsOptionsModel() {
    Test.startTest();
    String language = 'language';

    IBMSpeechToTextV1Models.ListAcousticModelsOptions testRequestModel = new IBMSpeechToTextV1Models.ListAcousticModelsOptionsBuilder()
      .language(language)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(language, testRequestModel.language());
    Test.stopTest();
  }
  static testMethod void testListAudioOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ListAudioOptions testRequestModel = new IBMSpeechToTextV1Models.ListAudioOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testListCorporaOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ListCorporaOptions testRequestModel = new IBMSpeechToTextV1Models.ListCorporaOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testListGrammarsOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ListGrammarsOptions testRequestModel = new IBMSpeechToTextV1Models.ListGrammarsOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testListLanguageModelsOptionsModel() {
    Test.startTest();
    String language = 'language';

    IBMSpeechToTextV1Models.ListLanguageModelsOptions testRequestModel = new IBMSpeechToTextV1Models.ListLanguageModelsOptionsBuilder()
      .language(language)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(language, testRequestModel.language());
    Test.stopTest();
  }
  static testMethod void testListModelsOptionsModel() {
    Test.startTest();

    IBMSpeechToTextV1Models.ListModelsOptions testRequestModel = new IBMSpeechToTextV1Models.ListModelsOptionsBuilder()
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    Test.stopTest();
  }
  static testMethod void testListWordsOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String wordType = 'word_type';
    String xSort = 'x_sort';

    IBMSpeechToTextV1Models.ListWordsOptions testRequestModel = new IBMSpeechToTextV1Models.ListWordsOptionsBuilder()
      .customizationId(customizationId)
      .wordType(wordType)
      .xSort(xSort)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(wordType, testRequestModel.wordType());
    System.assertEquals(xSort, testRequestModel.xSort());
    Test.stopTest();
  }
  static testMethod void testProcessedAudioModel() {
    Test.startTest();
    Double received = 0.5;
    Double seenByEngine = 0.5;
    Double transcription = 0.5;
    Double speakerLabels = 0.5;

    IBMSpeechToTextV1Models.ProcessedAudio testRequestModel = new IBMSpeechToTextV1Models.ProcessedAudio();
    testRequestModel.setReceived(received);
    testRequestModel.setSeenByEngine(seenByEngine);
    testRequestModel.setTranscription(transcription);
    testRequestModel.setSpeakerLabels(speakerLabels);

    System.assertEquals(received, testRequestModel.getReceived());
    System.assertEquals(seenByEngine, testRequestModel.getSeenByEngine());
    System.assertEquals(transcription, testRequestModel.getTranscription());
    System.assertEquals(speakerLabels, testRequestModel.getSpeakerLabels());
    Test.stopTest();
  }
  static testMethod void testProcessingMetricsModel() {
    Test.startTest();
    Double received = 0.5;
    Double seenByEngine = 0.5;
    Double transcription = 0.5;
    IBMSpeechToTextV1Models.ProcessedAudio processedAudio = new IBMSpeechToTextV1Models.ProcessedAudio();
    processedAudio.setReceived(received);
    processedAudio.setSeenByEngine(seenByEngine);
    processedAudio.setTranscription(transcription);
    Double wallClockSinceFirstByteReceived = 0.5;
    Boolean periodic = true;

    IBMSpeechToTextV1Models.ProcessingMetrics testRequestModel = new IBMSpeechToTextV1Models.ProcessingMetrics();
    testRequestModel.setProcessedAudio(processedAudio);
    testRequestModel.setWallClockSinceFirstByteReceived(wallClockSinceFirstByteReceived);
    testRequestModel.setPeriodic(periodic);

    System.assertEquals(processedAudio, testRequestModel.getProcessedAudio());
    System.assertEquals(wallClockSinceFirstByteReceived, testRequestModel.getWallClockSinceFirstByteReceived());
    System.assertEquals(periodic, testRequestModel.getPeriodic());
    Test.stopTest();
  }
  static testMethod void testRecognitionJobModel() {
    Test.startTest();
    String id = 'id';
    String status = 'status';
    String created = 'created';
    String updated = 'updated';
    String url = 'url';
    String userToken = 'user_token';
    IBMSpeechToTextV1Models.SpeechRecognitionResults resultsItem = new IBMSpeechToTextV1Models.SpeechRecognitionResults();
    List<IBMSpeechToTextV1Models.SpeechRecognitionResults> results = new List<IBMSpeechToTextV1Models.SpeechRecognitionResults> { resultsItem } ;
    List<String> warnings = new List<String> { 'warnings' } ;

    IBMSpeechToTextV1Models.RecognitionJob testRequestModel = new IBMSpeechToTextV1Models.RecognitionJob();
    testRequestModel.setId(id);
    testRequestModel.setStatus(status);
    testRequestModel.setCreated(created);
    testRequestModel.setUpdated(updated);
    testRequestModel.setUrl(url);
    testRequestModel.setUserToken(userToken);
    testRequestModel.setResults(results);
    testRequestModel.setWarnings(warnings);

    System.assertEquals(id, testRequestModel.getId());
    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(created, testRequestModel.getCreated());
    System.assertEquals(updated, testRequestModel.getUpdated());
    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(userToken, testRequestModel.getUserToken());
    System.assertEquals(results, testRequestModel.getResults());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    Test.stopTest();
  }
  static testMethod void testRecognitionJobsModel() {
    Test.startTest();
    String id = 'id';
    String status = 'status';
    String created = 'created';
    IBMSpeechToTextV1Models.RecognitionJob recognitionsItem = new IBMSpeechToTextV1Models.RecognitionJob();
    recognitionsItem.setId(id);
    recognitionsItem.setStatus(status);
    recognitionsItem.setCreated(created);
    List<IBMSpeechToTextV1Models.RecognitionJob> recognitions = new List<IBMSpeechToTextV1Models.RecognitionJob> { recognitionsItem } ;

    IBMSpeechToTextV1Models.RecognitionJobs testRequestModel = new IBMSpeechToTextV1Models.RecognitionJobs();
    testRequestModel.setRecognitions(recognitions);

    System.assertEquals(recognitions, testRequestModel.getRecognitions());
    Test.stopTest();
  }
  static testMethod void testRecognizeOptionsModel() {
    Test.startTest();
    IBMWatsonFile audio = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    String model = 'model';
    String languageCustomizationId = 'language_customization_id';
    String acousticCustomizationId = 'acoustic_customization_id';
    String baseModelVersion = 'base_model_version';
    Double customizationWeight = 0.5;
    Long inactivityTimeout = 10L;
    List<String> keywords = new List<String> { 'keywords' } ;
    Double keywordsThreshold = 0.5;
    Long maxAlternatives = 10L;
    Double wordAlternativesThreshold = 0.5;
    Boolean wordConfidence = true;
    Boolean timestamps = true;
    Boolean profanityFilter = true;
    Boolean smartFormatting = true;
    Boolean speakerLabels = true;
    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';
    Boolean redaction = true;
    Boolean audioMetrics = true;

    IBMSpeechToTextV1Models.RecognizeOptions testRequestModel = new IBMSpeechToTextV1Models.RecognizeOptionsBuilder()
      .audio(audio)
      .contentType(contentType)
      .model(model)
      .languageCustomizationId(languageCustomizationId)
      .acousticCustomizationId(acousticCustomizationId)
      .baseModelVersion(baseModelVersion)
      .customizationWeight(customizationWeight)
      .inactivityTimeout(inactivityTimeout)
      .keywords(keywords)
      .keywordsThreshold(keywordsThreshold)
      .maxAlternatives(maxAlternatives)
      .wordAlternativesThreshold(wordAlternativesThreshold)
      .wordConfidence(wordConfidence)
      .timestamps(timestamps)
      .profanityFilter(profanityFilter)
      .smartFormatting(smartFormatting)
      .speakerLabels(speakerLabels)
      .customizationId(customizationId)
      .grammarName(grammarName)
      .redaction(redaction)
      .audioMetrics(audioMetrics)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(audio, testRequestModel.audio());
    System.assertEquals(contentType, testRequestModel.contentType());
    System.assertEquals(model, testRequestModel.model());
    System.assertEquals(languageCustomizationId, testRequestModel.languageCustomizationId());
    System.assertEquals(acousticCustomizationId, testRequestModel.acousticCustomizationId());
    System.assertEquals(baseModelVersion, testRequestModel.baseModelVersion());
    System.assertEquals(customizationWeight, testRequestModel.customizationWeight());
    System.assertEquals(inactivityTimeout, testRequestModel.inactivityTimeout());
    System.assertEquals(keywords, testRequestModel.keywords());
    System.assertEquals(keywordsThreshold, testRequestModel.keywordsThreshold());
    System.assertEquals(maxAlternatives, testRequestModel.maxAlternatives());
    System.assertEquals(wordAlternativesThreshold, testRequestModel.wordAlternativesThreshold());
    System.assertEquals(wordConfidence, testRequestModel.wordConfidence());
    System.assertEquals(timestamps, testRequestModel.timestamps());
    System.assertEquals(profanityFilter, testRequestModel.profanityFilter());
    System.assertEquals(smartFormatting, testRequestModel.smartFormatting());
    System.assertEquals(speakerLabels, testRequestModel.speakerLabels());
    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(grammarName, testRequestModel.grammarName());
    System.assertEquals(redaction, testRequestModel.redaction());
    System.assertEquals(audioMetrics, testRequestModel.audioMetrics());
    Test.stopTest();
  }
  static testMethod void testRegisterCallbackOptionsModel() {
    Test.startTest();
    String callbackUrl = 'callback_url';
    String userSecret = 'user_secret';

    IBMSpeechToTextV1Models.RegisterCallbackOptions testRequestModel = new IBMSpeechToTextV1Models.RegisterCallbackOptionsBuilder()
      .callbackUrl(callbackUrl)
      .userSecret(userSecret)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(callbackUrl, testRequestModel.callbackUrl());
    System.assertEquals(userSecret, testRequestModel.userSecret());
    Test.stopTest();
  }
  static testMethod void testRegisterStatusModel() {
    Test.startTest();
    String status = 'status';
    String url = 'url';

    IBMSpeechToTextV1Models.RegisterStatus testRequestModel = new IBMSpeechToTextV1Models.RegisterStatus();
    testRequestModel.setStatus(status);
    testRequestModel.setUrl(url);

    System.assertEquals(status, testRequestModel.getStatus());
    System.assertEquals(url, testRequestModel.getUrl());
    Test.stopTest();
  }
  static testMethod void testResetAcousticModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ResetAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.ResetAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testResetLanguageModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ResetLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.ResetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testSpeakerLabelsResultModel() {
    Test.startTest();
    Double xFrom = 0.5;
    Double to = 0.5;
    Long speaker = 10L;
    Double confidence = 0.5;
    Boolean xFinal = true;

    IBMSpeechToTextV1Models.SpeakerLabelsResult testRequestModel = new IBMSpeechToTextV1Models.SpeakerLabelsResult();
    testRequestModel.setXFrom(xFrom);
    testRequestModel.setTo(to);
    testRequestModel.setSpeaker(speaker);
    testRequestModel.setConfidence(confidence);
    testRequestModel.setXFinal(xFinal);

    System.assertEquals(xFrom, testRequestModel.getXFrom());
    System.assertEquals(to, testRequestModel.getTo());
    System.assertEquals(speaker, testRequestModel.getSpeaker());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(xFinal, testRequestModel.getXFinal());
    Test.stopTest();
  }
  static testMethod void testSpeechModelModel() {
    Test.startTest();
    String name = 'name';
    String language = 'language';
    Long rate = 10L;
    String url = 'url';
    Boolean customLanguageModel = true;
    Boolean speakerLabels = true;
    IBMSpeechToTextV1Models.SupportedFeatures supportedFeatures = new IBMSpeechToTextV1Models.SupportedFeatures();
    supportedFeatures.setCustomLanguageModel(customLanguageModel);
    supportedFeatures.setSpeakerLabels(speakerLabels);
    String description = 'description';

    IBMSpeechToTextV1Models.SpeechModel testRequestModel = new IBMSpeechToTextV1Models.SpeechModel();
    testRequestModel.setName(name);
    testRequestModel.setLanguage(language);
    testRequestModel.setRate(rate);
    testRequestModel.setUrl(url);
    testRequestModel.setSupportedFeatures(supportedFeatures);
    testRequestModel.setDescription(description);

    System.assertEquals(name, testRequestModel.getName());
    System.assertEquals(language, testRequestModel.getLanguage());
    System.assertEquals(rate, testRequestModel.getRate());
    System.assertEquals(url, testRequestModel.getUrl());
    System.assertEquals(supportedFeatures, testRequestModel.getSupportedFeatures());
    System.assertEquals(description, testRequestModel.getDescription());
    Test.stopTest();
  }
  static testMethod void testSpeechModelsModel() {
    Test.startTest();
    String name = 'name';
    String language = 'language';
    Long rate = 10L;
    String url = 'url';
    Boolean customLanguageModel = true;
    Boolean speakerLabels = true;
    IBMSpeechToTextV1Models.SupportedFeatures supportedFeatures = new IBMSpeechToTextV1Models.SupportedFeatures();
    supportedFeatures.setCustomLanguageModel(customLanguageModel);
    supportedFeatures.setSpeakerLabels(speakerLabels);
    String description = 'description';
    IBMSpeechToTextV1Models.SpeechModel modelsItem = new IBMSpeechToTextV1Models.SpeechModel();
    modelsItem.setName(name);
    modelsItem.setLanguage(language);
    modelsItem.setRate(rate);
    modelsItem.setUrl(url);
    modelsItem.setSupportedFeatures(supportedFeatures);
    modelsItem.setDescription(description);
    List<IBMSpeechToTextV1Models.SpeechModel> models = new List<IBMSpeechToTextV1Models.SpeechModel> { modelsItem } ;

    IBMSpeechToTextV1Models.SpeechModels testRequestModel = new IBMSpeechToTextV1Models.SpeechModels();
    testRequestModel.setModels(models);

    System.assertEquals(models, testRequestModel.getModels());
    Test.stopTest();
  }
  static testMethod void testSpeechRecognitionAlternativeModel() {
    Test.startTest();
    String transcript = 'transcript';
    Double confidence = 0.5;
    List<String> timestamps = new List<String> { 'timestamps' } ;
    List<String> wordConfidence = new List<String> { 'word_confidence' } ;

    IBMSpeechToTextV1Models.SpeechRecognitionAlternative testRequestModel = new IBMSpeechToTextV1Models.SpeechRecognitionAlternative();
    testRequestModel.setTranscript(transcript);
    testRequestModel.setConfidence(confidence);
    testRequestModel.setTimestamps(timestamps);
    testRequestModel.setWordConfidence(wordConfidence);

    System.assertEquals(transcript, testRequestModel.getTranscript());
    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(timestamps, testRequestModel.getTimestamps());
    System.assertEquals(wordConfidence, testRequestModel.getWordConfidence());
    Test.stopTest();
  }
  static testMethod void testSpeechRecognitionResultModel() {
    Test.startTest();
    Boolean xFinal = true;
    String transcript = 'transcript';
    IBMSpeechToTextV1Models.SpeechRecognitionAlternative alternativesItem = new IBMSpeechToTextV1Models.SpeechRecognitionAlternative();
    alternativesItem.setTranscript(transcript);
    List<IBMSpeechToTextV1Models.SpeechRecognitionAlternative> alternatives = new List<IBMSpeechToTextV1Models.SpeechRecognitionAlternative> { alternativesItem } ;
    Double startTime = 0.5;
    Double endTime = 0.5;
    Double confidence = 0.5;
    String word = 'word';
    IBMSpeechToTextV1Models.WordAlternativeResult wordAlternativeResultItem = new IBMSpeechToTextV1Models.WordAlternativeResult();
    wordAlternativeResultItem.setConfidence(confidence);
    wordAlternativeResultItem.setWord(word);
    List<IBMSpeechToTextV1Models.WordAlternativeResult> wordAlternativeResult = new List<IBMSpeechToTextV1Models.WordAlternativeResult> { wordAlternativeResultItem } ;
    IBMSpeechToTextV1Models.WordAlternativeResults wordAlternativesItem = new IBMSpeechToTextV1Models.WordAlternativeResults();
    wordAlternativesItem.setStartTime(startTime);
    wordAlternativesItem.setEndTime(endTime);
    wordAlternativesItem.setAlternatives(wordAlternativeResult);
    List<IBMSpeechToTextV1Models.WordAlternativeResults> wordAlternatives = new List<IBMSpeechToTextV1Models.WordAlternativeResults> { wordAlternativesItem } ;

    IBMSpeechToTextV1Models.SpeechRecognitionResult testRequestModel = new IBMSpeechToTextV1Models.SpeechRecognitionResult();
    testRequestModel.setXFinal(xFinal);
    testRequestModel.setAlternatives(alternatives);
    testRequestModel.setKeywordsResult(keywordsResult);
    testRequestModel.setWordAlternatives(wordAlternatives);

    System.assertEquals(xFinal, testRequestModel.getXFinal());
    System.assertEquals(alternatives, testRequestModel.getAlternatives());
    System.assertEquals(keywordsResult, testRequestModel.getKeywordsResult());
    System.assertEquals(wordAlternatives, testRequestModel.getWordAlternatives());
    Test.stopTest();
  }
  static testMethod void testSpeechRecognitionResultsModel() {
    Test.startTest();
    Boolean xFinal = true;
    String transcript = 'transcript';
    IBMSpeechToTextV1Models.SpeechRecognitionAlternative alternativesItem = new IBMSpeechToTextV1Models.SpeechRecognitionAlternative();
    alternativesItem.setTranscript(transcript);
    List<IBMSpeechToTextV1Models.SpeechRecognitionAlternative> alternatives = new List<IBMSpeechToTextV1Models.SpeechRecognitionAlternative> { alternativesItem } ;
    IBMSpeechToTextV1Models.SpeechRecognitionResult resultsItem = new IBMSpeechToTextV1Models.SpeechRecognitionResult();
    resultsItem.setXFinal(xFinal);
    resultsItem.setAlternatives(alternatives);
    List<IBMSpeechToTextV1Models.SpeechRecognitionResult> results = new List<IBMSpeechToTextV1Models.SpeechRecognitionResult> { resultsItem } ;
    Long resultIndex = 10L;
    Double xFrom = 0.5;
    Double to = 0.5;
    Long speaker = 10L;
    Double confidence = 0.5;
    IBMSpeechToTextV1Models.SpeakerLabelsResult speakerLabelsItem = new IBMSpeechToTextV1Models.SpeakerLabelsResult();
    speakerLabelsItem.setXFrom(xFrom);
    speakerLabelsItem.setTo(to);
    speakerLabelsItem.setSpeaker(speaker);
    speakerLabelsItem.setConfidence(confidence);
    speakerLabelsItem.setXFinal(xFinal);
    List<IBMSpeechToTextV1Models.SpeakerLabelsResult> speakerLabels = new List<IBMSpeechToTextV1Models.SpeakerLabelsResult> { speakerLabelsItem } ;
    Double received = 0.5;
    Double seenByEngine = 0.5;
    Double transcription = 0.5;
    IBMSpeechToTextV1Models.ProcessedAudio processedAudio = new IBMSpeechToTextV1Models.ProcessedAudio();
    processedAudio.setReceived(received);
    processedAudio.setSeenByEngine(seenByEngine);
    processedAudio.setTranscription(transcription);
    Double wallClockSinceFirstByteReceived = 0.5;
    Boolean periodic = true;
    IBMSpeechToTextV1Models.ProcessingMetrics processingMetrics = new IBMSpeechToTextV1Models.ProcessingMetrics();
    processingMetrics.setProcessedAudio(processedAudio);
    processingMetrics.setWallClockSinceFirstByteReceived(wallClockSinceFirstByteReceived);
    processingMetrics.setPeriodic(periodic);
    Double samplingInterval = 0.5;
    Double endTime = 0.5;
    Double speechRatio = 0.5;
    Double highFrequencyLoss = 0.5;
    Double xBegin = 0.5;
    Double xEnd = 0.5;
    Long count = 10L;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin directCurrentOffsetItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    directCurrentOffsetItem.setXBegin(xBegin);
    directCurrentOffsetItem.setXEnd(xEnd);
    directCurrentOffsetItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> directCurrentOffset = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { directCurrentOffsetItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin clippingRateItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    clippingRateItem.setXBegin(xBegin);
    clippingRateItem.setXEnd(xEnd);
    clippingRateItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> clippingRate = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { clippingRateItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin speechLevelItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    speechLevelItem.setXBegin(xBegin);
    speechLevelItem.setXEnd(xEnd);
    speechLevelItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> speechLevel = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { speechLevelItem } ;
    IBMSpeechToTextV1Models.AudioMetricsHistogramBin nonSpeechLevelItem = new IBMSpeechToTextV1Models.AudioMetricsHistogramBin();
    nonSpeechLevelItem.setXBegin(xBegin);
    nonSpeechLevelItem.setXEnd(xEnd);
    nonSpeechLevelItem.setCount(count);
    List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> nonSpeechLevel = new List<IBMSpeechToTextV1Models.AudioMetricsHistogramBin> { nonSpeechLevelItem } ;
    IBMSpeechToTextV1Models.AudioMetricsDetails accumulated = new IBMSpeechToTextV1Models.AudioMetricsDetails();
    accumulated.setXFinal(xFinal);
    accumulated.setEndTime(endTime);
    accumulated.setSpeechRatio(speechRatio);
    accumulated.setHighFrequencyLoss(highFrequencyLoss);
    accumulated.setDirectCurrentOffset(directCurrentOffset);
    accumulated.setClippingRate(clippingRate);
    accumulated.setSpeechLevel(speechLevel);
    accumulated.setNonSpeechLevel(nonSpeechLevel);
    IBMSpeechToTextV1Models.AudioMetrics audioMetrics = new IBMSpeechToTextV1Models.AudioMetrics();
    audioMetrics.setSamplingInterval(samplingInterval);
    audioMetrics.setAccumulated(accumulated);
    List<String> warnings = new List<String> { 'warnings' } ;

    IBMSpeechToTextV1Models.SpeechRecognitionResults testRequestModel = new IBMSpeechToTextV1Models.SpeechRecognitionResults();
    testRequestModel.setResults(results);
    testRequestModel.setResultIndex(resultIndex);
    testRequestModel.setSpeakerLabels(speakerLabels);
    testRequestModel.setProcessingMetrics(processingMetrics);
    testRequestModel.setAudioMetrics(audioMetrics);
    testRequestModel.setWarnings(warnings);

    System.assertEquals(results, testRequestModel.getResults());
    System.assertEquals(resultIndex, testRequestModel.getResultIndex());
    System.assertEquals(speakerLabels, testRequestModel.getSpeakerLabels());
    System.assertEquals(processingMetrics, testRequestModel.getProcessingMetrics());
    System.assertEquals(audioMetrics, testRequestModel.getAudioMetrics());
    System.assertEquals(warnings, testRequestModel.getWarnings());
    Test.stopTest();
  }
  static testMethod void testSupportedFeaturesModel() {
    Test.startTest();
    Boolean customLanguageModel = true;
    Boolean speakerLabels = true;

    IBMSpeechToTextV1Models.SupportedFeatures testRequestModel = new IBMSpeechToTextV1Models.SupportedFeatures();
    testRequestModel.setCustomLanguageModel(customLanguageModel);
    testRequestModel.setSpeakerLabels(speakerLabels);

    System.assertEquals(customLanguageModel, testRequestModel.getCustomLanguageModel());
    System.assertEquals(speakerLabels, testRequestModel.getSpeakerLabels());
    Test.stopTest();
  }
  static testMethod void testTrainAcousticModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String customLanguageModelId = 'custom_language_model_id';

    IBMSpeechToTextV1Models.TrainAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.TrainAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .customLanguageModelId(customLanguageModelId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(customLanguageModelId, testRequestModel.customLanguageModelId());
    Test.stopTest();
  }
  static testMethod void testTrainLanguageModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String wordTypeToAdd = 'word_type_to_add';
    Double customizationWeight = 0.5;

    IBMSpeechToTextV1Models.TrainLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.TrainLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .wordTypeToAdd(wordTypeToAdd)
      .customizationWeight(customizationWeight)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(wordTypeToAdd, testRequestModel.wordTypeToAdd());
    System.assertEquals(customizationWeight, testRequestModel.customizationWeight());
    Test.stopTest();
  }
  static testMethod void testTrainingResponseModel() {
    Test.startTest();
    String code = 'code';
    String message = 'message';
    IBMSpeechToTextV1Models.TrainingWarning warningsItem = new IBMSpeechToTextV1Models.TrainingWarning();
    warningsItem.setCode(code);
    warningsItem.setMessage(message);
    List<IBMSpeechToTextV1Models.TrainingWarning> warnings = new List<IBMSpeechToTextV1Models.TrainingWarning> { warningsItem } ;

    IBMSpeechToTextV1Models.TrainingResponse testRequestModel = new IBMSpeechToTextV1Models.TrainingResponse();
    testRequestModel.setWarnings(warnings);

    System.assertEquals(warnings, testRequestModel.getWarnings());
    Test.stopTest();
  }
  static testMethod void testTrainingWarningModel() {
    Test.startTest();
    String code = 'code';
    String message = 'message';

    IBMSpeechToTextV1Models.TrainingWarning testRequestModel = new IBMSpeechToTextV1Models.TrainingWarning();
    testRequestModel.setCode(code);
    testRequestModel.setMessage(message);

    System.assertEquals(code, testRequestModel.getCode());
    System.assertEquals(message, testRequestModel.getMessage());
    Test.stopTest();
  }
  static testMethod void testUnregisterCallbackOptionsModel() {
    Test.startTest();
    String callbackUrl = 'callback_url';

    IBMSpeechToTextV1Models.UnregisterCallbackOptions testRequestModel = new IBMSpeechToTextV1Models.UnregisterCallbackOptionsBuilder()
      .callbackUrl(callbackUrl)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(callbackUrl, testRequestModel.callbackUrl());
    Test.stopTest();
  }
  static testMethod void testUpgradeAcousticModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';
    String customLanguageModelId = 'custom_language_model_id';
    Boolean force = true;

    IBMSpeechToTextV1Models.UpgradeAcousticModelOptions testRequestModel = new IBMSpeechToTextV1Models.UpgradeAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .customLanguageModelId(customLanguageModelId)
      .force(force)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    System.assertEquals(customLanguageModelId, testRequestModel.customLanguageModelId());
    System.assertEquals(force, testRequestModel.force());
    Test.stopTest();
  }
  static testMethod void testUpgradeLanguageModelOptionsModel() {
    Test.startTest();
    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.UpgradeLanguageModelOptions testRequestModel = new IBMSpeechToTextV1Models.UpgradeLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .build();
    testRequestModel = testRequestModel.newBuilder().build();

    System.assertEquals(customizationId, testRequestModel.customizationId());
    Test.stopTest();
  }
  static testMethod void testWordModel() {
    Test.startTest();
    String word = 'word';
    List<String> soundsLike = new List<String> { 'sounds_like' } ;
    String displayAs = 'display_as';
    Long count = 10L;
    List<String> source = new List<String> { 'source' } ;
    String element = 'element';
    IBMSpeechToTextV1Models.WordError errorItem = new IBMSpeechToTextV1Models.WordError();
    errorItem.setElement(element);
    List<IBMSpeechToTextV1Models.WordError> error = new List<IBMSpeechToTextV1Models.WordError> { errorItem } ;

    IBMSpeechToTextV1Models.Word testRequestModel = new IBMSpeechToTextV1Models.Word();
    testRequestModel.setWord(word);
    testRequestModel.setSoundsLike(soundsLike);
    testRequestModel.setDisplayAs(displayAs);
    testRequestModel.setCount(count);
    testRequestModel.setSource(source);
    testRequestModel.setError(error);

    System.assertEquals(word, testRequestModel.getWord());
    System.assertEquals(soundsLike, testRequestModel.getSoundsLike());
    System.assertEquals(displayAs, testRequestModel.getDisplayAs());
    System.assertEquals(count, testRequestModel.getCount());
    System.assertEquals(source, testRequestModel.getSource());
    System.assertEquals(error, testRequestModel.getError());
    Test.stopTest();
  }
  static testMethod void testWordAlternativeResultModel() {
    Test.startTest();
    Double confidence = 0.5;
    String word = 'word';

    IBMSpeechToTextV1Models.WordAlternativeResult testRequestModel = new IBMSpeechToTextV1Models.WordAlternativeResult();
    testRequestModel.setConfidence(confidence);
    testRequestModel.setWord(word);

    System.assertEquals(confidence, testRequestModel.getConfidence());
    System.assertEquals(word, testRequestModel.getWord());
    Test.stopTest();
  }
  static testMethod void testWordAlternativeResultsModel() {
    Test.startTest();
    Double startTime = 0.5;
    Double endTime = 0.5;
    Double confidence = 0.5;
    String word = 'word';
    IBMSpeechToTextV1Models.WordAlternativeResult alternativesItem = new IBMSpeechToTextV1Models.WordAlternativeResult();
    alternativesItem.setConfidence(confidence);
    alternativesItem.setWord(word);
    List<IBMSpeechToTextV1Models.WordAlternativeResult> alternatives = new List<IBMSpeechToTextV1Models.WordAlternativeResult> { alternativesItem } ;

    IBMSpeechToTextV1Models.WordAlternativeResults testRequestModel = new IBMSpeechToTextV1Models.WordAlternativeResults();
    testRequestModel.setStartTime(startTime);
    testRequestModel.setEndTime(endTime);
    testRequestModel.setAlternatives(alternatives);

    System.assertEquals(startTime, testRequestModel.getStartTime());
    System.assertEquals(endTime, testRequestModel.getEndTime());
    System.assertEquals(alternatives, testRequestModel.getAlternatives());
    Test.stopTest();
  }
  static testMethod void testWordErrorModel() {
    Test.startTest();
    String element = 'element';

    IBMSpeechToTextV1Models.WordError testRequestModel = new IBMSpeechToTextV1Models.WordError();
    testRequestModel.setElement(element);

    System.assertEquals(element, testRequestModel.getElement());
    Test.stopTest();
  }
  static testMethod void testWordsModel() {
    Test.startTest();
    String word = 'word';
    List<String> soundsLike = new List<String> { 'sounds_like' } ;
    String displayAs = 'display_as';
    Long count = 10L;
    List<String> source = new List<String> { 'source' } ;
    IBMSpeechToTextV1Models.Word wordsItem = new IBMSpeechToTextV1Models.Word();
    wordsItem.setWord(word);
    wordsItem.setSoundsLike(soundsLike);
    wordsItem.setDisplayAs(displayAs);
    wordsItem.setCount(count);
    wordsItem.setSource(source);
    List<IBMSpeechToTextV1Models.Word> words = new List<IBMSpeechToTextV1Models.Word> { wordsItem } ;

    IBMSpeechToTextV1Models.Words testRequestModel = new IBMSpeechToTextV1Models.Words();
    testRequestModel.setWords(words);

    System.assertEquals(words, testRequestModel.getWords());
    Test.stopTest();
  }


  static testMethod void testListModels() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1SpeechModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMSpeechToTextV1Models.ListModelsOptions options = new IBMSpeechToTextV1Models.ListModelsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.SpeechModels response = service.listModels(options);

    System.assertEquals(
      'name',
      response.getModels().get(0).getName()
    );
    System.assertEquals(
      'language',
      response.getModels().get(0).getLanguage()
    );
    System.assertEquals(
      10L,
      response.getModels().get(0).getRate()
    );
    System.assertEquals(
      'url',
      response.getModels().get(0).getUrl()
    );
    System.assertEquals(
      true,
      response.getModels().get(0).getSupportedFeatures().getCustomLanguageModel()
    );
    System.assertEquals(
      true,
      response.getModels().get(0).getSupportedFeatures().getSpeakerLabels()
    );
    System.assertEquals(
      'description',
      response.getModels().get(0).getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testGetModel() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1SpeechModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String modelId = 'model_id';

    IBMSpeechToTextV1Models.GetModelOptions options = new IBMSpeechToTextV1Models.GetModelOptionsBuilder()
      .modelId(modelId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.SpeechModel response = service.getModel(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      10L,
      response.getRate()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      true,
      response.getSupportedFeatures().getCustomLanguageModel()
    );
    System.assertEquals(
      true,
      response.getSupportedFeatures().getSpeakerLabels()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );

    Test.stopTest();
  }
  static testMethod void testRecognize() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1SpeechRecognitionResults();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile audio = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    String model = 'model';
    String languageCustomizationId = 'language_customization_id';
    String acousticCustomizationId = 'acoustic_customization_id';
    String baseModelVersion = 'base_model_version';
    Double customizationWeight = 0.5;
    Long inactivityTimeout = 10L;
    List<String> keywords = new List<String> { 'keywords' } ;
    Double keywordsThreshold = 0.5;
    Long maxAlternatives = 10L;
    Double wordAlternativesThreshold = 0.5;
    Boolean wordConfidence = true;
    Boolean timestamps = true;
    Boolean profanityFilter = true;
    Boolean smartFormatting = true;
    Boolean speakerLabels = true;
    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';
    Boolean redaction = true;
    Boolean audioMetrics = true;

    IBMSpeechToTextV1Models.RecognizeOptions options = new IBMSpeechToTextV1Models.RecognizeOptionsBuilder()
      .audio(audio)
      .contentType(contentType)
      .model(model)
      .languageCustomizationId(languageCustomizationId)
      .acousticCustomizationId(acousticCustomizationId)
      .baseModelVersion(baseModelVersion)
      .customizationWeight(customizationWeight)
      .inactivityTimeout(inactivityTimeout)
      .keywords(keywords)
      .keywordsThreshold(keywordsThreshold)
      .maxAlternatives(maxAlternatives)
      .wordAlternativesThreshold(wordAlternativesThreshold)
      .wordConfidence(wordConfidence)
      .timestamps(timestamps)
      .profanityFilter(profanityFilter)
      .smartFormatting(smartFormatting)
      .speakerLabels(speakerLabels)
      .customizationId(customizationId)
      .grammarName(grammarName)
      .redaction(redaction)
      .audioMetrics(audioMetrics)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.SpeechRecognitionResults response = service.recognize(options);

    System.assertEquals(
      true,
      response.getResults().get(0).getXFinal()
    );
    System.assertEquals(
      'transcript',
      response.getResults().get(0).getAlternatives().get(0).getTranscript()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAlternatives().get(0).getConfidence()
    );
    System.assertEquals(
      'timestamps',
      response.getResults().get(0).getAlternatives().get(0).getTimestamps().get(0)
    );
    System.assertEquals(
      'word_confidence',
      response.getResults().get(0).getAlternatives().get(0).getWordConfidence().get(0)
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getWordAlternatives().get(0).getStartTime()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getWordAlternatives().get(0).getEndTime()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getConfidence()
    );
    System.assertEquals(
      'word',
      response.getResults().get(0).getWordAlternatives().get(0).getAlternatives().get(0).getWord()
    );
    System.assertEquals(
      10L,
      response.getResultIndex()
    );
    System.assertEquals(
      0.5,
      response.getSpeakerLabels().get(0).getXFrom()
    );
    System.assertEquals(
      0.5,
      response.getSpeakerLabels().get(0).getTo()
    );
    System.assertEquals(
      10L,
      response.getSpeakerLabels().get(0).getSpeaker()
    );
    System.assertEquals(
      0.5,
      response.getSpeakerLabels().get(0).getConfidence()
    );
    System.assertEquals(
      true,
      response.getSpeakerLabels().get(0).getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getProcessingMetrics().getProcessedAudio().getReceived()
    );
    System.assertEquals(
      0.5,
      response.getProcessingMetrics().getProcessedAudio().getSeenByEngine()
    );
    System.assertEquals(
      0.5,
      response.getProcessingMetrics().getProcessedAudio().getTranscription()
    );
    System.assertEquals(
      0.5,
      response.getProcessingMetrics().getProcessedAudio().getSpeakerLabels()
    );
    System.assertEquals(
      0.5,
      response.getProcessingMetrics().getWallClockSinceFirstByteReceived()
    );
    System.assertEquals(
      true,
      response.getProcessingMetrics().getPeriodic()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getSamplingInterval()
    );
    System.assertEquals(
      true,
      response.getAudioMetrics().getAccumulated().getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getEndTime()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getSignalToNoiseRatio()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getSpeechRatio()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getHighFrequencyLoss()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      'warnings',
      response.getWarnings().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testRegisterCallback() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1RegisterStatus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String callbackUrl = 'callback_url';
    String userSecret = 'user_secret';

    IBMSpeechToTextV1Models.RegisterCallbackOptions options = new IBMSpeechToTextV1Models.RegisterCallbackOptionsBuilder()
      .callbackUrl(callbackUrl)
      .userSecret(userSecret)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RegisterStatus response = service.registerCallback(options);

    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );

    Test.stopTest();
  }
  static testMethod void testUnregisterCallback() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String callbackUrl = 'callback_url';

    IBMSpeechToTextV1Models.UnregisterCallbackOptions options = new IBMSpeechToTextV1Models.UnregisterCallbackOptionsBuilder()
      .callbackUrl(callbackUrl)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.unregisterCallback(options);

    Test.stopTest();
  }
  static testMethod void testCreateJob() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1RecognitionJob();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    IBMWatsonFile audio = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    String model = 'model';
    String callbackUrl = 'callback_url';
    String events = 'events';
    String userToken = 'user_token';
    Long resultsTtl = 10L;
    String languageCustomizationId = 'language_customization_id';
    String acousticCustomizationId = 'acoustic_customization_id';
    String baseModelVersion = 'base_model_version';
    Double customizationWeight = 0.5;
    Long inactivityTimeout = 10L;
    List<String> keywords = new List<String> { 'keywords' } ;
    Double keywordsThreshold = 0.5;
    Long maxAlternatives = 10L;
    Double wordAlternativesThreshold = 0.5;
    Boolean wordConfidence = true;
    Boolean timestamps = true;
    Boolean profanityFilter = true;
    Boolean smartFormatting = true;
    Boolean speakerLabels = true;
    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';
    Boolean redaction = true;
    Boolean processingMetrics = true;
    Double processingMetricsInterval = 0.5;
    Boolean audioMetrics = true;

    IBMSpeechToTextV1Models.CreateJobOptions options = new IBMSpeechToTextV1Models.CreateJobOptionsBuilder()
      .audio(audio)
      .contentType(contentType)
      .model(model)
      .callbackUrl(callbackUrl)
      .events(events)
      .userToken(userToken)
      .resultsTtl(resultsTtl)
      .languageCustomizationId(languageCustomizationId)
      .acousticCustomizationId(acousticCustomizationId)
      .baseModelVersion(baseModelVersion)
      .customizationWeight(customizationWeight)
      .inactivityTimeout(inactivityTimeout)
      .keywords(keywords)
      .keywordsThreshold(keywordsThreshold)
      .maxAlternatives(maxAlternatives)
      .wordAlternativesThreshold(wordAlternativesThreshold)
      .wordConfidence(wordConfidence)
      .timestamps(timestamps)
      .profanityFilter(profanityFilter)
      .smartFormatting(smartFormatting)
      .speakerLabels(speakerLabels)
      .customizationId(customizationId)
      .grammarName(grammarName)
      .redaction(redaction)
      .processingMetrics(processingMetrics)
      .processingMetricsInterval(processingMetricsInterval)
      .audioMetrics(audioMetrics)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RecognitionJob response = service.createJob(options);

    System.assertEquals(
      'id',
      response.getId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'updated',
      response.getUpdated()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      'user_token',
      response.getUserToken()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getResultIndex()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getSpeakerLabels().get(0).getXFrom()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getSpeakerLabels().get(0).getTo()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getSpeakerLabels().get(0).getSpeaker()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getSpeakerLabels().get(0).getConfidence()
    );
    System.assertEquals(
      true,
      response.getResults().get(0).getSpeakerLabels().get(0).getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getReceived()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSeenByEngine()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getTranscription()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSpeakerLabels()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getWallClockSinceFirstByteReceived()
    );
    System.assertEquals(
      true,
      response.getResults().get(0).getProcessingMetrics().getPeriodic()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getSamplingInterval()
    );
    System.assertEquals(
      true,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getEndTime()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSignalToNoiseRatio()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechRatio()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getHighFrequencyLoss()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      'warnings',
      response.getResults().get(0).getWarnings().get(0)
    );
    System.assertEquals(
      'warnings',
      response.getWarnings().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testCheckJobs() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1RecognitionJobs();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();


    IBMSpeechToTextV1Models.CheckJobsOptions options = new IBMSpeechToTextV1Models.CheckJobsOptionsBuilder()
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RecognitionJobs response = service.checkJobs(options);

    System.assertEquals(
      'id',
      response.getRecognitions().get(0).getId()
    );
    System.assertEquals(
      'status',
      response.getRecognitions().get(0).getStatus()
    );
    System.assertEquals(
      'created',
      response.getRecognitions().get(0).getCreated()
    );
    System.assertEquals(
      'updated',
      response.getRecognitions().get(0).getUpdated()
    );
    System.assertEquals(
      'url',
      response.getRecognitions().get(0).getUrl()
    );
    System.assertEquals(
      'user_token',
      response.getRecognitions().get(0).getUserToken()
    );
    System.assertEquals(
      10L,
      response.getRecognitions().get(0).getResults().get(0).getResultIndex()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getXFrom()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getTo()
    );
    System.assertEquals(
      10L,
      response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getSpeaker()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getConfidence()
    );
    System.assertEquals(
      true,
      response.getRecognitions().get(0).getResults().get(0).getSpeakerLabels().get(0).getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getReceived()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getSeenByEngine()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getTranscription()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getProcessedAudio().getSpeakerLabels()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getWallClockSinceFirstByteReceived()
    );
    System.assertEquals(
      true,
      response.getRecognitions().get(0).getResults().get(0).getProcessingMetrics().getPeriodic()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getSamplingInterval()
    );
    System.assertEquals(
      true,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getEndTime()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSignalToNoiseRatio()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechRatio()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getHighFrequencyLoss()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getRecognitions().get(0).getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      'warnings',
      response.getRecognitions().get(0).getResults().get(0).getWarnings().get(0)
    );
    System.assertEquals(
      'warnings',
      response.getRecognitions().get(0).getWarnings().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testCheckJob() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1RecognitionJob();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String id = 'id';

    IBMSpeechToTextV1Models.CheckJobOptions options = new IBMSpeechToTextV1Models.CheckJobOptionsBuilder()
      .id(id)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.RecognitionJob response = service.checkJob(options);

    System.assertEquals(
      'id',
      response.getId()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'updated',
      response.getUpdated()
    );
    System.assertEquals(
      'url',
      response.getUrl()
    );
    System.assertEquals(
      'user_token',
      response.getUserToken()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getResultIndex()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getSpeakerLabels().get(0).getXFrom()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getSpeakerLabels().get(0).getTo()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getSpeakerLabels().get(0).getSpeaker()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getSpeakerLabels().get(0).getConfidence()
    );
    System.assertEquals(
      true,
      response.getResults().get(0).getSpeakerLabels().get(0).getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getReceived()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSeenByEngine()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getTranscription()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getProcessedAudio().getSpeakerLabels()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getProcessingMetrics().getWallClockSinceFirstByteReceived()
    );
    System.assertEquals(
      true,
      response.getResults().get(0).getProcessingMetrics().getPeriodic()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getSamplingInterval()
    );
    System.assertEquals(
      true,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getXFinal()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getEndTime()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSignalToNoiseRatio()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechRatio()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getHighFrequencyLoss()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getDirectCurrentOffset().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getClippingRate().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXBegin()
    );
    System.assertEquals(
      0.5,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getXEnd()
    );
    System.assertEquals(
      10L,
      response.getResults().get(0).getAudioMetrics().getAccumulated().getNonSpeechLevel().get(0).getCount()
    );
    System.assertEquals(
      'warnings',
      response.getResults().get(0).getWarnings().get(0)
    );
    System.assertEquals(
      'warnings',
      response.getWarnings().get(0)
    );

    Test.stopTest();
  }
  static testMethod void testDeleteJob() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String id = 'id';

    IBMSpeechToTextV1Models.DeleteJobOptions options = new IBMSpeechToTextV1Models.DeleteJobOptionsBuilder()
      .id(id)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteJob(options);

    Test.stopTest();
  }
  static testMethod void testCreateLanguageModel() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1LanguageModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String name = 'name';
    String baseModelName = 'base_model_name';
    String dialect = 'dialect';
    String description = 'description';

    IBMSpeechToTextV1Models.CreateLanguageModelOptions options = new IBMSpeechToTextV1Models.CreateLanguageModelOptionsBuilder()
      .name(name)
      .baseModelName(baseModelName)
      .dialect(dialect)
      .description(description)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.LanguageModel response = service.createLanguageModel(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizationId()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'updated',
      response.getUpdated()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'dialect',
      response.getDialect()
    );
    System.assertEquals(
      'versions',
      response.getVersions().get(0)
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'base_model_name',
      response.getBaseModelName()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      10L,
      response.getProgress()
    );
    System.assertEquals(
      'error',
      response.getError()
    );
    System.assertEquals(
      'warnings',
      response.getWarnings()
    );

    Test.stopTest();
  }
  static testMethod void testListLanguageModels() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1LanguageModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String language = 'language';

    IBMSpeechToTextV1Models.ListLanguageModelsOptions options = new IBMSpeechToTextV1Models.ListLanguageModelsOptionsBuilder()
      .language(language)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.LanguageModels response = service.listLanguageModels(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizations().get(0).getCustomizationId()
    );
    System.assertEquals(
      'created',
      response.getCustomizations().get(0).getCreated()
    );
    System.assertEquals(
      'updated',
      response.getCustomizations().get(0).getUpdated()
    );
    System.assertEquals(
      'language',
      response.getCustomizations().get(0).getLanguage()
    );
    System.assertEquals(
      'dialect',
      response.getCustomizations().get(0).getDialect()
    );
    System.assertEquals(
      'versions',
      response.getCustomizations().get(0).getVersions().get(0)
    );
    System.assertEquals(
      'owner',
      response.getCustomizations().get(0).getOwner()
    );
    System.assertEquals(
      'name',
      response.getCustomizations().get(0).getName()
    );
    System.assertEquals(
      'description',
      response.getCustomizations().get(0).getDescription()
    );
    System.assertEquals(
      'base_model_name',
      response.getCustomizations().get(0).getBaseModelName()
    );
    System.assertEquals(
      'status',
      response.getCustomizations().get(0).getStatus()
    );
    System.assertEquals(
      10L,
      response.getCustomizations().get(0).getProgress()
    );
    System.assertEquals(
      'error',
      response.getCustomizations().get(0).getError()
    );
    System.assertEquals(
      'warnings',
      response.getCustomizations().get(0).getWarnings()
    );

    Test.stopTest();
  }
  static testMethod void testGetLanguageModel() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1LanguageModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.GetLanguageModelOptions options = new IBMSpeechToTextV1Models.GetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.LanguageModel response = service.getLanguageModel(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizationId()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'updated',
      response.getUpdated()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'dialect',
      response.getDialect()
    );
    System.assertEquals(
      'versions',
      response.getVersions().get(0)
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'base_model_name',
      response.getBaseModelName()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      10L,
      response.getProgress()
    );
    System.assertEquals(
      'error',
      response.getError()
    );
    System.assertEquals(
      'warnings',
      response.getWarnings()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteLanguageModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.DeleteLanguageModelOptions options = new IBMSpeechToTextV1Models.DeleteLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteLanguageModel(options);

    Test.stopTest();
  }
  static testMethod void testTrainLanguageModel() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1TrainingResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String wordTypeToAdd = 'word_type_to_add';
    Double customizationWeight = 0.5;

    IBMSpeechToTextV1Models.TrainLanguageModelOptions options = new IBMSpeechToTextV1Models.TrainLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .wordTypeToAdd(wordTypeToAdd)
      .customizationWeight(customizationWeight)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.TrainingResponse response = service.trainLanguageModel(options);

    System.assertEquals(
      'code',
      response.getWarnings().get(0).getCode()
    );
    System.assertEquals(
      'message',
      response.getWarnings().get(0).getMessage()
    );

    Test.stopTest();
  }
  static testMethod void testResetLanguageModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ResetLanguageModelOptions options = new IBMSpeechToTextV1Models.ResetLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.resetLanguageModel(options);

    Test.stopTest();
  }
  static testMethod void testUpgradeLanguageModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.UpgradeLanguageModelOptions options = new IBMSpeechToTextV1Models.UpgradeLanguageModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.upgradeLanguageModel(options);

    Test.stopTest();
  }
  static testMethod void testListCorpora() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1Corpora();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ListCorporaOptions options = new IBMSpeechToTextV1Models.ListCorporaOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Corpora response = service.listCorpora(options);

    System.assertEquals(
      'name',
      response.getCorpora().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getCorpora().get(0).getTotalWords()
    );
    System.assertEquals(
      10L,
      response.getCorpora().get(0).getOutOfVocabularyWords()
    );
    System.assertEquals(
      'status',
      response.getCorpora().get(0).getStatus()
    );
    System.assertEquals(
      'error',
      response.getCorpora().get(0).getError()
    );

    Test.stopTest();
  }
  static testMethod void testAddCorpus() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String corpusName = 'corpus_name';
    IBMWatsonFile corpusFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    Boolean allowOverwrite = true;

    IBMSpeechToTextV1Models.AddCorpusOptions options = new IBMSpeechToTextV1Models.AddCorpusOptionsBuilder()
      .customizationId(customizationId)
      .corpusName(corpusName)
      .corpusFile(corpusFile)
      .allowOverwrite(allowOverwrite)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addCorpus(options);

    Test.stopTest();
  }
  static testMethod void testGetCorpus() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1Corpus();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String corpusName = 'corpus_name';

    IBMSpeechToTextV1Models.GetCorpusOptions options = new IBMSpeechToTextV1Models.GetCorpusOptionsBuilder()
      .customizationId(customizationId)
      .corpusName(corpusName)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Corpus response = service.getCorpus(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      10L,
      response.getTotalWords()
    );
    System.assertEquals(
      10L,
      response.getOutOfVocabularyWords()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'error',
      response.getError()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteCorpus() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String corpusName = 'corpus_name';

    IBMSpeechToTextV1Models.DeleteCorpusOptions options = new IBMSpeechToTextV1Models.DeleteCorpusOptionsBuilder()
      .customizationId(customizationId)
      .corpusName(corpusName)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteCorpus(options);

    Test.stopTest();
  }
  static testMethod void testListWords() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1Words();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String wordType = 'word_type';
    String xSort = 'x_sort';

    IBMSpeechToTextV1Models.ListWordsOptions options = new IBMSpeechToTextV1Models.ListWordsOptionsBuilder()
      .customizationId(customizationId)
      .wordType(wordType)
      .xSort(xSort)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Words response = service.listWords(options);

    System.assertEquals(
      'word',
      response.getWords().get(0).getWord()
    );
    System.assertEquals(
      'sounds_like',
      response.getWords().get(0).getSoundsLike().get(0)
    );
    System.assertEquals(
      'display_as',
      response.getWords().get(0).getDisplayAs()
    );
    System.assertEquals(
      10L,
      response.getWords().get(0).getCount()
    );
    System.assertEquals(
      'source',
      response.getWords().get(0).getSource().get(0)
    );
    System.assertEquals(
      'element',
      response.getWords().get(0).getError().get(0).getElement()
    );

    Test.stopTest();
  }
  static testMethod void testAddWords() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    IBMSpeechToTextV1Models.CustomWord wordsItem = new IBMSpeechToTextV1Models.CustomWordBuilder()
      .build();
    List<IBMSpeechToTextV1Models.CustomWord> words = new List<IBMSpeechToTextV1Models.CustomWord> { wordsItem } ;

    IBMSpeechToTextV1Models.AddWordsOptions options = new IBMSpeechToTextV1Models.AddWordsOptionsBuilder()
      .customizationId(customizationId)
      .words(words)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWords(options);

    Test.stopTest();
  }
  static testMethod void testAddWord() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String wordName = 'word_name';
    String word = 'word';
    List<String> soundsLike = new List<String> { 'sounds_like' } ;
    String displayAs = 'display_as';

    IBMSpeechToTextV1Models.AddWordOptions options = new IBMSpeechToTextV1Models.AddWordOptionsBuilder()
      .customizationId(customizationId)
      .wordName(wordName)
      .word(word)
      .soundsLike(soundsLike)
      .displayAs(displayAs)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addWord(options);

    Test.stopTest();
  }
  static testMethod void testGetWord() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1Word();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String wordName = 'word_name';

    IBMSpeechToTextV1Models.GetWordOptions options = new IBMSpeechToTextV1Models.GetWordOptionsBuilder()
      .customizationId(customizationId)
      .wordName(wordName)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Word response = service.getWord(options);

    System.assertEquals(
      'word',
      response.getWord()
    );
    System.assertEquals(
      'sounds_like',
      response.getSoundsLike().get(0)
    );
    System.assertEquals(
      'display_as',
      response.getDisplayAs()
    );
    System.assertEquals(
      10L,
      response.getCount()
    );
    System.assertEquals(
      'source',
      response.getSource().get(0)
    );
    System.assertEquals(
      'element',
      response.getError().get(0).getElement()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteWord() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String wordName = 'word_name';

    IBMSpeechToTextV1Models.DeleteWordOptions options = new IBMSpeechToTextV1Models.DeleteWordOptionsBuilder()
      .customizationId(customizationId)
      .wordName(wordName)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteWord(options);

    Test.stopTest();
  }
  static testMethod void testListGrammars() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1Grammars();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ListGrammarsOptions options = new IBMSpeechToTextV1Models.ListGrammarsOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Grammars response = service.listGrammars(options);

    System.assertEquals(
      'name',
      response.getGrammars().get(0).getName()
    );
    System.assertEquals(
      10L,
      response.getGrammars().get(0).getOutOfVocabularyWords()
    );
    System.assertEquals(
      'status',
      response.getGrammars().get(0).getStatus()
    );
    System.assertEquals(
      'error',
      response.getGrammars().get(0).getError()
    );

    Test.stopTest();
  }
  static testMethod void testAddGrammar() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';
    IBMWatsonFile grammarFile = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    Boolean allowOverwrite = true;

    IBMSpeechToTextV1Models.AddGrammarOptions options = new IBMSpeechToTextV1Models.AddGrammarOptionsBuilder()
      .customizationId(customizationId)
      .grammarName(grammarName)
      .grammarFile(grammarFile)
      .contentType(contentType)
      .allowOverwrite(allowOverwrite)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addGrammar(options);

    Test.stopTest();
  }
  static testMethod void testGetGrammar() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1Grammar();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';

    IBMSpeechToTextV1Models.GetGrammarOptions options = new IBMSpeechToTextV1Models.GetGrammarOptionsBuilder()
      .customizationId(customizationId)
      .grammarName(grammarName)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.Grammar response = service.getGrammar(options);

    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      10L,
      response.getOutOfVocabularyWords()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      'error',
      response.getError()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteGrammar() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String grammarName = 'grammar_name';

    IBMSpeechToTextV1Models.DeleteGrammarOptions options = new IBMSpeechToTextV1Models.DeleteGrammarOptionsBuilder()
      .customizationId(customizationId)
      .grammarName(grammarName)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteGrammar(options);

    Test.stopTest();
  }
  static testMethod void testCreateAcousticModel() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1AcousticModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String name = 'name';
    String baseModelName = 'base_model_name';
    String description = 'description';

    IBMSpeechToTextV1Models.CreateAcousticModelOptions options = new IBMSpeechToTextV1Models.CreateAcousticModelOptionsBuilder()
      .name(name)
      .baseModelName(baseModelName)
      .description(description)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AcousticModel response = service.createAcousticModel(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizationId()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'updated',
      response.getUpdated()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'versions',
      response.getVersions().get(0)
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'base_model_name',
      response.getBaseModelName()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      10L,
      response.getProgress()
    );
    System.assertEquals(
      'warnings',
      response.getWarnings()
    );

    Test.stopTest();
  }
  static testMethod void testListAcousticModels() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1AcousticModels();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String language = 'language';

    IBMSpeechToTextV1Models.ListAcousticModelsOptions options = new IBMSpeechToTextV1Models.ListAcousticModelsOptionsBuilder()
      .language(language)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AcousticModels response = service.listAcousticModels(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizations().get(0).getCustomizationId()
    );
    System.assertEquals(
      'created',
      response.getCustomizations().get(0).getCreated()
    );
    System.assertEquals(
      'updated',
      response.getCustomizations().get(0).getUpdated()
    );
    System.assertEquals(
      'language',
      response.getCustomizations().get(0).getLanguage()
    );
    System.assertEquals(
      'versions',
      response.getCustomizations().get(0).getVersions().get(0)
    );
    System.assertEquals(
      'owner',
      response.getCustomizations().get(0).getOwner()
    );
    System.assertEquals(
      'name',
      response.getCustomizations().get(0).getName()
    );
    System.assertEquals(
      'description',
      response.getCustomizations().get(0).getDescription()
    );
    System.assertEquals(
      'base_model_name',
      response.getCustomizations().get(0).getBaseModelName()
    );
    System.assertEquals(
      'status',
      response.getCustomizations().get(0).getStatus()
    );
    System.assertEquals(
      10L,
      response.getCustomizations().get(0).getProgress()
    );
    System.assertEquals(
      'warnings',
      response.getCustomizations().get(0).getWarnings()
    );

    Test.stopTest();
  }
  static testMethod void testGetAcousticModel() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1AcousticModel();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.GetAcousticModelOptions options = new IBMSpeechToTextV1Models.GetAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AcousticModel response = service.getAcousticModel(options);

    System.assertEquals(
      'customization_id',
      response.getCustomizationId()
    );
    System.assertEquals(
      'created',
      response.getCreated()
    );
    System.assertEquals(
      'updated',
      response.getUpdated()
    );
    System.assertEquals(
      'language',
      response.getLanguage()
    );
    System.assertEquals(
      'versions',
      response.getVersions().get(0)
    );
    System.assertEquals(
      'owner',
      response.getOwner()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'description',
      response.getDescription()
    );
    System.assertEquals(
      'base_model_name',
      response.getBaseModelName()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      10L,
      response.getProgress()
    );
    System.assertEquals(
      'warnings',
      response.getWarnings()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteAcousticModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.DeleteAcousticModelOptions options = new IBMSpeechToTextV1Models.DeleteAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteAcousticModel(options);

    Test.stopTest();
  }
  static testMethod void testTrainAcousticModel() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1TrainingResponse();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String customLanguageModelId = 'custom_language_model_id';

    IBMSpeechToTextV1Models.TrainAcousticModelOptions options = new IBMSpeechToTextV1Models.TrainAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .customLanguageModelId(customLanguageModelId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.TrainingResponse response = service.trainAcousticModel(options);

    System.assertEquals(
      'code',
      response.getWarnings().get(0).getCode()
    );
    System.assertEquals(
      'message',
      response.getWarnings().get(0).getMessage()
    );

    Test.stopTest();
  }
  static testMethod void testResetAcousticModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ResetAcousticModelOptions options = new IBMSpeechToTextV1Models.ResetAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.resetAcousticModel(options);

    Test.stopTest();
  }
  static testMethod void testUpgradeAcousticModel() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String customLanguageModelId = 'custom_language_model_id';
    Boolean force = true;

    IBMSpeechToTextV1Models.UpgradeAcousticModelOptions options = new IBMSpeechToTextV1Models.UpgradeAcousticModelOptionsBuilder()
      .customizationId(customizationId)
      .customLanguageModelId(customLanguageModelId)
      .force(force)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.upgradeAcousticModel(options);

    Test.stopTest();
  }
  static testMethod void testListAudio() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1AudioResources();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';

    IBMSpeechToTextV1Models.ListAudioOptions options = new IBMSpeechToTextV1Models.ListAudioOptionsBuilder()
      .customizationId(customizationId)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AudioResources response = service.listAudio(options);

    System.assertEquals(
      0.5,
      response.getTotalMinutesOfAudio()
    );
    System.assertEquals(
      10L,
      response.getAudio().get(0).getDuration()
    );
    System.assertEquals(
      'name',
      response.getAudio().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getAudio().get(0).getDetails().getXType()
    );
    System.assertEquals(
      'codec',
      response.getAudio().get(0).getDetails().getCodec()
    );
    System.assertEquals(
      10L,
      response.getAudio().get(0).getDetails().getFrequency()
    );
    System.assertEquals(
      'compression',
      response.getAudio().get(0).getDetails().getCompression()
    );
    System.assertEquals(
      'status',
      response.getAudio().get(0).getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testAddAudio() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String audioName = 'audio_name';
    IBMWatsonFile audioResource = new IBMWatsonFile.FileBuilder()
      .name('test_file')
      .description('File for unit testing')
      .contentType('text/plain')
      .body(Blob.valueOf('Test file contents string'))
      .build();
    String contentType = 'content_type';
    String containedContentType = 'contained_content_type';
    Boolean allowOverwrite = true;

    IBMSpeechToTextV1Models.AddAudioOptions options = new IBMSpeechToTextV1Models.AddAudioOptionsBuilder()
      .customizationId(customizationId)
      .audioName(audioName)
      .audioResource(audioResource)
      .contentType(contentType)
      .containedContentType(containedContentType)
      .allowOverwrite(allowOverwrite)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.addAudio(options);

    Test.stopTest();
  }
  static testMethod void testGetAudio() {
    String mockResponseBody = IBMWatsonMockResponses.speechToTextV1AudioListing();
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String audioName = 'audio_name';

    IBMSpeechToTextV1Models.GetAudioOptions options = new IBMSpeechToTextV1Models.GetAudioOptionsBuilder()
      .customizationId(customizationId)
      .audioName(audioName)
      .addHeader('Test-Header', 'test_value')
      .build();

    IBMSpeechToTextV1Models.AudioListing response = service.getAudio(options);

    System.assertEquals(
      10L,
      response.getDuration()
    );
    System.assertEquals(
      'name',
      response.getName()
    );
    System.assertEquals(
      'type',
      response.getDetails().getXType()
    );
    System.assertEquals(
      'codec',
      response.getDetails().getCodec()
    );
    System.assertEquals(
      10L,
      response.getDetails().getFrequency()
    );
    System.assertEquals(
      'compression',
      response.getDetails().getCompression()
    );
    System.assertEquals(
      'status',
      response.getStatus()
    );
    System.assertEquals(
      10L,
      response.getContainer().getDuration()
    );
    System.assertEquals(
      'name',
      response.getContainer().getName()
    );
    System.assertEquals(
      'type',
      response.getContainer().getDetails().getXType()
    );
    System.assertEquals(
      'codec',
      response.getContainer().getDetails().getCodec()
    );
    System.assertEquals(
      10L,
      response.getContainer().getDetails().getFrequency()
    );
    System.assertEquals(
      'compression',
      response.getContainer().getDetails().getCompression()
    );
    System.assertEquals(
      'status',
      response.getContainer().getStatus()
    );
    System.assertEquals(
      10L,
      response.getAudio().get(0).getDuration()
    );
    System.assertEquals(
      'name',
      response.getAudio().get(0).getName()
    );
    System.assertEquals(
      'type',
      response.getAudio().get(0).getDetails().getXType()
    );
    System.assertEquals(
      'codec',
      response.getAudio().get(0).getDetails().getCodec()
    );
    System.assertEquals(
      10L,
      response.getAudio().get(0).getDetails().getFrequency()
    );
    System.assertEquals(
      'compression',
      response.getAudio().get(0).getDetails().getCompression()
    );
    System.assertEquals(
      'status',
      response.getAudio().get(0).getStatus()
    );

    Test.stopTest();
  }
  static testMethod void testDeleteAudio() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customizationId = 'customization_id';
    String audioName = 'audio_name';

    IBMSpeechToTextV1Models.DeleteAudioOptions options = new IBMSpeechToTextV1Models.DeleteAudioOptionsBuilder()
      .customizationId(customizationId)
      .audioName(audioName)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteAudio(options);

    Test.stopTest();
  }
  static testMethod void testDeleteUserData() {
    String mockResponseBody = '';
    IBMWatsonMockHttpResponse mockResponse = new IBMWatsonMockHttpResponse(
      200,
      'Success',
      mockResponseBody,
      null
    );
    Test.setMock(HttpCalloutMock.class, mockResponse);
    Test.startTest();

    String customerId = 'customer_id';

    IBMSpeechToTextV1Models.DeleteUserDataOptions options = new IBMSpeechToTextV1Models.DeleteUserDataOptionsBuilder()
      .customerId(customerId)
      .addHeader('Test-Header', 'test_value')
      .build();

    service.deleteUserData(options);

    Test.stopTest();
  }
}
