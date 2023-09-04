/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Homebrew packages..."

brew install fzf fd bat exa curl

brew install --cask rectangle

brew install --cask warp

echo "Installing Oh My Posh..."

brew install jandedobbeleer/oh-my-posh/oh-my-posh

echo "Install a font for Oh My Posh set the font in your terminal to the font you installed."

oh-my-posh font install

echo "Installing nano syntax highlighting..."

curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

echo "Backing up your current config files... as old files.bak"

cp ~/.zshrc ~/.zshrc.bak

cp ~/.zprofile ~/.zprofile.bak

cp -R ~/.zsh ~/.zsh.bak

cp -R ~/.warp ~/.warp.bak

cp ~/.fdignore ~/.fdignore.bak

echo "Removing your current config files..."

rm ~/.zshrc

rm ~/.zprofile

rm -rf ~/.zsh

rm -rf ~/.warp

echo "Copy the config file to your home directory."

cp .zshrc ~/.zshrc

cp .zprofile ~/.zprofile

cp -R .zsh ~/.zsh

cp -R .warp ~/.warp

cp .fdignore ~/.fdignore


