#!/bin/bash -eo pipefail

# COMMIT_RANGE=$(echo $CIRCLE_COMPARE_URL | sed 's:^.*/compare/::g')
# echo "Commit range: " $COMMIT_RANGE

# UPDATED_ORBS=$(git diff $COMMIT_RANGE --name-status | \
#                sed -E 's/.*src\/(.+)\/.*/\1/' | \
#                grep -vE '^[A-Z!?]{1,2}\s+')

# for ORB in $UPDATED_ORBS; do
for ORB in src/*/; do
  echo "Attempting to publish ${ORB} as circleci/${ORB}@dev:${CIRCLE_BRANCH}"
  if [[ -z "$CIRCLECI_API_TOKEN" ]]; then
    circleci orb publish dev $ORB/orb.yml circleci $(basename $ORB) dev:${CIRCLE_BRANCH}
  else
    circleci orb publish dev $ORB/orb.yml circleci $(basename $ORB) dev:${CIRCLE_BRANCH} --token $CIRCLECI_API_TOKEN
  fi
done
