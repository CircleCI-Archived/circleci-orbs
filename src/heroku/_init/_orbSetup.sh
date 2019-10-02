#!/bin/bash
_orbSetup() {
    printf "\e[1mSelect your Orb namespace. Each organization/user may claim one unique namespace.\e[0m\n"
    echo "You may see an error if you have already previously claimed this namespace. This can safely be ignored for now."
    echo
    sleep 2
    read -p "Enter Namespace: " -r CCI_NAMESPACE
    echo
    if [ -z "$CCI_NAMESPACE" ]
    then
        echo
        echo "Namespace missing. Try again"
        _orbSetup
    fi
    sleep 1
    circleci namespace create "$CCI_NAMESPACE" github "$CCI_ORGANIZATION"
    sleep 1
    echo
    printf "\e[1mSelect your Orb Name. Your Orb will live at ${CCI_NAMESPACE}/\e[96m{ORB NAME}\e[0m\n"
    read -p "Enter Orb Name: " -r CCI_ORBNAME
    echo
    sleep 1
    echo "Orb ${CCI_NAMESPACE}/${CCI_ORBNAME} selected"
    echo "Creating Orb"
    sleep 2
    echo
    circleci orb create "${CCI_NAMESPACE}/${CCI_ORBNAME}"
    echo
    sleep 1
}