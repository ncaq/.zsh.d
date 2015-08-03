export PATH=$PATH:/sbin:/usr/sbin:~/.cabal/bin:$(find ~ -regex '.*\.gem/ruby/[^/]*/bin$' 2>/dev/null|tr '\n' ':')

export EDITOR='emacsclient -a emacs'
export VISUAL=$EDITOR

export PAGER=less
export LESS=-Ri
export LESSHISTFILE=/tmp/.lesshst

export TMPDIR=/tmp/
