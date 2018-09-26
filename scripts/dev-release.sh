#!/bin/bash -eo pipefail

# COMMIT_RANGE=$(echo $CIRCLE_COMPARE_URL | sed 's:^.*/compare/::g')
# echo "Commit range: " $COMMIT_RANGE

# UPDATED_ORBS=$(git diff $COMMIT_RANGE --name-status | \
#                sed -E 's/.*src\/(.+)\/.*/\1/' | \
#                grep -vE '^[A-Z!?]{1,2}\s+')

# for ORB in $UPDATED_ORBS; do

# TODO - it may be overkill to always publish all on the branch
# TODO - this probably shouldn't silently fail to publish some of the orbs
for ORB in src/*/; do
  orbname = $(basename $ORB)
  echo "Attempting to publish ${ORB}orb.yml as circleci/${orbname}@dev:${CIRCLE_BRANCH}"
  if [[ -z "$CIRCLECI_API_TOKEN" ]]; then
    circleci orb publish ${ORB}orb.yml circleci/${orbname}@dev:${CIRCLE_BRANCH}
  else
    circleci orb publish ${ORB}orb.yml circleci/${orbname}#dev:${CIRCLE_BRANCH} --token $CIRCLECI_API_TOKEN
  fi
  echo "---------------------------"
done
