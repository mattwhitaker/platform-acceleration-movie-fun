#!/bin/bash

set -e

apt-get update && apt-get install -y curl

set -x

pushd attendee-service-source
  echo "Running smoke tests for Movie Service deployed at"
  smoke-tests/bin/test
popd

exit 0
