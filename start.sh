#!sh

# simplify by adding the program dir to the path
B2DPATH=$(dirname $0)
set PATH=%PATH%;$B2DPATH

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
