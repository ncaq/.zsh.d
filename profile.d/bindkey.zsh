bindkey -s '\el' "l\n"

bindkey '^r' percol-select-history

#ansi-term対策
if [ -z $EMACS ]
then
    bindkey "^[b" backward-kill-word
    bindkey "^[h" backward-word
    bindkey "^[s" forward-word
    bindkey "^[t" history-search-backward
    bindkey "^b" backward-delete-char
    bindkey "^h" backward-char
    bindkey "^n" history-beginning-search-forward-end
    bindkey "^s" forward-char
    bindkey "^t" history-beginning-search-backward-end
else
    bindkey "^[h" backward-word
fi
