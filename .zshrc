### Added by Zinit's installer
if [[ ! -f $HOME/.zsh.d/.zinit/bin/zinit.zsh ]]; then
  print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
  command mkdir -p "$HOME/.zsh.d/.zinit" && command chmod g-rwX "$HOME/.zsh.d/.zinit"
  command git clone https://github.com/zdharma/zinit "$HOME/.zsh.d/.zinit/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
      print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zsh.d/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
      zinit-zsh/z-a-patch-dl \
      zinit-zsh/z-a-as-monitor \
      zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light gentoo/gentoo-zsh-completions
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-completions

zinit ice atload'eval `dircolors $PWD/dircolors.256dark`'
zinit light seebi/dircolors-solarized

typeset -U path PATH
source ~/.profile

typeset -U fpath FPATH
fpath=($ZDOTDIR/autoload/ $fpath)

for i in $ZDOTDIR/profile/*
do
  source $i
done
