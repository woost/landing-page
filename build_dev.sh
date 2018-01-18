#!/usr/bin/env bash

./build.sh
while true; do
  node node_modules/gulp/bin/gulp.js dev
  sleep 5;
done
