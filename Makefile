SOURCE_FILES?=./...
TEST_PATTERN?=.
TEST_OPTIONS?=

export GO111MODULE := on

snapshot:
	goreleaser --snapshot --rm-dist

# Install dependencies
setup:
	go mod tidy
.PHONY: setup

# Run all the tests
test:
	LC_ALL=C go test $(TEST_OPTIONS) -failfast -race $(SOURCE_FILES) -run $(TEST_PATTERN) -timeout=5m
.PHONY: test

# Run all the tests and code checks
ci: build test
.PHONY: ci

build:
	go build
.PHONY: build
