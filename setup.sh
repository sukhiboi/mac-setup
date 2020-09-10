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
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
brew tap homebrew/cask-fonts
brew cask install font-fira-code

######## Applications need to be manually installed 
# mindnode
# zoom
##########

cp .vimrc .zshrc ~; #setting up vim and zsh

echo "\n\n----------------\n Done..."
