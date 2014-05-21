#!sh

cd VirtualBox

#http://www.virtualbox.org/manual/ch02.html
#VirtualBox-4.3.10-93012-Win.exe -extract -silent -path .
#http://www.catonrug.net/2013/03/virtualbox-silent-install-store-oracle-certificate.html

cd ../Boot2Docker

curl -L -o boot2docker.iso https://github.com/boot2docker/boot2docker/releases/download/v0.9.1/boot2docker.iso

curl -L -o boot2docker.exe https://github.com/boot2docker/boot2docker-cli/releases/download/v0.9.2/boot2docker-v0.9.2-windows-amd64.exe
