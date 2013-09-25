#hasktagsが全部回ってくれる
alias    hasktagsr='find . -type f -name \*.\*hs -print0 | xargs -0 hasktags -c'
#abcedのいつもの
alias    ripcd='abcde -M -a cddb,read,encode,tag,move,replaygain,clean'
#mozcの設定は妙なパスにある
alias    mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias    mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias    grub-update='sudo grub2-mkconfig -o /boot/grub/grub.cfg'
#get full path
alias fullpath='find `pwd` -maxdepth 1 -mindepth 1'
#mouse mode 0=disable 1=enable
alias mtoggle='xinput set-int-prop "ImPS/2 Generic Wheel Mouse" "Device Enabled" 8'
