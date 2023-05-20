#!/usr/bin/env zsh

printf "\n<<< Starting Homebrew Setup >>>\n"
if ! exists brew; then
  echo "brew doesn't exists, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose