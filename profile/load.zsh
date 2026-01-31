setopt auto_cd                  # cdの省略
setopt autopushd                # ディレクトリを自動で記録
setopt extended_glob            # 拡張glob

# ユーザディレクトリにある関数を全てautoloadする
for i in ~/.zsh.d/autoload/*
do
  autoload -Uz $i
done

# キーバインドとして使えるようにする
zle -N percol-history
zle -N percol-subfind
