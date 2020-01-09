[[ $ZDOTDIR ]] || source .profile

fpath=($ZDOTDIR/autoload/ $fpath)

for i in $ZDOTDIR/profile/*
do
    source $i
done
