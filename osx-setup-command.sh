#!/bin/bash
### --- User selected options ---
read -r -p "Download qBitTorrent? [y/N] " response
response=${response,,}
if [[ "$response" =~ ^(yes|y)$ ]]
then
    download_torrent=true
else
    download_torrent=false
fi

read -r -p "Download VMWare Fusion? [y/N] " response
response=${response,,}
if [[ "$response" =~ ^(yes|y)$ ]]
then
    download_vmware=true
else
    download_vmware=false
fi

### --- Utilities ---
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew install git
# set CMD+space to launch alfred
brew install --cask alfred
brew install --cask cheatsheet
brew install --cask grammarly
brew install --cask rectangle

### --- Terminal Customisation ---
# Update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
brew install --cask iterm2
brew install autojump
# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install cowsay 
brew install fortune
brew install awscli
# TODO: Every 10th open terminal, cowsay says a fortune 
# TODO: Add ability to download custom .zshrc file

### --- Applications ---
brew install --cask firefox
brew install --cask google-chrome
brew install --cask tor-browser
brew install --cask docker
brew install --cask dash
brew install --cask intellij-idea
brew install --cask pycharm
brew install --cask postman
brew install --cask spotify
brew install --cask vlc
brew install --cask discord
brew install --cask whatsapp
brew install --cask appcleaner
brew install --cask bitwarden
brew install --cask fork
# Ability to download from mac app store throught CLI
brew install mas-cli/tap/mas
mas lucky trello
# TODO: Update vscode settings
# TODO: Install vscode extensions 
brew install --cask visual-studio-code
if "$download_vmware"; then
    brew install --cask vmware-fusion
fi
if "$download_torrent"; then
    brew install --cask qbittorrent
fi

### --- MISC ---
mkdir ~/dev
