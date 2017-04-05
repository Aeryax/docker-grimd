# docker-grimd

## Description

[Grimd](https://github.com/looterz/grimd) is a fast dns proxy, built to black-hole internet advertisements/malware servers.

## Usage

The recommended way to run this container is as follows:

from ubuntu image:
```bash
$ docker run -d --name grimd -p 53:53/tcp -p 53:53/udp aeryax/grimd
```

from alpine image (**WIP**):
```bash
$ docker run -d --name grimd -p 53:53/tcp -p 53:53/udp aeryax/grimd:alpine
```

## Parameters

* `-d` - as daemon **required**
* `--name grimd` - container name
* `-p 53:53/tcp` - dns port **required**
* `-p 53:53/udp` - dns port **required**
* `-p 8080:8080/tcp` - api port
* `-v <path to config>:/config` - where grimd read [grimd.toml](https://raw.githubusercontent.com/Aeryax/docker-grimd/master/grimd.toml) file

## Security

You should allow connections only from clients you trust. More information [here](https://github.com/looterz/grimd/wiki/Securing-on-linux).
