# Batch Changes

These are batch change demos and accompanying assets that make it easier to show batch changes on a large scale, 100+ repositories and tens of thousands of lines' worth of changes.

## Terraform Providers Repositories

Hashicorp's terraform provider repositories are a nice set of targets to demonstrate batch changes. They're open-sourced, similarly constructed, widely used/recognized, and there are more than 100 of them in total.

### Setup Scripts

Scripts to set up an environment to apply these batch changes exist in the [setup-scripts](./setup-scripts) folder.

Prerequisities:

- [Github CLI](https://github.com/cli/cli#installation) must be installed and configured
- A target org must be available for use, or the scripts can be modified to use an individual user's Github account (be aware that Sourcegraph only syncs repos matching regex patterns for orgs, so if using an individual account you'll have to set those up for sync one-by-one)
- The `expect` program must be available on the local machine

The scripts are as follows:

- `fork_terraform_providers_repos.sh` forks all the Hashicorp terraform provider repositories to the target org (default `sourcegraph-ce`) - **note: this script will hit Github API rate limits, but not before it forks 100+ repositories which is just fine for our purposes**.
- `delete_terraform_providers_repos.sh` deletes all the forked repositories

The scripts above use the helper scripts `delete_repo.exp` and `fork_repo.exp` which are both executed by the `expect` program. Expect is used to handle the interactive prompts that the Github CLI requires.
