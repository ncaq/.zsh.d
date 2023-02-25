locate-current-dir() {
  locate --ignore-case --regex "^$(pwd).*$1.*" ${@[2, -1]}
}

ps-rg() {
  readonly local ps_result=$(ps aux)
  echo -E $ps_result|rg $@
}

rg-pager() {
  rg --pretty $@|less
}

docker-hub-tags() {
  curl -s https://registry.hub.docker.com/v1/repositories/$1/tags|json_pp|rg name|less
}

alias awslogsp='awslogs get --color always --no-group --no-stream --timestamp'
alias chmod-read='sudo chown $USER: . **/* && chmod 755 . **/*(/) && chmod 644 **/*(.)'
alias disk-usage='sudo du --human-readable --one-file-system .|sort --human-numeric-sort --reverse|less'
alias dracut-update='sudo dracut --kver $(eselect kernel show|rg linux|cut -d '-' -f 2-) --force && grub-update'
alias fullpath='find -L `pwd` -maxdepth 1'
alias gcc-march-native='gcc -march=native -E -v - </dev/null 2>&1|grep cc1'
alias genkernel-update='sudo genkernel --no-lvm --btrfs --luks initramfs && grub-update'
alias git-daily='git log --all --format="%h %ai %s" --since=$(date +"%Y-%m-%d-00:00:00") --author=$(git config user.email)|xsel --clipboard --input --logfile /dev/null'
alias git-locate-pull='locate --regex "$(pwd)/.*/\.git$" --null|parallel --null --keep-order "test -d {} -a -d {}/.. && cd {}/.. && echo {}: && git -c color.diff=always pull --progress --all --keep"'
alias git-submodule-pull='git submodule foreach "git checkout master && git pull"'
alias github-label-setup-dotfiles='github-label-setup --labels ~/dotfiles/github/github-label-presets.json'
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias iconv-cp932='iconv --from-code CP932 --to-code UTF-8'
alias metaflac-add-replay-gain-all='find . -type d -print0|parallel --null --keep-order "metaflac --add-replay-gain {}/*.flac"'
alias mkbackup='sudo mksquashfs etc home root var /$(date --iso-8601)_$(hostname).sfs -comp zstd -noappend -wildcards -e "... *.sfs" "... .cache" "... .stack-work" "... Cache" "... _cache" "... cache" "... dist" "... node_modules" "... target"'
alias mozc-config='/usr/libexec/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/libexec/mozc/mozc_tool --mode=dictionary_tool'
alias opusenc-speech-parallel='parallel "opusenc --speech --framesize 60 {} {.}.opus"'
alias oxipng-best-parallel='parallel "oxipng --opt max --strip safe --interlace 0 --zopfli"'
alias oxipng-best='oxipng --opt max --strip safe --interlace 0 --zopfli'
alias sqlite3-vacuum='locate --null "$(pwd)"|parallel --null "file"|rg "SQLite 3.x"|cut -d: -f1|parallel --verbose "sqlite3 {} \"vacuum;reindex;\""'
alias to-clipboard='xsel --clipboard --output --logfile /dev/null'
alias trash-clear='trash-empty 30'
alias treep='tree|less'
