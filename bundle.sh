#!/bin/sh
set -e

# Script to grab binaries that are going to be bundled with windows installer.
# Note to maintainers: Update versions used below with newer releases

mkdir -p "bundle" && cd "bundle"
(
	mkdir -p "VirtualBox" && cd "VirtualBox"

	# http://www.virtualbox.org/manual/ch02.html
	curl -s -L -o virtualbox.exe http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Win.exe
	virtualbox.exe -extract -silent -path . && rm virtualbox.exe # not neeeded after extraction
	rm *x86.msi # not needed as we only install 64-bit
	mv *_amd64.msi VirtualBox_amd64.msi # remove version number
)
(
	mkdir -p "Boot2Docker" && cd "Boot2Docker"

	curl -s -L -o boot2docker.iso https://github.com/boot2docker/boot2docker/releases/download/v0.9.1/boot2docker.iso
	curl -s -L -o boot2docker.exe https://github.com/boot2docker/boot2docker-cli/releases/download/v0.9.2/boot2docker-v0.9.2-windows-amd64.exe
)
(
	mkdir -p "msysGit" && cd "msysGit"

	curl -s -L -o Git.exe https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20141217/Git-1.9.5-preview20141217.exe
)
(
	mkdir -p "docker" && cd "docker"

	curl -s -L -o docker.exe https://test.docker.com/builds/Windows/x86_64/docker-1.6.0-rc1.exe
)
