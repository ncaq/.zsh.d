kill-region-clipboard() {
  zle kill-region
  to-clipboard
}

zle -N kill-region-clipboard
bindkey '^W' kill-region-clipboard

copy-region-as-kill-clipboard() {
  zle copy-region-as-kill
  to-clipboard
}

zle -N copy-region-as-kill-clipboard
bindkey '^[W' copy-region-as-kill-clipboard
bindkey '^[w' copy-region-as-kill-clipboard

yank-clipboard() {
  from-clipboard
  zle yank
}

zle -N yank-clipboard
bindkey '^Y' yank-clipboard
