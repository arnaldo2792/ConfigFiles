function ssh
  if ! is-laptop
    setup-ssh-agent
  end
  command ssh $argv
end
