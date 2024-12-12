# FROM alpine:3.20.3
FROM arm64v8/alpine:3.20.3

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# Add common utils
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
        ca-certificates \
        bind-tools \
        iputils \
        dumb-init \
        su-exec \
        tar \
        bash \
        curl \
        openssh-client \
        vim \
        zsh \
        git \
        sudo \
 && update-ca-certificates --fresh \
 && rm -rf /var/cache/apk/*

# Add default /etc/bashrc file
COPY .bashrc /root/.bashrc
COPY bashrc /etc/bashrc
