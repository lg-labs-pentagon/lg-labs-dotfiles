#!/usr/bin/env zsh

printf "\n<<< Starting NODE Setup >>>\n"

# Node versions are managed with 'n', which is in the Brewfile.
# See zshrc for N_PREFIX variable.
# See zshenv for addition to $path array.
if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"

else
  echo "Installing Node & NPM with n..."
  n latest
fi

# Install Global packages
npm install --global yarn
npm install --global firebase-tools
npm install --global @angular/cli
npm install --global @ionic/cli
npm install --global typescript
npm install --global json-server
npm install --global http-server
npm install --global trash-cli

echo "Global NPM Packages Installed:"
npm list --global --depth=0
