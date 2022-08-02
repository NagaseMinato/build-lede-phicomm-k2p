#!/bin/bash

git clone "https://github.com/coolsnowwolf/lede.git" --branch "master" --single-branch "lede"
pushd "lede"; echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"; ./scripts/feeds update -a; ./scripts/feeds install -a; popd