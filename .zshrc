# Use Nix-managed Oh My Zsh
if [ -f $HOME/.nix-profile/etc/zshrc ]; then
  source $HOME/.nix-profile/etc/zshrc
fi

# zoxide init
eval "$(zoxide init zsh)"

# aliases
alias ls="eza"

# Track if first prompt has been shown
FIRST_PROMPT=true

precmd() {
  if [ "$FIRST_PROMPT" = false ]; then
    echo
  else
    FIRST_PROMPT=false
  fi
}

eval "$(starship init zsh)"
