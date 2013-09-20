function copy-line-as-kill() {
    zle kill-line
    print -rn $CUTBUFFER|xsel -ib
}
zle -N copy-line-as-kill
bindkey '^k' copy-line-as-kill

function copy-whole-line-as-kill() {
    zle kill-whole-line
    print -rn $CUTBUFFER|xsel -ib
}
zle -N copy-whole-line-as-kill
bindkey '^u' copy-whole-line-as-kill

function copy-region-as-clip-kill() {
    zle copy-region-as-kill
    print -rn $CUTBUFFER|xsel -ib
}
zle -N copy-region-as-clip-kill
bindkey '^[w' copy-region-as-clip-kill

