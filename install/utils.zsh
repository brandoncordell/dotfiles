source ./zsh/functions/utils/pretty_print.zsh

# Some helper functions for printing messages
# without polluting the file
function fail() {
  pretty_print "\u2718 $1" "red"
  exit 1
}

function header() {
  print
  pretty_print "$1" "blue"
  print
}

function info() {
  pretty_print "$1" "white"
}

function success() {
  pretty_print "\u2714 $1" "green"
}

function warn() {
  pretty_print "$1" "yellow"
}