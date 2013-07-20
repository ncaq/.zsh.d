#some more ls aliases
alias -g ls="\ls --color=always -hFAv"
alias -g l="\ls --color=always -hFlAv"
alias -g ll="\ls --color=always -hFlv"
alias -g le="\ls -hFlAv --color=always|less"
#長い奴ら
alias -g c="sudo dispatch-conf"
alias -g e="emacsclient -a emacs"
alias -g g="gnome-open"
alias -g k="kde-open"
alias -g m="sudo emerge --autounmask-write -v"
alias -g make="make -j5"
alias -g o="locate"
alias -g om="omake -P -w -j5"
alias -g omake="omake -j5"
alias -g p="p"
alias -g r="rsync -av --progress -h"
alias -g t="trash -v"
alias -g u="sudo updatedb"
alias -g z="exec zsh -l"
#hasktagsが全部回ってくれるそうで
alias -g hasktagsr="find . -type f -name \*.\*hs -print0 | xargs -0 hasktags -c"
#abcedのいつもの
alias -g ripcd="abcde -M -a cddb,read,encode,tag,move,replaygain,clean"
#スターウォーズを上映
alias -g starwars="telnet towel.blinkenlights.nl"
#mozcの設定が普通に出せない…
alias -g mozc-config="/usr/lib/mozc/mozc_tool -mode=config_dialog"
alias -g mozc-dict="/usr/lib/mozc/mozc_tool --mode=dictionary_tool"

#函数だがまあ別に良いだろう
p()
{
    source-highlight-esc.sh $1|nkf -w|less
}
