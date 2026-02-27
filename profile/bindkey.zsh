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

# tmuxの私の設定がC-t/C-nを矢印Up/Downに変換するため、矢印キーも同じウィジェットにバインド
# terminfoのkcuu1/kcud1(アプリケーションモード: \eOA/\eOB)とANSI形式(\e[A/\e[B)の両方に対応
[[ -n "$terminfo[kcuu1]" ]] && bindkey "$terminfo[kcuu1]" history-beginning-search-backward-end
[[ -n "$terminfo[kcud1]" ]] && bindkey "$terminfo[kcud1]" history-beginning-search-forward-end
bindkey '\e[A' history-beginning-search-backward-end
bindkey '\e[B' history-beginning-search-forward-end

# tmuxがM-h/M-t/M-n/M-s/M-bをAlt+矢印に変換するため、Alt+矢印もバインド
bindkey '\e[1;3D' backward-word           # M-Left   (^[hと同機能)
bindkey '\e[1;3A' history-search-backward # M-Up     (^[tと同機能)
bindkey '\e[1;3B' history-search-forward  # M-Down   (^[nと同機能)
bindkey '\e[1;3C' forward-word            # M-Right  (^[sと同機能)
bindkey '\e\x7f'  backward-kill-word      # M-BSpace (^[bと同機能)
