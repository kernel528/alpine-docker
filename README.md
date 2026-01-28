[![Build Status](http://drone.kernelsanders.biz:8080/api/badges/kernel528/alpine-docker/status.svg)](http://drone.kernelsanders.biz:8080/kernel528/alpine-docker)
[![Latest Version](https://img.shields.io/github/v/tag/kernel528/alpine-docker)](https://github.com/kernel528/alpine-docker/releases/latest)
[![Docker Pulls](https://img.shields.io/docker/pulls/kernel528/alpine)](https://hub.docker.com/r/kernel528/alpine)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/kernel528/alpine/3.23.3)](https://hub.docker.com/r/kernel528/alpine/3.23.3)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/kernel528/alpine?sort=semver)](https://hub.docker.com/r/kernel528/alpine)

# This repo contains the base docker image for kernel528

This image is a base image intended to be foundational to other images which provide additional functionality.
- Upstream repo (master): [docker-alpine](https://github.com/alpinelinux/docker-alpine/tree/master)

## Overview
This base image builds on Alpine Linux and adds common utilities plus a default user and shell configuration for downstream images.

## Build
```
docker build -t kernel528/alpine:3.23.3 -f Dockerfile .
```

## Run
```
docker run -it --rm --name alpine3 --hostname docker-alpine3 -e TZ=CST kernel528/alpine:3.23.3 bash
```

## Use in downstream images
Add this to your downstream Dockerfile:
```
FROM kernel528/alpine:3.23.3
```


## Authors
* **kernel528** - (kernel528@gmail.com)
