alias cd="z"
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first --long"
alias la="eza --icons --group-directories-first --all"
alias lst="eza --icons --group-directories-first --tree"

# For non-dockerized environments
if [ -z "$DOCKERIZED" ] || [ "$DOCKERIZED" = "false" ]; then

    # Docker utils 
    volumes='--volume ~/.ssh:/home/mew-docker/.ssh --volume ~/.cache/zellij-docker:/home/mew-docker/.cache'
    alias ansible='run-ansible'
    alias build-terminal='docker build -t terminal -f ~/.config/docker/terminal.dockerfile ~'
    alias run-terminal="docker run -it --platform=linux/amd64 $volumes --rm --name terminal terminal"
    alias build-ansible='build-terminal && docker build -t ansible -f ~/.config/docker/ansible.dockerfile ~'
    alias run-ansible="docker run -it --platform=linux/amd64 $volumes --volume '$(pwd)':/home/mew-docker/workdir --rm --name ansible ansible"
    
    # Pandoc aliases
    alias pandoc-base='docker run --rm --volume "$(pwd)":/data --platform linux/amd64 mfreeze/pandoc-iesn:mermaid-latest-ubuntu -p xelatex -m -l -M -e -N -I -T pdf'
    alias pandoc-iesn='docker run --rm --volume "$(pwd)":/data --platform linux/amd64 mfreeze/pandoc-iesn:mermaid-latest-ubuntu -p xelatex -m -l -M -N -I -T pdf'
fi
