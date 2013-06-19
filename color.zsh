ZSH_THEME="blinks"

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=always"
    alias dir="dir --color=always"
    alias vdir="vdir --color=always"
    alias grep="grep --color=always"
    alias fgrep="fgrep --color=always"
    alias egrep="egrep --color=always"
fi

#treeのカラーを常に有効に
alias tree="tree -C"
