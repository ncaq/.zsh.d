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

mkdir -p /tmp/zsh-completions-$USER/
fpath=(/tmp/zsh-completions-$USER/ $fpath)

if hash rustc 2>/dev/null; then
  fpath=($(rustc --print sysroot)/share/zsh/site-functions $fpath)
fi

# 補完ファイルを生成する関数。
# 補完生成に時間がかかるものがあるため、ファイルが存在しない場合のみ生成。
# これにより、時間がかかる初期化はブートから一回目の起動のみ行う。
generate-completion-file-by-command() {
  local cmd=$1
  local completion_cmd=$2
  local output_dir=/tmp/zsh-completions-$USER
  local completion_file=$output_dir/_$cmd

  # コマンドが存在して補完ファイルが存在しない場合のみ生成
  if hash $cmd 2>/dev/null && [ ! -f $completion_file ]; then
    eval $completion_cmd > $completion_file
  fi
}

generate-completion-file-by-command 'gh' 'gh completion -s zsh'
generate-completion-file-by-command 'poetry' 'poetry completions zsh'
generate-completion-file-by-command 'rustup' 'rustup completions zsh'
generate-completion-file-by-command 'stack' 'stack --zsh-completion-script stack'

# zcompdumpファイルを生成します。
autoload -Uz compinit && compinit -u
# 常にBash形式の補完ファイルを受け付けます。
autoload bashcompinit && bashcompinit

# AWS CLIの補完生成にはcompdefが生成されている必要があるので、compinitの後に設置します。
# 複数の方法を試します。
if [ -f ~/.local/bin/aws_zsh_completer.sh ]; then
  source ~/.local/bin/aws_zsh_completer.sh
elif hash aws_completer 2>/dev/null; then
  complete -C aws_completer aws
fi
