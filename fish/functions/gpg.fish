function gpg
  set -l CURRENT_TTY (tty)
  if test "$CURRENT_TTY" != "$GPG_TTY"
    set -xg GPG_TTY $CURRENT_TTY
  end
  command gpg $argv
end
