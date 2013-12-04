ZSH_THEME="blinks"

#dircolorで設定
eval $(dircolors ~/Dropbox/portable/dircolors-solarized/dircolors.256dark)
#補完も同じ色に
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

alias -g ls="ls --color=auto"
alias -g grep="grep --color=always"
alias -g tree="tree -C"
alias -g eix='eix -F'
