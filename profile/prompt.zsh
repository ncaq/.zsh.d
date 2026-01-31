# trampの問題回避のためにターミナル環境が簡素な場合設定を消去して終了する
[[ $TERM == 'dumb' ]] && unsetopt zle && PS1='$ ' && return

# cdした時にlsを自動実行するようにする
chpwd() {
  ls
}

# starshipが使える場合はstarshipに任せる
if hash starship 2>/dev/null; then
  return
fi

# starshipが使えない場合自前のプロンプトを設定する
autoload -Uz colors && colors
PROMPT=$'%{\e[48;5;230m\e[38;5;241m%B%}%D{%Y-%m-%dT%T} %n@%m/%y%{%(?,\e[38;5;240m,\e[38;5;160m)%}(%?)%{\e[38;5;241m\e[48;5;254m%} %~\n%# %{%b\e[m%}'
