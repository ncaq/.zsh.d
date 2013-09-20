bindkey -s '\el' "l\n"

bindkey "^s" forward-char
bindkey "^h" backward-char
bindkey "^b" backward-delete-char
bindkey "^t" history-beginning-search-backward-end
bindkey "^[h" backward-word
bindkey "^[s" forward-word
bindkey "^[b" backward-kill-word
bindkey "^[t" history-search-backward
