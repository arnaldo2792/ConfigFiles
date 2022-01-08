function setup-ssh-agent
  # SSH_SHARED_SESSION is a universal variable to share the socket across all the fish sessions
  if test -z $SSH_SHARED_SESSION; or test -n "$SSH_SHARED_SESSION"; and test ! -e "$SSH_SHARED_SESSION"
    # Erease variables, to make sure they are not set already
    set -e SSH_AGENT_PID
    set -e SSH_AUTH_SOCK

    eval (ssh-agent -c)

    # Update SSH_SHARED_SESSION
    set -U SSH_SHARED_SESSION $SSH_AUTH_SOCK
  else
    set -gx SSH_AUTH_SOCK $SSH_SHARED_SESSION
  end

  # At this point, the agent should exist, now add the keys
  if ! ssh-add -l 2>&1 1>/dev/null
    ssh-add -t 86400
  end
end
