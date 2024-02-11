# New OSX Setup
Setup a new OSX machine with my favourite settings and applications.

# Installation
1. Make sure to have git working and clone this repository 
1. Sign in to the App Store app (needed for some downloads)
1. Download brew and follow the prompts

    - ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"```

1. In a new terminal, run ```brew doctor``` to make sure everything is installed as it should be
1. Go to this directory and run ```./osx-setup-command.sh```
1. Answer a couple questions and wait for everything to download! 


# Post Installation Instructions
- Turning off cmd + space for mac search, replace with Alfred
    - Within Alfred set appearance to 'Alfred Modern Dark' and for features turn on 'Folders' and 'Documents'
- Adding sidebar to be really small and on the side
- Finder preferences:
    - Make sure that search only looks in the current directory
    - New finder windows shows my home directory
    - Show home folder in sidebar
- In Rectangle, import my custom config from this directory
- If using LG OLED 42, copy init.lua and use it in hammerspoons config for getting TV to turn on

- System preferences:
    - Dock and menu bar > battery > show percentage
    - Trackpad > Touch to click
    - Keyboard > shortcut > spotlight > disable spotlight shortcut (so you can then use alfred)
    - Desktop & Dock > Mission Control > Group Windows by Application 
    - Control centre > Bluetooth + Sound > Show in menu bar
    - Night shift options > Turn it on slighty but always

- Restore iTerm2 setting:
Go to General > Preferences > Load preferences > restore the saved iterm2_settings file.
    - Then load the profile by going Profiles > Other Actions (bottom left), import JSON profiles. 

    - If unsuccessful, use the following Iterm2 preferences:
        - Profiles > Colors > Color presets > smooooth
        - Profiles > keys > presets > natural text editing (alt arrow jumps over words) 
        - General > Working Dir > Reuse previous sessions directory
        - Profiles > Sessions > Status bar enabled (bottom) > Configure Status Bar (also turn on rainbow colours)
        - Appearance > Status bar location > bottom
        - Appearance > Theme > Minimal


# TODO
- [ ] Update vscode settings and extensions for export
- [ ] Export my alt-tab settings (Have a custom setting for v and b for ultrawide)
- [ ] Export all my terminal zsh plugins like history
- [ ] Second brewfile for work related installs
- [ ] Figure out how to switch f5/f6 to keyboard backlight
- [ ] Record my alt-tab settings, they can't be imported
