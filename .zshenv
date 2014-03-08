bindkey -e

export HISTSIZE=1000
export SAVEHIST=10000000
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt share_history

setopt dvorak
unsetopt correct_all

export EDITOR="emacsclient"
export VISUAL=$EDITOR
export SUDO_EDITOR=$EDITOR

export PAGER="less"
export LESS='-R'
export LESSOPEN="|src-hilite-lesspipe.sh %s"
export LESSHISTFILE=-

#auto ls when cd
function chpwd() {ls}
