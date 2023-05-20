#!/usr/bin/env zsh

printf "\n<<< Starting MacOS Setup >>>\n"
# Inspired by https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################
# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 12

###############################################################################
# Screen                                                                      #
###############################################################################
# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Pictures"

###############################################################################
# Finder                                                                      #
###############################################################################
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true