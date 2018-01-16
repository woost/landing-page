#!/usr/bin/env bash

./build.sh

docker build -t wust2.landing:latest .
