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

# starshipが使えない場合自前のプロンプトを設定する (modus-vivendi)
autoload -Uz colors && colors
PROMPT=$'%{\e[48;2;30;30;30m\e[38;2;255;255;255m%B%}%D{%Y-%m-%dT%T} %n@%m/%y%{%(?,\e[38;2;152;152;152m,\e[38;2;255;95;89m)%}(%?)%{\e[38;2;198;218;255m\e[48;2;0;0;0m%} %~\n%# %{%b\e[m%}'
