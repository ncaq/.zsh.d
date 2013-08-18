ZSH_THEME="blinks"

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias -g ls="ls --color=always"
    alias -g dir="dir --color=always"
    alias -g vdir="vdir --color=always"
    alias -g grep="grep --color=always"
    alias -g fgrep="fgrep --color=always"
    alias -g egrep="egrep --color=always"
fi

#treeのカラーを常に有効に
alias tree="tree -C"
