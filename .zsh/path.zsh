export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" 
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" 

export DOCKER="$HOME/.docker/bin"

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden'
export FZF_DEFAULT_OPTS="--preview 'bat --style=numbers --color=always --line-range :600 {}'" 