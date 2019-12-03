#!/usr/bin/env sh

# init
yarn
git submodule update --init
cd sdk
git fetch --all
git reset --hard origin/master
yarn

# build
npm run gen-docs

hostname

# depoly
cd ../

npm run gh-pages -- -r http://zzzze:${TOKEN}@github.com/ifanrx/hydrogen-js-sdk-api-doc.git -d sdk/docs -u "bamboo <zhangzeshuan@ifanr.com>"
