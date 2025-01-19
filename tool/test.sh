#!/usr/bin/env bash

set -ex -o pipefail

dart pub global activate coverage

rm -rf coverage
dart test \
  --exclude-tags non-default \
  --coverage coverage \
  test
dart pub global run coverage:format_coverage \
  --in coverage/test/ \
  --out coverage/default-lcov.info \
  --report-on lib \
  --base-directory . \
  --lcov \
  --check-ignore
# lcov --list coverage/default-lcov.info \
#   | grep -v ".*|.*100%.*|.*"

DART_TEST=true dart test \
  --tags with-dart-test-env \
  --coverage coverage \
  test
dart pub global run coverage:format_coverage \
  --in coverage/test/ \
  --out coverage/with-dart-test-env-lcov.info \
  --report-on lib \
  --base-directory . \
  --lcov \
  --check-ignore
# lcov --list coverage/with-dart-test-env-lcov.info \
#   | grep -v ".*|.*100%.*|.*"

env "dart.vm.product=true" dart test \
  --tags with-release-env \
  --coverage coverage \
  test
dart pub global run coverage:format_coverage \
  --in coverage/test/ \
  --out coverage/with-release-env-lcov.info \
  --report-on lib \
  --base-directory . \
  --lcov \
  --check-ignore
# lcov --list coverage/with-release-env-lcov.info \
#   | grep -v ".*|.*100%.*|.*"

env "dart.vm.profile=true" dart test \
  --tags with-profile-env \
  --coverage coverage \
  test
dart pub global run coverage:format_coverage \
  --in coverage/test/ \
  --out coverage/with-profile-env-lcov.info \
  --report-on lib \
  --base-directory . \
  --lcov \
  --check-ignore
# lcov --list coverage/with-profile-env-lcov.info \
#   | grep -v ".*|.*100%.*|.*"

lcov --add-tracefile coverage/default-lcov.info \
  --add-tracefile coverage/with-dart-test-env-lcov.info \
  --output-file coverage/lcov.info
lcov --list coverage/lcov.info \
  | grep -v ".*|.*100%.*|.*"
