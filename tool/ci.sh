#!/usr/bin/env bash

set -e -o pipefail

dart pub upgrade

dart run build_runner build --delete-conflicting-outputs

dart format --output none --set-exit-if-changed .

dart analyze --fatal-infos

tool/test.sh

tool/verify-dartdoc-options.sh

# dart pub global activate dartdoc
# dart pub global run dartdoc \
#   --link-to-source-revision "$(yq .version pubspec.yaml)"

dart pub global activate pana
dart pub global run pana --no-warning

dart pub publish --dry-run

git diff --stat --exit-code
