setopt auto_cd                  # cdの省略
setopt autopushd                # ディレクトリを自動で記録
setopt extended_glob            # 拡張glob

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

autoload -U percol-history
zle -N percol-history

autoload -U percol-subfind
zle -N percol-subfind

autoload -U pip-install-world
autoload -U stack-install-world
autoload -U yarn-install-world

source $ZDOTDIR/lib/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f '/etc/profile.d/autojump.sh' ] && source /etc/profile.d/autojump.sh
