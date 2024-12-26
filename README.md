[![Build Status](http://drone.kernelsanders.biz:8080/api/badges/kernel528/alpine-docker/status.svg?ref=refs/heads/3.20)](http://drone.kernelsanders.biz:8080/kernel528/alpine-docker)
[![Latest Version](https://img.shields.io/github/v/tag/kernel528/alpine-docker)](https://github.com/kernel528/alpine-docker/releases/latest)
[![Docker Pulls](https://img.shields.io/docker/pulls/kernel528/alpine)](https://hub.docker.com/r/kernel528/alpine)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/kernel528/alpine/3.20.3)](https://hub.docker.com/r/kernel528/alpine/3.20.3)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/kernel528/alpine?sort=semver)](https://hub.docker.com/r/kernel528/alpine)

# This repo contains the base docker image for kernel528

This image is a base image intended to be foundational to other images which provide additional functionality.

### Overview
This is a base image with alpine3 linux OS, with core packages.


### How to Build
``docker build -t kernel528/alpine:3.20.3 -f Dockerfile .``

### Running
``$ docker run -it --rm --name alpine3 --hostname docker-alpine3 -e TZ=CST kernel528/alpine:3.20.3 bash``

### Using image:
To use this image, add this to a downstream image Dockerfile:  
``FROM kernel528/alpine:3.20.3``
``docker build -t kernel528/alpine:3.20.3-f Dockerfile .``

### Running
``$ docker run -it --rm --name alpine3 --hostname docker-alpine3 -e TZ=CST kernel528/alpine:3.20.3 bash``

### Using image:
To use this image, add this to a downstream image Dockerfile:  
``FROM kernel528/alpine:3.20.3``


### Authors
* **kernel528** - (kernel528@gmail.com)
