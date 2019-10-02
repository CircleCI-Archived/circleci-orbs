#!/bin/bash
_checkOrgName() {
    # check and set flag for personal or organizational repo
    printf "\e[1m\nRepo Type: Personal or Organization?\e[0m\n"
    select REPO_TYPE in Personal Organization
    do
    case $REPO_TYPE in
        "Personal")
            printf "  You have selected to use a Personal repo\n\n"
            #standardize to org variable
            CCI_ORGANIZATION="$GITHUB_USER"
            break
        ;;
        "Organization")
            printf "  You have selected to use an Organization repo\n\n"
            printf "\e[1mEnter your GitHub Organization name\e[0m\n"
            read -p "Enter GitHub Orginzation name: " -r CCI_ORGANIZATION
            echo
            printf "\e[1mYou have selected \e[36m%s\e[39m is this correct?\e[0m\n" "$CCI_ORGANIZATION"
            read -p "Enter [y/n]: " -n 1 -r
            if [[ "$REPLY" =~ ^[Yy] ]]
            then
                echo
                echo "Organization set"
            else
                _checkOrgName
            fi
            break
        ;;
        *)
            echo "Invalid"
            _checkOrgName
        ;;
    esac
    done
}
