#!/bin/bash
_textIntro() {
    echo
    echo "-------------------"
    printf "\e[38;5;45m\e[1mCircleCI Orb init\e[0m\n"
    echo "-------------------"
    echo
    printf "\e[0mThis tool will help you create your first Orb with an automated build-test-deploy CircleCI Workflow.\n"
    echo "Follow along with the readme: https://github.com/CircleCI-Public/orb-starter-kit"
    sleep 2
    echo
    printf "\e[1mInstalling CircleCI CLI\e[0m\n"
    echo "This step will require SUDO to update the CLI"
    echo
}