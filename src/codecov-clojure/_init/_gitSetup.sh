#!/bin/bash
_gitSetup() {
    echo "Initializing local git repo"
    echo
    sleep 1
    git init
    git remote add origin git@github.com:"$CCI_ORGANIZATION"/"$CCI_REPO".git
    git add .
    git commit -m "initial commit"
    echo
    sleep 1
    echo "Pushing initial configuration to setup project on CircleCI"
    sleep 1
    echo
    git push -u origin master
    sleep 1
}