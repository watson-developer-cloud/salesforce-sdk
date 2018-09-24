## Questions

If you are having difficulties using the APIs or have a question about the IBM Watson Services,
please ask a question on [dW Answers][dw] or [Stack Overflow][stackoverflow].

## Issues

If you encounter an issue with the Salesforce SDK, you are welcome to submit a [bug report](https://github.com/watson-developer-cloud/salesforce-sdk/issues).
Before that, please search for similar issues. It's possible somebody has encountered this issue already.

# Pull Requests

If you want to contribute to the repository, here's a quick guide:
  1. Fork the repository
  2. Develop and [deploy your code changes to your Salesforce org](https://github.com/watson-developer-cloud/salesforce-sdk#installation)
  3. Ensure all tests pass
  4. Commit your changes:   
    * Commits should follow the [Angular commit message guidelines](https://github.com/angular/angular/blob/master/CONTRIBUTING.md#-commit-message-guidelines). This is because our release tool uses this format for determining release versions and generating changelogs. To make this easier, we recommend using the [Commitizen CLI](https://github.com/commitizen/cz-cli) with the `cz-conventional-changelog` adapter.
  5. Push to your fork and submit a pull request to the **master** branch

# Deploy, Develop and Test

If you want to contribute to the repository, here's a quick guide for making update:
1.  Save the code from your fork to local machine using `git clone`
2.  A salesforce.com development org (environment) is needed to deploy, develop and test code updates. 
3.  Deployment scripts “build.properties” and “build.xml” are provided in the package you saved locally from GitHub. You need salesforce [ant migration tool](https://developer.salesforce.com/docs/atlas.en-us.daas.meta/daas/meta_development.htm) to deploy the code to your developer org.
4.  Thorough testing is required to avoid any errors or issues.
5.  Make sure that unit test code is added for all the changes. This is required for deployment and quality of code. Minimum 75% code coverage is required. It is recommended that you write unit test for all the code if possible.


# Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
   have the right to submit it under the open source license
   indicated in the file; or

(b) The contribution is based upon previous work that, to the best
   of my knowledge, is covered under an appropriate open source
   license and I have the right under that license to submit that
   work with modifications, whether created in whole or in part
   by me, under the same open source license (unless I am
   permitted to submit under a different license), as indicated
   in the file; or

(c) The contribution was provided directly to me by some other
   person who certified (a), (b) or (c) and I have not modified
   it.

(d) I understand and agree that this project and the contribution
   are public and that a record of the contribution (including all
   personal information I submit with it, including my sign-off) is
   maintained indefinitely and may be redistributed consistent with
   this project or the open source license(s) involved.

## Coding Guidelines

Salesforce has very comprehensive [developer guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_dev_guide.htm). Please refer to it for any development-related questions or information. Our code is following the [Salesforce best practices](https://developer.salesforce.com/page/Apex_Code_Best_Practices). Please follow the Apex coding best practices before updating the code.

For code styling we recommend: https://github.com/PolarisProject/salesforceStyleGuide

Please follow the Salesforce guidelines for unit testing. The links to unit test guide lines are provided below. This SDK contains unit test code that provides examples for writing unit tests and how to use the SDK to connect to the Watson APIs.

* [Writing unit tests](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_testing.htm)
* [running unit tests](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_testing_unit_tests_running.htm)
* [REST callout specific unit tests](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_restful_http_testing.htm)

## Additional Resources

* [General GitHub documentation](https://help.github.com/)
* [GitHub pull request documentation](https://help.github.com/send-pull-requests/)

[dw]: https://developer.ibm.com/answers/questions/ask/?topics=watson
[stackoverflow]: http://stackoverflow.com/questions/ask?tags=ibm-watson
[Maven]: https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html
[Gradle]: https://docs.gradle.org/current/userguide/installation.html