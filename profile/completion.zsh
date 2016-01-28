fpath=($ZDOTDIR/sub/zsh-completions/src $fpath)

LISTMAX=0                # 0にすると､ウィンドウを超えて出力されるときにのみ問い合わせる http://d.hatena.ne.jp/tsaka/20060923/1158993348

setopt globdots                 # .から始まるファイルも展開する
setopt list_packed              # 補完候補を詰めて表示する
setopt list_types               # 補完候補の表示をls -Fのようにする
setopt numeric_glob_sort        # 数字補完リストを数値としてソートする

# 補完の情報を増やす
# http://qiita.com/PSP_T/items/ed2d36698a5cc314557d
# highlight
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

autoload -U compinit
compinit -u -d /tmp/$USER.zcompdump
