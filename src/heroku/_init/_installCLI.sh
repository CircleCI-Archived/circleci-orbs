#!/bin/bash
_installCLI() {
    curl -fLSs https://circle.ci/cli | sudo bash && circleci setup
    sleep 1
    echo
    echo "setting token internally"
    CCI_TOKEN=$(awk '/token:/ {print $2}' "$HOME/.circleci/cli.yml")
}
