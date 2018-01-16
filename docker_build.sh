#!/usr/bin/env bash

./build.sh

docker build -t woost/wust2.landing:latest .
