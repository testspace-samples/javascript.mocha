#!/bin/bash

# Build
npm install

# Analysis and Test
make lint test

# Publish
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace checkstyle.xml [Tests]xunit.xml{test} coverage/cobertura-coverage.xml master.c9