zshrc_path=`readlink -f ~/.zshrc`
zsh_dir=`dirname $zshrc_path`
zsh_sub=$zsh_dir/sub

for i in $zsh_dir/profile.d/*
do
    source $i
done
