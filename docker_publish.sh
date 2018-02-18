#!/usr/bin/env bash
set -e

[[ "$TRAVIS_BRANCH" == "master" ]] || exit 0

docker images
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD";

docker push woost/landing
