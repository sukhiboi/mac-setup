echo "Setting up your MacBook"

echo "Creating directories"
mkdir ~/root ~/temp ~/root/bin;

#setting up vim, zsh and aliases
echo "Updating dot files and aliases"
cp .vimrc ~;
cp zsh.sh ~/root/bin

#install homebrew
echo "Installing Mac package manger"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing shell and plugins"
#install zsh and install some plugins
brew install git zsh zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#install spaceship propmpt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

#install command line tools
echo "Installing command line tools"
brew install htop vim node sqlite redis travis jq curl bat tree npm
brew tap heroku/brew
brew install heroku

#install fira code font
echo "Installing fonts"
brew tap homebrew/cask-fonts
brew cask install font-fira-code

#install applications
echo "Installing applications"
brew install google-chrome slack
brew cask install iterm2 visual-studio-code google-chat postman vlc

#Installing required node modules
echo "Installing node modules"
sudo npm install -g n;
n latest;
npm install -g nodejs/repl

# Applications need to be manually installed 
# zoom

# make zsh default shell
echo "Setting default shell"
chsh -s /bin/zsh;


echo "\n\n----------------\n Done..."
