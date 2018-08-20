#!/bin/bash -eo pipefail

for ORB in src/*; do
  echo "Validating $ORB ..."
  circleci orb validate $ORB/orb.yml
done
