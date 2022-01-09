function setup-ssh-agent
  # SSH_SHARED_SESSION is a sentry file to share the socket across all the fish sessions
  set -gx SSH_SHARED_SESSION /run/user/(id -u)/ssh-created
  if test ! -e $SSH_SHARED_SESSION; or test ! -e (read < $SSH_SHARED_SESSION)
    # Erease variables, to make sure they are not set already
    set -e SSH_AGENT_PID
    set -e SSH_AUTH_SOCK

    # Kill any tangling agents
    pkill ssh-agent

    eval (ssh-agent -c)

    # Update SSH_SHARED_SESSION
    echo $SSH_AUTH_SOCK > $SSH_SHARED_SESSION
  else
    set -gx SSH_AUTH_SOCK (read < $SSH_SHARED_SESSION)
  end

  # At this point, the agent should exist, now add the keys
  if ! ssh-add -l 2>&1 1>/dev/null
    ssh-add -t 86400
  end
end
