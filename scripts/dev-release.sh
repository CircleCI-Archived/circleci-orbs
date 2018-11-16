#!/bin/bash -exo pipefail

# COMMIT_RANGE=$(echo $CIRCLE_COMPARE_URL | sed 's:^.*/compare/::g')
# echo "Commit range: " $COMMIT_RANGE

# UPDATED_ORBS=$(git diff $COMMIT_RANGE --name-status | \
#                sed -E 's/.*src\/(.+)\/.*/\1/' | \
#                grep -vE '^[A-Z!?]{1,2}\s+')

# for ORB in $UPDATED_ORBS; do

# TODO - it may be overkill to always publish all on the branch
# TODO - this probably shouldn't silently fail to publish some of the orbs

for ORB in src/*/; do
  orbname=$(basename $ORB)
  if [[ $(git diff $COMMIT_RANGE --name-status | grep "$orbname") ]]; then
    (ls ${ORB}orb.yml && echo "orb.yml found, attempting to publish...") || echo "No orb.yml file was found - the next line is expected to fail."
    if [ -z "$CIRCLECI_API_TOKEN" ]; then
      circleci orb publish ${ORB}orb.yml circleci/${orbname}@dev:${CIRCLE_BRANCH}-${CIRCLE_SHA1}
    else
      circleci orb publish ${ORB}orb.yml circleci/${orbname}@dev:${CIRCLE_BRANCH}-${CIRCLE_SHA1} --token $CIRCLECI_API_TOKEN
    fi
  else
    echo "${orbname} not modified; no need to promote"
  fi
  echo "---------------------------"
done
