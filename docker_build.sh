#!/usr/bin/env bash
# set -e

./build.sh

git_sha="$(git rev-parse --short HEAD)"
docker build -t woost/wust2.landing:$git_sha -t woost/wust2.landing:latest .
