#/bin/bash

echo "Starting MacOS setup..."

#Function: Loads Homebrew into current shell

load_brew() { 
	if [ -x /opt/homebrew/bin/brew ]; then
		echo "Loading Homebrew (Apple Silicon)..."
		eval "$(/opt/homebrew/bin/brew shellenv)"
	elif [ -x /usr/local/bin/brew ]; then
		echo "Loading Homebrew (Intel mac)..."
		eval "$(/usr/local/bin/brew shellenv)"
	fi
   }

#This checks if Homebrew is installed
if ! command -v brew &>/dev/null; then
	echo "Homebrew not found - installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


	echo "Loading Homebrew after installation..."
	load_brew
else
	echo "Homebrew is already installed."
	load_brew
fi

#This verifies if brew is working

if ! command -v brew &>/dev/null; then
	echo "ERROR: Homebrew still not found. PATH issue."
	echo "Try restarting your terminal and re-running this script."
	exit 1
fi

echo "Homebrew detected: $(brew --version)"


#Install packages
echo "Installing essential packages..."

brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask zoom
brew install --cask git
brew install --cask wget
brew install -cask htop


echo "Completed Software installation!"


echo "MacOS setup script finished successfully."






















