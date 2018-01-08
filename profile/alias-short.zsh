alias a='aunpack'
alias c='cd $(readlink -f ~/Documents/current/)'
alias d='sudo dispatch-conf'
alias e='emacsclient --no-wait -a emacs'
alias m='sudo emerge'
alias n='sudo netstat -aepW'
alias o='xdg-open'
alias p='less'
alias t='trash'
alias u='sudo updatedb'
alias x='gtk-launch'
alias z='exec zsh'

alias agp='ag --pager less'

alias eqa='equery --no-pipe a'
alias eqb='equery --no-pipe b'
alias eqc='equery --no-pipe c'
alias eqd='equery --no-pipe d'
alias eqf='equery --no-pipe f --tree'
alias eqg='equery --no-pipe g'
alias eqh='equery --no-pipe h'
alias eqk='equery --no-pipe k'
alias eql='equery --no-pipe l'
alias eqm='equery --no-pipe m'
alias eqs='equery --no-pipe s'
alias equ='equery --no-pipe u -i'
alias eqw='equery --no-pipe w'
alias eqy='equery --no-pipe y'

alias f='locate --ignore-case'
alias ff='locate-current-dir'

alias ga='git add --all .'
alias gc='git commit -v'
alias ge='git clean -dxi'
alias gh='git reset --hard HEAD'
alias gl='git log'
alias gp='git push'
alias gr='git reset --hard'
alias gs='git status'
alias gu='git pull'

alias jb='sudo journalctl -b'
alias je='sudo journalctl -e'

alias off='systemctl poweroff'
alias reb='systemctl reboot'

alias sdd='sudo systemctl disable'
alias sde='sudo systemctl enable'
alias sdf='sudo systemctl --failed --all'
alias sdi='sudo systemctl start'
alias sdk='sudo systemctl stop'
alias sdl='sudo systemctl daemon-reload'
alias sdr='sudo systemctl restart'
alias sds='sudo systemctl status'
alias sdt='sudo systemctl list-timers'
alias sdu='sudo systemctl list-unit-files'
