if status is-interactive
  if ! is-laptop;
    # start key agents
    setup-ssh-agent
  end

  # Set default FZF_DEFAULT_COMMAND
  set -gx FZF_DEFAULT_COMMAND "rg --files"

  # Set editor env variable
  set -gx EDITOR "nvim"

  # Setup fzf key bindings
  setup_fzf_key_bindings

  # Start starship
  starship init fish | source

  # Setup zoxide
  zoxide init fish | source
end

if status is-login
  set -x PATH $HOME/.local/bin $PATH $HOME/.cargo/bin $HOME/.local/go/root/bin $HOME/.local/go/path/bin 

  # Set java home if java is present
  if type -q javac
    set -gx JAVA_HOME (dirname (dirname (readlink -f (which javac))))
  end

  # Set GOPATH
  set -x GOPATH $HOME/.local/go/path
end
