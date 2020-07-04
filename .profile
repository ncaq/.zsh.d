export SDKMAN_DIR=~/.sdkman
[[ $SDKMAN_DIR ]] || [ -f ~/.sdkman/bin/sdkman-init.sh ] && source ~/.sdkman/bin/sdkman-init.sh

export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export PATH=~/.local/bin:~/.yarn/bin:~/.cargo/bin:$GOPATH/bin:/sbin:/usr/sbin:/usr/games/bin:$PATH
export VISUAL=$EDITOR
export ZDOTDIR=~/.zsh.d
