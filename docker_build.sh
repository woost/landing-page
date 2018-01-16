#!/usr/bin/env bash
set -e

./build.sh

docker build -t woost/wust2.landing:latest .
