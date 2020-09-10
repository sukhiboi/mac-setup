echo "Setting up your MacBook"

echo "Creating directories"
mkdir ~/root ~/temp ~/root/bin;

#setting up vim, zsh and aliases
echo "Updating dot files and aliases"
cp .vimrc .zshrc ~;
cp zsh.sh ~/root/bin

#install homebrew
echo "Installing package manger"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Setting up terminal"
#install zsh and install some plugins
brew install zsh zsh-autosuggestions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install spaceship propmpt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

#install command line tools
echo "Installing command line toold"
brew install htop git vim node sqlite redis travis jq curl bat tree
brew tap heroku/brew
brew install heroku

#install fira code font
echo "Installing fonts"
brew tap homebrew/cask-fonts
brew cask install font-fira-code

#install applications
echo "Installing applications"
brew install google-chrome slack
brew cask install iterm2 visual-studio-code google-chat

# Applications need to be manually installed 
# mindnode
# zoom

# make zsh default shell
echo "Setting default shell"
chsh -s /bin/zsh;


echo "\n\n----------------\n Done..."
