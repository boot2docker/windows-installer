echo "initialising..."
./boot2docker.exe init
echo "starting..."
./boot2docker.exe start
echo "connecting... (password: tcuser)"
./boot2docker.exe ssh

read
