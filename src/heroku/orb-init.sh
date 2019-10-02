#!/bin/bash
clear
# remove git folder in the event a user clones the repo
rm -rf .git
# Load in functions
for PARTIAL in ./_init/*.sh; do
    . "$PARTIAL"
done
_textIntro
sleep 1
_installCLI
printf "\e[1mTesting authentication to GitHub.com\e[0m\n"
_checkGithubAuth
_setGithubToken
printf "\e[1mBegin Orb Creation\e[0m\n"
echo
sleep 1
_checkOrgName
_checkRepoName
_setCreateRepo
echo
_gitSetup
printf "\e[1mSwitching to Alhpa branch\e[0m\n"
git checkout -b Alpha
echo
_orbSetup
echo
sleep 1
printf "\e[1mAdding project to CircleCI\e[0m\n"
sleep 2
_followProject
echo
sleep 1
_CCIAddSecrets
_editConfig
sleep 1
echo "Replacing config in .circleci/config.yml"
rm -rf .circleci/config.yml
mv config.yml .circleci
echo
echo "Producing development orb"
circleci config pack src > orb.yml
circleci orb publish orb.yml "${CCI_NAMESPACE}/${CCI_ORBNAME}@dev:alpha"
rm -rf orb.yml
echo "Commiting changes to Alpha branch"
git checkout -b Alpha
git add .
git commit -m "Setup complete"
git push -u origin Alpha
_textComplete
_cleanup
