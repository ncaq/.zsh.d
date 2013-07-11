#some more ls aliases
alias ls="\ls --color=always -hFAv"
alias l="\ls --color=always -hFlAv"
alias ll="\ls --color=always -hFlv"
alias le="\ls -hFlAv --color=always|less"
#aliasを有効にしたsudo http://blog.hekt.org/archives/5085
alias sudo='sudo -E '
#長い奴ら
alias c="sudo dispatch-conf"
alias e="emacsclient -a emacs"
alias g="gnome-open"
alias k="kde-open"
alias m="sudo emerge --autounmask-write -v"
alias make="make -j5"
alias o="locate"
alias om="omake -P -w -j5"
alias omake="omake -j5"
alias p="less -N"
alias r="rsync -av --progress -h"
alias t="trash -v"
alias u="sudo updatedb"
alias z="exec zsh -l"
#hasktagsが全部回ってくれるそうで
alias hasktagsr="find . -type f -name \*.\*hs -print0 | xargs -0 hasktags -c"
#abcedのいつもの
alias ripcd="abcde -M -a cddb,read,encode,tag,move,replaygain,clean"
#スターウォーズを上映
alias starwars="telnet towel.blinkenlights.nl"
#mozcの設定が普通に出せない…
alias mozc-config="/usr/lib/mozc/mozc_tool -mode=config_dialog"
alias mozc-dict="/usr/lib/mozc/mozc_tool --mode=dictionary_tool"


#意味不明
alias mv="mv"
