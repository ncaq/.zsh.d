function copy-region-as-kill-clipboard ()
{
    zle copy-region-as-kill
    echo $CUTBUFFER|xsel --input --logfile /tmp/$USER.xsel.log
}

zle -N copy-region-as-kill-clipboard
bindkey "^[w" copy-region-as-kill-clipboard

function yank-clipboard ()
{
    CUTBUFFER=$(echo ""|xsel --output --logfile /tmp/$USER.xsel.log)
    zle yank
}

zle -N yank-clipboard
bindkey "^Y" yank-clipboard
