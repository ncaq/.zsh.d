# クリップボードへの書き込み。
# `$DISPLAY`があればxsel、`$WAYLAND_DISPLAY`があれば`wl-copy`、
# どちらもなければOSC 52エスケープシーケンスで、
# クリップボードに書き込みます。
to-clipboard() {
  local stdin=$(</dev/stdin)         # 標準入力があればそれを優先して使います。
  local content=${stdin:-$CUTBUFFER} # なければzshのkill-ringを使います。
  if [[ -n $DISPLAY ]] && hash xsel 2>/dev/null; then
    echo -n "$content" | xsel --clipboard --input --logfile /dev/null
  elif [[ -n $WAYLAND_DISPLAY ]] && hash wl-copy 2>/dev/null; then
    echo -n "$content" | wl-copy
  else
    local encoded=$(echo -n "$content" | base64 | tr -d '\n')
    printf '\e]52;c;%s\a' "$encoded"
  fi
}

# クリップボードからの読み取り。
# OSC 52での読み取りはセキュリティ上多くのターミナルでブロックされるため、
# `xsel`/`wl-paste`が使えない環境では何もしません。
from-clipboard() {
  if [[ -n $DISPLAY ]] && hash xsel 2>/dev/null; then
    CUTBUFFER=$(xsel --clipboard --output --logfile /dev/null)
  elif [[ -n $WAYLAND_DISPLAY ]] && hash wl-paste 2>/dev/null; then
    CUTBUFFER=$(wl-paste --no-newline 2>/dev/null)
  fi
}

kill-region-clipboard() {
  zle kill-region
  to-clipboard
}

zle -N kill-region-clipboard
bindkey '^W' kill-region-clipboard

copy-region-as-kill-clipboard() {
  zle copy-region-as-kill
  to-clipboard
}

zle -N copy-region-as-kill-clipboard
bindkey '^[W' copy-region-as-kill-clipboard
bindkey '^[w' copy-region-as-kill-clipboard

yank-clipboard() {
  from-clipboard
  zle yank
}

zle -N yank-clipboard
bindkey '^Y' yank-clipboard
