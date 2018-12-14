[![Build Status](http://drone.kernelsanders.biz/api/badges/kernel528/alpine-docker/status.svg)](http://drone.kernelsanders.biz/kernel528/alpine-docker)

# This repo contains the base docker image for kernel528

This image is a base image intended to be foundational to other images which provide additional functionality.

### Overview
This is a base image with alpine3 linux OS, with core packages.


### How to Build
``docker build -t kernel528/alpine:3.8.1-f 3.8/Dockerfile .``

### Running
``$ docker run -it --rm --name alpine3 --hostname docker-alpine3 -e TZ=CST kernel528/alpine:3.8.1 bash``

### Using image:
To use this image, add this to a downstream image Dockerfile:  
``FROM kernel528/alpine:3.8.1``


### Authors
* **kernel528** - (kernel528@gmail.com)
