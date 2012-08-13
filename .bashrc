# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/bin

# CDPATH is one of bash's best "secret" features. Eg. "cd projects" will drop
# me into "~/Dropbox/projects" from anywhere in the filesystem (unless the PWD
# has "projects" subdir).
CDPATH=.:~:~/Work/SVN:~/Dropbox


alias ssh="ssh -Y"
alias ls='ls -G'



shopt -s histappend
shopt -s checkwinsize
shopt -s cdspell
shopt -s cmdhist

# enable egrep-style extended pattern matching
shopt -s extglob



alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'






# Enable bash tab completion.  This is bash's best feature that no one knows about
# because most distros don't have it enabled by default.  Tab completion for git commands,
# usernames, ssh hostnames, etc etc. Show this to a smug zsh  user some time :)

# I don't want to expand hostnames out of /etc/hosts 
COMP_KNOWN_HOSTS_WITH_HOSTFILE=""

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f /usr/local/etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f ~/.bash_completion ]; then
    . ~/.bash_completion
fi



# OS X stuff
if [ `uname` = "Darwin" ] ; then 
    # Use custom version of svn -- OS X version is missing ssl support
    alias svn="/usr/local/bin/svn"
fi

export SVN_EDITOR="/usr/bin/vim"




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



# Personal stuff -- export amazon AWS keys etc.
if [ -f ~/.bash_private ]; then
    source ~/.bash_private
fi


