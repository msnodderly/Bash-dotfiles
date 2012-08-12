

PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/bin

CDPATH=.:~:~/Work/SVN:~/Dropbox



alias ssh="ssh -Y"
alias ls='ls -G'


# don't use system svn on macbook
alias svn="/usr/local/bin/svn"
export SVN_EDITOR="/usr/bin/vim"


# export amazon AWS keys etc.
source ~/.bash_private


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




if [ `uname` = "Darwin" ] ; then 
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
fi


## Setup vi mode
set -o vi
# ^p check for partial match in history
bind -m vi-insert "\C-p":dynamic-complete-history
# ^n cycle through the list of partial matches
bind -m vi-insert "\C-n":menu-complete


# enable ^a/^e and ^l in vi mode
bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-a":beginning-of-line
bind -m vi-insert "\C-e":end-of-line

