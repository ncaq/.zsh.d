alias apta='sudo apt autoremove'
alias apti='sudo apt install'
alias aptn='apts --names-only'
alias aptp='sudo apt purge'
alias apts='sudo apt search'
alias aptu='sudo apt update && sudo apt upgrade'
alias au='aunpack'
alias b='sudo btrfs'
alias bf='sudo btrfs filesystem'
alias bl='sudo btrfs subvolume list --sort=path'
alias bs='sudo btrfs subvolume'
alias cdu='cd $(readlink -f ~/Documents/current/)'
alias dcu='docker compose up; docker compose down'
alias di='sudo dispatch-conf'
alias e='emacsclient --no-wait -a emacs'
alias eqa='equery --no-pipe has'
alias eqb='equery --no-pipe belongs'
alias eqd='equery --no-pipe depends'
alias eqf='equery --no-pipe files --tree'
alias eqg='equery --no-pipe depgraph'
alias eqh='equery --no-pipe hasuse'
alias eqk='equery --no-pipe check'
alias eql='equery --no-pipe list'
alias eqm='equery --no-pipe meta'
alias eqs='equery --no-pipe size'
alias equ='equery --no-pipe uses --ignore-l10n'
alias eqw='equery --no-pipe which'
alias eqy='equery --no-pipe keywords'
alias f='locate --ignore-case'
alias ff='locate-current-dir'
alias g='git'
alias ga='git add --all .'
alias gc='git clean -d --interactive -x'
alias gd='git-add-file'
alias ge='gh copilot explain'
alias gf='git pull --progress --all --keep'
alias gk='gh repo fork && gh-repo-set-default-upstream'
alias gl='git log'
alias gm='git commit --verbose --message'
alias gn='git commit --amend --no-edit'
alias go='git clone --verbose --recursive --jobs $(nproc)'
alias gp='git push --verbose'
alias gq='gp --set-upstream origin && gh pr create --assignee @me --web'
alias gr='git reset --hard'
alias grh='git reset --hard HEAD'
alias grp='git reset --hard "HEAD^"'
alias gs='git status'
alias gsu='git submodule update --init --recursive'
alias gt='git switch --create'
alias gu='gh copilot suggest'
alias gug='gh copilot suggest --target git'
alias guh='gh copilot suggest --target gh'
alias gus='gh copilot suggest --target shell'
alias gv='gh repo view --web'
alias gw='git switch'
alias jb='sudo journalctl -b'
alias je='sudo journalctl -e'
alias l='less'
alias le='ll --color=always|bat'
alias ll='ls --all -l'
alias ls='ls --color=auto --classify --human-readable --group-directories-first --sort=version --almost-all'
alias m='sudo -E emerge'
alias mmodule='m @module-rebuild'
alias mrebuild='m --backtrack=30 --with-bdeps=y @live-rebuild @module-rebuild @preserved-rebuild'
alias mudn='m -uDN @world'
alias mudnb='mudn --backtrack=30'
alias mudnbw='mudn --backtrack=30 --with-bdeps=y'
alias mudnw='mudn --with-bdeps=y'
alias n='sudo netstat -aepW|bat'
alias nkfu='nkf -w -x -Lu'
alias nkfw='nkf -w -x -Lu --overwrite'
alias o='dwim-open'
alias off='systemctl poweroff'
alias p='bat'
alias poetrya='poetry add'
alias poetryd='poetry add -G dev'
alias poetryp='poetry run python3'
alias poetrys='poetry sort'
alias prg='ps-rg'
alias reb='systemctl reboot'
alias rgp='batgrep'
alias rgs='rg --encoding shift_jis'
alias rsp='rsync --verbose --checksum --perms --group --owner -D --compress --human-readable --progress'
alias s='sudo -E eselect'
alias sd='sudo systemctl'
alias sdd='sudo systemctl disable'
alias sde='sudo systemctl enable'
alias sdf='sudo systemctl --failed --all'
alias sdi='sudo systemctl start'
alias sdl='sudo systemctl daemon-reload'
alias sdn='sudo systemctl list-unit-files'
alias sdp='sudo systemctl stop'
alias sdr='sudo systemctl restart'
alias sds='sudo systemctl status'
alias sdt='sudo systemctl list-timers'
alias sdu='systemctl --user'
alias sdud='systemctl --user disable'
alias sdue='systemctl --user enable'
alias sduf='systemctl --user --failed --all'
alias sdui='systemctl --user start'
alias sdul='systemctl --user daemon-reload'
alias sdun='systemctl --user list-unit-files'
alias sdup='systemctl --user stop'
alias sdur='systemctl --user restart'
alias sdus='systemctl --user status'
alias sdut='systemctl --user list-timers'
alias sus='systemctl suspend'
alias t='trash'
alias tc='trash-clear'
alias u='sudo updatedb'
alias v='direnv allow'
alias x='gtk-launch'
alias y='yarn'
alias ya='yarn add'
alias yb='yarn build'
alias yc='yarn clean'
alias yd='yarn add --dev'
alias ye='yarn check'
alias yf='yarn fix'
alias yg='yarn global'
alias yl='yarn lint'
alias yp='yarn package'
alias yr='yarn remove'
alias ys='yarn start'
alias yt='yarn test'
alias yu='yarn upgrade-interactive'
alias yul='yarn upgrade-interactive --latest'
alias yw='yarn watch'
alias yx='yarn dlx'
alias z='exec zsh'
