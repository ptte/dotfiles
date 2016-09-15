# Add all non-file targets here
.PHONY: all symlinks brew zsh git system-tweaks

all: symlinks brew zsh git system-tweaks

symlinks:
	mkdir ~/.hammerspoon && ln ./hammerspoon/init.lua ~/.hammerspoon
	ln -s ./zsh/.zshrc ~/.zshrc
	ln -s ./vim/.vimrc ~/.vimrc
	ln -s ./git/.gitconfig ~/.gitconfig

brew: install-homebrew brew-update brew-install

install-homebrew:
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew-update:
	brew update && brew upgrade

brew-install:
	brew install caskroom/cask/brew-cask
	brew install git hub nvm php55 phpdocumentor zsh wget nmap
	brew cask install alfred google-chrome sublime iterm2 launchrocket dropbox \
		virtualbox boot2docker marked slack spotify sequel-pro skype mplayerx charles \
		viscosity transmission hex-fiend hammerspoon

zsh:
	curl -L http://install.ohmyz.sh | sh

git:
	git config --global push.default current
	git config --global user.name "Patrik Ring"
	git config --global user.email me@patrikring.se

system-tweaks:
	defaults write com.apple.LaunchServices LSQuarantine -bool NO
	defaults write com.apple.finder _FXShowPosixPathInTitle -boolean YES
