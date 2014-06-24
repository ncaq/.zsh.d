export PATH=$PATH:/sbin:/usr/sbin:/home/ncaq/Documents/tool:/home/ncaq/Desktop/mikutter:/home/ncaq/Desktop/processing

export ZDOTDIR=~/.zsh.d

fpath=($ZDOTDIR/autoload/ $fpath)

for i in $ZDOTDIR/profile/*
do
    source $i
done
