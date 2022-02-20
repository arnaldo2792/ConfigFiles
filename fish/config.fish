if status is-interactive
  if ! is-laptop;
    # start key agents
    setup-gpg-agent
    setup-ssh-agent
  end

  # Set fisher path
  set -gx fisher_path $HOME/.local/fisher

  # Set default FZF_DEFAULT_COMMAND
  set -gx FZF_DEFAULT_COMMAND "rg --files"

  # Setup fzf key bindings
  setup_fzf_key_bindings

  # Start starship
  starship init fish | source
end

if status is-login
  set -x PATH $PATH $HOME/.cargo/bin $HOME/.local/go/root/bin $HOME/.local/go/path/bin $HOME/.local/bin

  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx --keeptty
  end
end
