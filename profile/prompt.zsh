[[ $TERM == 'dumb' ]] && unsetopt zle && PS1='$ ' && return

PROMPT=$'%{\e[48;5;230m\e[38;5;241m%B%}%D{%Y-%m-%dT%T} %n@%m/%y%{%(?,\e[38;5;240m,\e[38;5;160m)%}(%?)%{\e[38;5;241m\e[48;5;254m%} %~\n%# %{%b\e[m%}'

autoload -U colors && colors

#ls when cd
chpwd() {
    ls
}
