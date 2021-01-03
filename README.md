[![Build Status](http://drone.kernelsanders.biz:81/api/badges/kernel528/alpine-docker/status.svg)](http://drone.kernelsanders.biz:81/kernel528/alpine-docker)

# This repo contains the base alpine linux docker image for kernel528

This image is a base image intended to be foundational to other images which provide additional functionality.

### Overview
This is a base image with alpine3 linux OS, with core packages.


### How to Build
``docker build -t kernel528/alpine:3.12.2-f 3.12/Dockerfile .``

### Running
``$ docker run -it --rm --name alpine3 --hostname docker-alpine3 -e TZ=CST kernel528/alpine:3.12.2 bash``

### Using image:
To use this image, add this to a downstream image Dockerfile:  
``FROM kernel528/alpine:3.12.2``


### Authors
* **kernel528** - (kernel528@gmail.com)
