#!/bin/bash
set -e

# clear the MSYS MOTD
clear

if [ "$HOME" == "" ]; then export HOME=$USERPROFILE; fi

cd "$(dirname "$BASH_SOURCE")"

( set -x; ./boot2docker.exe stop ) || true

( set -x; ./boot2docker.exe delete; rm -rf "$HOME/.boot2docker" ) || true

echo
echo '[Press any key to exit]'
read
