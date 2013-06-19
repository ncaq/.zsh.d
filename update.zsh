update ()
{
    sudo updatedb
    sudo emerge --sync
    sudo layman -S
    sudo eix-update
    sudo emerge -uN world
    source /home/ncaq/.oh-my-zsh/custom/gitallpull.zsh
    gitallpull
}
