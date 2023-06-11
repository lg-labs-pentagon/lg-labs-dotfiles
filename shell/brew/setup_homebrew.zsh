#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

if ! exists brew; then
  echo "brew doesn't exists, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
