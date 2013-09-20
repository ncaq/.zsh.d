#hasktagsが全部回ってくれるそうで
alias    hasktagsr='find . -type f -name \*.\*hs -print0 | xargs -0 hasktags -c'
#abcedのいつもの
alias    ripcd='abcde -M -a cddb,read,encode,tag,move,replaygain,clean'
#mozcの設定は妙なパスにある
alias    mozc-config='/usr/lib/mozc/mozc_tool -mode=config_dialog'
alias    mozc-dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias    grub-update='sudo grub2-mkconfig -o /boot/grub/grub.cfg'
