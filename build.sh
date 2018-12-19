#!/usr/bin/env bash
# set -e

node node_modules/gulp/bin/gulp.js
CSSFILE=$(ls css/*.min.css)
echo "verify if $CSSFILE is present in all html files..."
for file in $(ls static/*.html index.html); do
    grep --quiet $CSSFILE $file || (echo "not found in" $file; exit 1)
done
