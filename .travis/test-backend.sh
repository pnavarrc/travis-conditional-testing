#!/usr/bin/env sh
echo "Commit range"
echo $TRAVIS_COMMIT_RANGE

echo "Files changed:"
echo $(git diff --name-only "$TRAVIS_COMMIT_RANGE")

if [ `git diff --name-only "$TRAVIS_COMMIT_RANGE" | grep '^backend/'` ]; then
  echo "This branch has changes on the 'backend' directory, running backend tests."
  npm run test-backend
else
  echo "This branch doesn't have changes on the 'backend' directory, skipping backend tests."
fi
