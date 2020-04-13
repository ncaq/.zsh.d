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

autoload -U cargo-install-world
autoload -U go-install-world
autoload -U pip-install-world
autoload -U rustup-install-world
autoload -U stack-install-world
autoload -U yarn-install-world

[ -f '/etc/profile.d/autojump.sh' ] && source /etc/profile.d/autojump.sh
[ -f ~/.sdkman/bin/sdkman-init.sh ] && source ~/.sdkman/bin/sdkman-init.sh
