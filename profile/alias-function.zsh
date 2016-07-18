alias ls='ls --color=auto --classify --human-readable --group-directories-first --sort=version --almost-all'
alias ll='ls --all -l'

le() {
    ll --color=always $@|less -N
}

locate-current-dir() {
    locate --ignore-case --regex "^$(pwd).*$1.*" ${@[2, -1]}
}

alias emerge-rebuild='sudo emerge --backtrack=30 --with-bdeps=y @live-rebuild @module-rebuild @preserved-rebuild'
alias fullpath='find -L `pwd` -maxdepth 1'
alias gcc-march-native='gcc -march=native -E -v - </dev/null 2>&1 | grep cc1'
alias grub-update='sudo grub2-mkconfig -o /boot/grub/grub.cfg'
alias metaflac-add-replay-gain-all='find . -type d -print0|parallel --no-notice --jobs 100% --null --keep-order "metaflac --add-replay-gain {}/*.flac"'
alias mkbackup='sudo mksquashfs /boot /etc /home /opt /root /usr/local /var $(date --iso-8601)_$(hostname).sfs -comp xz -noappend'
alias month-update='cd ~/Documents && unlink current && mkdir archive/$(date +"%Y-%m") && ln -s archive/$(date +"%Y-%m") current'
alias mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias nkfu='nkf -w -x -Lu'
alias nkfw='nkf -w -x -Lu --overwrite'
alias random-int='cat /dev/urandom|od -t dI|cut --delimiter=" " -f2-|xargs|tr " " "\n"|head -n'
alias speexenc-high-all='parallel --verbose --jobs 100% speexenc -V --quality 10 --comp 10 --vbr {} {.}.spx ::: *.wav'
alias sqlite-vacuum='find -L . -print0|parallel --jobs 100% --null "file"|ag "SQLite 3.x"|cut -d: -f1|parallel --verbose --jobs 100% "sqlite3 {} \"vacuum;reindex;\""'
alias voicememo='arecord -t raw -f S16_LE -r 32000|speexenc --vbr --rate 32000 --le --16bit - `date --iso-8601`.spx'
alias vscan='clamdscan * -r'
