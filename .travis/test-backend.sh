#!/usr/bin/env sh
if [ `git diff --name-only "$TRAVIS_COMMIT_RANGE" | grep '^backend/'` ]; then
  echo "Detected changes on the 'backend' directory, running backend tests."
  npm run test-backend
else
  echo "No changes on the 'backend' directory, skipping backend tests."
fi
