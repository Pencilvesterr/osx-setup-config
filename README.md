# New OSX Setup
Setup a new OSX with my favourite settings and applications.

# Installation
1. Download this repository somewhere on your machine
2. Sign in to the App Store within the application (needed for some downloads)
2. Download brew and follow the prompts

```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"```

3. In a new terminal, run ```brew doctor``` to make sure everything is installed as it should be
4. Go to this directory and run ```chmod +x osx-setup-command.sh; ./osx-setup-command.sh```
5. Answer a couple questions and wait for everything to download! 


# Post Installation Instructions
- Turning off cmd + space for mac search
- Adding sidebare to be really small and on the side
- Finder preferences:
    - Make sure that search only looks in the current directory
    - New finder windows shows my home directory
    - Show home folder in sidebar
- System preferences:
    - > Dock and menu bar > battery > show percentage
    - > Trackpad > Touch to click


# TODO
- Have so every tenth terminal that opens has a quote from cowsay and fortune
- Update vscode settings and extensions
- Setup CMD+Space to launch alfred if possible by code
- Update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
