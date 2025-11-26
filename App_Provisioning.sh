#!/bin/bash

echo "Starting MacOS provisioning..."

#step 1: Install Homebrew if not installed
if ! command -v brew &> /dev/null
then 
	echo "Homebrew not found. Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "Homebrew already installed."
fi

#Step2: Update Brew
brew update


#Step 3: Install required applications
brew install --cask google-chrome
brew install --cask slack
brew install --cask zoom
brew install --cask visual-studio-code


echo "All applications installed!"


#Step 4: Enable firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

echo "Provisioning Complete!"
