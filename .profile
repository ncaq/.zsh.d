export SDKMAN_DIR=~/.sdkman
[ -f ~/.sdkman/bin/sdkman-init.sh ] && source ~/.sdkman/bin/sdkman-init.sh

export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export VISUAL=$EDITOR
export ZDOTDIR=~/.zsh.d

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$GOPATH/bin:$HOME/.yarn/bin:$ZDOTDIR/bin:$PATH"
