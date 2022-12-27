#!/bin/bash

set -e

git checkout next
git fetch origin master
git rebase origin/master
git push spf next -f
npm run build:publish
npm publish --access=public