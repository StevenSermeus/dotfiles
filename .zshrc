[ -f ~/.zsh/fzf.zsh ] && source ~/.zsh/.fzf.zsh
[ -f ~/.zsh/path.zsh ] && source ~/.zsh/path.zsh
[ -f ~/.zsh/alias.zsh ] && source ~/.zsh/alias.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/jandedobbeleer.omp.json)"
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin.omp.json)"
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin_frappe.omp.json)"
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/hunk.omp.json)"
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/dracula.omp.json)"


# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Created by `pipx` on 2023-11-02 07:35:07
export PATH="$PATH:$HOME/.local/bin"
