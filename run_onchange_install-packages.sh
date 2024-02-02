#! /bin/sh

/bin/bash -c NONINTERACTIVE=1 "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle install

rm Brewfile.lock.json