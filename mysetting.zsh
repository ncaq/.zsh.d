setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zsh_history
setopt extended_history
setopt share_history

export VISUAL="emacsclient -a emacs"
export EDITOR="emacsclient -a emacs"

export PAGER=/usr/bin/less
#less add color view
export LESS='-R'
#syntaxs highlight
export LESSOPEN='| /usr/bin/src-hilite-lesspipe.sh %s'

ln -sf Copy/sync/.zsh_history ~/
