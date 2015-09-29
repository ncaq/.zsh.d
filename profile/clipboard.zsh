function copy-region-as-kill-clipboard ()
{
    zle copy-region-as-kill
    echo -n $CUTBUFFER|xsel --clipboard --input --logfile /tmp/$USER.xsel.log
}

zle -N copy-region-as-kill-clipboard
bindkey "^[W" copy-region-as-kill-clipboard
bindkey "^[w" copy-region-as-kill-clipboard

function yank-clipboard ()
{
    CUTBUFFER=$(echo ""|xsel --clipboard --output --logfile /tmp/$USER.xsel.log)
    zle yank
}

zle -N yank-clipboard
bindkey "^Y" yank-clipboard
