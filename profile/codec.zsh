# 画像

() {
  local base='--jobs all --speed 0'
  local lossy="$base --advanced aq-mode=1 --advanced enable-chroma-deltaq=1 --advanced enable-qm=1 --advanced qm-min=0 --advanced qm-max=15 --advanced deltaq-mode=3 --advanced end-usage=q"

  alias avifenc-lossless="parallel avifenc $base --lossless {} {.}.avif :::"
  alias avifenc-lossy-good="parallel avifenc $lossy --advanced cq-level=18 {} {.}.avif :::"
  alias avifenc-lossy-lite="parallel avifenc $lossy --advanced cq-level=32 {} {.}.avif :::"
}

() {
  local base='-mt -m 6'
  alias cwebp-lossless="parallel cwebp $base -lossless -z 9 {} -o {.}.webp :::"
  alias cwebp-lossy="parallel cwebp $base -af {} -o {.}.webp :::"
}

alias oxipng-best='parallel oxipng --opt max --strip safe --interlace 0 --zopfli :::'

# 音声

alias opusenc-speech='parallel opusenc --speech --framesize 60 {} {.}.opus :::'

# 動画

alias h264-twitter='parallel ffmpeg -hide_banner -nostdin -n -i {} -c:v libx264 -preset slow -profile:v high -level:v 4.2 -pix_fmt yuv420p -crf 18 -maxrate 12M -bufsize 24M -g 60 -keyint_min 60 -sc_threshold 0 -color_primaries bt709 -color_trc bt709 -colorspace bt709 -c:a aac -b:a 192k -ar 48000 -ac 2 -movflags +faststart {.}.twitter.mp4 :::'

av1enc-run() {
  emulate -L zsh
  local f=$1; shift
  [[ -n $f ]] || { print -u2 'usage: av1enc-{good,lite,nv} <file>'; return 2 }

  local out=${f:r}.av1.webm
  if [[ -e $out ]]; then
    print -u2 "skip (exists): $out"
    return 1
  fi

  ffmpeg \
    -hide_banner -nostdin -n -i "$f" \
    -map 0:v:0 -map '0:a?' -map_chapters 0 \
    "$@" \
    -c:a libopus -b:a 160k \
    "$out"
}

av1enc-svt() {
  local crf=$1 f=$2
  av1enc-run \
    "$f" \
    -c:v libsvtav1 -preset 2 -crf "$crf" -pix_fmt yuv420p10le \
    -svtav1-params 'tune=0:enable-variance-boost=1:keyint=5s'
}

av1enc-nvenc() {
  local cq=$1 f=$2
  av1enc-run \
    "$f" \
    -c:v av1_nvenc -preset p7 -tune hq \
    -multipass fullres -rc-lookahead 32 \
    -rc vbr -cq "$cq" -b:v 0 \
    -bf 3 -spatial-aq 1 -aq-strength 8 \
    -g 300 -pix_fmt p010le
}

(( $+functions[compdef] )) &&
  compdef %'files -g "(#i)*.(avi|flv|m2ts|m4v|mkv|mov|mp4|ts|webm|wmv)"' \
          av1enc-svt av1enc-nvenc

alias av1enc-good='av1enc-svt 20'
alias av1enc-lite='av1enc-svt 34'
alias av1enc-nv='av1enc-nvenc 26'
