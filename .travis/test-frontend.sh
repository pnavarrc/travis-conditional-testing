#!/usr/bin/env sh
if [ `git diff --name-only "$TRAVIS_COMMIT_RANGE" | grep '^frontend/'` ]; then
  npm run test-frontend
fi
