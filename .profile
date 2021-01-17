export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export VISUAL=$EDITOR
export ZDOTDIR=~/.zsh.d

if hash gem 2>/dev/null; then
  gempath=$(gem env gempath)
else
  gempath=""
fi

if hash yarn 2>/dev/null; then
  if hash cygpath 2>/dev/null; then
    yarn_global_bin=$(cygpath $(yarn --offline global bin))
  else
    yarn_global_bin=$(yarn --offline global bin)
  fi
else
  yarn_global_bin=""
fi

export PATH="$HOME/.local/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/.local/share/coursier/bin:$ZDOTDIR/bin:$gempath$yarn_global_bin:$PATH"
