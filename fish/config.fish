set -x PATH $PATH $HOME/.cargo/bin $HOME/.local/go/root/bin $HOME/.local/go/path/bin $HOME/.local/bin

if ! is-laptop
  # start key agents
  setup-ssh-agent
  setup-gpg-agent
end

# Setup fzf key bindings
fzf_key_bindings
