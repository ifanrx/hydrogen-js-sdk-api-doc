#!/usr/bin/env sh

# init
yarn
git submodule update --init --recursive
cd sdk
git checkout master
yarn

# build
npm run gen-docs-wechat

# depoly
cd ../
npm run gh-pages -- -d sdk/docs
