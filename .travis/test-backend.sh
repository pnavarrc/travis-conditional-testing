#!/usr/bin/env sh
echo $(pwd)
if [ `git diff --name-only "$TRAVIS_COMMIT_RANGE" | grep '^backend/'` ]; then
  npm run test-backend
fi
