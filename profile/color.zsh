# Modus-vivendi カラーテーマ
# https://protesilaos.com/emacs/modus-themes
#
# Palette (hex → 256-color approximation):
#   red (#ff5f59) → 203
#   green (#44bc44) → 71
#   yellow (#d0bc00) → 178
#   blue (#2fafff) → 39
#   magenta (#feacd0) → 218
#   cyan (#00d3d0) → 44
#   magenta-cooler (#b6a0ff) → 141
#   blue-warmer (#79a8ff) → 111
#   cyan-cooler (#6ae4b9) → 79
#   yellow-cooler (#dfaf7a) → 180
#   fg-dim (#989898) → 246
#   green-warmer (#70b900) → 106
#   magenta-faint (#caa6df) → 182
#   green-faint (#88ca9f) → 114
#   bg-dim (#1e1e1e) → 234
#   bg-alt (#535353) → 240

# LS_COLORS (truecolor)
export LS_COLORS="\
di=01;38;2;47;175;255:\
ln=38;2;0;211;208:\
so=01;38;2;254;172;208:\
pi=38;2;208;188;0:\
ex=01;38;2;68;188;68:\
bd=01;38;2;208;188;0:\
cd=01;38;2;208;188;0:\
su=01;38;2;255;95;89:\
sg=01;38;2;208;188;0:\
tw=01;38;2;68;188;68:\
ow=01;38;2;0;211;208:\
st=04;38;2;47;175;255:\
or=01;04;38;2;255;95;89:\
mi=01;04;38;2;255;95;89:\
*.tar=38;2;255;95;89:\
*.gz=38;2;255;95;89:\
*.bz2=38;2;255;95;89:\
*.xz=38;2;255;95;89:\
*.zst=38;2;255;95;89:\
*.zip=38;2;255;95;89:\
*.7z=38;2;255;95;89:\
*.rar=38;2;255;95;89:\
*.deb=38;2;255;95;89:\
*.rpm=38;2;255;95;89:\
*.jar=38;2;255;95;89:\
*.tgz=38;2;255;95;89:\
*.jpg=38;2;254;172;208:\
*.jpeg=38;2;254;172;208:\
*.png=38;2;254;172;208:\
*.gif=38;2;254;172;208:\
*.bmp=38;2;254;172;208:\
*.svg=38;2;254;172;208:\
*.webp=38;2;254;172;208:\
*.ico=38;2;254;172;208:\
*.tiff=38;2;254;172;208:\
*.mp4=38;2;247;143;231:\
*.mkv=38;2;247;143;231:\
*.avi=38;2;247;143;231:\
*.mov=38;2;247;143;231:\
*.wmv=38;2;247;143;231:\
*.webm=38;2;247;143;231:\
*.flv=38;2;247;143;231:\
*.mp3=38;2;106;228;185:\
*.ogg=38;2;106;228;185:\
*.flac=38;2;106;228;185:\
*.wav=38;2;106;228;185:\
*.aac=38;2;106;228;185:\
*.m4a=38;2;106;228;185:\
*.opus=38;2;106;228;185:\
*.pdf=38;2;223;175;122:\
*.doc=38;2;223;175;122:\
*.docx=38;2;223;175;122:\
*.xls=38;2;223;175;122:\
*.xlsx=38;2;223;175;122:\
*.ppt=38;2;223;175;122:\
*.pptx=38;2;223;175;122:\
*.odt=38;2;223;175;122:\
*.ods=38;2;223;175;122"

# fast-syntax-highlighting (256-color)
FAST_HIGHLIGHT_STYLES[freedefault]="none"
FAST_HIGHLIGHT_STYLES[freeunknown-token]="fg=203,bold"
FAST_HIGHLIGHT_STYLES[freereserved-word]="fg=141"
FAST_HIGHLIGHT_STYLES[freealias]="fg=39"
FAST_HIGHLIGHT_STYLES[freesuffix-alias]="fg=39"
FAST_HIGHLIGHT_STYLES[freebuiltin]="fg=141"
FAST_HIGHLIGHT_STYLES[freefunction]="fg=39"
FAST_HIGHLIGHT_STYLES[freecommand]="fg=39"
FAST_HIGHLIGHT_STYLES[freeprecommand]="fg=111"
FAST_HIGHLIGHT_STYLES[freecommandseparator]="none"
FAST_HIGHLIGHT_STYLES[freehashed-command]="fg=39"
FAST_HIGHLIGHT_STYLES[freepath]="fg=44"
FAST_HIGHLIGHT_STYLES[freepath_pathseparator]=""
FAST_HIGHLIGHT_STYLES[freeglobbing]="fg=71"
FAST_HIGHLIGHT_STYLES[freeglobbing-ext]="fg=106"
FAST_HIGHLIGHT_STYLES[freehistory-expansion]="fg=218,bold"
FAST_HIGHLIGHT_STYLES[freesingle-hyphen-option]="fg=180"
FAST_HIGHLIGHT_STYLES[freedouble-hyphen-option]="fg=180"
FAST_HIGHLIGHT_STYLES[freeback-quoted-argument]="fg=141"
FAST_HIGHLIGHT_STYLES[freesingle-quoted-argument]="fg=111"
FAST_HIGHLIGHT_STYLES[freedouble-quoted-argument]="fg=111"
FAST_HIGHLIGHT_STYLES[freedollar-quoted-argument]="fg=111"
FAST_HIGHLIGHT_STYLES[freeback-or-dollar-double-quoted-argument]="fg=44"
FAST_HIGHLIGHT_STYLES[freeback-dollar-quoted-argument]="fg=44"
FAST_HIGHLIGHT_STYLES[freeassign]="none"
FAST_HIGHLIGHT_STYLES[freeredirection]="none"
FAST_HIGHLIGHT_STYLES[freecomment]="fg=246"
FAST_HIGHLIGHT_STYLES[freevariable]="fg=44"
FAST_HIGHLIGHT_STYLES[freemathvar]="fg=39,bold"
FAST_HIGHLIGHT_STYLES[freemathnum]="fg=178"
FAST_HIGHLIGHT_STYLES[freematherr]="fg=203"
FAST_HIGHLIGHT_STYLES[freeassign-array-bracket]="fg=141"
FAST_HIGHLIGHT_STYLES[freefor-loop-variable]="fg=44"
FAST_HIGHLIGHT_STYLES[freefor-loop-number]="fg=178"
FAST_HIGHLIGHT_STYLES[freefor-loop-operator]="none"
FAST_HIGHLIGHT_STYLES[freefor-loop-separator]="fg=218"
FAST_HIGHLIGHT_STYLES[freeexec-descriptor]="fg=178,bold"
FAST_HIGHLIGHT_STYLES[freehere-string-tri]="fg=178"
FAST_HIGHLIGHT_STYLES[freehere-string-text]="fg=114"
FAST_HIGHLIGHT_STYLES[freehere-string-var]="fg=44"
FAST_HIGHLIGHT_STYLES[freesecondary]="zdharma"
FAST_HIGHLIGHT_STYLES[freecase-input]="fg=39"
FAST_HIGHLIGHT_STYLES[freecase-parentheses]="fg=79"
FAST_HIGHLIGHT_STYLES[freecase-condition]="fg=111"
FAST_HIGHLIGHT_STYLES[freecorrect-subtle]="fg=71"
FAST_HIGHLIGHT_STYLES[freeincorrect-subtle]="fg=203"
FAST_HIGHLIGHT_STYLES[freesubtle-separator]="none"
FAST_HIGHLIGHT_STYLES[freesubtle-bg]="bg=234"
FAST_HIGHLIGHT_STYLES[freepath-to-dir]="fg=44,underline"
FAST_HIGHLIGHT_STYLES[freepaired-bracket]="bg=240"
FAST_HIGHLIGHT_STYLES[freebracket-level-1]="fg=39"
FAST_HIGHLIGHT_STYLES[freebracket-level-2]="fg=141"
FAST_HIGHLIGHT_STYLES[freebracket-level-3]="fg=44"
FAST_HIGHLIGHT_STYLES[freeglobal-alias]="fg=218"
FAST_HIGHLIGHT_STYLES[freesubcommand]="fg=79"
FAST_HIGHLIGHT_STYLES[freesingle-sq-bracket]="fg=141"
FAST_HIGHLIGHT_STYLES[freedouble-sq-bracket]="fg=141"
FAST_HIGHLIGHT_STYLES[freedouble-paren]="fg=178"
FAST_HIGHLIGHT_STYLES[freeoptarg-string]="fg=111"
FAST_HIGHLIGHT_STYLES[freeoptarg-number]="fg=178"
FAST_HIGHLIGHT_STYLES[freerecursive-base]="fg=182"
