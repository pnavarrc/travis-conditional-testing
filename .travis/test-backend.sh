#!/usr/bin/env sh
if [ `git diff --name-only "$TRAVIS_COMMIT_RANGE" | grep '^backend/'` ]; then
  npm run test-backend
fi
