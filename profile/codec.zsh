alias cwebp-lossy='parallel "cwebp -m 6 -mt -af -metadata all {} -o {.}.webp" :::'
alias metaflac-add-replay-gain-all='find . -type d -print0|parallel --null --keep-order "metaflac --add-replay-gain {}/*.flac"'
alias opusenc-speech='parallel "opusenc --speech --framesize 60 {} {.}.opus" :::'
alias oxipng-best='parallel "oxipng --opt max --strip safe --interlace 0 --zopfli" :::'
