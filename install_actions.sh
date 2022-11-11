#!/bin/bash -ex
GH_RUNNER_VERSION=$1

echo ${GH_RUNNER_VERSION}

curl -L "https://github.com/actions/runner/releases/download/v${GH_RUNNER_VERSION}/actions-runner-linux-x64-${GH_RUNNER_VERSION}.tar.gz" > actions.tar.gz
tar -zxf actions.tar.gz
rm -f actions.tar.gz
./bin/installdependencies.sh
mkdir /_work