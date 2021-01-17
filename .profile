export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export VISUAL=$EDITOR
export ZDOTDIR=~/.zsh.d

if hash yarn 2>/dev/null; then
  if hash cygpath 2>/dev/null; then
    yarn_global_bin=$(cygpath $(yarn --offline global bin))
  else
    yarn_global_bin=$(yarn --offline global bin)
  fi
else
  yarn_global_bin=""
fi

export PATH="$HOME/.local/bin:$HOME/.local/share/coursier/bin:$HOME/.cargo/bin:$GOPATH/bin:$yarn_global_bin:$ZDOTDIR/bin:$PATH"
