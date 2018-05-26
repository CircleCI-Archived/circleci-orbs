# circleci-orbs
The source code for orbs published by CircleCI.

## PRE-RELEASE CONCEPTS HEREIN
_Caveat Emptor:_ As of May 2018 this repository is a work in progress and subject to extreme change or abandonment. Do not assume techniques or even syntax for orbs contained in this repository will continue to work as orbs move towards release.

## Publishing Orbs
Orbs are added to the registry through the CircleCI API. The build in this repository (`.circleci/config.yml`) uses that API via the CircleCI CLI to take the source of orbs located in the `src` folder and create a deployable artifact (a flattened orb.yml) and then register that artifact as a revision of an orb. See the `orb-release.yml` for the data structure we're using to drive the interactions with our API from the build. Note that `orb-release.yml` is specific to the particular approach used here to publish and that you are welcome to use a different flow to publish your orbs to the registry. 

To build an orb into a deployable artifact you call:

`circleci orb build $PATH_TO_ORB_SRC $SEMVER_REVISION [$PATH_TO_WRITE_ARTIFACT]`

If the last argument is not provided the built orb is passed to STDOUT.

To register an orb, you use the artifact written with the above `circleci orb build` command. It might look like:

`circleci orb register $PATH_TO_COMPILED_ORB`

TODO: The above will default to use the main circleci.com service. If you are publishing orbs to a registry on your private CircleCI server installation you can pass your root domain in as an argument or by setting it in your ~/.circleci-config.yml file.