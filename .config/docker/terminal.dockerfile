FROM --platform=linux/amd64 debian:stable-slim 

# Install dependencies
RUN apt-get update && apt-get install -y \
    zsh \
    curl \
    git \
    stow \
    zoxide \
    fzf \
    gpg \
    wget \
    unzip 

# Set root password to be able to use it to install package at runtime
RUN echo 'root:root' | chpasswd

# Eza install
RUN mkdir -p /etc/apt/keyrings
RUN wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | tee /etc/apt/sources.list.d/gierens.list
RUN chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
RUN apt update
RUN apt-get install -y eza

# Starship install
RUN curl -sS https://starship.rs/install.sh | sh -s -- -y

# Install zellij
# Issue with zellij running in docker container
# Compiling at each start of the container
WORKDIR /tmp

ENV ZELLIJ_VERSION=0.40.1
ENV ARCH=x86_64

RUN curl -LO https://github.com/zellij-org/zellij/releases/download/v${ZELLIJ_VERSION}/zellij-${ARCH}-unknown-linux-musl.tar.gz
RUN tar -xvf zellij-${ARCH}-unknown-linux-musl.tar.gz
RUN mv zellij /usr/local/bin
RUN rm zellij-${ARCH}-unknown-linux-musl.tar.gz

# Create user
RUN useradd -m mew-docker
USER mew-docker
COPY .dotfiles /home/mew-docker/.dotfiles
WORKDIR /home/mew-docker/.dotfiles
RUN stow .

WORKDIR /home/mew-docker

ENV USER=mew-docker
ENV PATH=/home/mew/.local/bin:$PATH
ENV SHELL=/bin/zsh
ENV USERNAME=mew-docker

ENV DOCKERIZED=true

# Install zsh plugins with zinit
ENV TERM=xterm-256color
RUN echo 'source ~/.zshrc' | zsh

CMD ["/bin/zsh"]


