#!/bin/bash
_followProject() {
    CCI_FOLLOW_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" -X POST https://circleci.com/api/v1.1/project/github/"${CCI_ORGANIZATION}"/"${CCI_REPO}"/follow?circle-token="${CCI_TOKEN}")
    if [ ! "$CCI_FOLLOW_RESPONSE" = "200" ]
    then
        echo 
        echo "Unable to follow the project"
        echo
        exit 1
    else
        printf "\e[32mProject added to CircleCI\e[0m\n"
    fi
}