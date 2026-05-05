alias cwebp-lossy='parallel "cwebp -m 6 -mt -af -metadata all {} -o {.}.webp" :::'
alias opusenc-speech='parallel "opusenc --speech --framesize 60 {} {.}.opus" :::'
alias oxipng-best='parallel "oxipng --opt max --strip safe --interlace 0 --zopfli" :::'
