#!/bin/bash
### --- User selected options ---
read -r -p "Download qBitTorrent? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    download_torrent=true
else
    download_torrent=false
fi

read -r -p "Download VMWare Fusion? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    download_vmware=true
else
    download_vmware=false
fi

### --- Utilities ---
brew update
brew install \
    git \
    gradle \
    maven \
    python \
    openjdk@11 \
    gradle \
    maven

brew install --cask \
    alfred \
    cheatsheet \
    grammarly \
    rectangle 
    
### --- Terminal Customisation ---
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install --cask iterm2
brew install \
    cowsay \
    fortune \
    autojump \
    awscli \
    thefuck

### --- Applications ---
brew install --cask \
    firefox \
    google-chrome \
    tor-browser \
    docker \
    dash \
    intellij-idea \
    pycharm \
    postman \
    spotify \
    vlc \
    discord \
    whatsapp \
    appcleaner \
    fork \
    visual-studio-code 

if "$download_vmware"; then
    brew install --cask vmware-fusion
fi
if "$download_torrent"; then
    brew install --cask qbittorrent
fi

# Ability to download from mac app store throught CLI
brew install mas-cli/tap/mas
mas lucky trello
# Need to use app store for web auto-comp functionality
mas lucky bitwarden
mas lucky onenote 

### --- MISC ---
# Use this folder for all new projects
sudo mkdir ~/dev
sudo cp .zshrc ~/.zshrc
# Show all hideen folders
defaults write com.apple.Finder AppleShowAllFiles true

# Delete this directory once setup is complete
read -r -p "Delete this setup directory[y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    rm -rf -- "$(pwd -P)" && cd ..
fi
