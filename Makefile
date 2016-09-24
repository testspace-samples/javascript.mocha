BASE = .

ISTANBUL = ./node_modules/.bin/istanbul
TEST_COMMAND = NODE_ENV=test ./node_modules/.bin/mocha
COVERAGE_OPTS = --lines 95 --statements 90 --branches 80 --functions 90

main: lint test

cover:
	$(ISTANBUL) cover test/run.js

check-coverage:
	$(ISTANBUL) report cobertura

test: cover check-coverage

test-acceptance:
	test/run.js -T acceptance

lint:
	./node_modules/.bin/jshint ./lib ./test --reporter=node_modules/jshint-checkstyle-file-reporter --config $(BASE)/.jshintrc 


.PHONY: test
