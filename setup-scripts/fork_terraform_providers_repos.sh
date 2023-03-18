#!/bin/bash

sourceOrg="hashicorp"
repoStartsWith="terraform-provider"
targetOrg="sourcegraph-ce"

repos=$(gh repo list $sourceOrg --limit 1000 --json name -q '.[] | if .name | contains ("'$repoStartsWith'") then .name else empty end')
for repo in $repos; do
  forkArg="$sourceOrg/$repo --org $targetOrg"
  echo "forking $org/$repo into $targetOrg..."
  ./fork_repo.exp $forkArg
  sleep 1
done

