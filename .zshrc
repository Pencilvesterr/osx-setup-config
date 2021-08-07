# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Pre-loaded theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Dots are pretty.
COMPLETION_WAITING_DOTS="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git history-substring-search python pip osx brew)

# Load the good stuff.
source $ZSH/oh-my-zsh.sh

# Hmm, still deciding if this is a go?
# export EDITOR="vi"

# Have python from brew point to the correct interpreter 
alias python=/usr/local/bin/python3 
alias pip=/usr/local/bin/pip3

# -------------------------------------------------------------------
# Alias Commands
# -------------------------------------------------------------------
alias del='echo Moving to ~/.Trash/ ...; mv -i $* ~/.Trash/'
alias cdf='eval `osascript /Applications/Utilities/OpenTerminal.app/Contents/Resources/Scripts/OpenTerminal.scpt`'
alias ls='ls -FG'
alias dir='ls -FGl'
alias ll="ls -l"

# Safe options
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# cd, because typing the backslash sucks
alias .='cd ../'
alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'

# Lazy way to carefree push 
function glazy() {
    git add .
    git commit -a -m "$1"
    git push
}

eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
