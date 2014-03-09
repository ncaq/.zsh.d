#zsh-completions用の設定
fpath=($ZDOTDIR/sub/zsh-completions/src $fpath)

#http://d.hatena.ne.jp/tsaka/20060923/1158993348
#0にすると､ウィンドウを超えて出力されるときにのみ問い合わせる
export LISTMAX=0

#補完候補を詰めて表示する
setopt list_packed
#補完候補の表示をls -Fのようにする
setopt list_types
#.から始まるファイルも展開する
setopt glob_dots

autoload -U compinit
compinit -d /tmp/$USER.zcompdump

#補完の情報を増やす
#http://qiita.com/PSP_T/items/ed2d36698a5cc314557d
#highlight
zstyle ':completion:*:default' menu select=2
# 補完関数の表示を強化する
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list
zstyle ':completion:*:options' description 'yes'
# マッチ種別を別々に表示
zstyle ':completion:*' group-name ''
# セパレータを設定する
zstyle ':completion:*' list-separator '->'
zstyle ':completion:*:manuals' separate-sections true
# キャッシュを使って速くする
zstyle ':completion:*' use-cache true
