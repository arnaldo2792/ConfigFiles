set -x PATH $PATH $HOME/.cargo/bin $HOME/.local/go/root/bin $HOME/.local/go/path/bin $HOME/.local/bin

if ! is-laptop
  # start key agents
  setup-ssh-agent
  setup-gpg-agent
end

# Set fisher path
set -gx fisher_path $HOME/.local/fisher

# Set default FZF_DEFAULT_COMMAND
set -gx FZF_DEFAULT_COMMAND "rg --files"

# Setup fzf key bindings
setup_fzf_key_bindings
