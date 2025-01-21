FROM alpine:3.21.2

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

# Add default shell config files to root
COPY bashrc /etc/bashrc
COPY .bashrc /root/.bashrc
COPY .zshrc /root/.zshrc
COPY .zsh /root/.zsh
COPY .oh-my-posh /root/.oh-my-posh
COPY .oh-my-zsh /root/.oh-my-zsh
COPY .zsh_aliases /root/.zsh_aliases

# Add default shell config files to user
COPY .bashrc /home/joe/.bashrc
COPY .zshrc /home/joe/.zshrc
COPY .zsh /home/joe/.zsh
COPY .oh-my-posh /home/joe/.oh-my-posh
COPY .oh-my-zsh /home/joe/.oh-my-zsh
COPY .zsh_aliases /home/joe/.zsh_aliases

# Set default shell to zsh
ENV SHELL /bin/zsh

# Add default user
ARG USER=joe
ARG UID=1000
ARG GID=1000
ARG GROUP=joe
ARG PASSWD=joe
RUN addgroup -g $GID $GROUP \
 && adduser -D -u $UID -G $GROUP -s /bin/zsh $USER \
 && echo "$USER:$PASSWD" | chpasswd \
 && echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
 && mkdir -p /home/$USER \
 && chown -R $USER:$GROUP /home/$USER

# Set default user
USER $USER