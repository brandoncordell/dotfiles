#!/usr/bin/env zsh

source ./zsh/functions/utils/pretty_print.zsh

# Some helper functions for printing messages
# without polluting the file
function header() {
  print
  pretty_print "$1" "blue"
  print
}

function warn() {
  pretty_print "$1" "yellow"
}

function error() {
  pretty_print "$1" "red"
}

function success() {
  pretty_print "\u2714 $1" "green"
}

function info() {
  pretty_print "$1" "white"
}

header "Setting up dev environment"

if ! [[ -v XDG_CONFIG_HOME ]]; then
  warn '$XDG_CONFIG_HOME not set. Setting to $HOME/.config' yellow
  export XDG_CONFIG_HOME=$HOME/.config
fi

# Ensure $HOME/Code exists
if ! [[ -d $HOME/Code ]]; then
  warn '$HOME/Code directory not found. Creating it' yellow
  mkdir $HOME/Code
else
  success '$HOME/Code directory already exists'
fi

header "Installing system dependencies"

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  success "Homebrew already installed"
fi

# Install dependencies from Brewfile
header "Installing/updating Homebrew packages"

brew bundle --file=./config/homebrew/Brewfile

if [[ $(uname -s) = "Darwin" ]]; then
    header "Installing Mac applications"
  brew bundle --file=./config/homebrew/Caskfile
  brew bundle --file=./config/homebrew/Masfile
fi

# Symlink dotfiles
header "Symlinking dotfiles"

env RCRC=$HOME/dotfiles/rcrc rcup
