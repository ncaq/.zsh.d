zshrc_path=`readlink ~/.zshrc`
zsh_dir=`dirname $zshrc_path`

for i in $zsh_dir/profile.d/*
do
    source $i
done
