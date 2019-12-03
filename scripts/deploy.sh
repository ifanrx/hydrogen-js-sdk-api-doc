#!/usr/bin/env sh

# init
yarn
git submodule update --init
cd sdk
git fetch --all
git reset --hard origin/master
yarn

# build
npm run gen-docs-wechat

# depoly
cd ../
npm run gh-pages -- -d sdk/docs -u "bamboo <zhangzeshuan@ifanr.com>"
