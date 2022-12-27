#!/bin/bash

set -e

git checkout next
git fetch origin master
git rebase origin/master
npx tsc --build tsconfig.publish.json 