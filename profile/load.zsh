setopt autopushd

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

autoload percol-cd
autoload percol-history
zle -N percol-history
zle -N percol-cd

if [ -f "/etc/profile.d/autojump.zsh" ];then
source /etc/profile.d/autojump.zsh
fi
