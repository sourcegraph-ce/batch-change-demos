#!/bin/bash

org="sourcegraph-ce"
repoStartsWith="terraform-provider"

repos=$(gh repo list $org --limit 1000 --json name -q '.[] | if .name | contains ("'$repoStartsWith'") then .name else empty end')
for repo in $repos; do
  echo "deleting $org/$repo..."
  ./delete_repo.exp $org/$repo
  sleep 1
done

