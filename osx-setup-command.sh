#!/bin/bash
### --- User selected options ---
set -e
read -r -p "Download qBitTorrent? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    download_torrent=true
else
    download_torrent=false
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
    rectangle \
    alt-tab \
    flux \
    diffmerge \
    Visual-studio-code
    
### --- Terminal Customisation ---
read -r -p "Install oh-my-zsh? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi  

brew install \
    cowsay \
    fortune \
    autojump \
    awscli \
    thefuck \
    micro \
    tree \
    zsh-syntax-highlighting \
    zsh-autosuggestions

### --- Applications ---
brew install --cask \
    iterm2 \
    docker \
    dash \
    intellij-idea \
    pycharm \
    postman \
    spotify \
    iina \
    whatsapp \
    appcleaner \
    fork \
    visual-studio-code \
    zoom \
    ferdi \
    firefox \
    google-chrome

read -r -p "Install Tor? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    brew install --cask tor-browser
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
mkdir ~/dev
sudo cp .zshrc ~/.zshrc
# Show all hideen folders
defaults write com.apple.Finder AppleShowAllFiles true
# Zsh theme powerlevel10k
sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
#Set Diffmerge to be default merge conflict tool when you `git mergetool`
git config --global diff.tool diffmerge
git config --global difftool.diffmerge.cmd 'diffmerge "$LOCAL" "$REMOTE"'
git config --global merge.tool diffmerge
git config --global mergetool.diffmerge.cmd 'diffmerge --merge --result="$MERGED" "$LOCAL" "$(if test -f "$BASE"; then echo "$BASE"; else echo "$LOCAL"; fi)" "$REMOTE"'
git config --global mergetool.diffmerge.trustExitCode true
git config --global mergetool.keepBackup false

# Delete this directory once setup is complete
read -r -p "Delete this setup directory[y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    rm -rf -- "$(pwd -P)" && cd ..
fi
echo "All done!"
