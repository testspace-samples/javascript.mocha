[![Testspace](https://www.testspace.com/img/Testspace.png)](https://www.testspace.com)

***

## JavaScript/Mocha sample for demonstrating Testspace based on the [nodejs-tdd-boilerplate](https://github.com/BryanDonovan/nodejs-tdd-boilerplate)

Sample demonstrates techniques for using Testspace with Javascript code and the [Mocha test framework](https://mochajs.org/) together with [Istanbul code coverage tool](https://gotwarlost.github.io/istanbul/).
  * Using a Testspace Project that is `connected` with this GitHub Repo
  * Using 3 Online CI services for demonstration purposes only
  * Can review the Results at [testspace-samples:javascript.mocha](https://samples.testspace.com/projects/testspace-samples:javascript.mocha)  
  * Refer to our [Getting Started](https://help.testspace.com/getting-started) help articles for more information

*** 
Using Multiple Online CI Services:

[![Build Status](https://travis-ci.org/testspace-samples/javascript.mocha.svg?branch=master)](https://travis-ci.org/testspace-samples/javascript.mocha)
[![CircleCI](https://circleci.com/gh/testspace-samples/javascript.mocha.svg?style=svg)](https://circleci.com/gh/testspace-samples/javascript.mocha)
[![Run Status](https://api.shippable.com/projects/57d84135b655251000851a1d/badge?branch=master)](https://app.shippable.com/projects/57d84135b655251000851a1d)


***
Publising **Test Content** using www.testspace.com

[![Space Health](https://samples.testspace.com/spaces/799/badge?token=496d5e8a418d1a93d098c9143119ea7892546e77)](https://samples.testspace.com/spaces/799 "Test Cases")
[![Space Metric](https://samples.testspace.com/spaces/799/metrics/744/badge?token=589a1e8baba20bafbb94fbfca9992b0321d8ea5a)](https://samples.testspace.com/spaces/799/schema/Code%20Coverage "Code Coverage (lines)")
[![Space Metric](https://samples.testspace.com/spaces/799/metrics/746/badge?token=22a44dbdddf41755f8cd23d41f762a99c72575ef)](https://samples.testspace.com/spaces/799/schema/Static%20Analysis "Static Analysis (issues)")

***

Download and configure the Testspace client 

<pre>
mkdir -p $HOME/bin
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | tar -zxvf- -C $HOME/bin
testspace config url samples.testspace.com
</pre>


Install `npm` and run `make`

<pre>
npm install
make lint test
</pre>

Push Content using Testspace client 

<pre>
testspace checkstyle.xml [Tests]xunit.xml{test} coverage/cobertura-coverage.xml
</pre> 
