#!/usr/bin/env bash

if [ "{$TRAVIS_BRANCH}" = "master" ]; then
  ant -buildfile $TRAVIS_BUILD_DIR/install/build.xml deployWatson
fi