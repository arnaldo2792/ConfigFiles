function setup_fzf_key_bindings
  set --local FZF_KEY_BINDINGS_LOCAL_PATH $HOME/.local/share/fzf/shell/key-bindings.fish
  set --local FZF_KEY_BINDINGS_PATH /usr/share/fzf/shell/key-bindings.fish
  if test -e $FZF_KEY_BINDINGS_LOCAL_PATH
    source $FZF_KEY_BINDINGS_LOCAL_PATH
  else if test -e $FZF_KEY_BINDINGS_PATH
    source $FZF_KEY_BINDINGS_PATH
  end

  fzf_key_bindings
end
