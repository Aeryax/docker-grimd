# docker-grimd

## Description

Grimd is a fast dns proxy, built to black-hole internet advertisements/malware servers

## Usage

The recommended way to run this container is as follows:

```bash
$ docker run -d --name grimd -p 53:53/tcp -p 53:53/udp aeryax/grimd
```
