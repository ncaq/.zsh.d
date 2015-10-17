function copy-cutbuffer-to-clipboard ()
{
    echo -n $CUTBUFFER|xsel --clipboard --input --logfile /tmp/$USER.xsel.log
}

function copy-clipboard-to-cutbuffer ()
{
    CUTBUFFER=$(echo ""|xsel --clipboard --output --logfile /tmp/$USER.xsel.log)
}

function kill-region-clipboard ()
{
    zle kill-region
    copy-cutbuffer-to-clipboard
}

zle -N kill-region-clipboard
bindkey "^W" kill-region-clipboard

function copy-region-as-kill-clipboard ()
{
    zle copy-region-as-kill
    copy-cutbuffer-to-clipboard
}

zle -N copy-region-as-kill-clipboard
bindkey "^[W" copy-region-as-kill-clipboard
bindkey "^[w" copy-region-as-kill-clipboard

function yank-clipboard ()
{
    copy-clipboard-to-cutbuffer
    zle yank
}

zle -N yank-clipboard
bindkey "^Y" yank-clipboard
