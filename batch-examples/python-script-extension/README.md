# Python Script Extension

This demonstrates how python scripts can be written and used in a container to extend batch changes. The python container accepts arguments that are specified in the batch spec file, and the resulting PR's use outputs from the python script.

## Prerequisites

Use the setup scripts, accessible from the root folder of this repo, to clone many repositories to a Github org, or to delete these cloned repositories in order to start fresh.

## Instructions

Configure the Sourcegraph CLI and place the relevant variables in a file similar to `example.env`. Run this file to export the necessary environment variables to the shell where you will run the batch changes.

Run `src batch preview -f example.batch.yml` to preview the changes.

If the changes look good, optionally update the `published:false` line of `exampe.batch.yml` to `published:true` in order to publish changes when the spec is applied.

Run `src batch apply -f example.batch.yml`.