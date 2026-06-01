() {
  local base='--jobs all --speed 0'
  local lossy="$base --advanced aq-mode=1 --advanced enable-chroma-deltaq=1 --advanced enable-qm=1 --advanced qm-min=0 --advanced qm-max=15 --advanced deltaq-mode=3 --advanced end-usage=q"

  alias avifenc-lossless="parallel avifenc $base --lossless {} {.}.avif :::"
  alias avifenc-lossy-good="parallel avifenc $lossy --advanced cq-level=18 {} {.}.avif :::"
  alias avifenc-lossy-lite="parallel avifenc $lossy --advanced cq-level=32 {} {.}.avif :::"
}

alias cwebp-lossy='parallel cwebp -m 6 -mt -af -metadata all {} -o {.}.webp :::'
alias opusenc-speech='parallel opusenc --speech --framesize 60 {} {.}.opus :::'
alias oxipng-best='parallel oxipng --opt max --strip safe --interlace 0 --zopfli :::'
