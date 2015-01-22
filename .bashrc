# Set Some Colors
BGREEN='\[\033[1;32m\]'
GREEN='\e[0;32m'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
WHITE='\e[1;37m'
YELLOW='\[\033[0;33m\]'

# Alias stuff
if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi

# Git Completion 
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Git Prompt 
if [ -f ~/.git-prompt.sh ]; then 
    source ~/.git-prompt.sh 
    export PS1="${BGREEN}\u@\h ${BLUE}(${RED}\$(pwd)${BLUE})${YELLOW}\$(__git_ps1)\n ${RED}\$ ${NORMAL}"
else
    export PS1="${BGREEN}\u@\h ${BLUE}(${RED}\$(pwd)${BLUE})\n ${RED}\$ ${NORMAL}"
fi

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

#set editors and visual variables
set -o vi
export EDITOR=vi

export LC_ALL="C"

# Bash options from emercer.
# Automatically correct mistyped directory names
shopt -s cdspell
 
# Include dot files in filename expansion results
shopt -s dotglob
 
# Expand aliases
shopt -s expand_aliases
 
# Use case-insensitive matching for filename expansion results
shopt -s nocaseglob

export PATH=$PATH:$HOME/bin
