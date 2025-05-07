typeset -U path PATH
source ~/.profile
export PATH="$HOME/.zsh.d/bin:$PATH"

if ! [ -t 0 ]; then
  # 端末でない場合、パスを通しただけで終了する。
  return
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
  command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
  command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
    print -P "%F{33} %F{34}Installation successful.%f%b" || \
      print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
      zdharma-continuum/zinit-annex-bin-gem-node \
      zdharma-continuum/zinit-annex-patch-dl \
      zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions

zinit ice atload'eval `dircolors $PWD/dircolors.256dark`'
zinit light seebi/dircolors-solarized

zinit ice atload'fpath+=$PWD/src'
zinit light gentoo/gentoo-zsh-completions

typeset -U fpath FPATH
fpath=(~/.zsh.d/autoload/ $fpath)

for i in ~/.zsh.d/profile/*
do
  source $i
done
