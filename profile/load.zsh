setopt auto_cd                  # cdの省略
setopt autopushd                # ディレクトリを自動で記録
setopt correct                  # 入力ミス自動修正
setopt extended_glob            # 拡張glob

autoload -U locate-current-dir
autoload -U locate-current-dir-null

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

autoload -U percol-history
zle -N percol-history

autoload -U percol-subfind
zle -N percol-subfind

if [ -f "$ZDOTDIR/lib/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ];then
    source $ZDOTDIR/lib/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f '/etc/profile.d/autojump.zsh' ];then
    source /etc/profile.d/autojump.zsh
fi
