#!/usr/bin/env zsh

printf "\n<<< Starting NODE Setup >>>\n"

# Other alternative is NVM
if ! exists nvm; then
  printf "\n<<< Starting NVM  Setup>>>\n"
  echo "nvm doesn't exists, continuing with install"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
fi

# Node versions are managed with 'NVM.
# See zshrc for NVM variable.
# See zshenv for addition to $path array.
if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with nvm..."
  nvm install node
fi

# Install Global packages
npm install --global yarn
#npm install --global firebase-tools
#npm install --global @angular/cli
#npm install --global @ionic/cli
#npm install --global typescript
#npm install --global json-server
#npm install --global http-server
npm install --global trash-cli

echo "Global NPM Packages Installed:"
npm list --global --depth=0


