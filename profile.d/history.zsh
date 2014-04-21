export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

setopt extendedhistory #開始時刻と,実行時間を記録する
setopt hist_ignore_dups #重複コマンドを記録しない
setopt histignorespace #始めがスペースの場合記録しない
setopt sharehistory #複数端末で履歴を共有する
