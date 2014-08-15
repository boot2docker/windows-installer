#!sh
clear
# simplify by adding the program dir to the path
B2DPATH=$(dirname $0)
set PATH=%PATH%;$B2DPATH

echo "stopping..."
boot2docker.exe stop
echo "deleting..."
boot2docker.exe delete

read
