#!/usr/bin/env sh

TRAVIS_COMMIT_RANGE="HEAD~5...HEAD"

if [ `git diff --name-only "$TRAVIS_COMMIT_RANGE" | grep '^backend/'` ]; then
  npm run test-backend
fi
