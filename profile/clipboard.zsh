copy-cutbuffer-to-clipboard() {
  if hash xsel 2>/dev/null; then
    echo -n $CUTBUFFER|xsel --clipboard --input --logfile /dev/null
  fi
}

copy-clipboard-to-cutbuffer() {
  if hash xsel 2>/dev/null; then
    CUTBUFFER=$(echo ''|xsel --clipboard --output --logfile /dev/null)
  fi
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
