### Added by Zinit's installer
if [[ ! -f $HOME/.zsh.d/.zinit/bin/zinit.zsh ]]; then
  print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
  command mkdir -p "$HOME/.zsh.d/.zinit" && command chmod g-rwX "$HOME/.zsh.d/.zinit"
  command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zsh.d/.zinit/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
      print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zsh.d/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
      zdharma-continuum/z-a-patch-dl \
      zdharma-continuum/z-a-as-monitor \
      zdharma-continuum/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions

zinit ice atload'eval `dircolors $PWD/dircolors.256dark`'
zinit light seebi/dircolors-solarized

zinit ice atload'fpath+=$PWD/src'
zinit light gentoo/gentoo-zsh-completions

typeset -U path PATH
source ~/.profile

typeset -U fpath FPATH
fpath=(~/.zsh.d/autoload/ $fpath)

for i in ~/.zsh.d/profile/*
do
  source $i
done
