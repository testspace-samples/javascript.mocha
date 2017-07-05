#!/bin/bash

# Build
npm install

# Analysis and Test
make lint test

# Download and configure the Testspace client
mkdir -p $HOME/bin
curl -fsSL https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | tar -zxvf- -C $HOME/bin
CI=true testspace config url samples.testspace.com
testspace -v

# Push content
testspace checkstyle.xml [Tests]xunit.xml{test} coverage/cobertura-coverage.xml "#c9.Build" --repo git