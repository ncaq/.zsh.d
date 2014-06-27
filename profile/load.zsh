setopt autopushd

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

autoload percol-history
zle -N percol-history

autoload percol-subfind
zle -N percol-subfind

autoload pr

source ~/.zsh.d/sub/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ -f "/etc/profile.d/autojump.zsh" ];then
    source /etc/profile.d/autojump.zsh
fi
