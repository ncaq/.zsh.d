export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export VISUAL=$EDITOR
export ZDOTDIR=~/.zsh.d

# 余計な変数をセッションに残さないように、即時関数即実行を行います。
() {
  if hash gem 2>/dev/null; then
    local gempath=$(gem env gempath|tr ':' '\n'|grep ".local/share/gem/ruby/")/bin
  else
    local gempath=""
  fi

  if [[ -f ~/.opam/opam-init/init.sh ]]; then
    source ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null
  fi

  if hash yarn 2>/dev/null; then
    if hash cygpath 2>/dev/null; then
      local yarn_global_bin=$(cygpath $(yarn --offline global bin))
    else
      local yarn_global_bin=$(yarn --offline global bin)
    fi
  else
    local yarn_global_bin=""
  fi

  export PATH="$HOME/.local/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/.local/share/coursier/bin:$ZDOTDIR/bin:$gempath:$yarn_global_bin:$PATH"
}
