#!/usr/bin/env bash
set -e
set -o pipefail

[[ -n "$DOCKER_USERNAME" ]] || exit 0
[[ -n "$DOCKER_PASSWORD" ]] || exit 0
[[ -n "$DOCKER_REGISTRY" ]] || exit 0

[[ "$TRAVIS_BRANCH" == "master" ]] || exit 0

docker images
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" "$DOCKER_REGISTRY" --password-stdin;

docker push "$DOCKER_REGISTRY/woost/landing"

[[ -n "$STAGING_URL" ]] || exit 0

echo "Triggering landing page deploy..."
curl $STAGING_URL 2> /dev/null
