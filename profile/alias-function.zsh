alias cabal-gild-all='git ls-files -z "*.cabal"|parallel --verbose --null "cabal-gild --io {}"'
alias chmod-read='sudo chown $USER: . **/* && chmod 755 . **/*(/) && chmod 644 **/*(.)'
alias corepack-activate-yarn-classic='corepack prepare yarn@1 --activate'
alias corepack-activate-yarn-stable='corepack prepare yarn@stable --activate'
alias cwebp-lossy='parallel "cwebp -m 6 -mt -af -metadata all {} -o {.}.webp" :::'
alias disk-usage='sudo du --human-readable --one-file-system .|sort --human-numeric-sort --reverse|bat'
alias docker-image-prune-month='docker image prune --all --filter until=744h'
alias fullpath='find -L `pwd` -maxdepth 1'
alias gcc-march-native='gcc -march=native -E -v - </dev/null 2>&1|grep cc1'
alias git-daily='git log --all --format="%h %ai %s" --since=$(date +"%Y-%m-%d-00:00:00") --author=$(git config user.email)|to-clipboard'
alias git-locate-pull='locate --regex "$(pwd)/.*/\.git$" --null|parallel --null --keep-order "test -d {} -a -d {}/.. && cd {}/.. && echo {}: && git -c color.diff=always pull --progress --all --keep"'
alias git-submodule-pull='git submodule foreach "git checkout master && git pull"'
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias iconv-cp932='iconv --from-code CP932 --to-code UTF-8'
alias metaflac-add-replay-gain-all='find . -type d -print0|parallel --null --keep-order "metaflac --add-replay-gain {}/*.flac"'
alias mkbackup='sudo mksquashfs etc home root var /$(date --iso-8601)_$(hostname).sfs -comp zstd -noappend -wildcards -e "... *.sfs" "... .cache" "... .stack-work" "... Cache" "... _cache" "... cache" "... dist" "... node_modules" "... target"'
alias mozc-config='/usr/libexec/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/libexec/mozc/mozc_tool --mode=dictionary_tool'
alias nix-flake-update-commit='nix flake update --commit-lock-file --option commit-lockfile-summary "build(deps): bump \`flake.lock\`"'
alias opusenc-speech='parallel "opusenc --speech --framesize 60 {} {.}.opus" :::'
alias oxipng-best='parallel "oxipng --opt max --strip safe --interlace 0 --zopfli" :::'
alias sqlite3-vacuum='locate --null "$(pwd)"|parallel --null "file"|rg "SQLite 3.x"|cut -d: -f1|parallel --verbose "sqlite3 {} \"vacuum;reindex;\""'
alias trash-clear='trash empty --before 1month'
alias treep='tree|bat'

to-clipboard() {
  # パイプで受け取った内容をクリップボードに書き込む関数
  # 環境に応じてxsel, wl-copy, OSC 52を使い分けます
  local content
  content=$(</dev/stdin)
  if [[ -n $DISPLAY ]] && hash xsel 2>/dev/null; then
    echo -n "$content" | xsel --clipboard --input --logfile /dev/null
  elif [[ -n $WAYLAND_DISPLAY ]] && hash wl-copy 2>/dev/null; then
    echo -n "$content" | wl-copy
  else
    local encoded=$(echo -n "$content" | base64 | tr -d '\n')
    printf '\e]52;c;%s\a' "$encoded"
  fi
}
