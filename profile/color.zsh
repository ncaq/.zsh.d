#dircolorで設定
eval $(dircolors $ZDOTDIR/sub/dircolors-solarized/dircolors.256dark)
#補完も同じ色に
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
