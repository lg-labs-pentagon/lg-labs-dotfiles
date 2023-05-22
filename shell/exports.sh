# ------------------------------------------------------------------------------
# Workspace
# ------------------------------------------------------------------------------

export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# LOCATIONS TO $path ARRAY
typeset -U path

# shellcheck disable=SC2206
path=(
  "$N_PREFIX/bin"
  "/opt/homebrew/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)