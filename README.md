# New OSX Setup
Setup a new OSX machine with my favourite settings and applications.

# Installation
1. Download this repository 
2. Sign in to the App Store app (needed for some downloads)
2. Download brew and follow the prompts

- ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"```

3. In a new terminal, run ```brew doctor``` to make sure everything is installed as it should be
4. Go to this directory and run ```chmod +x osx-setup-command.sh && ./osx-setup-command.sh```
5. Answer a couple questions and wait for everything to download! 


# Post Installation Instructions
- Turning off cmd + space for mac search, replace with Alfred
    - Within Alfred set appearance to 'Alfred Modern Dark' and for features turn on 'Folders' and 'Documents'
- Adding sidebar to be really small and on the side
- Finder preferences:
    - Make sure that search only looks in the current directory
    - New finder windows shows my home directory
    - Show home folder in sidebar

- System preferences:
    - Dock and menu bar > battery > show percentage
    - Trackpad > Touch to click
    - Keyboard > shortcut > spotlight > disable spotlight shortcut (so you can then use alfred)

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

- Setup Ferdy with dark theme from [this repo]( https://github.com/ducfilan/Dark-mode-Franz-Ferdi)


# TODO
 - [ ] Update vscode settings and extensions for export


