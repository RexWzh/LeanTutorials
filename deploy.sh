#!/usr/bin/env bash

[ -z "$LEAN_REMOTE_HOMEPAGE" ] && echo "LEAN_REMOTE_HOMEPAGE is not set" && exit 1;
# clean up
mkdir -p build
rm -rf build

# build
cp -r docs build
cd build
git init
git add -A
git commit -m 'deploy'
git remote add origin $LEAN_REMOTE_HOMEPAGE
git push -f origin main:gh-pages
