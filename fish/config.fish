set -x PATH $PATH $HOME/.cargo/bin $HOME/.local/go/root/bin $HOME/.local/go/path/bin $HOME/.local/bin

if ! is-laptop
  # start key agents
  setup-ssh-agent
  setup-gpg-agent
end

# Set fisher path
set -gx fisher_path $HOME/.local/fisher

# Setup fzf key bindings
setup_fzf_key_bindings
