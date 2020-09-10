echo "Setting up your MacBook"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" #install homebrew
brew install htop;
brew install google-chrome;
brew install slack;
brew install git;
brew install vim;
brew install node;
brew install sqlite;
brew install redis;
brew install travis;
brew install jq;
brew install curl;
brew install zsh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh;
brew install zsh-autosuggestions;
brew install bat;
brew install tree;
brew tap heroku/brew
brew install heroku
brew cask install iterm2
brew cask install visual-studio-code
brew cask install google-chat

######## Applications need to be manually installed 
# mindnode
# zoom
##########

cp .vimrc .zshrc ~; #setting up vim and zsh

echo "\n\n----------------\n Done..."
