#! /bin/sh

/bin/bash -c NONINTERACTIVE=1 "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle install

rm Brewfile.lock.json

echo "Common configuration"

if [ "$(uname)" == "Darwin" ]; then
    echo "Configuring for MacOS"

    echo "Set auto-hide true"
    defaults write com.apple.dock autohide -bool true

    echo "Set autohide-time"
    defaults write com.apple.dock autohide-time-modifier -float 0.5

    echo "Set key repeat"
    defaults write -g InitialKeyRepeat -int 15
    defaults write -g KeyRepeat -int 2

    echo "Finder customisation"
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    defaults write com.apple.finder ShowPathbar -bool true

    echo "Yabai and skhd services"

fi

if [ "$(uname)" != "Darwin" ]; then
    echo "Removing .warp"
    rm -rf ~/.warp
fi

if [ ! -f ~/.ssh/github ]; then
    echo "Generating github key"
    ssh-keygen -t rsa -b 4096 -C "github" -f ~/.ssh/github
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/github
fi

if [ ! -f ~/.ssh/gitlab ]; then
    echo "Generating gitlab key"
    ssh-keygen -t rsa -b 4096 -C "gitlab" -f ~/.ssh/gitlab
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/gitlab
fi

echo "Common configuration done"
