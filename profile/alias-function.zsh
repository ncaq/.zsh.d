alias ls='ls --color=auto --classify --human-readable --group-directories-first --sort=version --almost-all'
alias ll='ls --all -l'

le() {
    ll --color=always $@|less -N
}

locate-current-dir() {
    locate --ignore-case --regex "^$(pwd).*$1.*" ${@[2, -1]}
}

rgp() {
    rg --pretty $@|less -R
}

prg() {
    readonly local ps_result=$(ps aux)
    echo -E $ps_result|rg $@
}

git-add-file() {
    git add --all .
    readonly local files=$(git diff --cached --name-only .|parallel basename|perl6 -e 'lines.join(", ").say')
    git commit -m "added: ${files}"
}

alias fullpath='find -L `pwd` -maxdepth 1'
alias gcc-march-native='gcc -march=native -E -v - </dev/null 2>&1 | grep cc1'
alias git-daily='git log --all --format="%h %ai %s" --since=$(date +"%Y-%m-%d-00:00:00") --author=$(git config user.email)|xsel --clipboard --input --logfile /dev/null'
alias git-pull-all='locate --regex "$(pwd)/.*/.git$" --null|parallel --no-notice --null --keep-order "test -d {} -a -d {}/.. && cd {}/.. && echo {}: && git -c color.diff=always pull --all"'
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias metaflac-add-replay-gain-all='find . -type d -print0|parallel --no-notice --null --keep-order "metaflac --add-replay-gain {}/*.flac"'
alias mkbackup='sudo mksquashfs /boot /etc /home /opt /root /usr/local /var $(date --iso-8601)_$(hostname).sfs -comp xz -noappend'
alias month-update='cd ~/Documents && unlink current && mkdir archive/$(date +"%Y-%m") && ln -s archive/$(date +"%Y-%m") current'
alias mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias mrebuild='sudo emerge --backtrack=30 --with-bdeps=y @live-rebuild @module-rebuild @preserved-rebuild'
alias mudn='sudo emerge -uDN world'
alias mudnb='sudo emerge -uDN --backtrack=30 world'
alias mudnbw='sudo emerge -uDN --backtrack=30 --with-bdeps=y world'
alias nkfu='nkf -w -x -Lu'
alias nkfw='nkf -w -x -Lu --overwrite'
alias sqlite-vacuum='locate --null "$(pwd)"|parallel --null "file"|rg "SQLite 3.x"|cut -d: -f1|parallel --verbose "sqlite3 {} \"vacuum;reindex;\""'
