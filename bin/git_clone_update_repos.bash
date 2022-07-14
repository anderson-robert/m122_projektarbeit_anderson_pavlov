#!/bin/bash

CONFIGFILE="../etc/repos.conf"
CLONEDIR="../testclonedir/"
CWD=$(pwd)

echo "Cloning repositories..."
while read -r line; do
  echo "Working on $line"
  git clone "$line" "$CLONEDIR" || echo "Pulling: $CLONEDIR" && cd "$CLONEDIR" && git pull 2>&1 && cd "$CWD";
done < "$CONFIGFILE"