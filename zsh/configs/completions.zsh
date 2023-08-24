# show completion menu on successive tab press
setopt auto_menu

# case insensitive tab completion
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# tab completion becomes a menu which highlights selections
# and allows you to move horizontally across menu rows
zstyle ':completion:*:*:*:*:*' menu select
