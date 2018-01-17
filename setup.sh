#!/usr/bin/env bash
DIR=`dirname $0`

function backUp() {
   # Back up if it exists
   if [[ -e $HOME/.$1 ]]; then
      echo "Backing up .$1"
      mv "$HOME/.$1" "$HOME/.$1.bak"
   fi
}
function link() {
   echo "Linking .$1 to dotfiles"
   ln "$DIR/$1" "$HOME/.$1"
}
function sep() { echo; echo "---------------------------------------------------------------------"; echo; }


echo "Setting up dotfiles..."
sep

echo "Backups:"
backUp bashrc
backUp zshrc
backUp profile
backUp bash_profile
sep

echo "Installing oh-my-zsh..."
git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.dotfiles/tools/oh-my-zsh"
sep

echo "Installing sdkman..."
export SDKMAN_DIR="$HOME/.dotfiles/tools/sdkman"
curl -s "https://get.sdkman.io" | bash
sep

echo "Installing NVM"

sep

echo "Cleaning up from installations..."
rm -rf ~/.zshrc
rm -rf $HOME/.bashrc
rm -rf $HOME/.profile
rm -rf $HOME/.bash_profile
sep

echo; echo "Changing shell. Please enter your password to do so."
chsh -s `/usr/bin/env which zsh`
sep

link zshrc
sep

echo "Installation complete"
echo "Please reload your terminal"