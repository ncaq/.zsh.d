alias -g ls='ls-first-ln-dir --color=auto --classify --human-readable --almost-all'
alias -g ll='ls-first-ln-dir --color=auto --classify --human-readable --all -l'

function le()
{
    ll --color=always $@|less -N
}

alias -g nkfu='nkf -w -x -Lu'
alias -g nkfw='nkf -w -x -Lu --overwrite'

alias agp='ag --pager less'
alias clang++y='clang++ -std=c++14 -stdlib=libc++ -ggdb -Wall -Wextra'
alias emerge-rebuild='sudo emerge -tv @live-rebuild @module-rebuild @preserved-rebuild'
alias fullpath='find -L `pwd` -maxdepth 1'
alias g++x='g++ -std=c++11 -ggdb -Wall -Wextra'
alias gcc1='gcc -std=c11 -ggdb -Wall -Wextra'
alias gctags='gtags --gtagslabel=ctags'
alias grub-update='sudo grub2-mkconfig -o /boot/grub/grub.cfg'
alias hsr='ghc -O2 -threaded -Wall -outputdir /tmp'
alias mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias pa='ps aux|ag'
alias random-int='cat /dev/urandom|od -t dI|cut --delimiter=" " -f2-|xargs|tr " " "\n"|head -n'
alias speexenc-high-all='parallel --verbose --jobs 100% speexenc -V --quality 10 --comp 10 --vbr {} {.}.spx ::: *.wav'
alias sqlite-vacuum-reindex='find -L . -print0|parallel --jobs 100% --null "file"|ag --literal --case-sensitive "SQLite 3.x"|cut -d: -f1|parallel --verbose --jobs 100% --max-args=1 "sqlite3 {} \"vacuum;reindex;\""'
alias voicememo='arecord -t raw -f S16_LE -r 32000|speexenc --vbr --rate 32000 --le --16bit - `date --iso-8601`.spx'
alias vscan='clamdscan * -r'
