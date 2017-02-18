[![Testspace](http://www.testspace.com/img/Testspace.png)](http://www.testspace.com)

***

## JavaScript/Mocha sample for demonstrating Testspace based on the [nodejs-tdd-boilerplate](https://github.com/BryanDonovan/nodejs-tdd-boilerplate)

Sample demonstrates techniques for using Testspace with Javascript code and the [Mocha test framework](https://mochajs.org/) together with [Istanbul code coverage tool](https://gotwarlost.github.io/istanbul/).


*** 
Using Multiple Online CI Services:

[![Build Status](https://travis-ci.org/testspace-samples/javascript.mocha.svg?branch=master)](https://travis-ci.org/testspace-samples/javascript.mocha)
[![CircleCI](https://circleci.com/gh/testspace-samples/javascript.mocha.svg?style=svg)](https://circleci.com/gh/testspace-samples/javascript.mocha)
[![Run Status](https://api.shippable.com/projects/57d84135b655251000851a1d/badge?branch=master)](https://app.shippable.com/projects/57d84135b655251000851a1d)


***
Publising **Test Content** using www.testspace.com

[![Space Health](https://samples.testspace.com/spaces/799/badge)](https://samples.testspace.com/spaces/799 "Test Cases")
[![Space Metric](https://samples.testspace.com/spaces/799/metrics/743/badge)](https://samples.testspace.com/spaces/799/schema/Code%20Coverage "Code Coverage (branches)")
[![Space Metric](https://samples.testspace.com/spaces/799/metrics/745/badge)](https://samples.testspace.com/spaces/799/schema/Code%20Coverage "Code Coverage (methods)")
[![Space Metric](https://samples.testspace.com/spaces/799/metrics/746/badge)](https://samples.testspace.com/spaces/799/schema/Static%20Analysis "Static Analysis (issues)")

***

In order to run this sample you will need a host workstation with installed npm.

<pre>
npm install
make lint test
</pre>

<pre>
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace @.testspace.txt $TESTSPACE_TOKEN/$GITHUB_ORG:$REPO_NAME/$BRANCH_NAME#$BUILD_NUMBER
</pre> 

Checkout the published [Test Content](https://samples.testspace.com/projects/testspace-samples:javascript.mocha). Note that the `.testspace.txt` file contains the [set of files](http://help.testspace.com/how-to:publish-content#publishing-via-content-list-file) to publish. 

***

To replicate this sample: 
  - Setup account at www.testspace.com.
  - Create a Environment variable called `TESTSPACE_TOKEN`
     - `TESTSPACE_TOKEN` = `credentials@Your-Org-Name.testspace.com`
     - `credentials` set to `username:password` or your [access token](http://help.testspace.com/reference:client-reference#login-credentials)
     - To [use Testspace with a CI system](http://help.testspace.com/how-to:add-to-ci-workflow), store `TESTSPACE_TOKEN` as a secure environment variable
 
