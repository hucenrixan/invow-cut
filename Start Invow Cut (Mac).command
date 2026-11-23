#!/bin/bash
# Invow Cut launcher for Mac - double-click to open (first time: right-click > Open)
DIR="$(cd "$(dirname "$0")" && pwd)"
if [ -d "/Applications/Google Chrome.app" ]; then
  open -na "Google Chrome" --args --app="file://$DIR/InvowCut.html"
elif [ -d "/Applications/Microsoft Edge.app" ]; then
  open -na "Microsoft Edge" --args --app="file://$DIR/InvowCut.html"
else
  echo "Please install Google Chrome: https://www.google.com/chrome/"
  open "$DIR/InvowCut.html"
fi
