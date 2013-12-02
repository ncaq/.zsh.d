function percol-locate-cd()
{
    cd `locate --null ""|xargs --null dirname|uniq|percol --query="$*"`
}

alias oc='percol-locate-cd'

#https://gist.github.com/mitukiii/4234173
function percol-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        percol)
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N percol-select-history
bindkey '^r' percol-select-history
