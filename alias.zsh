#some more ls aliases
alias -g ls='ls --color=auto -hFAvi'
alias -g ll='ls -hFAvi -l'
alias -g  l='ll -a'
alias -g le='l |less -N'
#長い奴ら
alias    a='sudo dispatch-conf'
alias    ga='git add --all'
alias    m='sudo emerge'
alias    u='sudo updatedb'
alias    udn='sudo emerge -uDN world'
alias    z='exec zsh -l'
alias -g c='rsync-copy'
alias -g e='emacsclient -a emacs'
alias -g n='xdg-open'
alias -g o='locate -i'
alias -g om='omake -P -w -j5'
alias -g p='less -N'
alias -g t='trash -v'
#default hack
alias -g sudo='sudo -E'
alias -g make='make -j5'
alias -g omake='omake -j5'
alias -g ag='ag -i'
alias -g grep='grep --color=always -i'
alias -g nkf='nkf -w -Lu -d -x'
#hasktagsが全部回ってくれるそうで
alias    hasktagsr='find . -type f -name \*.\*hs -print0 | xargs -0 hasktags -c'
#abcedのいつもの
alias    ripcd='abcde -M -a cddb,read,encode,tag,move,replaygain,clean'
#スターウォーズを上映
alias    starwars='telnet towel.blinkenlights.nl'
#mozcの設定が普通に出せない…
alias    mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias    mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
#historyの問題を解決
alias history='fc -li -30'
