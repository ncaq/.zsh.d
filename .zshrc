export PATH=$PATH:/sbin:/usr/sbin:/home/ncaq/Documents/tool:/home/ncaq/Dropbox/portable:/home/ncaq/Dropbox/portable/mikutter:/home/ncaq/Dropbox/portable/processing

export ZDOTDIR=~/.zsh.d

fpath=($ZDOTDIR/autoload/ $fpath)

for i in $ZDOTDIR/profile/*
do
    source $i
done
