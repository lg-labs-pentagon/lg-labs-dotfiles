#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"
sudo ln -s /bin/zsh /usr/local/bin
sudo ln -s /opt/homebrew/bin/zsh /usr/local/bin

if ! exists brew; then
  echo "brew doesn't exists, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose