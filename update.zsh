update ()
{
    sudo emerge --sync
    sudo layman -S
    sudo eix-update
#sudo emerge -uDN world

    sudo gem update
    sudo cabal update

    sudo updatedb
    source /home/ncaq/.oh-my-zsh/custom/gitallpull.zsh
    gitallpull
    sudo updatedb
}
