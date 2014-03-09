export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000000

#重複コマンドを記録しない
setopt hist_ignore_dups
#開始時刻と,実行時間を記録する
setopt EXTENDED_HISTORY
