update ()
{
    sudo emerge --sync
    sudo layman -S
    sudo eix-update
    sudo gem update
    sudo cabal update

    source /home/ncaq/.oh-my-zsh/custom/gitallpull.zsh
    gitallpull

    sudo updatedb
}
