#!/usr/bin/env zsh

STRICT=false

source ./install/utils.zsh

header "Installing your dotfiles"

# Is this a work machine?
while [[ ! "$use_strict" =~ ^[yYnN]$ ]]; do read "use_strict?$(pp "Is this a work machine? (y/n): ")"; done

case $use_strict in
  y|Y) STRICT=true;;
  n|N) STRICT=false;;
esac

if $STRICT; then
  export HOMEBREW_STRICT=true

  echo ''
  warn "Strict mode enabled" "yellow"
fi

header "Setting up environment"

if ! [[ -v XDG_CONFIG_HOME ]]; then
  warn '`$XDG_CONFIG_HOME` not set. Setting to `$HOME`/.config' yellow
  export XDG_CONFIG_HOME=$HOME/.config
fi

# Ensure $HOME/Code exists
if ! [[ -d $HOME/Code ]]; then
  warn '`$HOME/Code` directory not found. Creating it' yellow
  mkdir $HOME/Code
else
  success '$HOME/Code directory already exists'
fi

source ./install/dependencies.zsh # Install dependencies
source ./install/apps.zsh # Install apps and vscode extensions

# Symlink dotfiles
header "Symlinking dotfiles"

env RCRC=$HOME/dotfiles/rcrc rcup
