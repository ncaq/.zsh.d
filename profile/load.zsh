setopt autopushd

source /etc/profile.d/autojump.zsh

autoload history-search-end
autoload percol-cd
autoload percol-history

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
zle -N percol-history
zle -N percol-cd
