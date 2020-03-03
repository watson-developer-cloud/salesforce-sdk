# [5.3.0](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v5.2.1...v5.3.0) (2020-03-03)


### Features

* **assistant:** generated changes ([7f4ddff](https://github.com/watson-developer-cloud/salesforce-sdk/commit/7f4ddfff34f9bbea49eea1908d57bcf83b449ebe))
* **compare-comply:** generated changes ([2e35da4](https://github.com/watson-developer-cloud/salesforce-sdk/commit/2e35da40db9302d6f2a648d7936a80f4ddc495fa))
* **discovery:** generated changes ([6fbbc17](https://github.com/watson-developer-cloud/salesforce-sdk/commit/6fbbc177fff75284977c297f5d6033910a74a7e9))
* **language-translator:** generated changes ([b666d3f](https://github.com/watson-developer-cloud/salesforce-sdk/commit/b666d3f32b44e1cd5f12387eef9cf1766081619f))
* **nlc:** generated changes ([75fb2c8](https://github.com/watson-developer-cloud/salesforce-sdk/commit/75fb2c8a70981711d510e7fd458ab5172435b42c))
* **nlu:** generated changes ([71270db](https://github.com/watson-developer-cloud/salesforce-sdk/commit/71270db417ba4cf9b38b9e8589fb39718ae01d15))
* **personality-insights:** generated changes ([801706d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/801706d5463bfc3acf90bd23e3a0592d6caa5cae))
* **speech-to-text:** generated changes ([7e34d77](https://github.com/watson-developer-cloud/salesforce-sdk/commit/7e34d773e5d868d1ff7768ef477020351c657f8b))
* **text-to-speech:** generated changes ([917cdbe](https://github.com/watson-developer-cloud/salesforce-sdk/commit/917cdbe617e227055140c88af5962bdb43475acd))
* **tone-analyzer:** generated changes ([6a6f0f4](https://github.com/watson-developer-cloud/salesforce-sdk/commit/6a6f0f4893b50b1e5933761193721c45c8e0209c))
* **visual-recognition:** generated changes ([3bb2432](https://github.com/watson-developer-cloud/salesforce-sdk/commit/3bb2432223f78d15c3290da06c17261ff177876f))

## [5.2.1](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v5.2.0...v5.2.1) (2020-01-17)


### Bug Fixes

* **Natural Language Understanding:** Add back model parameter in CategoriesOptions, which was mistak ([2319ada](https://github.com/watson-developer-cloud/salesforce-sdk/commit/2319adada8def2bbaa8a53bc21925e348a097652))

# [5.2.0](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v5.1.0...v5.2.0) (2020-01-17)


### Bug Fixes

* **Discovery v1:** Ensure required parameters are sent to avoid service errors ([51a9917](https://github.com/watson-developer-cloud/salesforce-sdk/commit/51a99179e9ef51cf73f785c60e4a395458a52341))
* **Discovery v2:** Ensure required parameters are sent to avoid service errors ([e71019e](https://github.com/watson-developer-cloud/salesforce-sdk/commit/e71019eda38722c03c0f5bcb27b33a49e8f61f74))


### Features

* **Assistant v2:** Add xSystem property to MessageContextSkill model ([9f53194](https://github.com/watson-developer-cloud/salesforce-sdk/commit/9f53194d37d54305b6017f7fa1f5e00c13f6109d))
* **Speech to Text:** Add endOfPhraseSilenceTime and splitTranscriptAtPhraseEnd params to recognizeO ([5bce0ab](https://github.com/watson-developer-cloud/salesforce-sdk/commit/5bce0abe217cfac8fff212368940cd69b4ed8a71))

# [5.1.0](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v5.0.0...v5.1.0) (2019-11-27)


### Bug Fixes

* **Discovery v1:** Remove incorrectly-defined title prop from QueryResult and QueryNoticesResult ([6deb3f2](https://github.com/watson-developer-cloud/salesforce-sdk/commit/6deb3f26a85c6b0d4040d7e83aaa4b2b4efdb70c))


### Features

* **Assistant v1:** Add disambiguationOptOut prop to dialog nodes ([079c545](https://github.com/watson-developer-cloud/salesforce-sdk/commit/079c5454b2371d6169351004983092b3fac168a7))
* **Assistant v1:** Add offTopic prop to WorkspaceSystemSettings ([869d179](https://github.com/watson-developer-cloud/salesforce-sdk/commit/869d179df721a85b43ccfb5c1c3882352b300a1d))
* **Assistant v1:** Add suggestionTextPolicy prop to WorkspaceSystemSettingsDisambiguation ([d7d4a7d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/d7d4a7df1e11af18dccf10f62f95589b628fdf02))
* **Assistant v1:** Add workspace webhook functionality ([d78ad68](https://github.com/watson-developer-cloud/salesforce-sdk/commit/d78ad686b9247396936fc0839f62a6ae7b411901))
* **Discovery v2:** Add initial generation of service ([896b9ae](https://github.com/watson-developer-cloud/salesforce-sdk/commit/896b9ae0f284926237cc1a8f25af4b699707c830))
* **Visual Recognition v4:** Add getTrainingUsage method ([24e01e8](https://github.com/watson-developer-cloud/salesforce-sdk/commit/24e01e84353cde9c1175cc510734a72006c13c85))

# [5.0.0](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v4.4.5...v5.0.0) (2019-11-27)


### Bug Fixes

* Handle multipart form sending from Visual Recognition and others ([8651e0d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/8651e0d246b12914769c079d8efc1c3071e280c2))
* **Discovery v1:** Remove incorrectly-defined title prop from QueryResult and QueryNoticesResult ([6deb3f2](https://github.com/watson-developer-cloud/salesforce-sdk/commit/6deb3f26a85c6b0d4040d7e83aaa4b2b4efdb70c))


### Features

* **Assistant v1:** Add constructor for external auth config and fix serialization bug ([7790e43](https://github.com/watson-developer-cloud/salesforce-sdk/commit/7790e435de61f6db4bf7be5905f512c0dbd9b8e7))
* **Assistant v1:** Add disambiguationOptOut prop to dialog nodes ([079c545](https://github.com/watson-developer-cloud/salesforce-sdk/commit/079c5454b2371d6169351004983092b3fac168a7))
* **Assistant v1:** Add offTopic prop to WorkspaceSystemSettings ([869d179](https://github.com/watson-developer-cloud/salesforce-sdk/commit/869d179df721a85b43ccfb5c1c3882352b300a1d))
* **Assistant v1:** Add suggestionTextPolicy prop to WorkspaceSystemSettingsDisambiguation ([d7d4a7d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/d7d4a7df1e11af18dccf10f62f95589b628fdf02))
* **Assistant v1:** Add workspace webhook functionality ([d78ad68](https://github.com/watson-developer-cloud/salesforce-sdk/commit/d78ad686b9247396936fc0839f62a6ae7b411901))
* **Assistant v2:** Add constructor for external auth config and fix serialization bug ([82a8470](https://github.com/watson-developer-cloud/salesforce-sdk/commit/82a847075cfb93a2925d0a8540bd7ee3c2e84125))
* **Compare and Comply:** Add constructor for external auth config and fix serialization bug ([ed19cf7](https://github.com/watson-developer-cloud/salesforce-sdk/commit/ed19cf722d914727c52af625eb4a8263cbe8461b))
* **core:** Add authenticator for bearer tokens ([de3cdba](https://github.com/watson-developer-cloud/salesforce-sdk/commit/de3cdbafc43f3b90838059ff2904942287f7f177))
* **core:** Add base classes around token auth ([3bb0202](https://github.com/watson-developer-cloud/salesforce-sdk/commit/3bb02029cefb28651f1dd1edd07158a7732b1591))
* **core:** Add class for authenticating with external credentials ([9498af7](https://github.com/watson-developer-cloud/salesforce-sdk/commit/9498af7c0d423fc6c2048ce808b1236b48ece71f))
* **core:** Add new base authenticator and modify interface ([d45ad8a](https://github.com/watson-developer-cloud/salesforce-sdk/commit/d45ad8a96cf68df712deb39039db12d191a99517))
* **core:** Add superclass methods to get mapping between SDK and API prop names ([87c79b7](https://github.com/watson-developer-cloud/salesforce-sdk/commit/87c79b73c858322a1f4dd18a4b4f350a6f31818e))
* **Discovery:** Add constructor for external auth config and fix serialization bug ([e3c8231](https://github.com/watson-developer-cloud/salesforce-sdk/commit/e3c8231735c0647726ed9e9c41fe1ca541329344))
* **Discovery v2:** Add initial generation of service ([896b9ae](https://github.com/watson-developer-cloud/salesforce-sdk/commit/896b9ae0f284926237cc1a8f25af4b699707c830))
* **IBMWatsonJSONUtil:** Add method to replace JSON keys in a model being serialized ([b3fe6b5](https://github.com/watson-developer-cloud/salesforce-sdk/commit/b3fe6b5a9e09170e5ec19759cc04650217bf98dc))
* **Language Translator:** Add constructor for external auth config and fix serialization bug ([b0295b7](https://github.com/watson-developer-cloud/salesforce-sdk/commit/b0295b7fdc5bbd6fc1369d8992fa678684ab8241))
* **Natural Language Classifier:** Add constructor for external auth config and fix serialization bug ([1c11430](https://github.com/watson-developer-cloud/salesforce-sdk/commit/1c11430e278d2f1b38ebedb5c660af9558582939))
* **Natural Language Understanding:** Add constructor for external auth config and fix serialization bug ([befc99a](https://github.com/watson-developer-cloud/salesforce-sdk/commit/befc99a70045e52bb34cd4582dc3487ccd3ed65f))
* Replace property names as necessary when getting response back from API ([9d1a5f4](https://github.com/watson-developer-cloud/salesforce-sdk/commit/9d1a5f449db8b6f9072aba4e0910d54a538340e2))
* **Personality Insights:** Add constructor for external auth config and fix serialization bug ([8d635f2](https://github.com/watson-developer-cloud/salesforce-sdk/commit/8d635f2ff3703963173f92de9a6fe241f3d61c8c))
* **Speech to Text:** Add constructor for external auth config and fix serialization bug ([3cc16fd](https://github.com/watson-developer-cloud/salesforce-sdk/commit/3cc16fd1899c9f2f1e09fce5b28ea5c90a73e7fa))
* **Text to Speech:** Add constructor for external auth config and fix serialization bug ([2ed7e7f](https://github.com/watson-developer-cloud/salesforce-sdk/commit/2ed7e7f88cf7f03caef6dca7216845ca0b0fed4d))
* **Tone Analyzer:** Add constructor for external auth config and fix serialization bug ([1af8d78](https://github.com/watson-developer-cloud/salesforce-sdk/commit/1af8d78f2cd0d9ff64edd6daa4e18e68bea7061b))
* **Visual Recognition v3:** Add constructor for external auth config and fix serialization bug ([a97436d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/a97436d1ea42138c5329cfcf7fc305a052148b0b))
* **Visual Recognition v4:** Add constructor for external auth config and fix serialization bug ([fd54e14](https://github.com/watson-developer-cloud/salesforce-sdk/commit/fd54e14d7fb0610e40f16cf26e66a8501be147da))
* **Visual Recognition v4:** Add getTrainingUsage method ([24e01e8](https://github.com/watson-developer-cloud/salesforce-sdk/commit/24e01e84353cde9c1175cc510734a72006c13c85))
* **Visual Recognition v4:** Add newly generated service ([fc497e9](https://github.com/watson-developer-cloud/salesforce-sdk/commit/fc497e904011cd67547eac72912d1b692beba242))


### BREAKING CHANGES

* **Discovery:** This commit removes the testConfigurationInEnvironment, queryEntities, and
queryRelations methods

## [4.0.1](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v4.0.0...v4.0.1) (2019-05-08)


### Bug Fixes

* **core:** Look for iam_apikey for IAM auth in credential file ([90c103d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/90c103d))
* **IBMWatsonIAMTokenManager:** Fix illegal assignment from Object to String ([1e64f82](https://github.com/watson-developer-cloud/salesforce-sdk/commit/1e64f82))

## [4.0.1](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v4.0.0...v4.0.1) (2019-05-08)


### Bug Fixes

* **core:** Look for iam_apikey for IAM auth in credential file ([90c103d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/90c103d))

## [4.0.1](https://github.com/watson-developer-cloud/salesforce-sdk/compare/v4.0.0...v4.0.1) (2019-04-09)


### Bug Fixes

* **core:** Look for iam_apikey for IAM auth in credential file ([90c103d](https://github.com/watson-developer-cloud/salesforce-sdk/commit/90c103d))
