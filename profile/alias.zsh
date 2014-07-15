alias ls='\ls --color=auto   -AFhv'
alias  l='\ls --color=auto   -aFhv -l'
alias le='\ls --color=always -aFhv -l|less -N'

alias -g ag='ag -i'
alias -g e='emacsclient --no-wait'
alias -g make='make -j6'
alias -g nkfu='nkf -w -x -Lu -d'
alias -g p='less'
alias -g t='mv --backup=numbered --target-directory=${HOME}/trash'
alias a='sudo dispatch-conf'
alias c++g='clang++ -std=c++1y -stdlib=libc++ -Wall -Werror -O0 -g'
alias ccg='clang -std=c99 -Wall -Werror -O0 -g'
alias eix-diff='eix-diff -F'
alias eix='eix -F'
alias f='locate -i'
alias ff='locate-current-dir'
alias ffn='locate-current-dir-null'
alias fr='locate --regex'
alias fullpath='find -L `pwd` -maxdepth 1'
alias ga='git add --all .'
alias gc='git commit -v'
alias getags='gtags --gtagslabel=ctags'
alias gp='git push'
alias gr='git reset --hard HEAD'
alias grub-install='sudo mount /boot/efi && mkdirhier ~/backup/efi/ && tar cvfa ~/backup/efi/`date -I`.tar.xz /boot/efi && sudo grub2-install --target=x86_64-efi'
alias grub-update='sudo grub2-mkconfig -o /boot/grub/grub.cfg'
alias gs='git status'
alias gu='git pull'
alias hsr='ghc -fllvm -O2 -threaded -Wall -Werror -outputdir /tmp'
alias m='sudo emerge -tv'
alias mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias n='xdg-open'
alias pa='ps aux|ag'
alias sdb='sudo journalctl --boot'
alias sdc='sudo systemctl daemon-reload'
alias sdd='sudo systemctl disable'
alias sde='sudo systemctl enable'
alias sdf='sudo systemctl --failed --all'
alias sdi='sudo systemctl start'
alias sdk='sudo systemctl stop'
alias sdl='sudo systemctl list-unit-files'
alias sdr='sudo systemctl reload-or-restart'
alias sds='sudo systemctl status'
alias speexhigh='parallel -j +0 speexenc -V --quality 10 --comp 10 --vbr {} {.}.spx ::: *.wav'
alias tree="tree -C"
alias u='updatedb'
alias udn='sudo zsh -c "emerge -uDNtv --with-bdeps y --keep-going y world || (haskell-updater && emerge -uDNtv --with-bdeps y --keep-going y world)"'
alias voicememo='arecord -f S16_LE -r 32000'
alias vscan='clamdscan * -r'
alias x='aunpack'
alias z='exec zsh -l'