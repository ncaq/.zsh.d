zshrc_path=`readlink -f ~/.zshrc`
zsh_dir=`dirname $zshrc_path`

for i in $zsh_dir/profile.d/*
do
    source $i
done
