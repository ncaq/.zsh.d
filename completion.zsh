#スペル訂正時にDVORAK配列を前提にする
#setopt dvorak
setopt dvorak

#スペル訂正逆に鬱陶しいわ
unsetopt correct_all

#コマンド履歴検索にフィルタを
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#http://d.hatena.ne.jp/tsaka/20060923/1158993348
#0にすると､ウィンドウを超えて出力されるときにのみ出力される｡
LISTMAX=0

#補完のときプロンプトの位置を変えない
setopt always_last_prompt
#補完候補が複数あるとき自動でメニューをリストアップ
setopt auto_list
#補完要求に対してメニューをリストアップ
setopt auto_menu
#補完候補を詰めて表示する
setopt list_packed
#補完の表示を水平方向に
setopt list_rows_first
#補完候補の表示を親切に ls -F
# /がディレクトリ
# @がシンボリックリンク
setopt list_types
# tabキーの節約
#setopt menu_complete
#エイリアスに対して別の補完定義を telnet tt
setopt complete_aliases
#ディレクトリ 補完 /を付与
setopt auto_param_slash

#zsh-completions用の設定
fpath=(/home/ncaq/.oh-my-zsh/custom/zsh-completions/src $fpath)
