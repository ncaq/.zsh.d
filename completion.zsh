#zsh-completions用の設定
fpath=(/home/ncaq/Documents/tool/zsh-completions/src $fpath)
#スペル訂正時にDVORAK配列を前提にする
setopt dvorak
#スペル訂正は時に鬱陶しい
unsetopt correct_all

#コマンド履歴検索にフィルタを
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

#http://d.hatena.ne.jp/tsaka/20060923/1158993348
#0にすると､ウィンドウを超えて出力されるときにのみ出力される｡
LISTMAX=0

#補完候補を詰めて表示する
setopt list_packed
#補完候補の表示をls -Fのようにする
setopt list_types
#.から始まるファイルも展開する
setopt glob_dots

#補完の情報を増やす
#http://qiita.com/PSP_T/items/ed2d36698a5cc314557d
#highlight
zstyle ':completion:*:default' menu select=2
# 補完関数の表示を強化する
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list
zstyle ':completion:*:messages' format '%F{YELLOW}%d'$DEFAULT
zstyle ':completion:*:warnings' format '%F{RED}No matches for:''%F{YELLOW} %d'$DEFAULT
zstyle ':completion:*:descriptions' format '%F{YELLOW}completing %B%d%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'$DEFAULT
# マッチ種別を別々に表示
zstyle ':completion:*' group-name ''
# セパレータを設定する
zstyle ':completion:*' list-separator '-->'
zstyle ':completion:*:manuals' separate-sections true
# キャッシュを使って速くする
zstyle ':completion:*' use-cache true

autoload -U compinit
