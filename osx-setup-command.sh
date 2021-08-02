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
brew install java
brew install --cask \
    alfred \
    cheatsheet \
    grammarly \
    rectangle

### --- Terminal Customisation ---
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install \
    cowsay \ 
    fortune
    autojump \
    awscli

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
    bitwarden \
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

### --- MISC ---
# Use this folder for all new projects
mkdir ~/dev

# Delete this directory once setup is complete
rm -rf -- "$(pwd -P)" && cd ..
