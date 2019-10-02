# CircleCI Orbs ![CircleCI status](https://circleci.com/gh/CircleCI-Public/circleci-orbs.svg?style=shield "CircleCI status") [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/circleci-public/circleci-orbs/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

- `circleci/aws-s3`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/aws-s3)](https://circleci.com/orbs/registry/orb/circleci/aws-s3)
- `circleci/codecov-clojure`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov-clojure)](https://circleci.com/orbs/registry/orb/circleci/codecov-clojure)
- `circleci/codecov`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/codecov)](https://circleci.com/orbs/registry/orb/circleci/codecov)
- `circleci/gradle`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/gradle)](https://circleci.com/orbs/registry/orb/circleci/gradle) 
- `circleci/heroku`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/heroku)](https://circleci.com/orbs/registry/orb/circleci/heroku)
- `circleci/lein-nvd`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/lein-nvd)](https://circleci.com/orbs/registry/orb/circleci/lein-nvd)
- `circleci/maven`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/maven)](https://circleci.com/orbs/registry/orb/circleci/maven)
- `circleci/rollbar`: [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/rollbar)](https://circleci.com/orbs/registry/orb/circleci/rollbar)

The source code for some of the orbs published by CircleCI.

Some orbs have their own repos under the CircleCI-Public GitHub organization; [use the `circleci-orbs` topic tag](https://github.com/search?q=topic%3Acircleci-orbs+org%3ACircleCI-Public&type=Repositories) to see source repositories for all CircleCI-published orbs.

## What are orbs?

It's fairly common to find an orb, or a glowing circular speck of light in a dark area of a photograph you've taken — and yet many of us aren't really sure about what it means. If you turn to the internet to find out what the orbs in photos are, you'll likely be directed down a trippy metaphysical hole that will have you believing that the spirit world is responsible for the presence of light matter in dark places. But, you'll also find the word "backscatter," which is a term used in the photography world to describe the way that light can capture particles in the air that are nearly invisible to the naked eye. So which explanation makes the most sense? Are orbs inexplicable pieces of evidence proving there's an afterlife, or are they just technicalities that though mystical in appearance, are logical in reality?
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
