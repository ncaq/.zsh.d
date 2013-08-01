#some more ls aliases
alias -g ls="ls --color=auto -hFAvi"
alias -g ll="ls -hFAvi -l"
alias -g l="ll -a"
alias -g le="l |less -N"
#長い奴ら
alias -g a="sudo dispatch-conf"
alias -g c="rsync-copy"
alias -g e="emacsclient -a emacs"
alias -g ga="git add --all"
alias -g k="kde-open"
alias -g m="sudo emerge --autounmask-write -v"
alias -g make="make -j5"
alias -g o="locate"
alias -g om="omake -P -w -j5"
alias -g omake="omake -j5"
alias -g p="p"
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
    source-highlight -fesc -i $@ -o /dev/stdout --failsafe|nkf -w|less -N
}

#historyの問題を解決
alias history='fc -li -30'
