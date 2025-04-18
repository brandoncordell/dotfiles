# load custom executable functions
for function in ~/.zsh/functions/**/*; do
  source $function
done

plugins=(
  romkatv/zsh-defer # Defer initialization of functions until they're used
  zdharma-continuum/fast-syntax-highlighting # Faster syntax-highlighting for zsh
  zsh-users/zsh-autosuggestions # Fish-like autosuggestions for zsh
  zsh-users/zsh-history-substring-search # ZSH port of Fish history search (up arrow)
)

plugin-load $plugins

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*~*.zwc(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/(pre|post)/*|*.zwc)
          :
          ;;
        *)
          . $config
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*~*.zwc(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"
