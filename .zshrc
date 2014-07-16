export PATH=$PATH:/sbin:/usr/sbin:~/Documents/tool:~/Desktop/processing

export ZDOTDIR=~/.zsh.d

fpath=($ZDOTDIR/autoload/ $fpath)

for i in $ZDOTDIR/profile/*
do
    source $i
done
