# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/bin

# CDPATH is one of bash's best "secret" features. Eg. "cd projects" will drop me into "~/Dropbox/projects" from anywhere in the filesystem (unless the PWD has "projects" subdir).
CDPATH=.:~:~/Work/SVN:~/Dropbox


alias ssh="ssh -Y"
alias ls='ls -G'

export SVN_EDITOR="/usr/bin/vim"


# export amazon AWS keys etc.
if [ -f ~/.bash_private ]; then
    source ~/.bash_private
fi


shopt -s histappend

shopt -s checkwinsize

# see http://www.caliban.org/bash/index.shtml
# correct minor spelling errors in a cd command
shopt -s cdspell
#  cause multi-line commands to be appended to your bash history as a single line command
shopt -s cmdhist
# egrep-style extended pattern matching
shopt -s extglob



alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'






## Enable bash tab completion for usernames, ssh hostnames, etc etc. Show this to a smug zsh user some time :)

# don't expand hostnames out of /etc/hosts 
COMP_KNOWN_HOSTS_WITH_HOSTFILE=""

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f ~/.bash_completion ]; then
    . ~/.bash_completion
fi




# OS X stuff
if [ `uname` = "Darwin" ] ; then 


    # OS X version of svn is missing ssl support
    alias svn="/usr/local/bin/svn"


   #BREW_PREFIX=`brew --prefix` # too slow
   BREW_PREFIX="/usr/local"
    if [ -f ${BREW_PREFIX}/etc/bash_completion ]; then
        . ${BREW_PREFIX}/etc/bash_completion
    fi
fi





## Setup vi mode
set -o vi
# ^p check for partial match in history
bind -m vi-insert "\C-p":dynamic-complete-history
# ^n cycle through the list of partial matches
bind -m vi-insert "\C-n":menu-complete


# re-enable ^a/^e and ^l in vi mode
bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-a":beginning-of-line
bind -m vi-insert "\C-e":end-of-line

