# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

PS1='{\[\033[00;31m\]\u\[\033[00m\]@\h} {\[\033[00;33m\]\w\[\033[00m\]} \$ \[\033[00m\]'
PS2="\[\033[00;35m\]<<<\[\033[00m\]\!\[\033[00;35m\]>>>\[\033[00m\] "

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

TERM=xterm

# some more ls aliases
alias ls="ls -FCh --color=auto"
alias ll='ls -l'
alias lla='ll -a'
#alias la='ls -A'
#alias l='ls -CF'
#alias ll='ls -l'
