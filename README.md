# windows-installer

This installer adds VirtualBox, the Boot2Docker iso and management script, the
MSYS base system and git to your 64-bit Microsoft Windows system. [Download here](https://github.com/boot2docker/windows-installer/releases)

![Boot2Docker on windows demo](https://github.com/boot2docker/windows-installer/raw/master/Windows-demo.gif)

## What is included:

- [msys-git 1.9.0](http://msysgit.github.io/) for tools like `OpenSSH` and `BASH`
- [VirtualBox 4.3.10](https://www.virtualbox.org)
- [Boot2Docker-cli management tool v 0.9.2](https://github.com/boot2docker/boot2docker-cli)
- [Boot2Docker ISO v0.9.1](https://github.com/boot2docker/boot2docker)

(the ISO contains Docker v0.11.1 - unfortuanatly we don't have a windows Docker client yet)

## Why InnoSetup

I've chosen to make a simple installer using [innosetup](http://www.jrsoftware.org/)
because that is what the [msysGit](http://git-scm.org) installer is built with.

(It also happens that I've used InnoSetup before, so I can make something faster.

Making a simple Wix for the Boot2Docker-cli should be simple, and this can then be
used in this all-in-one installer too.
