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

function percol-search-locate() {
    if [ $# -ge 1 ]; then
        SELECTED_FILE=$(locate $* | percol)
        if [ $? -eq 0 ]; then
            echo $SELECTED_FILE | sed 's/ /\\ /g'
        fi
    else
        bultin locate
    fi
}
alias op='percol-search-locate'
