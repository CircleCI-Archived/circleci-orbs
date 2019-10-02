#!/bin/bash
_textComplete() {
    echo
    echo
    echo
    echo "-------------------"
    printf "\e[1mCongratulations! The setup is complete.\e[0m\n"
    echo "-------------------"
    printf "Your orb currently lives at: \e[96m${CCI_NAMESPACE}\e[39m/\e[96m${CCI_ORBNAME}\e[39m@\e[92mdev:alpha\e[39m\n"
    echo "You may see the current progress here: https://circleci.com/gh/$CCI_ORGANIZATION/workflows/$CCI_REPO"
    echo "Begin to edit the files in the src directory to build your own orb."
    echo "More information can be found in the readme"
}