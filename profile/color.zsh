# color設定とatopのバグ防止
export TERM=gnome-256color
# dircolorで設定
eval $(dircolors $ZDOTDIR/lib/dircolors-solarized/dircolors.256dark)
# 補完も同じ色に
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
