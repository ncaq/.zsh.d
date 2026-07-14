setopt auto_cd                  # cdの省略
setopt autopushd                # ディレクトリを自動で記録

# ユーザディレクトリにある関数を全てautoloadする
for i in "$ZDOTDIR"/.zsh.d/autoload/*
do
  autoload -Uz $i
done
