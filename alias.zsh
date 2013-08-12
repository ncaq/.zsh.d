#some more ls aliases
alias    ls="ls --color=auto -hFAvi"
alias    ll="ls -hFAvi -l"
alias     l="ll -a"
alias    le="l |less -N"
#長い奴ら
alias    a="sudo dispatch-conf"
alias    c="rsync-copy"
alias -g e="emacsclient -a emacs"
alias    g="gnome-open"
alias    ga="git add --all"
alias    k="kde-open"
alias    m="sudo emerge --autounmask-write"
alias -g make="make -j5"
alias -g o="locate"
alias -g om="omake -P -w -j5"
alias -g omake="omake -j5"
alias -g p="p"
alias -g t="trash -v"
alias    u="sudo updatedb"
alias    z="exec zsh -l"
#hasktagsが全部回ってくれるそうで
alias    hasktagsr="find . -type f -name \*.\*hs -print0 | xargs -0 hasktags -c"
#abcedのいつもの
alias    ripcd="abcde -M -a cddb,read,encode,tag,move,replaygain,clean"
#スターウォーズを上映
alias    starwars="telnet towel.blinkenlights.nl"
#mozcの設定が普通に出せない…
alias    mozc-config="/usr/lib/mozc/mozc_tool -mode=config_dialog"
alias    mozc-dict="/usr/lib/mozc/mozc_tool --mode=dictionary_tool"

#函数だがまあ別に良いだろう
p()
{
    source-highlight -fesc -i $@ -o /dev/stdout --failsafe|nkf -w|less -N
}

#historyの問題を解決
alias history='fc -li -30'
