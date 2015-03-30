autoload -U colors && colors
PROMPT=$'\e[48;5;230m\e[38;5;241m%B%D{%Y-%m-%dT%T} %n@%m/%y%(?,\e[38;5;240m,\e[38;5;160m)(%?)\e[38;5;241m\e[48;5;254m %~%# %b\e[m%'

#ls when cd
function chpwd() {ls}
