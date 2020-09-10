echo "Setting up your MacBook"

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#install zsh and set it as default shell, also install some plugins
brew install zsh zsh-autosuggestions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh;

#install spaceship propmpt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

#install command line tools
brew install htop git vim node sqlite redis travis jq curl bat tree
brew tap heroku/brew
brew install heroku
brew tap homebrew/cask-fonts
brew cask install font-fira-code

#install applications
brew install google-chrome slack
brew cask install iterm2
brew cask install visual-studio-code
brew cask install google-chat

# Applications need to be manually installed 
# mindnode
# zoom

#setting up vim and zsh
cp .vimrc .zshrc ~;

echo "\n\n----------------\n Done..."
