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

# trashyの補完がエラーになるので雑に回避。
# TODO: 調査して問題を起こしているところにバグ報告をする。
function _trash() {
  _files
}
compdef _trash trash
