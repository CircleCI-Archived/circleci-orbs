# Orb Starter Kit![CircleCI status](https://circleci.com/gh/CircleCI-Public/orb-starter-kit.svg "CircleCI status") [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

This orb starter kit will help you write your own orb.

Orbs are reusable [commands](https://circleci.com/docs/2.0/reusing-config/#authoring-reusable-commands), [executors](https://circleci.com/docs/2.0/reusing-config/#authoring-reusable-executors), and [jobs](https://circleci.com/docs/2.0/reusing-config/#jobs-defined-in-an-orb) (as well as [usage examples](https://github.com/CircleCI-Public/config-preview-sdk/blob/v2.1/docs/usage-examples.md))—snippets of CircleCI configuration—that can be shared across teams and projects. See [CircleCI Orbs](https://circleci.com/orbs), [Explore Orbs](https://circleci.com/orbs/registry), [Creating Orbs](https://circleci.com/docs/2.0/creating-orbs), and [Using Orbs](https://circleci.com/docs/2.0/using-orbs) for further information.

## What is in this kit?

In this Orb-Starter-Kit you will find an automated setup to create a development pipeline to build your orb automatically. Once setup is complete you will have a functioning hello-world orb that is automatically built and released on each commit. Commits to the `master` branch will trigger production Orb releases and other branches will create development versions of your Orb for testing.

### Prerequisites

Before getting started you will need the the following things:
1. A CircleCI account.
2. Git installed and configured locally.
3. A CircleCI [Personal API Token](https://circleci.com/docs/2.0/managing-api-tokens/#creating-a-personal-api-token) (Must be Org admin to claim a namespace and publish production Orbs)
4. A GitHub [Personal Access Token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) (Requires Repo access and Admin Org if pushing to an Org that is not your personal account)


## Usage

### Getting started
1. Download this repository and unzip it. [Download here](https://github.com/CircleCI-Public/orb-starter-kit/archive/master.zip)

2. Rename the folder to the name you would like to give your orb

3. Run the `orb-init.sh` script to begin.
> The Orb Init script will automate the following tasks:
>  * Install and update the CircleCI CLI
> * Request a CircleCI API token if none is currently set.
> * Set the target GitHub organization
> * Set the target repo name (based off the folder name by default)
> * Create the GitHub repository.
> * Follow the project on CircleCI
> * Create a public/private key pair.
> * Store public key on GitHub
> * Store private key on CircleCI (This gives the starter kit the ability to push tags back to GitHub, currently utilized to automatically trigger integration testing and deployment workflows).
>  * Delete these keys locally.
>  * Create an Alpha branch
>  * Modify and replace config.yml file with pre-configured Orb Starter Kit config.
>  * Commit new branch with changes to GitHub
>  * Clean up - The script will remove itself from the repo for the next commit.
>
> At this point the script will provide you a link to your new running Workflow on CircleCI which will be automatically building a "hello world" orb, which will be available at `<your namespace>/<your orb>@dev:Alpha`
  

4. Begin editing.
> Once the script has finished you may edit the contents of the /src folder to customize your orb.

5. Create your dev Orb!
> All commits to non-master branches will automatically result in the creation of a development orb under than branch. It is recommended currently (changes incoming ) all changes be made under the automatically created Alpha branch.

6. Publish!
> Merge to master and automatically publish a new production version of your Orb!
>
> You will need to manually publish the production version of your Orb the first time it is created. This is not needed on subsequent pushes. *NOTE* currently _all_ 'major' changes as defined by the Orbs-Tool Orb requires manual publishing. All minor and patch chages will be automatically published.

Once the orb is complete, you will have two new Green workflows in your CircleCI account. The first one for the initial setup and the second one will have produced a development version of your orb which contains a sample Command, Executor, and Job. 

You may now simply modify these examples and add your own. Any new commit to the repo automatically trigger a development pipeline

#### What happens when I push a commit?

The Orb CI/CD pipeline begins! Your Orb will go through the `lint-pack_validate_publish-dev` workflow. The code will first be linted, then passed to the "pack" job which will take your multiple partial yaml files and condense them into a single Orb.yml file, lastly, if specified within the `config.yml`, and defined integration tests will also be ran.

Based on the branch you push to, the workflow will automatically create a development version of your orb for any branch except for "Master" which will create a production release which will be automatically incremented.

### Writing your orb
This orb provides a basic directory/file structure for a decomposed orb (where commands, jobs, examples, and executors each live in their own YAML file). Create each of your commands, jobs, examples, and executors within the requisite folders in the `src` directory.

Following are some resources to help you build and test your orb:

- [Tips for writing your first orb](https://circleci.com/blog/tips-for-writing-your-first-orb/)
- [How to make an easy and valuable open source contribution with CircleCI orbs](https://circleci.com/blog/how-to-make-an-easy-and-valuable-open-source-contribution-with-circleci-orbs/)
- Creating automated build, test, and deploy workflows for orbs: [part 1](https://circleci.com/blog/creating-automated-build-test-and-deploy-workflows-for-orbs/), [part 2](https://circleci.com/blog/creating-automated-build-test-and-deploy-workflows-for-orbs-part-2/)

### Permissions

Explaination of all permissions required for the script.

* **sudo** - The CircleCI CLI Update command will request sudo permissions to update.
* **GitHub personal access token** - Used to automatically create the repository for you. Will require full "repo" access.
* **SSH keys** - A public key is added to the repo on GitHub, CircleCI will hold the private key. This is used to automatically create tagged commits from within the Workflow to enable integration testing.

<details>
<Summary>Preview "Hello-World" Orb produced by this repo by default.</Summary>

```
commands:
  greet:
    description: |
      Replace this text with a description for this command. # What will this command do? # Descriptions should be short, simple, and clear.
    parameters:
      greeting:
        default: Hello
        description: Select a proper greeting
        type: string
    steps:
    - run:
        command: echo << parameters.greeting >> world
        name: Hello World
description: |
  Sample orb description # What will your orb allow users to do? # Descriptions should be short, simple, and clear.
examples:
  example:
    description: |
      Sample example description. # What will this example document? # Descriptions should be short, simple, and clear.
    usage:
      jobs:
        build:
          machine: true
          steps:
          - foo/hello:
              username: Anna
      orbs:
        foo: bar/foo@1.2.3
      version: 2.1
executors:
  default:
    description: |
      This is a sample executor using Docker and Node. # What is this executor? # Descriptions should be short, simple, and clear.
    docker:
    - image: circleci/node:<<parameters.tag>>
    parameters:
      tag:
        default: latest
        description: |
          Pick a specific circleci/node image variant: https://hub.docker.com/r/circleci/node/tags
        type: string
jobs:
  hello:
    description: |
      # What will this job do? # Descriptions should be short, simple, and clear.
    executor: default
    parameters:
      greeting:
        default: Hello
        description: Select a proper greeting
        type: string
    steps:
    - greet:
        greeting: << parameters.greeting >>
orbs:
  hello: circleci/hello-build@0.0.5
version: 2.1
```

</details>
