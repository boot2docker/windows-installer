#!sh

echo "initialising..."
./boot2docker-cli.exe init
echo "starting..."
./boot2docker-cli.exe start
echo "connecting... (password: tcuser)"
./boot2docker-cli.exe ssh
