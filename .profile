export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export VISUAL=$EDITOR
export ZDOTDIR=~/.zsh.d

if hash cygpath 2>/dev/null; then
  YARN_GLOBAL_BIN=$(cygpath $(yarn global bin))
else
  YARN_GLOBAL_BIN=$(yarn global bin)
fi

export PATH="$HOME/.local/bin:$HOME/.local/share/coursier/bin:$HOME/.cargo/bin:$GOPATH/bin:$YARN_GLOBAL_BIN:$ZDOTDIR/bin:$PATH"
