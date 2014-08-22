# windows-installer

Installation [instructions](http://docs.docker.io/installation/windows/) available on the Docker documentation site.

## What is included:

- [msys-git 1.9.0](http://msysgit.github.io/) for tools like `OpenSSH` and `BASH`
- [VirtualBox 4.3.12](https://www.virtualbox.org)
- [Boot2Docker-cli management tool 1.2.0](https://github.com/boot2docker/boot2docker-cli)
- [Boot2Docker ISO 1.2.0](https://github.com/boot2docker/boot2docker)

(the ISO contains Docker 1.2.0 - unfortunately we don't have a windows Docker client yet)

## Why InnoSetup

I've chosen to make a simple installer using [innosetup](http://www.jrsoftware.org/)
because that is what the [msysGit](http://git-scm.org) installer is built with.

(It also happens that I've used InnoSetup before, so I can make something faster.

Making a simple Wix for the Boot2Docker-cli should be simple, and this can then be
used in this all-in-one installer too.
