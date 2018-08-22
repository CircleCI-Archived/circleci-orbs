#!/bin/bash -eox pipefail

for ORB in src/*; do
  echo "Validating $ORB ..."
  circleci orb validate $ORB/orb.yml
done
