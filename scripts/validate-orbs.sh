#!/bin/bash -eo pipefail
#for statement start
for ORB in src/*; 
 do
  echo "Validating $ORB ..."

  circleci orb validate $ORB/orb.yml; 
  RETURN_CODE=$?
#if statement start
  if [[ $RETURN_CODE != 0 ]]; 
  then
  	exit 1 #exits the loop
  fi
done
#finish
