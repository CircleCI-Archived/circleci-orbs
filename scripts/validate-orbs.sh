#!/bin/bash -eo pipefail

for ORB in src/*; do
  echo "Validating $ORB ..."

  circleci orb validate $ORB/orb.yml; RETURN_CODE=$?

  if [[ $RETURN_CODE != 0 ]]; then
  	exit 1
  fi
done
