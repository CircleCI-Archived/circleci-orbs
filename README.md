# circleci-orbs
The source code for orbs published by CircleCI.

## PRE-RELEASE CONCEPTS HEREIN
_Caveat Emptor:_ As of May 2018 this repository is a work in progress and subject to extreme change or abandonment. Do not assume techniques or even syntax for orbs contained in this repository will continue to work as orbs move towards release.

## Publishing Orbs
Orbs are added to the registry through the CircleCI API. The build in this repository (`.circleci/config.yml`) uses that API via the CircleCI CLI to take the source of orbs located in the `src` folder and register them as orbs. See the `orb-release.yml` for the data structure we're using to drive the interactions with our API from the build. Note that `orb-release.yml` is specific to the particular approach used here to publish and that you are welcome to use a different flow to publish your orbs to the registry. 

To register an orb via the CLI you can point at a local file containing the YAML of the orb or pass the YAML of your orb to STDIN as a string.

`circleci orb register $PATH_TO_FILE_WITH_ORB_YAML` 

TODO: The above will default to use the main circleci.com service. If you are publishing orbs to a registry on your private CircleCI server installation you can pass your root domain in as an argument or by setting it in your ~/.circleci-config.yml file.