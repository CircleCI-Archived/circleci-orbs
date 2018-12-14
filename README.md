# circleci-orbs
The source code for orbs published by CircleCI.

Some orbs have their own repos under the CircleCI-Public GitHub organization; [use the `circleci-orbs` topic tag](https://github.com/search?q=topic%3Acircleci-orbs+org%3ACircleCI-Public&type=Repositories) to see source repositories for all CircleCI-published orbs.

## What are orbs?

Orbs are packages of CircleCI configuration that can be shared across projects. Orbs allow you to make a single bundle of jobs, commands, and executors that can reference each other and can be imported into a CircleCI build configuration and invoked in their own namespace. Orbs are registered with CircleCI, with revisions expressed using the semver pattern.

You can find additional documentation detailing orbs, including how to use and create them, in [this repo](https://github.com/CircleCI-Public/config-preview-sdk/tree/master/docs).

## Publishing Orbs
Orbs are added to the registry through the CircleCI API. The build in this repository (`.circleci/config.yml`) uses that API via the [CircleCI CLI](https://github.com/CircleCI-Public/circleci-cli) to take the source of orbs located in the `src` folder and register them as orbs.

To register an orb via the CLI you can point at a local file containing the YAML of the orb or pass the YAML of your orb to STDIN as a string.

`circleci orb publish $PATH_TO_FILE_WITH_ORB_YAML mynamespace/myorb@dev:mytag`

For more info on use of the CLI see the help on orb publishing inside the CLI:

`circleci orb publish --help`

TODO: The above will default to use the main circleci.com service. If you are publishing orbs to a registry on your private CircleCI server installation you can pass your root domain in as an argument or by setting it in your `.circleci/config.yml` file.

## Contributing
We welcome [issues](https://github.com/CircleCI-Public/circleci-orbs/issues) (bugs or feature requests) and [pull requests](https://github.com/CircleCI-Public/circleci-orbs/pulls)!

All pull requests will initially merge to `staging`, triggering automatic dev releases of any modified orbs and allowing open-source contributors working on forks of the repository to test out their code changes. Once we have confirmed the stability/functionality of modifications (via either manual or to-be-added automated integration testing), we will merge the changes in `staging` to `master`.
