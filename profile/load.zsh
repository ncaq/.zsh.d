setopt autopushd

if [ -f "$ZDOTDIR/sub/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ];then
    source $ZDOTDIR/sub/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f '/etc/profile.d/autojump.zsh' ];then
    source /etc/profile.d/autojump.zsh
fi

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

autoload -U percol-history
zle -N percol-history

autoload -U percol-subfind
zle -N percol-subfind

autoload -U locate-current-dir
autoload -U locate-current-dir-null
autoload -U pr
