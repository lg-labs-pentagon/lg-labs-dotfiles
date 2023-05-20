#!/usr/bin/env zsh

if ! exists brew; then
  printf "\n<<< Starting Homebrew Setup >>>\n"
  echo "brew doesn't exists, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose

printf " \n<<< ******************************  Others tools ******************>>>\n "

if ! exists sdk; then
  printf "\n<<< Starting SDK MAN Setup >>>\n"
  echo "sdk doesn't exists, continuing with install"
  curl -s "https://get.sdkman.io" | bash
fi

if ! exists nvm; then
  printf "\n<<< Starting NVM  Setup>>>\n"
  echo "nvm doesn't exists, continuing with install"
  #curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
fi
