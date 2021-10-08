export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export VISUAL=$EDITOR
export ZDOTDIR=~/.zsh.d

# 余計な変数をセッションに残さないように、即時関数即実行を行います。
() {
  if hash gem 2>/dev/null; then
    local gem_path=$(gem env gempath|tr ':' '\n'|grep ".local/share/gem/ruby/")/bin
  else
    local gem_path=""
  fi

  if [[ -f ~/.opam/opam-init/init.sh ]]; then
    source ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null
  fi

  if hash yarn 2>/dev/null; then
    local yarn_global_bin=$(yarn --offline global bin)
  else
    # yarnがシステムに認識されてない場合、雑にbinの箇所を推定します。
    local yarn_global_bin="$HOME/.yarn/bin"
  fi

  if hash cygpath 2>/dev/null; then
    local yarn_path=$(cygpath $yarn_global_bin)
  else
    local yarn_path=$yarn_global_bin
  fi

  export PATH="$HOME/.local/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/.local/share/coursier/bin:$ZDOTDIR/bin:$gem_path:$yarn_path:$PATH"
}
