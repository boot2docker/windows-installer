#!/bin/bash.exe
clear
# convert backslash paths to forward slash (yes, really, sometimes you get either)
B2DPATH=${0//\\/\//}
# remove the script-name
B2DPATH=${B2DPATH%/*}
# convert any C:/ into /c/ as MSYS needs this form
B2DPATH=${B2DPATH//C:\//\/c/}
# simplify by adding the program dir to the path
PATH="$B2DPATH:$PATH"

ISO="$USERPROFILE/.boot2docker/boot2docker.iso"

if [ ! -e "$ISO" ]; then
	echo "copying initial boot2docker.iso (run 'boot2docker.exe download' to update"
	mkdir -p "$USERPROFILE/.boot2docker"
	cp "$B2DPATH/boot2docker.iso" "$ISO"
fi

echo "initializing..."
boot2docker.exe init
echo "starting..."
boot2docker.exe start
echo "connecting..."
boot2docker.exe ssh

read
