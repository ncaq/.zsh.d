setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zsh_history
setopt extended_history
setopt share_history

export VISUAL="emacsclient"
export EDITOR="emacsclient"

export PAGER="less"
#less add color view
export LESS='-R'
export LESSOPEN="|src-hilite-lesspipe.sh %s"

#auto ls when cd
function chpwd() {ls --color=auto -hFAv}
