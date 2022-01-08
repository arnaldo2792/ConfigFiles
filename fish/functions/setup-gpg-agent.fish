function setup-gpg-agent
  if test -z $SENTRY
    set -U SENTRY /run/user/(id -u)/gpg-created
  end

  set _TTL_FOR_AGENT 86400
  set _NOW (math (date +%s))

  if ! test -f $SENTRY; or test (math $_NOW - (stat $SENTRY -c%Y)) -gt $_TTL_FOR_AGENT
    touch $SENTRY
    # kill agent
    gpgconf --kill gpg-agent
    # Reset GPG_TTY to be this session
    set -x GPG_TTY (tty)
    # Start gpg-agent
    gpg-agent --daemon --default-cache-ttl $_TTL_FOR_AGENT --max-cache-ttl $_TTL_FOR_AGENT 2>&1 1>/dev/null
    # Add gpg key by signing something dumb
    echo HI | gpg --sign --no-tty 1>/dev/null
  end
end
