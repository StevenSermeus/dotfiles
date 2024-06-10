# How to install 

```bash
cd ~
git clone git@github.com:StevenSermeus/dotfiles.git .dotfiles
cd .dotfiles
stow .
brew bundle install
```

## Mac specific command

Command that are specific to the mac and that can't be set in dotfiles.

Disabling keychain for gpg.

```bash
defaults write org.gpgtools.common UseKeychain NO
defaults write org.gpgtools.common DisableKeychain -bool yes
```

## Configure GPG

```bash
max-cache-ttl 300
default-cache-ttl 300
```