
if [ -d /opt/homebrew/bin ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

if [ -z "$DOCKERIZED" ] || [ "$DOCKERIZED" = "false" ]; then
    source <(fzf --zsh)
fi

export PATH="$HOME/.config/custom-scripts/bin:$PATH"