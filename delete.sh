#!sh

cd $(dirname $0)

echo "stopping..."
./boot2docker.exe stop
echo "deleting..."
./boot2docker.exe delete

read
