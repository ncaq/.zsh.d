HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt extended_history         # 開始時刻と実行時間を記録する
setopt hist_ignore_dups         # 連続する重複コマンドを記録しない
setopt hist_ignore_space        # スペースで始めると記録しない
setopt hist_reduce_blanks       # 複数のスペースを省略
setopt share_history            # 複数端末で履歴を共有する

# 履歴を遡る時既に入力してた文字列で部分マッチする
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
