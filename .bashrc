# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

# Source global definitions
#if [ -f /etc/bashrc ]; then
        #. /etc/bashrc
#fi

alias vi="/usr/bin/vim"

# Directory/Disk  Aliases
alias ls="/bin/ls -FCh --color"
alias ll="ls -l"
alias lla="ll -a"
alias lsa="ls -a"
alias ltr="ls -altr"
alias dusort="du -sk * | sort -n"
alias tmesg="dmesg | tail"
alias psall="ps -eALo pid,spid,user,priority,ni,pcpu,vsize,time,args"
alias df="df -h"

# Environment Aliases
alias h="history"
alias bsh="bash -l"
alias epath="echo $PATH | tr ":" "\n""
alias eldpath="echo $LD_LIBRARY_PATH | tr ":" "\n""
alias agent="`eval ssh-agent`"
alias agentadd="`eval ssh-agent`; ssh-add"

# Set user specific settings       #
PS1='[\[\033[00;31m\]\u\[\033[00m\]@\h] [\[\033[00;32m\]\w\[\033[00m\]] \$ \[\033[00m\]'
PS2="\[\033[00;35m\]<<<\[\033[00m\]\!\[\033[00;35m\]>>>\[\033[00m\] "
BASH_ENV=$HOME/.bashrc
#LC_ALL="en_US.utf8"
LC_ALL="C"

#======================================================
#
#               Color Equivalents
#
#       Black       0;30     Dark Gray     1;30
#       Blue        0;34     Light Blue    1;34
#       Green       0;32     Light Green   1;32
#       Cyan        0;36     Light Cyan    1;36
#       Red         0;31     Light Red     1;31
#       Purple      0;35     Light Purple  1;35
#       Brown       0;33     Yellow        1;33
#       Light Gray  0;37     White         1;37
#======================================================
CFLAGS="-O3 -pipe -march=pentium4 -msse2 -mfpmath=sse -ffast-math"

#export LANG TERM PATH LD_LIBRARY_PATH PS1 PS2 LS_COLORS KDEDIR KDEDIRS
export PS1 PS2 LS_COLORS CFLAGS PATH LC_ALL
