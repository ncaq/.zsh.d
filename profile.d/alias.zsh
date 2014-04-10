alias ls='\ls --color=auto   -AFhv'
alias  l='\ls --color=auto   -aFhv -l'
alias le='\ls --color=always -aFhv -l|less -N'

alias -g ag='ag -i'
alias -g e='emacsclient --no-wait'
alias -g eix='eix -F'
alias -g n='xdg-open'
alias -g nkf='nkf -w -x -Lu -d'
alias -g p='less'
alias -g trash='gvfs-trash'
alias -g tree="tree -C"
alias a='sudo dispatch-conf'
alias c11='clang -std=c11 -Wall -Werror -Ofast'
alias c11g='clang -std=c11 -Wall -Werror -O0 -g'
alias cpy='clang++ -std=c++1y -stdlib=libc++ -Wall -Werror -Ofast'
alias cpyd='clang++ -std=c++1y -stdlib=libc++ -Wall -Werror -O0 -g'
alias d='dub --build=unittest'
alias f='locate -i'
alias ff='locate-current-dir'
alias ffn='locate-current-dir-null'
alias fr='locate --regex'
alias fullpath='find `pwd` -maxdepth 1'
alias ga='git add --all .'
alias gc='git commit -v'
alias gp='git push'
alias grub-install='sudo mount /boot/efi && mkdirhier ~/backup/efi/ && tar cvfa ~/backup/efi/`date -I`.tar.xz /boot/efi && sudo grub2-install --target=x86_64-efi'
alias grub-update='sudo grub2-mkconfig -o /boot/grub/grub.cfg'
alias gst='git status'
alias m='sudo emerge -tv'
alias makej='make -j16'
alias mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias pa='ps aux|ag'
alias t='noglob gvfs-trash'
alias touchpad-toggle='xinput set-int-prop "ImPS/2 Generic Wheel Mouse" "Device Enabled" 8'
alias u='updatedb'
alias udn='sudo emerge -uDNt --with-bdeps=y world --keep-going'
alias vscan='clamdscan * -r'
alias x='aunpack'
alias z='exec zsh -l'