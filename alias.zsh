#some more ls aliases
alias ls='ls --color=auto   -AFhv'
alias  l='ls --color=auto   -AFhv -l'
alias le='ls --color=always -AFhv -l|less -N'

#mozcの設定は妙なパスにある
alias mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
#grub手動で書き込むの面倒
alias grub-update='sudo grub2-mkconfig -o /boot/grub/grub.cfg'
alias grub-install='sudo mount /boot/efi && sudo grub2-install --target=x86_64-efi'
#get full path
alias fullpath='find `pwd` -maxdepth 1'
#mouse mode 0=disable 1=enable
alias mtoggle='xinput set-int-prop "ImPS/2 Generic Wheel Mouse" "Device Enabled" 8'
#virus scan
alias vscan='clamdscan * -r'
