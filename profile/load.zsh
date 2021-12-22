setopt auto_cd                  # cdの省略
setopt autopushd                # ディレクトリを自動で記録
setopt extended_glob            # 拡張glob

# 履歴を遡る時既に入力してた文字列で部分マッチする
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# ユーザディレクトリにある関数を全てautoloadする
for i in ~/.zsh.d/autoload/*
do
  autoload -Uz $i
done

# キーバインドとして使えるようにする
zle -N percol-history
zle -N percol-subfind

# autojumpがインストールされていたらロード
if [ -f '/etc/profile.d/autojump.sh' ]; then
  source /etc/profile.d/autojump.sh
elif [ -f '/usr/share/autojump/autojump.sh' ]; then
  source /usr/share/autojump/autojump.sh
fi

# direnvがインストールされていたらロード
if hash direnv 2>/dev/null; then
  eval "$(direnv hook zsh)"
fi
