# Define XDG Base directory environment variables
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CACHE_HOME="$HOME/Library/Caches"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH="$XDG_BIN_HOME:$PATH"

# Define paths for common programs not using XDG
export DOTFILES_DIR="$HOME/dotfiles"
