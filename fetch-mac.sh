#!/bin/sh
# script from https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/
set -e
LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/launchdarkly/c-server-sdk/releases/latest)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
ARTIFACT_URL="https://github.com/launchdarkly/c-server-sdk/releases/download/$LATEST_VERSION/osx-clang-64bit-static.zip"
curl -o osx-clang-64bit-static.zip -L $ARTIFACT_URL
unzip osx-clang-64bit-static.zip
