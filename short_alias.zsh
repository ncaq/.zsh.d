#some more ls aliases
alias -g ls='ls --color=auto   -hFAv'
alias -g ll='ls --color=auto   -hFAvi -li'
alias -g  l='ls --color=auto   -hFAvi -li -a'
alias    le='ls --color=always -hFAvi -li -a|less -N'

alias a='sudo dispatch-conf'
alias d='dub  --build=unittest'
alias ga='git add --all .'
alias m='sudo emerge -t'
alias o='locate -i'
alias u='sudo updatedb'
alias udn='sudo emerge -uDNt --with-bdeps=y world'
alias z='exec zsh -l'

alias -g e='emacsclient -n'
alias -g n='xdg-open'
alias -g p='less -N'
alias -g t='trash'
