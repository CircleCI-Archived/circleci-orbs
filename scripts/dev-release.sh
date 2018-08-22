#!/bin/bash -eox pipefail

COMMIT_RANGE=$(echo $CIRCLE_COMPARE_URL | sed 's:^.*/compare/::g')
echo "Commit range: " $COMMIT_RANGE

UPDATED_ORBS=$(git diff $COMMIT_RANGE --name-status | \
               sed -E 's/.*src\/(.+)\/.*/\1/' | \
               grep -vE '^[A-Z!?]{1,2}\s+')

for ORB in $UPDATED_ORBS; do
  circleci orb publish release src/$ORB/orb.yml circleci $ORB dev:snapshot
done
