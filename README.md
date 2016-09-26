[![Testspace](http://www.testspace.com/public/img/testspace_logo.png)](http://www.testspace.com)
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

[![Space Health](https://samples.testspace.com/projects/117/spaces/468/badge)](https://samples.testspace.com/projects/117/spaces/468 "Test Cases")
[![Space Metric](https://samples.testspace.com/projects/117/spaces/468/metrics/340/badge)](https://samples.testspace.com/spaces/468/schema/Code%20Coverage "Code Coverage (branches)")
[![Space Metric](https://samples.testspace.com/projects/117/spaces/468/metrics/342/badge)](https://samples.testspace.com/spaces/468/schema/Code%20Coverage "Code Coverage (methods)")
[![Space Metric](https://samples.testspace.com/projects/117/spaces/468/metrics/343/badge)](https://samples.testspace.com/spaces/468/schema/Static%20Analysis "Static Analysis (issues)")

***

In order to run this sample you will need a host workstation with installed npm.

<pre>
npm install
make lint test
</pre>

Publishing results example: 

<pre>
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace checkstyle.xml [Tests]xunit.xml{test} coverage/cobertura-coverage.xm $TESTSPACE_TOKEN/$BRANCH_NAME
</pre> 

Checkout the [Space](http://samples.testspace.com/projects/javascript.mocha). 

***
To replicate this sample: 
  - Account at www.testspace.com.
  - CI Environment Variable called **TESTSPACE_TOKEN** required:
    -  `TESTSPACE_TOKEN` = `credentials@my-org-name.testspace.com/my-project`
    - `credentials` set to `username:password` or your [access token](http://help.testspace.com/reference:client-reference#login-credentials).
    - `my-org-name.testspace.com/my-project` based on your *organization* (subdomain) and *project* names.  
