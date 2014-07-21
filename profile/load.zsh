setopt autopushd

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

autoload percol-history
zle -N percol-history

autoload percol-subfind
zle -N percol-subfind

autoload pr

if [ -f "sub/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ];then
    source sub/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f "/etc/profile.d/autojump.zsh" ];then
    source /etc/profile.d/autojump.zsh
fi
