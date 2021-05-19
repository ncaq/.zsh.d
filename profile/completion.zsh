LISTMAX=0                       # 0にするとウィンドウを超えて出力されるときにのみ問い合わせる

setopt globdots                 # .から始まるファイルも展開する
setopt list_packed              # 補完候補を詰めて表示する
setopt list_types               # 補完候補の表示をls -Fのようにする
setopt numeric_glob_sort        # 数字補完リストを数値としてソートする

# 補完の情報を増やす
# ハイライトを有効化
zstyle ':completion:*:default' menu select=2
# 補完を分類する
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*' group-name ''
# セパレータを設定する
zstyle ':completion:*' list-separator '->'
zstyle ':completion:*:manuals' separate-sections true
# processIDを得るためのコマンドを指定
zstyle ':completion:*:processes' command 'ps ax -o pid,s,args'
# 大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# lsの補完色を表示色と同じにする
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

mkdir -p /tmp/$USER-zsh-completions/
fpath=(/tmp/$USER-zsh-completions/ $fpath)

if hash rustc 2>/dev/null; then
  fpath=($(rustc --print sysroot)/share/zsh/site-functions $fpath)
fi

# poetryなど補完生成にかなりの時間がかかるものが存在するため、
# ファイルが存在しない時のみ補完ファイル生成を行います。
# これにより時間がかかる初期化はブートから一回目の起動のみになります。
() {
  local stack_comp_file=/tmp/$USER-zsh-completions/_poetry
  if hash stack 2>/dev/null && [ ! -f $stack_comp_file ]; then
    stack --zsh-completion-script stack > $stack_comp_file
  fi

  local rustup_comp_file=/tmp/$USER-zsh-completions/_rustup
  if hash rustup 2>/dev/null && [ ! -f $rustup_comp_file ]; then
    rustup completions zsh > $rustup_comp_file
  fi

  local poetry_comp_file=/tmp/$USER-zsh-completions/_poetry
  if hash poetry 2>/dev/null && [ ! -f $poetry_comp_file ]; then
    poetry completions zsh > $poetry_comp_file
  fi
}

# zcompdumpファイルを生成します。
autoload -Uz compinit && compinit -u -d /tmp/$USER-zsh-completions/.zcompdump
# 常にBash形式の補完ファイルを受け付けます。
autoload bashcompinit && bashcompinit

# AWS CLIの補完生成にはcompdefが生成されている必要があるので、compinitの後に設置します。
if hash aws_completer 2>/dev/null; then
  complete -C aws_completer aws
fi
