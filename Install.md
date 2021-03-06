# Install a new mac

## Homebrew
`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

`brew install caskroom/cask/brew-cask`

`brew install git hub nvm php55 phpdocumentor zsh wget nmap`

```
brew cask install alfred google-chrome sublime iterm2 launchrocket dropbox \
virtualbox boot2docker marked slack spotify sequel-pro skype mplayerx charles \
viscosity transmission hex-fiend hammerspoon
```

- Change settings in alfred to include cask programs
- Run boot2docker installer

## Terminal
http://michaelheap.com/solarized-with-iterm2/

`wget -O Downloads/solarized.zip http://ethanschoonover.com/solarized/files/solarized.zip`
`unzip Downloads/solarized.zip`

`curl -L http://install.ohmyz.sh | sh`

## VIM
`ln -s ~/Projects/dotfiles/vim/.vimrc ~./.vimrc`

```
cd .vim/bundle && \
  git clone https://github.com/kien/ctrlp.vim.git && \
  git clone git@github.com:terryma/vim-multiple-cursors.git && \
  git clone git@github.com:scrooloose/nerdtree.git && \
  cd ~
```

## Git settings
`git config --global push.default current`
`git config --global push.default current`
`git config --global user.name "Patrik Ring"`
`git config --global user.email me@patrikring.se`

## Other apps

**downloads**

**App store**

- 1password

## VPN

Import vpn file from old computer... Passwords are in 1password

## System tweaks

**Remove the quarantine prompt**

`defaults write com.apple.LaunchServices LSQuarantine -bool NO`

**Make finder show path**

`defaults write com.apple.finder _FXShowPosixPathInTitle -boolean YES`

**Lock computer**

Create a screensaver app in automator
