#!/usr/bin/env sh
if [ `git diff --name-only "$TRAVIS_COMMIT_RANGE" | grep '^frontend/'` ]; then
  echo "This branch has changes on the 'frontend' directory, running front-end tests."
  npm run test-frontend
else
  echo "This branch doesn't have changes on the 'frontend' directory, skipping front-end tests."
fi
