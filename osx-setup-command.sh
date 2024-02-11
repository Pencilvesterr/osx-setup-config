#!/bin/bash

read -r -p "Install terminal setup? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    ### --- Terminal Setup ---
    ZDOTDIR=~/.config/zsh
    git clone https://github.com/Pencilvesterr/zdotdir $ZDOTDIR
    # symlink .zshenv
    [[ -f ~/.zshenv ]] && mv -f ~/.zshenv ~/.zshenv.bak
    ln -s $ZDOTDIR/.zshenv ~/.zshenv
fi  

### --- User selected options ---
set -e
brew update
# Install everything listed in the Brewfile
brew bundle 
echo "Finished installing applications"

### --- MISC ---
# Use this folder for all new projects
mkdir -p ~/dev || true
# Show all hidden folders
defaults write com.apple.Finder AppleShowAllFiles true


# The below should all be done with https://github.com/Pencilvesterr/zdotdir 
# Leaving it temporarily

# sudo cp -n .zshrc ~/.zshrc || true
# Zsh theme powerlevel10k
# echo installing powerlevel10k
# sudo git clone https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"

### --- Terminal Customisation ---
# Have to do this at the end as it hijacks the terminal
# read -r -p "Install oh-my-zsh? [y/N] " response
# if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
# then
#    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# fi  
