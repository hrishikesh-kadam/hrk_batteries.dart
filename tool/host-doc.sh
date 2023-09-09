#!/usr/bin/env bash

set -e -o pipefail

dart doc

dart pub global activate dhttpd

echo "Hosting on http://localhost:8080"

dhttpd --path doc/api
