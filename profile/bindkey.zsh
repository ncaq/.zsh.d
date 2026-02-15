stty stop undef

bindkey -e

# terminfoからHome/Endキーのエスケープシーケンスを読み込んでバインド
zmodload zsh/terminfo
[[ -n "$terminfo[khome]" ]] && bindkey "$terminfo[khome]" beginning-of-line
[[ -n "$terminfo[kend]"  ]] && bindkey "$terminfo[kend]"  end-of-line

bindkey -s '\el' '^ull\n'       # M-l to ll
bindkey -s '^,' ''              # C-, to Nothing

bindkey '^[[Z' reverse-menu-complete # Shift-Tabで補完候補を逆順する('\e[Z'でも動作する)
bindkey '^[b' backward-kill-word
bindkey '^[h' backward-word
bindkey '^[s' forward-word
bindkey '^[t' history-search-backward
bindkey '^b' backward-delete-char
bindkey '^h' backward-char
bindkey '^n' history-beginning-search-forward-end
bindkey '^s' forward-char
bindkey '^t' history-beginning-search-backward-end
