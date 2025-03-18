header "Installing/updating Homebrew packages"
brew bundle --file=./config/homebrew/Brewfile

if [[ $(uname -s) = "Darwin" ]]; then
    header "Installing Mac applications"
  brew bundle --file=./config/homebrew/Caskfile
  brew bundle --file=./config/homebrew/Masfile
fi

header "Installing VS Code extensions"
brew bundle --file=./config/homebrew/VSCodefile