export EDITOR='emacsclient -a emacs'
export GOPATH=~/.go
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'
export LESSHISTFILE='-'
export VISUAL=$EDITOR

if hash gem 2>/dev/null; then
  gem_path=$(gem env gempath|tr ':' '\n'|grep ".local/share/gem/ruby/")/bin
else
  gem_path=""
fi

if [[ -f ~/.ghcup/env ]]; then
  source ~/.ghcup/env
fi

if [[ -f ~/.opam/opam-init/init.sh ]]; then
  source ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null
fi

if hash yarn 2>/dev/null; then
  yarn_global_bin=$(yarn --offline global bin)
else
  # when yarn is not found, use standard yarn path.
  yarn_global_bin="$HOME/.yarn/bin"
fi

if hash cygpath 2>/dev/null; then
  yarn_path=$(cygpath $yarn_global_bin)
else
  yarn_path=$yarn_global_bin
fi

export PATH="$HOME/.local/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/.local/share/coursier/bin:$HOME/.zsh.d/bin:$gem_path:$yarn_path:$PATH"
