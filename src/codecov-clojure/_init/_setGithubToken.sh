#!/bin/bash
_setGithubToken() {
    echo "Create a GitHub Personal access token"
    echo "The access token will be used to add a public key to your account automatically"
    echo
    sleep 1
    echo "Create your peronal access token here: https://github.com/settings/tokens"
    sleep 3
    read -p "Enter GitHub Personal Access Token: " -r CCI_GH_TOKEN
}