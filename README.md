[![Build Status](http://drone.kernelsanders.biz:8080/api/badges/kernel528/alpine-docker/status.svg)](http://drone.kernelsanders.biz:8080/kernel528/alpine-docker)
[![Latest Version](https://img.shields.io/github/v/tag/kernel528/alpine-docker)](https://github.com/kernel528/alpine-docker/releases/latest)
[![Docker Pulls](https://img.shields.io/docker/pulls/kernel528/alpine)](https://hub.docker.com/r/kernel528/alpine)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/kernel528/alpine/3.24.1_1)](https://hub.docker.com/r/kernel528/alpine/3.24.1_1)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/kernel528/alpine?sort=semver)](https://hub.docker.com/r/kernel528/alpine)

# This repo contains the base docker image for kernel528

This image is a base image intended to be foundational to other images which provide additional functionality.
- Upstream repo (master): [docker-alpine](https://github.com/alpinelinux/docker-alpine/tree/master)

## Overview
This base image builds on Alpine Linux and adds common utilities plus a default user and shell configuration for downstream images.

## Build
```
docker build -t kernel528/alpine:3.24.1_1 -f Dockerfile .
```

## Run
```
docker run -it --rm --name alpine3 --hostname docker-alpine3 -e TZ=CST kernel528/alpine:3.24.1_1 bash
```

## Use in downstream images
Add this to your downstream Dockerfile:
```
FROM kernel528/alpine:3.24.1_1
```

## Repository Relationships and Refresh Policy

This repository is the shared base for [`httpd-docker`](https://github.com/kernel528/httpd-docker), [`python-docker`](https://github.com/kernel528/python-docker), [`java-docker`](https://github.com/kernel528/java-docker), [`redis-docker`](https://github.com/kernel528/redis-docker), [`clickhouse-docker`](https://github.com/kernel528/clickhouse-docker), and [`postgres-docker`](https://github.com/kernel528/postgres-docker). The repositories remain independently versioned and released.

Publish and smoke-test an immutable `kernel528/alpine` tag before updating any dependent Dockerfile. Refresh only affected dependents, in separate PRs and releases. HTTPD has an additional downstream: [`www.kernelsanders.biz`](https://github.com/kernel528/www.kernelsanders.biz), which must be rebuilt after a new HTTPD release. Swarm tags are updated last through [`docker-swarm`](https://github.com/kernel528/docker-swarm), and the coordinated state is recorded by [`docker-workspace`](https://github.com/kernel528/docker-workspace).


## Authors
* **kernel528** - (kernel528@gmail.com)
