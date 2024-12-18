HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

if [ -f ~/.config/zsh/path.zsh ]; then
  source ~/.config/zsh/path.zsh
fi

if [ -f ~/.config/zsh/aliases.zsh ]; then
  source ~/.config/zsh/aliases.zsh
fi

if [ -f ~/.config/zsh/defaults.zsh ]; then
  source ~/.config/zsh/defaults.zsh
fi

if [ -f ~/.config/zsh/zinit.zsh ]; then
  source ~/.config/zsh/zinit.zsh
fi

if [ -f ~/.config/zsh/orbstack.zsh ]; then
  source ~/.config/zsh/orbstack.zsh
fi

# bun completions
[ -s "/Users/mew/.bun/_bun" ] && source "/Users/mew/.bun/_bun"
