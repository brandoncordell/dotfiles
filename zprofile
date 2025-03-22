case $(uname) in
  "Linux")
    # Initialize homebrew for linux
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    ;;
  "Darwin")
    # Initialize homebrew for macOS
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ;;
  *);;
esac

# Initialize Oh My Posh and load theme
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/amro.omp.json)"

# Activate the mise environment
eval "$(mise activate zsh)"
