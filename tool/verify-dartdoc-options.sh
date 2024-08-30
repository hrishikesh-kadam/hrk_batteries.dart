#!/usr/bin/env bash

set -e -o pipefail

source tool/shell/logs-env.sh

VERSION=$(yq .version pubspec.yaml)
EXPECTED_URI_TEMPLATE="https://github.com/hrishikesh-kadam/hrk_batteries.dart/blob/v$VERSION/%f%#L%l%"
ACTUAL_URI_TEMPLATE=$(yq .dartdoc.linkToSource.uriTemplate dartdoc_options.yaml)
if [[ $ACTUAL_URI_TEMPLATE != "$EXPECTED_URI_TEMPLATE" ]]; then
  log_error_with_exit "Revision mismatch in dartdoc_options.yaml" 1
fi
