#!sh
ISO="$USERPROFILE/.boot2docker/boot2docker.iso"

if [ ! -e "$ISO" ]; then
	echo "copying initial boot2docker.iso (run 'boot2docker.exe download' to update"
	mkdir -p "$USERPROFILE/.boot2docker"
	cp boot2docker.iso "$ISO"
fi

echo "initialising..."
./boot2docker.exe init
echo "starting..."
./boot2docker.exe start
echo "connecting..."
./boot2docker.exe ssh

read
