#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" == "false" ] && [ "$TRAVIS_BRANCH" ]; then
  sfdx force:auth:jwt:grant --clientid $CONSUMER_KEY --jwtkeyfile assets/server.key --username $USERNAME --setdefaultdevhubusername -a HubOrg
  sfdx force:org:create -v HubOrg -s -f config/project-scratch-def.json -a ciorg
  sfdx force:source:push -u ciorg
  sfdx force:mdapi:deploy -d config/remoteSiteEndpoint -w 1
  sfdx force:mdapi:deploy -d config/DocumentsFTest -w 1
  sfdx force:apex:test:run -u ciorg -c -r human

  echo "IBMDiscoveryV1FTests.runAllTests('$DISCOVERY_API_KEY');" > DiscoveryTestRunner.apex
  $(sfdx force:apex:execute -f DiscoveryTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm DiscoveryTestRunner.apex

  echo "IBMPersonalityInsightsV3FTest.runAllTests('$PERSONALITY_INSIGHTS_API_KEY');" > PersonalityInsightsTestRunner.apex
  $(sfdx force:apex:execute -f PersonalityInsightsTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm PersonalityInsightsTestRunner.apex

  echo "IBMToneAnalyzerV3FTest.runAllTests('$TONE_ANALYZER_API_KEY');" > ToneAnalyzerTestRunner.apex
  $(sfdx force:apex:execute -f ToneAnalyzerTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm ToneAnalyzerTestRunner.apex

  echo "IBMNaturalLanguageUnderstandingV1FTest.runAllTests('$NLU_API_KEY');" > NLUTestRunner.apex
  $(sfdx force:apex:execute -f NLUTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm NLUTestRunner.apex

  echo "IBMNaturalLanguageClassifierV1FTests.runAllTests('$NLC_API_KEY');" > NLCTestRunner.apex
  $(sfdx force:apex:execute -f NLCTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm NLCTestRunner.apex

  echo "IBMTextToSpeechV1FTest.runAllTests('$TEXT_TO_SPEECH_API_KEY');" > TextToSpeechTestRunner.apex
  $(sfdx force:apex:execute -f TextToSpeechTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm TextToSpeechTestRunner.apex

  echo "IBMSpeechToTextV1FTest.runAllTests('$SPEECH_TO_TEXT_API_KEY');" > SpeechToTextTestRunner.apex
  $(sfdx force:apex:execute -f SpeechToTextTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm SpeechToTextTestRunner.apex

  echo "IBMAssistantV2FTests.runAllTests('$ASSISTANT_V2_API_KEY', '$ASSISTANT_V2_ASSISTANT_ID');" > AssistantV2TestRunner.apex
  $(sfdx force:apex:execute -f AssistantV2TestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm AssistantV2TestRunner.apex

  echo "IBMVisualRecognitionV3FTest.runAllTests('$VISUAL_RECOGNITION_IAM_API_KEY');" > VisualRecognitionV3TestRunner.apex
  $(sfdx force:apex:execute -f VisualRecognitionV3TestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo “Success” || exit 1
  rm VisualRecognitionV3TestRunner.apex

  echo "IBMCompareComplyV1FTests.runAllTests('$COMPARE_AND_COMPLY_IAM_API_KEY');" > CompareComplyTestRunner.apex
  $(sfdx force:apex:execute -f CompareComplyTestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo "Success" || exit 1
  rm CompareComplyTestRunner.apex

  echo "IBMVisualRecognitionV4FTests.runAllTests('$VISUAL_RECOGNITION_IAM_API_KEY');" > VisualRecognitionV4TestRunner.apex
  $(sfdx force:apex:execute -f VisualRecognitionV4TestRunner.apex --json | jq -e -r '.result.compiled == true and .result.success == true') && echo "Success" || exit 1
  rm VisualRecognitionV4TestRunner.apex
  
  echo "Deploy to main organization"
  sfdx force:org:delete -u ciorg -p
  mv install/package.xml force-app/main/default
  "./install/deploy.sh"
else
  echo -e "Not running integration tests for build $TRAVIS_BUILD_NUMBER ($TRAVIS_JOB_NUMBER) on branch $TRAVIS_BRANCH of repo $TRAVIS_REPO_SLUG"
fi