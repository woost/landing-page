#!/usr/bin/env bash
# set -e

./build.sh

git_sha="$(git rev-parse --short HEAD)"
docker build -t woost/landing:$git_sha -t woost/landing:latest .
