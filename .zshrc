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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
