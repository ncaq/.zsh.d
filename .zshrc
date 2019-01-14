if [[ -z "$ZDOTDIR" ]]; then
    source ~/.profile
fi

fpath=($ZDOTDIR/autoload/ $fpath)

for i in $ZDOTDIR/profile/*
do
    source $i
done
