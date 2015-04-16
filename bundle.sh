#!/bin/sh
set -e

# Script to grab binaries that are going to be bundled with windows installer.
# Note to maintainers: Update versions used below with newer releases

boot2dockerIso=1.6.0
boot2dockerCli=1.6.0
docker=1.6.0
vbox=4.3.26
vboxRev=98988
msysGit=1.9.5-preview20150319

boot2dockerIsoSrc=boot2docker
boot2dockerCliSrc=boot2docker
dockerBucket=get.docker.com

set -x
rm -r bundle
mkdir bundle
cd bundle

(
	mkdir -p docker
	cd docker

	curl -fsSL -o docker.exe "https://${dockerBucket}/builds/Windows/x86_64/docker-${docker}.exe"
)

(
	mkdir -p Boot2Docker
	cd Boot2Docker

	curl -fsSL -o boot2docker.iso "https://github.com/${boot2dockerIsoSrc}/boot2docker/releases/download/v${boot2dockerIso}/boot2docker.iso"
	curl -fsSL -o boot2docker.exe "https://github.com/${boot2dockerCliSrc}/boot2docker-cli/releases/download/v${boot2dockerCli}/boot2docker-v${boot2dockerCli}-windows-amd64.exe"
)

(
	mkdir -p msysGit
	cd msysGit

	curl -fsSL -o Git.exe "https://github.com/msysgit/msysgit/releases/download/Git-${msysGit}/Git-${msysGit}.exe"
)

(
	mkdir -p VirtualBox
	cd VirtualBox

	# http://www.virtualbox.org/manual/ch02.html
	curl -fsSL -o virtualbox.exe "http://download.virtualbox.org/virtualbox/${vbox}/VirtualBox-${vbox}-${vboxRev}-Win.exe"

	virtualbox.exe -extract -silent -path .
	rm virtualbox.exe # not neeeded after extraction

	rm *x86.msi # not needed as we only install 64-bit
	mv *_amd64.msi VirtualBox_amd64.msi # remove version number
)
