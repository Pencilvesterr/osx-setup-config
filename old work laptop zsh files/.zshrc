# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
 
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="random"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions sudo zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/mcrouch/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias python=/opt/homebrew/bin/python3
# alias pip=/opt/homebrew/bin/pip3

# -------------------------------------------------------------------
# Alias Commands
# -------------------------------------------------------------------
alias del='echo Moving to ~/.Trash/ ...; mv -i $* ~/.Trash/'
alias cdf='eval `osascript /Applications/Utilities/OpenTerminal.app/Contents/Resources/Scripts/OpenTerminal.scpt`'
#alias ls='ls -FG'
#alias dir='ls -FGl'
#alias ll="ls -l"

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
alias gl='git log --all --decorate --oneline --graph'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
# Useful for large repos as only pulls changes for that one branch 
# Instead of a full fetch
alias gpo='git pull origin' 
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gbranches='git reflog | grep checkout | cut -d " " -f 8 | uniq | head ${1} | cat -n'

# -------------------------------------------------------------------
# Custom functions
# -------------------------------------------------------------------
# Use to notify when a terminal command finished. e.g. `la -a; notifyDone`
alias notifyDone='tput bel; terminal-notifier -title "Terminal" -message "Done with task! Exit status: $?"' -activate com.apple.Terminal
# Lazy way to carefree push 
function forward-remote() {
  echo "Port forwarding to devenv"
  ssh -N -L localhost:5433:localhost:5433 -L localhost:8080:localhost:8080 -L localhost:8880:localhost:8880 -L localhost:5005:localhost:5005 -L localhost:5432:localhost:5432 -L localhost:32769:localhost:32769 -L localhost:8099:localhost:8099 -L localhost:8100:localhost:8100 devenv
  # ssh -N -L localhost:5005:localhost:5005 devenv
}

function startup() {
  cd ~/dev/jira/jira-feature-edit
  echo "--- Starting Docker"
  open -a Docker
  echo "--- Fetching Jira"
  git fetch
  echo "--- Getting remote session"
  atlas devenv remote acquire --atl-debug # --instance-type=c6i.8xlarge
  echo "--- Doing first explore build"
  jsync build ./jmake run explore
}

function get_docker_write_perms() {
  # https://hello.atlassian.net/wiki/spaces/~613032943/pages/1726867368/How+to+use+Atlassian+Docker+Registry
  docker login docker.atl-paas.net
  atlas packages permission grant
}

eval $(thefuck --alias) 

# Automatically start the SSH agent if it's not already running
if [ ! -f /tmp/.ssh-agent ]; then
    ssh-agent > /tmp/.ssh-agent
    source /tmp/.ssh-agent > /dev/null
    ssh-add ~/.ssh/id_rsa > /dev/null
else
    source /tmp/.ssh-agent > /dev/null
fi


# -------------------------------------------------------------------
# Env Var Setup
# -------------------------------------------------------------------
# Enable Python viertualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv

# -------------------------------------------------------------------
# Source
# -------------------------------------------------------------------
# SDK man
source "$HOME/.sdkman/bin/sdkman-init.sh"
source /usr/local/bin/virtualenvwrapper.sh

# -------------------------------------------------------------------
# Path Setup
# -------------------------------------------------------------------
# To get poetry working for export
export PATH="/Users/mcrouch/.local/bin:$PATH"
# Getting piranha-ff CLI bin 
export PATH=/Users/mcrouch/Library/Python/3.10/bin:$PATH
export PATH="/usr/local/opt/util-linux/bin:$PATH"
# Setting up jsync
export PATH="/Users/mcrouch/.jsync/bin:$PATH"
# Add NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Enable Jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# Use pyenv to control python version
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"