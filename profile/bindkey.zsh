stty stop undef

bindkey -s '\el' '^ull\n'

bindkey '^[[Z' reverse-menu-complete # Shift-Tabで補完候補を逆順する('\e[Z'でも動作する)
bindkey '^[b' backward-kill-word
bindkey '^[h' backward-word
bindkey '^[s' forward-word
bindkey '^[t' history-search-backward
bindkey '^b' backward-delete-char
bindkey '^f' percol-subfind
bindkey '^h' backward-char
bindkey '^n' history-beginning-search-forward-end
bindkey '^r' percol-history
bindkey '^s' forward-char
bindkey '^t' history-beginning-search-backward-end
