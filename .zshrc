# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="kernel528"
ZSH_THEME="kernel528-ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(command-not-found docker docker-compose gh git kubectl minikube nvm themes)

# User configuration

export PATH="/snap/bin:/usr/local/bin:/usr/sbin:/sbin:/usr/bin:/bin"
#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/joe/bin"


#ZSH_CUSTOM=$HOME/.omz-custom
zstyle ':omz:alpha:lib:git' async-prompt no
source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vi'
else
   export EDITOR='vim'
fi

# Powerline stuff
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"

# BUllettrain zsh theme
BULLETTRAIN_DIR_EXTENDED=2
BULLETTRAIN_PROMPT_ROOT=true

# Set Language - You may need to manually set your language environment
#export LC_ALL="C"
export LANG=en_US.UTF-8
export LC_ALL="en_US.UTF-8"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# Colima
export COLIMA_HOME=$HOME/.colima

######################
# ZSH Customizations #
######################
# Source Custom Aliases
source ~/.zsh_aliases

# Check if running in iTerm or JetBrains JediTerm
if [[ $TERM_PROGRAM == "iTerm.app" ]]; then # If running iTerm, then use defined ZSH theme and prompt stuff...
  echo "Running $TERM_PROGRAM ..."
    autoload -Uz compinit promptinit vcs_info
    compinit
    promptinit
  elif [[ $TERMINAL_EMULATOR == "JetBrains-JediTerm" ]]; then # If running intelij terminal, then set this prompt stuff...
    echo "Running $TERMINAL_EMULATOR ..."
    autoload -Uz compinit promptinit vcs_info
    compinit
    promptinit
    eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/themes/kernel528-ys.omp.json)"
  elif [[ $TERM == "xterm-256color" ]]; then # if running usual linux terminal, then set these...
    echo "Running $TERM ..."
    autoload -Uz compinit promptinit vcs_info
    compinit
    promptinit
    #eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/themes/kernel528-ys.omp.json)"
  else
    echo "Running $TERM ..."
    # Don't set anything specific...
fi

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# Set ASCII Terminal Color Variables
export BLACK="\e[30m"
export RED="\e[31m"
export GREEN="\e[32m"
export YELLOW="\e[33m"
export BLUE="\e[34m"
export PURPLE="\e[35m"
export CYAN="\e[36m"
export WHITE="\e[37m"
export LBLACK="\e[90"  # Light Black
export LRED="\e[91"    # Light Red
export LGREEN="\e[92"  # Light Green
export LYELLOW="\e[93" # Light Yellow
export LBLUE="\e[94"   # Light Blue
export LPURPLE="\e[95" # Light Purple
export LCYAN="\e[96"   # Light Cyan
export LWHITE="\e[97"  # Light White
export STOP="\e[0m"

# Show Banner
#sh ~/scripts/banner.sh
