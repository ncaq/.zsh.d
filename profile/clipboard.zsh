copy-cutbuffer-to-clipboard() {
    echo -n $CUTBUFFER|xsel --clipboard --input --logfile /dev/null
}

copy-clipboard-to-cutbuffer() {
    CUTBUFFER=$(echo ''|xsel --clipboard --output --logfile /dev/null)
}

kill-region-clipboard() {
    zle kill-region
    copy-cutbuffer-to-clipboard
}

zle -N kill-region-clipboard
bindkey '^W' kill-region-clipboard

copy-region-as-kill-clipboard() {
    zle copy-region-as-kill
    copy-cutbuffer-to-clipboard
}

zle -N copy-region-as-kill-clipboard
bindkey '^[W' copy-region-as-kill-clipboard
bindkey '^[w' copy-region-as-kill-clipboard

yank-clipboard() {
    copy-clipboard-to-cutbuffer
    zle yank
}

zle -N yank-clipboard
bindkey '^Y' yank-clipboard
