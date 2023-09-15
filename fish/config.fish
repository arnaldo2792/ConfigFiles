if status is-interactive
  if ! is-laptop;
    # start key agents
    setup-ssh-agent
  end

  # Set default FZF_DEFAULT_COMMAND
  set -gx FZF_DEFAULT_COMMAND "rg --files"

  # Setup fzf key bindings
  setup_fzf_key_bindings

  # Start starship
  starship init fish | source
end

if status is-login
  set -x PATH $PATH $HOME/.cargo/bin $HOME/.local/go/root/bin $HOME/.local/go/path/bin $HOME/.local/bin

  # Set java home
  set -gx JAVA_HOME (dirname (dirname (readlink -f (which javac))))

  # Set GOPATH
  set -x GOPATH $HOME/.local/go/path

  if set --query XDG_VTNR; and test $XDG_VTNR = 1 -a -z "$DISPLAY"
    exec startx --keeptty
  end
end
