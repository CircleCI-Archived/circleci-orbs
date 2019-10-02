#!/bin/bash
_setCreateRepo() {
    # set org type for API string
    if [ "$REPO_TYPE" = "Personal" ]; then
        REPO_TYPE="user"
    else
        REPO_TYPE="orgs/$CCI_ORGANIZATION"
    fi
    GIT_REPO_CREATE_RES=$(curl -u "$CCI_ORGANIZATION":"$CCI_GH_TOKEN" --silent --write-out "HTTPSTATUS:%{http_code}" "https://api.github.com/$REPO_TYPE/repos" -X POST --header "Content-Type: application/json" -d '{"name":"'"$CCI_REPO"'","read_only":false}')
    GIT_RES_BODY=$(echo "$GIT_REPO_CREATE_RES" | sed -e 's/HTTPSTATUS\:.*//g')
    GIT_RES_STATUS=$(echo "$GIT_REPO_CREATE_RES" | tr -d '\n' | sed -e 's/.*HTTPSTATUS://')
    if [ "$GIT_RES_STATUS" == "201" ]
    then
        echo
        echo "GitHub Repo created."
        echo "https://github.com/$CCI_ORGANIZATION/$CCI_REPO"
        echo "You will find your orb here shortly."
        sleep 1
        echo
        echo "continuing..." 
        sleep 2
    else
        echo
        printf "\e[91mError Creating Repo\e[0m\n"
        echo "Unable to create the GitHub repo. Error reurned: $GIT_RES_STATUS"
        echo
        sleep 1
        echo "$GIT_RES_BODY"
        exit 1
    fi
}