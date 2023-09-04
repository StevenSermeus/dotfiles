[ -f ~/.fzf.zsh ] && source ~/.zsh/.fzf.zsh
[ -f ~/.path.zsh ] && source ~/.zsh/.path.zsh
[ -f ~/.alias.zsh ] && source ~/.zsh/.alias.zsh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/jandedobbeleer.omp.json)"